struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec2<bool>(true, true), 480i, vec3<i32>(33759i, 8803i, -22550i), -1i, -526f), vec3<i32>(-44754i, -2722i, 59882i), Struct_1(vec2<bool>(false, false), 8716i, vec3<i32>(-1i, 2147483647i, -48203i), i32(-2147483648), 995f)), Struct_2(Struct_1(vec2<bool>(false, false), 0i, vec3<i32>(2147483647i, i32(-2147483648), 12534i), 22598i, -488f), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), Struct_1(vec2<bool>(true, false), 20996i, vec3<i32>(0i, 0i, -1i), -1i, -2699f)), Struct_2(Struct_1(vec2<bool>(true, false), 36990i, vec3<i32>(47938i, 30366i, i32(-2147483648)), 33574i, 1318f), vec3<i32>(12464i, 36512i, 2147483647i), Struct_1(vec2<bool>(true, false), i32(-2147483648), vec3<i32>(13101i, -59683i, 62855i), 0i, -558f)), Struct_2(Struct_1(vec2<bool>(false, true), -12862i, vec3<i32>(-2728i, -36156i, -2109i), 4490i, -101f), vec3<i32>(16599i, i32(-2147483648), 2147483647i), Struct_1(vec2<bool>(false, true), -52297i, vec3<i32>(-17626i, 1i, 10038i), 28467i, 1230f)), Struct_2(Struct_1(vec2<bool>(true, true), 68468i, vec3<i32>(2147483647i, -1i, 1i), 1i, 704f), vec3<i32>(-59811i, 2147483647i, i32(-2147483648)), Struct_1(vec2<bool>(false, true), -3617i, vec3<i32>(-2839i, 66370i, -24264i), 0i, 571f)), Struct_2(Struct_1(vec2<bool>(true, false), -19808i, vec3<i32>(0i, -48758i, -34585i), 2147483647i, -128f), vec3<i32>(1i, 10450i, 7876i), Struct_1(vec2<bool>(true, false), 2147483647i, vec3<i32>(1i, i32(-2147483648), -6763i), 2147483647i, -1014f)), Struct_2(Struct_1(vec2<bool>(true, true), 0i, vec3<i32>(0i, 2147483647i, -5111i), 9190i, -1055f), vec3<i32>(-1i, 6641i, 0i), Struct_1(vec2<bool>(false, false), 2147483647i, vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), 2929i, 1508f)), Struct_2(Struct_1(vec2<bool>(true, false), 6340i, vec3<i32>(30623i, -41119i, 0i), 2147483647i, 393f), vec3<i32>(0i, 2147483647i, 1i), Struct_1(vec2<bool>(true, true), 8508i, vec3<i32>(2147483647i, 33362i, 41949i), -14987i, 167f)), Struct_2(Struct_1(vec2<bool>(false, false), 46887i, vec3<i32>(-8536i, -45928i, 2147483647i), -1i, -342f), vec3<i32>(1i, 2147483647i, 15467i), Struct_1(vec2<bool>(false, false), 1i, vec3<i32>(4627i, 0i, -84181i), 2147483647i, 2355f)), Struct_2(Struct_1(vec2<bool>(true, false), 1i, vec3<i32>(1i, 355i, i32(-2147483648)), 1i, 1000f), vec3<i32>(-7692i, -22762i, 24346i), Struct_1(vec2<bool>(true, false), 10155i, vec3<i32>(2147483647i, 1i, 2147483647i), -1i, 987f)));

var<private> global1: vec2<f32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> u32 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(1532f - _wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-409f, 1241f, false)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, global1.x)))), arg_1.e.e)));
    var var_0 = arg_1.b;
    let var_1 = arg_0.xxw;
    let var_2 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(467f + 1061f))), global1.x);
    var_0 = _wgslsmith_add_u32(1u ^ arg_1.b, ~_wgslsmith_mult_u32(arg_1.b, arg_1.b));
    return ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.b & 4294967295u, 0u, _wgslsmith_mult_u32(0u, 15187u)), abs(min(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b, arg_1.b, 4294967295u), vec3<u32>(arg_1.b, arg_1.b, arg_1.b)), vec3<u32>(4294967295u, 27952u, 0u))));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.x, 48468u, arg_2.x, arg_0), vec4<u32>(62178u, 4294967295u, arg_2.x, arg_0), vec4<u32>(arg_0, 1u, 8842u, 34076u)), max(vec4<u32>(1u, arg_2.x, arg_2.x, arg_0), vec4<u32>(arg_0, arg_2.x, arg_2.x, 0u)))), vec4<u32>(0u, 0u, _wgslsmith_div_u32(max(arg_0, 0u), arg_0), max(arg_2.x, arg_2.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(17875u, 21764u, arg_0, arg_2.x), vec4<u32>(1u, arg_2.x, arg_0, 44141u)))), 10u)];
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1, arg_1) + arg_1);
    let var_1 = _wgslsmith_mult_i32(arg_3.c.x, _wgslsmith_div_i32(u_input.a.x >> (~abs(arg_2.x) % 32u), arg_3.b));
    global1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.e) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1391f * arg_3.e))))));
    return -5500i;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 342f));
    let var_0 = arg_0.e.d;
    global0 = array<Struct_2, 10>();
    let var_1 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(arg_0.b, 4294967295u, arg_3) & ~arg_1.zwy), vec3<u32>(1u, arg_1.x, 36723u));
    global0 = array<Struct_2, 10>();
    return ~min(arg_3, ~var_1.x);
}

