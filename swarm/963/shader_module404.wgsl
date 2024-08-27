struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(1637f), Struct_2(571f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    global0 = array<Struct_2, 2>();
    let var_0 = 0u;
    global0 = array<Struct_2, 2>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -153f));
    var var_2 = Struct_1(abs(~_wgslsmith_div_u32(var_0, var_0) | ~(~23386u)), arg_0);
    return Struct_2(1114f);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1401f + _wgslsmith_div_f32(-410f, arg_0.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -490f)))));
    var var_1 = abs(abs(select(arg_2.x, arg_2.x, all(arg_3))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(round(func_2(!select(vec3<bool>(true, arg_3.x, false), vec3<bool>(arg_3.x, false, arg_3.x), true), -566f).a)));
    global0 = array<Struct_2, 2>();
    var var_3 = ~min(-vec2<i32>(u_input.b.x, ~u_input.b.x), -select(u_input.a.xz, vec2<i32>(arg_1, u_input.a.x), vec2<bool>(false, false)));
    return arg_2.x;
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> vec3<bool> {
    global0 = array<Struct_2, 2>();
    var var_0 = firstTrailingBit(43075u) | 4294967295u;
    var var_1 = _wgslsmith_f_op_f32(select(575f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-656f + _wgslsmith_f_op_f32(abs(-180f))) * -297f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1679f, 123f)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(1294f))), true))), true));
    var var_2 = false;
    var_1 = 1190f;
    return !select(select(arg_1, arg_1, false), arg_1, false);
}

fn func_1() -> Struct_2 {
    let var_0 = abs(-1i);
    var var_1 = ~vec2<u32>(1u, 1u);
    let var_2 = select(func_4(func_3(func_2(vec3<bool>(true, true, false), 1000f), 0i, firstLeadingBit(vec3<u32>(var_1.x, var_1.x, var_1.x)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))) > ~4294967295u, select(vec3<bool>(all(vec3<bool>(true, true, true)), false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, false, false))), select(true, any(vec2<bool>(true, false)), true))), vec3<bool>(true, u_input.a.x < (-2147483647i >> ((var_1.x ^ 0u) % 32u)), true), -643f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1516f)))));
    global0 = array<Struct_2, 2>();
    let var_3 = ~42940u;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-893f, _wgslsmith_f_op_f32(197f + -475f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f - -1000f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1042f))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    return arg_1.b.x;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -879f));
    global0 = array<Struct_2, 2>();
    let var_1 = vec2<i32>(~firstTrailingBit(_wgslsmith_dot_vec3_i32(arg_2, arg_2)), (select(~(-17867i), ~1i, true) | 4235i) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 33964u)), firstLeadingBit(~vec4<u32>(4294967295u, 21200u, 4294967295u, 18143u))) % 32u));
    global0 = array<Struct_2, 2>();
    let var_2 = global0[_wgslsmith_index_u32(1u >> (_wgslsmith_add_u32(func_3(func_1(), _wgslsmith_sub_i32(~u_input.a.x, var_1.x), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(69773u, 0u, 4531u), vec3<u32>(1u, 30210u, 1u)), min(vec3<u32>(119252u, 44190u, 32480u), vec3<u32>(51976u, 64667u, 20773u))), vec2<bool>(true, false)), _wgslsmith_sub_u32(abs(4294967295u), ~(~1u))) % 32u), 2u)];
    return func_2(vec3<bool>(all(!select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, arg_1, false), true)), any(!(!vec2<bool>(false, arg_0))), (all(vec3<bool>(arg_1, true, true)) | (u_input.a.x >= arg_2.x)) | all(func_4(arg_0, vec3<bool>(arg_0, arg_0, false)).xz)), _wgslsmith_f_op_f32(f32(-1f) * -1302f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-1618f);
    let var_1 = 1u;
    var var_2 = func_6(all(!vec4<bool>(true, false, true, any(vec2<bool>(true, true)))), !(!func_5(func_1(), Struct_1(var_1, vec3<bool>(true, true, true)))), _wgslsmith_sub_vec3_i32(u_input.a, u_input.a));
    var var_3 = false;
    var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-494f - _wgslsmith_div_f32(var_0.a, var_2.a)), var_2.a, _wgslsmith_f_op_f32(-var_0.a), 1f)), -(~_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mod_i32(83818i, -2147483647i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-157f)), func_1().a)));
}

