struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4) -> bool {
    var var_0 = vec4<bool>(all(vec2<bool>(false, any(vec3<bool>(true, true, true)))), true, true, !any(vec2<bool>(true, true)));
    var var_1 = Struct_1(!var_0.x, arg_0.x, ~vec2<u32>(arg_1.c, firstLeadingBit(_wgslsmith_dot_vec2_u32(arg_0, u_input.a.zy))), u_input.b | _wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, u_input.b), ~(-8829i))), var_0.x);
    return true;
}

fn func_3(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = u_input.a.xx;
    var var_1 = Struct_4(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -1412f), arg_1);
    var var_2 = Struct_5(reverseBits(~(~2147483647i)));
    let var_3 = Struct_3(Struct_2(Struct_1(!all(vec2<bool>(arg_0, arg_0)), firstLeadingBit(var_1.c), firstLeadingBit(u_input.a.xz), -1i, func_2(vec2<u32>(var_1.c, var_1.c), Struct_4(1u, var_1.b, 0u)))));
    let var_4 = 103050u | var_0.x;
    return true;
}

fn func_1() -> Struct_2 {
    let var_0 = select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), func_2(vec2<u32>(u_input.a.x, 47901u), Struct_4(77753u, -355f, 31775u))), true), select(vec3<bool>(true, true, all(vec2<bool>(true, false))), select(vec3<bool>(true, true, any(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)))), all(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))))), !(-1i < u_input.b));
    let var_1 = Struct_2(Struct_1(any(select(var_0.yy, !vec2<bool>(true, var_0.x), var_0.x)), 1u, u_input.a.yz, _wgslsmith_div_i32(u_input.c.x, _wgslsmith_div_i32(84138i, -10649i)), !(!func_3(var_0.x, 478u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f)))) - _wgslsmith_f_op_f32(2857f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_3 = var_0;
    var var_4 = vec3<i32>(2229i, -1i, 32653i);
    return var_1;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: bool) -> i32 {
    var var_0 = 1u;
    var var_1 = ~vec3<u32>(select(~u_input.a.x, 32352u, arg_3) & u_input.a.x, ~(~24235u) >> (_wgslsmith_add_u32(2605u, u_input.a.x & 4294967295u) % 32u), ~(u_input.a.x & u_input.a.x));
    let var_2 = Struct_1(any(!vec4<bool>(true, true, arg_3, arg_3)), _wgslsmith_sub_u32(~0u, _wgslsmith_clamp_u32(countOneBits(var_1.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.b, 54111u, 17598u, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_1.a.b)), u_input.a.x | u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1941u, var_1.x, arg_1.a.b), ~vec4<u32>(46192u, 4294967295u, u_input.a.x, u_input.a.x)))), firstLeadingBit(arg_1.a.c), -(i32(-1i) * -arg_1.a.d), arg_1.a.e != true);
    let var_3 = Struct_3(arg_1);
    var var_4 = func_1().a;
    return u_input.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: bool) -> StorageBuffer {
    var var_0 = -arg_0.x;
    var var_1 = select(vec2<bool>(true, false), select(vec2<bool>(func_2(u_input.a.zz, Struct_4(19831u, arg_1.x, 13729u)), !(!arg_3)), arg_2.xy, !vec2<bool>(arg_3, arg_1.x >= -1306f)), arg_3);
    let var_2 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_3 = vec2<f32>(-1321f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -337f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 328f) + 189f), all(vec2<bool>(true, false)))));
    var_0 = u_input.c.x;
    return StorageBuffer(1i, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(~abs(1i), -2147483647i);
    let x = u_input.a;
    s_output = func_5(vec3<i32>(u_input.b, -20028i, func_4(vec3<i32>(u_input.c.x, max(u_input.c.x, -21579i), u_input.b), func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1421f, -2133f, -2091f, -922f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(544f, 1263f, 1000f, -796f) - vec4<f32>(1352f, 1421f, 798f, 898f))), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(870f, -1000f, -270f))))), select(vec3<bool>(false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), true), select(vec3<bool>(true, all(vec3<bool>(true, false, false)), all(vec2<bool>(true, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), !(!all(vec3<bool>(true, true, false)))), !(!(!func_2(vec2<u32>(u_input.a.x, 1u), Struct_4(u_input.a.x, 1059f, u_input.a.x)))));
}