fn func_6(arg_0: vec4<i32>, arg_1: u32) -> i32 {
    global0 = array<Struct_2, 10>();
    var var_0 = arg_0.xwy;
    global0 = array<Struct_2, 10>();
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(478f, global1.x))) * vec2<f32>(global1.x, -1409f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, global1.x), vec2<f32>(-1326f, global1.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, 419f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 409f) - vec2<f32>(global1.x, global1.x))))) + vec2<f32>(_wgslsmith_f_op_f32(step(1199f, 1000f)), global1.x));
    var var_1 = select(firstLeadingBit(~(~(~vec3<u32>(51949u, arg_1, arg_1)))), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, arg_1, arg_1), ~vec3<u32>(4294967295u, 12057u, arg_1)), ~(~vec3<u32>(12426u, arg_1, arg_1))), min(~firstLeadingBit(36436u), arg_1), abs(arg_1)), !(!(_wgslsmith_f_op_f32(step(-2061f, 815f)) >= -576f)));
    return reverseBits(arg_0.x) << (70716u % 32u);
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = true;
    var var_1 = func_6(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(min(vec4<i32>(71008i, u_input.a.x, -1i, u_input.a.x), vec4<i32>(u_input.a.x, 0i, 49639i, u_input.a.x)), -vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)), func_5(Struct_3(func_4(func_3(vec4<bool>(false, false, true, true), Struct_3(40728i, 0u, Struct_1(vec2<bool>(true, false), 4862i, vec3<i32>(u_input.a.x, 81357i, -2147483647i), 0i, -1427f), Struct_1(vec2<bool>(true, true), 12505i, u_input.a, -32196i, -454f), Struct_1(vec2<bool>(false, false), u_input.a.x, u_input.a, -6425i, -990f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-475f, -1437f), vec2<f32>(global1.x, global1.x))), abs(vec2<u32>(5047u, arg_0)), Struct_1(vec2<bool>(false, true), 33075i, u_input.a, u_input.a.x, 121f)), _wgslsmith_clamp_u32(arg_0, 4294967295u, arg_0 << (arg_0 % 32u)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, false), true), u_input.a.x ^ 23972i, reverseBits(vec3<i32>(1i, u_input.a.x, u_input.a.x)), firstLeadingBit(u_input.a.x), -2874f), Struct_1(vec2<bool>(true, true), 1i, reverseBits(u_input.a), 0i, global1.x), Struct_1(vec2<bool>(true, true), -29074i, select(u_input.a, u_input.a, vec3<bool>(false, true, true)), 1i, _wgslsmith_f_op_f32(max(global1.x, global1.x)))), select(~_wgslsmith_sub_vec4_u32(vec4<u32>(32518u, arg_0, 40424u, arg_0), vec4<u32>(arg_0, 1u, arg_0, arg_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(46517u, 8696u, arg_0, 1u), vec4<u32>(arg_0, arg_0, arg_0, arg_0), min(vec4<u32>(89523u, 6456u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, arg_0, 1u))), vec4<bool>(all(vec3<bool>(true, true, true)), u_input.a.x != 37633i, select(false, true, false), arg_0 == 67351u)), Struct_1(vec2<bool>(true, true), select(firstTrailingBit(u_input.a.x), -69212i, true), ~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1.x, 165f, true)), _wgslsmith_f_op_f32(f32(-1f) * -976f)))), 47904u));
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1225f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, -605f), vec2<f32>(global1.x, global1.x), false))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global1.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -734f)), vec2<f32>(752f, global1.x))))), vec2<f32>(global1.x, 1000f), false));
    var var_2 = Struct_1(!vec2<bool>(false, any(vec2<bool>(false, true))), _wgslsmith_dot_vec3_i32(~abs(u_input.a ^ vec3<i32>(1i, 0i, 16857i)), vec3<i32>(-(~(-4700i)), countOneBits(-3456i), 10428i)), max(vec3<i32>(u_input.a.x, ~reverseBits(2147483647i), ~func_6(vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, u_input.a.x), arg_0)), ~vec3<i32>(-35594i, ~31905i, u_input.a.x)), 7203i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_1 = var_2.c.x;
    return func_6(~(-vec4<i32>(var_2.d, 41127i, -1i, var_2.c.x) >> (vec4<u32>(4294967295u & arg_0, arg_0 << (arg_0 % 32u), arg_0 >> (16485u % 32u), arg_0 | arg_0) % vec4<u32>(32u))), _wgslsmith_mod_u32(53134u, arg_0));
}

