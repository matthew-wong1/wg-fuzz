struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = arg_0;
    return !(!(!(!(!vec4<bool>(var_0.a, arg_2, true, arg_2)))));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = !select(vec3<bool>(true, false, false), vec3<bool>(select(true, u_input.a.x < 10555u, true), !any(vec3<bool>(false, false, true)), true), 4294967295u < _wgslsmith_mult_u32(~0u, 103038u ^ u_input.a.x));
    let var_1 = Struct_1(vec4<bool>(true, true, !var_0.x, var_0.x), arg_0);
    let var_2 = 5878u;
    var var_3 = Struct_3(Struct_2(all(var_1.a.yzy)), Struct_1(!vec4<bool>(all(var_1.a.xy), any(vec3<bool>(true, var_0.x, false)), var_0.x || false, !var_0.x), _wgslsmith_add_i32(var_1.b, max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, var_1.b, u_input.c.x), vec3<i32>(-162i, 35594i, 10322i)), arg_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1662f, -1000f, 1136f, 427f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(302f, -885f, -507f, 1280f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(283f, -884f, -449f, 1000f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(483f, -489f, -2088f, 347f)))))), Struct_2(var_1.a.x));
    var var_4 = Struct_3(Struct_2(true), Struct_1(var_1.a, _wgslsmith_add_i32(min(u_input.c.x, 0i), 54876i | u_input.b) ^ ~firstLeadingBit(-2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, var_3.c.x, var_3.c.x, var_3.c.x))))), var_3.d);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_4.c.x)), -720f)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> StorageBuffer {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-621f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(-1i)), _wgslsmith_f_op_f32(min(1985f, 197f)), true)))) * -413f), 1i);
    var var_1 = Struct_3(Struct_2(false), Struct_1(select(vec4<bool>(arg_0.x, select(arg_0.x, arg_0.x, false), !arg_0.x, arg_0.x), select(arg_0, select(arg_0, arg_0, arg_0.x), arg_0), !(!vec4<bool>(true, true, true, arg_0.x))), (i32(-1i) * -32780i) ^ ~(var_0.b | -41198i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1911f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-593f * var_0.a) * 206f), _wgslsmith_f_op_f32(var_0.a + 830f)) - vec4<f32>(_wgslsmith_f_op_f32(980f + -908f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a + -663f))), 557f)), Struct_2(~(12950u >> (u_input.a.x % 32u)) == 42819u));
    var_1 = Struct_3(var_1.a, Struct_1(vec4<bool>(var_1.a.a != true, all(arg_0), any(var_1.b.a.zy), true), var_1.b.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x - 684f), _wgslsmith_f_op_f32(f32(-1f) * -589f), 622f, var_1.c.x))), var_1.a);
    var var_2 = Struct_3(var_1.a, var_1.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(ceil(1651f)), _wgslsmith_f_op_f32(var_1.c.x - var_1.c.x)), var_1.c)), var_1.c), var_1.a);
    let var_3 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-var_2.c.x));
    return StorageBuffer(-min(vec2<i32>(_wgslsmith_sub_i32(-56987i, 0i), var_2.b.b), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.b, var_1.b.b), u_input.c.xz), 2147483647i)), u_input.a.ywz, var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_1.c.yy, _wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, -1147f), vec2<f32>(-1061f, -1000f))))))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(!func_1(Struct_2(select(true, true, true)), u_input.c.x & _wgslsmith_add_i32(u_input.b, u_input.c.x), false, vec3<f32>(685f, _wgslsmith_f_op_f32(sign(536f)), _wgslsmith_f_op_f32(f32(-1f) * -976f))), u_input.a.x);
}

