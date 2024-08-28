struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec2<bool>) -> bool {
    var var_0 = !(!select(vec2<bool>(true, true), !select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(false, arg_0.x), vec2<bool>(arg_2.x, true)), vec2<bool>(any(vec4<bool>(false, arg_0.x, true, true)), !arg_2.x)));
    var_0 = arg_0;
    var_0 = !(!arg_0);
    return !(!any(!select(vec2<bool>(false, arg_2.x), vec2<bool>(arg_2.x, false), arg_0.x)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2));
    let var_1 = -70642i;
    var var_2 = min(i32(-1i) * -u_input.a, var_1);
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-424f, -1219f))) - vec2<f32>(2242f, var_0.x))));
    var var_3 = select(vec4<bool>(false, arg_1.a <= firstTrailingBit(-u_input.a), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x - arg_2.x), arg_2.x)) > arg_2.x), vec4<bool>(false, func_3(vec2<bool>(any(vec4<bool>(arg_0, arg_0, true, arg_0)), all(vec3<bool>(arg_0, arg_0, arg_0))), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, arg_1.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(arg_1.a, 0i))), !select(vec2<bool>(false, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, arg_0))), arg_0, arg_0), select(select(!select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(true, true, true, false), true), select(!vec4<bool>(false, arg_0, arg_0, true), select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), false), select(vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, true, arg_0, arg_0), true)), select(vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(false, false, false, arg_0), vec4<bool>(true, false, false, arg_0), arg_0), true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true), arg_0), arg_0 == (func_3(vec2<bool>(arg_0, arg_0), vec2<i32>(u_input.a, var_1), vec2<bool>(arg_0, arg_0)) && false)));
    return _wgslsmith_clamp_vec3_i32(-reverseBits(~min(vec3<i32>(0i, arg_1.a, var_1), vec3<i32>(-2147483647i, u_input.a, 1i))), firstLeadingBit(~vec3<i32>(abs(u_input.a), 0i, -35931i)), ~vec3<i32>(2147483647i, _wgslsmith_add_i32(-var_1, -1i), min(reverseBits(arg_1.a), 4879i)));
}

