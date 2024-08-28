struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = arg_2.b;
    let var_1 = 1u;
    var var_2 = !vec4<bool>(_wgslsmith_clamp_u32(var_1, firstTrailingBit(88567u), _wgslsmith_add_u32(4294967295u, arg_1.b)) <= 1u, any(select(select(vec3<bool>(arg_1.c.x, true, false), arg_2.c, vec3<bool>(true, true, false)), vec3<bool>(arg_1.c.x, arg_1.c.x, false), arg_2.a <= arg_1.a)), arg_1.c.x, false);
    var_2 = !(!select(select(!vec4<bool>(true, var_2.x, var_2.x, false), !vec4<bool>(false, var_2.x, false, var_2.x), !vec4<bool>(true, var_2.x, var_2.x, arg_2.c.x)), !vec4<bool>(arg_1.c.x, arg_1.c.x, false, false), select(!vec4<bool>(arg_1.c.x, false, true, true), !vec4<bool>(true, arg_2.c.x, false, false), -349f > arg_2.a)));
    var var_3 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~(~(vec4<u32>(4294967295u, 25612u, arg_2.b, 0u) & vec4<u32>(0u, 35394u, var_1, var_1))), _wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, ~arg_2.b, 1u, var_0), abs(reverseBits(vec4<u32>(var_1, 7366u, var_1, u_input.a.x))))), ~_wgslsmith_div_vec4_u32(vec4<u32>(countOneBits(1u), select(9702u, var_0, arg_1.c.x), min(u_input.a.x, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 63611u, 18618u), vec4<u32>(arg_1.b, 0u, 4294967295u, 49122u))), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, 4294967295u, 89376u, var_1), vec4<u32>(4294967295u, arg_1.b, 4294967295u, 0u)))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0, ~4294967295u, _wgslsmith_clamp_u32(0u, 1u, 56751u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 53061u, var_1, 0u), vec4<u32>(u_input.a.x, var_0, u_input.a.x, 46882u))), vec4<u32>(1u, u_input.a.x, 68239u, var_1 | u_input.a.x), vec4<bool>(var_2.x != arg_1.c.x, !arg_2.c.x, false, true)), vec4<u32>(~(~arg_2.b), var_0, u_input.a.x, arg_2.b & 53796u)));
    return select(min(-(vec3<i32>(-1i, -11729i, arg_0) | _wgslsmith_add_vec3_i32(vec3<i32>(-10357i, arg_0, arg_0), vec3<i32>(arg_0, arg_0, 2147483647i))), vec3<i32>(-1i) * -(vec3<i32>(1i, -2147483647i, 0i) & vec3<i32>(6088i, arg_0, 18534i))), firstTrailingBit(-countOneBits(vec3<i32>(arg_0, arg_0, arg_0))), !all(select(vec2<bool>(arg_2.c.x, arg_1.c.x), vec2<bool>(arg_2.c.x, arg_2.c.x), true)) && select(true, false, false));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<f32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), -(~vec4<i32>(-2147483647i, 53259i, -2147483647i, -27917i)) & vec4<i32>(-_wgslsmith_add_i32(-4046i, -21121i), 1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 7433i, 2147483647i, -16323i), vec4<i32>(-10860i, -2147483647i, 0i, 1i)), 1i));
    var var_2 = var_0;
    var var_3 = ~func_3(_wgslsmith_sub_i32(var_1, _wgslsmith_dot_vec2_i32(max(vec2<i32>(var_1, var_1), vec2<i32>(0i, -2147483647i)), vec2<i32>(-65505i, var_1) << (vec2<u32>(var_0.b, arg_2.x) % vec2<u32>(32u)))), var_0, Struct_1(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_1.a + arg_0.x)), 4294967295u, vec3<bool>(true, true, true)));
    var var_4 = _wgslsmith_dot_vec2_i32(abs(abs(abs(vec2<i32>(2147483647i, var_1)))), _wgslsmith_sub_vec2_i32(var_3.xx, var_3.yz)) << (0u % 32u);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, _wgslsmith_f_op_f32(f32(-1f) * -647f)));
}

