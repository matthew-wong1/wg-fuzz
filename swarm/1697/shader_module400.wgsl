struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    global0 = array<vec3<i32>, 2>();
    let var_0 = Struct_1(_wgslsmith_div_u32(1u, abs(countOneBits(_wgslsmith_sub_u32(12879u, 1u)))), true);
    let var_1 = min(select(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(26439u, 54961u, var_0.a, var_0.a), abs(vec4<u32>(48360u, 4294967295u, 93355u, 0u)), vec4<u32>(var_0.a, 22137u, 80029u, 4294967295u)), countOneBits(~vec4<u32>(66808u, 1u, 76308u, 35440u)), vec4<bool>(!any(vec2<bool>(var_0.b, true)), true, false, 1i >= u_input.a.x)), vec4<u32>(55794u, ~(~var_0.a) >> (~countOneBits(var_0.a) % 32u), 10540u, abs(4294967295u)));
    let var_2 = -52093i;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(106f)), _wgslsmith_f_op_f32(f32(-1f) * -674f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-635f + 1158f), _wgslsmith_div_f32(-1479f, 125f), all(vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -588f) + vec2<f32>(-292f, -961f)), vec2<f32>(492f, -1370f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1313f, _wgslsmith_f_op_f32(-650f * -812f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2013f, -722f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-685f, 1176f)))));
    return vec2<bool>(!((var_3.x <= -357f) || all(select(vec4<bool>(var_0.b, true, var_0.b, true), vec4<bool>(var_0.b, var_0.b, var_0.b, true), true))), var_0.b);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    global0 = array<vec3<i32>, 2>();
    let var_1 = !(!(!func_3()));
    var var_2 = !any(select(vec4<bool>(arg_0 < arg_0, arg_1.b && arg_1.b, var_0.b, true), !vec4<bool>(true, false, true, var_1.x), true));
    var_2 = !(!(!arg_1.b)) | any(!vec4<bool>(true, true, !var_1.x, true));
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = ~(~max(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(20235u, 0u)), select(vec2<u32>(1u, 73328u), vec2<u32>(15808u, 35262u), vec2<bool>(true, false))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 19383u), vec2<u32>(1u, 4853u))));
    global0 = array<vec3<i32>, 2>();
    global0 = array<vec3<i32>, 2>();
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1000f, false)))), func_2(-1311f, func_2(_wgslsmith_f_op_f32(ceil(1181f)), func_2(_wgslsmith_f_op_f32(683f + 976f), Struct_1(arg_0.a, arg_0.b))))).b;
    global0 = array<vec3<i32>, 2>();
    return _wgslsmith_mod_u32(~(~0u), var_0.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_add_u32(14474u, 56059u), 1u, 0u), vec3<u32>(152477u, func_4(func_2(1780f, Struct_1(46594u, true))), select(0u, _wgslsmith_add_u32(arg_1, arg_1), true))), abs(_wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, arg_1, 48812u), vec3<u32>(4294967295u, 0u, arg_1))), firstTrailingBit(vec3<u32>(0u, arg_1, 1u) | vec3<u32>(arg_1, arg_1, 78435u)))));
    let var_1 = u_input.a.x;
    global0 = array<vec3<i32>, 2>();
    var var_2 = _wgslsmith_f_op_f32(-1f);
    var var_3 = _wgslsmith_div_f32(-337f, -1251f);
    return StorageBuffer(arg_1, -122f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1971f, -422f, -2070f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, -765f, -757f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(471f, -923f, 282f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(487f, -377f, -1452f) - vec3<f32>(-305f, 394f, -473f))) - vec3<f32>(_wgslsmith_f_op_f32(1284f - -980f), -1000f, 1772f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -603f) + -409f), -1346f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~select(~0u, abs(1u), all(vec4<bool>(false, false, true, true))), false);
    global0 = array<vec3<i32>, 2>();
    global0 = array<vec3<i32>, 2>();
    global0 = array<vec3<i32>, 2>();
    global0 = array<vec3<i32>, 2>();
    global0 = array<vec3<i32>, 2>();
    let x = u_input.a;
    s_output = func_1(vec3<i32>(-1i) * -vec3<i32>(~u_input.a.x, countOneBits(-23235i), 0i), var_0.a);
}

