struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-1000f, -1135f, -703f), vec3<f32>(752f, -615f, -341f), vec3<f32>(-1625f, 401f, -1272f), vec3<f32>(-221f, 1466f, 659f), vec3<f32>(1593f, -410f, 1000f), vec3<f32>(-614f, -698f, 1143f), vec3<f32>(-492f, 770f, 232f), vec3<f32>(864f, -159f, -212f), vec3<f32>(-762f, -254f, -431f), vec3<f32>(247f, 1211f, -1176f), vec3<f32>(1837f, 1898f, -768f), vec3<f32>(-910f, -342f, -1000f), vec3<f32>(-1052f, 1006f, 564f), vec3<f32>(-1000f, -1567f, -419f), vec3<f32>(1135f, 1440f, -1000f), vec3<f32>(-1000f, 552f, -346f), vec3<f32>(-1091f, -873f, -1000f), vec3<f32>(-387f, -1354f, -485f), vec3<f32>(177f, -1531f, 611f), vec3<f32>(1707f, -296f, 170f), vec3<f32>(-759f, 850f, -550f), vec3<f32>(1821f, 877f, -1000f), vec3<f32>(-930f, 354f, 1374f), vec3<f32>(1000f, -339f, -1000f), vec3<f32>(674f, 1117f, 1000f), vec3<f32>(1134f, 1705f, 1000f), vec3<f32>(-583f, 256f, -1679f), vec3<f32>(1537f, -1413f, 825f));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_sub_u32(~arg_0.c.b.x, 1u);
    var var_1 = _wgslsmith_div_vec2_u32(u_input.d.zx, ~(vec2<u32>(~3632u, u_input.e) ^ ~(u_input.d.yy << (u_input.d.zz % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -244f));
    var_1 = arg_0.c.b.xw;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(433f, arg_0.c.c, 351f, 1397f) - vec4<f32>(1000f, -482f, arg_0.c.c, arg_0.d.c)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.c, arg_0.c.c, arg_0.d.d.x, 388f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-891f, 463f, -184f, -1868f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-883f, -904f, arg_0.c.d.x, arg_0.d.d.x)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)))))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: i32) -> Struct_2 {
    global1 = array<vec3<f32>, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2507f, 485f, 648f, -819f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -916f), -1000f, _wgslsmith_f_op_f32(712f - -1735f), _wgslsmith_f_op_f32(max(-121f, -874f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -1223f, 1237f, -1140f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -461f, -502f, -337f) - vec4<f32>(118f, var_0.x, -422f, -749f)), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 116f, var_0.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(412f, var_0.x, 734f, 812f))), arg_0)) - _wgslsmith_f_op_vec4_f32(func_3(Struct_2(3667i, -32813i, Struct_1(vec3<i32>(64889i, -17660i, arg_2), vec4<u32>(4294967295u, 24822u, 4294967295u, 76849u), 279f, var_0.yz), Struct_1(vec3<i32>(u_input.b.x, arg_2, -2147483647i), vec4<u32>(3512u, u_input.c, u_input.d.x, 1u), -186f, vec2<f32>(var_0.x, var_0.x)), 20627i)))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -879f, var_0.x, 2372f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 526f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, 1426f), vec4<bool>(true, arg_0.x, true, false))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -466f), vec4<f32>(-163f, 1026f, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -445f, var_0.x, 1454f), vec4<f32>(-1386f, 1251f, var_0.x, var_0.x))))), 1049f != var_0.x));
    global0 = countOneBits(u_input.c);
    let var_2 = ~max(u_input.d, ~select(~vec3<u32>(u_input.c, u_input.e, u_input.d.x), ~u_input.d, any(vec3<bool>(true, true, arg_0.x))));
    return Struct_2(u_input.a.x, -(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_sub_i32(u_input.a.x, -43057i)) >> (44749u % 32u)), Struct_1(-select(~u_input.a.yzy, -vec3<i32>(-30998i, -2147483647i, arg_2), any(arg_0.zw)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, var_2.x, 4294967295u, var_2.x) | vec4<u32>(u_input.e, 95123u, 0u, 43259u), ~vec4<u32>(var_2.x, u_input.d.x, var_2.x, 1u), select(vec4<bool>(arg_0.x, true, true, arg_0.x), arg_0, true)), countOneBits(vec4<u32>(0u, 1u, 1u, u_input.c) << (vec4<u32>(37907u, u_input.e, 1u, 42113u) % vec4<u32>(32u)))), var_0.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(1111f, 684f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(783f + var_1.x), _wgslsmith_f_op_f32(-var_0.x)))), Struct_1(u_input.a.xzz, _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.d.x, firstLeadingBit(44840u), 62939u, firstLeadingBit(u_input.e)), vec4<u32>(var_2.x, var_2.x, firstLeadingBit(95240u), 71359u | var_2.x)), 444f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -273f), var_0.x)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_2 >> (44236u % 32u), select(_wgslsmith_sub_i32(u_input.b.x, arg_2), 2147483647i, false), 2147483647i), ~(~(-arg_2))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = func_2(vec4<bool>(arg_0.x || (any(arg_0.yz) || any(vec3<bool>(false, arg_0.x, false))), _wgslsmith_f_op_f32(-1489f + -1208f) > _wgslsmith_f_op_f32(arg_1.d.c + arg_1.c.d.x), true, arg_0.x && true), false, _wgslsmith_dot_vec2_i32(arg_1.c.a.xy, u_input.a.ww & countOneBits(_wgslsmith_add_vec2_i32(u_input.a.yw, vec2<i32>(u_input.b.x, 1i)))));
    let var_1 = func_2(vec4<bool>(all(vec2<bool>(arg_0.x, arg_0.x)), !any(vec4<bool>(arg_0.x, arg_0.x, true, false)), !any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), false), true, -22303i).d;
    let var_2 = arg_1;
    let var_3 = vec2<bool>(arg_0.x, arg_0.x);
    global1 = array<vec3<f32>, 28>();
    return func_2(select(select(vec4<bool>(false, true, var_3.x | false, true), vec4<bool>(false, all(vec4<bool>(false, var_3.x, true, true)), true, !arg_0.x), any(var_3)), select(vec4<bool>(false, var_3.x | false, true, false), !select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(false, true, var_3.x, false), vec4<bool>(false, true, false, true)), !(var_0.d.c <= -1000f)), true), !var_3.x, firstLeadingBit(_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(7744i, -29085i), u_input.b)), ~vec2<i32>(2147483647i, u_input.b.x)))).c;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec2<i32>, arg_3: f32) -> u32 {
    global1 = array<vec3<f32>, 28>();
    let var_0 = -1626f;
    global0 = _wgslsmith_sub_u32(9416u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.b.x, ~_wgslsmith_mult_u32(u_input.d.x, 25477u)), arg_0.b.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-857f, arg_0.d.x, -933f))))))));
    let var_2 = Struct_2(arg_0.a.x, u_input.a.x, arg_0, func_4(vec3<bool>(true, true, true), Struct_2(firstLeadingBit(_wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(arg_0.a.x, -1i))), i32(-1i) * -u_input.b.x, arg_0, func_4(vec3<bool>(false, true, true), Struct_2(u_input.b.x, u_input.b.x, Struct_1(vec3<i32>(u_input.b.x, -2147483647i, arg_0.a.x), arg_0.b, 480f, vec2<f32>(var_1.x, -1150f)), Struct_1(vec3<i32>(2147483647i, arg_0.a.x, -29885i), arg_0.b, arg_3, arg_0.d), 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(34501i, arg_0.a.x, 27266i, u_input.b.x), vec4<i32>(-45098i, u_input.b.x, arg_2.x, -5338i)), firstLeadingBit(arg_0.b.x)), arg_0.a.x), arg_2.x | 4205i, ~arg_0.b.x), arg_0.a.x);
    return u_input.e | ~4294967295u;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global0 = 95502u;
    global0 = func_5(func_4(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), arg_1.d.b.x == 17092u), func_2(vec4<bool>(true, 16961i <= arg_1.d.a.x, any(vec3<bool>(false, true, true)), true), false, arg_2), ~arg_2, arg_1.d.b.x), _wgslsmith_f_op_f32(722f * _wgslsmith_f_op_f32(ceil(arg_1.d.d.x))), arg_1.d.a.xy, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(arg_2, -48615i, Struct_1(vec3<i32>(arg_2, u_input.a.x, -2147483647i), vec4<u32>(arg_0, 0u, 50169u, arg_0), 2067f, vec2<f32>(arg_1.d.d.x, -1361f)), arg_1.c, 54479i))).x))));
    var var_0 = func_2(select(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), !vec4<bool>(all(vec2<bool>(false, false)), true, true, true), any(vec4<bool>(true, true, true, true))), false, firstLeadingBit(0i)).d;
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(arg_1.c.b.x, ~(u_input.c >> (_wgslsmith_mult_u32(arg_1.d.b.x, arg_0) % 32u))), 0u, arg_0);
    var_0 = Struct_1(u_input.a.yzw, min(arg_1.d.b, arg_1.c.b) ^ (vec4<u32>(~var_1.x, select(arg_0, u_input.c, false), arg_0, firstLeadingBit(arg_0)) >> (var_0.b % vec4<u32>(32u))), var_0.d.x, _wgslsmith_f_op_vec2_f32(step(func_2(vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, false, false)), -var_0.a.x).c.d, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, _wgslsmith_f_op_f32(var_0.d.x + -2004f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.d.x, -2976f) + arg_1.c.d))))));
    return Struct_2(1i, arg_2, Struct_1(firstLeadingBit(u_input.a.yyy), ~vec4<u32>(5063u, 24539u, ~var_1.x, 52112u), _wgslsmith_f_op_f32(floor(arg_1.c.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.c, -1572f) * vec2<f32>(arg_1.d.c, -262f)) - vec2<f32>(_wgslsmith_f_op_f32(var_0.c + arg_1.c.c), 1295f))), func_4(vec3<bool>(true, !(78672u < u_input.c), (0u < var_1.x) || true), func_2(select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false))), true, 16697i), -var_0.a.x, ~_wgslsmith_dot_vec4_u32(select(var_0.b, vec4<u32>(0u, u_input.d.x, u_input.d.x, 0u), vec4<bool>(false, false, false, true)), arg_1.c.b)), firstTrailingBit(1i));
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    let var_0 = !(!(!vec3<bool>(all(vec2<bool>(false, true)), true, true)));
    let var_1 = 4079u;
    var var_2 = Struct_2(arg_0.a ^ 9765i, arg_0.e >> (abs(58481u) % 32u), func_4(!select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, true, true), select(vec3<bool>(var_0.x, var_0.x, false), var_0, var_0)), arg_0, func_4(select(!var_0, var_0, !var_0), Struct_2(min(arg_1.x, arg_0.b), ~arg_1.x, arg_0.d, func_1(4294967295u, arg_0, arg_0.c.a.x).d, ~0i), 1i, u_input.c).a.x, ~1u | u_input.e), arg_0.d, func_4(vec3<bool>(!(u_input.e >= arg_0.d.b.x), !var_0.x, select(!var_0.x, var_0.x, any(vec2<bool>(var_0.x, true)))), Struct_2(_wgslsmith_dot_vec3_i32(arg_0.c.a | vec3<i32>(2147483647i, -24852i, arg_0.d.a.x), ~vec3<i32>(-1i, 1i, u_input.a.x)), 1i << (_wgslsmith_div_u32(u_input.c, 47743u) % 32u), Struct_1(-arg_1, ~vec4<u32>(4294967295u, u_input.c, arg_0.c.b.x, arg_0.d.b.x), _wgslsmith_f_op_f32(-arg_0.c.c), _wgslsmith_f_op_vec2_f32(arg_0.c.d - arg_0.d.d)), arg_0.d, arg_1.x), arg_0.b, 0u).a.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_2.d.d, var_2.c.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(countOneBits(arg_0.c.b.x), func_2(vec4<bool>(false, true, true, false), var_0.x, -1i), u_input.a.x).d.d + vec2<f32>(1f, 1f)))));
    var var_4 = Struct_1(func_2(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), any(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, true, false, false), var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, true, true), true))), -2147483647i).d.a, arg_0.c.b, -466f, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.c, -1790f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, 606f))))));
    return var_4.d.x;
}

