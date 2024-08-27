struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(-1i, 30202i, -18096i, -19178i), vec4<i32>(48837i, 355i, i32(-2147483648), 1i), vec4<i32>(1251i, 0i, 868i, 8290i), vec4<i32>(-57007i, 0i, i32(-2147483648), 2147483647i), vec4<i32>(-31040i, -1i, -22769i, i32(-2147483648)), vec4<i32>(0i, 0i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -49127i, 2147483647i, -1i), vec4<i32>(-16585i, 2147483647i, -38370i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, 3491i, -30711i), vec4<i32>(0i, i32(-2147483648), -1i, -90598i), vec4<i32>(-1i, 0i, -9026i, i32(-2147483648)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = array<vec4<i32>, 12>();
    var var_0 = u_input.b.x;
    global0 = array<vec4<i32>, 12>();
    global0 = array<vec4<i32>, 12>();
    let var_1 = 357f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1023f)), -1787f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1)))), _wgslsmith_f_op_f32(min(-2612f, _wgslsmith_f_op_f32(-var_1)))) < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-479f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 * var_1), var_1)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<vec4<i32>, 12>();
    var var_0 = select(select(arg_0.b, arg_0.b, arg_0.b.x), !vec2<bool>(select(false, true, true), true), !select(arg_0.b, select(!arg_0.b, !arg_1.b, vec2<bool>(false, arg_0.b.x)), vec2<bool>(true, true)));
    let var_1 = select(_wgslsmith_clamp_vec3_i32(u_input.a.ywz, u_input.a.xwy, -u_input.a.ywz), ~(-u_input.a.xyx), true);
    let var_2 = arg_0;
    return arg_0.b;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> StorageBuffer {
    var var_0 = !func_3(Struct_1(true, select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(true, false)), arg_0), arg_0), Struct_1(false, vec2<bool>(true, true), func_1(Struct_1(arg_0, vec2<bool>(false, true), arg_0))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x))));
    var var_2 = true;
    global0 = array<vec4<i32>, 12>();
    var_0 = !select(!vec2<bool>(!arg_0, true), select(vec2<bool>(any(vec3<bool>(var_0.x, false, true)), !var_0.x), vec2<bool>(true, true), true), !vec2<bool>(any(vec3<bool>(true, var_0.x, true)), true));
    return StorageBuffer(u_input.a.xyy, ((i32(-1i) * -2147483647i) >> (~u_input.b.x % 32u)) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 29907u)), vec3<u32>(u_input.b.x, u_input.b.x, 0u)), 0u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(func_1(Struct_1(any(vec3<bool>(false, false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), !any(vec2<bool>(true, true)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-212f - _wgslsmith_f_op_f32(ceil(1000f))))), 1452f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(862f - 468f), _wgslsmith_f_op_f32(-1000f * 157f))))));
}

