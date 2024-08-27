struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    global0 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(arg_2 - arg_2))));
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 6u)];
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2080f));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_0 = ~(~(~_wgslsmith_add_u32(arg_0 | 0u, 4294967295u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-620f, -540f, arg_1.x, 527f))), vec4<f32>(arg_1.x, -459f, 1355f, arg_1.x)))), vec4<f32>(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + 826f)), -342f, _wgslsmith_f_op_f32(1485f - _wgslsmith_f_op_f32(arg_1.x * arg_1.x)))))));
    global0 = array<Struct_1, 6>();
    return vec2<bool>(arg_2.c, !select(any(select(vec3<bool>(arg_2.c, arg_2.c, false), vec3<bool>(arg_2.c, false, arg_2.c), arg_2.c)), (1u > arg_0) || !arg_2.c, true));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(-977f, -619f), _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(arg_1.x, 0i, u_input.a, arg_1.x), vec4<i32>(u_input.a, arg_1.x, -2569i, 11046i)), _wgslsmith_f_op_f32(1177f * -210f), Struct_1(-1172f, arg_1.x, false))) - _wgslsmith_f_op_f32(f32(-1f) * -151f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1209f - -1065f) * 2269f))) - _wgslsmith_f_op_f32(f32(-1f) * -1015f));
    var var_1 = 1u;
    let var_2 = max(select(vec2<u32>(~u_input.c, u_input.c & u_input.b), _wgslsmith_mod_vec2_u32(min(vec2<u32>(6758u, 49430u), arg_0.wx), abs(arg_0.ww)), !func_3(u_input.b, vec3<f32>(var_0, -381f, var_0), global0[_wgslsmith_index_u32(1u, 6u)])) >> (arg_0.yx % vec2<u32>(32u)), firstLeadingBit(arg_0.wz));
    global0 = array<Struct_1, 6>();
    let var_3 = !vec3<bool>(false, all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))) & (_wgslsmith_dot_vec3_i32(u_input.d.zyw, vec3<i32>(arg_1.x, u_input.a, 5249i)) < _wgslsmith_mod_i32(u_input.d.x, -57331i)), (firstTrailingBit(u_input.d.x) & (1i >> (u_input.c % 32u))) >= abs(0i));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) * vec2<f32>(660f, -1146f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 157f) - vec2<f32>(var_0, 3305f))))) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), -1000f)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))))), 628f));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> bool {
    global0 = array<Struct_1, 6>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_0.x))))), _wgslsmith_f_op_f32(-353f * arg_2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(2088u, 19624u, 51671u, 68294u), vec2<i32>(arg_1.b, 8969i))).x)), arg_0.x)))), _wgslsmith_f_op_f32(-arg_1.a));
    let var_1 = select(vec3<bool>(!any(!vec2<bool>(arg_3, arg_1.c)), arg_1.c, arg_3), vec3<bool>(((arg_1.c && arg_3) && (arg_1.c | arg_1.c)) != (u_input.a <= _wgslsmith_add_i32(arg_1.b, u_input.a)), arg_1.c, arg_1.c), select(!(!select(vec3<bool>(true, true, arg_3), vec3<bool>(arg_1.c, arg_1.c, arg_3), arg_3)), vec3<bool>(false, any(!vec4<bool>(arg_3, arg_3, false, false)), all(!vec2<bool>(false, arg_3))), vec3<bool>(!func_3(48112u, vec3<f32>(arg_2.x, 759f, var_0.x), global0[_wgslsmith_index_u32(48937u, 6u)]).x, any(vec3<bool>(false, arg_1.c, arg_1.c)), !any(vec4<bool>(false, arg_1.c, arg_1.c, false)))));
    var var_2 = _wgslsmith_f_op_f32(-var_0.x);
    var_2 = _wgslsmith_f_op_vec2_f32(func_1(reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 63027u, u_input.c, u_input.b), ~vec4<u32>(u_input.c, 9764u, u_input.c, 13978u))), ~abs(vec2<i32>(arg_1.b, u_input.d.x ^ -64363i)))).x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(func_4(_wgslsmith_f_op_vec2_f32(func_1(vec4<u32>(0u, 1u, u_input.c, 2164u), vec2<i32>(10150i, u_input.d.x))), Struct_1(1076f, u_input.a, true), _wgslsmith_div_vec3_f32(vec3<f32>(1824f, 1000f, 908f), vec3<f32>(1369f, 166f, 1330f)), any(vec3<bool>(true, false, true))) && any(vec2<bool>(true, true)), all(vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(14638u > u_input.b, !select(false, true, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-110f, -2370f, -1297f) * vec3<f32>(-1779f, -1493f, 283f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(404f, -1450f, -876f))), !all(select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1732f, -146f, -228f) + vec3<f32>(-897f, 1534f, -1113f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(182f, 120f, true)), _wgslsmith_f_op_f32(1424f + -1515f), _wgslsmith_f_op_f32(f32(-1f) * -1947f)), vec3<f32>(1f, 1f, 1f)))));
    let var_2 = u_input.d.xzz;
    var var_3 = countOneBits(u_input.d);
    var_3 = ~abs(select(_wgslsmith_add_vec4_i32(vec4<i32>(-31372i, -1665i, -54626i, -2147483647i), ~vec4<i32>(1i, 2147483647i, 18660i, u_input.d.x)), u_input.d, !(!vec4<bool>(var_0.x, true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(9034u, u_input.c), _wgslsmith_mod_u32(u_input.b, u_input.b)), ~min(vec2<u32>(25677u, u_input.b), vec2<u32>(u_input.b, 1u))), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)))))));
}

