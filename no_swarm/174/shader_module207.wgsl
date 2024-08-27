struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(1550f, -1068f, -203f), vec3<f32>(1192f, -1195f, 270f), vec3<f32>(128f, -520f, -849f), vec3<f32>(-118f, 894f, -1000f), vec3<f32>(-115f, -1526f, -1179f), vec3<f32>(120f, -573f, 1312f), vec3<f32>(566f, 850f, -1054f), vec3<f32>(-1000f, -276f, -163f), vec3<f32>(246f, -300f, 621f), vec3<f32>(-884f, -412f, 1371f), vec3<f32>(1455f, -707f, -853f), vec3<f32>(1656f, -606f, 111f), vec3<f32>(832f, -1262f, -1108f), vec3<f32>(-1000f, 496f, -2411f), vec3<f32>(-278f, 395f, -867f), vec3<f32>(-429f, 136f, -108f), vec3<f32>(-931f, 652f, -633f));

var<private> global1: Struct_2;

var<private> global2: Struct_2 = Struct_2(vec2<f32>(-1000f, 969f), Struct_1(vec2<f32>(387f, -1264f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = global1.b.a.x;
    let var_1 = max(87037u, ~reverseBits(select(~21909u, 1u, 217f >= global1.b.a.x)));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-64674i, _wgslsmith_clamp_i32(u_input.b.x << (1u % 32u), -26751i, -u_input.a.x)), u_input.b.x) ^ u_input.a.x;
    var var_3 = var_1;
    let var_4 = arg_0 == !all(vec4<bool>(!arg_0, all(vec3<bool>(false, true, arg_0)), global2.b.a.x <= 720f, any(vec4<bool>(true, false, arg_0, arg_0))));
    return vec4<u32>(~countOneBits(~select(43375u, var_1, false)), ~_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(firstLeadingBit(var_1), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1, var_1), vec3<u32>(0u, var_1, 20546u)))), ~1u, 1u);
}

fn func_2() -> vec3<i32> {
    var var_0 = reverseBits(~(vec4<u32>(1u, 1u, 1u, 1u) | func_3(true)));
    global2 = Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1.a))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1486f * global2.b.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(abs(208f))))))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b.a, vec2<f32>(global2.a.x, -784f)) * _wgslsmith_f_op_vec2_f32(global2.a * vec2<f32>(-145f, -1570f))))));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(313f + -409f)), -1356f)), global1.b);
    global0 = array<vec3<f32>, 17>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global2.a.x)), _wgslsmith_f_op_f32(-global2.b.a.x)), _wgslsmith_f_op_vec2_f32(-global1.b.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b.a))))));
    return u_input.b.wzx;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    var var_0 = u_input.b.ywx;
    global0 = array<vec3<f32>, 17>();
    var_0 = -(func_2() & vec3<i32>(firstTrailingBit(~var_0.x), 0i, -firstTrailingBit(var_0.x)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-133f))), global1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(601f, _wgslsmith_f_op_f32(func_1(global2.b, false, vec4<u32>(4294967295u, 0u, 60721u, 0u)))) + -2086f) + _wgslsmith_f_op_f32(min(global1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a.x, 374f)) * _wgslsmith_f_op_f32(-1004f + global2.a.x))))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(global1.b.a)), Struct_1(_wgslsmith_f_op_vec2_f32(global1.b.a - global2.b.a)));
    var var_2 = u_input.b;
    global2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(533f, -reverseBits(-2147483647i), ~4294967295u, -(u_input.b.x & (i32(-1i) * -38058i)) | firstTrailingBit(u_input.b.x));
}

