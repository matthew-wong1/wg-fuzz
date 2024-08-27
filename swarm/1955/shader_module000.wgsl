struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: bool = true;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> bool {
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~(~(vec3<u32>(8611u, u_input.d, 64487u) ^ ~u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(630f)) + -1000f)));
    let var_1 = func_2();
    var var_2 = var_0.a.x;
    let var_3 = Struct_1(~u_input.c | vec3<u32>(u_input.e.x, ~var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) - _wgslsmith_f_op_f32(round(136f)))), -1000f)));
    let var_4 = vec4<i32>(max(2147483647i, -u_input.b.x), max(firstTrailingBit(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, -138i, -2147483647i)))), 1i), u_input.b.x, _wgslsmith_sub_i32(-2147483647i | -u_input.b.x, 1i));
    return var_3;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = func_1();
    var var_1 = func_1();
    let var_2 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - arg_2.b))));
    global1 = any(select(select(vec3<bool>(true, false, func_2()), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), vec3<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true)), false, _wgslsmith_f_op_f32(1276f - var_0.b) <= -510f), !any(vec2<bool>(true, true))));
    var_1 = Struct_1(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f), _wgslsmith_f_op_f32(f32(-1f) * -540f)) * -194f));
    return u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~max(_wgslsmith_sub_vec2_u32(u_input.e, _wgslsmith_mod_vec2_u32(vec2<u32>(3082u, 0u), vec2<u32>(53531u, u_input.e.x))), abs(vec2<u32>(15518u, u_input.c.x)) ^ select(u_input.c.xx, u_input.c.zx, true)));
    global0 = u_input.b.x;
    var var_1 = func_1();
    global1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b * -462f), var_1.b))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1337f, -554f) + vec2<f32>(189f, -812f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1637f, 314f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1112f, -1673f) + vec2<f32>(-748f, -535f)), true)))))));
    global0 = 2147483647i;
    global1 = all(vec3<bool>(true, true, 1u != abs(func_3(u_input.b.x, vec3<i32>(2147483647i, u_input.b.x, 1i), Struct_1(u_input.c, var_1.b)))));
    var var_3 = Struct_1(vec3<u32>(var_1.a.x, _wgslsmith_mod_u32(64277u, var_0.x), _wgslsmith_mult_u32(4904u, ~func_1().a.x)), -772f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

