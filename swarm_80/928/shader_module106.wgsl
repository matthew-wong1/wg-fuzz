struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-16222i, vec2<i32>(1i, 2147483647i), false), Struct_1(-1i, vec2<i32>(-24852i, 2147483647i), true), Struct_1(2147483647i, vec2<i32>(-1i, -72518i), false), Struct_1(i32(-2147483648), vec2<i32>(-14586i, 2147483647i), true), Struct_1(0i, vec2<i32>(-1i, 0i), true), Struct_1(-24175i, vec2<i32>(0i, 0i), false), Struct_1(1i, vec2<i32>(i32(-2147483648), 36579i), false), Struct_1(-50082i, vec2<i32>(-23951i, 2147483647i), false), Struct_1(8581i, vec2<i32>(2147483647i, -23481i), false), Struct_1(0i, vec2<i32>(-51066i, -1i), true), Struct_1(-1i, vec2<i32>(-2832i, 7159i), true), Struct_1(55324i, vec2<i32>(0i, 0i), true), Struct_1(1i, vec2<i32>(0i, -43894i), true), Struct_1(77507i, vec2<i32>(1i, -69271i), true), Struct_1(59935i, vec2<i32>(i32(-2147483648), i32(-2147483648)), true), Struct_1(31378i, vec2<i32>(-16482i, -24585i), true), Struct_1(9966i, vec2<i32>(7883i, 0i), false), Struct_1(33893i, vec2<i32>(i32(-2147483648), 60879i), true), Struct_1(-1i, vec2<i32>(0i, 2147483647i), false), Struct_1(2147483647i, vec2<i32>(0i, 44222i), true), Struct_1(-30673i, vec2<i32>(0i, 1308i), false), Struct_1(i32(-2147483648), vec2<i32>(0i, 2147483647i), false), Struct_1(1534i, vec2<i32>(-58681i, -32600i), false), Struct_1(18896i, vec2<i32>(45056i, -10287i), false), Struct_1(-17485i, vec2<i32>(-1i, 0i), false), Struct_1(0i, vec2<i32>(-41591i, -1i), false), Struct_1(-17866i, vec2<i32>(2147483647i, -27885i), false));

var<private> global1: u32;

var<private> global2: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-12100i, 0i, 49837i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(-6527i, 2147483647i, 38423i), vec3<i32>(58801i, 7602i, 27666i), vec3<i32>(-1i, -28270i, -25201i), vec3<i32>(2147483647i, -36922i, 38882i), vec3<i32>(28566i, -16031i, -6411i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(-28646i, 1i, -32907i), vec3<i32>(i32(-2147483648), 1i, 4701i), vec3<i32>(2147483647i, 1i, -10081i), vec3<i32>(51636i, -1i, 0i), vec3<i32>(25005i, 7087i, 132587i), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(1131i, 0i, 20587i), vec3<i32>(2147483647i, -1i, 27137i), vec3<i32>(1i, 42571i, -15026i), vec3<i32>(3399i, 0i, 37245i));

