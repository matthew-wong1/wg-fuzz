struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false);

var<private> global1: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(804f, -1762f, -1000f, -1405f), vec4<f32>(530f, 1039f, 479f, 124f), vec4<f32>(-934f, -293f, -1619f, -907f), vec4<f32>(1572f, -257f, -370f, -522f), vec4<f32>(1175f, -320f, 783f, 198f), vec4<f32>(501f, 2323f, 718f, 1866f), vec4<f32>(-119f, 2553f, -326f, -1000f), vec4<f32>(-1088f, -397f, 1000f, 236f), vec4<f32>(-1477f, 287f, 535f, -974f), vec4<f32>(1129f, 482f, -124f, -1105f), vec4<f32>(-716f, 686f, 720f, 234f), vec4<f32>(-1000f, -1000f, -259f, 1006f), vec4<f32>(585f, 1019f, 2164f, -662f), vec4<f32>(-637f, 119f, 796f, -894f), vec4<f32>(640f, -1103f, -1000f, -955f), vec4<f32>(1022f, -695f, -1443f, 865f), vec4<f32>(943f, 1000f, 1000f, 469f), vec4<f32>(-2595f, 1116f, -1000f, -183f), vec4<f32>(-107f, 350f, 960f, -664f), vec4<f32>(-481f, 946f, 373f, 340f), vec4<f32>(1226f, -294f, -1074f, 1225f), vec4<f32>(-476f, -298f, -780f, 873f), vec4<f32>(2360f, -249f, -812f, -1456f), vec4<f32>(-455f, -129f, -1000f, -1169f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: i32) -> u32 {
    var var_0 = any(!select(!(!vec2<bool>(global0.a, true)), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(global0.a, global0.a, global0.a)), true)));
    let var_1 = Struct_3(global0.a);
    let var_2 = -(vec2<i32>(-1i) * -reverseBits(-u_input.c));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-139f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f + arg_1.a))), -159f), -967f, true));
    let var_4 = global0.a;
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = -1i;
    var var_1 = Struct_2(abs(_wgslsmith_mult_i32(10355i, -11983i)), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(~4294967295u, u_input.d), countOneBits(_wgslsmith_mult_u32(u_input.a.x, 0u))), min(~7141u, u_input.b.x) & abs(~6342u), u_input.a.x, u_input.d ^ ((23329u & u_input.d) & _wgslsmith_mult_u32(1482u, 0u))));
    let var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(19033i, var_1.a, u_input.c.x)) | _wgslsmith_mod_vec3_i32(~vec3<i32>(-52727i, 2147483647i, 41959i), vec3<i32>(-15689i, -47523i, arg_1.x) >> (vec3<u32>(55376u, var_1.b.x, u_input.b.x) % vec3<u32>(32u))), ~firstLeadingBit(abs(vec3<i32>(var_1.a, 25872i, 1i))), vec3<i32>(abs(1i), u_input.c.x, min(i32(-1i) * -1i, -25274i))), _wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, 58593i, -2147483647i), vec3<i32>(857i, 29087i, 0i)) << (vec3<u32>(u_input.d & var_1.b.x, _wgslsmith_sub_u32(52477u, var_1.b.x), _wgslsmith_sub_u32(u_input.d, 38874u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(-20565i, ~arg_1.x), -1i, 1i)));
    var_0 = arg_1.x;
    var var_3 = ~u_input.d;
    return Struct_1(select(~_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(var_1.a, 854i, u_input.c.x, 2147483647i)), vec4<i32>(var_2.x, 2147483647i, -1i, -96481i), ~vec4<i32>(-2147483647i, 1i, 0i, var_1.a)), _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, var_2.x, 16668i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, var_1.a, 0i, var_2.x), vec4<i32>(6450i, arg_1.x, u_input.c.x, arg_0)) >> (var_1.b % vec4<u32>(32u))), false), select(vec3<bool>(all(vec4<bool>(true, true, true, true)), global0.a, all(vec2<bool>(global0.a, false))), !vec3<bool>(false, global0.a, var_1.b.x != 33456u), vec3<bool>(func_3(vec3<f32>(358f, 435f, -1158f), Struct_4(2076f), u_input.c.x) < u_input.b.x, true, true)), vec4<i32>(select(var_2.x, countOneBits(~var_1.a), !(!global0.a)), firstLeadingBit(~11364i), countOneBits((var_1.a & arg_1.x) ^ var_1.a), firstTrailingBit(abs(_wgslsmith_sub_i32(var_2.x, var_1.a)))), _wgslsmith_add_u32(1u, 14083u), arg_1 ^ _wgslsmith_clamp_vec2_i32(select(arg_1, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, var_2.x), vec2<i32>(var_2.x, arg_1.x)), true), ~max(arg_1, u_input.c), _wgslsmith_sub_vec2_i32(var_2.xx, u_input.c)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~select(abs(u_input.c.x), arg_1.e.x, all(vec2<bool>(arg_1.b.x, true)));
    var var_1 = func_2(arg_1.c.x, vec2<i32>(max(1i, u_input.c.x), -39161i));
    global0 = Struct_3(arg_0 > arg_0);
    let var_2 = global0.a;
    let var_3 = vec3<f32>(-129f, _wgslsmith_f_op_f32(step(arg_0, -739f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1436f + -1292f), _wgslsmith_f_op_f32(min(521f, -1833f)), true))));
    return Struct_1(select(_wgslsmith_add_vec4_i32(arg_1.a << (firstLeadingBit(vec4<u32>(var_1.d, u_input.d, var_1.d, 4294967295u)) % vec4<u32>(32u)), -var_1.c), -vec4<i32>(var_1.a.x, -2147483647i, 0i, 1i), (func_2(arg_1.e.x, arg_1.c.yz).b.x | (var_3.x != arg_0)) & var_1.b.x), select(var_1.b, func_2(var_1.a.x, select(select(var_1.a.zw, vec2<i32>(0i, arg_1.e.x), vec2<bool>(false, var_1.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.a.x, -2147483647i), vec2<i32>(-18156i, arg_1.e.x)), !arg_1.b.zz)).b, var_1.b.x), arg_1.a, ~17579u, firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.c << (vec2<u32>(arg_1.d, u_input.d) % vec2<u32>(32u)), vec2<i32>(arg_1.c.x, arg_1.e.x) >> (vec2<u32>(50773u, 4294967295u) % vec2<u32>(32u))) >> (u_input.b.xz % vec2<u32>(32u))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = Struct_3(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(step(749f, arg_3))), arg_3)), arg_2).b.x);
    var var_1 = Struct_4(-154f);
    var var_2 = ~53667u ^ arg_2.d;
    let var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_vec2_f32(-arg_0.zy);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_1.a, -1505f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 24>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -269f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(966f * _wgslsmith_f_op_f32(floor(-1000f)))));
    let var_1 = vec2<bool>(global0.a, true);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(355f, _wgslsmith_f_op_f32(f32(-1f) * -203f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1508f + 560f)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec3<f32>(-956f, var_2.a, 971f), abs(vec4<i32>(-1i, -33718i, u_input.c.x, 45543i)), func_1(var_2.a, Struct_1(vec4<i32>(u_input.c.x, 26801i, -11729i, u_input.c.x), vec3<bool>(false, var_1.x, true), vec4<i32>(u_input.c.x, -5551i, 1i, -20500i), u_input.a.x, u_input.c)), _wgslsmith_div_f32(561f, -2075f))) - _wgslsmith_f_op_f32(735f - 638f)) + _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a)) + _wgslsmith_f_op_f32(1591f + var_2.a)))));
    var var_4 = Struct_2(abs(35078i), select(select(vec4<u32>(firstTrailingBit(37844u), u_input.b.x, ~u_input.d, u_input.d), reverseBits(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.d)) >> (vec4<u32>(22753u, u_input.b.x, u_input.d, u_input.b.x) % vec4<u32>(32u)), !select(vec4<bool>(true, global0.a, global0.a, false), vec4<bool>(false, true, false, false), true)), min(~(vec4<u32>(1u, 14924u, u_input.a.x, u_input.d) >> (vec4<u32>(0u, u_input.a.x, 30754u, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(u_input.a.x, min(67694u, u_input.a.x), u_input.d, 1u)), vec4<bool>(true, !all(vec4<bool>(global0.a, var_1.x, var_1.x, false)), any(vec2<bool>(global0.a, false)), (u_input.d >> (0u % 32u)) >= firstTrailingBit(u_input.a.x))));
    let var_5 = _wgslsmith_sub_vec3_u32(select(var_4.b.wwy, vec3<u32>(u_input.b.x, _wgslsmith_mod_u32(~var_4.b.x, ~u_input.a.x), select(21444u << (u_input.d % 32u), ~u_input.d, global0.a)), select(global0.a, false, ~u_input.d < _wgslsmith_dot_vec2_u32(var_4.b.yy, vec2<u32>(var_4.b.x, 4294967295u)))), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-min(func_1(-227f, Struct_1(vec4<i32>(-1i, var_4.a, 2147483647i, -13430i), vec3<bool>(var_1.x, var_1.x, false), vec4<i32>(-2147483647i, 2147483647i, 4788i, var_4.a), 9062u, vec2<i32>(-1i, 2147483647i))).a, -vec4<i32>(u_input.c.x, 33230i, u_input.c.x, 2147483647i)), ~min(vec4<i32>(0i, u_input.c.x, 2147483647i, var_4.a), vec4<i32>(5586i, -1i, 0i, u_input.c.x))), var_5.xz);
}

