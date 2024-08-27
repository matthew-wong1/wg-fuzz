struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_5;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> vec4<f32> {
    let var_0 = Struct_1(!vec2<bool>(false, any(arg_1)));
    global1 = Struct_5(2147483647i);
    let var_1 = Struct_4(var_0.a, Struct_1(arg_1.xy), select(arg_1, select(vec4<bool>(any(vec3<bool>(var_0.a.x, var_0.a.x, true)), arg_1.x, arg_1.x || false, true), select(vec4<bool>(var_0.a.x, var_0.a.x, false, true), select(vec4<bool>(arg_1.x, true, var_0.a.x, false), vec4<bool>(var_0.a.x, true, var_0.a.x, false), arg_1), vec4<bool>(false, false, true, arg_1.x)), all(select(vec4<bool>(var_0.a.x, arg_1.x, arg_1.x, true), arg_1, arg_1))), (select(false, var_0.a.x, arg_1.x) || (global0.a.x < global0.a.x)) & true));
    let var_2 = firstTrailingBit(~_wgslsmith_mod_u32(u_input.d.x, 1u));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(arg_0 + -311f), -137f, _wgslsmith_f_op_f32(select(-1150f, arg_0, true))))))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(615f - global0.a.x)) - global0.a))), global0.a, !(!select(select(vec4<bool>(var_0.a.x, false, var_0.a.x, true), arg_1, var_1.a.x), !arg_1, select(vec4<bool>(true, var_0.a.x, true, false), vec4<bool>(var_0.a.x, false, false, true), arg_1)))));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: f32) -> vec2<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.a, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-arg_2), arg_1.c)), vec4<bool>(any(vec3<bool>(arg_1.c.x, arg_1.c.x, arg_1.b.a.x)), arg_1.b.a.x, true, false))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-580f, global0.a.x, 162f, arg_2) * global0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(-697f, arg_1.c)))))));
    var var_1 = false;
    return u_input.c.yy;
}

fn func_1() -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(global0.a)));
    global1 = Struct_5(_wgslsmith_mult_i32(global1.a, u_input.c.x));
    var var_1 = vec3<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(select(1i, 65238i, false), 0i, global1.a, ~u_input.c.x), ~select(vec4<i32>(global1.a, 1i, -2147483647i, -45800i), vec4<i32>(global1.a, -2147483647i, -12251i, -38002i), true)) != min(global1.a, u_input.a.x << (u_input.d.x % 32u)), false);
    let var_2 = Struct_5(_wgslsmith_dot_vec2_i32((~u_input.c.yz | func_2(83302u, Struct_4(vec2<bool>(true, false), Struct_1(vec2<bool>(true, var_1.x)), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), global0.a.x)) | u_input.e.zy, ~_wgslsmith_div_vec2_i32(-vec2<i32>(-1i, 1i), reverseBits(vec2<i32>(-1i, u_input.e.x)))));
    var var_3 = vec2<bool>(var_1.x, var_1.x);
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) + _wgslsmith_f_op_f32(min(-619f, 1254f))), 164f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -638f), global0.a.x))));
    let var_0 = vec4<bool>(!(!all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))), true, any(select(vec2<bool>(all(vec3<bool>(false, true, true)), 618f > global0.a.x), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), true), ~global1.a >= (i32(-1i) * -26279i))), !(u_input.c.x > 19251i));
    var var_1 = ~countOneBits(u_input.d.x);
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1235f)), -414f, global0.a.x, _wgslsmith_f_op_f32(floor(global0.a.x)))))));
    var_1 = countOneBits(~0u);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)) + global0.a.x))));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, -2713f, var_3.x))) + _wgslsmith_f_op_f32(-global0.a.x)) - _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-122f + _wgslsmith_f_op_f32(step(1504f, var_2))))), global1.a, global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(f32(-1f) * -1682f), _wgslsmith_f_op_f32(-1384f + 1847f), global0.a.x) * _wgslsmith_f_op_vec4_f32(-global0.a)), -535f);
}

