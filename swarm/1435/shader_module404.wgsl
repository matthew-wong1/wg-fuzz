struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: vec2<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32) -> vec4<i32> {
    let var_0 = !vec4<bool>(!arg_1.d.d, !(arg_1.a.c >= -487f) | true, true, global0.x);
    var var_1 = ~_wgslsmith_sub_u32(~25388u, ~arg_0.b);
    let var_2 = _wgslsmith_sub_u32(arg_0.b, firstTrailingBit(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(37155u, arg_1.c, u_input.a, 46942u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 1u, 40581u, arg_1.e.b), countOneBits(vec4<u32>(arg_0.b, arg_1.c, arg_1.c, 39294u))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-923f, -102f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(sign(-1211f))), 1761f));
    var var_4 = Struct_1(_wgslsmith_mult_vec4_i32(-vec4<i32>(28539i, _wgslsmith_sub_i32(u_input.c, -13858i), arg_1.d.a.x | 0i, abs(-2147483647i)), vec4<i32>(2147483647i, ~abs(u_input.b), -_wgslsmith_mult_i32(u_input.c, arg_1.a.a.x), -_wgslsmith_mod_i32(-2147483647i, u_input.b))), select(select(!select(vec3<bool>(global1.x, true, false), vec3<bool>(true, arg_1.a.e, true), var_0.zxz), !(!var_0.zzy), !arg_1.d.b), var_0.xww, ~(~0u) <= firstTrailingBit(arg_1.e.b)), -934f, var_0.x, !any(select(vec4<bool>(var_0.x, arg_1.a.b.x, var_0.x, arg_1.d.b.x), vec4<bool>(true, false, false, global1.x), select(vec4<bool>(false, arg_0.a, false, true), vec4<bool>(false, arg_0.a, global0.x, var_0.x), var_0.x))));
    return select(vec4<i32>(u_input.b, countOneBits(~(-1i << (arg_1.e.b % 32u))), arg_1.b.x, u_input.b >> (~1u % 32u)), vec4<i32>(-1i, -arg_1.b.x, -30450i, u_input.c), !((95870u >> (u_input.a % 32u)) >= (65883u & max(arg_0.b, 1u))));
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 57800u), ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 19031u) % vec2<u32>(32u))) << (~(~(~vec2<u32>(4294967295u, 75897u))) % vec2<u32>(32u)));
    var var_1 = Struct_2(true, 4294967295u);
    var_0 = reverseBits(abs(~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.b, var_0.x), vec2<u32>(0u, var_0.x))) | ~(~vec2<u32>(50038u, 62840u) << ((vec2<u32>(u_input.a, var_0.x) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_2 = Struct_4(Struct_1(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-10547i, u_input.c, u_input.c, 39665i), vec4<i32>(2147483647i, 2147483647i, u_input.c, u_input.b))), !(!vec3<bool>(var_1.a, global0.x, false)), _wgslsmith_f_op_f32(round(145f)), false, false), vec3<i32>(~22437i, u_input.c, -7421i), _wgslsmith_div_u32(var_0.x, var_0.x), Struct_1(-vec4<i32>(33761i, -6819i, 2147483647i, 0i) | func_3(Struct_2(global1.x, u_input.a), Struct_4(Struct_1(vec4<i32>(56722i, u_input.c, u_input.c, -18589i), vec3<bool>(true, global1.x, true), 131f, false, true), vec3<i32>(0i, u_input.b, -41557i), u_input.a, Struct_1(vec4<i32>(-1i, u_input.c, 2147483647i, 29223i), vec3<bool>(global1.x, global0.x, global0.x), arg_0.x, false, false), Struct_2(false, u_input.a)), -732f), select(vec3<bool>(true, global1.x, var_1.a), select(select(vec3<bool>(true, true, global1.x), vec3<bool>(false, true, global0.x), global1.x), vec3<bool>(global1.x, false, false), !vec3<bool>(global1.x, global1.x, global0.x)), vec3<bool>(false, select(false, global0.x, false), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-223f, _wgslsmith_f_op_f32(f32(-1f) * -1460f))))), any(!(!vec3<bool>(global0.x, true, true))), false), Struct_2(var_1.a, var_0.x));
    var var_3 = _wgslsmith_sub_vec3_u32(~countOneBits(~vec3<u32>(4294967295u, 11360u, 4294967295u)), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, u_input.a, var_1.b)), vec3<u32>(~u_input.a, ~0u, 60729u)) >> (~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(40265u, 22686u, var_0.x), vec3<u32>(var_2.e.b, u_input.a, 4736u)), var_1.b, u_input.a) % vec3<u32>(32u)));
    return Struct_3(var_2.e, ~vec4<u32>(var_0.x, ~(~var_2.c), 1u, _wgslsmith_add_u32(var_3.x >> (u_input.a % 32u), ~47712u)), var_2.d.a, ~func_3(var_2.e, Struct_4(Struct_1(vec4<i32>(u_input.b, var_2.d.a.x, 1i, -1i), vec3<bool>(false, false, global0.x), -1000f, var_2.d.e, true), ~vec3<i32>(u_input.b, var_2.d.a.x, u_input.b), u_input.a, Struct_1(vec4<i32>(var_2.b.x, u_input.b, u_input.b, var_2.a.a.x), var_2.a.b, var_2.d.c, var_1.a, false), Struct_2(true, var_2.c)), var_2.a.c).wwx, false);
}

