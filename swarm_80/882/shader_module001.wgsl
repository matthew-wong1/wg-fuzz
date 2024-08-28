struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<u32>(5037u, 1u), vec4<f32>(-1206f, 241f, 1911f, -1666f)), Struct_1(vec2<u32>(1u, 15640u), vec4<f32>(1270f, 1466f, 176f, -1652f)), Struct_1(vec2<u32>(61452u, 1u), vec4<f32>(1466f, -407f, 806f, -1828f)), Struct_1(vec2<u32>(4294967295u, 33351u), vec4<f32>(-1449f, 388f, 1080f, -969f)), Struct_1(vec2<u32>(0u, 51825u), vec4<f32>(-187f, 1007f, -1080f, 427f)), Struct_1(vec2<u32>(51447u, 1u), vec4<f32>(-130f, 873f, 722f, -927f)), Struct_1(vec2<u32>(0u, 74850u), vec4<f32>(-689f, 291f, 1329f, 666f)), Struct_1(vec2<u32>(1u, 78151u), vec4<f32>(463f, -393f, 1483f, 400f)), Struct_1(vec2<u32>(49814u, 21613u), vec4<f32>(1000f, -1901f, -1178f, -2069f)), Struct_1(vec2<u32>(34069u, 40541u), vec4<f32>(-582f, -1000f, -551f, -935f)), Struct_1(vec2<u32>(1u, 118318u), vec4<f32>(-840f, 1084f, 820f, 285f)), Struct_1(vec2<u32>(4294967295u, 39732u), vec4<f32>(-1597f, 1000f, -259f, 786f)), Struct_1(vec2<u32>(4294967295u, 35836u), vec4<f32>(638f, -619f, -790f, -465f)), Struct_1(vec2<u32>(53664u, 4294967295u), vec4<f32>(865f, 211f, -1311f, -1689f)), Struct_1(vec2<u32>(962u, 0u), vec4<f32>(2218f, -625f, -1110f, -1814f)), Struct_1(vec2<u32>(19479u, 53638u), vec4<f32>(-316f, -1552f, 832f, 434f)), Struct_1(vec2<u32>(85349u, 0u), vec4<f32>(551f, -1954f, 1314f, 1860f)), Struct_1(vec2<u32>(4294967295u, 0u), vec4<f32>(1000f, 1064f, 1153f, 1033f)), Struct_1(vec2<u32>(11712u, 3801u), vec4<f32>(2613f, -1020f, -1000f, 235f)), Struct_1(vec2<u32>(1u, 84798u), vec4<f32>(1812f, -474f, 1434f, 237f)), Struct_1(vec2<u32>(75719u, 0u), vec4<f32>(1360f, -222f, -508f, -1000f)), Struct_1(vec2<u32>(24852u, 52003u), vec4<f32>(-827f, -1603f, -385f, 1911f)), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(953f, -378f, 549f, 1000f)), Struct_1(vec2<u32>(1u, 72183u), vec4<f32>(-260f, 1608f, -148f, -786f)), Struct_1(vec2<u32>(26197u, 4294967295u), vec4<f32>(258f, -514f, -443f, -218f)), Struct_1(vec2<u32>(24606u, 59942u), vec4<f32>(548f, -1250f, -113f, -778f)), Struct_1(vec2<u32>(0u, 0u), vec4<f32>(-1214f, -1000f, -1006f, 351f)), Struct_1(vec2<u32>(2205u, 4294967295u), vec4<f32>(1000f, -207f, 367f, 2551f)), Struct_1(vec2<u32>(18026u, 3119u), vec4<f32>(1425f, -710f, -1290f, -461f)), Struct_1(vec2<u32>(76540u, 4294967295u), vec4<f32>(672f, 1323f, 186f, -350f)), Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(-790f, 822f, -1874f, 115f)));

var<private> global1: array<Struct_2, 5>;

var<private> global2: u32;

var<private> global3: vec4<f32> = vec4<f32>(-1287f, -479f, 1732f, -1637f);

var<private> global4: array<i32, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_3) -> u32 {
    global4 = array<i32, 3>();
    global1 = array<Struct_2, 5>();
    var var_0 = vec2<i32>(-68053i, u_input.a.x);
    global4 = array<i32, 3>();
    var_0 = -vec2<i32>(abs(_wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_mult_i32(0i, global4[_wgslsmith_index_u32(52955u, 3u)]))), -1i);
    return 0u;
}