var<private> global3: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(-20520i, vec2<i32>(-34252i, 51550i), true), Struct_1(-11595i, vec2<i32>(2147483647i, -1i), true), Struct_1(-1i, vec2<i32>(-20973i, -48676i), true), 1u), Struct_2(Struct_1(1i, vec2<i32>(43748i, 64306i), false), Struct_1(-47147i, vec2<i32>(-46985i, -28213i), false), Struct_1(32368i, vec2<i32>(-11660i, 2147483647i), false), 1u), Struct_2(Struct_1(-1i, vec2<i32>(i32(-2147483648), -17819i), false), Struct_1(i32(-2147483648), vec2<i32>(-1i, -23360i), true), Struct_1(0i, vec2<i32>(28405i, 23588i), false), 36936u), Struct_2(Struct_1(19363i, vec2<i32>(1i, 60942i), false), Struct_1(-1i, vec2<i32>(0i, 27440i), false), Struct_1(-1i, vec2<i32>(1i, -33099i), false), 73858u), Struct_2(Struct_1(2147483647i, vec2<i32>(52470i, 1i), true), Struct_1(48117i, vec2<i32>(50864i, 2147483647i), false), Struct_1(0i, vec2<i32>(23824i, 2147483647i), true), 0u), Struct_2(Struct_1(26594i, vec2<i32>(1i, i32(-2147483648)), false), Struct_1(0i, vec2<i32>(1i, -56617i), true), Struct_1(5247i, vec2<i32>(i32(-2147483648), -1i), true), 1u), Struct_2(Struct_1(22799i, vec2<i32>(-22509i, -1i), true), Struct_1(41708i, vec2<i32>(4185i, 1i), false), Struct_1(1i, vec2<i32>(85367i, -8235i), true), 87585u), Struct_2(Struct_1(i32(-2147483648), vec2<i32>(60035i, 20087i), true), Struct_1(2147483647i, vec2<i32>(-1i, -775i), true), Struct_1(-42551i, vec2<i32>(-14842i, -17283i), false), 66313u), Struct_2(Struct_1(-30648i, vec2<i32>(i32(-2147483648), 2147483647i), false), Struct_1(i32(-2147483648), vec2<i32>(2147483647i, 2147483647i), false), Struct_1(0i, vec2<i32>(1971i, 33404i), true), 0u), Struct_2(Struct_1(-1i, vec2<i32>(5251i, 2147483647i), true), Struct_1(1i, vec2<i32>(1i, -2025i), true), Struct_1(2147483647i, vec2<i32>(-71558i, 23443i), true), 32317u), Struct_2(Struct_1(-36445i, vec2<i32>(23576i, -62065i), false), Struct_1(0i, vec2<i32>(-15998i, 0i), false), Struct_1(0i, vec2<i32>(2147483647i, -34170i), true), 1u), Struct_2(Struct_1(17870i, vec2<i32>(2147483647i, 7543i), false), Struct_1(51121i, vec2<i32>(-19100i, -1i), false), Struct_1(38422i, vec2<i32>(-1i, -12932i), true), 72999u), Struct_2(Struct_1(50211i, vec2<i32>(i32(-2147483648), 22036i), true), Struct_1(0i, vec2<i32>(i32(-2147483648), -16779i), true), Struct_1(22117i, vec2<i32>(i32(-2147483648), 2147483647i), true), 0u), Struct_2(Struct_1(1i, vec2<i32>(i32(-2147483648), 2519i), false), Struct_1(0i, vec2<i32>(-1i, 1i), true), Struct_1(-1i, vec2<i32>(-15256i, -19532i), true), 3658u), Struct_2(Struct_1(2147483647i, vec2<i32>(-24855i, -10948i), true), Struct_1(-33683i, vec2<i32>(-1i, 2147483647i), false), Struct_1(12623i, vec2<i32>(1i, -11235i), false), 45551u), Struct_2(Struct_1(-9064i, vec2<i32>(0i, 7097i), false), Struct_1(69993i, vec2<i32>(1i, 35551i), false), Struct_1(-9035i, vec2<i32>(2147483647i, 0i), false), 1u), Struct_2(Struct_1(-18840i, vec2<i32>(-1i, -1i), true), Struct_1(-21150i, vec2<i32>(-1i, 2147483647i), true), Struct_1(-52498i, vec2<i32>(-26228i, 2147483647i), true), 30918u), Struct_2(Struct_1(27720i, vec2<i32>(16225i, -1i), true), Struct_1(i32(-2147483648), vec2<i32>(57031i, -8259i), false), Struct_1(1i, vec2<i32>(1i, -52031i), true), 1u), Struct_2(Struct_1(i32(-2147483648), vec2<i32>(-15545i, 16726i), false), Struct_1(34599i, vec2<i32>(1i, i32(-2147483648)), false), Struct_1(4599i, vec2<i32>(20554i, 0i), true), 39236u), Struct_2(Struct_1(1i, vec2<i32>(-1773i, 32749i), false), Struct_1(0i, vec2<i32>(-5906i, 0i), false), Struct_1(i32(-2147483648), vec2<i32>(1i, 24005i), true), 1u), Struct_2(Struct_1(-5238i, vec2<i32>(-1i, 26294i), false), Struct_1(i32(-2147483648), vec2<i32>(2147483647i, i32(-2147483648)), false), Struct_1(-1i, vec2<i32>(0i, -5840i), true), 1u), Struct_2(Struct_1(-14321i, vec2<i32>(i32(-2147483648), i32(-2147483648)), true), Struct_1(1i, vec2<i32>(0i, 15855i), true), Struct_1(-40769i, vec2<i32>(1i, 40598i), false), 20247u), Struct_2(Struct_1(0i, vec2<i32>(0i, 7309i), false), Struct_1(31440i, vec2<i32>(-39315i, 1i), true), Struct_1(1i, vec2<i32>(i32(-2147483648), 2147483647i), false), 0u));

