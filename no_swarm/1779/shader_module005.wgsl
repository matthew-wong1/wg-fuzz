struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21> = array<vec2<u32>, 21>(vec2<u32>(1u, 36859u), vec2<u32>(13827u, 0u), vec2<u32>(6688u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 35565u), vec2<u32>(4294967295u, 5359u), vec2<u32>(4294967295u, 1u), vec2<u32>(36272u, 1u), vec2<u32>(19434u, 81478u), vec2<u32>(0u, 1u), vec2<u32>(1u, 32968u), vec2<u32>(4441u, 39881u), vec2<u32>(1760u, 41774u), vec2<u32>(21607u, 36374u), vec2<u32>(1u, 9366u), vec2<u32>(17220u, 124977u), vec2<u32>(0u, 0u), vec2<u32>(12192u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(7969u, 72497u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    let var_0 = Struct_1(arg_0.b.yxw, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)), arg_0.b), arg_0.b, select(!(!vec4<bool>(arg_3, arg_3, arg_3, false)), !vec4<bool>(arg_3, arg_3, arg_3, false), select(select(vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, true, false, arg_3), vec4<bool>(arg_3, arg_3, false, false)), select(vec4<bool>(arg_3, false, arg_3, arg_3), vec4<bool>(true, true, arg_3, arg_3), true), !vec4<bool>(false, arg_3, arg_3, false))))), u_input.b);
    global0 = array<vec2<u32>, 21>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), var_0.a.x, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.a.x)) * _wgslsmith_f_op_f32(-arg_0.b.x)) * var_0.a.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1148f, arg_0.a.x, var_0.a.x, 2213f), var_0.b))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), _wgslsmith_f_op_f32(arg_0.a.x - var_0.a.x), _wgslsmith_f_op_f32(trunc(450f)), -428f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(var_0.a.x, var_1.x))), -866f, 841f, -1211f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), -882f, 1930f, _wgslsmith_f_op_f32(438f - var_0.a.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) - arg_0.b)), !((arg_0.c >= u_input.b) | arg_3))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - -2187f)) + 197f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-758f * _wgslsmith_f_op_f32(max(var_0.b.x, var_1.x))))), var_1.x), _wgslsmith_f_op_vec4_f32(ceil(arg_0.b)), 10649u);
    return _wgslsmith_f_op_f32(-755f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, 173f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1114f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(125f, -582f, -996f), vec4<f32>(-520f, 1000f, -1000f, 926f), 4294967295u), vec2<u32>(u_input.b, 0u), vec4<i32>(2147483647i, 47583i, -21886i, -55581i), true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-900f + 685f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1134f, -781f, -2647f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-259f, 242f, -1000f) - vec3<f32>(529f, -993f, 1000f))), false))));
    let var_1 = abs(select(firstTrailingBit(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(1i, -1i, 1i, 15149i)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 28544i, -22668i, 51169i), vec4<i32>(1401i, 1i, -14756i, -36340i)))), -vec4<i32>(_wgslsmith_sub_i32(20656i, 1i), ~6268i, 29116i, ~2147483647i), true));
    var var_2 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -203f, var_0.x) - vec3<f32>(var_0.x, -468f, 721f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1250f, var_0.x, 1914f), vec3<f32>(var_0.x, var_0.x, -842f), false)), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-835f, var_0.x, -1504f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), -752f, _wgslsmith_f_op_f32(var_0.x - -128f), -287f)))), u_input.a.x & ~abs(_wgslsmith_div_u32(4294967295u, 1u)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<u32>) -> bool {
    global0 = array<vec2<u32>, 21>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1618f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-573f * arg_1.b.x)));
    let var_1 = all(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), false))));
    var var_2 = func_2();
    let var_3 = !vec3<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(false, var_1, true), var_1)), true, (_wgslsmith_dot_vec2_u32(arg_3.zw, vec2<u32>(0u, 4294967295u)) << (min(9922u, arg_1.c) % 32u)) == (36938u << (_wgslsmith_div_u32(3949u, arg_1.c) % 32u)));
    return !(false | var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!vec2<bool>(select(func_1(-3962i, Struct_1(vec3<f32>(453f, -370f, 449f), vec4<f32>(115f, -1006f, -1698f, -871f), 1u), vec4<u32>(u_input.a.x, 2230u, 113574u, u_input.c), vec4<u32>(6019u, 0u, 4294967295u, u_input.a.x)), true, true), true));
    var var_1 = select(countOneBits(vec4<i32>(abs(1i), max(0i, 33374i), 55162i, ~1i)), abs(~(~(~vec4<i32>(-10906i, -2147483647i, -2147483647i, 17241i)))), vec4<bool>(true, (~4294967295u < abs(u_input.a.x)) | !var_0, all(!vec2<bool>(true, var_0)), !(true & all(vec3<bool>(var_0, true, true)))));
    let var_2 = ~58285u;
    let var_3 = !(!(!vec4<bool>(!var_0, var_0, var_0, !var_0)));
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(-36707i, 0u, var_2, ~(-_wgslsmith_mult_i32(reverseBits(-2147483647i), ~var_1.x)));
}

