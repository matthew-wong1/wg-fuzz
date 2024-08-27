struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-1824f, -211f, 1823f, -1511f, 1013f, 1270f, 1260f, -261f, 465f, 748f, 1211f, 445f, 803f, -721f, 1594f, 705f, 370f, 885f, 1000f, 620f, 254f, -707f, 1000f, -429f, -450f, 1909f, 598f, -250f, 500f);

var<private> global1: vec3<u32> = vec3<u32>(1u, 1u, 4294967295u);

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(4294967295u, vec3<f32>(755f, -503f, -604f), 2147483647i, -398f, false), vec2<bool>(true, true)), Struct_2(Struct_1(73529u, vec3<f32>(842f, 181f, -683f), 2147483647i, -1975f, false), vec2<bool>(true, false)), Struct_2(Struct_1(0u, vec3<f32>(628f, 640f, 1539f), 0i, -381f, true), vec2<bool>(true, true)), Struct_2(Struct_1(36600u, vec3<f32>(279f, -1000f, 414f), 34753i, 387f, true), vec2<bool>(false, false)), Struct_2(Struct_1(0u, vec3<f32>(327f, 1025f, -756f), i32(-2147483648), 295f, true), vec2<bool>(false, false)), Struct_2(Struct_1(1u, vec3<f32>(-557f, -153f, -1191f), 198i, -627f, false), vec2<bool>(false, false)), Struct_2(Struct_1(49180u, vec3<f32>(1000f, 826f, 1000f), -27094i, -966f, true), vec2<bool>(true, false)), Struct_2(Struct_1(1u, vec3<f32>(-117f, 1247f, 2153f), 7576i, -1681f, false), vec2<bool>(false, false)), Struct_2(Struct_1(4294967295u, vec3<f32>(-236f, -319f, 1486f), -1i, -270f, false), vec2<bool>(false, false)), Struct_2(Struct_1(64483u, vec3<f32>(574f, -1286f, -1401f), -1i, 1712f, true), vec2<bool>(true, false)), Struct_2(Struct_1(4799u, vec3<f32>(-1203f, 1018f, -1000f), -1615i, -544f, false), vec2<bool>(false, true)), Struct_2(Struct_1(0u, vec3<f32>(1944f, -110f, -722f), -18067i, 310f, true), vec2<bool>(true, false)), Struct_2(Struct_1(4294967295u, vec3<f32>(1007f, -1231f, -1000f), 7830i, 2455f, false), vec2<bool>(true, false)), Struct_2(Struct_1(22871u, vec3<f32>(1990f, 1139f, 1264f), -1082i, 153f, false), vec2<bool>(false, true)), Struct_2(Struct_1(3454u, vec3<f32>(-314f, 436f, 470f), 18673i, 895f, true), vec2<bool>(false, true)), Struct_2(Struct_1(4294967295u, vec3<f32>(-124f, 1397f, 694f), -1i, -1000f, false), vec2<bool>(false, true)), Struct_2(Struct_1(65939u, vec3<f32>(942f, 777f, -1013f), -2589i, 1322f, false), vec2<bool>(false, true)), Struct_2(Struct_1(4294967295u, vec3<f32>(109f, 1033f, 1350f), 48399i, -1000f, true), vec2<bool>(false, true)), Struct_2(Struct_1(11883u, vec3<f32>(2353f, 692f, -272f), -2334i, 1000f, true), vec2<bool>(true, true)));

