struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: i32;

var<private> global2: vec2<i32> = vec2<i32>(0i, 2147483647i);

var<private> global3: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-1722f, -371f, -1042f), vec3<f32>(1260f, 522f, 1000f), vec3<f32>(-1002f, 1691f, 231f), vec3<f32>(-452f, -1000f, -2335f), vec3<f32>(-1000f, -1002f, -474f), vec3<f32>(-872f, 303f, 972f), vec3<f32>(-1470f, 726f, 1636f), vec3<f32>(1075f, 1240f, -645f), vec3<f32>(-616f, -857f, 625f), vec3<f32>(-935f, -2710f, 691f), vec3<f32>(1809f, 864f, 920f), vec3<f32>(-1896f, -1090f, -1132f), vec3<f32>(-1425f, -1496f, 292f), vec3<f32>(597f, 1000f, 384f), vec3<f32>(3080f, 248f, 750f), vec3<f32>(514f, 1000f, 1390f), vec3<f32>(-2398f, -598f, 992f), vec3<f32>(112f, 127f, -335f), vec3<f32>(-1124f, 293f, -1007f), vec3<f32>(-917f, -1000f, -1305f), vec3<f32>(978f, -1719f, 435f), vec3<f32>(-422f, 1244f, -1415f), vec3<f32>(-401f, -1727f, -1983f), vec3<f32>(841f, 1000f, -159f), vec3<f32>(-253f, -137f, 136f), vec3<f32>(-2020f, -443f, -287f), vec3<f32>(325f, -2033f, -1606f), vec3<f32>(-1368f, -1212f, 346f), vec3<f32>(-1000f, 1947f, -541f));

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<u32>(4294967295u, 38763u, 1u), 1208f, 1u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<u32>(42287u, 1u)), Struct_1(vec3<u32>(4294967295u, 0u, 65955u), 1074f, 1u, vec3<u32>(4294967295u, 16587u, 12355u), vec2<u32>(70932u, 199u)), Struct_1(vec3<u32>(62839u, 64392u, 4294967295u), 1945f, 4294967295u, vec3<u32>(26463u, 22880u, 23085u), vec2<u32>(6019u, 1u)), Struct_1(vec3<u32>(50528u, 35220u, 1u), -999f, 23583u, vec3<u32>(1u, 0u, 4294967295u), vec2<u32>(26162u, 1u)), Struct_1(vec3<u32>(0u, 0u, 56312u), 303f, 0u, vec3<u32>(34045u, 72204u, 17142u), vec2<u32>(70519u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 12745u, 0u), -2167f, 49124u, vec3<u32>(25566u, 1u, 0u), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<u32>(56460u, 28358u, 21057u), 1983f, 19910u, vec3<u32>(47707u, 34150u, 0u), vec2<u32>(904u, 22471u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), 1008f, 0u, vec3<u32>(1u, 17133u, 4294967295u), vec2<u32>(0u, 1u)), Struct_1(vec3<u32>(54207u, 68318u, 46209u), 1636f, 65048u, vec3<u32>(9170u, 46586u, 56141u), vec2<u32>(52023u, 4294967295u)), Struct_1(vec3<u32>(60392u, 28792u, 1u), 151f, 1u, vec3<u32>(4294967295u, 96673u, 1u), vec2<u32>(47054u, 4294967295u)), Struct_1(vec3<u32>(6602u, 4294967295u, 0u), -1072f, 26285u, vec3<u32>(0u, 8075u, 4294967295u), vec2<u32>(21004u, 27968u)), Struct_1(vec3<u32>(1u, 20158u, 0u), 542f, 1u, vec3<u32>(61312u, 4294967295u, 1u), vec2<u32>(4294967295u, 28984u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 24295u), 1168f, 1u, vec3<u32>(41293u, 1462u, 18851u), vec2<u32>(1u, 96310u)), Struct_1(vec3<u32>(58799u, 93686u, 4294967295u), -1831f, 14840u, vec3<u32>(4294967295u, 4294967295u, 0u), vec2<u32>(0u, 67236u)), Struct_1(vec3<u32>(20144u, 14519u, 4294967295u), -561f, 1u, vec3<u32>(4294967295u, 3310u, 0u), vec2<u32>(38284u, 0u)), Struct_1(vec3<u32>(4294967295u, 1u, 67454u), 841f, 2476u, vec3<u32>(39767u, 91577u, 4294967295u), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<u32>(20846u, 52313u, 48498u), -583f, 4294967295u, vec3<u32>(45537u, 1u, 52017u), vec2<u32>(0u, 12160u)), Struct_1(vec3<u32>(1u, 8535u, 25520u), 1000f, 1u, vec3<u32>(1u, 23203u, 26931u), vec2<u32>(61579u, 85440u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u), -1437f, 17456u, vec3<u32>(0u, 7161u, 4294967295u), vec2<u32>(0u, 16282u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), 937f, 74274u, vec3<u32>(0u, 4294967295u, 2913u), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 0u, 21112u), 1527f, 95816u, vec3<u32>(75960u, 1u, 0u), vec2<u32>(629u, 944u)), Struct_1(vec3<u32>(53557u, 49096u, 4294967295u), 215f, 0u, vec3<u32>(4294967295u, 1u, 14000u), vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(1u, 25978u, 33434u), 1000f, 4294967295u, vec3<u32>(4294967295u, 14663u, 15138u), vec2<u32>(4294967295u, 85237u)), Struct_1(vec3<u32>(61437u, 12796u, 4294967295u), -1709f, 4271u, vec3<u32>(28755u, 0u, 0u), vec2<u32>(0u, 8910u)), Struct_1(vec3<u32>(1u, 1u, 0u), 1110f, 43964u, vec3<u32>(4294967295u, 0u, 4757u), vec2<u32>(32861u, 0u)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_clamp_i32(-min(min(_wgslsmith_clamp_i32(global0.d, u_input.b.x, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(16367i, 2147483647i, 35057i, 23708i), u_input.b)), max(~global2.x, u_input.b.x)), _wgslsmith_sub_i32(1i, global0.d), global2.x);
    let var_1 = -var_0;
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(4294967295u, 61362u, u_input.a, 13069u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_1.x, 0u, 33034u), vec4<u32>(0u, 4294967295u, 22892u, 1u))) | _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.b.x, arg_1.x, global0.b.x, 1568u), vec4<u32>(1u, 4294967295u, 119702u, arg_2.c)), ~(~vec4<u32>(global0.b.x, 30246u, 1u, arg_2.c) << (~vec4<u32>(u_input.d, arg_1.x, arg_1.x, arg_1.x) % vec4<u32>(32u)))), min(global0.a, arg_2.c | _wgslsmith_dot_vec4_u32(~vec4<u32>(9915u, arg_2.d.x, 13662u, 4294967295u), vec4<u32>(arg_2.a.x, 1u, arg_1.x, u_input.d))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.d, global0.a, global0.b.x), select(~global0.b, min(arg_2.d, vec3<u32>(1u, arg_1.x, 1u)), !vec3<bool>(arg_0, true, false))), 1000f, _wgslsmith_clamp_u32(~arg_1.x << (max(arg_1.x, arg_2.e.x) % 32u), ~(u_input.d >> (1u % 32u)), ~global0.b.x), ~(~arg_1) ^ vec3<u32>(41482u, _wgslsmith_add_u32(u_input.a, arg_2.d.x), ~54752u), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, arg_1.x), vec2<u32>(arg_2.a.x, 4294967295u)))), Struct_1(select(vec3<u32>(0u, 58714u, u_input.a | 49237u), max(arg_2.d >> (vec3<u32>(u_input.d, u_input.d, 49203u) % vec3<u32>(32u)), arg_2.a), arg_0), _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_mult_u32(arg_1.x, u_input.a), _wgslsmith_clamp_vec3_u32(global0.b, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(92249u, arg_1.x, 37562u), vec3<u32>(0u, 0u, global0.a), vec3<u32>(64140u, 0u, 1u)), abs(~vec3<u32>(arg_1.x, global0.b.x, global0.b.x))), ~arg_1.zy >> (min(vec2<u32>(u_input.a, global0.a), vec2<u32>(1u, arg_2.c)) % vec2<u32>(32u))), -select(reverseBits(~vec2<i32>(734i, 0i)), u_input.b.xx, select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), true)), !(!select(arg_0, !arg_0, true)), Struct_1(~global0.b, _wgslsmith_f_op_f32(min(-289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1320f)) + -2184f))), _wgslsmith_dot_vec2_u32(max(min(vec2<u32>(1u, arg_1.x), vec2<u32>(14253u, 1u)), ~vec2<u32>(1u, global0.b.x)), min(abs(vec2<u32>(28930u, 1u)), arg_2.e | arg_1.xx)), select(~max(vec3<u32>(10494u, 114483u, global0.a), vec3<u32>(1u, 5579u, u_input.a)), abs(reverseBits(vec3<u32>(53467u, 4294967295u, 0u))), all(!vec3<bool>(false, arg_0, arg_0))), ~arg_2.d.zx));
    global2 = u_input.c.zy;
    return min(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(arg_1.x | u_input.a, ~var_3.a.e.x, 30722u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 57749u, arg_2.e.x, var_3.b.c), vec4<u32>(4294967295u, 50644u, u_input.a, u_input.d))), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, u_input.d)) ^ global0.b.xy, vec2<u32>(firstTrailingBit(global0.a), 4294967295u), vec2<u32>(4294967295u, arg_2.a.x) << ((vec2<u32>(var_3.e.a.x, var_3.b.e.x) & vec2<u32>(14780u, u_input.a)) % vec2<u32>(32u)))), var_3.b.c);
}

