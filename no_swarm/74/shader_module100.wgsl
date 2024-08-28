struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: vec3<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(286f, _wgslsmith_f_op_f32(max(-209f, _wgslsmith_f_op_f32(sign(-407f)))))));
    var var_1 = ~1u & ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 41427u), vec2<u32>(35639u, 23077u), vec2<u32>(17518u, 4294967295u))), 4294967295u);
    let var_2 = Struct_2(vec4<i32>(max(-31402i, _wgslsmith_div_i32(~0i, -2147483647i)), 1i, 1i, global0.x), !(-1223f < _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), Struct_1(-1000f, abs(vec3<i32>(1i, u_input.a.x, _wgslsmith_mod_i32(-8070i, u_input.a.x)))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1627u, 0u, 50177u, 0u), vec4<u32>(4294967295u, 13514u, 4294967295u, 28214u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 127491u, 12505u), vec4<u32>(1u, 54887u, 46077u, 4294967295u), vec4<u32>(1u, 10008u, 44112u, 60190u))), min(firstLeadingBit(vec4<u32>(34452u, 1u, 31960u, 104549u)), select(vec4<u32>(3541u, 4294967295u, 18691u, 11657u), vec4<u32>(4294967295u, 39511u, 23390u, 66352u), vec4<bool>(false, false, true, false)))), vec4<u32>(13249u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 68557u, 0u, 4294967295u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 48099u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 2688u, 4294967295u), vec4<u32>(4294967295u, 5613u, 22452u, 1u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 79613u)) % 32u))));
    var_1 = var_2.d.x;
    let var_3 = Struct_5(false);
    return !vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1092f)) > _wgslsmith_f_op_f32(select(-180f, -2010f, false)), true);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: bool) -> vec3<i32> {
    global0 = -(~vec3<i32>(u_input.a.x, 41552i, global0.x) & -vec3<i32>(-2147483647i, -2147483647i, u_input.a.x)) & _wgslsmith_add_vec3_i32(vec3<i32>(global0.x, max(-62906i, _wgslsmith_dot_vec4_i32(vec4<i32>(71048i, u_input.a.x, -32726i, global0.x), vec4<i32>(global0.x, 4381i, 2147483647i, u_input.a.x))), ~u_input.a.x | u_input.a.x), select(vec3<i32>(u_input.a.x, global0.x, global0.x), vec3<i32>(u_input.a.x, 4482i, u_input.a.x), vec3<bool>(false, arg_1.a, true)) & _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, global0.x, global0.x), vec3<i32>(-2028i, 2147483647i, -50522i), vec3<i32>(u_input.a.x, u_input.a.x, -14191i)), vec3<i32>(global0.x, global0.x, 0i), countOneBits(vec3<i32>(global0.x, 27422i, 1i))));
    var var_0 = vec3<i32>(_wgslsmith_div_i32(~firstLeadingBit(21109i), _wgslsmith_clamp_i32(2147483647i >> (0u % 32u), max(global0.x, -1i), countOneBits(-2147483647i))) & _wgslsmith_sub_i32(-17933i, _wgslsmith_div_i32(_wgslsmith_add_i32(37865i, u_input.a.x), 1i)), -global0.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(global0.xz, u_input.a) | abs(u_input.a), ~vec2<i32>(global0.x, 1i))));
    let var_1 = !(!(!func_3()));
    var var_2 = Struct_4(vec2<bool>(!(!arg_2 | (arg_1.a | arg_2)), !select(true, true, !arg_1.a)), ~(~vec2<u32>(1u, 1u)), -abs(-(~vec4<i32>(var_0.x, -45858i, global0.x, u_input.a.x))));
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -978f), arg_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, _wgslsmith_f_op_f32(sign(420f))))));
    return select(vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(-45846i, 1i)) & u_input.a.x, min(2147483647i, global0.x)), vec3<i32>(var_0.x, _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(2147483647i, global0.x)), ~global0.x), 15007i), arg_1.a);
}

