struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 13> = array<Struct_5, 13>(Struct_5(Struct_4(Struct_3(Struct_1(false, vec4<u32>(0u, 45280u, 0u, 13993u), -1i), true), Struct_2(vec4<f32>(131f, -1818f, 597f, 533f), Struct_1(true, vec4<u32>(0u, 513u, 0u, 17867u), 17658i), vec3<i32>(20104i, 17676i, -5000i), 14142i), 45577u), vec3<bool>(true, true, false), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 11333u)), Struct_5(Struct_4(Struct_3(Struct_1(false, vec4<u32>(36278u, 0u, 87605u, 52720u), 43708i), true), Struct_2(vec4<f32>(582f, -135f, -491f, 171f), Struct_1(true, vec4<u32>(9560u, 43146u, 53539u, 1u), 19626i), vec3<i32>(1i, -52917i, 2147483647i), -11769i), 92828u), vec3<bool>(false, false, false), vec4<u32>(1u, 6623u, 10268u, 4294967295u)), Struct_5(Struct_4(Struct_3(Struct_1(false, vec4<u32>(4294967295u, 0u, 1u, 81737u), -1i), false), Struct_2(vec4<f32>(-163f, -601f, 502f, -570f), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), -31629i), vec3<i32>(31287i, 0i, -23876i), 1i), 56874u), vec3<bool>(false, true, true), vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_5(Struct_4(Struct_3(Struct_1(true, vec4<u32>(0u, 33520u, 1u, 4294967295u), 70378i), false), Struct_2(vec4<f32>(-1009f, 147f, -841f, -498f), Struct_1(true, vec4<u32>(4294967295u, 1u, 2535u, 4294967295u), -1i), vec3<i32>(-34020i, 0i, 0i), 0i), 19256u), vec3<bool>(false, false, true), vec4<u32>(112976u, 4294967295u, 1u, 0u)), Struct_5(Struct_4(Struct_3(Struct_1(false, vec4<u32>(6230u, 4294967295u, 26323u, 39372u), i32(-2147483648)), true), Struct_2(vec4<f32>(168f, -232f, 724f, -894f), Struct_1(false, vec4<u32>(13289u, 74852u, 4294967295u, 28122u), 1i), vec3<i32>(-20772i, -29814i, 0i), 20024i), 4294967295u), vec3<bool>(false, false, false), vec4<u32>(4294967295u, 1u, 3938u, 1u)), Struct_5(Struct_4(Struct_3(Struct_1(true, vec4<u32>(22364u, 0u, 0u, 0u), 1i), false), Struct_2(vec4<f32>(1316f, -699f, -120f, 1889f), Struct_1(true, vec4<u32>(0u, 4294967295u, 4294967295u, 82646u), 14626i), vec3<i32>(-40298i, 1i, -54343i), -20768i), 0u), vec3<bool>(true, false, false), vec4<u32>(0u, 1u, 4294967295u, 0u)), Struct_5(Struct_4(Struct_3(Struct_1(true, vec4<u32>(39652u, 87959u, 31439u, 4294967295u), 0i), true), Struct_2(vec4<f32>(377f, -1895f, 1686f, 607f), Struct_1(true, vec4<u32>(1u, 1125u, 4294967295u, 0u), 0i), vec3<i32>(-19459i, 2147483647i, -1i), 40628i), 0u), vec3<bool>(false, true, false), vec4<u32>(4294967295u, 0u, 75475u, 4294967295u)), Struct_5(Struct_4(Struct_3(Struct_1(false, vec4<u32>(1u, 0u, 63574u, 4294967295u), 3662i), true), Struct_2(vec4<f32>(866f, 197f, -1889f, 480f), Struct_1(true, vec4<u32>(0u, 62079u, 4294967295u, 4294967295u), -35699i), vec3<i32>(1i, i32(-2147483648), 2147483647i), 0i), 0u), vec3<bool>(false, true, false), vec4<u32>(1u, 11348u, 4294967295u, 9108u)), Struct_5(Struct_4(Struct_3(Struct_1(false, vec4<u32>(0u, 32820u, 967u, 1u), -67897i), false), Struct_2(vec4<f32>(-1000f, -482f, -1000f, -777f), Struct_1(true, vec4<u32>(24464u, 4294967295u, 0u, 83170u), 15234i), vec3<i32>(-17358i, 10160i, 0i), 2147483647i), 13442u), vec3<bool>(true, false, false), vec4<u32>(0u, 16943u, 23747u, 55202u)), Struct_5(Struct_4(Struct_3(Struct_1(true, vec4<u32>(22355u, 1u, 76773u, 18691u), i32(-2147483648)), false), Struct_2(vec4<f32>(-840f, 176f, 1862f, -918f), Struct_1(false, vec4<u32>(11857u, 0u, 24806u, 0u), -39541i), vec3<i32>(i32(-2147483648), -28713i, 23619i), 17839i), 4294967295u), vec3<bool>(true, true, true), vec4<u32>(1u, 1u, 7244u, 1u)), Struct_5(Struct_4(Struct_3(Struct_1(true, vec4<u32>(0u, 30718u, 57573u, 4569u), -7467i), true), Struct_2(vec4<f32>(-1601f, -1120f, 213f, 1447f), Struct_1(false, vec4<u32>(60462u, 1u, 13197u, 1u), 1i), vec3<i32>(1i, -9416i, -40643i), i32(-2147483648)), 0u), vec3<bool>(false, true, false), vec4<u32>(9288u, 0u, 4294967295u, 2864u)), Struct_5(Struct_4(Struct_3(Struct_1(false, vec4<u32>(10201u, 0u, 4294967295u, 4294967295u), 2147483647i), true), Struct_2(vec4<f32>(1555f, -721f, -110f, 179f), Struct_1(true, vec4<u32>(70471u, 0u, 53669u, 1u), -13868i), vec3<i32>(2147483647i, 19204i, -75i), 35290i), 0u), vec3<bool>(true, true, false), vec4<u32>(0u, 1u, 4294967295u, 11536u)), Struct_5(Struct_4(Struct_3(Struct_1(false, vec4<u32>(66034u, 0u, 1u, 0u), 40454i), false), Struct_2(vec4<f32>(-340f, -235f, 615f, 1278f), Struct_1(true, vec4<u32>(0u, 0u, 0u, 1u), 11284i), vec3<i32>(2147483647i, 24783i, 2147483647i), -4285i), 28259u), vec3<bool>(true, false, true), vec4<u32>(52163u, 0u, 1u, 0u)));

