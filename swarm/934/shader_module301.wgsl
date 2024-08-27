struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(1050f, 190f), vec2<f32>(400f, -517f), vec2<f32>(298f, 1345f), vec2<f32>(398f, 376f), vec2<f32>(-1583f, -1847f), vec2<f32>(1941f, -2271f), vec2<f32>(-778f, -1517f), vec2<f32>(1659f, 766f), vec2<f32>(277f, -357f), vec2<f32>(158f, -207f), vec2<f32>(741f, 806f), vec2<f32>(-1691f, 352f), vec2<f32>(984f, 176f), vec2<f32>(1013f, 747f), vec2<f32>(-1098f, 1537f), vec2<f32>(-1186f, 918f), vec2<f32>(313f, -201f), vec2<f32>(-1213f, -1904f), vec2<f32>(-1000f, 112f), vec2<f32>(-472f, -597f), vec2<f32>(850f, -1232f), vec2<f32>(-1235f, -1852f), vec2<f32>(-514f, -193f), vec2<f32>(624f, -355f), vec2<f32>(464f, 336f));

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec4<f32>(951f, 1000f, -815f, 1659f), 577f, vec4<i32>(-7533i, -28958i, 0i, 1i), 451f), false, false), Struct_2(Struct_1(vec4<f32>(-1897f, 415f, 1000f, -343f), -1000f, vec4<i32>(0i, -5614i, -1i, 2147483647i), -336f), false, false), Struct_2(Struct_1(vec4<f32>(1000f, -253f, 605f, -247f), -315f, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i), -451f), true, false), Struct_2(Struct_1(vec4<f32>(-124f, -357f, -709f, 1538f), -1000f, vec4<i32>(-33918i, 7185i, i32(-2147483648), 3914i), -304f), false, false), Struct_2(Struct_1(vec4<f32>(-589f, -428f, 580f, 733f), 1508f, vec4<i32>(-1i, -60187i, 0i, -34702i), 2089f), false, false), Struct_2(Struct_1(vec4<f32>(-899f, 1874f, -639f, 484f), -256f, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -17515i), -357f), true, false), Struct_2(Struct_1(vec4<f32>(845f, 2063f, 755f, -1178f), 637f, vec4<i32>(1i, -42047i, -47448i, 0i), -835f), false, true), Struct_2(Struct_1(vec4<f32>(1000f, 1560f, -470f, -651f), -342f, vec4<i32>(2147483647i, -7902i, i32(-2147483648), 2147483647i), 133f), false, true), Struct_2(Struct_1(vec4<f32>(739f, -2122f, 1034f, -1091f), -326f, vec4<i32>(37035i, 0i, 1i, 1i), -357f), false, true), Struct_2(Struct_1(vec4<f32>(-1258f, -464f, -827f, 579f), -276f, vec4<i32>(20957i, 59379i, -1i, 1i), 596f), true, true), Struct_2(Struct_1(vec4<f32>(292f, -659f, -554f, -371f), -2015f, vec4<i32>(38049i, i32(-2147483648), 28703i, -12411i), -1381f), false, false), Struct_2(Struct_1(vec4<f32>(-1139f, 859f, -686f, 226f), -299f, vec4<i32>(26871i, -41509i, 2147483647i, 45301i), -261f), true, false), Struct_2(Struct_1(vec4<f32>(-569f, 289f, 1895f, -136f), -756f, vec4<i32>(i32(-2147483648), -48664i, -52910i, i32(-2147483648)), -1022f), true, false));