fn func_1() -> Struct_1 {
    var var_0 = abs(vec2<i32>(2147483647i, 1i));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-742f, -1425f)) * _wgslsmith_f_op_f32(f32(-1f) * -1168f)), _wgslsmith_f_op_f32(-1406f + _wgslsmith_f_op_f32(f32(-1f) * -503f))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(160f, 1000f, 843f, 317f), vec4<f32>(244f, 984f, 2302f, -620f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-381f, 2462f, -494f, 998f) * vec4<f32>(336f, 779f, 1531f, -609f))), Struct_1(-945f, u_input.a.x & 1u, vec3<bool>(true, true, true)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 11172u, u_input.a.x, 48488u), vec4<u32>(71219u, 45428u, u_input.a.x, 44269u)))), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1217f, 306f) + _wgslsmith_f_op_f32(min(118f, 229f))), _wgslsmith_f_op_f32(2046f + _wgslsmith_div_f32(676f, 1532f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1647f, -1333f)))))))));
    let var_2 = Struct_1(-642f, u_input.a.x, !(!select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, 1848f, var_1.x), vec3<f32>(var_2.a, var_1.x, var_2.a))) + vec3<f32>(var_1.x, -1043f, -1065f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + var_2.a) * _wgslsmith_f_op_f32(-var_1.x)), 440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 230f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(514f, -1097f, var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_3.xy - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - var_1.x)), var_3.x)) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1000f * var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(-214f, var_1.x, var_1.x, 152f), Struct_1(var_2.a, 53673u, var_2.c), vec4<u32>(var_2.b, u_input.a.x, u_input.a.x, 71525u))).x, !var_2.c.x)))));
    return var_2;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_1();
    let var_1 = false;
    var var_2 = 524f;
    var_0 = func_1();
    var var_3 = arg_0;
    return Struct_1(_wgslsmith_f_op_vec2_f32(func_2(vec4<f32>(arg_0.a, _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-804f, var_3.a, 1000f, 854f) - vec4<f32>(1792f, -703f, 972f, arg_0.a)), func_1(), ~vec4<u32>(1u, 4294967295u, 1u, 65557u))).x, _wgslsmith_f_op_f32(f32(-1f) * -1013f), _wgslsmith_f_op_f32(f32(-1f) * -1084f)), Struct_1(arg_0.a, ~var_0.b, var_0.c), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 35271u)), vec4<u32>(var_0.b, 4294967295u, _wgslsmith_clamp_u32(11451u, 29195u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(1697u, var_3.b), vec2<u32>(var_0.b, 0u)))))).x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_3.b, var_0.b, 28244u, 1u), vec4<u32>(4294967295u, var_3.b, 1u, 0u)) << (vec4<u32>(77917u, var_3.b, 1u, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(arg_0.b, reverseBits(arg_0.b), ~4294967295u, 1u)) & 30785u, vec3<bool>(689f < arg_0.a, !select(false, 81279u <= var_0.b, var_3.c.x || var_1), !(!func_1().c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    var var_1 = ~vec4<i32>(2147483647i, _wgslsmith_mod_i32(-1i, ~(-2147483647i)) & _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, -1i, 1i), 2147483647i), _wgslsmith_mod_i32(firstLeadingBit(-1i), ~3333i) ^ func_3(~34964i, Struct_1(var_0.a, 59262u, var_0.c), Struct_1(var_0.a, u_input.a.x, var_0.c)).x, 39368i);
    var var_2 = var_0;
    var_2 = func_1();
    var var_3 = -abs(var_1.x);
    var var_4 = vec4<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.b, 21721u), _wgslsmith_mult_u32(98229u, var_0.b)), ~func_1().b), _wgslsmith_mod_u32(1u, 4294967295u), reverseBits(_wgslsmith_div_u32(12375u, 107839u))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(var_2.b), u_input.a.x, ~var_0.b, min(var_0.b, 40561u)), vec4<u32>(~var_2.b, ~var_2.b, 1u, abs(17749u))), ~vec4<u32>(21214u, _wgslsmith_mult_u32(var_0.b, u_input.a.x), u_input.a.x, var_2.b ^ var_0.b)) % vec4<u32>(32u));
    let var_5 = abs(vec4<u32>(0u, firstTrailingBit(~var_0.b) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.b, var_4.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, var_4.x, 1u)) % 32u), var_0.b, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, var_2.a, 126f, var_2.a), vec4<f32>(1000f, var_2.a, var_0.a, var_0.a))), vec4<f32>(665f, 112f, -1229f, var_2.a), any(vec3<bool>(false, true, false)))), var_0, var_5)))));
}

