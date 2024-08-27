struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: Struct_2,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_2(14944i), Struct_2(-53607i), Struct_3(vec4<u32>(28679u, 126254u, 4294967295u, 52341u), -494f, Struct_2(0i), vec2<i32>(71601i, 17163i), -281f), vec4<i32>(-4497i, 52625i, 1i, -42714i)), Struct_4(Struct_2(44559i), Struct_2(34425i), Struct_3(vec4<u32>(4294967295u, 16033u, 1u, 0u), 723f, Struct_2(-52449i), vec2<i32>(1i, 6175i), -172f), vec4<i32>(55812i, -18632i, 2147483647i, 1i)), Struct_4(Struct_2(-3759i), Struct_2(1i), Struct_3(vec4<u32>(1u, 1u, 23822u, 0u), 1469f, Struct_2(-24110i), vec2<i32>(1i, -17013i), -878f), vec4<i32>(i32(-2147483648), -1i, -1i, 0i)), Struct_4(Struct_2(58439i), Struct_2(i32(-2147483648)), Struct_3(vec4<u32>(0u, 7613u, 1u, 37164u), 320f, Struct_2(-24148i), vec2<i32>(-3908i, -3121i), -841f), vec4<i32>(10746i, -1i, -1i, -1i)), Struct_4(Struct_2(-32372i), Struct_2(-2500i), Struct_3(vec4<u32>(31211u, 0u, 4294967295u, 8374u), -1000f, Struct_2(i32(-2147483648)), vec2<i32>(i32(-2147483648), 2147483647i), -1035f), vec4<i32>(-46077i, 30858i, -23272i, -34289i)), Struct_4(Struct_2(-13825i), Struct_2(2147483647i), Struct_3(vec4<u32>(7243u, 0u, 1u, 73931u), 365f, Struct_2(0i), vec2<i32>(0i, 0i), 1309f), vec4<i32>(2147483647i, 39929i, 0i, 10128i)), Struct_4(Struct_2(16546i), Struct_2(-1i), Struct_3(vec4<u32>(4294967295u, 46297u, 40950u, 0u), 1725f, Struct_2(11541i), vec2<i32>(3505i, -13826i), -878f), vec4<i32>(-5266i, 0i, 34845i, -6314i)), Struct_4(Struct_2(0i), Struct_2(2147483647i), Struct_3(vec4<u32>(46297u, 16524u, 0u, 0u), 1204f, Struct_2(i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), -782f), vec4<i32>(1i, i32(-2147483648), -40872i, 44746i)), Struct_4(Struct_2(1i), Struct_2(0i), Struct_3(vec4<u32>(0u, 1u, 4294967295u, 79619u), 318f, Struct_2(-6870i), vec2<i32>(2147483647i, 1i), 903f), vec4<i32>(20114i, 1954i, 0i, 65783i)), Struct_4(Struct_2(2147483647i), Struct_2(-9534i), Struct_3(vec4<u32>(1u, 0u, 1u, 4294967295u), -2693f, Struct_2(0i), vec2<i32>(38374i, -12015i), 989f), vec4<i32>(i32(-2147483648), -21616i, 29291i, -32955i)), Struct_4(Struct_2(-6875i), Struct_2(5477i), Struct_3(vec4<u32>(26117u, 20954u, 0u, 17001u), 796f, Struct_2(i32(-2147483648)), vec2<i32>(23839i, -21270i), -582f), vec4<i32>(-2950i, 33415i, 2147483647i, i32(-2147483648))), Struct_4(Struct_2(-12356i), Struct_2(2147483647i), Struct_3(vec4<u32>(0u, 516u, 0u, 23184u), 334f, Struct_2(1i), vec2<i32>(52801i, 3073i), -973f), vec4<i32>(14439i, 2147483647i, -1i, -6222i)), Struct_4(Struct_2(0i), Struct_2(-20933i), Struct_3(vec4<u32>(4294967295u, 122501u, 28002u, 28100u), 102f, Struct_2(i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), 1000f), vec4<i32>(1955i, 25769i, -84246i, -1i)), Struct_4(Struct_2(i32(-2147483648)), Struct_2(2223i), Struct_3(vec4<u32>(4294967295u, 11633u, 36131u, 18929u), -337f, Struct_2(-16947i), vec2<i32>(2147483647i, -14932i), 782f), vec4<i32>(5360i, -53702i, 0i, 1i)), Struct_4(Struct_2(0i), Struct_2(-21326i), Struct_3(vec4<u32>(528u, 83433u, 17920u, 53269u), -1008f, Struct_2(-41729i), vec2<i32>(-50434i, 2147483647i), -1579f), vec4<i32>(1i, 1i, -1i, -6961i)), Struct_4(Struct_2(-54525i), Struct_2(2324i), Struct_3(vec4<u32>(51641u, 4294967295u, 56331u, 70095u), -1340f, Struct_2(53761i), vec2<i32>(4316i, -84659i), 565f), vec4<i32>(-65685i, 52362i, 2147483647i, 30458i)), Struct_4(Struct_2(2147483647i), Struct_2(2147483647i), Struct_3(vec4<u32>(59760u, 80270u, 48952u, 86199u), 241f, Struct_2(-8329i), vec2<i32>(0i, 0i), -861f), vec4<i32>(0i, 79789i, -11676i, 26233i)), Struct_4(Struct_2(32805i), Struct_2(-1i), Struct_3(vec4<u32>(7653u, 4294967295u, 33083u, 48924u), -359f, Struct_2(0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), 572f), vec4<i32>(2147483647i, 0i, 0i, -22523i)), Struct_4(Struct_2(-34631i), Struct_2(i32(-2147483648)), Struct_3(vec4<u32>(0u, 0u, 27834u, 9171u), -218f, Struct_2(-1i), vec2<i32>(0i, 48630i), -894f), vec4<i32>(1i, 13639i, 0i, 37203i)), Struct_4(Struct_2(20447i), Struct_2(-4451i), Struct_3(vec4<u32>(74079u, 4294967295u, 9216u, 4294967295u), -328f, Struct_2(i32(-2147483648)), vec2<i32>(2147483647i, -54193i), 1256f), vec4<i32>(i32(-2147483648), -33419i, -15138i, 1i)), Struct_4(Struct_2(23159i), Struct_2(4507i), Struct_3(vec4<u32>(44689u, 0u, 73614u, 4294967295u), -1810f, Struct_2(-13036i), vec2<i32>(-6767i, -13646i), 465f), vec4<i32>(2147483647i, 15239i, 38808i, -10647i)), Struct_4(Struct_2(-4824i), Struct_2(0i), Struct_3(vec4<u32>(1u, 13858u, 54856u, 59481u), -513f, Struct_2(27887i), vec2<i32>(i32(-2147483648), i32(-2147483648)), -1025f), vec4<i32>(0i, 30061i, i32(-2147483648), 12949i)));

