struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_clamp_i32(~(-28370i), _wgslsmith_mod_i32(min(_wgslsmith_add_i32(max(u_input.b, -2147483647i), u_input.b), -max(u_input.b, u_input.c)), 10191i), max(u_input.b >> (u_input.a % 32u), firstLeadingBit(abs(-1i))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1296f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1284f - -1141f))) + _wgslsmith_f_op_f32(floor(1f))), 1f);
    var_1 = _wgslsmith_f_op_f32(sign(-1416f));
    var_0 = -1i;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1773f, -215f, -416f), vec3<f32>(-2865f, -1300f, -1327f)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1076f, -165f, -246f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1002f, 1016f, -179f)))))))));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = (4294967295u << (_wgslsmith_sub_u32(~u_input.d, ~(arg_0.b.b.x ^ u_input.d)) % 32u)) | countOneBits(_wgslsmith_add_u32(~14511u, arg_0.b.b.x));
    let var_1 = Struct_2(select(vec2<bool>(select(false | arg_0.b.a, u_input.d == var_0, arg_0.b.a), select(arg_0.b.a, arg_0.a.x, true)), func_3(), arg_0.b.a), arg_0.b, arg_0.c);
    let var_2 = var_1.c.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1593f, var_2) + vec2<f32>(var_1.c.x, -564f)) - vec2<f32>(_wgslsmith_f_op_f32(1142f + -760f), _wgslsmith_f_op_f32(floor(-1656f)))))));
    let var_4 = arg_0.b;
    return Struct_1(!var_1.b.a, min(~(~vec2<u32>(u_input.d, u_input.d)), vec2<u32>(~var_1.b.b.x, ~var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_4.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_0.b.c, 275f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.c)));
    let var_1 = arg_0.a;
    var var_2 = 0i;
    var var_3 = Struct_1(true, _wgslsmith_add_vec2_u32(vec2<u32>(25245u, ~0u), arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(395f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.c)), 393f))));
    var_3 = arg_0;
    return firstTrailingBit(vec4<i32>(25623i, ~(-1i), max(u_input.b & (-56495i ^ u_input.b), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.c, -4352i, u_input.b), vec4<i32>(684i, 0i, 70082i, -1084i)), u_input.b)), -abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, 2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec2<i32> {
    var var_0 = vec2<i32>(select(_wgslsmith_dot_vec4_i32(func_4(func_2(Struct_2(vec2<bool>(false, arg_2.x), Struct_1(arg_1.x, vec2<u32>(u_input.a, u_input.d), 1034f), vec4<f32>(304f, 1176f, 147f, 1465f))), Struct_2(vec2<bool>(false, arg_2.x), Struct_1(arg_2.x, vec2<u32>(u_input.a, u_input.d), 732f), vec4<f32>(3168f, -504f, -307f, 1645f))), vec4<i32>(min(u_input.b, -19440i), ~u_input.c, u_input.c, firstLeadingBit(u_input.c))), firstTrailingBit(_wgslsmith_mult_i32(-1i, u_input.b)), false), u_input.c);
    let var_1 = func_2(Struct_2(!select(!arg_0, select(arg_1.xy, arg_1.xx, false), !arg_2.x), func_2(Struct_2(select(arg_1.zy, vec2<bool>(true, arg_2.x), vec2<bool>(arg_1.x, false)), Struct_1(true, vec2<u32>(u_input.a, u_input.a), 407f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-268f, -525f, 588f, -1078f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1517f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(691f, -1336f)) * -1419f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1634f - -780f) - -193f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(600f * 708f))))));
    var_0 = -_wgslsmith_mult_vec2_i32(~(-vec2<i32>(-2147483647i, 0i)) << (vec2<u32>(max(0u, 1974u), var_1.b.x) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(0i, var_0.x), ~var_0.x)));
    var var_2 = _wgslsmith_dot_vec3_i32(select(max(~vec3<i32>(-44923i, 0i, 29270i), vec3<i32>(u_input.b, var_0.x, u_input.c)), vec3<i32>(i32(-1i) * -8895i, 0i, u_input.b), select(arg_1.zyz, vec3<bool>(var_1.a, true, false), select(vec3<bool>(true, arg_0.x, var_1.a), vec3<bool>(false, true, false), false))), countOneBits(vec3<i32>(-1i) * -vec3<i32>(u_input.c, 0i, u_input.b))) >> (4294967295u % 32u);
    let var_3 = 65376u;
    return vec2<i32>(var_0.x, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1122f)), _wgslsmith_f_op_f32(-2957f * -465f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -474f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -428f))), false)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec2_i32(func_1(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), ~vec2<i32>(u_input.b, -36474i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1194f, -724f, -1418f, -1524f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -392f, var_0, -178f)), true)), vec4<f32>(var_0, -1351f, _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(-1657f * var_0))))), -685f, _wgslsmith_div_i32(~u_input.b | _wgslsmith_add_i32(u_input.c, 1i), func_1(vec2<bool>(true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)).x) & (-u_input.b >> (min(u_input.a, _wgslsmith_div_u32(u_input.d, 58978u)) % 32u)));
}

