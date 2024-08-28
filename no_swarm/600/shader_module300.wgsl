struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> f32 {
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-527f + arg_1.a.x)))), _wgslsmith_f_op_f32(floor(arg_0.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> StorageBuffer {
    global0 = array<Struct_1, 14>();
    var var_0 = Struct_2(!arg_2, arg_1.b);
    var_0 = arg_1;
    var var_1 = true;
    let var_2 = ~(-(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, -1i, -2147483647i), vec3<i32>(arg_0.b.x, -52327i, arg_0.b.x)), 2147483647i, ~arg_0.b.x, firstLeadingBit(-37148i))));
    return StorageBuffer(4294967295u, vec3<u32>(u_input.d.x, _wgslsmith_mod_u32(~firstLeadingBit(u_input.a.x), ~abs(u_input.a.x)), u_input.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0.a.x)), -1445f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, 722f, var_0.b.x, -1000f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_1, Struct_1(vec2<f32>(1008f, 1000f), var_2, 15455u, true, arg_0.c), false)), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(120f + 556f), var_0.b.x)), !select(select(vec4<bool>(true, arg_1.a, true, arg_1.a), vec4<bool>(false, false, arg_0.d, arg_0.d), vec4<bool>(true, var_0.a, var_0.a, arg_1.a)), !vec4<bool>(arg_1.a, false, false, arg_1.a), !vec4<bool>(arg_1.a, true, false, arg_0.d)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-278f * arg_0.a.x), arg_1.b.x, _wgslsmith_f_op_f32(min(arg_0.a.x, arg_1.b.x))), _wgslsmith_f_op_vec3_f32(var_0.b + arg_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(any(vec3<bool>(true, true, true)), vec3<f32>(587f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1072f)));
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.b.x, -111f, var_0.a)))) - var_0.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -1171f)), _wgslsmith_f_op_f32(779f + -1091f), -933f);
    global0 = array<Struct_1, 14>();
    var_1 = _wgslsmith_f_op_vec3_f32(-var_0.b);
    let x = u_input.a;
    s_output = func_1(global0[_wgslsmith_index_u32(1u, 14u)], Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(var_1.x, -1276f), var_1.x, _wgslsmith_f_op_f32(1000f + var_1.x))))), !(!(!var_0.a)));
}

