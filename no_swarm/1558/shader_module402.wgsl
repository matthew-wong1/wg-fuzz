struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(0u, 3295u), vec2<u32>(9143u, 18826u), vec2<u32>(6392u, 0u), vec2<u32>(53115u, 1u), vec2<u32>(12547u, 94485u), vec2<u32>(1u, 1u), vec2<u32>(0u, 77616u), vec2<u32>(69397u, 1u), vec2<u32>(59300u, 62752u), vec2<u32>(1u, 8063u));

var<private> global1: vec3<i32> = vec3<i32>(-16729i, -1i, 21213i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> u32 {
    global1 = _wgslsmith_mod_vec3_i32(-(min(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 664i), vec3<i32>(-2147483647i, global1.x, global1.x)), ~vec3<i32>(-27175i, 0i, global1.x)) ^ (vec3<i32>(-1i) * -vec3<i32>(global1.x, 57020i, -38089i))), -max(~(~vec3<i32>(-29270i, global1.x, 1i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(35501i, global1.x, global1.x), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 22504i, -2147483647i), vec3<i32>(global1.x, -2147483647i, global1.x)))));
    let var_0 = true;
    return _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 15478u, 49499u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 32666u, u_input.a, u_input.a), vec4<u32>(0u, 1u, u_input.a, u_input.a)), 0u ^ u_input.a, _wgslsmith_mod_u32(4294967295u, 87363u))), vec3<u32>(59757u, 105708u, _wgslsmith_sub_u32(7672u, _wgslsmith_mult_u32(u_input.a, 1u)) | ~max(69448u, u_input.a)));
}

