struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false));

var<private> global1: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(152f, Struct_1(-722f, 1u, vec4<u32>(60785u, 1u, 1u, 72244u))), Struct_3(947f, Struct_1(100f, 0u, vec4<u32>(4294967295u, 23252u, 4294967295u, 109532u))), Struct_3(-810f, Struct_1(923f, 0u, vec4<u32>(3918u, 1u, 1u, 0u))), Struct_3(1000f, Struct_1(-104f, 11662u, vec4<u32>(2999u, 35468u, 0u, 5u))), Struct_3(645f, Struct_1(-165f, 34228u, vec4<u32>(7033u, 0u, 69419u, 69050u))), Struct_3(-823f, Struct_1(-1212f, 0u, vec4<u32>(1u, 1u, 0u, 4294967295u))), Struct_3(1424f, Struct_1(258f, 14445u, vec4<u32>(41747u, 1u, 22689u, 784u))), Struct_3(2408f, Struct_1(1000f, 67991u, vec4<u32>(0u, 4294967295u, 81276u, 109745u))), Struct_3(-1684f, Struct_1(897f, 4674u, vec4<u32>(33280u, 0u, 1u, 8989u))), Struct_3(282f, Struct_1(-1318f, 15032u, vec4<u32>(4294967295u, 9316u, 52233u, 0u))), Struct_3(-1551f, Struct_1(-1000f, 53926u, vec4<u32>(0u, 4294967295u, 27945u, 40281u))), Struct_3(665f, Struct_1(-194f, 76710u, vec4<u32>(12724u, 1u, 3995u, 4294967295u))), Struct_3(-1294f, Struct_1(-1018f, 12185u, vec4<u32>(0u, 36159u, 67395u, 4294967295u))), Struct_3(-598f, Struct_1(1000f, 1u, vec4<u32>(1u, 34291u, 1u, 69214u))), Struct_3(-278f, Struct_1(1081f, 40714u, vec4<u32>(15103u, 5618u, 47040u, 9852u))), Struct_3(1000f, Struct_1(-308f, 0u, vec4<u32>(4294967295u, 4294967295u, 89620u, 4294967295u))), Struct_3(1000f, Struct_1(1000f, 23054u, vec4<u32>(9171u, 10981u, 1u, 26496u))), Struct_3(283f, Struct_1(230f, 0u, vec4<u32>(6040u, 69082u, 0u, 41396u))), Struct_3(-399f, Struct_1(-336f, 1u, vec4<u32>(279u, 1u, 0u, 24513u))), Struct_3(-1152f, Struct_1(-704f, 7119u, vec4<u32>(20373u, 29145u, 0u, 50170u))), Struct_3(498f, Struct_1(1119f, 22821u, vec4<u32>(1u, 46173u, 4294967295u, 1u))), Struct_3(331f, Struct_1(-621f, 0u, vec4<u32>(11187u, 84188u, 88120u, 33461u))), Struct_3(-622f, Struct_1(-409f, 4294967295u, vec4<u32>(47718u, 0u, 1u, 4294967295u))), Struct_3(-734f, Struct_1(-869f, 73467u, vec4<u32>(70674u, 0u, 86849u, 1u))), Struct_3(-242f, Struct_1(573f, 0u, vec4<u32>(1u, 0u, 72542u, 1u))), Struct_3(679f, Struct_1(1000f, 4294967295u, vec4<u32>(60974u, 34649u, 0u, 1u))), Struct_3(-1895f, Struct_1(164f, 0u, vec4<u32>(4294967295u, 0u, 1u, 22102u))), Struct_3(237f, Struct_1(784f, 1u, vec4<u32>(4294967295u, 15065u, 1u, 4294967295u))), Struct_3(-1926f, Struct_1(1186f, 0u, vec4<u32>(6820u, 1u, 53638u, 4294967295u))), Struct_3(-203f, Struct_1(-290f, 17138u, vec4<u32>(33676u, 0u, 31653u, 68410u))));

var<private> global2: vec3<f32> = vec3<f32>(-369f, -492f, 1491f);

var<private> global3: array<Struct_2, 29>;