var<private> global2: vec3<i32> = vec3<i32>(2147483647i, -42192i, i32(-2147483648));

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec4<f32>(-1989f, 365f, 1386f, -122f), 734f, vec4<i32>(-1i, 0i, 16540i, -40712i), -1568f), Struct_1(vec4<f32>(371f, -1279f, -1000f, -282f), 980f, vec4<i32>(i32(-2147483648), 33237i, 1i, -27534i), 410f), Struct_1(vec4<f32>(465f, -404f, -305f, -412f), 235f, vec4<i32>(0i, 0i, 0i, -4631i), -543f), Struct_1(vec4<f32>(-1273f, -1007f, -482f, -1000f), -618f, vec4<i32>(2147483647i, -30562i, 73474i, -1i), 1000f), Struct_1(vec4<f32>(356f, 134f, 1674f, -576f), -657f, vec4<i32>(30115i, 17580i, -1i, 2147483647i), -1113f), Struct_1(vec4<f32>(-611f, 525f, 672f, -183f), 438f, vec4<i32>(i32(-2147483648), -20116i, 2147483647i, -20193i), 1165f), Struct_1(vec4<f32>(-447f, -793f, -923f, 535f), -1077f, vec4<i32>(49630i, 2147483647i, -34897i, i32(-2147483648)), -1000f), Struct_1(vec4<f32>(563f, -694f, 516f, -627f), -894f, vec4<i32>(2147483647i, 0i, -21972i, 48262i), -826f), Struct_1(vec4<f32>(-1303f, -541f, 1267f, 2135f), 443f, vec4<i32>(-17209i, 2147483647i, i32(-2147483648), -15388i), 1170f), Struct_1(vec4<f32>(444f, 1041f, -650f, 1548f), -161f, vec4<i32>(1485i, 1i, 0i, 0i), -593f), Struct_1(vec4<f32>(513f, -962f, 854f, 166f), -1000f, vec4<i32>(i32(-2147483648), -1i, -15278i, 26633i), 1683f), Struct_1(vec4<f32>(110f, -705f, -2026f, -1550f), 381f, vec4<i32>(-1i, -100059i, -4106i, -55969i), -521f));

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-523f, 383f, -1144f, -1140f), -352f, vec4<i32>(-59240i, -1i, -11939i, 0i), -902f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> i32 {
    let var_0 = vec3<i32>(global2.x | global4.c.x, -(~((1i >> (arg_2 % 32u)) << (_wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(arg_3.x, arg_1)) % 32u))), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-u_input.e), ~u_input.e, firstTrailingBit(1i), -2147483647i), global4.c));
    var var_1 = vec3<bool>(true, ~16244i < _wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, max(8480i, 2147483647i), 2147483647i << (u_input.a % 32u)), -global2.x), true);
    var_1 = vec3<bool>(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-29487i, 4366i, -2147483647i), arg_0.zyz), ~(-1i) >> (max(72367u, arg_2) % 32u)) != _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(global2.x, arg_0.x, arg_0.x), -arg_0.x), global4.c.ww ^ _wgslsmith_sub_vec2_i32(global4.c.xz, vec2<i32>(40272i, global4.c.x))), all(vec2<bool>(var_1.x, var_1.x)), var_1.x);
    global3 = array<Struct_1, 12>();
    global0 = array<vec2<f32>, 25>();
    return global4.c.x ^ ~46127i;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = true;
    global2 = vec3<i32>(1i, firstLeadingBit(-1i), select(func_3(~global4.c >> ((vec4<u32>(5193u, 0u, u_input.d, 4294967295u) ^ vec4<u32>(u_input.c, 75113u, u_input.c, u_input.d)) % vec4<u32>(32u)), ~0u, reverseBits(~13950u), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(arg_1, arg_1)), firstTrailingBit(vec2<u32>(1u, 15676u)), ~vec2<u32>(arg_0, arg_0))), (-global2.x | 2147483647i) & ((1i << (arg_1 % 32u)) & u_input.e), false));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1282f, global4.b, 1000f, global4.a.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.a.x, global4.d, global4.d, global4.d), global4.a))))), vec4<f32>(1709f, _wgslsmith_f_op_f32(select(-336f, _wgslsmith_f_op_f32(ceil(669f)), false)), global4.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1197f, 999f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.a.x, global4.b, global4.b, 1006f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_1.x, 222f, 436f), vec4<f32>(-366f, -364f, var_1.x, global4.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, global4.a.x)), global4.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2431f + _wgslsmith_f_op_f32(max(1918f, -326f))), global4.b)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~(~u_input.c), _wgslsmith_mult_u32(abs(arg_0), arg_0)), 1u, firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 1u), arg_1))), 13u)];
    return firstTrailingBit(~45375u);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<f32>, 25>();
    var var_0 = select(vec2<u32>(u_input.d, _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.c, u_input.c), vec4<u32>(45181u, u_input.d, u_input.c, u_input.c))), vec4<u32>(~9199u, ~35124u, u_input.c >> (u_input.c % 32u), func_2(u_input.a, 74162u, -54794i)))), ~(_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(56231u, 0u)), vec2<u32>(u_input.a, u_input.c)) & min(vec2<u32>(u_input.c, 22201u) << (vec2<u32>(33128u, u_input.a) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 69797u), vec2<u32>(u_input.c, u_input.d), vec2<u32>(u_input.a, 30379u)))), false);
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -326f)))), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.d), _wgslsmith_f_op_f32(162f + -1142f)))), arg_1.d), 776f, vec4<i32>(~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), arg_1.c.wx) << (_wgslsmith_div_u32(34315u, 1u) % 32u)), 0i, u_input.e << (0u % 32u), i32(-1i) * -3637i), -1000f);
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(countOneBits(u_input.c)) | 105552u, ~9822u) & 71215u, 12u)];
    let var_3 = all(vec3<bool>(_wgslsmith_f_op_f32(step(-939f, -410f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), arg_0.x, false));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-global4.a), 1000f, -vec4<i32>(i32(-1i) * -arg_1.c.x, u_input.e, ~51016i, ~(-7027i)), _wgslsmith_div_f32(-802f, arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global4.a.x - _wgslsmith_f_op_f32(1797f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1031f, global4.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.d - -828f) - _wgslsmith_f_op_f32(-global4.d)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global4.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global4.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, global4.a.x) + global4.a) * _wgslsmith_f_op_vec4_f32(global4.a - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-487f, global4.d, -808f, global4.a.x)))))), var_0, reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global4.c.x, global4.c.x, 29370i), vec4<i32>(-26614i, -2147483647i, -2147483647i, 26910i)) | ~vec4<i32>(global4.c.x, u_input.e, global2.x, global2.x)), -150f);
    global4 = func_1(vec3<bool>(true, true, true), global3[_wgslsmith_index_u32(u_input.d, 12u)]);
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(0u), 13u)];
    let var_3 = func_1(vec3<bool>(true, all(select(vec2<bool>(false, var_2.c), vec2<bool>(true, true), select(vec2<bool>(var_2.b, true), vec2<bool>(false, true), false))), false), func_1(!vec3<bool>(select(var_2.c, true, true), true, var_2.b), func_1(select(!vec3<bool>(var_2.c, true, var_2.b), !vec3<bool>(false, var_2.b, var_2.b), all(vec2<bool>(var_2.c, true))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1837f, var_1.d, var_1.a.x, 2301f))), _wgslsmith_f_op_f32(min(1661f, global4.d)), vec4<i32>(var_1.c.x, var_1.c.x, 42659i, var_2.a.c.x) & vec4<i32>(var_1.c.x, -18938i, u_input.e, global2.x), _wgslsmith_f_op_f32(step(var_1.b, global4.d)))))).c.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -235f), -520f)), vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1226f)) - var_1.a.x), 1090f));
}

