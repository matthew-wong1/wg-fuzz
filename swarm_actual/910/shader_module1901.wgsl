struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 63421u), vec2<u32>(4294967295u, 55538u), vec2<u32>(7814u, 23920u), vec2<u32>(35964u, 0u), vec2<u32>(0u, 73320u), vec2<u32>(18504u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(38506u, 19167u), vec2<u32>(0u, 81015u), vec2<u32>(33945u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(19122u, 3069u), vec2<u32>(2724u, 42794u), vec2<u32>(9354u, 0u), vec2<u32>(19513u, 10976u), vec2<u32>(42438u, 4294967295u), vec2<u32>(43468u, 11427u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> f32 {
    return _wgslsmith_div_f32(-1165f, _wgslsmith_f_op_f32(f32(-1f) * -859f));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: u32) -> vec2<bool> {
    var var_0 = arg_0.a.x;
    let var_1 = arg_2.x;
    let var_2 = _wgslsmith_mod_u32(arg_1.x, 33932u);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -940f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x)) + _wgslsmith_f_op_f32(-arg_0.a.x)));
    let var_3 = true;
    return select(vec2<bool>(!all(select(arg_2, vec4<bool>(true, true, false, false), false)), true), arg_2.yx, vec2<bool>(any(select(arg_2.yy, arg_2.yw, select(vec2<bool>(var_3, var_1), vec2<bool>(false, true), var_3))), true));
}

fn func_2(arg_0: bool) -> f32 {
    global0 = array<vec2<u32>, 18>();
    let var_0 = select(vec2<bool>(arg_0, false), !(!select(func_3(Struct_3(vec2<f32>(-216f, -361f), vec2<u32>(6519u, u_input.a)), vec3<u32>(u_input.c, 1u, u_input.a), vec4<bool>(true, true, true, arg_0), 51473u), vec2<bool>(true, true), false)), func_3(Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3555f, -264f)))), vec2<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.c, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)]), ~0u)), _wgslsmith_div_vec3_u32(vec3<u32>(~1u, _wgslsmith_clamp_u32(0u, 0u, u_input.a), 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(19512u, u_input.c, u_input.c), abs(vec3<u32>(u_input.a, u_input.c, u_input.a)))), select(!vec4<bool>(arg_0, arg_0, arg_0, arg_0), !(!vec4<bool>(false, arg_0, false, arg_0)), select(vec4<bool>(arg_0, true, arg_0, true), !vec4<bool>(arg_0, true, arg_0, arg_0), true)), 1u));
    var var_1 = Struct_1(u_input.e.x);
    let var_2 = Struct_2(Struct_1(u_input.e.x));
    var_1 = var_2.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1821f, 324f), _wgslsmith_f_op_f32(f32(-1f) * -153f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1411f * _wgslsmith_div_f32(852f, _wgslsmith_f_op_f32(-338f - -2020f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 18>();
    global0 = array<vec2<u32>, 18>();
    global0 = array<vec2<u32>, 18>();
    global0 = array<vec2<u32>, 18>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-998f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, true, false, Struct_3(vec2<f32>(1132f, -532f), vec2<u32>(0u, 1u))))))), -912f);
    global0 = array<vec2<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(1000f - var_0)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(110f, var_0, var_0), vec3<f32>(var_0, var_0, 363f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -925f) + vec3<f32>(var_0, 641f, var_0)), true)))), u_input.b.x, countOneBits(vec2<u32>(u_input.a ^ 4294967295u, ~4687u) | vec2<u32>(countOneBits(u_input.a), u_input.a)), 1u);
}