var<private> global2: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(Struct_2(1052i), Struct_2(0i), Struct_3(vec4<u32>(29144u, 0u, 2366u, 4294967295u), 285f, Struct_2(0i), vec2<i32>(-1i, 2147483647i), 437f), vec4<i32>(8678i, 0i, 1i, 2147483647i)), Struct_4(Struct_2(14439i), Struct_2(-18838i), Struct_3(vec4<u32>(0u, 57460u, 46851u, 1u), -1000f, Struct_2(3774i), vec2<i32>(39238i, -1i), -752f), vec4<i32>(-13501i, 2147483647i, 1i, 2147483647i)), Struct_4(Struct_2(1i), Struct_2(-49642i), Struct_3(vec4<u32>(21489u, 1u, 59548u, 66286u), -529f, Struct_2(-28242i), vec2<i32>(-2595i, 25302i), 1045f), vec4<i32>(0i, 1i, i32(-2147483648), 8055i)), Struct_4(Struct_2(-47454i), Struct_2(5784i), Struct_3(vec4<u32>(2351u, 24169u, 20360u, 0u), -291f, Struct_2(-1i), vec2<i32>(32853i, -21413i), -221f), vec4<i32>(0i, -56913i, -1i, 0i)), Struct_4(Struct_2(1i), Struct_2(-1i), Struct_3(vec4<u32>(0u, 54664u, 0u, 47054u), -1000f, Struct_2(0i), vec2<i32>(-1i, 1i), 239f), vec4<i32>(23239i, 2147483647i, i32(-2147483648), -6756i)), Struct_4(Struct_2(-56559i), Struct_2(-24092i), Struct_3(vec4<u32>(36205u, 18117u, 4294967295u, 77910u), 810f, Struct_2(0i), vec2<i32>(1i, i32(-2147483648)), 1655f), vec4<i32>(i32(-2147483648), -1i, 2147483647i, 41022i)), Struct_4(Struct_2(-7169i), Struct_2(-8340i), Struct_3(vec4<u32>(4294967295u, 48790u, 27948u, 13733u), -930f, Struct_2(2147483647i), vec2<i32>(-1i, -13705i), -2160f), vec4<i32>(i32(-2147483648), 23513i, -36897i, 16389i)), Struct_4(Struct_2(-22186i), Struct_2(-47749i), Struct_3(vec4<u32>(13045u, 20866u, 51054u, 4294967295u), -127f, Struct_2(33217i), vec2<i32>(-1i, 0i), 1000f), vec4<i32>(0i, 2147483647i, 1i, i32(-2147483648))), Struct_4(Struct_2(i32(-2147483648)), Struct_2(418i), Struct_3(vec4<u32>(69210u, 4294967295u, 0u, 93730u), -651f, Struct_2(5758i), vec2<i32>(2147483647i, 2147483647i), -1000f), vec4<i32>(0i, 2147483647i, -34045i, -43830i)), Struct_4(Struct_2(-31999i), Struct_2(2147483647i), Struct_3(vec4<u32>(0u, 45952u, 57812u, 43576u), -1440f, Struct_2(-32195i), vec2<i32>(38602i, -6707i), -195f), vec4<i32>(26165i, 24808i, 0i, 2147483647i)), Struct_4(Struct_2(34005i), Struct_2(37388i), Struct_3(vec4<u32>(0u, 21931u, 4294967295u, 1u), -1388f, Struct_2(-19443i), vec2<i32>(-1i, 3617i), 1552f), vec4<i32>(-51748i, i32(-2147483648), -21133i, 2147483647i)), Struct_4(Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 1u, 14279u), -1033f, Struct_2(1i), vec2<i32>(1i, 41862i), 1000f), vec4<i32>(19518i, 16442i, 1i, -27191i)), Struct_4(Struct_2(-1i), Struct_2(-1i), Struct_3(vec4<u32>(24175u, 0u, 5929u, 79590u), 1133f, Struct_2(29029i), vec2<i32>(2147483647i, -11143i), 996f), vec4<i32>(24616i, 0i, -8351i, -34799i)), Struct_4(Struct_2(30096i), Struct_2(0i), Struct_3(vec4<u32>(4294967295u, 4294967295u, 5459u, 12556u), 398f, Struct_2(-17545i), vec2<i32>(53515i, i32(-2147483648)), -1389f), vec4<i32>(-17152i, 0i, 2147483647i, 2147483647i)), Struct_4(Struct_2(-679i), Struct_2(66001i), Struct_3(vec4<u32>(72702u, 52751u, 32353u, 32285u), 330f, Struct_2(-1i), vec2<i32>(-62605i, 0i), -1580f), vec4<i32>(32323i, -1i, 0i, -1i)), Struct_4(Struct_2(25854i), Struct_2(0i), Struct_3(vec4<u32>(42376u, 1u, 0u, 38978u), -261f, Struct_2(i32(-2147483648)), vec2<i32>(33955i, 64532i), 416f), vec4<i32>(-46907i, -6964i, 1i, -56053i)), Struct_4(Struct_2(7200i), Struct_2(-19282i), Struct_3(vec4<u32>(1u, 34720u, 4188u, 4294967295u), 259f, Struct_2(1i), vec2<i32>(10232i, 2147483647i), 1000f), vec4<i32>(-25359i, 2147483647i, -6766i, -1i)), Struct_4(Struct_2(68957i), Struct_2(-106511i), Struct_3(vec4<u32>(57894u, 0u, 55779u, 11584u), -215f, Struct_2(0i), vec2<i32>(1202i, 30092i), 833f), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 52707i)), Struct_4(Struct_2(2589i), Struct_2(26511i), Struct_3(vec4<u32>(65965u, 9825u, 65555u, 7299u), 413f, Struct_2(10756i), vec2<i32>(63850i, 42987i), -520f), vec4<i32>(-1i, 1i, -9590i, -59623i)), Struct_4(Struct_2(8381i), Struct_2(0i), Struct_3(vec4<u32>(4294967295u, 1u, 0u, 1u), -928f, Struct_2(0i), vec2<i32>(-26817i, 38693i), -1500f), vec4<i32>(28028i, 48413i, -23343i, -23197i)), Struct_4(Struct_2(0i), Struct_2(0i), Struct_3(vec4<u32>(24298u, 76340u, 0u, 64320u), 769f, Struct_2(-23857i), vec2<i32>(2147483647i, -35310i), 1236f), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -48534i)), Struct_4(Struct_2(-7861i), Struct_2(1i), Struct_3(vec4<u32>(66788u, 1u, 35055u, 53180u), -217f, Struct_2(14368i), vec2<i32>(0i, 1i), -928f), vec4<i32>(9816i, 2147483647i, 1i, -1i)), Struct_4(Struct_2(8202i), Struct_2(-16719i), Struct_3(vec4<u32>(0u, 18787u, 0u, 41342u), 128f, Struct_2(2147483647i), vec2<i32>(2147483647i, 0i), 1385f), vec4<i32>(19269i, 12230i, 1i, 18775i)), Struct_4(Struct_2(23442i), Struct_2(-7787i), Struct_3(vec4<u32>(55184u, 35010u, 6518u, 22867u), -240f, Struct_2(-33166i), vec2<i32>(20383i, -1i), -928f), vec4<i32>(27608i, -52033i, 33883i, 13522i)), Struct_4(Struct_2(-1i), Struct_2(2147483647i), Struct_3(vec4<u32>(1u, 0u, 2927u, 129306u), -1000f, Struct_2(-1i), vec2<i32>(0i, 1i), 1723f), vec4<i32>(i32(-2147483648), -6890i, -38001i, i32(-2147483648))), Struct_4(Struct_2(2147483647i), Struct_2(29479i), Struct_3(vec4<u32>(0u, 2689u, 61197u, 4294967295u), -1000f, Struct_2(25472i), vec2<i32>(i32(-2147483648), 35403i), -122f), vec4<i32>(2147483647i, -22545i, 1i, 0i)), Struct_4(Struct_2(i32(-2147483648)), Struct_2(-37902i), Struct_3(vec4<u32>(13735u, 0u, 38376u, 49274u), 721f, Struct_2(-23355i), vec2<i32>(0i, i32(-2147483648)), -1000f), vec4<i32>(0i, -7193i, 50118i, -1i)), Struct_4(Struct_2(0i), Struct_2(-23644i), Struct_3(vec4<u32>(52905u, 1u, 4294967295u, 4294967295u), -113f, Struct_2(-1i), vec2<i32>(-41836i, -65573i), -1000f), vec4<i32>(48093i, 1i, 0i, 34918i)), Struct_4(Struct_2(16565i), Struct_2(1i), Struct_3(vec4<u32>(1u, 1u, 1u, 4294967295u), 795f, Struct_2(2147483647i), vec2<i32>(24556i, -69704i), 1857f), vec4<i32>(2147483647i, -1i, -1i, 6364i)), Struct_4(Struct_2(8158i), Struct_2(i32(-2147483648)), Struct_3(vec4<u32>(24465u, 6726u, 43007u, 0u), -704f, Struct_2(-1i), vec2<i32>(2147483647i, -14567i), -1166f), vec4<i32>(23601i, 0i, 2147483647i, 40111i)), Struct_4(Struct_2(-5521i), Struct_2(46203i), Struct_3(vec4<u32>(4294967295u, 1u, 35625u, 57805u), -1381f, Struct_2(19404i), vec2<i32>(0i, -34668i), -656f), vec4<i32>(-69866i, i32(-2147483648), 0i, 2147483647i)));

