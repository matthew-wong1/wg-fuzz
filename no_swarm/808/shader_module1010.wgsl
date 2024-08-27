struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_3,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(2147483647i, vec4<f32>(435f, -1596f, 276f, -120f), vec2<i32>(6910i, -47667i), 16585i), Struct_1(-22688i, vec4<f32>(-2306f, 1000f, -468f, 238f), vec2<i32>(-71727i, 16434i), -49152i), Struct_1(0i, vec4<f32>(-976f, -1323f, -311f, -1000f), vec2<i32>(-815i, 17471i), 2147483647i), Struct_1(-16143i, vec4<f32>(-290f, 1496f, 253f, -567f), vec2<i32>(-12531i, 4461i), 28502i), Struct_1(43370i, vec4<f32>(2140f, 708f, -714f, 741f), vec2<i32>(2147483647i, -11204i), 42021i), Struct_1(0i, vec4<f32>(1562f, -1008f, -234f, -941f), vec2<i32>(-9821i, 17276i), -53021i), Struct_1(33255i, vec4<f32>(166f, -434f, -1037f, -731f), vec2<i32>(59465i, 0i), 27574i), Struct_1(14148i, vec4<f32>(-715f, -1093f, 861f, 326f), vec2<i32>(1i, 1i), i32(-2147483648)), Struct_1(2147483647i, vec4<f32>(-346f, 1000f, 543f, 2585f), vec2<i32>(i32(-2147483648), 1i), 2147483647i));

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(vec2<u32>(1u, 4294967295u), 9100i, vec3<f32>(431f, 3185f, 400f), vec2<bool>(false, false), Struct_1(0i, vec4<f32>(245f, 3212f, -112f, 461f), vec2<i32>(i32(-2147483648), -21761i), 28697i)), Struct_3(vec2<u32>(32481u, 31133u), 45463i, vec3<f32>(-221f, -205f, 1095f), vec2<bool>(true, false), Struct_1(5306i, vec4<f32>(-701f, 480f, 833f, 969f), vec2<i32>(1i, -13232i), 5926i)), Struct_3(vec2<u32>(1u, 0u), 0i, vec3<f32>(-361f, -163f, -300f), vec2<bool>(true, false), Struct_1(40798i, vec4<f32>(-437f, -422f, 394f, -546f), vec2<i32>(i32(-2147483648), 27421i), 54163i)), Struct_3(vec2<u32>(4294967295u, 4294967295u), -3326i, vec3<f32>(-372f, -142f, 861f), vec2<bool>(false, true), Struct_1(1i, vec4<f32>(-1508f, -1685f, -102f, -234f), vec2<i32>(0i, 0i), 0i)), Struct_3(vec2<u32>(4294967295u, 84672u), 55059i, vec3<f32>(-259f, 991f, -693f), vec2<bool>(false, true), Struct_1(40771i, vec4<f32>(-581f, -1000f, 860f, 613f), vec2<i32>(-1i, 30290i), -1i)), Struct_3(vec2<u32>(0u, 4294967295u), 1i, vec3<f32>(631f, -816f, 1509f), vec2<bool>(true, false), Struct_1(-43998i, vec4<f32>(-384f, 760f, 1000f, -724f), vec2<i32>(2147483647i, 1i), 9760i)), Struct_3(vec2<u32>(1u, 0u), -34515i, vec3<f32>(-1000f, -1920f, 496f), vec2<bool>(true, true), Struct_1(0i, vec4<f32>(1000f, 186f, -105f, -1357f), vec2<i32>(0i, 2147483647i), -17624i)), Struct_3(vec2<u32>(34845u, 32811u), 28101i, vec3<f32>(-1133f, 1000f, -1187f), vec2<bool>(false, false), Struct_1(i32(-2147483648), vec4<f32>(-904f, 380f, 1632f, -1686f), vec2<i32>(2147483647i, -1i), -32341i)), Struct_3(vec2<u32>(56282u, 1u), i32(-2147483648), vec3<f32>(535f, 541f, -1153f), vec2<bool>(true, false), Struct_1(i32(-2147483648), vec4<f32>(-1000f, -1155f, 184f, -559f), vec2<i32>(-16179i, 0i), -1i)));

