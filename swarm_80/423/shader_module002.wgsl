struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-1102f, -223f), 2204i, false, i32(-2147483648), vec4<u32>(33079u, 1u, 73295u, 9959u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<i32>) -> i32 {
    var var_0 = firstTrailingBit(arg_2);
    let var_1 = global0.a.x;
    var var_2 = ~(~u_input.c.x);
    return 3221i;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_3;
    let var_0 = -662f;
    var var_1 = arg_3;
    let var_2 = Struct_2(arg_3);
    let var_3 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(arg_3.e.x, global0.e.x), _wgslsmith_clamp_u32(1u, 567u, global0.e.x), 1u) | ~vec3<u32>(43372u, arg_3.e.x, global0.e.x), ~vec3<u32>(var_2.a.e.x, _wgslsmith_add_u32(33788u, 40231u), 22422u | global0.e.x));
    return var_2.a;
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(global0.e.x, global0.e.x), ~arg_0.e.yy);
    let var_1 = select(select(vec4<bool>(func_2(Struct_2(arg_0), u_input.d, arg_0.b < arg_0.d, arg_0).c, all(select(vec2<bool>(arg_0.c, global0.c), vec2<bool>(arg_0.c, global0.c), arg_0.c)), true, all(select(vec2<bool>(false, false), vec2<bool>(global0.c, global0.c), vec2<bool>(false, true)))), vec4<bool>(global0.c, any(select(vec2<bool>(false, false), vec2<bool>(arg_0.c, true), true)), all(vec4<bool>(arg_0.c, arg_0.c, global0.c, false)) | true, arg_0.c), any(select(vec2<bool>(true, arg_0.c), vec2<bool>(false, false), vec2<bool>(global0.c, false))) && global0.c), !vec4<bool>(true, min(global0.e.x, 10u) < 1u, !global0.c || true, all(vec4<bool>(false, true, global0.c, arg_0.c))), !vec4<bool>(arg_0.c & (global0.d != global0.b), ~arg_0.e.x == 0u, arg_0.c, false));
    let var_2 = u_input.d;
    var_0 = ~(select(arg_0.e.yw, _wgslsmith_div_vec2_u32(global0.e.yz, firstLeadingBit(vec2<u32>(4294967295u, 31633u))), !global0.c) >> (global0.e.ww % vec2<u32>(32u)));
    var var_3 = any(select(var_1.zw, select(var_1.yz, var_1.wz, !(2321u > var_0.x)), select(select(!var_1.x, arg_0.c | arg_0.c, true), global0.c, false)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_2(Struct_2(Struct_1(global0.a, func_1(vec4<bool>(global0.c, false, true, global0.c), Struct_1(vec2<f32>(global0.a.x, global0.a.x), -1075i, global0.c, 1i, vec4<u32>(0u, 64984u, 55720u, global0.e.x)), vec4<i32>(1i, u_input.d, 1i, 571i)), select(global0.c, true, global0.c), -25972i, vec4<u32>(u_input.c.x, 18743u, global0.e.x, 1u))), ~select(22744i, u_input.d, true), global0.c, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-754f, 2443f)), ~(-37761i), !(!global0.c), 14315i, max(max(u_input.a, vec4<u32>(u_input.a.x, u_input.c.x, 36478u, 54102u)), global0.e))));
    let var_1 = false;
    let var_2 = vec3<bool>(false, select(func_3(var_0.a), func_2(Struct_2(Struct_1(vec2<f32>(var_0.a.a.x, 854f), 25807i, false, global0.b, global0.e)), -1i, 23792u > var_0.a.e.x, var_0.a).c & true, func_2(Struct_2(func_2(Struct_2(var_0.a), global0.d, var_0.a.c, Struct_1(global0.a, var_0.a.b, var_0.a.c, var_0.a.d, global0.e))), -2147483647i, (var_0.a.e.x | 18444u) > var_0.a.e.x, var_0.a).c), any(!(!vec2<bool>(global0.c, var_1))));
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(_wgslsmith_div_u32(0u, 1u), 20757u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 9353u), u_input.a.zx), any(!var_2)), var_0.a.e.wy), _wgslsmith_sub_u32(~(~(global0.e.x >> (2323u % 32u))), _wgslsmith_sub_u32(u_input.a.x, 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

