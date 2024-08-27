struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<u32>,
    c: bool,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(Struct_4(Struct_3(vec2<u32>(37038u, 1u), true), Struct_2(1303i, vec4<bool>(false, true, true, false), -1004f, vec2<f32>(-1000f, -1424f), 4490u), -34516i, -4939i), vec4<u32>(19115u, 20750u, 59667u, 0u), true, vec4<i32>(9643i, -6597i, 0i, i32(-2147483648)), vec3<i32>(-5829i, -1i, -9788i)), Struct_5(Struct_4(Struct_3(vec2<u32>(7647u, 35651u), true), Struct_2(27345i, vec4<bool>(false, false, false, false), -1367f, vec2<f32>(-1866f, -646f), 34531u), 2147483647i, 1i), vec4<u32>(0u, 19880u, 0u, 1u), false, vec4<i32>(1i, -51286i, 26016i, 42752i), vec3<i32>(39368i, 2745i, 90111i)), Struct_5(Struct_4(Struct_3(vec2<u32>(49983u, 4294967295u), false), Struct_2(43429i, vec4<bool>(false, true, true, true), -139f, vec2<f32>(-275f, -759f), 0u), 41757i, -67073i), vec4<u32>(0u, 21597u, 0u, 86713u), true, vec4<i32>(0i, 1i, 0i, -5182i), vec3<i32>(i32(-2147483648), -1i, 2147483647i)), Struct_5(Struct_4(Struct_3(vec2<u32>(4294967295u, 0u), false), Struct_2(i32(-2147483648), vec4<bool>(false, true, false, true), 1000f, vec2<f32>(610f, -478f), 4294967295u), -33750i, 0i), vec4<u32>(0u, 0u, 58877u, 0u), false, vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 0i, -3496i)), Struct_5(Struct_4(Struct_3(vec2<u32>(3969u, 1u), true), Struct_2(-16392i, vec4<bool>(true, true, false, true), -264f, vec2<f32>(-1474f, -226f), 0u), -1i, 53537i), vec4<u32>(30347u, 21124u, 0u, 61342u), false, vec4<i32>(-37648i, 1i, 2147483647i, -1i), vec3<i32>(0i, -17768i, 32660i)), Struct_5(Struct_4(Struct_3(vec2<u32>(23944u, 0u), true), Struct_2(0i, vec4<bool>(true, true, true, true), -301f, vec2<f32>(-758f, 1183f), 25937u), 5516i, -29204i), vec4<u32>(27522u, 58566u, 0u, 1u), false, vec4<i32>(0i, 21986i, 0i, -1i), vec3<i32>(i32(-2147483648), 3459i, 2147483647i)), Struct_5(Struct_4(Struct_3(vec2<u32>(9764u, 42549u), false), Struct_2(53030i, vec4<bool>(true, true, true, true), -388f, vec2<f32>(794f, -1000f), 4294967295u), 1i, 1i), vec4<u32>(22165u, 1u, 63251u, 1u), true, vec4<i32>(-28942i, 2147483647i, 65218i, -16577i), vec3<i32>(-1i, 31493i, 1i)), Struct_5(Struct_4(Struct_3(vec2<u32>(4294967295u, 24086u), false), Struct_2(-38753i, vec4<bool>(false, false, false, false), 110f, vec2<f32>(427f, 951f), 59846u), -4576i, 7187i), vec4<u32>(12618u, 10892u, 3780u, 103092u), true, vec4<i32>(-54380i, 10445i, 1i, -11404i), vec3<i32>(-1i, -29692i, 1i)), Struct_5(Struct_4(Struct_3(vec2<u32>(9149u, 17839u), false), Struct_2(i32(-2147483648), vec4<bool>(false, false, false, false), -367f, vec2<f32>(-271f, 1731f), 93295u), 1i, 0i), vec4<u32>(61880u, 1u, 36473u, 1u), false, vec4<i32>(-24900i, -1i, -7897i, -54061i), vec3<i32>(34856i, i32(-2147483648), i32(-2147483648))), Struct_5(Struct_4(Struct_3(vec2<u32>(113454u, 4294967295u), true), Struct_2(-22226i, vec4<bool>(false, true, true, false), -652f, vec2<f32>(621f, -2201f), 4294967295u), 2147483647i, -70232i), vec4<u32>(42005u, 51247u, 25951u, 8836u), false, vec4<i32>(-14298i, 0i, 26308i, 27331i), vec3<i32>(35805i, -15846i, 2147483647i)), Struct_5(Struct_4(Struct_3(vec2<u32>(1312u, 68942u), false), Struct_2(6690i, vec4<bool>(false, true, true, false), -848f, vec2<f32>(-1000f, -257f), 2788u), 2147483647i, 1i), vec4<u32>(17862u, 40298u, 4294967295u, 0u), true, vec4<i32>(42807i, -16125i, -44158i, 1i), vec3<i32>(34558i, i32(-2147483648), 43315i)), Struct_5(Struct_4(Struct_3(vec2<u32>(8484u, 65923u), false), Struct_2(9639i, vec4<bool>(false, false, true, false), 1000f, vec2<f32>(-1011f, 1000f), 0u), 1i, -30222i), vec4<u32>(4294967295u, 4294967295u, 0u, 45835u), false, vec4<i32>(-51401i, 2147483647i, 2147483647i, 1i), vec3<i32>(1i, -61351i, 56669i)), Struct_5(Struct_4(Struct_3(vec2<u32>(1u, 49958u), true), Struct_2(-41704i, vec4<bool>(true, true, false, true), -938f, vec2<f32>(-895f, 149f), 0u), 38316i, i32(-2147483648)), vec4<u32>(21743u, 4294967295u, 1u, 0u), true, vec4<i32>(1i, 1i, 76395i, -43806i), vec3<i32>(2147483647i, 1i, -1i)), Struct_5(Struct_4(Struct_3(vec2<u32>(22792u, 400u), false), Struct_2(2147483647i, vec4<bool>(false, true, false, false), 779f, vec2<f32>(-656f, -1756f), 12205u), i32(-2147483648), 2147483647i), vec4<u32>(10692u, 16701u, 4294967295u, 4294967295u), false, vec4<i32>(i32(-2147483648), 1i, -2905i, 10532i), vec3<i32>(2147483647i, -1i, 8024i)), Struct_5(Struct_4(Struct_3(vec2<u32>(1u, 52966u), false), Struct_2(18043i, vec4<bool>(false, false, true, false), -686f, vec2<f32>(315f, -2342f), 4294967295u), 2147483647i, 1i), vec4<u32>(0u, 34781u, 96217u, 4294967295u), false, vec4<i32>(-1i, 44315i, 0i, 29717i), vec3<i32>(-1i, 9067i, 2147483647i)), Struct_5(Struct_4(Struct_3(vec2<u32>(40153u, 20065u), true), Struct_2(2147483647i, vec4<bool>(false, false, false, true), 911f, vec2<f32>(-1375f, 349f), 4400u), 2147483647i, 1i), vec4<u32>(1u, 50798u, 4294967295u, 1u), false, vec4<i32>(2147483647i, -8897i, i32(-2147483648), 1i), vec3<i32>(-8355i, -4436i, -1i)), Struct_5(Struct_4(Struct_3(vec2<u32>(5989u, 0u), true), Struct_2(26511i, vec4<bool>(true, true, true, false), -413f, vec2<f32>(214f, 389f), 0u), 0i, 10383i), vec4<u32>(1u, 74376u, 1328u, 0u), false, vec4<i32>(-1i, -1i, 86099i, 1i), vec3<i32>(-19970i, 1i, 2147483647i)), Struct_5(Struct_4(Struct_3(vec2<u32>(0u, 20234u), false), Struct_2(0i, vec4<bool>(false, true, true, true), -280f, vec2<f32>(-2008f, 748f), 0u), i32(-2147483648), 1i), vec4<u32>(1u, 41381u, 25737u, 4294967295u), false, vec4<i32>(12090i, -36497i, 2147483647i, -1i), vec3<i32>(9787i, 2147483647i, -10916i)), Struct_5(Struct_4(Struct_3(vec2<u32>(2703u, 55797u), false), Struct_2(-1i, vec4<bool>(false, false, true, true), -379f, vec2<f32>(-627f, 517f), 5937u), -6552i, -16895i), vec4<u32>(111679u, 1u, 0u, 82283u), false, vec4<i32>(35652i, 0i, 1i, -11696i), vec3<i32>(-1i, -45373i, 14840i)), Struct_5(Struct_4(Struct_3(vec2<u32>(1u, 4351u), false), Struct_2(-23337i, vec4<bool>(true, true, true, true), -133f, vec2<f32>(-1132f, 425f), 1u), -1i, 19318i), vec4<u32>(1u, 64178u, 1u, 34280u), true, vec4<i32>(-53348i, -17576i, 1i, -1i), vec3<i32>(10200i, 27429i, -19812i)), Struct_5(Struct_4(Struct_3(vec2<u32>(30420u, 36547u), true), Struct_2(21985i, vec4<bool>(false, false, false, false), -329f, vec2<f32>(750f, -1745f), 108509u), i32(-2147483648), 13475i), vec4<u32>(4294967295u, 1u, 2145u, 67408u), true, vec4<i32>(2147483647i, 2147483647i, -20261i, -8187i), vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_5(Struct_4(Struct_3(vec2<u32>(0u, 4294967295u), false), Struct_2(-8170i, vec4<bool>(false, false, true, false), -399f, vec2<f32>(1947f, 491f), 0u), 1i, 2147483647i), vec4<u32>(1195u, 61917u, 8847u, 25261u), true, vec4<i32>(19084i, -34142i, -28697i, -17057i), vec3<i32>(5051i, 2147483647i, i32(-2147483648))), Struct_5(Struct_4(Struct_3(vec2<u32>(47580u, 48020u), false), Struct_2(-1i, vec4<bool>(true, false, false, false), 596f, vec2<f32>(-179f, 297f), 0u), 1i, -17162i), vec4<u32>(0u, 26167u, 1u, 1u), false, vec4<i32>(-15949i, 0i, 2147483647i, 80121i), vec3<i32>(2147483647i, 10198i, -11487i)), Struct_5(Struct_4(Struct_3(vec2<u32>(39772u, 0u), false), Struct_2(1i, vec4<bool>(true, false, true, true), 2481f, vec2<f32>(467f, -302f), 1u), 1i, 1i), vec4<u32>(40055u, 50707u, 54244u, 0u), true, vec4<i32>(34342i, i32(-2147483648), 0i, 93331i), vec3<i32>(i32(-2147483648), -1i, 1i)), Struct_5(Struct_4(Struct_3(vec2<u32>(2767u, 29676u), true), Struct_2(-1i, vec4<bool>(false, false, true, false), -229f, vec2<f32>(-691f, -1102f), 58096u), 43363i, -55305i), vec4<u32>(701u, 10609u, 54035u, 0u), true, vec4<i32>(2147483647i, i32(-2147483648), 3606i, 2345i), vec3<i32>(-1i, -1i, -23566i)), Struct_5(Struct_4(Struct_3(vec2<u32>(13740u, 4294967295u), true), Struct_2(-30034i, vec4<bool>(false, false, true, false), 1065f, vec2<f32>(-704f, -866f), 1u), 6498i, -947i), vec4<u32>(0u, 33231u, 0u, 1u), false, vec4<i32>(45284i, 1i, 2147483647i, -44109i), vec3<i32>(25550i, 19800i, 2147483647i)), Struct_5(Struct_4(Struct_3(vec2<u32>(0u, 26345u), false), Struct_2(i32(-2147483648), vec4<bool>(false, false, true, false), 302f, vec2<f32>(382f, 1000f), 254u), -46168i, 57720i), vec4<u32>(20856u, 4294967295u, 40318u, 4294967295u), false, vec4<i32>(39674i, -1i, i32(-2147483648), 43527i), vec3<i32>(6304i, 1i, 0i)), Struct_5(Struct_4(Struct_3(vec2<u32>(4294967295u, 3762u), true), Struct_2(-44091i, vec4<bool>(false, false, true, true), -170f, vec2<f32>(-377f, 339f), 7426u), 63594i, 0i), vec4<u32>(9075u, 8125u, 78912u, 23639u), true, vec4<i32>(-17375i, 2147483647i, -21371i, 2147483647i), vec3<i32>(36520i, -2582i, -36660i)));

