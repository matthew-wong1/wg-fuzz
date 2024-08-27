struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    let var_0 = select(~_wgslsmith_add_u32(arg_0.x, arg_0.x), _wgslsmith_mod_u32(~0u, ~(~55572u) ^ select(0u, arg_0.x, all(vec4<bool>(false, false, false, false)))), select(true, true, true));
    let var_1 = _wgslsmith_clamp_vec2_i32(countOneBits(-vec2<i32>(i32(-1i) * -33369i, i32(-1i) * -5302i)), _wgslsmith_add_vec2_i32(vec2<i32>(-abs(1i), firstLeadingBit(max(-11994i, 61611i))), ~(~vec2<i32>(1i, 1i))), min(firstLeadingBit(firstTrailingBit(vec2<i32>(-1i, 28903i))), -vec2<i32>(1i, 1i)));
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_f32(sign(-1506f));
    var var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(696f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1216f * 696f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(789f * 1220f) * _wgslsmith_f_op_f32(trunc(889f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-2507f, 245f), vec2<f32>(1543f, -2123f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 588f), vec2<f32>(929f, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(-330f, 177f), vec2<f32>(523f, 1142f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(947f, 546f), vec2<f32>(446f, -492f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-275f, 1193f) + vec2<f32>(834f, 439f))))));
    return _wgslsmith_sub_i32(i32(-1i) * -1i, reverseBits(max(var_1.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_2, 1974i), vec3<i32>(-17086i, var_2, var_1.x)))));
}

fn func_2(arg_0: f32, arg_1: i32) -> i32 {
    let var_0 = Struct_3(vec3<i32>(~(~1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 71739i, arg_1, arg_1), ~vec4<i32>(0i, 13080i, -20149i, -2147483647i) ^ (vec4<i32>(-5368i, 45399i, -22128i, 2147483647i) | vec4<i32>(arg_1, arg_1, arg_1, -1i))), ~_wgslsmith_add_i32(~arg_1, -arg_1)));
    let var_1 = Struct_1(1000f, ~vec2<u32>(1u, ~u_input.a.x & ~u_input.a.x), vec4<u32>(1u, 3626u, u_input.a.x, _wgslsmith_add_u32(~(u_input.a.x << (1u % 32u)), 1u)), ~1264i);
    let var_2 = vec3<bool>(true, true, false);
    return -_wgslsmith_mult_i32(var_0.a.x, func_3(var_1.b));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> Struct_4 {
    var var_0 = 34940u;
    let var_1 = ~vec2<i32>(func_2(_wgslsmith_f_op_f32(min(arg_1, -1367f)), 1i), _wgslsmith_add_i32(i32(-1i) * -48649i, -1i)) & -firstTrailingBit(~(~vec2<i32>(2527i, 1i)));
    var var_2 = ~327u;
    let var_3 = select(!vec4<bool>(_wgslsmith_f_op_f32(-arg_0) == _wgslsmith_f_op_f32(f32(-1f) * -1438f), false, any(vec4<bool>(true, true, true, true)) && all(vec3<bool>(false, true, false)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), any(vec3<bool>(true, true, true))), vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true), select(vec4<bool>(true, true, false, all(vec4<bool>(true, false, false, false))), vec4<bool>(true, true, u_input.a.x >= 4294967295u, true), all(vec2<bool>(false, true)))), false);
    var_0 = _wgslsmith_div_u32(u_input.a.x >> (_wgslsmith_mod_u32(reverseBits(u_input.a.x), countOneBits(reverseBits(u_input.a.x))) % 32u), ~17917u);
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_2.a))))) - _wgslsmith_f_op_vec3_f32(-arg_2.a)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec2<i32> {
    let var_0 = func_1(_wgslsmith_f_op_f32(-arg_2.x), -2113f, Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - -618f) - arg_2.x), _wgslsmith_div_f32(-2269f, _wgslsmith_f_op_f32(arg_2.x - -348f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * arg_0.a.x), 2098f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(arg_2 + arg_2);
    return ~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(countOneBits(-2147483647i), 26924i)), ~vec2<i32>(abs(2837i), reverseBits(10910i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, 1u > u_input.a.x, u_input.a.x >= 0u), vec4<bool>(true, true, true, true), (u_input.a.x < u_input.a.x) && true), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)));
    var var_1 = !(!(true && !(1u <= u_input.a.x)));
    var var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-595f - 1318f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1155f)), 445f));
    let x = u_input.a;
    s_output = StorageBuffer(~max(func_4(func_1(var_2.a.x, -939f, Struct_4(vec3<f32>(var_2.a.x, -524f, var_2.a.x))), var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, -1448f) - vec4<f32>(var_2.a.x, 205f, 1625f, var_2.a.x)), var_0.zwy), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, -102f)))), max(1i, 1i), -1716f, _wgslsmith_div_vec4_i32(abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 2147483647i, -2147483647i, -15143i), vec4<i32>(1i, 1i, 1i, 1i))), -vec4<i32>(-44690i, firstTrailingBit(-23579i), _wgslsmith_mod_i32(2147483647i, -2147483647i), i32(-1i) * -8147i)));
}

