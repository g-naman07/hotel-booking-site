import "./footer.css";

const Footer = () => {
  const year = new Date().getFullYear()

  return (
    <div className="footer">
      <div className="fLists">
        <ul className="fList">
          <li className="fListItem">Countries</li>
          <li className="fListItem">Regions</li>
          <li className="fListItem">Cities</li>
          <li className="fListItem">Districts</li>
          <li className="fListItem">Airports</li>
          <li className="fListItem">Hotels</li>
        </ul>
        <ul className="fList">
          <li className="fListItem">Luxury Hotels </li>
          <li className="fListItem">Boutique Hotels </li>
          <li className="fListItem">Resorts </li>
          <li className="fListItem">Villas</li>
          <li className="fListItem">Suites</li>
          <li className="fListItem">Private Estates</li>
        </ul>
        <ul className="fList">
          <li className="fListItem">Exclusive Experiences </li>
          <li className="fListItem">Guest Reviews</li>
          <li className="fListItem">Luxury Travel Guide </li>
          <li className="fListItem">VIP Community </li>
          <li className="fListItem">Premium Packages </li>
        </ul>
        <ul className="fList">
          <li className="fListItem">Luxury Transportation </li>
          <li className="fListItem">Private Aviation</li>
          <li className="fListItem">Fine Dining</li>
          <li className="fListItem">Concierge Services </li>
        </ul>
        <ul className="fList">
          <li className="fListItem">VIP Customer Service</li>
          <li className="fListItem">Partner Support</li>
          <li className="fListItem">Careers</li>
          <li className="fListItem">Sustainability</li>
          <li className="fListItem">Press Center</li>
          <li className="fListItem">Safety & Security</li>
          <li className="fListItem">Investor Relations</li>
          <li className="fListItem">Terms & Conditions</li>
        </ul>
      </div>
      <div className="fText">Copyright © {year} LuxStay. All rights reserved.</div>
    </div>
  );
};

export default Footer;
