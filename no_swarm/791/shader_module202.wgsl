struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(-1035f, 1000f, 711f, 111f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = any(!vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(select(arg_3.b.d.x, -589f, true)), _wgslsmith_f_op_f32(step(-726f, 748f)), global0.a.x), _wgslsmith_f_op_vec4_f32(global0.a + _wgslsmith_f_op_vec4_f32(round(global0.a))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -434f, -975f, 474f)), var_1.a, -2004i > arg_1.x))))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, 1211f)), _wgslsmith_f_op_f32(arg_2.x * -193f), _wgslsmith_f_op_f32(-arg_3.b.d.x), var_1.a.x))));
    let var_3 = global0.a.x;
    return select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, any(vec3<bool>(true, true, false))))), false && !any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)));
}

fn func_2() -> vec4<bool> {
    var var_0 = !(!(!func_3(-u_input.d, reverseBits(vec4<i32>(u_input.d, u_input.d, u_input.c, u_input.c)), vec3<f32>(151f, 508f, -1243f), Struct_2(vec2<i32>(u_input.d, -63942i), Struct_1(u_input.b, u_input.b, 1i, global0.a.wyz, u_input.c)))));
    var var_1 = global0.a.x;
    var_0 = vec2<bool>(var_0.x, false);
    let var_2 = global0.a.x;
    var var_3 = Struct_2(vec2<i32>(abs(abs(u_input.d)) & -13288i, -(u_input.c & u_input.d) << (u_input.b % 32u)), Struct_1(0u, max(u_input.a.x, 41752u) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(15331u, 1u, u_input.a.x), vec3<u32>(u_input.b, 86226u, u_input.a.x), u_input.a.zwy)), -u_input.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1044f, global0.a.x) + global0.a.x), global0.a.x), u_input.c));
    return select(vec4<bool>(any(!select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x))), !var_0.x, var_0.x, true), vec4<bool>(var_0.x, !(countOneBits(49914i) <= ~var_3.b.e), false, !var_0.x), !(!(2147483647i <= reverseBits(u_input.c))));
}

fn func_1() -> StorageBuffer {
    var var_0 = select(!select(func_2(), vec4<bool>(true, true, true, true), vec4<bool>(func_3(0i, vec4<i32>(2147483647i, -43797i, u_input.c, -25611i), vec3<f32>(510f, -1000f, 245f), Struct_2(vec2<i32>(1i, u_input.c), Struct_1(1u, 35907u, u_input.c, vec3<f32>(global0.a.x, -771f, -296f), u_input.c))).x, true, false, func_3(u_input.c, vec4<i32>(u_input.d, u_input.c, 0i, u_input.d), vec3<f32>(global0.a.x, 1687f, -2158f), Struct_2(vec2<i32>(u_input.d, 2147483647i), Struct_1(u_input.a.x, u_input.b, 5202i, vec3<f32>(global0.a.x, 929f, global0.a.x), u_input.d))).x)), vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true))));
    var var_1 = !(1i >= ~u_input.c);
    let var_2 = Struct_3(global0.a);
    let var_3 = Struct_1(_wgslsmith_clamp_u32(~u_input.b, ~(~0u), ~u_input.b), _wgslsmith_dot_vec3_u32(~u_input.a.xwz, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, 3179u), ~1u), u_input.b, ~u_input.a.x)), -_wgslsmith_mod_i32(1i, u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, global0.a.x), _wgslsmith_f_op_f32(-1292f - -484f)), global0.a.x)), ~(firstLeadingBit(0i) ^ ~reverseBits(u_input.d)));
    let var_4 = !(!var_0.x);
    return StorageBuffer(-755f, _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_add_u32(~28725u, _wgslsmith_mult_u32(~(~var_3.b), var_3.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-150f)) + _wgslsmith_f_op_f32(-180f - var_3.d.x)), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1365f, -1906f)) * 1006f), -473f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

