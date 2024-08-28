struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: f32 = 1564f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> bool {
    global0 = abs(~reverseBits(vec3<u32>(u_input.a, 10808u, u_input.a) & vec3<u32>(51696u, 1u, 0u)));
    global0 = ~vec3<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0.x, firstLeadingBit(54983u)), 1u), _wgslsmith_mult_u32(global0.x, countOneBits(abs(80728u))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-956f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 1058f);
    global1 = _wgslsmith_f_op_f32(floor(281f));
    global0 = vec3<u32>(~firstTrailingBit(~(~global0.x)), 4294967295u, u_input.d ^ reverseBits(_wgslsmith_div_u32(global0.x, u_input.d | u_input.b)));
    return !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(701f)))), 744f) >= -1718f);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = 0u > ~global0.x;
    let var_1 = vec3<u32>(16136u, ~(~_wgslsmith_mult_u32(90723u, global0.x)), _wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x));
    let var_2 = 4294967295u;
    var var_3 = select(~_wgslsmith_sub_vec2_u32(vec2<u32>(26491u, ~var_1.x), _wgslsmith_mult_vec2_u32(arg_0.b, ~var_1.yx)), _wgslsmith_div_vec2_u32(reverseBits(reverseBits(~var_1.zy)), abs(_wgslsmith_mod_vec2_u32(~vec2<u32>(global0.x, global0.x), ~arg_0.b))), !func_3());
    var var_4 = vec2<u32>(var_2, _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, var_3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.b.x, 1u), var_1)), _wgslsmith_add_u32(var_3.x ^ 52391u, select(1u, 4294967295u, var_0)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a), var_1) << (global0.x % 32u)), _wgslsmith_dot_vec3_u32(var_1, ~countOneBits(vec3<u32>(var_2, global0.x, 1u)))));
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = Struct_1(vec4<i32>(min(u_input.c.x, (u_input.c.x | arg_3.c.x) << (arg_0 % 32u)), reverseBits(firstLeadingBit(arg_2.a.x << (arg_3.b.x % 32u))), u_input.c.x, -1i), vec2<u32>(u_input.d << (arg_3.b.x % 32u), min(1u, u_input.b & 1u)), u_input.c.xzw);
    var var_1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(min(arg_2.a, ~arg_3.a)) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-30908i, -1i), vec2<i32>(-57758i, -1i)) & func_2(arg_2, 715f).a.x, ~arg_2.c.x, _wgslsmith_div_i32(-1i, u_input.c.x), _wgslsmith_mod_i32(-arg_3.a.x, _wgslsmith_clamp_i32(1i, u_input.c.x, -1i))), u_input.c);
    let var_2 = u_input.c.x;
    let var_3 = arg_2;
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1697f, -717f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(f32(-1f) * -273f), true)))));
    return select(-_wgslsmith_mult_vec3_i32(min(firstLeadingBit(arg_3.c), vec3<i32>(arg_3.a.x, -6483i, -1i)), firstLeadingBit(~var_0.c)), -arg_2.c, vec3<bool>(!any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))), any(vec2<bool>(false, true)), true));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = Struct_1(u_input.c, global0.yx, _wgslsmith_mult_vec3_i32(func_4(21689u, u_input.b, Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -70013i, -43584i), u_input.c), firstLeadingBit(global0.xx), _wgslsmith_div_vec3_i32(u_input.c.xxx, vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x))), func_2(Struct_1(vec4<i32>(u_input.c.x, 1i, u_input.c.x, 20420i), global0.yy, u_input.c.wxy), _wgslsmith_f_op_f32(step(arg_0, 735f)))), _wgslsmith_mult_vec3_i32(u_input.c.wzw & _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 1i)), vec3<i32>(10954i, 6623i, -2147483647i) | func_4(4294967295u, global0.x, Struct_1(vec4<i32>(0i, u_input.c.x, u_input.c.x, u_input.c.x), vec2<u32>(u_input.b, global0.x), u_input.c.xwz), Struct_1(u_input.c, vec2<u32>(4294967295u, u_input.b), u_input.c.wxw)))));
    var_0 = func_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.c.x, 2147483647i, -2147483647i), var_0.c.x, 1i, 1i), u_input.c ^ (vec4<i32>(53027i, u_input.c.x, 1i, -48505i) | vec4<i32>(u_input.c.x, var_0.c.x, 39068i, var_0.c.x))), ~select(~var_0.b, vec2<u32>(var_0.b.x, var_0.b.x), true), vec3<i32>(1i >> (_wgslsmith_mult_u32(62021u, u_input.d) % 32u), 25682i, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.a.x, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -33143i, 72864i), vec4<i32>(0i, -1i, -12361i, 61169i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 629f) * 1f))) + arg_0));
    var var_1 = func_2(Struct_1(vec4<i32>(var_0.c.x, -1i, 1i, ~u_input.c.x), vec2<u32>(_wgslsmith_clamp_u32(47119u, _wgslsmith_clamp_u32(25798u, 4294967295u, u_input.b), 4294967295u), 72816u), var_0.a.wyx), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 141f, false)) + _wgslsmith_f_op_f32(arg_0 * 2300f)), _wgslsmith_div_f32(arg_0, -707f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) * -291f) - 1f)));
    var var_2 = !select(select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), arg_0 != arg_0), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), false))), vec4<bool>(true, !any(vec3<bool>(true, false, false)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), true), 604f == arg_0);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.c, global0.xz, -(~u_input.c.xzx));
    global0 = vec3<u32>(global0.x, ~(~(~var_0.b.x)), min(_wgslsmith_mod_u32(_wgslsmith_sub_u32(34587u, var_0.b.x), _wgslsmith_add_u32(53128u, global0.x)), func_1(-605f))) | _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(max(1u, u_input.b), ~u_input.b, ~11382u)), countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, var_0.b.x, 54974u) << (vec3<u32>(35208u, 4294967295u, 0u) % vec3<u32>(32u)), vec3<u32>(var_0.b.x, 0u, 1u))));
    var var_1 = !any(vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), true));
    let var_2 = func_2(var_0, _wgslsmith_f_op_f32(-125f * _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -1937f)))));
    var var_3 = _wgslsmith_mult_vec2_i32(reverseBits(-var_0.c.xy), u_input.c.zy);
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<u32>(1u | u_input.b, 1u, 0u), ~(vec3<u32>(var_0.b.x, var_0.b.x, global0.x) << (vec3<u32>(0u, 4294967295u, 0u) % vec3<u32>(32u))), vec3<bool>(var_2.b.x <= var_2.b.x, true, true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(559f, 977f, -369f, -855f), vec4<f32>(515f, 729f, 295f, 135f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1846f, 752f, 1065f, -935f))), vec4<f32>(_wgslsmith_f_op_f32(309f * -624f), _wgslsmith_f_op_f32(f32(-1f) * -597f), -2396f, 1f), -20593i != -var_2.c.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2071f, 688f))) * vec2<f32>(_wgslsmith_f_op_f32(abs(1720f)), _wgslsmith_f_op_f32(round(245f)))) + vec2<f32>(_wgslsmith_f_op_f32(floor(-817f)), -915f)), vec3<u32>(var_2.b.x, ~var_0.b.x, 26998u), var_0.a.yz);
}