fn func_7(arg_0: f32, arg_1: bool, arg_2: u32) -> Struct_2 {
    global1 = array<vec3<f32>, 28>();
    let var_0 = func_1(max(0u, ~1u) >> (~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, 31036u), u_input.e) % 32u), func_2(vec4<bool>(!any(vec3<bool>(true, true, arg_1)), ~(-7567i) == u_input.b.x, !any(vec3<bool>(true, true, true)), false), true, _wgslsmith_sub_i32(~_wgslsmith_sub_i32(9511i, u_input.a.x), abs(func_1(arg_2, Struct_2(1156i, 0i, Struct_1(vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), vec4<u32>(arg_2, 0u, 4294967295u, 1u), -648f, vec2<f32>(arg_0, arg_0)), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a.x), vec4<u32>(arg_2, arg_2, 17634u, 52581u), arg_0, vec2<f32>(1674f, -402f)), u_input.a.x), u_input.a.x).a))), i32(-1i) * -(-836i ^ -u_input.b.x));
    global1 = array<vec3<f32>, 28>();
    global0 = 1u;
    return func_1(u_input.d.x, func_1(~1u, func_2(!(!vec4<bool>(arg_1, true, false, false)), false, 2147483647i), _wgslsmith_sub_i32(-11803i, _wgslsmith_sub_i32(abs(u_input.a.x), max(17243i, u_input.b.x)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, firstTrailingBit(-var_0.a), -func_1(32174u, Struct_2(2147483647i, 7162i, Struct_1(var_0.d.a, vec4<u32>(var_0.d.b.x, 33451u, var_0.d.b.x, u_input.d.x), arg_0, var_0.c.d), Struct_1(u_input.a.yyw, vec4<u32>(0u, 70552u, var_0.d.b.x, var_0.c.b.x), -1080f, vec2<f32>(arg_0, 327f)), 1i), -3355i).b), vec3<i32>(2147483647i, var_0.e, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(true, true, true));
    var var_1 = func_7(_wgslsmith_f_op_f32(step(-565f, _wgslsmith_f_op_f32(func_6(func_1(_wgslsmith_clamp_u32(59148u, u_input.e, u_input.c), Struct_2(u_input.b.x, 6951i, Struct_1(vec3<i32>(-1358i, 44641i, -51509i), vec4<u32>(1u, 4294967295u, 0u, u_input.d.x), 2040f, vec2<f32>(1834f, 173f)), Struct_1(u_input.a.wzw, vec4<u32>(u_input.e, 0u, u_input.e, 105501u), -337f, vec2<f32>(898f, -1338f)), 1i), u_input.a.x), func_2(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), select(false, true, true), func_2(vec4<bool>(false, true, true, true), true, u_input.b.x).c.a.x).c.a)))), -1000f != func_1(u_input.e, Struct_2(u_input.b.x, abs(2147483647i), Struct_1(vec3<i32>(-6386i, u_input.a.x, -24716i), vec4<u32>(u_input.d.x, 28484u, u_input.e, u_input.c), 1829f, vec2<f32>(-1430f, -663f)), func_4(vec3<bool>(true, true, true), Struct_2(0i, u_input.b.x, Struct_1(u_input.a.wyx, vec4<u32>(u_input.d.x, u_input.e, u_input.e, 26682u), -695f, vec2<f32>(-177f, -1000f)), Struct_1(u_input.a.xzz, vec4<u32>(u_input.e, 4294967295u, 4294967295u, u_input.d.x), -1908f, vec2<f32>(275f, -1077f)), u_input.a.x), 2147483647i, u_input.e), 2147483647i), _wgslsmith_add_i32(u_input.b.x, u_input.b.x) << (1u % 32u)).d.d.x, 4294967295u);
    global1 = array<vec3<f32>, 28>();
    global0 = var_1.c.b.x >> (~(~u_input.e) % 32u);
    let var_2 = abs(vec2<i32>(0i, 1i));
    var var_3 = var_1.c.d.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(func_3(func_7(var_1.c.d.x, false, ~(~countOneBits(4294967295u))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-840f)), 393f))))), u_input.d.x, -26694i);
}

