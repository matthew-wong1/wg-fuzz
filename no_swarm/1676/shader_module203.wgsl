struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<i32>(-31416i, -26641i, 38757i, 32177i), Struct_1(1734f, vec2<f32>(258f, -202f), vec2<u32>(66363u, 1u), 2147483647i, vec4<i32>(1i, -14429i, 1i, -1i))), Struct_2(vec4<i32>(-44559i, 2147483647i, 1i, 25719i), Struct_1(438f, vec2<f32>(415f, 1009f), vec2<u32>(0u, 58387u), 1i, vec4<i32>(54180i, i32(-2147483648), -1i, -1i))), Struct_2(vec4<i32>(42260i, -1i, -1i, -19319i), Struct_1(1397f, vec2<f32>(1347f, -316f), vec2<u32>(13799u, 50890u), i32(-2147483648), vec4<i32>(2147483647i, 0i, 0i, 2147483647i))), Struct_2(vec4<i32>(0i, i32(-2147483648), 19894i, 54559i), Struct_1(-2012f, vec2<f32>(-1000f, -1000f), vec2<u32>(39029u, 31175u), -1i, vec4<i32>(2147483647i, 44289i, -2035i, i32(-2147483648)))));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec2<u32> {
    global0 = array<Struct_2, 4>();
    let var_0 = Struct_4(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false)), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, u_input.a != u_input.a, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false), true, u_input.a);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -970f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(552f)), _wgslsmith_f_op_f32(floor(2392f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f * -1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(813f, -237f) - _wgslsmith_f_op_f32(744f - 389f)))));
    var var_2 = ~abs(max(vec4<u32>(countOneBits(u_input.a), 4294967295u, 1u, var_0.c), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 44736u, var_0.c, u_input.a), vec4<u32>(var_0.c, var_0.c, 11803u, 1u)) | (vec4<u32>(u_input.a, var_0.c, var_0.c, 61892u) | vec4<u32>(2168u, 8198u, var_0.c, var_0.c))));
    let var_3 = ~vec3<u32>(_wgslsmith_sub_u32(u_input.a, var_2.x), var_2.x, 25059u);
    return var_2.xw;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_4) -> i32 {
    let var_0 = arg_1.c.x;
    let var_1 = arg_1.d;
    var var_2 = arg_1;
    global0 = array<Struct_2, 4>();
    let var_3 = arg_3.b;
    return min(2159i, -1i);
}

fn func_2() -> Struct_1 {
    var var_0 = firstLeadingBit(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(42778i, 2147483647i, 1i, -395i)));
    return Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(265f, 1829f))))))))), vec2<u32>(u_input.a, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(20911u, 49310u, 4294967295u)))), func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(799f, -2291f, true))), _wgslsmith_f_op_f32(f32(-1f) * -335f), 1131f), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(769f, 524f))), func_3(i32(-1i) * -21961i), var_0.x, -(~vec4<i32>(47072i, -21064i, -46687i, var_0.x))), ~u_input.a >> (max(1u, u_input.a) % 32u), Struct_4(vec3<bool>(true, true, true), true, ~_wgslsmith_add_u32(7210u, u_input.a))), ~reverseBits(vec4<i32>(2147483647i, var_0.x, var_0.x, 0i)) & vec4<i32>(0i, -19921i >> (0u % 32u), _wgslsmith_sub_i32(_wgslsmith_sub_i32(22885i, 57604i), var_0.x | var_0.x), 21378i));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: u32) -> vec2<i32> {
    let var_0 = select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), arg_2 < 0u)), !(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), (arg_0.e.x <= ~68395i) && any(vec3<bool>(true, arg_0.d != arg_0.e.x, arg_1 <= 0u)));
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    var var_1 = global0[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, u_input.a), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(36802u, 46583u, 0u), vec3<u32>(u_input.a, 46994u, 4294967295u)), vec3<u32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), abs(vec3<u32>(4294967295u, 23369u, u_input.a))))), 4u)];
    global0 = array<Struct_2, 4>();
    return ~vec2<i32>(~abs(-2147483647i), var_1.a.x) << (vec2<u32>(22520u, abs(arg_2)) % vec2<u32>(32u));
}