fn func_2() -> Struct_4 {
    var var_0 = 1838f;
    global2 = global0.c;
    var var_1 = select(vec4<bool>(select(all(vec2<bool>(true, false)) && true, true, true && all(vec4<bool>(true, true, true, false))), false, any(vec3<bool>(true, any(vec3<bool>(false, false, false)), false)), any(vec4<bool>(2147483647i >= global0.d, all(vec4<bool>(false, false, false, false)), global2.x > -1i, true))), vec4<bool>(true, true, true, _wgslsmith_f_op_f32(-844f + _wgslsmith_f_op_f32(sign(722f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1256f * -279f))), vec4<bool>(global0.a > (global0.a ^ func_3(false, vec3<u32>(20328u, u_input.a, 0u), global4[_wgslsmith_index_u32(119061u, 25u)])), true, true, select(true, true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)))));
    global3 = array<vec3<f32>, 29>();
    var var_2 = firstTrailingBit(~(-8689i)) << (4294967295u % 32u);
    return Struct_4(4294967295u, global0.b, vec2<i32>(u_input.b.x, u_input.e), u_input.c.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = 2478u;
    global1 = 45941i;
    global0 = func_2();
    global1 = 1i & ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b.x, global0.d, global2.x, 50351i), vec4<i32>(5768i, u_input.e, arg_1.d, u_input.c.x) & (u_input.b & u_input.b));
    var var_1 = min(vec3<u32>(arg_1.b.x, arg_1.b.x, max(~arg_0.x, ~arg_0.x)), (select(abs(arg_1.b), vec3<u32>(arg_0.x, arg_0.x, 4294967295u), false) >> ((arg_1.b | global0.b) % vec3<u32>(32u))) & ~_wgslsmith_mod_vec3_u32(arg_1.b, ~arg_0));
    return vec2<i32>(min(_wgslsmith_dot_vec4_i32(~vec4<i32>(global0.c.x, 0i, u_input.c.x, global2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, global2.x, 0i, 63798i), u_input.b)) >> (firstTrailingBit(~0u) % 32u), abs(1i)), -select(abs(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), 1i ^ ~u_input.c.x, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))));
}