var<private> global4: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(19000u, 29u)];
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-578f, -1215f)))))));
    var_2 = var_0.a.a;
    global3 = array<Struct_2, 29>();
    return Struct_2(var_0.a, var_0.b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_3(-1176f, func_2(u_input.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 1969f) - vec3<f32>(arg_0.a.a, -408f, global2.x)))))), countOneBits(u_input.d)).b);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1 | arg_1, ~(10610u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, arg_1, u_input.a.x), vec4<u32>(arg_0.b.b, 4294967295u, arg_1, var_0.b.c.x)) % 32u)) << (1u % 32u)), 30u)];
    var var_2 = select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true), select(vec2<bool>(true, u_input.c.x >= (arg_2.x | global4.x)), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, true, true, true)), true), true), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), false)), any(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), true, true && (4294967295u >= var_1.b.b))));
    let var_3 = func_2(var_0.b.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(722f, var_0.b.a, -569f))))))), firstTrailingBit(arg_2.x) ^ 0i).a;
    var var_4 = select(~((u_input.c >> (var_1.b.c % vec4<u32>(32u))) ^ u_input.c), ~(~_wgslsmith_mod_vec4_i32(u_input.c, u_input.c)), var_2.x || (any(vec2<bool>(false, var_2.x)) & all(vec3<bool>(var_2.x, var_2.x, true)))) >> (var_0.b.c % vec4<u32>(32u));
    return Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2754f)), _wgslsmith_f_op_f32(f32(-1f) * -1998f), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(abs(-1393f)))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_sub_u32(23205u, _wgslsmith_dot_vec4_u32(~arg_0.a.c, var_1.b.c)), abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.b.b, arg_1, u_input.e), var_0.b.c))));
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a + arg_2.a.a)) - _wgslsmith_f_op_f32(round(-488f)))), abs(func_2(select(vec4<u32>(arg_1.c.c.x, 4294967295u, 54293u, arg_1.c.b), u_input.a | arg_2.b.c, !vec4<bool>(arg_3, arg_3, arg_3, arg_3)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b - arg_1.b)), _wgslsmith_clamp_i32(~14076i, _wgslsmith_clamp_i32(global4.x, u_input.b, u_input.d), 0i)).b.b), func_3(global3[_wgslsmith_index_u32(4836u, 29u)], _wgslsmith_mod_u32(arg_2.b.c.x, _wgslsmith_mult_u32(min(u_input.e, 1u), ~arg_1.c.b)), ~(~vec2<i32>(u_input.b, 1i)), u_input.c.yw).c.c);
    var var_1 = select(arg_3, true, all(select(select(select(global0[_wgslsmith_index_u32(52479u, 29u)], vec4<bool>(true, arg_3, arg_3, false), arg_3), vec4<bool>(true, arg_3, arg_3, false), !vec4<bool>(false, arg_3, arg_3, true)), global0[_wgslsmith_index_u32(min(var_0.b << (u_input.e % 32u), arg_2.a.b << (30163u % 32u)), 29u)], any(!global0[_wgslsmith_index_u32(arg_1.c.c.x, 29u)]))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1548f - global2.x), _wgslsmith_f_op_f32(step(-1000f, -546f)))) * _wgslsmith_f_op_f32(-func_3(Struct_2(arg_1.c, Struct_1(117f, 44199u, var_0.c)), ~var_0.b, abs(u_input.c.xx), ~vec2<i32>(-1i, 0i)).b.x)), func_3(func_2(~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, 0u, 15224u), arg_1.c.c), func_3(func_2(arg_1.c.c, arg_1.b, global4.x), _wgslsmith_dot_vec2_u32(vec2<u32>(6557u, 44697u), var_0.c.wy), vec2<i32>(global4.x, u_input.b), u_input.c.zz | vec2<i32>(31754i, -48500i)).b, global4.x), ~max(34851u >> (0u % 32u), 4294967295u), vec2<i32>(-9644i, abs(global4.x)), u_input.c.yz).c);
    let var_3 = arg_1.c.c.x;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-var_0.a), arg_1.c);
    return func_3(Struct_2(Struct_1(-1930f, var_0.b, var_4.b.c), func_2(abs(vec4<u32>(var_2.b.c.x, var_2.b.c.x, var_4.b.c.x, arg_2.a.b)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1.b))), 38493i).a), arg_1.c.c.x, firstTrailingBit(vec2<i32>(firstTrailingBit(6900i), 22448i)), _wgslsmith_div_vec2_i32(-u_input.c.zz, vec2<i32>(global4.x, ~1i)) & ~select(vec2<i32>(global4.x, global4.x), _wgslsmith_clamp_vec2_i32(u_input.c.wz, u_input.c.wx, vec2<i32>(1i, u_input.c.x)), vec2<bool>(arg_3, true)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(floor(885f));
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.a, arg_0.a.a)), func_3(func_2(~vec4<u32>(26063u, 38709u, arg_0.b.c.x, u_input.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1057f, 741f, 324f), vec3<f32>(975f, -264f, arg_0.a.a))), countOneBits(u_input.d)), 19891u, abs(vec2<i32>(-u_input.c.x, _wgslsmith_div_i32(global4.x, 1i))), vec2<i32>(firstTrailingBit(-19458i << (1u % 32u)), -(global4.x >> (45438u % 32u)))), global3[_wgslsmith_index_u32(arg_1.x, 29u)], !(arg_0.a.a != global2.x));
    let var_2 = global1[_wgslsmith_index_u32(u_input.e ^ (4294967295u >> (~(arg_0.a.b << ((arg_1.x >> (4294967295u % 32u)) % 32u)) % 32u)), 30u)];
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, var_1.a) * _wgslsmith_f_op_f32(abs(1480f))) + global2.x))));
    var_0 = arg_0.b.a;
    return var_1;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_4) -> vec4<u32> {
    let var_0 = 982f;
    var var_1 = select(vec3<bool>(true, _wgslsmith_f_op_f32(-1655f - _wgslsmith_f_op_f32(floor(global2.x))) <= -1000f, false), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, u_input.d != -41776i, true), ~global4.x == -23134i), !(!vec3<bool>(true, all(vec2<bool>(true, true)), true)));
    let var_2 = _wgslsmith_clamp_u32(1u, arg_3.c.c.x ^ 4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(4294967295u, 1u), arg_0.c.b));
    var var_3 = global2.x;
    let var_4 = u_input.b;
    return select(vec4<u32>(~(~0u) << (0u % 32u), _wgslsmith_dot_vec3_u32(reverseBits(~arg_1.c.c.wwx), func_1(Struct_2(arg_1.c, Struct_1(-693f, 41582u, vec4<u32>(arg_1.c.c.x, arg_3.c.c.x, arg_2.x, arg_1.c.c.x))), ~arg_2.zy).c.c.yxz), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_1.c.c ^ vec4<u32>(75064u, arg_3.c.c.x, arg_0.c.c.x, arg_1.c.c.x), vec4<u32>(u_input.a.x, u_input.e, var_2, arg_2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 17864u, var_2, arg_3.c.c.x), u_input.a) | u_input.a), u_input.a.x), arg_0.c.c, true);
}

