struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> vec2<bool> {
    var var_0 = ~(~firstLeadingBit(abs(0u)));
    var_0 = u_input.a.x | u_input.a.x;
    var var_1 = Struct_1(0u);
    var_0 = ~(~(1u >> (u_input.b % 32u)));
    var var_2 = Struct_2(Struct_1(~u_input.a.x), select(!vec2<bool>(true, any(vec4<bool>(false, false, true, true))), vec2<bool>(select(true, select(false, true, false), arg_1.a.x <= arg_0), true), true), vec4<bool>(~_wgslsmith_div_u32(4294967295u, 4294967295u) < ~var_1.a, any(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), !any(vec4<bool>(true, false, true, true)), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -31158i), max(vec2<i32>(0i, 39804i), vec2<i32>(1i, -2147483647i))) > 23834i), vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(2147483647i), -5930i >> (u_input.c % 32u), reverseBits(0i)), vec3<i32>(0i, 4438i, 75130i)), _wgslsmith_mod_i32(1i, _wgslsmith_add_i32(1i, i32(-1i) * -1i))), Struct_1(~_wgslsmith_sub_u32(24938u, 81497u & var_1.a)));
    return var_2.b;
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = select(select(!vec2<bool>(all(vec3<bool>(false, false, false)), arg_0 == 778f), vec2<bool>(true, true), !func_3(543f, Struct_5(vec3<f32>(828f, -461f, arg_0)))), vec2<bool>(true, true), !(true && any(vec4<bool>(true, false, false, false))));
    var_0 = !select(select(vec2<bool>(any(vec4<bool>(true, false, true, true)), true), !(!vec2<bool>(true, var_0.x)), !(!vec2<bool>(var_0.x, var_0.x))), !vec2<bool>(1944u == u_input.d, !var_0.x), var_0.x);
    var var_1 = Struct_1(u_input.a.x);
    var_1 = Struct_1(~_wgslsmith_mod_u32(var_1.a, 73449u >> (_wgslsmith_clamp_u32(var_1.a, u_input.b, 4294967295u) % 32u)));
    let var_2 = vec4<u32>(~(var_1.a << (32429u % 32u)), ~0u << (var_1.a % 32u), 89560u, 0u) & ~vec4<u32>(~_wgslsmith_sub_u32(var_1.a, 44244u), var_1.a, 4294967295u, u_input.c);
    return true;
}

fn func_1(arg_0: i32, arg_1: f32) -> StorageBuffer {
    let var_0 = Struct_2(Struct_1(u_input.a.x), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false)), vec2<bool>(true, true)), !any(vec2<bool>(true, true))), !select(vec4<bool>(all(vec2<bool>(false, false)), true, true, all(vec2<bool>(false, true))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, false, false)))), _wgslsmith_sub_vec3_i32(select(select(vec3<i32>(1i, arg_0, arg_0), vec3<i32>(arg_0, arg_0, -2147483647i), true), vec3<i32>(arg_0, ~0i, firstLeadingBit(arg_0)), vec3<bool>(false, true, func_2(arg_1))), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, -26752i), vec3<i32>(-1i, 1i, ~(-20773i)))), Struct_1(abs(~_wgslsmith_sub_u32(4294967295u, 34696u))));
    var var_1 = ~reverseBits(_wgslsmith_sub_vec2_i32(~min(var_0.d.zy, vec2<i32>(37915i, arg_0)), abs(vec2<i32>(var_0.d.x, 0i))));
    var_1 = ~select(_wgslsmith_mult_vec2_i32(-vec2<i32>(-27559i, var_1.x), ~(-vec2<i32>(1i, var_0.d.x))), var_0.d.zy, !var_0.c.x);
    var var_2 = Struct_5(vec3<f32>(-2056f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1156f - -309f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(852f, arg_1))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -620f))))));
    var_1 = -(~_wgslsmith_div_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(var_0.d.yy, vec2<i32>(-1i, var_1.x))), var_0.d.zy));
    return StorageBuffer(_wgslsmith_f_op_f32(410f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1451f))), _wgslsmith_f_op_f32(f32(-1f) * -643f), vec4<f32>(_wgslsmith_div_f32(arg_1, 208f), arg_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a.x, arg_1, var_0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(abs(-483f)))), countOneBits(~(~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(1u, u_input.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 20751i;
    let x = u_input.a;
    s_output = func_1(-countOneBits(1i), 1036f);
}

