struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec2<bool>, arg_3: vec3<bool>) -> f32 {
    let var_0 = max(~(-firstTrailingBit(vec3<i32>(8484i, 43809i, -35002i) << (arg_0.xyw % vec3<u32>(32u)))), -_wgslsmith_add_vec3_i32(vec3<i32>(47298i, -4628i, 16663i) >> (arg_0.ywz % vec3<u32>(32u)), -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 18443i, -22971i), vec3<i32>(-1i, 5945i, 21141i))));
    var var_1 = vec3<bool>(!all(vec3<bool>(true, false, arg_1.x)), arg_1.x, (~firstLeadingBit(var_0.x) & -50864i) < firstTrailingBit(var_0.x));
    global0 = ~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_0.x, u_input.a.x)), u_input.a.x, 0u) | (firstLeadingBit(~1u) << (~u_input.a.x % 32u)));
    var_1 = arg_3;
    let var_2 = vec4<bool>(select(true, false, false), arg_1.x, any(select(!(!vec4<bool>(false, var_1.x, arg_3.x, false)), !vec4<bool>(true, var_1.x, arg_3.x, true), any(vec4<bool>(arg_3.x, arg_2.x, false, arg_3.x)))), false);
    return _wgslsmith_f_op_f32(sign(-2480f));
}

