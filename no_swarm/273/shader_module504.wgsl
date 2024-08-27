struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec3<i32> {
    return _wgslsmith_clamp_vec3_i32(max(arg_1.b.yww, ~vec3<i32>(-7774i, ~28772i, select(arg_1.b.x, arg_1.b.x, true))), ~(~arg_1.b.xxz), vec3<i32>(_wgslsmith_div_i32(arg_1.b.x, arg_1.b.x), abs(arg_1.b.x), reverseBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(16159i, 2316i), arg_1.b.wy))));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 778f, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(729f, 677f, arg_0.x, arg_0.x) + vec4<f32>(-209f, 550f, arg_0.x, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1382f, -858f, -473f, 461f), vec4<f32>(334f, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(-2803f, -1146f, 514f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 187f, arg_0.x, arg_0.x)) * vec4<f32>(arg_0.x, arg_0.x, -821f, -896f)), vec4<bool>(true, true, true, true)))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 428f, 396f, -903f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, arg_0.x, var_0.x) * vec4<f32>(240f, var_0.x, var_0.x, 227f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.x, var_0.x, 1452f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, var_0.x, arg_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, -762f))), false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_div_f32(-225f, 963f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(arg_0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, 415f, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_0.x, var_0.x, arg_0.x))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(2211f)), 933f, 235f);
    global0 = array<vec3<bool>, 25>();
    var var_2 = select(-1i, reverseBits(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, -4057i), vec3<i32>(2147483647i, -2715i, -49836i))) | 1i), true);
    return true;
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = -arg_0.x;
    var var_1 = select(!global0[_wgslsmith_index_u32(68419u, 25u)], vec3<bool>(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true)), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-350f, 1510f, -146f) - vec3<f32>(-1639f, 828f, -1181f))) || !all(vec4<bool>(false, true, true, false)), false), true);
    var var_2 = 0i;
    global0 = array<vec3<bool>, 25>();
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1000f, -1136f), _wgslsmith_div_f32(-525f, 816f), 2465f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1271f, _wgslsmith_f_op_f32(218f - 682f), _wgslsmith_f_op_f32(537f * -262f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1125f, -214f, -525f) - vec3<f32>(-1000f, 1728f, 835f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1169f, 1046f, 1253f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(755f, 1475f, 670f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(606f, 287f, 607f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 25u)])))));
    return firstTrailingBit(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(firstLeadingBit(~_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_sub_u32(4294967295u, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 45075u))), ~u_input.a.x, func_2(_wgslsmith_add_vec3_i32(vec3<i32>(-1530i, 1i, ~28827i), func_1(true, Struct_1(-565f, vec4<i32>(-58975i, 2147483647i, -2604i, -2038i), u_input.a.x, false, -1000f)))), u_input.a.x);
    let var_1 = Struct_2(firstTrailingBit(~var_0.x), -409f, vec3<bool>(true & !all(vec2<bool>(false, false)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(605f, -1000f)))))), Struct_1(_wgslsmith_f_op_f32(round(-1343f)), reverseBits(~max(vec4<i32>(-2147483647i, 0i, -25249i, 2147483647i), vec4<i32>(-10919i, 5151i, 0i, -2147483647i))), var_0.x, true, _wgslsmith_f_op_f32(f32(-1f) * -393f)));
    var_0 = vec4<u32>(var_0.x << (var_0.x % 32u), _wgslsmith_div_u32(min(~u_input.a.x, _wgslsmith_div_u32(var_0.x, var_0.x)), u_input.a.x), ~_wgslsmith_mod_u32(var_1.a, var_1.e.c) & 1u, _wgslsmith_sub_u32(countOneBits(51466u), 0u));
    let var_2 = u_input.a.x;
    var var_3 = Struct_2(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.e.e)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1011f + 684f), var_1.d))), select(vec3<bool>(all(!var_1.c.yx), !var_1.e.d || false, var_1.c.x), var_1.c, var_1.c), var_1.b, Struct_1(var_1.e.a, ~(-var_1.e.b), var_0.x, !(-var_1.e.b.x <= func_1(var_1.c.x, Struct_1(-1517f, var_1.e.b, 1u, false, var_1.d)).x), 1250f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_3.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_3.d)), var_1.b)), _wgslsmith_f_op_f32(var_3.b * _wgslsmith_f_op_f32(trunc(var_3.d)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1460f, var_3.b), vec2<f32>(var_1.e.a, -393f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1071f, var_3.b)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, var_3.b)), vec2<f32>(var_3.b, var_1.b), true))))));
}

