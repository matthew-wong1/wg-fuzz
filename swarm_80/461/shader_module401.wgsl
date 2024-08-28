struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_1(~vec4<u32>(4294967295u, 1u, max(arg_0.a.x, 43324u) << (select(u_input.c.x, u_input.c.x, arg_1.x) % 32u), ~2695u));
    var var_1 = true;
    var_1 = any(vec4<bool>(true, arg_1.x, all(vec4<bool>(false, arg_1.x, true, arg_1.x)) == (all(vec2<bool>(arg_1.x, false)) & any(vec2<bool>(false, true))), !any(!arg_1)));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.yx + _wgslsmith_f_op_vec2_f32(-arg_2.yy)))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(var_0.a.wzz & abs(vec3<u32>(var_2.a.x, arg_0.a.x, arg_0.a.x))), vec3<u32>(firstLeadingBit(~21241u), var_2.a.x, ~abs(4294967295u))), firstTrailingBit(vec3<u32>(var_2.a.x, u_input.c.x, firstLeadingBit(var_2.a.x))) & var_0.a.xzy);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = vec2<bool>(all(vec2<bool>(true, true)), min(u_input.a.x, min(-1i, 27858i) << (func_3(Struct_1(vec4<u32>(arg_0.x, 0u, 4294967295u, u_input.c.x)), vec2<bool>(true, true), vec3<f32>(arg_1, 1688f, arg_1)) % 32u)) == abs(reverseBits(_wgslsmith_add_i32(-350i, u_input.b))));
    var var_1 = select((~abs(vec3<u32>(arg_0.x, 1u, u_input.c.x)) | ~vec3<u32>(1u, 1u, 24231u)) ^ ~u_input.c.ywz, u_input.c.xyy, true);
    var_1 = ~_wgslsmith_mod_vec3_u32(select(vec3<u32>(21600u, _wgslsmith_mult_u32(arg_0.x, u_input.d), arg_0.x >> (0u % 32u)), u_input.c.xxw, vec3<bool>(arg_1 <= 297f, true, u_input.a.x != 0i)), (vec3<u32>(u_input.c.x, 1u, 3091u) << (vec3<u32>(21617u, u_input.d, var_1.x) % vec3<u32>(32u))) & u_input.c.yww);
    var var_2 = min(1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.b, u_input.a.x), 0i));
    let var_3 = Struct_1(select(~_wgslsmith_mod_vec4_u32(~u_input.c, vec4<u32>(var_1.x, 1u, var_1.x, 4294967295u)), ~min(u_input.c, u_input.c), vec4<bool>(var_0.x, !var_0.x, _wgslsmith_f_op_f32(-arg_1) < _wgslsmith_f_op_f32(-arg_2), true == all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)))));
    return ~0u;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = all(arg_1);
    var var_1 = u_input.a.xz;
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c.yww & u_input.c.yww, ~arg_0.a.yzw), 1u), u_input.d, func_2(abs(vec2<u32>(7399u, arg_0.a.x)), -1558f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_2.x) * _wgslsmith_f_op_f32(round(-498f)))), ~24498u));
    var_0 = !(!all(arg_1));
    var_1 = select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(0i, 2147483647i)), vec2<i32>(-56233i, ~(-2147483647i)) | -u_input.a.yw, min(select(vec2<i32>(32541i, var_1.x), ~vec2<i32>(24415i, 42i), vec2<bool>(false, true)), vec2<i32>(firstLeadingBit(2147483647i), _wgslsmith_mult_i32(19392i, -6732i)))), firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(select(var_1.x, -3681i, arg_1.x), min(var_1.x, var_1.x), -u_input.a.x), var_1.x)), arg_1.x);
    return !vec4<bool>(any(!(!vec4<bool>(true, false, arg_1.x, arg_1.x))), !(_wgslsmith_f_op_f32(-arg_2.x) < arg_2.x), !(!arg_1.x & true), any(!vec3<bool>(arg_1.x, true, arg_1.x)) | !all(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = !vec2<bool>(u_input.b >= 1i, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, var_0, true), func_1(Struct_1(u_input.c), vec2<bool>(false, true), vec4<f32>(1294f, 1451f, -437f, -171f)))));
    var var_2 = firstTrailingBit(func_2(u_input.c.xw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(142f)), -649f))), _wgslsmith_div_f32(-619f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1459f, 135f)), -2572f)))));
    var var_3 = _wgslsmith_sub_vec2_u32(u_input.c.xy, u_input.c.ww);
    var_2 = ~var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-218f, 956f)), -474f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-957f, 593f, var_0))), 512f)));
}