fn func_6(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = select(select(select(vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), !vec2<bool>(false, all(vec3<bool>(true, true, true))), vec2<bool>(-1397f < global2.x, true)), select(select(vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), !select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), vec2<bool>((7180i == u_input.b) || true, true)), select(vec2<bool>(false, !any(vec2<bool>(true, false))), vec2<bool>(true, select(false, false, true) | any(vec2<bool>(false, false))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(all(vec2<bool>(false, true)), all(vec2<bool>(false, false))))));
    var var_1 = func_4(_wgslsmith_f_op_f32(-869f - _wgslsmith_f_op_f32(291f - _wgslsmith_f_op_f32(max(func_1(Struct_2(Struct_1(-705f, 4294967295u, arg_1), Struct_1(1963f, 29563u, vec4<u32>(4294967295u, 4294967295u, 0u, 0u))), u_input.a.xy).a, global2.x)))), Struct_4(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(func_3(global3[_wgslsmith_index_u32(arg_0, 29u)], arg_1.x, vec2<i32>(2147483647i, 1i), u_input.c.zy).c.a, -1618f, _wgslsmith_f_op_f32(1226f - 810f))), func_3(func_2(~vec4<u32>(0u, 1u, arg_0, arg_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 1031f, global2.x) + vec3<f32>(global2.x, -787f, 1736f)), _wgslsmith_clamp_i32(-1i, global4.x, global4.x)), ~arg_0, _wgslsmith_sub_vec2_i32(u_input.c.zz, ~vec2<i32>(-2147483647i, -49590i)), countOneBits(u_input.c.zy)).c), func_2(u_input.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(634f, global2.x, global2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1000f, 372f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -257f, 638f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1042f, 2234f)))), global4.x), true);
    var var_2 = _wgslsmith_f_op_f32(min(1169f, -479f));
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_0, select(max(max(arg_1.x, var_1.c.b), var_1.c.b), var_1.c.b, true)), 0u);
    var_0 = !(!(!select(select(vec2<bool>(false, true), vec2<bool>(var_0.x, true), var_0.x), vec2<bool>(var_0.x, var_0.x), true)));
    return var_1.c;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = Struct_1(func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), 940f, arg_1.b.a > func_3(global3[_wgslsmith_index_u32(3854u, 29u)], arg_0.b, vec2<i32>(global4.x, u_input.b), vec2<i32>(global4.x, -15009i)).b.x)), Struct_4(_wgslsmith_f_op_f32(-1453f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 337f, -1986f))), Struct_1(_wgslsmith_f_op_f32(round(200f)), arg_1.a.c.x & arg_1.a.c.x, vec4<u32>(4294967295u, 1u, arg_0.c.x, u_input.e) >> (u_input.a % vec4<u32>(32u)))), arg_1, true).a, ~89396u, ~(_wgslsmith_mult_vec4_u32(max(arg_1.a.c, vec4<u32>(1u, 4294967295u, 0u, arg_0.c.x)), arg_0.c & arg_0.c) & ~arg_1.a.c));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, arg_1.b.a, global2.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, arg_0.a) * vec3<f32>(global2.x, -605f, global2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, var_0.a, -1198f), vec3<f32>(1405f, 504f, arg_1.a.a)))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.a.a, -703f), arg_1.a.a, true)), var_0.a, arg_1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_7(func_6(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(26328u, u_input.a.x, 9102u)), func_5(func_1(global3[_wgslsmith_index_u32(u_input.a.x, 29u)], u_input.a.xw), func_4(global2.x, Struct_4(global2.x, vec3<f32>(-398f, -547f, 498f), Struct_1(2590f, u_input.a.x, u_input.a)), global3[_wgslsmith_index_u32(43911u, 29u)], true), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_4(277f, vec3<f32>(-306f, -1233f, -770f), Struct_1(1172f, 0u, u_input.a)))), Struct_2(func_1(global3[_wgslsmith_index_u32(func_2(u_input.a, vec3<f32>(314f, 693f, -174f), global4.x).b.b, 29u)], ~vec2<u32>(1u, u_input.a.x)).c, Struct_1(global2.x, 65861u, vec4<u32>(u_input.a.x, 19753u, u_input.e, 39727u))))));
    global3 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_sub_i32(select(1i, -19820i, true), countOneBits(i32(-1i) * -global4.x)) << (4294967295u % 32u);
    let var_1 = vec3<bool>(!(1u < u_input.a.x), any(vec3<bool>(!(u_input.a.x > 4294967295u), any(global0[_wgslsmith_index_u32(func_6(u_input.e, u_input.a).c.x, 29u)]), all(vec3<bool>(true, false, true)))), any(!(!global0[_wgslsmith_index_u32(1u & u_input.e, 29u)])));
    global0 = array<vec4<bool>, 29>();
    let var_2 = vec3<bool>(any(vec4<bool>(select(!var_1.x, any(var_1), all(global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), any(var_1), !var_1.x, true)), false, any(!(!var_1)));
    global3 = array<Struct_2, 29>();
    var var_3 = !global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(func_4(-1610f, Struct_4(global2.x, vec3<f32>(global2.x, global2.x, -641f), Struct_1(global2.x, 0u, u_input.a)), global3[_wgslsmith_index_u32(4294967295u, 29u)], var_1.x).c.c.wy ^ func_6(1u, u_input.a).c.wz, select(min(vec2<u32>(1u, u_input.e), vec2<u32>(u_input.a.x, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, u_input.e), vec2<u32>(0u, u_input.a.x)), !var_1.xy)), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(~(global4.x >> (u_input.e % 32u))), _wgslsmith_div_i32(var_0, u_input.d), 0i), _wgslsmith_add_vec3_u32(firstTrailingBit(~(~vec3<u32>(22821u, u_input.a.x, u_input.e))), ~_wgslsmith_div_vec3_u32(vec3<u32>(31991u, 59091u, 0u), vec3<u32>(u_input.e, u_input.a.x, 44179u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x - -1019f), true))), 581f), _wgslsmith_sub_vec2_u32(~(~vec2<u32>(4294967295u, 4294967295u)), u_input.a.xx));
}

