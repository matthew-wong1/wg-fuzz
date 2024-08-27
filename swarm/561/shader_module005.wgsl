struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = vec3<f32>(-615f, 818f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1352f, _wgslsmith_f_op_f32(521f * -961f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -647f))))), 906f));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1964f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f))), 212f) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, -355f, var_0.x)) - vec3<f32>(_wgslsmith_f_op_f32(var_0.x + -871f), -606f, -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, 291f, -2039f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(349f, -1000f, var_0.x)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -604f, 213f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 1096f) - vec3<f32>(-117f, 277f, var_0.x)))))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(var_1, _wgslsmith_f_op_vec3_f32(ceil(var_1))))) - var_1), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(-133f)), _wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_1, vec3<f32>(698f, var_0.x, var_0.x)))), vec3<f32>(-119f, var_0.x, _wgslsmith_f_op_f32(-var_1.x)))))));
    var_0 = var_1;
    return false;
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    var var_0 = any(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(20086i, -13123i, 0i) >> (u_input.b.yxy % vec3<u32>(32u)), -vec3<i32>(0i, -2147483647i, 2147483647i)) >= _wgslsmith_div_i32(1i, -5070i), !any(vec2<bool>(true, true)), func_3(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), any(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_2(21549u, _wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(18293i, 2147483647i, -2147483647i, 0i), vec4<i32>(-7385i, 1i, 3055i, -1i), vec4<i32>(-988i, -2147483647i, 1i, 0i)) >> (~u_input.b % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-49043i, 2147483647i), vec2<i32>(-1360i, 1i)), vec2<i32>(1i, 1i)), 1i, -(~(-60692i)), 13080i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 678f, 233f, arg_0.x) - vec4<f32>(196f, arg_0.x, 1405f, arg_0.x)))))), vec4<f32>(-984f, _wgslsmith_f_op_f32(862f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)))), _wgslsmith_f_op_f32(arg_0.x - 165f), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -124f))))));
    var_0 = false;
    let var_3 = var_1.b.xx;
    return Struct_4(!vec2<bool>(true, (var_1.b.x > var_1.b.x) || all(vec3<bool>(true, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(249f - -355f)) <= arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_clamp_i32(var_3.x, 47544i & (~var_3.x & (2147483647i ^ var_1.b.x)), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(32154i, var_1.b.x)), abs(vec2<i32>(2147483647i, 42387i)))), ~(~var_1.b));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32) -> vec3<i32> {
    var var_0 = vec4<u32>(~abs(16083u & u_input.a), u_input.b.x, ~0u, arg_2);
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(abs(arg_0)));
    let var_2 = -_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(-var_1.e.wy, -vec2<i32>(42367i, -1i)), var_1.e.zw);
    var_0 = vec4<u32>(arg_2, _wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, firstLeadingBit(4294967295u)), ~59340u), arg_2 ^ ~_wgslsmith_add_u32(0u, 1u), 0u);
    var_0 = u_input.b;
    return select(-var_1.e.wyw << ((vec3<u32>(select(var_0.x, var_0.x, true), abs(0u), ~0u) >> (~vec3<u32>(0u, arg_2, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), var_1.e.zxz, arg_1.x && all(vec4<bool>(false, var_1.c == arg_0.x, any(vec4<bool>(var_1.a.x, false, arg_1.x, var_1.b)), func_2(arg_0).b)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1171f * arg_3) + _wgslsmith_f_op_f32(step(arg_3, arg_3))))));
    var var_1 = countOneBits(5921u);
    var_1 = 0u;
    return Struct_2(_wgslsmith_div_u32(18682u, ~(1u ^ u_input.b.x)), abs(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(521f, -1504f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, -511f), vec2<f32>(arg_3, var_0))))).e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~_wgslsmith_div_vec3_i32(func_1(vec2<f32>(-1000f, -345f), vec3<bool>(false, false, false), 1u), min(-vec3<i32>(1i, 26277i, -2960i), vec3<i32>(-1i, -21305i, -1i))), ~u_input.b.zz, Struct_3(1u, u_input.b, _wgslsmith_f_op_f32(-847f - 391f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(443f)) - -164f), func_3(vec3<bool>(true, true, true)), true), -1245f);
    let var_1 = vec2<bool>(any(vec4<bool>(true, !any(vec4<bool>(false, true, true, true)), countOneBits(var_0.b.x) > -3649i, true)), true);
    var_0 = Struct_2(~65159u, var_0.b);
    let var_2 = Struct_1(var_0.b.x, 1030f);
    let var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b.x, var_2.a, var_2.a, var_2.a), vec4<i32>(-36472i, firstTrailingBit(-6825i), 12655i, var_0.b.x)), _wgslsmith_add_i32(countOneBits(-var_2.a), var_0.b.x)) >> (~u_input.b.wx % vec2<u32>(32u));
    let var_4 = Struct_3(u_input.a, _wgslsmith_mod_vec4_u32(u_input.b, u_input.b), any(!vec3<bool>(true, false, u_input.a <= var_0.a)), !any(select(!vec3<bool>(false, true, var_1.x), select(vec3<bool>(true, var_1.x, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, false, var_1.x)), true)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, ~(-(~var_0.b.x)) & 2147483647i, firstLeadingBit(var_3));
}