fn func_1() -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1738f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1158f)), 1188f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1704f)), _wgslsmith_f_op_f32(abs(619f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = var_0.c;
    global1 = select(vec2<bool>(any(vec4<bool>(!var_0.e, var_0.e, var_0.e, true)), false), global0.xx, global0.xz);
    let var_2 = ~select(max(firstTrailingBit(var_0.b.xwy), ~var_0.b.wyx) << (~(~var_0.b.xzy) % vec3<u32>(32u)), ~countOneBits(var_0.b.wxw), vec3<bool>((u_input.a < 4294967295u) && func_2(vec4<f32>(-1000f, -623f, 2117f, -741f)).e, true, var_0.a.a));
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(step(1908f, -1089f)), _wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(-1000f + -757f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-901f, 1615f, 729f, 327f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-232f, 1000f, 495f, -563f))), select(vec4<bool>(global0.x, true, true, true), vec4<bool>(true, global1.x, true, true), global0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-368f, 1346f, 487f, -1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-646f, 1618f, 1021f, 956f))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-604f, -317f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-203f + -1369f) + _wgslsmith_f_op_f32(step(280f, -433f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1673f + 1405f), _wgslsmith_f_op_f32(-1280f - -219f)))) + 1f), !all(vec4<bool>(false, global1.x, var_0.e, var_3.e)) || select(global0.x, var_0.e, var_0.a.a)));
}

