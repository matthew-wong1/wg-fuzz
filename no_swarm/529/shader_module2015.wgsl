struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec4<i32>(-64306i, 2147483647i, 1i, -1i), -1i, Struct_1(vec4<u32>(27477u, 1u, 1u, 14815u), vec4<u32>(26516u, 85849u, 38765u, 1u), vec2<i32>(-60408i, -31936i), vec2<bool>(true, false), vec4<i32>(-3047i, 25619i, -59616i, -28561i)), Struct_1(vec4<u32>(5874u, 8547u, 4294967295u, 53454u), vec4<u32>(51638u, 0u, 1u, 15180u), vec2<i32>(-1i, 1i), vec2<bool>(true, true), vec4<i32>(24264i, -14305i, 30469i, 1i)), vec4<i32>(46843i, -83307i, 2147483647i, 1i)), Struct_3(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 1i), -28916i, Struct_1(vec4<u32>(19943u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 63813u, 4130u, 1u), vec2<i32>(0i, 39186i), vec2<bool>(true, true), vec4<i32>(1i, 1i, 1i, i32(-2147483648))), Struct_1(vec4<u32>(3089u, 45u, 4294967295u, 4294967295u), vec4<u32>(77991u, 1u, 0u, 4294967295u), vec2<i32>(0i, -34587i), vec2<bool>(false, false), vec4<i32>(0i, 57653i, 0i, 0i)), vec4<i32>(24915i, 0i, 0i, -1i)), Struct_3(vec4<i32>(1i, -11553i, 6293i, -29324i), 58193i, Struct_1(vec4<u32>(19960u, 117037u, 39636u, 4294967295u), vec4<u32>(4294967295u, 102006u, 1u, 4294967295u), vec2<i32>(0i, 9801i), vec2<bool>(false, false), vec4<i32>(-1i, 40615i, -23048i, 2147483647i)), Struct_1(vec4<u32>(69021u, 0u, 4294967295u, 2249u), vec4<u32>(65672u, 1u, 4294967295u, 41226u), vec2<i32>(2147483647i, 45400i), vec2<bool>(false, false), vec4<i32>(-37640i, -53311i, -70247i, 5615i)), vec4<i32>(29074i, 57543i, -1916i, 39459i)), Struct_3(vec4<i32>(2147483647i, -3985i, 0i, -14783i), 1i, Struct_1(vec4<u32>(42437u, 46434u, 0u, 43248u), vec4<u32>(0u, 50834u, 1u, 14442u), vec2<i32>(-4345i, 2147483647i), vec2<bool>(false, true), vec4<i32>(50203i, 0i, -7897i, 20681i)), Struct_1(vec4<u32>(51597u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 38168u, 39670u), vec2<i32>(2147483647i, 17613i), vec2<bool>(false, true), vec4<i32>(-5082i, -1i, 59453i, 61424i)), vec4<i32>(-33269i, 0i, -1i, -16522i)), Struct_3(vec4<i32>(1i, -1i, i32(-2147483648), 1i), i32(-2147483648), Struct_1(vec4<u32>(1u, 20119u, 1u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 38938u), vec2<i32>(2147483647i, 28244i), vec2<bool>(false, false), vec4<i32>(-222i, -30610i, i32(-2147483648), 2147483647i)), Struct_1(vec4<u32>(297u, 0u, 1u, 0u), vec4<u32>(1u, 1u, 16132u, 44353u), vec2<i32>(0i, -25706i), vec2<bool>(false, true), vec4<i32>(-60609i, 16581i, i32(-2147483648), -10770i)), vec4<i32>(-32031i, 69840i, 0i, 2147483647i)), Struct_3(vec4<i32>(0i, -8176i, 46517i, -1i), 0i, Struct_1(vec4<u32>(68751u, 1u, 0u, 0u), vec4<u32>(0u, 36964u, 39438u, 20453u), vec2<i32>(-435i, -3194i), vec2<bool>(true, true), vec4<i32>(2147483647i, -11189i, -33887i, 4580i)), Struct_1(vec4<u32>(0u, 18332u, 8111u, 0u), vec4<u32>(55960u, 1u, 4294967295u, 1u), vec2<i32>(-25961i, -33252i), vec2<bool>(false, false), vec4<i32>(50991i, 168i, 1i, 1i)), vec4<i32>(-689i, 2147483647i, -8525i, i32(-2147483648))), Struct_3(vec4<i32>(53366i, -42315i, -1i, -11731i), 0i, Struct_1(vec4<u32>(4294967295u, 46550u, 1u, 4294967295u), vec4<u32>(42909u, 0u, 4294967295u, 4294967295u), vec2<i32>(2147483647i, 57786i), vec2<bool>(true, true), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -3185i)), Struct_1(vec4<u32>(1u, 23271u, 0u, 39305u), vec4<u32>(77347u, 0u, 1u, 34761u), vec2<i32>(i32(-2147483648), -10008i), vec2<bool>(true, false), vec4<i32>(-40670i, -18652i, 3121i, -1i)), vec4<i32>(26149i, 1i, 23094i, -1i)), Struct_3(vec4<i32>(55989i, 0i, i32(-2147483648), -1i), i32(-2147483648), Struct_1(vec4<u32>(4294967295u, 74429u, 18624u, 12998u), vec4<u32>(35815u, 25189u, 25998u, 10772u), vec2<i32>(1i, 2147483647i), vec2<bool>(true, true), vec4<i32>(0i, i32(-2147483648), -38748i, i32(-2147483648))), Struct_1(vec4<u32>(53048u, 1567u, 1u, 1u), vec4<u32>(4294967295u, 18649u, 0u, 1u), vec2<i32>(53709i, 0i), vec2<bool>(true, false), vec4<i32>(1i, 0i, -11008i, 2147483647i)), vec4<i32>(-1i, i32(-2147483648), 0i, -60136i)), Struct_3(vec4<i32>(-1588i, -39072i, i32(-2147483648), 2669i), -18011i, Struct_1(vec4<u32>(6967u, 4294967295u, 4294967295u, 0u), vec4<u32>(36212u, 4294967295u, 22896u, 1u), vec2<i32>(-13557i, 2147483647i), vec2<bool>(true, true), vec4<i32>(-27324i, i32(-2147483648), -1i, -1i)), Struct_1(vec4<u32>(48686u, 1u, 137034u, 5748u), vec4<u32>(4294967295u, 1u, 40561u, 38424u), vec2<i32>(-14845i, 2147483647i), vec2<bool>(false, false), vec4<i32>(-18628i, 2147483647i, -1i, 1i)), vec4<i32>(-8789i, -1i, 0i, -13368i)), Struct_3(vec4<i32>(i32(-2147483648), 0i, 0i, 2147483647i), -43065i, Struct_1(vec4<u32>(0u, 1u, 79691u, 88871u), vec4<u32>(4294967295u, 33448u, 24389u, 57573u), vec2<i32>(33604i, -4195i), vec2<bool>(false, true), vec4<i32>(38732i, 18512i, 8276i, 13357i)), Struct_1(vec4<u32>(4294967295u, 14175u, 89697u, 1u), vec4<u32>(0u, 1u, 0u, 42217u), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(false, false), vec4<i32>(-1i, 0i, -1i, 1i)), vec4<i32>(-1i, 2892i, -11526i, -1i)), Struct_3(vec4<i32>(0i, 0i, 42500i, 1i), i32(-2147483648), Struct_1(vec4<u32>(1u, 62084u, 14376u, 3041u), vec4<u32>(1u, 25930u, 36593u, 1u), vec2<i32>(-1i, -1i), vec2<bool>(true, true), vec4<i32>(2147483647i, -48353i, 0i, 45034i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 12513u), vec4<u32>(35127u, 18605u, 22153u, 0u), vec2<i32>(-1i, -4351i), vec2<bool>(true, true), vec4<i32>(13358i, 30356i, i32(-2147483648), 28898i)), vec4<i32>(0i, 4287i, 5524i, 1i)), Struct_3(vec4<i32>(i32(-2147483648), 0i, -55636i, 38551i), 16875i, Struct_1(vec4<u32>(86892u, 1u, 5274u, 118017u), vec4<u32>(29463u, 45085u, 13915u, 0u), vec2<i32>(-43311i, 26860i), vec2<bool>(false, false), vec4<i32>(9658i, 1i, 26448i, -43424i)), Struct_1(vec4<u32>(5712u, 0u, 4294967295u, 111997u), vec4<u32>(4294967295u, 0u, 72312u, 4294967295u), vec2<i32>(0i, 38599i), vec2<bool>(false, true), vec4<i32>(-29618i, 1i, -1i, 0i)), vec4<i32>(-33903i, -1i, 1i, 0i)), Struct_3(vec4<i32>(65686i, -39122i, 1i, 42320i), 14530i, Struct_1(vec4<u32>(4294967295u, 16912u, 1u, 101908u), vec4<u32>(85193u, 0u, 72821u, 4294967295u), vec2<i32>(36323i, 2147483647i), vec2<bool>(true, false), vec4<i32>(24345i, 2147483647i, 20355i, 25492i)), Struct_1(vec4<u32>(7357u, 1u, 1u, 4294967295u), vec4<u32>(48450u, 1u, 93290u, 1u), vec2<i32>(-50105i, i32(-2147483648)), vec2<bool>(false, true), vec4<i32>(2147483647i, 22396i, 1i, 2147483647i)), vec4<i32>(-7006i, -9128i, 2147483647i, -62059i)), Struct_3(vec4<i32>(75385i, 42765i, 0i, -54894i), i32(-2147483648), Struct_1(vec4<u32>(0u, 5828u, 20862u, 1u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec2<i32>(1i, 2147483647i), vec2<bool>(true, true), vec4<i32>(-10156i, 1i, -28726i, 2147483647i)), Struct_1(vec4<u32>(60142u, 1u, 36785u, 28835u), vec4<u32>(0u, 52441u, 107350u, 9272u), vec2<i32>(-56179i, i32(-2147483648)), vec2<bool>(false, true), vec4<i32>(-1i, 57338i, -37917i, 1i)), vec4<i32>(56909i, 0i, 50630i, 0i)), Struct_3(vec4<i32>(0i, -78680i, -3954i, -11664i), 1i, Struct_1(vec4<u32>(19975u, 50901u, 0u, 1u), vec4<u32>(35552u, 35214u, 1u, 0u), vec2<i32>(2147483647i, 26401i), vec2<bool>(true, true), vec4<i32>(0i, -71517i, 24337i, -34116i)), Struct_1(vec4<u32>(66469u, 0u, 101968u, 4294967295u), vec4<u32>(1u, 0u, 1u, 61137u), vec2<i32>(-5229i, 36348i), vec2<bool>(true, false), vec4<i32>(1i, 14312i, i32(-2147483648), 0i)), vec4<i32>(i32(-2147483648), -22194i, 0i, 0i)), Struct_3(vec4<i32>(1871i, 0i, 1i, -1i), i32(-2147483648), Struct_1(vec4<u32>(14185u, 4294967295u, 8555u, 4294967295u), vec4<u32>(0u, 1u, 1u, 0u), vec2<i32>(23077i, 14245i), vec2<bool>(true, true), vec4<i32>(46593i, -4667i, -13094i, 29768i)), Struct_1(vec4<u32>(46759u, 34627u, 4294967295u, 1938u), vec4<u32>(4235u, 1u, 36513u, 37501u), vec2<i32>(47025i, 0i), vec2<bool>(false, true), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -62241i)), vec4<i32>(-1i, 0i, -1i, 1i)), Struct_3(vec4<i32>(14242i, 0i, 25520i, i32(-2147483648)), -1i, Struct_1(vec4<u32>(1u, 1u, 1u, 22534u), vec4<u32>(4294967295u, 1u, 0u, 0u), vec2<i32>(i32(-2147483648), -1i), vec2<bool>(false, false), vec4<i32>(-14560i, 2147483647i, -1i, 1171i)), Struct_1(vec4<u32>(1u, 67501u, 32219u, 1u), vec4<u32>(0u, 6911u, 1u, 23545u), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, true), vec4<i32>(-1i, -1i, 0i, 12192i)), vec4<i32>(2147483647i, 6807i, -1i, -1i)), Struct_3(vec4<i32>(2147483647i, 2147483647i, 2801i, -10414i), -14276i, Struct_1(vec4<u32>(25967u, 51217u, 34886u, 1u), vec4<u32>(1u, 1u, 0u, 44317u), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(true, false), vec4<i32>(2147483647i, -29625i, -1i, 47893i)), Struct_1(vec4<u32>(40576u, 0u, 5455u, 76094u), vec4<u32>(0u, 1u, 1660u, 0u), vec2<i32>(-38014i, 0i), vec2<bool>(true, false), vec4<i32>(0i, -66925i, -22050i, 14288i)), vec4<i32>(0i, -52622i, 6308i, 41126i)), Struct_3(vec4<i32>(1i, 2147483647i, 27194i, 2147483647i), 31002i, Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(32786u, 1u, 0u, 0u), vec2<i32>(-5949i, i32(-2147483648)), vec2<bool>(false, true), vec4<i32>(-1i, -12823i, 52702i, 41193i)), Struct_1(vec4<u32>(4294967295u, 1490u, 42167u, 0u), vec4<u32>(15648u, 4294967295u, 0u, 4294967295u), vec2<i32>(i32(-2147483648), -3623i), vec2<bool>(true, true), vec4<i32>(-52152i, -8108i, -27341i, 14966i)), vec4<i32>(-10458i, -21879i, 11969i, 1i)), Struct_3(vec4<i32>(-51420i, 1i, -1i, 2147483647i), 1i, Struct_1(vec4<u32>(1u, 0u, 10478u, 18876u), vec4<u32>(116866u, 4294967295u, 94286u, 43003u), vec2<i32>(i32(-2147483648), 0i), vec2<bool>(false, false), vec4<i32>(1i, 0i, 0i, -6742i)), Struct_1(vec4<u32>(1u, 1u, 1u, 59917u), vec4<u32>(4294967295u, 1u, 0u, 67297u), vec2<i32>(i32(-2147483648), 2147483647i), vec2<bool>(false, false), vec4<i32>(7239i, 1i, 1i, 41139i)), vec4<i32>(i32(-2147483648), 0i, -13568i, 1i)), Struct_3(vec4<i32>(18536i, 76653i, 57072i, i32(-2147483648)), -1i, Struct_1(vec4<u32>(59416u, 0u, 0u, 4294967295u), vec4<u32>(58367u, 4294967295u, 7519u, 1u), vec2<i32>(-35685i, 0i), vec2<bool>(false, true), vec4<i32>(1i, -1i, -1i, i32(-2147483648))), Struct_1(vec4<u32>(90858u, 1u, 58469u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 12739u), vec2<i32>(-1i, 1i), vec2<bool>(false, true), vec4<i32>(-13806i, 26137i, -39806i, 0i)), vec4<i32>(-1i, i32(-2147483648), 2661i, i32(-2147483648))), Struct_3(vec4<i32>(0i, 1i, -35023i, -22575i), -17526i, Struct_1(vec4<u32>(1u, 4294967295u, 1u, 20085u), vec4<u32>(9939u, 37949u, 8468u, 2210u), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<bool>(true, true), vec4<i32>(1i, 48493i, 14993i, 13401i)), Struct_1(vec4<u32>(0u, 4294967295u, 64857u, 64226u), vec4<u32>(4294967295u, 1u, 31766u, 0u), vec2<i32>(-22066i, -8612i), vec2<bool>(false, false), vec4<i32>(0i, 28200i, 22000i, 10795i)), vec4<i32>(i32(-2147483648), -22925i, 0i, 28867i)), Struct_3(vec4<i32>(-86692i, 38040i, i32(-2147483648), -1i), -11991i, Struct_1(vec4<u32>(1u, 6189u, 1u, 35871u), vec4<u32>(83535u, 31581u, 4294967295u, 1u), vec2<i32>(i32(-2147483648), -26176i), vec2<bool>(false, false), vec4<i32>(7762i, 2147483647i, 27092i, -12518i)), Struct_1(vec4<u32>(1u, 30324u, 0u, 4294967295u), vec4<u32>(6345u, 15853u, 3750u, 69052u), vec2<i32>(-27061i, -1i), vec2<bool>(false, true), vec4<i32>(0i, 0i, -7399i, 0i)), vec4<i32>(-52437i, -9232i, -10463i, i32(-2147483648))), Struct_3(vec4<i32>(-74569i, -1i, 0i, -9453i), 25461i, Struct_1(vec4<u32>(5804u, 0u, 0u, 17086u), vec4<u32>(79822u, 16741u, 1u, 29563u), vec2<i32>(-16275i, -43413i), vec2<bool>(true, true), vec4<i32>(0i, -1i, 1i, 2147483647i)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 46548u), vec4<u32>(0u, 42591u, 8661u, 4294967295u), vec2<i32>(-17700i, 0i), vec2<bool>(true, true), vec4<i32>(-26042i, 55315i, -1i, -1i)), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 7665i)), Struct_3(vec4<i32>(-1i, -49212i, 2147483647i, 2147483647i), 2147483647i, Struct_1(vec4<u32>(4294967295u, 1u, 60369u, 62583u), vec4<u32>(11098u, 9131u, 0u, 38173u), vec2<i32>(-1i, 21941i), vec2<bool>(true, true), vec4<i32>(2147483647i, -15617i, -5287i, i32(-2147483648))), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 21389u), vec4<u32>(1u, 62226u, 21922u, 70718u), vec2<i32>(-20735i, 21976i), vec2<bool>(true, true), vec4<i32>(i32(-2147483648), -1i, -22006i, -1i)), vec4<i32>(34945i, i32(-2147483648), -11890i, -37458i)), Struct_3(vec4<i32>(2147483647i, 0i, 2147483647i, -289i), 1i, Struct_1(vec4<u32>(19976u, 4294967295u, 0u, 1u), vec4<u32>(55182u, 42578u, 0u, 22329u), vec2<i32>(-999i, 18262i), vec2<bool>(true, true), vec4<i32>(2147483647i, 10865i, 30680i, -1i)), Struct_1(vec4<u32>(27453u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 87458u), vec2<i32>(2147483647i, -29329i), vec2<bool>(false, true), vec4<i32>(-10574i, -15261i, 39282i, 0i)), vec4<i32>(-1i, 1i, 3585i, -1i)), Struct_3(vec4<i32>(-87376i, -47294i, -41111i, 1i), -24625i, Struct_1(vec4<u32>(1u, 67304u, 66611u, 1u), vec4<u32>(46729u, 74698u, 0u, 72022u), vec2<i32>(1i, -13292i), vec2<bool>(true, true), vec4<i32>(-1i, -44269i, 0i, -1i)), Struct_1(vec4<u32>(432u, 22025u, 27012u, 1u), vec4<u32>(14985u, 0u, 18388u, 380u), vec2<i32>(-1i, i32(-2147483648)), vec2<bool>(false, false), vec4<i32>(-1i, i32(-2147483648), 12773i, 64559i)), vec4<i32>(1i, 2147483647i, i32(-2147483648), 1i)));