var<private> global1: array<u32, 31> = array<u32, 31>(0u, 48816u, 3666u, 0u, 1u, 34445u, 10159u, 1u, 111950u, 1u, 0u, 4294967295u, 11743u, 25565u, 1u, 4294967295u, 0u, 46304u, 75984u, 0u, 42446u, 1u, 7709u, 1u, 4294967295u, 39872u, 1u, 13816u, 4294967295u, 17300u, 58063u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>) -> u32 {
    global1 = array<u32, 31>();
    let var_0 = Struct_4(Struct_3(Struct_1(true, firstTrailingBit(select(vec4<u32>(u_input.d.x, arg_1.x, 19876u, u_input.d.x), vec4<u32>(u_input.d.x, arg_1.x, u_input.d.x, global1[_wgslsmith_index_u32(u_input.c, 31u)]), true)), u_input.a.x), false), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_f_op_f32(round(-1030f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1649f)), 155f), Struct_1(true, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, global1[_wgslsmith_index_u32(1u, 31u)], arg_1.x), vec4<u32>(44934u, arg_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 31u)], 31u)], u_input.c)) ^ firstTrailingBit(vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 31u)], arg_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14750u, 31u)], 31u)])), -1i), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 81901i), vec3<i32>(13569i, 2147483647i, -1488i))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, -1i), 19108i), u_input.a.xw)), firstTrailingBit(arg_1.x));
    let var_1 = Struct_3(Struct_1(true, vec4<u32>(~min(u_input.c, 77085u), arg_1.x, 3972u, max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 31u)], 0u)), -var_0.a.a.c), var_0.a.b);
    var var_2 = Struct_3(Struct_1(!(!any(vec4<bool>(false, false, false, true))), ~abs(vec4<u32>(u_input.d.x, var_1.a.b.x, global1[_wgslsmith_index_u32(u_input.d.x, 31u)], 6532u)) >> (var_1.a.b % vec4<u32>(32u)), abs(_wgslsmith_sub_i32(countOneBits(u_input.a.x), var_0.a.a.c))), !all(vec3<bool>(var_1.a.a, var_1.a.a, true)));
    let var_3 = var_2.a.c;
    return var_1.a.b.x;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = arg_1.a.a;
    var var_1 = vec3<u32>(17740u, ~select(arg_1.b.b.b.x, ~func_3(true, vec3<u32>(4294967295u, var_0.b.x, 1u)), arg_2.a), _wgslsmith_clamp_u32(1u, 12912u, abs(0u)));
    global0 = array<Struct_5, 13>();
    var var_2 = ~(~_wgslsmith_dot_vec3_u32(var_0.b.wzx, ~arg_1.a.a.b.xzw));
    let var_3 = arg_1.b;
    return !(_wgslsmith_f_op_f32(select(arg_1.b.a.x, 1000f, true)) == 1258f);
}

