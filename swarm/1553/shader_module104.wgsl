struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(-143f), Struct_3(543f), Struct_3(855f), Struct_3(1529f), Struct_3(-217f), Struct_3(261f), Struct_3(-1000f), Struct_3(1370f), Struct_3(-193f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<f32> {
    global1 = array<Struct_3, 9>();
    let var_0 = arg_1.a.yyz;
    let var_1 = u_input.e;
    var var_2 = !vec2<bool>(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)), -170f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1261f))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    return _wgslsmith_f_op_vec4_f32(round(arg_1.a));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> u32 {
    let var_0 = !all(global0[_wgslsmith_index_u32(27112u, 9u)]) | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) >= arg_0.a);
    let var_1 = 0u;
    global1 = array<Struct_3, 9>();
    global0 = array<vec2<bool>, 9>();
    global1 = array<Struct_3, 9>();
    return ~var_1;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, 1945i, 1i), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), Struct_1(vec4<f32>(281f, 101f, 195f, -493f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(266f, -750f, 199f, -1026f) * vec4<f32>(-449f, -307f, 2275f, 1000f))))));
    let var_1 = !(!(!vec4<bool>(any(global0[_wgslsmith_index_u32(61917u, 9u)]), any(vec2<bool>(false, false)), any(vec3<bool>(true, true, false)), true)));
    global0 = array<vec2<bool>, 9>();
    return StorageBuffer(~_wgslsmith_sub_u32(~104290u, u_input.a.x) & (func_3(Struct_3(-1000f), _wgslsmith_f_op_f32(-var_0.a.x)) >> (u_input.b.x % 32u)), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(1069f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(492f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1128f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(2236f)), -814f, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1000f))))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, 651f, false)) + _wgslsmith_f_op_f32(var_0.x + -134f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, 896f))), 694f))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f), -112f));
    let x = u_input.a;
    s_output = func_1();
}