var<private> global1: vec3<f32> = vec3<f32>(-662f, -1062f, 1225f);

var<private> global2: Struct_3 = Struct_3(vec4<i32>(i32(-2147483648), -31126i, 2147483647i, 26615i), -1i, Struct_1(vec4<u32>(4294967295u, 929u, 29216u, 1820u), vec4<u32>(0u, 24953u, 75763u, 1u), vec2<i32>(-1i, 18451i), vec2<bool>(false, true), vec4<i32>(2147483647i, -49573i, 1i, -67011i)), Struct_1(vec4<u32>(1u, 23940u, 8244u, 0u), vec4<u32>(1u, 1u, 4294967295u, 16685u), vec2<i32>(46494i, -40206i), vec2<bool>(true, true), vec4<i32>(0i, i32(-2147483648), 10261i, -2632i)), vec4<i32>(-33437i, -28485i, 0i, -1i));

var<private> global3: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 34874u), vec2<u32>(1u, 5545u), vec2<u32>(0u, 8450u), vec2<u32>(9085u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(35024u, 4294967295u), vec2<u32>(9957u, 4294967295u), vec2<u32>(0u, 136488u), vec2<u32>(8406u, 1u), vec2<u32>(3768u, 48927u), vec2<u32>(0u, 74112u), vec2<u32>(1u, 8427u), vec2<u32>(1u, 0u), vec2<u32>(1u, 0u), vec2<u32>(1u, 8947u), vec2<u32>(43652u, 64501u), vec2<u32>(99723u, 79953u), vec2<u32>(13051u, 1u), vec2<u32>(41274u, 0u), vec2<u32>(24516u, 0u), vec2<u32>(0u, 48994u), vec2<u32>(0u, 32340u), vec2<u32>(1u, 84348u));