fn func_2(arg_0: u32) -> vec3<u32> {
    global0 = array<vec2<u32>, 10>();
    return firstLeadingBit(select(vec3<u32>(~_wgslsmith_mult_u32(arg_0, u_input.a), ~func_3(472f), 0u), countOneBits(firstLeadingBit(vec3<u32>(u_input.a, 1u, arg_0))), vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> vec4<bool> {
    var var_0 = ~0i;
    global0 = array<vec2<u32>, 10>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-447f + _wgslsmith_f_op_f32(trunc(313f))), 137f);
    global0 = array<vec2<u32>, 10>();
    return vec4<bool>(true && select(true, true, arg_0.a.x), false, true, arg_0.a.x);
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(!((42674i & global1.x) <= _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, global1.x, 0i), vec3<i32>(-21804i, -1i, global1.x))), all(vec4<bool>(arg_0.x, false, true, true)) || !(!arg_0.x)), !func_4(Struct_1(arg_0.zx, arg_0.x, true, abs(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), -28288i, ~vec3<u32>(12222u, 49946u, u_input.a)).x, !select(false, all(func_4(Struct_1(arg_0.zy, false, true, vec4<u32>(u_input.a, u_input.a, 10253u, u_input.a)), -31884i, vec3<u32>(1u, u_input.a, u_input.a))), true), ~vec4<u32>(abs(1u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(30432u, 1u, 4294967295u, 68666u), vec4<u32>(54416u, u_input.a, u_input.a, u_input.a)), _wgslsmith_mult_u32(1u, 0u)) ^ vec4<u32>(u_input.a, 4294967295u, _wgslsmith_mult_u32(~4294967295u, u_input.a), u_input.a));
    global0 = array<vec2<u32>, 10>();
    var var_1 = u_input.a;
    var_0 = Struct_1(arg_0.yx, arg_0.x, true, _wgslsmith_add_vec4_u32(select(_wgslsmith_mod_vec4_u32(var_0.d, var_0.d), countOneBits(vec4<u32>(u_input.a, 17354u, var_0.d.x, 19917u)), vec4<bool>(true, var_0.c, true, arg_0.x)), ~(vec4<u32>(u_input.a, u_input.a, var_0.d.x, u_input.a) ^ var_0.d)) & select(var_0.d, var_0.d, select(!vec4<bool>(var_0.b, arg_0.x, false, false), vec4<bool>(arg_0.x, false, false, true), all(vec4<bool>(false, true, true, arg_0.x)))));
    var var_2 = select(var_0.a, select(func_4(Struct_1(vec2<bool>(arg_0.x, false), !var_0.a.x, arg_0.x, vec4<u32>(1u, 24863u, 63829u, 35530u)), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -521i, -31153i, -16965i), countOneBits(vec4<i32>(8167i, global1.x, global1.x, global1.x))), var_0.d.xwx << (abs(var_0.d.ywy) % vec3<u32>(32u))).zw, select(var_0.a, select(var_0.a, arg_0.xz, !arg_0.x), any(!arg_0.zy)), all(!select(vec4<bool>(true, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, false, var_0.b), vec4<bool>(false, true, true, var_0.c)))), select(vec2<bool>(!var_0.a.x, false), var_0.a, all(arg_0)));
    return Struct_1(vec2<bool>(true & var_2.x, true), var_2.x, func_4(Struct_1(!(!var_0.a), 3319u <= u_input.a, true, abs(vec4<u32>(1u, var_0.d.x, 4294967295u, u_input.a))), _wgslsmith_sub_i32(min(global1.x | 2147483647i, -38583i), global1.x), _wgslsmith_div_vec3_u32(max(_wgslsmith_sub_vec3_u32(var_0.d.zzy, vec3<u32>(4294967295u, 21062u, u_input.a)), vec3<u32>(u_input.a, u_input.a, 1u)), ~(~var_0.d.www))).x, vec4<u32>(u_input.a, _wgslsmith_div_u32(~(~var_0.d.x), _wgslsmith_div_u32(var_0.d.x, ~1u)), _wgslsmith_mult_u32(0u, func_3(_wgslsmith_f_op_f32(round(-582f)))), 1u));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> bool {
    let var_0 = func_5(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), any(vec2<bool>(true, false))), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), any(func_4(Struct_1(vec2<bool>(false, false), false, false, vec4<u32>(arg_1, u_input.a, 32124u, 16732u)), select(-2147483647i, 32346i, true), func_2(4294967295u)))));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 10>();
    var var_0 = global1.x;
    var_0 = select(global1.x, _wgslsmith_mod_i32(-(~min(0i, global1.x)), min(~(-2147483647i), -1i)), true);
    var var_1 = Struct_1(vec2<bool>(!func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1588f, -368f, -105f, -670f)), ~1u, _wgslsmith_f_op_f32(f32(-1f) * -1465f)), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(518f, 574f, -668f, -643f) * vec4<f32>(1440f, 414f, -834f, -1378f))), ~4294967295u, -2464f)), _wgslsmith_f_op_f32(round(-224f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -845f) - _wgslsmith_div_f32(-1000f, 1939f))), ~(~u_input.a) > _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 48956u), vec3<u32>(u_input.a, 1u, 1u)), ~(~4294967295u), u_input.a), firstTrailingBit(max(max(vec4<u32>(7883u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 66275u, 4294967295u, 1u)) | (vec4<u32>(u_input.a, u_input.a, u_input.a, 24187u) & vec4<u32>(u_input.a, u_input.a, 4294967295u, 38954u)), select(~vec4<u32>(u_input.a, 0u, u_input.a, 15513u), vec4<u32>(u_input.a, 30369u, 0u, 4294967295u), vec4<bool>(false, false, true, false)))));
    var var_2 = Struct_1(select(!vec2<bool>(true, any(var_1.a)), select(!vec2<bool>(var_1.a.x, false), var_1.a, select(func_5(vec3<bool>(false, false, false)).a, var_1.a, var_1.a)), vec2<bool>(var_1.b || select(false, var_1.c, true), global1.x > _wgslsmith_mod_i32(-56738i, 1i))), true, true, vec4<u32>(4294967295u, ~u_input.a | abs(u_input.a), var_1.d.x & u_input.a, ~_wgslsmith_sub_u32(31224u, var_1.d.x) >> (var_1.d.x % 32u)));
    var var_3 = Struct_1(vec2<bool>(all(select(!vec4<bool>(false, true, var_2.c, false), !vec4<bool>(false, false, var_1.a.x, var_1.c), select(vec4<bool>(true, true, var_1.c, false), vec4<bool>(false, false, var_2.a.x, var_1.b), var_1.b))), func_4(func_5(!vec3<bool>(var_2.c, true, var_2.a.x)), ~(~(-1i)), var_2.d.ywz).x), any(vec3<bool>(true, true, _wgslsmith_add_u32(0u, u_input.a) < _wgslsmith_mult_u32(var_2.d.x, 4294967295u))), var_2.b, var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(global1.x, global1.x), global1.x, -2147483647i), ~_wgslsmith_div_u32((48060u ^ u_input.a) << (~var_1.d.x % 32u), 1u));
}

