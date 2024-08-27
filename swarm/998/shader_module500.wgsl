struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = arg_1.zw;
    global0 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(ceil(334f)));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-479f)))), -686f));
    let var_1 = -496f;
    global0 = -860f;
    return vec4<i32>(-1i, u_input.a, _wgslsmith_add_i32(u_input.a, -u_input.a), -1i);
}

fn func_1() -> vec4<u32> {
    let var_0 = ~vec3<u32>(max(max(27326u, 0u), _wgslsmith_mult_u32(~1u, 0u)), 0u, 1u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-334f, 1757f, 388f, -654f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1181f, 383f, -1024f, 389f), vec4<f32>(1592f, -913f, -730f, 476f), false)))))) * vec4<f32>(_wgslsmith_f_op_f32(select(1380f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(869f, -1000f) - _wgslsmith_f_op_f32(163f - -363f)), true)), -188f, 2257f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(202f + -1169f) - 1442f))));
    var var_2 = Struct_1(~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), func_2(1000f, vec4<f32>(var_1.x, -105f, -1000f, -485f))) << (vec4<u32>(var_0.x, _wgslsmith_div_u32(~1u, 35225u), _wgslsmith_div_u32(61412u, max(var_0.x, 29920u)), var_0.x) % vec4<u32>(32u)), true, !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), ~vec2<u32>(87999u, abs(_wgslsmith_mod_u32(52660u, 16794u))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1067f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-764f)), 200f) + 1618f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(var_1.x * -852f)))));
    var var_4 = var_2.a.x;
    return _wgslsmith_sub_vec4_u32(~(~firstLeadingBit(vec4<u32>(var_2.d.x, var_0.x, var_0.x, var_0.x))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_2.d.x, var_2.d.x), vec4<u32>(0u, var_0.x, 0u, var_0.x) << (vec4<u32>(0u, var_2.d.x, var_0.x, var_2.d.x) % vec4<u32>(32u))), vec4<u32>(var_2.d.x << (var_2.d.x % 32u), 110346u, firstTrailingBit(var_2.d.x), var_0.x)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: u32, arg_3: bool) -> bool {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-909f)) * _wgslsmith_f_op_f32(trunc(-858f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1603f), _wgslsmith_f_op_f32(ceil(-1365f)), arg_1.x)) + -874f))));
    let var_0 = true;
    let var_1 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(-22440i), _wgslsmith_dot_vec3_i32(vec3<i32>(-17821i, -10264i, 1i) >> (arg_0.zzx % vec3<u32>(32u)), abs(vec3<i32>(u_input.a, 2147483647i, -22502i))), i32(-1i) * -4155i, 0i), vec4<i32>(firstLeadingBit(29693i) >> (firstLeadingBit(arg_2) % 32u), ~(u_input.a << (1u % 32u)), i32(-1i) * -14665i, u_input.a)), any(!(!vec2<bool>(var_0, arg_1.x))) && any(arg_1), arg_1.zz, vec2<u32>(~(~arg_2 ^ ~0u), 2526u));
    global0 = -732f;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2492f, 178f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-441f)) - _wgslsmith_f_op_f32(f32(-1f) * -1764f)))))));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    let var_1 = vec4<bool>(!(!(~u_input.a > -u_input.a)), true, !(func_3(func_1(), vec3<bool>(true, true, true), _wgslsmith_sub_u32(31744u, 12655u), true) & any(vec4<bool>(true, true, true, false))), false);
    let var_2 = false;
    global0 = 1527f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(458f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(479f)) * _wgslsmith_f_op_f32(f32(-1f) * -1054f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(197f, 691f, 120f))))));
    let var_4 = Struct_1(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(-1i) * -vec4<i32>(var_0, -2147483647i, u_input.a, u_input.a), vec4<i32>(11801i, _wgslsmith_div_i32(u_input.a, var_0), var_0, _wgslsmith_mult_i32(u_input.a, var_0))), reverseBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, -1i, -23819i), vec4<i32>(-1i, 25875i, -10381i, u_input.a))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -20057i, var_0, var_0) | vec4<i32>(-41404i, 2147483647i, 0i, -1i), abs(vec4<i32>(u_input.a, 1i, -1i, -1i))) >> (vec4<u32>(1u, 1u, 27994u, 1u) % vec4<u32>(32u))), any(!select(!vec4<bool>(false, false, var_2, false), !vec4<bool>(true, var_2, var_1.x, false), false)), select(var_1.yx, select(vec2<bool>(true, true), var_1.wx, all(vec2<bool>(var_1.x, var_1.x))), select(vec2<bool>(false, !var_1.x), !select(vec2<bool>(true, false), vec2<bool>(false, var_1.x), var_1.x), (var_1.x && var_1.x) && var_1.x)), vec2<u32>(1u, 1u));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_3.x, var_3.x)), _wgslsmith_f_op_f32(trunc(var_3.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_3.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f) - var_3.x) * _wgslsmith_f_op_f32(ceil(684f))) * 133f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, var_3.x))), 1191f)));
    let var_5 = var_4;
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1122f + var_3.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1616i, vec3<u32>(40774u, var_5.d.x, var_4.d.x));
}

