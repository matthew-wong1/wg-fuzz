struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-692f, -801f), vec2<f32>(825f, -1692f), vec2<f32>(611f, -252f), vec2<f32>(403f, 325f), vec2<f32>(-957f, 1407f), vec2<f32>(-1372f, 1296f), vec2<f32>(536f, 1082f), vec2<f32>(1874f, 657f), vec2<f32>(460f, -1344f), vec2<f32>(892f, -237f), vec2<f32>(1162f, 1042f), vec2<f32>(1122f, -1077f), vec2<f32>(-1797f, 415f), vec2<f32>(248f, 440f));

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(true, 53188i, vec4<bool>(false, false, true, false), false), Struct_1(true, 54388i, vec4<bool>(false, false, true, true), false), Struct_1(false, 0i, vec4<bool>(false, false, false, true), false), Struct_1(false, 1i, vec4<bool>(false, true, false, false), true), Struct_1(true, 0i, vec4<bool>(true, false, true, false), true), Struct_1(true, 0i, vec4<bool>(false, true, false, false), false), Struct_1(false, 47604i, vec4<bool>(false, false, false, false), true), Struct_1(true, 61909i, vec4<bool>(false, false, true, false), false), Struct_1(false, 14760i, vec4<bool>(true, true, true, false), true), Struct_1(false, 25221i, vec4<bool>(true, true, true, true), false), Struct_1(false, 3442i, vec4<bool>(false, true, true, false), true), Struct_1(false, -16070i, vec4<bool>(true, true, false, true), true), Struct_1(false, 0i, vec4<bool>(true, false, true, true), true), Struct_1(false, -1i, vec4<bool>(false, true, false, false), true), Struct_1(false, -22666i, vec4<bool>(true, false, false, false), false), Struct_1(false, 0i, vec4<bool>(true, true, false, false), true), Struct_1(true, 24605i, vec4<bool>(true, true, true, true), false), Struct_1(false, 11974i, vec4<bool>(false, true, true, false), true), Struct_1(false, 67940i, vec4<bool>(false, true, false, false), false), Struct_1(false, -23357i, vec4<bool>(false, false, false, true), true), Struct_1(false, 2147483647i, vec4<bool>(false, false, false, true), false), Struct_1(false, 0i, vec4<bool>(false, true, false, true), false), Struct_1(true, -32746i, vec4<bool>(false, false, false, false), false), Struct_1(true, 24301i, vec4<bool>(true, true, true, true), true), Struct_1(false, -1i, vec4<bool>(true, false, true, false), false), Struct_1(true, 0i, vec4<bool>(false, false, true, true), false), Struct_1(false, 17669i, vec4<bool>(false, false, false, true), true), Struct_1(true, -67624i, vec4<bool>(true, true, false, false), true), Struct_1(true, 1i, vec4<bool>(true, false, true, true), true), Struct_1(false, -11465i, vec4<bool>(true, false, false, true), true), Struct_1(true, -1i, vec4<bool>(true, false, true, false), false), Struct_1(false, -25428i, vec4<bool>(true, false, true, false), true));

var<private> global2: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(65265u, 45200u, 1u, 24106u), vec4<u32>(0u, 1228u, 4294967295u, 4294967295u), vec4<u32>(1u, 104911u, 1u, 101502u), vec4<u32>(0u, 25833u, 8823u, 4294967295u), vec4<u32>(116332u, 72136u, 6270u, 23705u), vec4<u32>(38102u, 11445u, 71324u, 36520u), vec4<u32>(2177u, 461u, 44949u, 0u), vec4<u32>(0u, 0u, 48993u, 22998u), vec4<u32>(33939u, 8408u, 4294967295u, 0u), vec4<u32>(4294967295u, 35247u, 55098u, 4294967295u), vec4<u32>(35050u, 103516u, 0u, 0u), vec4<u32>(4294967295u, 15208u, 3942u, 1u), vec4<u32>(1u, 36146u, 1u, 44879u), vec4<u32>(4294967295u, 44063u, 0u, 1u), vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(0u, 5922u, 2821u, 0u), vec4<u32>(1u, 4294967295u, 94609u, 43971u), vec4<u32>(1u, 1u, 7841u, 9074u), vec4<u32>(4294967295u, 78403u, 65498u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = -(max(u_input.d.xy, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i), _wgslsmith_add_vec2_i32(u_input.a.yz, vec2<i32>(2147483647i, u_input.d.x)))) ^ _wgslsmith_add_vec2_i32(-u_input.d.xx, reverseBits(~vec2<i32>(arg_2.b, arg_1.b))));
    let var_1 = 1i;
    var var_2 = Struct_1(select(true, false, any(select(select(vec2<bool>(arg_1.d, true), arg_2.c.xx, false), arg_2.c.zw, vec2<bool>(false, arg_2.a)))), 2147483647i, !select(vec4<bool>(true, !arg_1.a, arg_2.d, true), vec4<bool>(false, true, any(vec4<bool>(true, arg_1.c.x, arg_1.c.x, arg_1.c.x)), false), select(arg_2.c, arg_2.c, true)), !(false && arg_1.c.x));
    let var_3 = global1[_wgslsmith_index_u32(u_input.e, 32u)];
    var_2 = arg_2;
    return true;
}

