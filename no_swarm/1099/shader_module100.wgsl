struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: array<Struct_1, 2>;

var<private> global3: f32 = -1797f;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    let var_0 = global4.b;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f + global0.a.x)))), _wgslsmith_f_op_f32(select(-876f, 1810f, !(all(global1.zz) | global0.d))), 1638f, _wgslsmith_f_op_f32(exp2(global4.a.x)));
    let var_2 = global4.b;
    return !all(!vec4<bool>(any(vec2<bool>(global1.x, false)), global4.d, all(vec4<bool>(false, global1.x, global4.d, global4.d)), true));
}

fn func_2() -> vec2<f32> {
    let var_0 = global2[_wgslsmith_index_u32(~13537u, 2u)];
    global1 = !select(vec4<bool>(39385i >= ~global4.c.x, false, !global4.d, any(vec3<bool>(global0.d, global4.d, global4.d))), vec4<bool>(false, func_3(), var_0.d, true), global0.d == false);
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.x);
    global0 = Struct_1(global4.a, ~(1u >> (((u_input.c | global4.b) << (~20004u % 32u)) % 32u)), global4.c, true);
    var var_2 = var_0.b << (2882u % 32u);
    return vec2<f32>(-312f, _wgslsmith_f_op_f32(global4.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.a.x, 556f))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_div_f32(-2680f, _wgslsmith_f_op_f32(f32(-1f) * -378f)))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2()))));
    var var_1 = vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.x) + 1241f), _wgslsmith_div_f32(-405f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(global0.a.x - 1000f));
    var var_2 = global2[_wgslsmith_index_u32(~global0.b, 2u)];
    let var_3 = abs(vec3<i32>(1138i, -6447i, 0i));
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -827f)), -1000f, -643f))));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(1i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-779f, global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -734f)), _wgslsmith_div_f32(global4.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global4.a.x) + -504f))));
    let var_2 = vec2<u32>(u_input.b, 0u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a + global4.a) - vec2<f32>(var_1.x, global0.a.x)))));
    global1 = select(select(vec4<bool>(any(!vec4<bool>(global4.d, true, false, global1.x)), true, false, true), !select(vec4<bool>(false, global4.d, global4.d, global4.d), !vec4<bool>(global4.d, global0.d, false, global1.x), select(vec4<bool>(global0.d, false, false, global4.d), vec4<bool>(false, global0.d, global1.x, true), vec4<bool>(global4.d, false, false, global4.d))), vec4<bool>(all(select(vec4<bool>(global0.d, global1.x, global0.d, global0.d), vec4<bool>(global1.x, global0.d, global0.d, false), global4.d)), true, global4.d, all(select(vec3<bool>(true, global1.x, false), global1.yzw, global0.d)))), select(vec4<bool>(global1.x, ~var_2.x > ~70225u, false, all(global1.xxy)), !vec4<bool>(true, global4.d, all(global1.yzy), all(vec4<bool>(global4.d, global1.x, false, false))), global4.d && select(global0.d, global0.d, true)), select(vec4<bool>(true, false, true, global1.x), vec4<bool>(select(true, true, true), all(!vec4<bool>(true, false, global0.d, global4.d)), func_3(), select(global4.d, !global1.x, true)), !vec4<bool>(global0.d, true || global4.d, all(vec3<bool>(false, global4.d, false)), true)));
    global2 = array<Struct_1, 2>();
    let var_4 = global2[_wgslsmith_index_u32((((global4.b << (_wgslsmith_clamp_u32(1u, var_2.x, u_input.c) % 32u)) & var_2.x) >> (global4.b % 32u)) ^ ~(global4.b ^ (u_input.c | (var_2.x | 0u))), 2u)];
    var var_5 = -(~vec2<i32>(-var_0, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)), global0.c.x >> (~(global4.b & min(15770u, 4294967295u)) % 32u), -223f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) - vec4<f32>(var_3.x, -523f, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))));
}

