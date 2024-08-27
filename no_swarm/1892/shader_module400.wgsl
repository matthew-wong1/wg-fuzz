struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, true, true, false, true, true, true, true, false, false, true, false, false, true, false, true, true, false, false, true, false, true, false, false, false, false, false, true);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    global0 = array<bool, 29>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_1.a);
    var var_2 = _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b.x, ~u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 80749u) | vec4<u32>(u_input.b.x, u_input.b.x, 47083u, 1u), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), ~(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 10150u, 5672u), vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(58237u, 4294967295u, 19920u)) >> (~vec3<u32>(38574u, 0u, 0u) % vec3<u32>(32u)))));
    let var_3 = var_0.a.x;
    return _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(round(arg_1.a.x)));
}

fn func_2() -> f32 {
    var var_0 = u_input.b.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-214f, 385f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(-371f, 1117f, 907f, 168f), Struct_1(vec3<f32>(1117f, -1017f, 782f)))) - _wgslsmith_f_op_f32(abs(-861f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(f32(-1f) * -512f)), true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-201f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * -2350f);
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-343f, var_0, var_0) + vec3<f32>(var_0, var_0, var_0))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-941f, 1323f, var_0) + vec3<f32>(-412f, -1186f, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-276f, -169f, 1084f)))))));
    let var_2 = Struct_1(vec3<f32>(368f, _wgslsmith_f_op_f32(max(var_0, var_1.a.x)), _wgslsmith_f_op_f32(min(-574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(f32(-1f) * -941f))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    var var_0 = func_1();
    var var_1 = select(vec3<bool>(!select(false, true, false), global0[_wgslsmith_index_u32(~u_input.b.x, 29u)], false), !(!select(!vec3<bool>(global0[_wgslsmith_index_u32(33815u, 29u)], false, true), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], true), global0[_wgslsmith_index_u32(u_input.b.x, 29u)])), select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 29u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(10896u, 29u)])), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(16836u, 29u)], true), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(64898u, 29u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true, true)), select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 29u)], true, global0[_wgslsmith_index_u32(44649u, 29u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 29u)], true, global0[_wgslsmith_index_u32(5157u, 29u)])), !vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 29u)], false), true)), select(!vec3<bool>(global0[_wgslsmith_index_u32(3528u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(299u, 29u)]), vec3<bool>(var_0.a.x >= var_0.a.x, all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 29u)], true)), u_input.b.x >= 4294967295u), vec3<bool>(select(true, global0[_wgslsmith_index_u32(u_input.b.x, 29u)], global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), global0[_wgslsmith_index_u32(u_input.b.x | 43165u, 29u)], false)), true));
    var var_2 = func_1();
    var var_3 = func_1();
    var var_4 = Struct_1(vec3<f32>(189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.a.x, 459f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))))));
    global0 = array<bool, 29>();
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 3288u, u_input.b.x) ^ vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), ~vec3<u32>(92560u, u_input.b.x, u_input.b.x)) >> (u_input.b.x % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_2.a.xz)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a.x, 1591f)))));
}