var<private> global4: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<u32>, arg_3: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.yx))))) + _wgslsmith_f_op_vec2_f32(trunc(global1.xz)));
    global0 = array<Struct_3, 27>();
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = select(vec4<bool>(global2.c.d.x, global2.d.d.x, global2.d.d.x, global2.d.d.x), !vec4<bool>(global2.c.d.x || false, false, all(!vec3<bool>(global2.d.d.x, true, global2.d.d.x)), all(select(vec4<bool>(global2.d.d.x, global2.c.d.x, false, global2.c.d.x), vec4<bool>(global2.d.d.x, global2.d.d.x, true, true), vec4<bool>(false, global2.d.d.x, global2.d.d.x, global2.c.d.x)))), select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * -1011f) > var_0.x, !(4366i < global2.c.c.x), true));
    let var_3 = var_2.zww;
    return arg_2.zz;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = global2.d;
    let var_1 = u_input.a.x;
    let var_2 = global0[_wgslsmith_index_u32(26221u, 27u)];
    let var_3 = global1.zy;
    let var_4 = global0[_wgslsmith_index_u32(global2.d.b.x, 27u)];
    return ~var_2.d.b.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    var var_0 = u_input.a.wx;
    var var_1 = ~vec3<u32>(arg_1.b.x >> (1u % 32u), ~global2.d.b.x, ~(~var_0.x & ~0u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1128f + 1000f)), global1.x)));
    var var_3 = u_input.c.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~func_2(~(-u_input.c.yy) << (func_1(_wgslsmith_f_op_f32(1183f - global1.x), countOneBits(1u), vec4<u32>(u_input.a.x, 52490u, 1u, 29151u) & vec4<u32>(4598u, u_input.b, global2.d.a.x, 662u), _wgslsmith_sub_u32(u_input.b, 22840u)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.a.wz, firstLeadingBit(global2.c.a.zy)), vec2<u32>(~u_input.a.x, _wgslsmith_sub_u32(global2.c.a.x, 1u)))), 27u)];
    var var_1 = global0[_wgslsmith_index_u32(var_0.d.b.x, 27u)];
    global4 = func_3(firstLeadingBit(-2147483647i), var_1.d);
    global0 = array<Struct_3, 27>();
    var var_2 = Struct_1(~vec4<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(23828u, 1709u), global2.c.a.zy)), select(min(34869u, global2.d.b.x), ~111915u, func_3(global2.d.c.x, global2.d)), countOneBits(min(18211u, 1u)), _wgslsmith_add_u32(min(var_0.c.b.x, 46065u), min(31210u, var_0.d.a.x))), vec4<u32>(~abs(1u), 4294967295u, global2.d.b.x, abs(_wgslsmith_mult_u32(14127u, global2.d.a.x & var_1.c.b.x))), var_1.d.e.zx << (var_1.d.a.xw % vec2<u32>(32u)), select(vec2<bool>(true, true), !var_1.c.d, global2.c.d), -var_1.c.e);
    var var_3 = abs(_wgslsmith_sub_u32(var_1.c.b.x, 35979u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -644f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -839f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1210f, 783f))), global2.c.d.x)) * global1.yy));
}