fn func_1() -> f32 {
    var var_0 = select(~func_5(func_2(), 63214u << (~u_input.a % 32u), _wgslsmith_add_u32(1u, u_input.a >> (0u % 32u))), (_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(32520i, 0i), vec2<i32>(0i, 13470i))) >> (vec2<u32>(u_input.a >> (u_input.a % 32u), func_3(-8549i).x) % vec2<u32>(32u))) | ~abs(vec2<i32>(9296i, 2147483647i)), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), !vec2<bool>(true, all(vec3<bool>(false, true, true)))));
    var var_1 = Struct_3(true, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(func_2().b.x, func_2().b.x), 610f, -879f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-193f, -221f, -1085f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-613f, -162f, -1307f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-337f, -1127f, -1301f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1530f, -474f, 1114f)))))), vec2<i32>(-(~var_0.x), abs(func_5(func_2(), _wgslsmith_clamp_u32(0u, 1u, u_input.a), _wgslsmith_mult_u32(u_input.a, u_input.a)).x)), abs(vec2<u32>(u_input.a, ~(~u_input.a))));
    let var_2 = _wgslsmith_mod_u32(1u, firstTrailingBit(var_1.d.x));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.b.x)), 427f)), _wgslsmith_f_op_f32(-var_1.b.x));
    var_3 = _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1710f * func_2().a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.b.x, var_1.b.x)), _wgslsmith_f_op_f32(step(988f, 491f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(820f + var_1.b.x) - 1002f)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-165f, _wgslsmith_f_op_f32(174f + _wgslsmith_f_op_f32(trunc(403f)))) + _wgslsmith_f_op_f32(max(-1110f, 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f * -1024f)), _wgslsmith_f_op_f32(func_1()))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2653f * -317f))), _wgslsmith_f_op_f32(-func_2().a)), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), func_3(1i))), min(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 23679i), vec2<i32>(39604i, -1i)), ~vec2<i32>(49160i, -17088i)) >> (~(u_input.a << (u_input.a % 32u)) % 32u), i32(-1i) * -(i32(-1i) * -1i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_add_i32(func_5(Struct_1(-2482f, vec2<f32>(626f, -1065f), vec2<u32>(u_input.a, 87386u), -2147483647i, vec4<i32>(2147483647i, 34907i, 0i, 18419i)), u_input.a, 0u).x, -44123i), func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -426f, 1625f) + vec3<f32>(765f, -824f, 767f)), Struct_1(1097f, vec2<f32>(821f, -1000f), vec2<u32>(1u, u_input.a), 2147483647i, vec4<i32>(1i, -2147483647i, 0i, -13933i)), 19950u, Struct_4(vec3<bool>(true, false, false), false, u_input.a)), ~0i, abs(_wgslsmith_add_i32(0i, 1i))), vec4<i32>(10892i, _wgslsmith_sub_i32(-14474i, ~(-27363i)), _wgslsmith_dot_vec3_i32(func_2().e.zxw, min(vec3<i32>(-2147483647i, 1i, -1i), vec3<i32>(1i, -1i, 2147483647i))), -func_4(vec3<f32>(-975f, -1000f, -679f), Struct_1(-1137f, vec2<f32>(-992f, 1209f), vec2<u32>(u_input.a, 38004u), -2147483647i, vec4<i32>(2147483647i, -1i, 19154i, -26201i)), u_input.a, Struct_4(vec3<bool>(false, true, true), false, 1u)))));
    let var_1 = vec3<i32>(var_0.d, _wgslsmith_mod_i32(countOneBits(_wgslsmith_mult_i32(_wgslsmith_div_i32(6683i, 12783i), 0i | var_0.d)), var_0.d >> (4294967295u % 32u)), min(var_0.e.x >> (1u % 32u), _wgslsmith_mult_i32(1i, var_0.d)));
    var_0 = func_2();
    var_0 = func_2();
    var var_2 = Struct_4(vec3<bool>(true, ~var_0.d <= -_wgslsmith_add_i32(var_0.e.x, 38866i), true), true, ~(~func_3(var_1.x).x));
    var_2 = Struct_4(var_2.a, all(var_2.a), _wgslsmith_clamp_u32(~var_2.c, min(26320u, ~select(var_0.c.x, 69766u, var_2.b)), var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