fn func_2() -> vec3<i32> {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-859f, -719f))))))), Struct_5(select(all(vec4<bool>(true, false, false, true)), true, any(vec2<bool>(true, false)))), any(!select(vec2<bool>(true, true), func_3(), any(vec2<bool>(true, false)))));
    return vec3<i32>(firstTrailingBit(0i), _wgslsmith_sub_i32(2147483647i, _wgslsmith_div_i32(global0.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(25400i, global0.x), -2147483647i))), global0.x);
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<u32>(~(~_wgslsmith_sub_u32(~1u, ~58973u)), abs(reverseBits(firstTrailingBit(1u))));
    let var_1 = 332f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-846f, -124f)))));
    global0 = -(~(vec3<i32>(-2147483647i, -u_input.a.x, 1i) | vec3<i32>(u_input.a.x & 6968i, -global0.x, u_input.a.x)));
    global0 = _wgslsmith_sub_vec3_i32(vec3<i32>(-41041i, _wgslsmith_sub_i32(-50514i, -34783i), -abs(global0.x)) & func_2(), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, 1i, u_input.a.x), ~vec3<i32>(77211i, global0.x, -53497i)) & max(vec3<i32>(u_input.a.x, -15542i, -1i), ~vec3<i32>(global0.x, global0.x, u_input.a.x))));
    global0 = (_wgslsmith_mult_vec3_i32(-vec3<i32>(56832i, -2147483647i, -1i), select(vec3<i32>(global0.x, global0.x, -35024i), ~vec3<i32>(-1i, global0.x, global0.x), vec3<bool>(false, var_1, var_1))) & min(~vec3<i32>(u_input.a.x, -14735i, 26881i) & -vec3<i32>(global0.x, -2147483647i, 12249i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 9355i, 51552i, -2147483647i), vec4<i32>(-2204i, -27000i, 1i, -28445i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, 0i), vec4<i32>(-2147483647i, 1i, u_input.a.x, global0.x)), _wgslsmith_mult_i32(8329i, -1i)))) | vec3<i32>(min(_wgslsmith_mult_i32(12817i, u_input.a.x), firstTrailingBit(u_input.a.x) << (39806u % 32u)), 2147483647i, _wgslsmith_div_i32(u_input.a.x, -max(u_input.a.x, 1i)));
    return Struct_1(-155f, abs(firstTrailingBit(vec3<i32>(u_input.a.x, 2147483647i, firstLeadingBit(u_input.a.x)))));
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    var var_1 = -2147483647i;
    var var_2 = 37733u;
    var_1 = 20098i << (1u % 32u);
    var var_3 = Struct_2(-select(min(vec4<i32>(1i, global0.x, 1i, arg_0.b.x), vec4<i32>(u_input.a.x, 8720i, 2147483647i, -1i)), vec4<i32>(arg_0.b.x, global0.x >> (0u % 32u), var_0.b.x | 0i, -2147483647i), true), !(!all(vec3<bool>(true, true, false))), arg_0, vec4<u32>(reverseBits(0u), abs(~reverseBits(0u)), 38210u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))));
    return var_3.d.x & abs(var_3.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(~(~func_5(func_1())));
    global0 = max(vec3<i32>(~(-global0.x), -5510i, -2147483647i), vec3<i32>(u_input.a.x, -u_input.a.x, global0.x));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-930f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1776f * 488f))) - -598f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(886f))) * _wgslsmith_f_op_f32(sign(1000f))) + _wgslsmith_f_op_f32(-1333f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1868f + -2870f) - _wgslsmith_f_op_f32(select(-106f, -922f, true))))));
    global0 = ~firstTrailingBit(-(vec3<i32>(-1i) * -vec3<i32>(global0.x, 63410i, -12909i)));
    let var_2 = Struct_5((all(vec3<bool>(true, true, true)) || true) | true);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, vec4<u32>(~var_0, 104096u, _wgslsmith_div_u32(1u, 29601u) >> (~(var_0 << (var_0 % 32u)) % 32u), _wgslsmith_sub_u32(abs(~0u), 4294967295u)));
}