var<private> global3: vec2<i32> = vec2<i32>(2147483647i, -23508i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>) -> vec3<f32> {
    global1 = firstTrailingBit(select(~min(vec3<u32>(0u, 1u, u_input.b.x) << (vec3<u32>(67396u, 53750u, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, arg_1.a.a, 4294967295u) << (vec3<u32>(global1.x, arg_1.a.a, 71246u) % vec3<u32>(32u))), ~(~vec3<u32>(35607u, 47692u, global1.x)), vec3<bool>(true, global3.x > abs(global3.x), arg_1.b.x)));
    let var_0 = ~(-(select(vec4<i32>(-2147483647i, global3.x, -1i, 17401i), vec4<i32>(u_input.c, global3.x, 42658i, 2147483647i) >> (vec4<u32>(u_input.b.x, 7767u, u_input.d, 0u) % vec4<u32>(32u)), !arg_0) ^ _wgslsmith_div_vec4_i32(min(vec4<i32>(global3.x, u_input.c, -2147483647i, -2147483647i), vec4<i32>(0i, arg_1.a.c, global3.x, 52808i)), vec4<i32>(2147483647i, u_input.c, arg_1.a.c, arg_1.a.c))));
    return arg_1.a.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> bool {
    let var_0 = Struct_2(Struct_1(min(arg_1.a, firstTrailingBit(_wgslsmith_div_u32(arg_0.x, 26865u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_1.b, vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 29u)], 492f, arg_1.b.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, 2086f, 537f) + _wgslsmith_f_op_vec3_f32(-arg_1.b))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, -16740i, 2147483647i, u_input.c)), -vec4<i32>(891i, 2147483647i, -14656i, -2147483647i)), global3.x), -1275f, arg_1.e), select(select(!(!vec2<bool>(true, arg_1.e)), vec2<bool>(arg_1.e, true), vec2<bool>(true, arg_1.e)), vec2<bool>(firstTrailingBit(0u) > 15931u, true), vec2<bool>(any(vec4<bool>(arg_1.e, arg_1.e, arg_1.e, false)) | true, false)));
    global1 = vec3<u32>(4294967295u, min(arg_0.x, ~_wgslsmith_mult_u32(u_input.d, _wgslsmith_mult_u32(var_0.a.a, 0u))), 38779u);
    global0 = array<f32, 29>();
    let var_1 = Struct_1(0u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) * -1200f), arg_1.d, var_0.a.b.x), _wgslsmith_dot_vec4_i32(-vec4<i32>(i32(-1i) * -34567i, -11298i, global3.x, arg_2), reverseBits(abs(vec4<i32>(-46888i, 5948i, 1i, var_0.a.c)) >> (abs(vec4<u32>(4294967295u, 4294967295u, 63092u, u_input.b.x)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0.a.a, 29u)])))))), var_0.a.a >= ~(~var_0.a.a));
    global1 = ~(~vec3<u32>(~countOneBits(arg_1.a), 35771u, _wgslsmith_sub_u32(0u, ~var_0.a.a)));
    return true;
}

fn func_2() -> f32 {
    global0 = array<f32, 29>();
    var var_0 = Struct_1(min(global1.x, 54338u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-185f))), _wgslsmith_f_op_f32(f32(-1f) * -1581f), global0[_wgslsmith_index_u32(1u, 29u)]) + vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 29u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4534u, 29u)], 1282f) + -646f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1996f), -658f)))), min(u_input.c, _wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.c, global3.x) ^ vec2<i32>(0i, u_input.c)), vec2<i32>(firstTrailingBit(20890i), min(2147483647i, -24967i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~4294967295u >> (0u % 32u), 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(78596u, 29u)] - 939f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(45788u, 29u)])))), func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, global1.x, 11917u), vec4<u32>(4294967295u, 1u, u_input.a, u_input.d)), 33612u), u_input.b, vec2<u32>(_wgslsmith_sub_u32(76923u, 28469u), global1.x)), Struct_1(0u, _wgslsmith_f_op_vec3_f32(func_3(all(vec2<bool>(true, false)), global2[_wgslsmith_index_u32(~u_input.b.x, 19u)], vec4<bool>(false, true, false, false))), _wgslsmith_sub_i32(u_input.c, ~(-2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1259f), true), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1798f, global0[_wgslsmith_index_u32(106626u, 29u)])) + _wgslsmith_f_op_f32(-196f - 1000f)))));
    var var_1 = var_0.b.zy;
    global1 = ~vec3<u32>(global1.x, _wgslsmith_sub_u32(max(u_input.a, 4294967295u), var_0.a) << (0u % 32u), global1.x);
    let var_2 = Struct_3(4294967295u, vec3<i32>(select(global3.x, select(countOneBits(21584i), _wgslsmith_add_i32(u_input.c, -24196i), false), false), -_wgslsmith_clamp_i32(~(-1i), var_0.c, _wgslsmith_add_i32(-2147483647i, 25245i)), firstLeadingBit(-4074i)), firstLeadingBit(vec4<u32>(var_0.a, 31832u, u_input.b.x, _wgslsmith_add_u32(global1.x, var_0.a) >> (global1.x % 32u))));
    return _wgslsmith_f_op_f32(var_0.b.x - var_0.b.x);
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = select(min(vec4<u32>(firstLeadingBit(21788u), 0u, ~arg_1, 0u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, u_input.a), global1.zz)), firstTrailingBit(vec4<u32>(1u, arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global1.x, 1u), vec3<u32>(4294967295u, 1u, arg_2.a)), _wgslsmith_clamp_u32(0u, 1u, arg_1)))), abs(abs(~(~vec4<u32>(1u, u_input.b.x, arg_1, 35241u)))), select(false, true, arg_2.e));
    let var_1 = -162f;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(~1u, 29u)], _wgslsmith_f_op_f32(floor(arg_2.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_vec3_f32(func_3(true, Struct_2(arg_2, vec2<bool>(false, arg_2.e)), vec4<bool>(arg_2.e, arg_2.e, false, arg_2.e))).x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(-404f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_1, 29u)]))))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 29u)] + _wgslsmith_f_op_f32(trunc(-415f)))));
    let var_3 = arg_2.e;
    let var_4 = arg_2;
    return Struct_1(var_0.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(arg_2.b))), vec3<f32>(_wgslsmith_f_op_f32(step(-1310f, arg_2.d)), 899f, _wgslsmith_f_op_f32(trunc(var_1)))), abs(max(firstTrailingBit(u_input.c) >> (min(arg_2.a, 1u) % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, -56901i, arg_2.c, global3.x), -vec4<i32>(0i, -12088i, -1i, 9565i)))), 1960f, true && !(_wgslsmith_f_op_vec3_f32(func_3(true, Struct_2(Struct_1(4294967295u, var_2.zyz, -36039i, global0[_wgslsmith_index_u32(arg_2.a, 29u)], true), vec2<bool>(var_4.e, arg_2.e)), vec4<bool>(true, var_4.e, true, false))).x < _wgslsmith_f_op_f32(var_4.b.x * 636f)));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, global0[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.d, 29u)]))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(47881u, 29u)])))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, 1u), vec4<u32>(global1.x, global1.x, global1.x, 4294967295u))), 29u)] - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a << (global1.x % 32u), 29u)]))));
    let var_1 = func_5(_wgslsmith_f_op_f32(func_2()), ~global1.x, Struct_1(~select(_wgslsmith_clamp_u32(70757u, 15869u, 3078u), global1.x, select(true, true, false)), _wgslsmith_div_vec3_f32(var_0.www, var_0.xwy), min(select(firstTrailingBit(1274i), ~u_input.c, true), _wgslsmith_clamp_i32(-global3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, u_input.c), vec2<i32>(global3.x, global3.x)), u_input.c | global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(663f, 891f)) + -1361f), _wgslsmith_add_u32(abs(u_input.d), 5511u) <= 0u), abs(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(global3.x, 2147483647i), 2147483647i), u_input.c)));
    var var_2 = !(!(!select(vec2<bool>(false, var_1.e), vec2<bool>(var_1.e, var_1.e), vec2<bool>(true, false))));
    let var_3 = ~(~reverseBits(select(vec4<u32>(89667u, 4294967295u, 46326u, var_1.a), ~vec4<u32>(1u, 13217u, 129470u, 0u), func_5(-846f, 4294967295u, var_1, vec2<i32>(1i, 1641i)).e)));
    global2 = array<Struct_2, 19>();
    return func_5(109f, 52928u, var_1, vec2<i32>(0i << (0u % 32u), -u_input.c | min(~global3.x, -2147483647i))).d;
}

