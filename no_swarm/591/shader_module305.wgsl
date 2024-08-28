struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 25>;

var<private> global1: bool = true;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    var var_0 = select(_wgslsmith_f_op_f32(f32(-1f) * -1311f) != _wgslsmith_f_op_f32(-arg_0.x), false, false);
    global1 = arg_0.x != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    let var_1 = arg_1;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1047f)), 372f)));
    var var_3 = ~(~34683u);
    return -1i;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_sub_vec4_u32(countOneBits(abs(~vec4<u32>(1u, 0u, 4294967295u, 84960u))), vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 16471u, 48942u), vec3<u32>(4173u, 0u, 45970u)), ~(~0u), 1u, ~1u)), vec2<bool>(any(vec2<bool>(true, true)) | any(vec2<bool>(true, true)), !(!any(vec2<bool>(true, false)))), _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(vec4<f32>(-325f, -172f, 1293f, 1000f), 0u), _wgslsmith_sub_i32(22170i, u_input.a)), global0[_wgslsmith_index_u32(~1u, 25u)]) == -14968i, u_input.a);
    let var_1 = Struct_4(_wgslsmith_mult_vec4_u32(var_0.a, ~abs(vec4<u32>(4294967295u, 23349u, 3166u, var_0.a.x))), vec2<bool>(var_0.c, true), var_0.c, reverseBits(~reverseBits(_wgslsmith_clamp_i32(1i, u_input.a, -17627i))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1002f, 561f), vec2<f32>(217f, -759f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-447f, -473f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-372f - 771f), -480f) + vec2<f32>(-1000f, -140f)), var_1.b)), ((vec2<i32>(-15072i, 1i) & global0[_wgslsmith_index_u32(~var_1.a.x, 25u)]) << (~vec2<u32>(var_1.a.x, var_0.a.x) % vec2<u32>(32u))) | -global0[_wgslsmith_index_u32(22325u, 25u)], true || var_1.b.x, 1131f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(min(-840f, var_2.d)), var_2.d, var_2.d), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1746f, -2483f, 1507f, var_2.a.x))), !select(vec4<bool>(var_2.c, false, false, true), vec4<bool>(false, var_2.c, false, false), vec4<bool>(var_2.c, var_1.c, false, true))))));
    global0 = array<vec2<i32>, 25>();
    return Struct_2(false, ~4294967295u, max(var_0.a, _wgslsmith_sub_vec4_u32(var_1.a, vec4<u32>(var_0.a.x, var_1.a.x, 9388u, 67796u)) | ~var_0.a));
}

fn func_1() -> u32 {
    let var_0 = -(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, -18276i, u_input.a, u_input.a) >> (vec4<u32>(124683u, 1u, 910u, 1u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(u_input.a, 0i), u_input.a, ~u_input.a, 18553i)) | _wgslsmith_add_i32(-2147483647i, u_input.a));
    var var_1 = func_2();
    global1 = all(select(select(select(vec4<bool>(var_1.a, var_1.a, true, true), !vec4<bool>(var_1.a, false, true, true), !var_1.a), !(!vec4<bool>(false, var_1.a, var_1.a, false)), !select(vec4<bool>(true, var_1.a, false, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), var_1.a)), vec4<bool>(false & var_1.a, var_1.a && var_1.a, var_1.a, true), all(vec2<bool>(var_1.a || var_1.a, true))));
    let var_2 = vec3<u32>(31801u, min(select(var_1.b, var_1.c.x, min(4294967295u, 43260u) <= firstLeadingBit(var_1.b)), var_1.b), var_1.b);
    var var_3 = vec4<bool>(!any(vec2<bool>(!var_1.a, !var_1.a)), all(vec3<bool>(func_2().a && true, func_2().a, var_1.a)), all(select(!vec3<bool>(true, var_1.a, false), select(vec3<bool>(true, var_1.a, var_1.a), select(vec3<bool>(true, var_1.a, true), vec3<bool>(var_1.a, true, var_1.a), vec3<bool>(var_1.a, false, false)), var_1.a), vec3<bool>(!var_1.a, false, true))), all(select(!select(vec2<bool>(true, true), vec2<bool>(var_1.a, var_1.a), true), vec2<bool>(true, var_1.a), vec2<bool>(var_1.a, var_1.a))));
    return 121307u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 90317u), 25u)] & _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 1i), global0[_wgslsmith_index_u32(53452u, 25u)]), (vec2<i32>(-2147483647i, u_input.a) ^ global0[_wgslsmith_index_u32(4294967295u, 25u)]) & _wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(1u, 25u)], vec2<i32>(u_input.a, 34485i))), 15204i, _wgslsmith_mult_i32(firstTrailingBit(0i & u_input.a), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 27100i, -37216i), vec3<i32>(u_input.a, -2147483647i, -5297i)))), 6777i, -u_input.a);
    var var_1 = ~func_1() & ~max(64377u, ~1u);
    global0 = array<vec2<i32>, 25>();
    global0 = array<vec2<i32>, 25>();
    let var_2 = Struct_4(abs(max(vec4<u32>(~6973u, _wgslsmith_dot_vec4_u32(vec4<u32>(32984u, 32172u, 70648u, 35704u), vec4<u32>(4294967295u, 0u, 14872u, 4499u)), 1u, 23085u), min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(59240u, 4294967295u, 0u, 40529u)))), vec2<bool>(any(vec2<bool>(any(vec4<bool>(true, false, false, true)), any(vec4<bool>(false, false, false, false)))), all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)))), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec4<bool>(true, true, false, true))), !select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), true))), var_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(280f)), 153f, -292f, 216f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(747f, -1000f, 1587f, 755f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1030f, -948f, -358f, 411f) - vec4<f32>(-1947f, 1513f, 894f, 1103f)))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - -672f), 1583f, all(vec3<bool>(false, false, true)) & true)), _wgslsmith_f_op_f32(select(1208f, -2224f, !var_2.b.x)), -1280f, _wgslsmith_f_op_f32(f32(-1f) * -1124f))));
    let x = u_input.a;
    s_output = StorageBuffer((~var_2.a.x ^ firstTrailingBit(_wgslsmith_mod_u32(1u, 22234u))) ^ 1u, ~countOneBits(vec4<u32>(var_2.a.x, var_2.a.x, var_2.a.x, 1u) & vec4<u32>(var_2.a.x, 0u, 4294967295u, var_2.a.x)) & vec4<u32>(~var_2.a.x, var_2.a.x, var_2.a.x, ~var_2.a.x & _wgslsmith_div_u32(var_2.a.x, var_2.a.x)), abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(0u, 0u >> (var_2.a.x % 32u)), var_2.a.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), var_3.x))));
}