var<private> global3: array<vec3<u32>, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<f32>) -> vec3<bool> {
    global1 = array<Struct_1, 9>();
    let var_0 = Struct_1(arg_0.b, vec4<f32>(-907f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(min(-623f, -237f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(247f, arg_1.c.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0.c.x))))), ~(~abs(vec2<i32>(arg_1.e.a, arg_1.b))), abs(i32(-1i) * -2147483647i) << (_wgslsmith_div_u32(4294967295u, max(0u, arg_0.a.x << (49497u % 32u))) % 32u));
    return !select(select(!select(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_1.d.x), vec3<bool>(arg_1.d.x, arg_0.d.x, arg_1.d.x), true), !(!vec3<bool>(arg_1.d.x, false, false)), !(!vec3<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x))), vec3<bool>(arg_0.d.x, any(arg_1.d), _wgslsmith_f_op_f32(abs(-1000f)) != _wgslsmith_f_op_f32(-arg_1.c.x)), true);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    global3 = array<vec3<u32>, 12>();
    var var_0 = 1i;
    let var_1 = Struct_2(~firstLeadingBit(~abs(33064u)), Struct_1(0i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(219f, 1363f, 1175f, -1473f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(667f, -550f, 133f, 453f))))), reverseBits(vec2<i32>(-1i) * -vec2<i32>(1i, -42331i)), 1i));
    var var_2 = var_1.a >= var_1.a;
    let var_3 = var_1.a;
    return u_input.a.x;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = ~min(_wgslsmith_mult_i32(select(0i, u_input.a.x, arg_2.x), 2147483647i) << (select(abs(4294967295u), ~123379u, false) % 32u), arg_1.x);
    let var_1 = vec4<i32>(func_4(!(!arg_2.x && true), !func_3(Struct_3(vec2<u32>(0u, 18671u), u_input.a.x, vec3<f32>(arg_3.x, arg_0, arg_0), vec2<bool>(true, arg_2.x), global1[_wgslsmith_index_u32(34975u, 9u)]), global2[_wgslsmith_index_u32(~100741u, 9u)], arg_3)), -arg_1.x, u_input.a.x, 1i);
    let var_2 = Struct_4(vec3<f32>(-1700f, -163f, _wgslsmith_f_op_f32(-arg_3.x)), Struct_3(_wgslsmith_sub_vec2_u32(vec2<u32>(~105507u, 1u), max(vec2<u32>(1u, 1u), vec2<u32>(0u, 1u))), var_1.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), -1401f, arg_0))), global0[_wgslsmith_index_u32(abs(~1788u), 17u)], Struct_1(abs(_wgslsmith_add_i32(arg_1.x, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, 368f, -283f, arg_3.x)), _wgslsmith_mult_vec2_i32(arg_1 | vec2<i32>(var_1.x, u_input.a.x), -var_1.xx), 0i)), Struct_3(~_wgslsmith_sub_vec2_u32(~vec2<u32>(70854u, 54702u), vec2<u32>(1u, 1u)), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_1.x, 1i) | 0i, var_1.x), vec3<f32>(arg_3.x, arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, 958f)))), global0[_wgslsmith_index_u32(62635u, 17u)], Struct_1(arg_1.x, vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(-1000f)), 609f, _wgslsmith_f_op_f32(trunc(874f))), -u_input.a ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -27863i), vec2<i32>(u_input.a.x, var_1.x)), ~(-var_1.x))), var_1.zw, Struct_2(4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~(~4294967295u)), 9u)]));
    var var_3 = arg_2;
    let var_4 = ~vec2<u32>(var_2.b.a.x & ~max(var_2.e.a, var_2.b.a.x), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(var_2.b.a.x, var_2.c.a.x), vec2<u32>(var_2.b.a.x, 4294967295u))));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2589f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_3.x, 1278f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1053f)), _wgslsmith_f_op_f32(-262f - arg_0))))), -646f), vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), arg_0, 1000f));
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> u32 {
    global3 = array<vec3<u32>, 12>();
    global3 = array<vec3<u32>, 12>();
    var var_0 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 645f, 346f), vec3<f32>(arg_0.x, 681f, -1097f)) * _wgslsmith_div_vec3_f32(arg_0.wzz, arg_0.yyy)) - arg_0.yyx), vec3<f32>(-1114f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.x, -2412f)))), -134f)), Struct_3(~reverseBits(vec2<u32>(42468u, 1u)), i32(-1i) * -1i, _wgslsmith_f_op_vec3_f32(vec3<f32>(303f, -459f, _wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_2(-1000f, u_input.a, vec4<bool>(false, true, true, arg_1), arg_0.xx))))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 19440u, 16667u, 36630u)), vec4<u32>(1u, 1u, 1u, 1u)), 17u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, 53037u), 9u)]), Struct_3(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(743u, 4294967295u, 1u, 18362u), vec4<u32>(107921u, 31354u, 38751u, 34546u)), firstLeadingBit(_wgslsmith_mod_u32(1u, 52052u))), -2844i, vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.x, -313f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1919f))), arg_0.x), func_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 21661u, 21585u), max(vec3<u32>(7731u, 28184u, 25063u), global3[_wgslsmith_index_u32(4294967295u, 12u)])), 9u)], Struct_3(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 14160u)), ~u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-359f, arg_0.x, 1112f) + vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), !vec2<bool>(false, arg_1), global1[_wgslsmith_index_u32(1u, 9u)]), vec2<f32>(arg_0.x, _wgslsmith_div_f32(-729f, arg_0.x))).yy, Struct_1(_wgslsmith_mod_i32(~1324i, min(u_input.a.x, u_input.a.x)), arg_0, u_input.a, 2147483647i)), ~abs(abs(vec2<i32>(-1i, u_input.a.x))) ^ vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(select(0i, u_input.a.x, arg_1), func_4(false, vec3<bool>(arg_1, arg_1, arg_1)))), Struct_2(max(~91158u, 21605u), Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(27599i, -29235i, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, -4798i, u_input.a.x, -2147483647i))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, -2716f, arg_0.x, arg_0.x)), vec2<i32>(-2147483647i, u_input.a.x), u_input.a.x)));
    global1 = array<Struct_1, 9>();
    let var_1 = var_0.b.e;
    return _wgslsmith_mult_u32(38294u, min(reverseBits(~54760u), _wgslsmith_mult_u32(max(17688u | var_0.c.a.x, _wgslsmith_sub_u32(var_0.b.a.x, var_0.c.a.x)), ~var_0.b.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec2<u32>(19996u, 0u), vec2<u32>(1u, 1u) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(16921u, 50409u, 164479u, 0u), vec4<u32>(4294967295u, 37316u, 1u, 11957u)), ~0u)), global3[_wgslsmith_index_u32(~(1u & func_1(vec4<f32>(-347f, -499f, -317f, 1208f), true)), 12u)], _wgslsmith_f_op_vec3_f32(func_2(-395f, abs(reverseBits(vec2<i32>(u_input.a.x, u_input.a.x))) ^ abs(-u_input.a), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(201f, 1344f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(112f, -1027f) - vec2<f32>(1266f, -750f)))))));
}