fn func_7(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_2, 10>();
    var var_0 = any(select(select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0.a.a.x, arg_0.c.a.x, arg_0.a.a.x, arg_0.a.a.x), true), select(vec4<bool>(true, false, true, arg_0.a.a.x), vec4<bool>(false, true, arg_0.c.a.x, false), false), vec4<bool>(false, arg_0.a.a.x, false, false)), select(!vec4<bool>(arg_0.c.a.x, true, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(true, arg_0.c.a.x, arg_0.c.a.x, false), all(arg_0.a.a)), arg_0.b.x >= (2147483647i | arg_0.b.x)), vec4<bool>(arg_0.a.a.x, false, false, true | arg_0.a.a.x), arg_0.a.a.x));
    let var_1 = vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-422f * arg_0.c.e)), global1.x);
    var var_2 = max(arg_0.c.c.x, firstTrailingBit(arg_0.c.d));
    global0 = array<Struct_2, 10>();
    return Struct_2(Struct_1(vec2<bool>(arg_1.x <= 44947u, any(vec3<bool>(true, false, false))), u_input.a.x, -vec3<i32>(firstLeadingBit(4687i), 1i, _wgslsmith_add_i32(-61152i, 36662i)), 84523i, 410f), -u_input.a, arg_0.c);
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 10>();
    var var_0 = func_7(Struct_2(Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), 2147483647i, vec3<i32>(1i, u_input.a.x, func_2(13029u)), u_input.a.x, _wgslsmith_f_op_f32(select(-477f, _wgslsmith_f_op_f32(f32(-1f) * -559f), true))), u_input.a, Struct_1(vec2<bool>(any(vec2<bool>(false, true)), true), _wgslsmith_mod_i32(-1i, -u_input.a.x), _wgslsmith_sub_vec3_i32(u_input.a ^ u_input.a, u_input.a), u_input.a.x, 706f)), _wgslsmith_div_vec2_u32(~vec2<u32>(countOneBits(48242u), ~1u), vec2<u32>(1u, 1u)), vec2<u32>(1u, 0u));
    var var_1 = Struct_2(Struct_1(select(!(!var_0.c.a), !select(var_0.c.a, var_0.a.a, false), select(!var_0.c.a.x, true, false)), _wgslsmith_dot_vec2_i32(-(~u_input.a.xz), u_input.a.yz), max(-u_input.a, countOneBits(u_input.a)), var_0.a.d, global1.x), u_input.a, var_0.a);
    var var_2 = Struct_1(var_0.c.a, 27150i, select(~(~vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), var_1.a.c, true), -1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-623f + _wgslsmith_f_op_f32(-global1.x))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-var_2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.e))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - var_2.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, 1614f)) + _wgslsmith_div_f32(var_1.c.e, -223f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1421f + _wgslsmith_f_op_f32(trunc(var_0.a.e))) * _wgslsmith_f_op_f32(select(-1275f, 1000f, var_0.a.a.x && true))))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(select(u_input.a.x, 15479i, any(vec2<bool>(false, true))), 64288u, func_1(), Struct_1(select(select(func_7(Struct_2(Struct_1(vec2<bool>(false, true), u_input.a.x, u_input.a, 4309i, global1.x), u_input.a, Struct_1(vec2<bool>(false, false), -1i, vec3<i32>(u_input.a.x, u_input.a.x, 14967i), 0i, global1.x)), vec2<u32>(52698u, 67352u), vec2<u32>(79115u, 1u)).a.a, vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, true, true, false)), true), vec2<bool>(true, true)), -2147483647i, u_input.a, func_6(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), reverseBits(56299u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) + global1.x)), func_7(Struct_2(Struct_1(vec2<bool>(true, true), min(-2147483647i, 1i), u_input.a, i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(trunc(global1.x))), ~abs(vec3<i32>(32933i, u_input.a.x, -12039i)), func_1()), ~vec2<u32>(1u, 1u), countOneBits(firstTrailingBit(~vec2<u32>(65454u, 94958u)))).c);
    global0 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(23759u, var_0.b), abs(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.d, -37619i, var_0.a, var_0.d.b), vec4<i32>(var_0.e.b, 0i, -3989i, -8906i)), ~(-1i), ~u_input.a.x, -var_0.d.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-206f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(625f, -770f)))))));
}