var<private> global3: i32 = -41577i;

var<private> global4: array<u32, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> Struct_2 {
    global3 = u_input.c.x;
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(49694u, 1u)] ^ 71481u, abs(vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global4[_wgslsmith_index_u32(u_input.a, 19u)], ~u_input.a), 1u)], firstTrailingBit(_wgslsmith_add_u32(1u, u_input.a)), ~global0[_wgslsmith_index_u32(u_input.a, 1u)] | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39350u), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)])), 4294967295u)), -57088i, 31040u);
    global3 = _wgslsmith_clamp_i32(var_0.c, min(33749i, u_input.c.x), ~var_0.c);
    global0 = array<u32, 1>();
    return Struct_2(var_0.c);
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(4294967295u, 1u)], ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], u_input.a, 4294967295u), vec4<u32>(1u, u_input.a, 4294967295u, global0[_wgslsmith_index_u32(105930u, 1u)])))), ~(i32(-1i) * -2147483647i), 40956u);
    let var_1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-967f, 756f))) >= _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -679f))));
    let var_3 = !(!(max(var_0.c, 1i >> (global0[_wgslsmith_index_u32(u_input.a, 1u)] % 32u)) != _wgslsmith_sub_i32(var_0.c, var_0.c & var_0.c)));
    let var_4 = vec4<bool>(true, false, true, any(!(!select(vec4<bool>(true, true, var_3, true), vec4<bool>(false, true, true, var_3), var_1.x))));
    return vec2<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -790f) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-600f + 708f)))), !(true && (_wgslsmith_f_op_f32(sign(-1175f)) < -1109f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    let var_0 = vec3<bool>(select(arg_2.x | !(!arg_3), true, func_3().x), any(!arg_2), !(arg_2.x & select(select(arg_2.x, arg_3, true), true, arg_2.x)));
    let var_1 = var_0;
    let var_2 = vec3<f32>(-227f, _wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2121f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-168f, -775f)))));
    let var_3 = var_1.x;
    global4 = array<u32, 19>();
    return ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 19u)], 19u)];
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_2(arg_2.c.a);
    var var_1 = countOneBits(arg_2.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(631f - 1312f));
    global2 = array<Struct_4, 31>();
    let var_3 = _wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(func_4(arg_2.c, arg_2.c, func_3(), select(true, all(vec2<bool>(arg_1.x, true)) | arg_1.x, arg_1.x)), 19u)], ~u_input.a, 66115u << (global0[_wgslsmith_index_u32(54293u, 1u)] % 32u));
    return ~global0[_wgslsmith_index_u32(0u, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(any(vec2<bool>(true, false)), true, true, false), false)), false);
    var var_1 = Struct_1(~u_input.a, vec4<u32>(~(~u_input.a), u_input.a, 47790u, _wgslsmith_div_u32(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mod_u32(12686u, 4076u)), 17525u)), ~u_input.c.x, func_2(vec2<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(1u ^ global4[_wgslsmith_index_u32(0u, 19u)], 1u)]), ~select(global4[_wgslsmith_index_u32(76240u, 19u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 19u)], 19u)], true)), vec2<bool>(var_0.x, var_0.x), Struct_3(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, global4[_wgslsmith_index_u32(103626u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<u32>(30582u, 38980u, 1u, global0[_wgslsmith_index_u32(36919u, 1u)])), ~vec4<u32>(4294967295u, u_input.a, 0u, 4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f), -461f), func_1(), -(~u_input.c.yz), _wgslsmith_f_op_f32(f32(-1f) * -648f))));
    global4 = array<u32, 19>();
    let var_2 = var_1.b;
    var var_3 = _wgslsmith_mult_vec4_i32(select(vec4<i32>(countOneBits(-var_1.c), -1i, 1i, 2147483647i), vec4<i32>(u_input.b, -(var_1.c | -1i), (1i | u_input.b) | var_1.c, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, 1i, var_1.c), vec3<i32>(-1i, -22753i, 59645i))), true), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c, 30461i, -46677i, u_input.b), -vec4<i32>(-2147483647i, var_1.c, -2021i, u_input.b)), reverseBits(abs(vec4<i32>(var_1.c, 34669i, 1i, u_input.c.x)))) ^ -reverseBits(vec4<i32>(1i, u_input.b, 2147483647i, 1i)));
    var var_4 = ~vec3<u32>(u_input.a, _wgslsmith_div_u32(~19833u, global4[_wgslsmith_index_u32(u_input.a, 19u)]), 25563u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(~(-var_3.x), _wgslsmith_mult_i32(29523i, var_3.x)), var_3.zz), ~(-vec2<i32>(-var_3.x, -36992i)), firstLeadingBit(reverseBits(_wgslsmith_mod_vec4_u32(~var_1.b, var_1.b))));
}