fn func_2() -> u32 {
    global2 = array<vec4<u32>, 19>();
    global2 = array<vec4<u32>, 19>();
    let var_0 = any(!vec4<bool>(false, true, all(vec3<bool>(true, true, true)), (u_input.c << (u_input.b % 32u)) == ~u_input.b));
    let var_1 = any(select(vec4<bool>(var_0, func_3(_wgslsmith_f_op_f32(f32(-1f) * -290f), global1[_wgslsmith_index_u32(601u, 32u)], global1[_wgslsmith_index_u32(u_input.b, 32u)]), false, false), vec4<bool>(true, !(!var_0), !(!var_0), var_0), vec4<bool>(true, var_0, true && (-48735i < u_input.a.x), false)));
    let var_2 = true;
    return _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(13207u, u_input.e), ~vec2<u32>(4294967295u, 97410u)), ~u_input.b), u_input.b) >> (_wgslsmith_mult_u32(u_input.c, u_input.e) % 32u);
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(func_2(), 32u)];
    var var_1 = global1[_wgslsmith_index_u32(select(~4294967295u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 4294967295u) | _wgslsmith_mult_vec2_u32(vec2<u32>(25623u, u_input.c), vec2<u32>(0u, 37086u))), firstTrailingBit(select(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.b, 4294967295u)), ~vec2<u32>(4294967295u, u_input.c), true))), true), 32u)];
    global2 = array<vec4<u32>, 19>();
    let var_2 = all(vec4<bool>(!any(vec2<bool>(false, var_1.a)), select(true, var_1.c.x, var_1.c.x), !(!select(true, var_1.c.x, var_0.d)), var_0.b <= _wgslsmith_add_i32(-25419i, 85014i)));
    global2 = array<vec4<u32>, 19>();
    return global1[_wgslsmith_index_u32(1u, 32u)];
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(644f - -1716f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(514f * 641f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1421f)))), func_1().a)), _wgslsmith_f_op_f32(f32(-1f) * -679f)));
    global1 = array<Struct_1, 32>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1507f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-184f - -472f) - var_0.x), _wgslsmith_f_op_f32(-var_0.x), var_0.x)));
    global0 = array<vec2<f32>, 14>();
    let var_1 = _wgslsmith_f_op_f32(min(-1701f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1108f * -1000f))) - var_0.x)));
    return Struct_1(arg_1.x, min(-2147483647i, arg_2.b), arg_2.c, arg_1.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, -1101f)) + _wgslsmith_f_op_f32(-arg_2)) - -1889f))));
    let var_1 = func_4(~27210u, !(!func_4(reverseBits(0u), func_4(4294967295u, vec4<bool>(true, true, false, true), Struct_1(arg_1.x, arg_0.b, arg_0.c, true)).c, global1[_wgslsmith_index_u32(1u, 32u)]).c), Struct_1(arg_3, firstLeadingBit(firstLeadingBit(_wgslsmith_add_i32(2147483647i, -2147483647i))), func_4(39060u, vec4<bool>(arg_3, !arg_3, arg_3, arg_1.x), func_4(u_input.c | u_input.c, vec4<bool>(false, arg_1.x, arg_0.a, false), func_1())).c, (_wgslsmith_sub_i32(28781i, arg_0.b) >> (u_input.c % 32u)) >= 0i));
    global1 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    let var_2 = countOneBits(~global2[_wgslsmith_index_u32(42298u, 19u)]) | ~(~(~(~vec4<u32>(58144u, u_input.b, u_input.b, u_input.c))));
    return func_4(var_2.x, !(!func_1().c), Struct_1(arg_0.c.x, 2147483647i, vec4<bool>(false, ~u_input.d.x >= _wgslsmith_sub_i32(0i, -19292i), _wgslsmith_f_op_f32(-1242f - 525f) != _wgslsmith_f_op_f32(round(316f)), _wgslsmith_f_op_f32(exp2(var_0)) > var_0), false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-252f - 246f) - _wgslsmith_f_op_f32(-1844f + -708f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1299f, 2385f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -976f) * _wgslsmith_div_f32(-1162f, 725f)))), _wgslsmith_f_op_f32(-1261f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_1 = func_5(func_4(u_input.b, vec4<bool>(true, true, any(vec2<bool>(true, true)), false), func_1()), func_4(1u, !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), Struct_1(true, countOneBits(u_input.d.x & -23768i), func_1().c, true)).c.yx, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1162f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(139f)), _wgslsmith_f_op_f32(sign(983f)))))))), func_4(u_input.b, !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(u_input.c, 0u, 46910u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b) | vec2<u32>(u_input.c, u_input.b), vec2<u32>(u_input.b, u_input.b) & vec2<u32>(1u, 15873u))), 32u)]).c.x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(2227f, 975f), _wgslsmith_f_op_f32(select(-285f, -410f, var_1.d))))));
    let var_2 = 19900u | u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-566f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1112f * -956f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-220f)) - -236f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-857f, 103f)), 762f)) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1290f, -607f, false))) - -1921f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1079f, 307f, -846f) + vec3<f32>(1279f, -646f, -2055f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-257f, 602f, 875f) - vec3<f32>(1204f, 248f, 1351f))), func_4(_wgslsmith_div_u32(1u, 78016u), vec4<bool>(var_1.c.x, var_1.d, false, false), func_4(var_2, vec4<bool>(var_1.c.x, var_1.a, true, var_1.d), global1[_wgslsmith_index_u32(u_input.b, 32u)])).a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(923f * -1520f), 226f, _wgslsmith_f_op_f32(804f - -1557f)))), global2[_wgslsmith_index_u32(~var_2 | u_input.c, 19u)]);
}