fn func_6(arg_0: vec3<f32>) -> Struct_4 {
    let var_0 = ~(-(~vec3<i32>(-u_input.c, func_5(global0[_wgslsmith_index_u32(1294u, 29u)], global1.x, Struct_1(global1.x, arg_0, u_input.c, arg_0.x, false), vec2<i32>(11555i, 5390i)).c, -7373i)));
    global2 = array<Struct_2, 19>();
    let var_1 = Struct_4(arg_0);
    let var_2 = vec2<i32>(global3.x, 0i);
    let var_3 = ~_wgslsmith_add_u32(global1.x, ~_wgslsmith_sub_u32(global1.x & global1.x, _wgslsmith_sub_u32(0u, global1.x)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -20311i;
    global3 = abs(vec2<i32>(-1i ^ u_input.c, -49937i & _wgslsmith_dot_vec4_i32(vec4<i32>(-2586i, global3.x, u_input.c, -20362i), vec4<i32>(24426i, 51363i, u_input.c, u_input.c))) | _wgslsmith_add_vec2_i32(firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.c, u_input.c))), firstTrailingBit(vec2<i32>(u_input.c, 45429i))));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(u_input.d, _wgslsmith_div_u32(global1.x, 1u)), u_input.b.x, u_input.b.x);
    var var_2 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1425f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global1.x, 29u)])))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1237f, global0[_wgslsmith_index_u32(global1.x, 29u)], global0[_wgslsmith_index_u32(84558u, 29u)]) * vec3<f32>(1000f, -1916f, 235f)))))));
    let var_3 = abs(firstTrailingBit(vec4<u32>(~4294967295u, u_input.a, _wgslsmith_mod_u32(global1.x, 0u), _wgslsmith_div_u32(var_1.x, u_input.b.x))) >> (firstLeadingBit(~vec4<u32>(0u, global1.x, 34536u, 55677u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-301f, _wgslsmith_f_op_f32(f32(-1f) * -1125f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(true, global2[_wgslsmith_index_u32(0u, 19u)], vec4<bool>(false, true, true, true))).x)), abs(-abs(vec3<i32>(-1i, u_input.c, 1i))));
}

