struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    var var_0 = !any(!vec2<bool>(2147483647i >= arg_1.x, true));
    var_0 = true & all(select(select(vec4<bool>(arg_0, arg_0, arg_0, false), select(vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(false, false, false, true)), true), select(select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), true), select(vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(false, true, false, arg_0), false), vec4<bool>(true, true, false, arg_0)), true));
    var var_1 = arg_0;
    var var_2 = any(vec3<bool>(true != (650f >= _wgslsmith_f_op_f32(floor(1263f))), select(!(arg_1.x > u_input.b.x), arg_0 & true, all(vec3<bool>(arg_0, arg_0, false))), !any(select(vec4<bool>(true, false, true, arg_0), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, true, arg_0, false)))));
    let var_3 = Struct_2(!arg_0);
    return -361f;
}

fn func_2() -> Struct_1 {
    let var_0 = 36853u;
    global0 = array<vec2<i32>, 17>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f));
    var var_2 = Struct_2(any(vec2<bool>(true, false)));
    var var_3 = Struct_2(!all(vec2<bool>(!var_2.a, select(var_2.a, true, var_2.a))));
    return Struct_1(vec2<bool>(_wgslsmith_f_op_f32(725f - _wgslsmith_f_op_f32(sign(297f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) - _wgslsmith_f_op_f32(func_3(false, vec3<i32>(u_input.b.x, 21733i, 42487i)))), var_3.a), select(vec2<i32>(2147483647i ^ -u_input.b.x, 28884i), abs(u_input.b.zz), !(var_2.a | var_3.a) & true));
}

fn func_1(arg_0: u32, arg_1: i32) -> f32 {
    let var_0 = reverseBits(arg_0);
    let var_1 = Struct_1(vec2<bool>(false, true), max(u_input.b.yz, vec2<i32>(-u_input.b.x, arg_1)));
    var var_2 = func_2();
    var_2 = Struct_1(func_2().a, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), -_wgslsmith_mod_vec2_i32(var_1.b, vec2<i32>(60526i, arg_1))), select(_wgslsmith_clamp_vec2_i32(var_2.b, ~vec2<i32>(10352i, 17929i), var_1.b | global0[_wgslsmith_index_u32(arg_0, 17u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -1i) >> (u_input.c.zx % vec2<u32>(32u)), abs(u_input.b.zx)), true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(34202u | var_0, 65584u), 17u)]));
    var var_3 = Struct_2(var_1.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2272f))), -2215f)), 1f)) * _wgslsmith_div_f32(-660f, -1610f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    let var_0 = true;
    global0 = array<vec2<i32>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1u, ~(~u_input.b.x))) * 680f), abs(-vec3<i32>(u_input.b.x, 0i, 0i)) | vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b), u_input.b & u_input.b), _wgslsmith_div_i32(func_2().b.x, -2147483647i)), i32(-1i) * -1i, _wgslsmith_f_op_f32(-1f));
}