var<private> global1: array<i32, 32> = array<i32, 32>(1i, -28673i, 1i, -33920i, 1i, 0i, 1i, -4788i, -2218i, 1i, 64973i, 1i, i32(-2147483648), i32(-2147483648), 75248i, i32(-2147483648), 0i, -1i, 0i, -1i, 4948i, -18922i, 2147483647i, 2147483647i, -24824i, 2147483647i, 33558i, 0i, -1i, 5412i, -14119i, -35169i);

var<private> global2: array<u32, 18>;

var<private> global3: array<vec3<i32>, 29> = array<vec3<i32>, 29>(vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, -15075i, -1i), vec3<i32>(2465i, 0i, 23981i), vec3<i32>(1i, 2147483647i, 25495i), vec3<i32>(-18475i, 2147483647i, 0i), vec3<i32>(-8684i, 2147483647i, -1i), vec3<i32>(1i, i32(-2147483648), 1i), vec3<i32>(1i, 27205i, 42224i), vec3<i32>(1i, -37608i, 2147483647i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(49734i, -9174i, -1i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(6889i, i32(-2147483648), -1i), vec3<i32>(2147483647i, -1i, 2948i), vec3<i32>(15974i, 0i, 2147483647i), vec3<i32>(-10346i, 16600i, i32(-2147483648)), vec3<i32>(-14342i, -20368i, -33327i), vec3<i32>(-41980i, 28657i, 0i), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec3<i32>(1i, -1i, -13698i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -1i, 1754i), vec3<i32>(i32(-2147483648), -12679i, 1i), vec3<i32>(-38751i, 0i, i32(-2147483648)), vec3<i32>(1i, 32375i, 0i), vec3<i32>(-1i, 0i, 0i), vec3<i32>(23521i, 1355i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(-23440i, 0i, 0i));

var<private> global4: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(270f - global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2093f * arg_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.c.x)) * arg_0.c.x)))));
    global2 = array<u32, 18>();
    var var_1 = Struct_2(_wgslsmith_add_i32(15305i, u_input.d), select(vec4<bool>(true, ~9760u < u_input.b, any(!arg_0.a.yzy), true), vec4<bool>(false, any(select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, false, true, true), arg_0.a.x)), select(true, true, false), all(vec3<bool>(true, false, arg_0.a.x))), vec4<bool>(arg_0.a.x, 1556f > _wgslsmith_f_op_f32(max(-643f, global4.x)), true, arg_0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(617f - 1048f), -330f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.xz))), arg_0.b);
    global0 = array<Struct_5, 28>();
    global3 = array<vec3<i32>, 29>();
    return u_input.d;
}