var<private> global4: Struct_2;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    global1 = 1u;
    global4 = Struct_2(Struct_1(u_input.d.x, u_input.d.zz, false), Struct_1(global4.b.a, u_input.d.yz, u_input.b <= 4294967295u), global0[_wgslsmith_index_u32(~35357u, 27u)], global4.d);
    return _wgslsmith_sub_u32(4294967295u, 527u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: u32) -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_mod_i32(global4.a.b.x, 1i | _wgslsmith_sub_i32(global4.a.a, -32845i)), countOneBits(max(firstLeadingBit(~vec2<i32>(-4156i, arg_0.x)), vec2<i32>(i32(-1i) * -1i, countOneBits(2147483647i)))), arg_2.x);
    var var_1 = arg_1.x;
    let var_2 = Struct_2(Struct_1(20990i, -reverseBits(_wgslsmith_add_vec2_i32(var_0.b, vec2<i32>(arg_0.x, -35127i))), 42809u != (_wgslsmith_dot_vec3_u32(u_input.c.zwz, u_input.c.xxw) ^ global4.d)), Struct_1(_wgslsmith_mult_i32(arg_0.x, _wgslsmith_add_i32(global4.a.a, -1696i)) << (arg_1.x % 32u), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(9928i, var_0.a, -25535i), vec3<i32>(arg_0.x, arg_0.x, u_input.d.x)), -38634i), vec2<i32>(-2147483647i, min(var_0.b.x, var_0.b.x))), global4.b.c), Struct_1(~reverseBits(-arg_0.x), u_input.d.zz, _wgslsmith_add_u32(1u, ~4294967295u) > arg_1.x), global4.d);
    global1 = _wgslsmith_clamp_u32(1u, ~1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(arg_3, ~_wgslsmith_mult_u32(var_2.d, 4294967295u)), func_3(var_0.b.x)));
    global2 = array<vec3<i32>, 20>();
    return StorageBuffer(countOneBits(134472u), vec2<i32>(u_input.d.x, u_input.d.x | global4.c.b.x) >> (firstTrailingBit(~vec2<u32>(arg_1.x, 9375u)) % vec2<u32>(32u)), reverseBits((-arg_0.zy << (vec2<u32>(global4.d, u_input.a.x) % vec2<u32>(32u))) | var_2.a.b));
}

fn func_1(arg_0: u32, arg_1: f32) -> StorageBuffer {
    let var_0 = global4.c;
    global3 = array<Struct_2, 23>();
    let var_1 = true;
    global2 = array<vec3<i32>, 20>();
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(937f, arg_1, arg_1, 236f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_1))))), 547f, _wgslsmith_f_op_f32(-1165f * _wgslsmith_f_op_f32(f32(-1f) * -2557f)), arg_1)));
    return func_2(-firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(513i, -28863i, u_input.d.x, u_input.d.x), vec4<i32>(global4.c.b.x, -20226i, 16636i, var_0.a), vec4<i32>(u_input.d.x, global4.c.a, var_0.a, -25414i)), vec4<i32>(2147483647i, global4.c.b.x, var_0.a, u_input.d.x) & vec4<i32>(global4.a.b.x, 1i, -10647i, u_input.d.x))), ~reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 63008u, u_input.a.x, 89278u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1805u)) ^ (vec4<u32>(u_input.b, 25564u, u_input.a.x, u_input.a.x) ^ vec4<u32>(arg_0, 34697u, 1u, u_input.c.x))), vec3<bool>(var_1, !(false & var_1), global4.b.c), select(_wgslsmith_div_u32(0u, 1u), 0u, var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(27531u, -493f);
}

