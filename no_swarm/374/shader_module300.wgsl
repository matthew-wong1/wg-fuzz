struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = 4294967295u;
    var var_1 = vec2<f32>(-677f, _wgslsmith_f_op_f32(trunc(-1234f)));
    let var_2 = Struct_1(_wgslsmith_div_f32(808f, var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * -382f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(402f + arg_0) - _wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(721f, -1000f))), all(!select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x))))), firstTrailingBit(~u_input.b));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a, -798f)))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, -1000f))))));
    var var_3 = 1u;
    return vec3<u32>(select(_wgslsmith_clamp_u32(4294967295u, ~(~1u), _wgslsmith_sub_u32(~u_input.b, ~var_0)), ~arg_1.a, !all(vec3<bool>(false, true, true))), min(~arg_1.a, firstTrailingBit(arg_1.a)), _wgslsmith_sub_u32(60881u, firstTrailingBit(~(~arg_1.a))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 0u)) << (~func_2(arg_1.a, Struct_3(0u), arg_0) % vec3<u32>(32u)), vec3<u32>(~arg_0.a, arg_2.x, ~arg_2.x)), vec3<u32>(~u_input.b, firstLeadingBit(~arg_2.x), _wgslsmith_add_u32(4294967295u, ~arg_0.a & _wgslsmith_mult_u32(u_input.b, u_input.b))));
    var var_1 = 187f;
    var_1 = arg_1.b;
    return !((u_input.a >> (arg_2.x % 32u)) != 1i);
}

fn func_3(arg_0: f32, arg_1: bool) -> vec2<bool> {
    global0 = select(vec2<bool>(global0.x, arg_0 >= arg_0), vec2<bool>(select(select(any(vec3<bool>(true, global0.x, global0.x)), true, global0.x), _wgslsmith_f_op_f32(-arg_0) == 1f, true), -247f > _wgslsmith_f_op_f32(abs(arg_0))), vec2<bool>(true, (_wgslsmith_div_u32(29504u, u_input.b) >> (select(0u, u_input.b, arg_1) % 32u)) < _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(17958u, 4294967295u)), ~u_input.b)));
    var var_0 = ~_wgslsmith_add_u32(firstTrailingBit(u_input.b) | (u_input.b >> (u_input.b % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 38494u), ~vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(14702u, 4294967295u)));
    var var_1 = all(select(vec3<bool>(false, arg_1, false), !vec3<bool>(global0.x, true, true), false));
    var var_2 = ~u_input.b;
    let var_3 = Struct_2(arg_0, _wgslsmith_f_op_f32(-arg_0), firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(~2147483647i, u_input.a, 0i, u_input.a & -19944i), firstLeadingBit(vec4<i32>(u_input.a, 2147483647i, 2147483647i, -27022i)))));
    return select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), !arg_1), select(vec2<bool>(global0.x, true), select(vec2<bool>(global0.x, false), vec2<bool>(false, true), true), true), !select(vec2<bool>(false, arg_1), vec2<bool>(global0.x, arg_1), vec2<bool>(false, false))), !vec2<bool>(true, func_1(Struct_3(u_input.b), var_3, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 71746u), vec2<u32>(u_input.b, 26892u)))), !(!vec2<bool>(var_3.a <= var_3.b, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(!all(!select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, true, true, true), false)), !(!all(!vec4<bool>(false, false, global0.x, global0.x))));
    global0 = vec2<bool>(global0.x, false);
    global0 = !select(select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(false, true)), select(vec2<bool>(false, global0.x), !vec2<bool>(global0.x, true), global0.x), !vec2<bool>(global0.x, global0.x)), !(!select(vec2<bool>(true, global0.x), vec2<bool>(false, true), global0.x)), select(vec2<bool>(true, true), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1935f), func_1(Struct_3(0u), Struct_2(-2046f, -613f, vec4<i32>(u_input.a, 17288i, u_input.a, u_input.a)), vec2<u32>(4294967295u, u_input.b))), true));
    var var_0 = firstTrailingBit(firstLeadingBit(abs(abs(89919u))) & func_2(_wgslsmith_f_op_f32(f32(-1f) * -209f), Struct_3(_wgslsmith_sub_u32(u_input.b, 16510u)), Struct_3(func_2(-601f, Struct_3(u_input.b), Struct_3(34429u)).x)).x);
    var_0 = _wgslsmith_dot_vec4_u32(select(~vec4<u32>(_wgslsmith_mod_u32(1u, u_input.b), u_input.b, countOneBits(4294967295u), ~17345u), firstTrailingBit(reverseBits(~vec4<u32>(90640u, u_input.b, u_input.b, u_input.b))), vec4<bool>(!global0.x == select(false, true, true), any(!vec2<bool>(false, global0.x)), any(select(vec4<bool>(false, false, false, global0.x), vec4<bool>(false, false, true, false), true)), func_3(_wgslsmith_f_op_f32(ceil(-1207f)), true & global0.x).x)), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(42660u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, 48682u)))));
    var var_1 = Struct_3(firstLeadingBit(~(1u ^ u_input.b) & 0u));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(-1i, u_input.a, u_input.a), reverseBits(vec3<i32>(u_input.a, 61332i, u_input.a))), firstTrailingBit(abs(vec3<i32>(-1i, u_input.a, -26767i))))), ~(~countOneBits(vec2<i32>(-2147483647i, -2147483647i))), vec4<i32>(min(~u_input.a, -37360i), _wgslsmith_div_i32(240i, ~reverseBits(2979i)), u_input.a, abs(-u_input.a)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-226f, -616f, -1000f) + vec3<f32>(233f, -1813f, 1322f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2163f, 1394f, 1308f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -1288f, 605f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 532f, -408f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-454f, 292f, -295f) * vec3<f32>(197f, -689f, -833f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-146f, 424f, -836f) + vec3<f32>(-1030f, -1858f, 1031f))))), vec4<u32>(~(~2674u), ~abs(var_1.a) | u_input.b, select(38679u, ~_wgslsmith_mod_u32(1u, var_1.a), !(!global0.x)), u_input.b));
}

