struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(1000f, 1397f, -270f), vec3<f32>(-281f, -260f, 114f), vec3<f32>(-157f, -1000f, 893f), vec3<f32>(-313f, 466f, 1046f), vec3<f32>(-688f, 1120f, 385f), vec3<f32>(-147f, 1973f, -842f), vec3<f32>(281f, 709f, 1065f), vec3<f32>(-453f, -377f, 1939f), vec3<f32>(350f, 1415f, 316f), vec3<f32>(202f, 192f, -1520f), vec3<f32>(-1805f, 1000f, 249f), vec3<f32>(141f, -1732f, -277f), vec3<f32>(-1000f, 1086f, 307f), vec3<f32>(1905f, -618f, -766f), vec3<f32>(-1027f, -1264f, -150f), vec3<f32>(-598f, -743f, 854f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> Struct_1 {
    global0 = all(!arg_0.xww);
    var var_0 = all(select(!(!(!vec4<bool>(arg_0.x, arg_0.x, false, false))), vec4<bool>(true, arg_0.x || true, !arg_0.x && false, true), arg_0.x | all(vec4<bool>(false, true, true, arg_0.x))));
    return Struct_1(u_input.b);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global1 = array<vec3<f32>, 16>();
    let var_0 = -(~(~(-select(vec4<i32>(-35151i, 2147483647i, 1i, 2147483647i), vec4<i32>(u_input.b, -1i, 1i, 34395i), true))));
    global0 = false;
    global1 = array<vec3<f32>, 16>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -1901f))));
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global1 = array<vec3<f32>, 16>();
    global1 = array<vec3<f32>, 16>();
    let var_0 = arg_0;
    var var_1 = ~(~firstTrailingBit(vec3<u32>(98563u, 0u, 42708u))) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(min(func_3(vec2<f32>(-1113f, 298f)), func_3(vec2<f32>(-662f, -894f))), countOneBits(1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 37216u), vec2<u32>(78321u, 0u)), 10972u), reverseBits(~(~vec3<u32>(4294967295u, 4294967295u, 32201u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(-118f)), 1118f));
    return -145f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(330f, 625f, true)), _wgslsmith_f_op_f32(2199f * 761f)))), -911f, _wgslsmith_f_op_f32(func_2(Struct_1(2147483647i), func_1(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), _wgslsmith_div_u32(1u, 7772u)))))));
    global0 = !all(vec4<bool>(all(vec2<bool>(false, false)) & true, true, true, true));
    global0 = !(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(1u, ~0u), _wgslsmith_mod_u32(firstTrailingBit(4294967295u), 2964u)) != _wgslsmith_mult_u32(1u, func_3(vec2<f32>(-127f, 587f))));
    let var_1 = vec4<u32>(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_u32(~(~1u), 0u, ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 78487u), vec4<u32>(13880u, 1u, 4294967295u, 31627u)))), _wgslsmith_clamp_u32(~1u, 4294967295u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 37935u, 56451u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 48701u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(56816u, 126860u, 66714u))))));
    global0 = all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), vec4<bool>(all(vec2<bool>(false, true)), all(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)), true), false), vec4<bool>(all(vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(var_1, var_1) < (13696u | var_1.x), true && (-5218i > u_input.b), true)));
    let var_2 = func_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, -2147483647i != u_input.a.x, var_0.x >= var_0.x), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, var_0.x != -1067f)), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(1u, ~(~9415u))));
    var var_3 = Struct_1(-(i32(-1i) * -(28698i ^ var_2.a)));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1064f), _wgslsmith_div_f32(-352f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(-var_0.xz)), -_wgslsmith_mod_i32(var_2.a, _wgslsmith_add_i32(~1i, 0i)), ~countOneBits(-(~vec4<i32>(u_input.b, -57927i, 36149i, var_2.a))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(744u, 72046u), 16u)] - _wgslsmith_div_vec3_f32(var_0, vec3<f32>(1418f, 1229f, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(179f, var_0.x, 1167f, -1000f) + vec4<f32>(var_0.x, var_0.x, -559f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -630f, 1411f, var_0.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-506f, var_0.x, var_0.x, 1093f)))))));
}