fn func_1() -> bool {
    let var_0 = select(abs(-vec3<i32>(firstTrailingBit(u_input.a), firstLeadingBit(u_input.a), ~u_input.a)), (func_2(false, Struct_1(u_input.a, vec3<u32>(4294967295u, 42049u, 0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1082f, 1427f) - vec2<f32>(696f, -1116f))) << (vec3<u32>(max(102811u, 48191u), abs(26670u), _wgslsmith_mult_u32(13916u, 13322u)) % vec3<u32>(32u))) >> (countOneBits(~(~vec3<u32>(1u, 4294967295u, 1u))) % vec3<u32>(32u)), !(!vec3<bool>(any(vec2<bool>(false, true)), true, false)));
    let var_1 = Struct_1(-var_0.x, ~(~vec3<u32>(select(18771u, 9427u, false), 1u, 1u)));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(1563f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1729f, -1000f)) - _wgslsmith_f_op_f32(max(613f, -1000f)))), -1687f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-332f, -565f, 1000f), vec3<f32>(835f, -477f, 1000f), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(379f, -405f, 1268f) + vec3<f32>(-440f, -529f, -572f))), vec3<f32>(_wgslsmith_f_op_f32(round(-1000f)), -107f, _wgslsmith_f_op_f32(step(-892f, 365f))))))));
    var var_3 = _wgslsmith_dot_vec3_i32(select(_wgslsmith_div_vec3_i32(-select(vec3<i32>(2147483647i, var_1.a, 2147483647i), vec3<i32>(var_1.a, 2147483647i, 34291i), vec3<bool>(false, true, false)), vec3<i32>(firstLeadingBit(50017i), 1i, var_1.a | 0i)), reverseBits(~(-vec3<i32>(u_input.a, -29195i, -34416i))), select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), var_0);
    return true;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-302f + arg_0)), -1285f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f + -325f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1000f, var_0.x)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, 1000f, 318f), vec3<f32>(465f, -288f, 1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 290f, 515f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(305f, var_0.x, 238f) * vec3<f32>(arg_0, arg_0, -287f)))), vec3<f32>(_wgslsmith_f_op_f32(sign(-875f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, var_0.x))), -177f), !(!select(vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1))))));
    let var_1 = arg_2;
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-835f, _wgslsmith_div_f32(-304f, arg_0), -1863f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1052f, var_0.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, -517f, var_0.x))), any(vec2<bool>(false, true))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, 1155f, 354f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-778f, 563f, var_0.x), vec3<f32>(-2098f, arg_0, -545f)))))), true)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0), var_0.x, arg_0);
    return Struct_1(var_1.a, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(449f * -816f), -162f), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-340f + _wgslsmith_f_op_f32(step(366f, -1476f))))))));
    var var_1 = func_4(-177f, !func_1(), Struct_1(-1i, select(~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(70368u, 7958u, 4294967295u)), true)));
    let var_2 = var_1.b.x;
    var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -605f))))), true, func_4(var_0.x, any(vec2<bool>(true, all(vec2<bool>(false, true)))), func_4(_wgslsmith_f_op_f32(round(1f)), true, Struct_1(~u_input.a, vec3<u32>(10001u, var_1.b.x, var_1.b.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -394f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1129f, 1054f, _wgslsmith_f_op_f32(round(var_0.x)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1496f, -1888f, var_0.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -1660f, var_0.x))))))))));
    var var_3 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1003f)))))), any(vec4<bool>(false, true, false, func_1())), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), false, Struct_1(func_4(_wgslsmith_f_op_f32(-var_0.x), false, Struct_1(12054i, var_1.b)).a, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_1.b.x, 4677u) | vec3<u32>(var_1.b.x, 4294967295u, var_1.b.x), ~vec3<u32>(var_1.b.x, 1u, var_1.b.x), vec3<u32>(4294967295u, var_1.b.x, 17733u)))));
    var var_4 = Struct_1(max(_wgslsmith_clamp_i32(~func_4(425f, false, Struct_1(19752i, var_3.b)).a, _wgslsmith_sub_i32(var_1.a | -1i, 12564i), -12429i), var_1.a & _wgslsmith_div_i32(-u_input.a, var_3.a)), vec3<u32>(~(~(~1u)), var_1.b.x | countOneBits(var_1.b.x), ~(~_wgslsmith_div_u32(var_3.b.x, 23267u))));
    let var_5 = max(var_4.b.x, ~var_1.b.x);
    let var_6 = ~max(~(~1u), 42299u);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.x, ~var_4.b.x, max(var_5, var_3.b.x), ~var_6), _wgslsmith_mod_vec4_u32(~vec4<u32>(var_3.b.x, 109664u, 0u, var_6), vec4<u32>(0u, var_6, var_5, 1u))), vec4<u32>(4294967295u, select(4294967295u, var_3.b.x, true) << (select(52615u, 0u, false) % 32u), _wgslsmith_sub_u32(var_5, 4294967295u), var_1.b.x)), var_3.b.yy, max(~(~firstTrailingBit(var_3.b.x)), _wgslsmith_sub_u32(var_5, var_4.b.x)), abs(reverseBits(vec2<u32>(var_6, 53250u) << (_wgslsmith_sub_vec2_u32(var_4.b.yx, var_1.b.xx) % vec2<u32>(32u)))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, -42316i)), -vec2<i32>(-1i, var_1.a)), u_input.a), _wgslsmith_mult_vec2_i32(-(vec2<i32>(u_input.a, var_1.a) & vec2<i32>(var_1.a, var_3.a)), select(vec2<i32>(35028i, u_input.a), firstTrailingBit(vec2<i32>(var_4.a, 29678i)), vec2<bool>(true, false)))));
}