fn func_4(arg_0: f32) -> bool {
    var var_0 = abs(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-1i) * -vec2<i32>(56939i, -1i)), countOneBits(abs(vec2<i32>(u_input.b, -34285i) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))))));
    global0 = !vec3<bool>(all(vec2<bool>(global0.x & global0.x, true)), true, any(vec3<bool>(true, select(global1.x, global0.x, global0.x), global1.x || false)));
    global0 = vec3<bool>(all(select(select(!vec3<bool>(global0.x, global1.x, global0.x), vec3<bool>(global0.x, true, global1.x), global0.x), !select(vec3<bool>(global0.x, false, false), vec3<bool>(global1.x, global0.x, false), global1.x), !select(vec3<bool>(global1.x, global0.x, false), vec3<bool>(global0.x, false, global1.x), vec3<bool>(true, global1.x, global1.x)))), !func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 616f, arg_0, -836f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-286f, -1002f, arg_0, 2238f))))).e, func_2(vec4<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)), -1261f, -697f, 822f)).e);
    return true;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-540f, 1346f, 484f, _wgslsmith_f_op_f32(ceil(138f)))));
    let var_1 = -vec2<i32>(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(arg_3.x, -71255i, arg_3.x, 13337i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, arg_3.x), vec4<i32>(-8528i, -2147483647i, u_input.b, 42411i)), vec4<bool>(arg_0.x, false, false, true)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_3.x, 1i, -76606i) << (vec4<u32>(arg_1.x, arg_1.x, u_input.a, u_input.a) % vec4<u32>(32u)), func_3(Struct_2(false, arg_1.x), Struct_4(Struct_1(vec4<i32>(-2147483647i, 1i, arg_3.x, u_input.c), arg_0, 1647f, global1.x, false), arg_3, 10904u, Struct_1(vec4<i32>(arg_3.x, -66040i, u_input.c, arg_3.x), vec3<bool>(arg_2, false, arg_0.x), -997f, true, false), Struct_2(arg_2, 28697u)), 675f))), -18640i);
    global0 = arg_0;
    global1 = vec2<bool>(any(select(!(!vec4<bool>(global0.x, global1.x, arg_0.x, arg_0.x)), !select(vec4<bool>(true, false, arg_2, true), vec4<bool>(arg_0.x, true, arg_2, global1.x), global0.x), false)), all(global0.yx));
    global0 = vec3<bool>(arg_0.x, arg_0.x, u_input.b <= 0i);
    return select(select(vec2<bool>(true, arg_2), !arg_0.xz, arg_0.x), !(!(!(!arg_0.yy))), select(!(!any(vec4<bool>(false, arg_2, false, false))), global1.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(vec3<bool>(false, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(round(-409f)))), any(vec4<bool>(global0.x, true, global0.x, any(vec3<bool>(true, global1.x, true))))), select(~_wgslsmith_mult_vec3_u32(~vec3<u32>(25037u, 4748u, u_input.a), vec3<u32>(u_input.a, 5714u, u_input.a)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(85308u, 73964u, u_input.a), vec3<u32>(40954u, 1u, 9837u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(23710u, 21657u, u_input.a), vec3<u32>(11313u, 19610u, u_input.a))), vec3<bool>(true, any(!global0.xx), false)), select(false, (_wgslsmith_f_op_f32(round(240f)) <= 940f) | all(vec3<bool>(global0.x, global0.x, true)), true), countOneBits(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(282f, 322f, 1000f, 807f) * vec4<f32>(259f, -1000f, -356f, -2500f)))).d));
    global0 = vec3<bool>(!global0.x, true, false);
    global0 = vec3<bool>(any(!(!select(vec3<bool>(false, global1.x, false), vec3<bool>(false, global1.x, global0.x), global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(456f, 544f, false)))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -700f), _wgslsmith_f_op_f32(-1f))), !global0.x);
    global0 = select(select(select(vec3<bool>(false, true, global0.x), select(select(vec3<bool>(global0.x, true, global1.x), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global1.x, false)), vec3<bool>(false, true, global0.x), global0.x), vec3<bool>(func_4(-1874f), true, true)), select(vec3<bool>(true, true, true), !vec3<bool>(global1.x, true, false), global1.x), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), select(vec3<bool>(global0.x, global1.x, global1.x), vec3<bool>(global0.x, true, true), vec3<bool>(global1.x, global0.x, false)))), !vec3<bool>(global1.x, _wgslsmith_f_op_f32(func_1()) == _wgslsmith_f_op_f32(round(512f)), global0.x), global1.x);
    var var_0 = !global0.yy;
    let var_1 = vec4<u32>(~(~15734u), ~41785u, (select(0u, u_input.a, func_2(vec4<f32>(1000f, -614f, 729f, -258f)).a.a) | u_input.a) & u_input.a, u_input.a);
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), -809f, _wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(-1000f + 2517f)))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(1u, -_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i ^ u_input.c, abs(21285i)), max(1i, u_input.c ^ -1592i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1782f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(304f)))));
}

