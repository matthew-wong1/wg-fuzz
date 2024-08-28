struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(arg_3.a, Struct_2(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_3.b)))), 1i > arg_0, true, arg_2);
    var var_1 = !var_0.c;
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(max(arg_3.a, _wgslsmith_mult_u32(4294967295u, var_0.a)), firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_1.ww, vec2<u32>(0u, arg_1.x)))) | var_0.e, var_0.b.a, arg_1.x, arg_3.a);
    let var_3 = -423f;
    var var_4 = var_0.d;
    return var_3;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, arg_0.b.x)), _wgslsmith_f_op_f32(trunc(2710f)))))) * arg_0.a.x), arg_0.e.x);
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(~abs(u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 21035i, -65471i), u_input.a), abs(min(u_input.a.x, u_input.a.x))) ^ u_input.a, -vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-28348i, u_input.a.x, -1i), u_input.a), 1i & abs(u_input.a.x), ~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)));
    let var_2 = Struct_3(abs(arg_0.d), Struct_2(abs(select(23460u, 7925u, arg_0.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, arg_0.e.x, 921f, -1433f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_0.e.x, arg_0.e.x, arg_0.c.x)))), select(arg_0.b.x, ~_wgslsmith_mod_u32(arg_0.d, 4294967295u) >= abs(arg_0.d | 0u), !select(true, true, true)), true, ~arg_0.d & arg_0.d);
    var_1 = ~vec3<i32>(-(~reverseBits(-42648i)), var_1.x, -1i);
    var var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, ~u_input.a.x, -2147483647i, -var_1.x), vec4<i32>(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(34159i, -25072i, u_input.a.x, var_1.x), vec4<i32>(u_input.a.x, 2147483647i, 1i, 3860i)) >> (countOneBits(30623u) % 32u), reverseBits(var_1.x))), vec4<i32>(_wgslsmith_mult_i32(-reverseBits(-1i), -2147483647i), ~_wgslsmith_mult_i32(select(var_1.x, var_1.x, arg_1.x), var_1.x), u_input.a.x, _wgslsmith_dot_vec2_i32(-(~u_input.a.yx), vec2<i32>(_wgslsmith_sub_i32(var_1.x, -2147483647i), -var_1.x))));
    return arg_0.b.zwz;
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-567f, -534f, -902f)))))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-992f, -428f, 563f) + _wgslsmith_div_vec3_f32(vec3<f32>(1716f, 1372f, 305f), vec3<f32>(-1005f, 453f, 1365f))), vec3<f32>(-1275f, -744f, _wgslsmith_f_op_f32(f32(-1f) * -312f))))), vec3<f32>(1f, 1f, 1f)));
    var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(-2147483647i, vec4<u32>(4294967295u, 1u, 43495u, 0u), 61169u, Struct_2(53772u, vec4<f32>(var_0.x, var_0.x, 1291f, var_0.x)))), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_f_op_f32(min(var_0.x, 1335f))), 693f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(var_0.x, -486f, 538f), vec3<bool>(true, true, arg_1))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1195f, 242f, var_0.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 601f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -750f, var_0.x), vec3<f32>(var_0.x, 256f, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-2238f * 633f), 1499f, var_0.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 2237f, var_0.x)) - vec3<f32>(_wgslsmith_f_op_f32(689f + -1306f), 1148f, 863f))), (all(select(vec3<bool>(false, false, arg_1), vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, arg_1, true))) || true) == all(select(func_3(Struct_1(vec3<f32>(491f, var_0.x, var_0.x), vec4<bool>(false, arg_1, true, arg_1), vec3<f32>(280f, var_0.x, var_0.x), 28228u, var_0.yx), vec3<bool>(arg_1, arg_1, true)), vec3<bool>(arg_1, arg_1, arg_1), u_input.a.x < arg_0))));
    var var_1 = true;
    let var_2 = all(select(select(vec4<bool>(true, arg_1, any(vec2<bool>(false, false)), false && arg_1), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, arg_1), arg_1), select(vec4<bool>(true, false, false, arg_1), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(arg_1, false, false, arg_1)), arg_1), all(vec4<bool>(true, true, true, true)) | false), vec4<bool>(true, arg_1, arg_1, var_0.x > 1221f), true));
    var_1 = !(!(true || all(!vec4<bool>(false, arg_1, arg_1, true))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1281f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(2228f, -195f)), _wgslsmith_div_f32(538f, _wgslsmith_f_op_f32(trunc(-702f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(788f))), 161f), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true), !vec4<bool>(any(vec2<bool>(false, true)), true, any(vec2<bool>(false, true)), true), all(vec3<bool>(true, true, any(vec3<bool>(false, false, false))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-408f, -349f, 215f)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-722f, -996f, -1268f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2194f, -1380f, 1287f), vec3<f32>(698f, 238f, -310f))))), _wgslsmith_div_u32(~1u, 1u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a.x, true)) + _wgslsmith_div_f32(-2590f, 515f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-550f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1661f)) - _wgslsmith_f_op_f32(-412f - -679f)))));
    let var_1 = Struct_4(abs(_wgslsmith_mod_u32(abs(var_0.d) ^ ~23095u, _wgslsmith_sub_u32(8020u, ~var_0.d))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_0.c)), select(var_0.b, !(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false)), var_0.b), _wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1581f, var_0.a.x, var_0.c.x) + vec3<f32>(var_0.a.x, var_0.c.x, 1069f)))), ~var_0.d, var_0.c.xy), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))), select(var_0.b, vec4<bool>(true, any(vec2<bool>(false, var_0.b.x)), all(var_0.b.zyy), var_0.b.x), true && (var_0.d == 37705u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1418f, var_0.a.x, var_0.c.x), _wgslsmith_f_op_vec3_f32(sign(var_0.a)), vec3<bool>(false, false, true)))), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(2871u, 41450u, var_0.d), vec3<u32>(var_0.d, var_0.d, 34913u)), ~vec3<u32>(var_0.d, 4294967295u, 31267u)), ~(~vec3<u32>(var_0.d, var_0.d, 5315u))), vec2<f32>(_wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - -1471f))), u_input.a.x);
    let var_2 = Struct_4(_wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(17656u, 0u, 6835u, 44337u), vec4<u32>(var_1.c.d, 80612u, 28735u, 1u))), vec4<u32>(min(var_0.d, 1u), var_0.d, countOneBits(_wgslsmith_add_u32(1u, 25216u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 89429u, 1u), vec3<u32>(var_1.a, 85309u, 52223u)))), var_1.b, var_1.b, -1i);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.c.c * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.c.c.x, _wgslsmith_f_op_f32(var_2.b.e.x - -719f), var_0.a.x), var_1.c.c)), var_2.b.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, 637f, var_2.c.e.x)))) * var_0.a), _wgslsmith_f_op_vec3_f32(max(var_1.b.a, vec3<f32>(766f, _wgslsmith_f_op_f32(sign(var_1.c.c.x)), -3035f)))), max(_wgslsmith_add_u32(_wgslsmith_add_u32(var_2.b.d, 0u), ~43353u) ^ var_0.d, 6606u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 301f)), vec2<f32>(-629f, _wgslsmith_f_op_f32(f32(-1f) * -2195f)))));
    var_0 = var_2.c;
    var var_3 = Struct_2(var_2.a, vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_2.c.a.x), 1073f, _wgslsmith_f_op_f32(-var_2.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~max(vec4<u32>(4294967295u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, var_1.c.d, var_2.b.d, var_3.a), vec4<u32>(var_1.b.d, 4294967295u, var_0.d, 0u)), 4294967295u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_3.a, 4294967295u, var_3.a, 13537u), vec4<u32>(1u, var_0.d, var_0.d, 37006u), vec4<u32>(1u, 0u, 0u, 0u))));
}

