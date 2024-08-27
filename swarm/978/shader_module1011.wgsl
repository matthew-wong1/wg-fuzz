struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 25>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global1.a.b.x, global1.a.b.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1323f, -724f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(729f, var_0.x, global1.a.b.x, -1000f)) + vec4<f32>(-441f, 507f, _wgslsmith_f_op_f32(973f - global1.a.b.x), _wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-427f, _wgslsmith_f_op_f32(-global1.a.b.x), 190f, -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1100f, global1.a.b.x) * vec4<f32>(151f, -709f, -2324f, 934f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.b.x, global1.a.b.x, 231f, global1.a.b.x), vec4<f32>(global1.a.b.x, global1.a.b.x, var_0.x, 1032f)), vec4<f32>(global1.a.b.x, -869f, 1474f, 220f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 2339f, var_0.x) * vec4<f32>(1048f, global1.a.b.x, 827f, 1610f)))));
    let var_2 = global1.a.b.yz;
    var var_3 = !all(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), all(vec2<bool>(false, false))), true));
    var var_4 = select(vec2<bool>(true, true), vec2<bool>(true & any(vec3<bool>(true, true, true)), (-2147483647i << (select(u_input.a, u_input.a, false) % 32u)) >= 1i), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_u32(~0u, _wgslsmith_sub_u32(global1.a.a.x, u_input.a));
    var var_0 = true;
    let var_1 = -815f;
    global2 = array<Struct_2, 25>();
    let var_2 = ~(~(~(~4294967295u)));
    let var_3 = func_1();
    global1 = Struct_2(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1256f, 129f))), -958f, global1.a.b.x), global1.a.b, !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), any(vec4<bool>(true, false, false, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_3.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))), global1.a.a, reverseBits(var_3.a) & min(~global1.a.a & ~var_3.a, var_3.a));
}