fn func_1(arg_0: bool) -> Struct_4 {
    global4 = array<Struct_1, 25>();
    let var_0 = 60757u | global0.a;
    let var_1 = func_4(_wgslsmith_add_vec3_u32(~abs(~global0.b), vec3<u32>(~(~global0.b.x), 20652u, abs(16119u))), func_2());
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-213f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(445f)))))));
    global0 = Struct_4(_wgslsmith_add_u32(27639u, ~(~30325u)), select(~global0.b, vec3<u32>(~4294967295u & var_0, func_2().a, u_input.d), select(arg_0, false, arg_0)), vec2<i32>(select(global0.c.x, ~select(-15701i, global0.d, true), arg_0), -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(min(-31034i, var_1.x) ^ _wgslsmith_mod_i32(0i, 2147483647i), u_input.e, 1i, u_input.e), u_input.b));
    return func_2();
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: vec3<u32>) -> i32 {
    let var_0 = !vec4<bool>(any(vec4<bool>(true, false, true, true)) || true, _wgslsmith_sub_i32(global2.x, firstLeadingBit(0i)) >= func_4(arg_1.b, Struct_4(arg_1.a, vec3<u32>(4294967295u, arg_2.x, 2841u), vec2<i32>(-1i, 13046i), 20919i)).x, select(any(vec4<bool>(true, true, true, true)), global0.d != global0.c.x, any(vec3<bool>(true, true, true))), !select(false, true, false) || !all(vec3<bool>(true, true, true)));
    global4 = array<Struct_1, 25>();
    let var_1 = -4447i;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, 25743u, _wgslsmith_add_u32(~arg_1.a, arg_1.b.x)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(global0.b.x, u_input.a, 36621u), arg_1.b))), 29u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 255f, -161f))))), all(vec4<bool>(false, false, true, -113f >= arg_0))));
    var var_3 = func_1(all(vec2<bool>(true, true)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(~func_5(_wgslsmith_f_op_f32(ceil(614f)), func_1(false), ~global0.b), 8684i, any(vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), true, false)));
    let var_0 = true;
    var var_1 = any(vec4<bool>(all(!select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, true), var_0)), any(vec3<bool>(false, any(vec2<bool>(var_0, true)), var_0)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, var_0, false, var_0), var_0)) | true, true));
    global0 = Struct_4(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(global0.b.zx, vec2<u32>(u_input.a, u_input.a)) | u_input.a, 1u), global0.b, vec2<i32>(global2.x, u_input.c.x), -_wgslsmith_mod_i32(global0.c.x, _wgslsmith_add_i32(global0.c.x, countOneBits(u_input.e))));
    var var_2 = _wgslsmith_dot_vec3_u32(select(global0.b, _wgslsmith_mod_vec3_u32(select(max(vec3<u32>(global0.a, 4294967295u, global0.b.x), vec3<u32>(1u, 4294967295u, global0.a)), global0.b, select(vec3<bool>(true, var_0, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, true, true))), (global0.b | global0.b) | global0.b), select(!select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, true, true), vec3<bool>(false, var_0, var_0)), vec3<bool>(any(vec4<bool>(var_0, false, false, true)), var_0 || true, true), (true | var_0) != !var_0)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global0.b, vec3<u32>(~8967u, ~4294967295u, _wgslsmith_mod_u32(55010u, global0.b.x))), vec3<u32>(17703u, _wgslsmith_sub_u32(func_3(false, global0.b, global4[_wgslsmith_index_u32(12864u, 25u)]), 4294967295u >> (0u % 32u)), 8499u)));
    let var_3 = Struct_3(global4[_wgslsmith_index_u32(18898u, 25u)], 1000f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(var_3.b + var_3.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(303f + var_3.a.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1415f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b)))), 693f);
}