fn func_2() -> Struct_4 {
    global1 = array<i32, 32>();
    let var_0 = !all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)] >= u_input.d, all(vec4<bool>(false, false, false, true)), any(vec4<bool>(false, false, true, false)))) && false;
    let var_1 = !vec4<bool>(true, select(true, var_0, var_0) != var_0, var_0, var_0);
    global1 = array<i32, 32>();
    global3 = array<vec3<i32>, 29>();
    return Struct_4(Struct_3(abs(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(30948u, 85275u))), !(!var_1.x) && true), Struct_2(i32(-1i) * -func_3(Struct_1(var_1, 0u, vec4<f32>(global4.x, 253f, -1347f, -1118f)), vec4<f32>(430f, global4.x, global4.x, 1271f)), vec4<bool>(false, true, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 18u)], 32u)], u_input.d) >= _wgslsmith_mod_i32(1i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 32u)]), var_0), _wgslsmith_f_op_f32(min(global4.x, global4.x)), _wgslsmith_f_op_vec2_f32(-global4.yz), abs(firstLeadingBit(global2[_wgslsmith_index_u32(~39933u, 18u)]))), -1i, u_input.a);
}

fn func_1() -> Struct_5 {
    let var_0 = !(u_input.d >= select(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(85503u, 32u)], 43892i, global1[_wgslsmith_index_u32(u_input.e, 32u)], global1[_wgslsmith_index_u32(u_input.e, 32u)]), vec4<i32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 18u)], 18u)], 32u)], u_input.d, u_input.d, u_input.d)), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 18u)], 18u)] & 28125u, 32u)], global1[_wgslsmith_index_u32(~4294967295u, 32u)]), any(vec3<bool>(true, true, true))));
    var var_1 = 568f;
    var var_2 = Struct_5(func_2(), firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(func_2().a.a.x, ~u_input.b), 0u, 76876u, 4294967295u)), !((abs(u_input.b) << (20254u % 32u)) >= 34938u), ~(~vec4<i32>(-1i, 38807i, 2147483647i, -2337i) ^ vec4<i32>(reverseBits(61150i), 1i, 4949i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77477u, 18u)], 18u)], 1u), vec4<u32>(1u, u_input.b, 1u, u_input.c)), 32u)])), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a & u_input.a, _wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(4294967295u, 32u)])), firstLeadingBit(global3[_wgslsmith_index_u32(select(u_input.e, 0u, true), 29u)])));
    var var_3 = var_2.a.a.a;
    let var_4 = _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~1u, 18u)], countOneBits(firstLeadingBit(firstTrailingBit(_wgslsmith_sub_u32(var_2.b.x, u_input.c)))));
    return global0[_wgslsmith_index_u32(max(max(109431u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4, u_input.b, u_input.b, 33781u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 18u)], 4294967295u, 0u, var_2.b.x)), 67278u ^ var_4)) << (4294967295u % 32u), _wgslsmith_add_u32(var_4, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~var_2.b.wzw, vec3<u32>(u_input.c, 77538u, 97338u)), var_2.b.ywz))), 28u)];
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_5, arg_3: vec4<u32>) -> f32 {
    global3 = array<vec3<i32>, 29>();
    let var_0 = -771f;
    global4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(326f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.b.d.x - var_0) - _wgslsmith_div_f32(794f, global4.x))), func_1().a.b.c, _wgslsmith_f_op_f32(f32(-1f) * -849f), arg_2.a.b.c));
    let var_1 = func_2().b;
    global1 = array<i32, 32>();
    return global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 28>();
    global4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2759f - _wgslsmith_f_op_f32(f32(-1f) * -208f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(global4.x - -249f), true)))), global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global4.x)))) * 296f));
    global4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-630f)))) - global4.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4.x))) - -343f), _wgslsmith_f_op_f32(func_4(Struct_3(select(vec2<u32>(global2[_wgslsmith_index_u32(1u, 18u)], 0u), vec2<u32>(global2[_wgslsmith_index_u32(1u, 18u)], 1u), true), true), _wgslsmith_mult_i32(u_input.d, u_input.a) & (u_input.a << (25065u % 32u)), func_1(), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10359u, 18u)], 18u)], global2[_wgslsmith_index_u32(13632u, 18u)], 4294967295u), vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], 1u))))))), 105f, global4.x);
    var var_0 = Struct_4(func_2().a, Struct_2(~u_input.d, vec4<bool>(select(false, false, false) & any(vec3<bool>(true, true, false)), true, true, all(vec4<bool>(true, true, true, true))), 679f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-1428f + global4.x))), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 18u)], 18u)]), func_3(Struct_1(select(func_1().a.b.b, select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false), true), 2829u, _wgslsmith_div_vec4_f32(vec4<f32>(1122f, -3485f, global4.x, global4.x), _wgslsmith_div_vec4_f32(vec4<f32>(651f, global4.x, 142f, -129f), vec4<f32>(-2057f, global4.x, 753f, 853f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, 105f, 111f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, global4.x, global4.x, global4.x), vec4<f32>(global4.x, 1005f, global4.x, global4.x), vec4<bool>(true, false, false, false)))))), countOneBits(select(global1[_wgslsmith_index_u32(u_input.e, 32u)] | 2147483647i, -global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34667u, 18u)], 32u)], true)) & firstTrailingBit(_wgslsmith_mult_i32(~u_input.a, ~global1[_wgslsmith_index_u32(1u, 32u)])));
    global3 = array<vec3<i32>, 29>();
    var var_1 = _wgslsmith_add_u32(4294967295u, abs(global2[_wgslsmith_index_u32(0u, 18u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 69655u, 45200u, 1u), firstTrailingBit(vec4<u32>(32132u, 4294967295u, 12144u, var_0.b.e))), 18u)]), 24047u), -1000f, 4294967295u >> (1u % 32u), max(min(_wgslsmith_mod_vec3_i32(-global3[_wgslsmith_index_u32(4294967295u, 29u)], ~vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 32u)], var_0.d, 1i)), -(~vec3<i32>(var_0.c, var_0.b.a, global1[_wgslsmith_index_u32(4294967295u, 32u)]))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c, 2147483647i, -13652i), global3[_wgslsmith_index_u32(20777u, 29u)]), global3[_wgslsmith_index_u32(var_0.a.a.x, 29u)] & global3[_wgslsmith_index_u32(0u, 29u)]), global3[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_div_vec2_f32(var_0.b.d, vec2<f32>(var_0.b.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.x * global4.x))))));
}

