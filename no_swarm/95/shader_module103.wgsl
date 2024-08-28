struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(1u);
    let var_1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(arg_2.x, arg_0.x) | _wgslsmith_div_u32(1u, arg_2.x), ~(~27141u)), arg_0, arg_2);
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-u_input.a, -32178i, u_input.a, u_input.a), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, ~u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a), ~u_input.a), abs(-(~vec4<i32>(-2147483647i, 2147483647i, u_input.a, 1i)))));
    global0 = -1i;
    global0 = u_input.a;
    return Struct_1(firstTrailingBit(~var_2.zyy));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(-550f);
    let var_1 = arg_0.a.x;
    global1 = array<Struct_1, 14>();
    let var_2 = -440f;
    let var_3 = func_2(vec2<u32>(reverseBits(~(1u << (1u % 32u))), ~abs(max(70753u, 0u))), var_0, select(~abs(vec2<u32>(1u, 1u)), ~select(vec2<u32>(1u, 43032u), vec2<u32>(0u, 27376u), false) & countOneBits(vec2<u32>(1u, 1u)), false), Struct_3(~(select(105142u, 53741u, true) ^ 1u)));
    return 1i;
}

fn func_1(arg_0: vec3<i32>) -> vec3<f32> {
    var var_0 = vec4<i32>(arg_0.x, -1i, ~firstLeadingBit(0i), u_input.a >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, 31593u), 52260u) % 32u)) ^ firstLeadingBit(vec4<i32>(func_3(func_2(vec2<u32>(54975u, 0u), Struct_2(121f), vec2<u32>(87171u, 48831u), Struct_3(0u))), abs(-11299i), firstLeadingBit(2147483647i) << (1u % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(-33412i, u_input.a), arg_0.x | arg_0.x)));
    var_0 = firstLeadingBit(countOneBits(_wgslsmith_sub_vec4_i32(-firstLeadingBit(vec4<i32>(-2147483647i, 14596i, 0i, var_0.x)), vec4<i32>(_wgslsmith_sub_i32(9817i, u_input.a), _wgslsmith_div_i32(-2147483647i, -31547i), 0i, -1i))));
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = _wgslsmith_sub_u32(0u, _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(49155u, 21446u, 12075u, 4438u))), reverseBits(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_3 = !(!(!var_1.yz));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(783f, 643f, -1920f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(647f, 198f, 755f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1248f, -327f, 1064f)))), var_1.yyw)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2985f, -1739f, 3256f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1010f, -750f, -297f))))) * _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1557f, -1939f, -2559f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 303f, 1226f), vec3<f32>(-502f, 240f, -898f), var_1.yww)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_1(select(select(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(6500i, 31015i, -2147483647i), false), -vec3<i32>(u_input.a, 1i, -2147483647i), vec3<bool>(true, true, true)))))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2091f), -1502f, 1000f));
    global0 = _wgslsmith_clamp_i32(1i, firstLeadingBit(_wgslsmith_sub_i32(u_input.a, _wgslsmith_sub_i32(0i & u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 2197i), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a))))), _wgslsmith_clamp_i32(~u_input.a, ~u_input.a, i32(-1i) * -select(51798i, u_input.a, true)));
    let var_1 = vec4<bool>(!all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true))), !(_wgslsmith_div_f32(var_0.x, 567f) < _wgslsmith_f_op_f32(f32(-1f) * -1144f)), false, all(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true))));
    global1 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 2773u), vec2<u32>(11915u, 19395u)), ~0u), ~select(4294967295u, 54909u, var_1.x)) << (~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(3442u, 49564u, 0u))) % 32u), vec4<u32>(~4294967295u, 4294967295u, 121398u, _wgslsmith_add_u32(_wgslsmith_mult_u32(10358u, 0u), ~select(140200u, 0u, var_1.x))));
}

