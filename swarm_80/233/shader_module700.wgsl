struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(42710u, 4294967295u, 1u, 28348u), vec4<u32>(4294967295u, 71878u, 10049u, 4294967295u), vec4<u32>(4294967295u, 16806u, 0u, 27824u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(7950u, 17258u, 0u, 4294967295u), vec4<u32>(1u, 1u, 0u, 10706u), vec4<u32>(6468u, 4294967295u, 0u, 4294967295u), vec4<u32>(12708u, 4294967295u, 11611u, 20357u), vec4<u32>(0u, 3085u, 61203u, 4294967295u), vec4<u32>(1u, 13484u, 14668u, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = vec4<f32>(2648f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -328f)))) + _wgslsmith_f_op_f32(1821f * _wgslsmith_f_op_f32(-157f * _wgslsmith_f_op_f32(ceil(-1152f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1307f)), _wgslsmith_div_f32(2109f, 352f)))), 710f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2432f) - _wgslsmith_f_op_f32(max(-1000f, 288f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(2051f, -1355f)), _wgslsmith_f_op_f32(ceil(-793f)))));
    var var_1 = _wgslsmith_f_op_f32(-2936f - var_0.x);
    global0 = array<vec4<u32>, 10>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1410f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -277f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(3279f, -1387f, -758f, -2646f), vec4<f32>(1050f, 276f, 888f, var_0.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 454f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))))));
    var var_2 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1046f * 506f))))), var_0.x);
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    let var_0 = select(u_input.a, vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, abs(arg_0.a)) & arg_1.x, _wgslsmith_dot_vec3_i32((vec3<i32>(-12713i, 27807i, arg_1.x) & vec3<i32>(arg_0.a, -1i, -8425i)) | -u_input.a, countOneBits(u_input.a)), arg_0.a), arg_2.yxx);
    let var_1 = vec4<u32>(1u, func_3(1u ^ (_wgslsmith_div_u32(89573u, u_input.b.x) & (arg_0.b.x ^ 4294967295u))), func_3(arg_0.b.x), _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 46806u, u_input.b.x, 1u)), vec4<u32>(arg_0.b.x, 64134u, u_input.b.x, 42047u) & global0[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_mult_u32(select(arg_0.b.x, min(arg_0.b.x, arg_0.b.x), arg_0.c == arg_0.c), u_input.b.x)));
    let var_2 = u_input.d;
    let var_3 = Struct_1(reverseBits(2147483647i), var_1.zyw >> (vec3<u32>(~max(arg_0.b.x, var_1.x), 4294967295u, 1u) % vec3<u32>(32u)), true);
    global0 = array<vec4<u32>, 10>();
    return var_3;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1638f))), arg_0));
    var var_1 = _wgslsmith_mod_vec2_i32(countOneBits(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, arg_1.a), u_input.a.yx)), abs(max(u_input.a.xx, vec2<i32>(u_input.d, 28675i)) | _wgslsmith_div_vec2_i32(u_input.a.xx, vec2<i32>(arg_1.a, 2147483647i)))) ^ (~(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, arg_1.a), u_input.a.zz, u_input.a.xz) | ~vec2<i32>(u_input.c, arg_1.a)) << (abs(u_input.b) % vec2<u32>(32u)));
    var var_2 = !(!(!vec4<bool>(arg_1.c, !arg_1.c, any(vec4<bool>(true, arg_1.c, true, arg_1.c)), arg_1.c)));
    var var_3 = ~min(u_input.b.x, func_2(func_2(Struct_1(var_1.x, vec3<u32>(21377u, 1u, 0u), false), vec2<i32>(-1i, u_input.d), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, arg_1.c, arg_1.c), vec4<bool>(false, var_2.x, arg_1.c, var_2.x)), _wgslsmith_f_op_f32(abs(var_0))), vec2<i32>(-1i) * -vec2<i32>(u_input.c, var_1.x), vec4<bool>(!var_2.x, all(vec4<bool>(arg_1.c, arg_1.c, var_2.x, false)), false & var_2.x, any(var_2.wx)), _wgslsmith_f_op_f32(f32(-1f) * -2382f)).b.x);
    var var_4 = var_2.x;
    return abs(~(_wgslsmith_mult_vec3_u32(vec3<u32>(4986u, 30599u, 4294967295u), arg_1.b) << (arg_1.b % vec3<u32>(32u))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -732f, -399f, -1704f) * vec4<f32>(-1372f, 638f, 214f, -214f)))))));
    global0 = array<vec4<u32>, 10>();
    let var_1 = Struct_1(-1i, ~func_4(_wgslsmith_f_op_f32(round(var_0.x)), func_2(Struct_1(arg_2, vec3<u32>(u_input.b.x, u_input.b.x, arg_0.x), false), ~vec2<i32>(-23385i, -1i), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), _wgslsmith_f_op_f32(floor(603f)))), (u_input.b.x > 1u) || true);
    let var_2 = !vec2<bool>(false, !any(vec3<bool>(var_1.c, var_1.c, var_1.c)));
    var var_3 = _wgslsmith_div_u32(u_input.b.x, _wgslsmith_mult_u32(~4656u, _wgslsmith_mult_u32(var_1.b.x, 0u)) | 0u) > ~(~1u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x) + _wgslsmith_div_f32(var_0.x, var_0.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), !var_2.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(374f, 305f), -218f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(959f, 488f))), vec2<f32>(-1193f, 1162f)))));
    let var_1 = firstTrailingBit(~max(561i, _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, u_input.a.x), 1i)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1184f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-645f + var_0.x)))))));
    var_2 = -849f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 266f, -1000f) * vec3<f32>(315f, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1179f, 490f, 2644f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -753f)), var_0.x, -373f)));
    global0 = array<vec4<u32>, 10>();
    var var_4 = -1105f <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))) + _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(func_1(u_input.b, u_input.a, -70879i)))))));
    let x = u_input.a;
    s_output = StorageBuffer(729i);
}