fn func_1() -> u32 {
    let var_0 = abs(~vec3<u32>(~u_input.b, firstLeadingBit(54276u), ~u_input.d.x));
    let var_1 = vec2<bool>(true | ((u_input.d.x >= 14864u) || false), false);
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -174f), -1000f, func_2(1i, Struct_4(Struct_3(Struct_1(false, vec4<u32>(var_0.x, 1u, 4294967295u, var_0.x), u_input.a.x), false), Struct_2(vec4<f32>(-871f, 624f, -1341f, -1000f), Struct_1(var_1.x, vec4<u32>(77611u, 25627u, 1u, u_input.c), -1i), u_input.a.wwx, 1i), u_input.c), Struct_1(var_1.x, vec4<u32>(78410u, var_0.x, u_input.b, u_input.d.x), u_input.a.x), -1206f))) + 1f), _wgslsmith_f_op_f32(-977f * _wgslsmith_f_op_f32(f32(-1f) * -1644f))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1103f)), _wgslsmith_f_op_f32(2119f - -708f)) * -1066f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1628f) * _wgslsmith_f_op_f32(-1f)))));
    var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_3.x, -157f), vec2<f32>(var_3.x, var_3.x))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -1006f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-237f, var_3.x)))))))));
    return _wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(u_input.b ^ 1u, ~1u, func_3(var_1.x, var_0)), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 13>();
    var var_0 = Struct_1(true, select(vec4<u32>(~u_input.c, ~1u, func_1(), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, global1[_wgslsmith_index_u32(u_input.c, 31u)], u_input.c), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], global1[_wgslsmith_index_u32(u_input.b, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)]))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 0u, global1[_wgslsmith_index_u32(u_input.b, 31u)]), vec4<u32>(1u, global1[_wgslsmith_index_u32(u_input.d.x, 31u)], u_input.c, 71352u), vec4<u32>(1u, 7123u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28491u, 31u)], 31u)], global1[_wgslsmith_index_u32(16593u, 31u)])), true) ^ vec4<u32>(u_input.d.x, _wgslsmith_clamp_u32(3123u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48814u, 31u)], 31u)], 31u)], u_input.d.x) & (u_input.d.x | 37109u), ~u_input.c, _wgslsmith_div_u32(u_input.b << (118038u % 32u), u_input.b)), u_input.a.x);
    global0 = array<Struct_5, 13>();
    let var_1 = Struct_2(vec4<f32>(-1649f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(827f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-238f, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-919f - -228f)))), Struct_1(true, ~(~vec4<u32>(u_input.b, var_0.b.x, global1[_wgslsmith_index_u32(1u, 31u)], u_input.c)), var_0.c), vec3<i32>(u_input.a.x, select(~17754i, _wgslsmith_mod_i32(var_0.c, 44818i), all(vec3<bool>(var_0.a, false, true))) ^ -9665i, 35670i << (var_0.b.x % 32u)), _wgslsmith_div_i32(2147483647i, -9857i));
    var var_2 = ~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.b.b.x, countOneBits(4294967295u)), abs(~(~vec2<u32>(8221u, 1u))));
    global0 = array<Struct_5, 13>();
    var_0 = Struct_1(var_0.a, max(~vec4<u32>(20905u, _wgslsmith_div_u32(47284u, global1[_wgslsmith_index_u32(4294967295u, 31u)]), abs(1u), select(global1[_wgslsmith_index_u32(4294967295u, 31u)], var_1.b.b.x, false)), ~vec4<u32>(72965u, var_2.x, u_input.c, var_0.b.x) ^ ~var_1.b.b), u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(abs(var_1.a.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -515f)), var_1.a.x)));
    var var_4 = var_1.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_1.a.x, vec3<u32>(var_2.x, ~firstLeadingBit(var_2.x | 1u), ~4294967295u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(var_1.a.yx, var_1.a.yz)))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.x, -1166f), var_1.a.xw)))), ~_wgslsmith_sub_u32(0u, ~var_1.b.b.x) ^ _wgslsmith_div_u32(var_1.b.b.x, ~var_2.x));
}