fn func_2(arg_0: bool) -> f32 {
    global0 = select(61174u, firstTrailingBit(abs(0u)), true);
    global0 = 77362u;
    global0 = _wgslsmith_mult_u32(0u, ~56057u);
    var var_0 = false;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 10745u), vec4<u32>(101568u, u_input.a.x, 1u, u_input.a.x)), select(vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, false, false), vec3<bool>(true, false, false)), vec2<bool>(arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, true, true), vec3<bool>(true, false, true)))))), -839f, 1326f);
    return 1863f;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(52965u, _wgslsmith_sub_u32(~4294967295u & _wgslsmith_div_u32(arg_2.b.x, 4294967295u), arg_2.a.x)), u_input.a.x, arg_2.a.x);
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(arg_1 + -1395f), -472f))));
    var var_3 = -6971i;
    var_1 = false;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1)))), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(940f - -1000f))))), var_2.x, _wgslsmith_f_op_f32(-arg_1), arg_1);
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(vec3<i32>(2147483647i, -2147483647i, -56015i), _wgslsmith_div_f32(-600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true)))), Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 0u)), vec2<u32>(5533u, 76979u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(24358u, 75504u, 0u, u_input.a.x), select(vec4<u32>(u_input.a.x, 28465u, 16003u, 75188u), vec4<u32>(1u, u_input.a.x, 102559u, u_input.a.x), false), vec4<u32>(u_input.a.x, 105254u, u_input.a.x, 3131u)), any(vec2<bool>(true, true)), _wgslsmith_div_i32(-27034i, -1i), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(994f, -888f, 1000f, -1628f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, 1000f, -660f, -1354f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1361f, 670f, 724f, -1000f)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1493f * 2614f) + _wgslsmith_f_op_f32(ceil(743f))), _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2168f - 1723f))), _wgslsmith_f_op_f32(func_2(any(vec3<bool>(true, false, false)))))));
    var var_1 = Struct_5(firstLeadingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(-12971i, 39667i), vec2<i32>(1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = Struct_3(Struct_1(((u_input.a & u_input.a) << (~u_input.a % vec2<u32>(32u))) ^ ~u_input.a, min(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 71068u), ~3064u, ~u_input.a.x, ~0u), vec4<u32>(u_input.a.x | 18536u, ~u_input.a.x, 70202u, 13612u)), !(any(vec4<bool>(true, true, true, false)) || true), var_1.a.x, true), Struct_1(u_input.a, firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, 31343u, u_input.a.x), vec4<u32>(23310u, u_input.a.x, u_input.a.x, 0u))), !(!any(vec2<bool>(false, true))), -(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.a.x, var_1.a.x, 36903i), vec4<i32>(0i, var_1.a.x, var_1.a.x, 0i)) << (~u_input.a.x % 32u)), true));
    let var_3 = Struct_5(var_1.a, _wgslsmith_f_op_f32(func_3(countOneBits(select(abs(var_2.b.b), var_2.b.b, -703f != var_0.x)), !vec3<bool>(all(vec2<bool>(var_2.b.c, true)), !var_2.b.e, any(vec4<bool>(true, true, var_2.a.e, true))), !vec2<bool>(false, all(vec2<bool>(true, var_2.a.e))), select(vec3<bool>(false, false, true), select(select(vec3<bool>(false, var_2.b.e, var_2.a.c), vec3<bool>(var_2.b.c, var_2.a.c, var_2.b.c), vec3<bool>(true, false, true)), !vec3<bool>(false, var_2.a.e, true), vec3<bool>(false, false, true)), false))));
    let var_4 = var_3;
    return Struct_3(var_2.b, var_2.b);
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> u32 {
    global0 = _wgslsmith_add_u32(2484u, ~_wgslsmith_mult_u32(~(~u_input.a.x), arg_0.a.b.x));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, arg_3, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -934f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(671f, arg_3, 851f, 1202f) * vec4<f32>(arg_3, 383f, -1391f, 449f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-976f, -373f, 1276f, 468f) * vec4<f32>(arg_3, arg_3, 644f, arg_3))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(230f, arg_3, arg_3, 153f) * vec4<f32>(arg_3, arg_3, 193f, -1000f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2125f - 575f), _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_3, 162f))), 853f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, 1287f, -1000f))))));
    global0 = reverseBits(abs(u_input.a.x));
    var var_1 = _wgslsmith_clamp_vec3_i32(firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b.d >> (arg_2.a.b.x % 32u), -48784i, -33035i), vec3<i32>(_wgslsmith_sub_i32(arg_2.a.d, 1i), -36809i, arg_0.a.d))), select(select(_wgslsmith_div_vec3_i32(select(vec3<i32>(arg_2.a.d, arg_2.a.d, arg_2.a.d), vec3<i32>(arg_2.a.d, arg_2.a.d, arg_2.a.d), arg_0.b.e), countOneBits(vec3<i32>(arg_0.b.d, 5894i, arg_0.a.d))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.d, -2147483647i, 1i), vec3<i32>(17695i, -4857i, arg_0.a.d)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b.d, arg_2.a.d, 1i), vec3<i32>(arg_2.a.d, arg_0.b.d, 0i))), true), _wgslsmith_add_vec3_i32(vec3<i32>(-arg_0.b.d, i32(-1i) * -276i, 1i), vec3<i32>(_wgslsmith_mod_i32(0i, arg_2.a.d), firstLeadingBit(arg_2.a.d), ~1i)), arg_2.a.c), _wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(arg_2.a.d, arg_2.a.d, 10818i)) | (-vec3<i32>(19057i, arg_0.a.d, arg_0.b.d) >> (vec3<u32>(4742u, arg_0.a.a.x, arg_2.a.b.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(~(~vec3<i32>(arg_2.a.d, 45714i, arg_0.a.d)), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a.d, -22429i, -2147483647i), vec3<i32>(arg_0.a.d, arg_0.a.d, 0i), vec3<i32>(0i, -1i, arg_0.a.d))))));
    var_1 = ~_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a.d, _wgslsmith_sub_i32(35208i | var_1.x, 1i), -1i), vec3<i32>(0i, -_wgslsmith_mod_i32(-11786i, 2147483647i), _wgslsmith_add_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(arg_2.a.d, 34573i))));
    return min(countOneBits(~(u_input.a.x | ~arg_0.b.b.x)), 24262u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_u32(u_input.a.x >> (func_5(func_1(), true, Struct_2(func_1().a, u_input.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1000f)), 1f))) % 32u), ~(~abs(~0u)));
    global0 = 1u;
    let var_0 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, false, true)), vec2<bool>(false, !func_1().b.e), vec2<bool>(true, true)), select(vec2<bool>(func_1().a.c, any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(37807u <= u_input.a.x, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), false))), !all(vec4<bool>(true, true, true, u_input.a.x > 4294967295u)));
    global0 = ~(~u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-272f, -322f, 1452f, 730f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1234f, -2730f, 121f, 246f)))) * vec4<f32>(774f, 1000f, -1476f, -906f)))));
    let var_2 = true;
    let var_3 = Struct_3(func_1().a, func_1().b);
    global0 = 28597u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(u_input.a, ~var_3.b.b.zx) >> (33813u % 32u));
}

