struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    global0 = countOneBits(vec3<i32>(i32(-1i) * -arg_2.c.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global0.x, arg_2.c.x, 1i), vec4<i32>(-2147483647i, arg_2.c.x, u_input.b.x, 55131i)), firstLeadingBit(~(-31856i))) & abs(-_wgslsmith_add_vec3_i32(arg_0.c, u_input.b)));
    global0 = vec3<i32>(arg_2.c.x, _wgslsmith_add_i32(~countOneBits(_wgslsmith_mod_i32(global0.x, arg_0.c.x)), _wgslsmith_add_i32(arg_0.c.x, _wgslsmith_div_i32(1i, arg_0.c.x) >> (4294967295u % 32u))), i32(-1i) * -1i);
    global0 = select(~vec3<i32>(0i >> (~u_input.c.x % 32u), -61974i, arg_0.c.x), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(arg_1.c.x, u_input.b.x, 1i), ~arg_2.c), ~select(-arg_0.c, u_input.b, !arg_2.b)), !all(vec4<bool>(arg_0.b, false, false, true)));
    global0 = select(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(min(-2147483647i, u_input.b.x), -29819i), -39141i, global0.x), arg_2.c), -(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(arg_1.c.x, 0i, arg_0.c.x)) >> (u_input.c % vec3<u32>(32u))), !(!(!(!vec3<bool>(arg_3.x, true, false)))));
    let var_0 = !select(!select(select(vec3<bool>(true, false, arg_2.b), vec3<bool>(arg_3.x, false, false), vec3<bool>(false, arg_0.b, arg_0.b)), select(vec3<bool>(false, arg_2.b, arg_2.b), vec3<bool>(false, true, false), arg_3.x), arg_0.a.x == arg_0.a.x), select(vec3<bool>(arg_0.b, select(true, arg_1.b, true), !arg_0.b), vec3<bool>(u_input.a != u_input.c.x, true, true || arg_0.b), !(!vec3<bool>(false, true, arg_2.b))), !select(!vec3<bool>(arg_2.b, arg_0.b, arg_1.b), select(vec3<bool>(arg_1.b, false, arg_1.b), vec3<bool>(arg_2.b, arg_1.b, arg_0.b), false), select(vec3<bool>(false, arg_2.b, arg_0.b), vec3<bool>(true, true, arg_2.b), vec3<bool>(arg_3.x, arg_0.b, false))));
    return 1169f;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(444f, 482f, 176f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 176f, 2412f), vec3<f32>(-1498f, -826f, -3168f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-813f, -654f, 776f))))))), all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), -abs(abs(u_input.b) << ((u_input.c & u_input.c) % vec3<u32>(32u))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(1938f, 412f, 257f), false, var_0.c), Struct_2(vec3<f32>(var_0.a.x, -809f, var_0.a.x), var_0.b, vec3<i32>(-22468i, u_input.b.x, -2147483647i)), Struct_2(vec3<f32>(-153f, var_0.a.x, var_0.a.x), true, var_0.c), vec2<bool>(var_0.b, false))), _wgslsmith_f_op_f32(sign(-1091f))))), var_0.a.x, var_0.a.x);
    var var_2 = Struct_1(u_input.d.x, ~u_input.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(var_1.x)), false)), select(select(select(!vec3<bool>(false, var_0.b, var_0.b), !vec3<bool>(var_0.b, var_0.b, false), select(vec3<bool>(var_0.b, true, true), vec3<bool>(var_0.b, var_0.b, false), var_0.b)), vec3<bool>(true, all(vec4<bool>(var_0.b, var_0.b, false, var_0.b)), false), var_0.b), select(vec3<bool>(true, all(vec3<bool>(true, false, true)), !var_0.b), vec3<bool>(var_0.b, true, !var_0.b), !(!vec3<bool>(var_0.b, true, var_0.b))), vec3<bool>(_wgslsmith_div_f32(441f, -959f) >= _wgslsmith_f_op_f32(-var_0.a.x), var_0.b, !(!var_0.b))));
    var var_3 = reverseBits(~1i);
    var_1 = vec3<f32>(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) + _wgslsmith_f_op_f32(-var_0.a.x))))), 1764f);
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(623f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-241f)) + var_2.c), var_1.x, _wgslsmith_f_op_f32(-362f * _wgslsmith_div_f32(-349f, 790f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2309f, var_0.a.x, var_0.a.x, var_1.x), vec4<f32>(var_0.a.x, var_2.c, -759f, 627f)))))), !(!var_0.b)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1116f, -561f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, -1698f, arg_1.x)))))), true, -vec3<i32>(_wgslsmith_mod_i32(global0.x, 10633i), u_input.b.x, firstLeadingBit(1i)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-115f, -529f)) + _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(arg_0 + arg_1.xzx), !var_0.b, vec3<i32>(-2147483647i, global0.x, 2147483647i) >> (vec3<u32>(u_input.c.x, arg_2.x, arg_2.x) % vec3<u32>(32u))), var_0, Struct_2(vec3<f32>(arg_0.x, arg_0.x, -602f), all(vec4<bool>(true, false, var_0.b, false)), ~var_0.c), select(vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(false, false), vec2<bool>(var_0.b, true), vec2<bool>(false, false)), var_0.b))))));
    global0 = var_0.c;
    let var_2 = vec2<u32>(36526u | ~(~arg_2.x), _wgslsmith_dot_vec4_u32(~select(countOneBits(vec4<u32>(26238u, u_input.d.x, arg_2.x, arg_2.x)), vec4<u32>(0u, 12796u, 0u, 57593u), select(vec4<bool>(var_0.b, false, var_0.b, var_0.b), vec4<bool>(true, var_0.b, var_0.b, var_0.b), var_0.b)), vec4<u32>(1u, u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 4294967295u, u_input.c.x), vec4<u32>(arg_2.x, arg_2.x, 83595u, 0u)) & 0u, _wgslsmith_div_u32(65825u, arg_2.x))));
    global0 = vec3<i32>(reverseBits(select(global0.x, var_0.c.x, _wgslsmith_f_op_f32(-arg_0.x) <= _wgslsmith_f_op_f32(-arg_1.x))), 28158i, 2147483647i);
    return Struct_2(var_0.a, false, u_input.b);
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = func_4(arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), ~(~reverseBits(vec2<u32>(u_input.a, 59107u) >> (vec2<u32>(u_input.a, u_input.d.x) % vec2<u32>(32u)))));
    let var_1 = func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_3.a, vec3<f32>(var_0.a.x, arg_3.a.x, arg_1.a.x))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(arg_3.a.x + -199f)), -359f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - _wgslsmith_f_op_f32(abs(-342f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1339f, arg_1.a.x, arg_1.a.x, var_0.a.x), vec4<f32>(989f, 1000f, -407f, 598f), arg_1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1210f, var_0.a.x, -1000f, arg_3.a.x))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, arg_3.a.x, arg_1.a.x, -2543f)), vec4<f32>(arg_1.a.x, -169f, arg_3.a.x, arg_1.a.x)))))), vec2<u32>(~(~54852u), u_input.d.x));
    let var_2 = ~(~max(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 10414u, 4294967295u), vec3<u32>(u_input.a, u_input.d.x, u_input.a), u_input.c)), u_input.c));
    global0 = func_4(vec3<f32>(var_0.a.x, -596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1540f))), vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(max(700f, _wgslsmith_f_op_f32(-var_0.a.x)))), 1466f, -132f), ~var_2.xy).c;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(197f, -359f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -703f) + arg_3.a.zz)), var_0.a.xy, !select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, true), var_1.b)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.a.xy * vec2<f32>(1035f, var_0.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-350f + _wgslsmith_f_op_f32(-895f - var_0.a.x)), 1312f), vec2<bool>(true, true))));
    return ~var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_i32(u_input.b, -((vec3<i32>(-1i) * -u_input.b) << (max(func_1(18738i, Struct_2(vec3<f32>(-140f, 834f, -535f), true, u_input.b), vec4<i32>(-1i, 2147483647i, 38434i, 37450i), Struct_2(vec3<f32>(-1108f, 2028f, 168f), false, u_input.b)), ~u_input.c) % vec3<u32>(32u))));
    let var_0 = 27660u;
    let var_1 = Struct_1(var_0, firstTrailingBit(-(~(-52964i))) >> ((_wgslsmith_sub_u32(var_0, _wgslsmith_mult_u32(0u, var_0)) & min(_wgslsmith_clamp_u32(u_input.c.x, 18340u, 4294967295u), ~u_input.c.x)) % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -410f))), vec3<bool>(select(all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), false, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(981f, -1312f, -828f)), vec4<f32>(433f, 275f, -660f, 341f), u_input.c.yz).b), func_4(vec3<f32>(-153f, -271f, -1172f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(621f, 1341f, -1352f, 177f) + vec4<f32>(-2032f, -564f, -630f, -118f)), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(false, false, false, false))), select(u_input.d, ~vec2<u32>(u_input.a, 9694u), true)).b, min(_wgslsmith_add_u32(37936u, 20523u), _wgslsmith_sub_u32(29270u, var_0)) >= (_wgslsmith_add_u32(1u, 25092u) & ~var_0)));
    let var_2 = 4294967295u;
    var var_3 = Struct_1(1u >> (0u % 32u), u_input.b.x, -561f, vec3<bool>(1u <= select(77397u, var_2, all(vec2<bool>(var_1.d.x, false))), var_1.d.x, !(!(false || var_1.d.x))));
    global0 = u_input.b >> (~vec3<u32>(18233u, reverseBits(u_input.a), _wgslsmith_div_u32(146176u, countOneBits(u_input.a))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(38001i, vec2<u32>(var_1.a, ~_wgslsmith_mult_u32(var_1.a, max(4294967295u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2()).x), -1693f);
}