fn func_2(arg_0: f32) -> u32 {
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-785f)), global3.x, -1572f, global3.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, 2824f, 1131f) * vec4<f32>(-1022f, arg_0, arg_0, 1794f)) + vec4<f32>(global3.x, -1176f, -339f, global3.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global3.x, _wgslsmith_div_f32(-802f, -613f), -1165f) - vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(step(global3.x, global3.x)), _wgslsmith_f_op_f32(max(global3.x, -1736f)), _wgslsmith_f_op_f32(-arg_0)))));
    let var_0 = Struct_3(global4[_wgslsmith_index_u32(~0u, 3u)]);
    let var_1 = ~0u & ~_wgslsmith_clamp_u32(func_3(Struct_2(u_input.a.x, Struct_1(vec2<u32>(4294967295u, 61968u), vec4<f32>(arg_0, -1726f, -276f, -1984f)), vec3<i32>(global4[_wgslsmith_index_u32(12740u, 3u)], -1i, var_0.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, global4[_wgslsmith_index_u32(17947u, 3u)], u_input.a.x, -1i), vec4<i32>(-36906i, 25660i, u_input.a.x, -47953i)), _wgslsmith_f_op_f32(exp2(global3.x)), var_0), func_3(global1[_wgslsmith_index_u32(~7621u, 5u)], select(vec4<i32>(var_0.a, global4[_wgslsmith_index_u32(14589u, 3u)], -1i, -1i), vec4<i32>(331i, -800i, -2147483647i, -2147483647i), vec4<bool>(false, false, true, false)), global3.x, var_0), 1069u);
    var var_2 = _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-global3.x));
    var var_3 = global0[_wgslsmith_index_u32(var_1, 31u)];
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~var_3.a.x & ~var_1, ~var_3.a.x >> (1u % 32u), ~var_1), ~(~vec3<u32>(4294967295u, 16287u, var_3.a.x))), ~(~_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, var_3.a.x), select(1u, var_3.a.x, false))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> u32 {
    global1 = array<Struct_2, 5>();
    let var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_2)), arg_1.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f - arg_1.b.x))));
    var var_1 = arg_1;
    var var_2 = global1[_wgslsmith_index_u32(arg_3.x, 5u)];
    global0 = array<Struct_1, 31>();
    return abs(var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(34970u, 25547u, 7432u, _wgslsmith_div_u32(reverseBits(~func_1(global4[_wgslsmith_index_u32(0u, 3u)], Struct_1(vec2<u32>(57333u, 1u), vec4<f32>(global3.x, global3.x, global3.x, global3.x)), -123f, vec3<u32>(8169u, 25457u, 6344u))), ~87225u));
    var var_1 = Struct_1(~var_0.yz, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2077f, global3.x, 619f, 380f) + vec4<f32>(global3.x, global3.x, 1000f, global3.x)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1435f, -1497f, global3.x, 657f))))), vec4<f32>(_wgslsmith_f_op_f32(-561f - -1068f), global3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.x, global3.x))), 1000f))));
    var var_2 = Struct_2(2147483647i, Struct_1(var_0.wx << (~vec2<u32>(27447u, var_0.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b + var_1.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2047f, global3.x, 784f, var_1.b.x)))), -vec3<i32>(reverseBits(77872i), u_input.a.x & global4[_wgslsmith_index_u32(var_1.a.x, 3u)], u_input.a.x) >> (~(~vec3<u32>(var_1.a.x, 10612u, 11161u)) % vec3<u32>(32u)));
    global0 = array<Struct_1, 31>();
    let var_3 = Struct_3(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_2.c.x, u_input.a.x >> (4847u % 32u)), 1i));
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b.x, 1000f, true)) - _wgslsmith_f_op_f32(-global3.x)) + 996f))));
    let var_5 = vec2<i32>(reverseBits(-u_input.a.x), global4[_wgslsmith_index_u32(0u, 3u)]);
    let var_6 = Struct_2(~var_2.c.x, Struct_1(countOneBits(firstLeadingBit(vec2<u32>(4294967295u, 42566u))) >> (var_1.a % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.b.x, 1000f, -656f, -1456f) - vec4<f32>(638f, -170f, 1000f, 706f)))), vec3<i32>(i32(-1i) * -11177i, 0i, _wgslsmith_sub_i32(~(-1i | var_3.a), abs(2147483647i) | _wgslsmith_dot_vec3_i32(var_2.c, var_2.c))));
    let var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1193f))), ~vec2<u32>(0u, ~var_6.b.a.x), _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_3.a, 26731i)), _wgslsmith_add_vec2_i32(var_2.c.xx, ~var_7.c.yy))), ~reverseBits(-firstLeadingBit(u_input.a)));
}

