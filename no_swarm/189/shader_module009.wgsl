struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: bool,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec4<bool>(false, true, true, true), 7837i, Struct_2(vec2<u32>(0u, 28341u), Struct_1(vec3<f32>(-1595f, 715f, -362f), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), 7057u), vec4<bool>(false, false, false, true), 9952u)), Struct_3(vec4<bool>(false, false, false, false), 3295i, Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec3<f32>(595f, 1002f, -500f), vec3<i32>(1i, 2147483647i, 1i), 63939u), vec4<bool>(false, true, true, false), 16868u)), Struct_3(vec4<bool>(true, false, true, true), 2490i, Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(vec3<f32>(1000f, -1762f, 755f), vec3<i32>(2147483647i, -12087i, 0i), 0u), vec4<bool>(true, false, true, true), 98686u)), Struct_3(vec4<bool>(false, true, false, false), 46546i, Struct_2(vec2<u32>(12775u, 22894u), Struct_1(vec3<f32>(2134f, 1000f, 1167f), vec3<i32>(0i, 15337i, 2147483647i), 46714u), vec4<bool>(true, true, true, false), 54441u)), Struct_3(vec4<bool>(true, false, true, true), -2071i, Struct_2(vec2<u32>(0u, 67239u), Struct_1(vec3<f32>(-1197f, -575f, 239f), vec3<i32>(-21761i, 16303i, 26102i), 0u), vec4<bool>(true, false, false, false), 0u)), Struct_3(vec4<bool>(false, false, false, true), 26960i, Struct_2(vec2<u32>(1u, 5813u), Struct_1(vec3<f32>(1521f, -1000f, -743f), vec3<i32>(23645i, i32(-2147483648), -23538i), 4294967295u), vec4<bool>(true, true, true, true), 74087u)), Struct_3(vec4<bool>(true, false, false, true), 7758i, Struct_2(vec2<u32>(1u, 3375u), Struct_1(vec3<f32>(794f, 1141f, 893f), vec3<i32>(2147483647i, 5933i, 0i), 0u), vec4<bool>(false, false, false, true), 1u)), Struct_3(vec4<bool>(false, false, true, false), 37934i, Struct_2(vec2<u32>(4294967295u, 15608u), Struct_1(vec3<f32>(1000f, -494f, 505f), vec3<i32>(0i, -1i, -1i), 1u), vec4<bool>(true, false, false, true), 1u)), Struct_3(vec4<bool>(true, true, false, false), 2147483647i, Struct_2(vec2<u32>(42324u, 1u), Struct_1(vec3<f32>(-469f, -1137f, 300f), vec3<i32>(0i, -57129i, -1i), 0u), vec4<bool>(true, false, true, true), 4294967295u)), Struct_3(vec4<bool>(false, true, true, true), -10192i, Struct_2(vec2<u32>(21697u, 12741u), Struct_1(vec3<f32>(-461f, 1292f, -772f), vec3<i32>(i32(-2147483648), 0i, 32979i), 41550u), vec4<bool>(false, true, true, false), 1u)), Struct_3(vec4<bool>(true, false, true, false), 0i, Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec3<f32>(1450f, -254f, -885f), vec3<i32>(-27190i, 14477i, 1i), 1u), vec4<bool>(true, true, false, false), 48071u)), Struct_3(vec4<bool>(true, true, false, true), 2147483647i, Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec3<f32>(-1000f, -198f, 472f), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), 21601u), vec4<bool>(false, false, true, true), 0u)), Struct_3(vec4<bool>(true, true, false, false), -18581i, Struct_2(vec2<u32>(0u, 1324u), Struct_1(vec3<f32>(-1405f, 2464f, -1000f), vec3<i32>(-31459i, 2147483647i, i32(-2147483648)), 11898u), vec4<bool>(true, true, false, false), 1u)), Struct_3(vec4<bool>(false, true, true, false), 15949i, Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec3<f32>(255f, -544f, -1197f), vec3<i32>(0i, -1i, -67088i), 23489u), vec4<bool>(true, false, false, true), 38077u)), Struct_3(vec4<bool>(false, true, false, true), i32(-2147483648), Struct_2(vec2<u32>(59945u, 42074u), Struct_1(vec3<f32>(-1193f, -133f, 373f), vec3<i32>(-1i, 1i, -1i), 33340u), vec4<bool>(true, true, true, true), 40751u)), Struct_3(vec4<bool>(true, true, true, false), 15210i, Struct_2(vec2<u32>(0u, 0u), Struct_1(vec3<f32>(1000f, 1450f, -1154f), vec3<i32>(i32(-2147483648), -123i, 9843i), 0u), vec4<bool>(true, true, false, false), 4294967295u)), Struct_3(vec4<bool>(true, true, true, false), 12922i, Struct_2(vec2<u32>(4294967295u, 1322u), Struct_1(vec3<f32>(-811f, -535f, -1364f), vec3<i32>(i32(-2147483648), 22022i, 2147483647i), 16708u), vec4<bool>(true, false, false, true), 0u)), Struct_3(vec4<bool>(false, true, true, true), -41598i, Struct_2(vec2<u32>(25875u, 20042u), Struct_1(vec3<f32>(-787f, 690f, -1632f), vec3<i32>(2147483647i, 54964i, -32595i), 40056u), vec4<bool>(true, false, false, true), 0u)), Struct_3(vec4<bool>(false, false, true, true), 2147483647i, Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec3<f32>(-1225f, -554f, -1000f), vec3<i32>(i32(-2147483648), -1i, 12049i), 1u), vec4<bool>(false, true, false, true), 50523u)), Struct_3(vec4<bool>(true, false, true, false), 46648i, Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec3<f32>(-1000f, 1509f, 1000f), vec3<i32>(0i, -7932i, -12631i), 38531u), vec4<bool>(false, true, false, true), 1u)));

var<private> global1: vec2<u32> = vec2<u32>(0u, 20165u);

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = 0u;
    let var_1 = countOneBits(~max(0u, global1.x) & _wgslsmith_add_u32(52209u, ~u_input.c)) >= ~abs(43175u);
    let var_2 = !vec2<bool>(var_1, any(vec4<bool>(var_1, all(vec2<bool>(true, var_1)), select(false, var_1, var_1), true | var_1)));
    let var_3 = !select(select(!select(vec4<bool>(var_1, var_2.x, false, false), vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_2.x, var_2.x, false, var_2.x)), select(!vec4<bool>(var_1, false, var_2.x, var_2.x), select(vec4<bool>(var_2.x, var_1, true, true), vec4<bool>(false, false, false, false), vec4<bool>(var_2.x, var_1, false, var_2.x)), vec4<bool>(var_2.x, var_2.x, var_2.x, true)), !(u_input.a <= -23916i)), select(vec4<bool>(var_2.x, all(vec3<bool>(true, true, var_2.x)), true, all(vec3<bool>(false, var_2.x, var_1))), !vec4<bool>(true, true, var_1, var_1), var_1), vec4<bool>(var_1, !(!var_2.x), true, false));
    global1 = abs(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global1.x, 1u), u_input.c), vec2<u32>(~4294967295u, ~3805u))));
    return reverseBits(0u);
}

fn func_2() -> Struct_5 {
    global0 = array<Struct_3, 20>();
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(271f, -1000f, 495f, -1239f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(239f, 1263f, -258f, 220f), vec4<f32>(-960f, -1653f, -233f, 793f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1388f, -1415f, 511f, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f + 1620f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1858f), _wgslsmith_f_op_f32(f32(-1f) * -937f)), -895f), -1030f)));
    var var_1 = min(_wgslsmith_mod_u32(~0u, ~(~(global1.x & u_input.c))), _wgslsmith_mod_u32(~82791u, abs(26748u)));
    var var_2 = i32(-1i) * -1i;
    var var_3 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(~(vec4<u32>(27913u, 83751u, u_input.c, 52030u) & vec4<u32>(4294967295u, 14408u, 4294967295u, 72276u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 69410u, global1.x, global1.x), vec4<u32>(30184u, 4294967295u, 0u, 1u)) & select(vec4<u32>(u_input.c, 12963u, 0u, u_input.c), vec4<u32>(u_input.c, global1.x, 68094u, u_input.c), vec4<bool>(true, false, true, true))), vec4<u32>(u_input.c, 19032u, _wgslsmith_mod_u32(~4294967295u, ~(u_input.c >> (global1.x % 32u))), _wgslsmith_mod_u32(~_wgslsmith_mult_u32(12805u, u_input.c), ~(global1.x | 1u))));
    return Struct_5(global0[_wgslsmith_index_u32(abs(func_3(u_input.b)), 20u)], -27523i, true, Struct_4(Struct_2(vec2<u32>(~4294967295u, global1.x), global2[_wgslsmith_index_u32(~1u, 15u)], !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), true), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c) >> (vec2<u32>(49360u, global1.x) % vec2<u32>(32u)), ~vec2<u32>(u_input.c, u_input.c))), var_0.zx, Struct_2(vec2<u32>(global1.x, u_input.c) << (select(vec2<u32>(global1.x, 16357u), vec2<u32>(4294967295u, global1.x), true) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(9633u, 15u)], vec4<bool>(true, true, true, any(vec3<bool>(false, false, false))), ~_wgslsmith_sub_u32(global1.x, global1.x)), Struct_1(var_0.zyz, abs(-vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_add_u32(_wgslsmith_add_u32(21381u, 7649u), select(0u, global1.x, true))), min(vec2<i32>(17407i, u_input.a), ~vec2<i32>(u_input.a, u_input.b)) & vec2<i32>(max(u_input.a, 1i), min(-2147483647i, u_input.b))), 1u);
}

fn func_4(arg_0: Struct_5) -> vec3<f32> {
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_0.d.a.b.a)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-276f, _wgslsmith_f_op_f32(f32(-1f) * -323f), arg_0.a.c.b.a.x))));
}

fn func_1() -> u32 {
    let var_0 = -(0i >> ((12329u << (min(_wgslsmith_div_u32(30943u, u_input.c), 31572u << (global1.x % 32u)) % 32u)) % 32u));
    var var_1 = Struct_2(vec2<u32>(firstLeadingBit(global1.x), 0u), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_2()))), select(vec3<i32>(var_0 >> (u_input.c % 32u), u_input.a ^ -43211i, var_0), firstTrailingBit(vec3<i32>(5785i, 2147483647i, -2147483647i) | vec3<i32>(11230i, u_input.a, -2147483647i)), false), ~4294967295u), select(vec4<bool>((i32(-1i) * -34133i) == (var_0 & 4735i), false, -33204i <= u_input.a, true), vec4<bool>(true, true, true, true), !any(vec2<bool>(true, true))), reverseBits(~firstLeadingBit(0u & global1.x)));
    global0 = array<Struct_3, 20>();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a.x, -745f, _wgslsmith_div_f32(var_1.b.a.x, 726f)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.a.x, var_1.b.a.x, -1026f), vec3<f32>(-826f, var_1.b.a.x, 1726f)))) + vec3<f32>(1490f, var_1.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.b.a.x)) - _wgslsmith_f_op_f32(select(var_1.b.a.x, var_1.b.a.x, false))))));
    let var_3 = !vec2<bool>(any(vec2<bool>(func_2().d.a.c.x, true)), true);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2584f))));
    let var_1 = -vec2<i32>(-5400i, u_input.a << (func_1() % 32u));
    let var_2 = global0[_wgslsmith_index_u32(abs(func_2().e), 20u)];
    global0 = array<Struct_3, 20>();
    var var_3 = -2147483647i;
    var var_4 = _wgslsmith_dot_vec3_i32(func_2().a.c.b.b, _wgslsmith_div_vec3_i32(select(var_2.c.b.b, var_2.c.b.b, true), vec3<i32>(-firstLeadingBit(0i), var_2.c.b.b.x, _wgslsmith_sub_i32(var_2.c.b.b.x, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(19875u, 0u, global1.x, u_input.c), vec4<u32>(60361u, 21450u, 2624u, 1u))), u_input.b, select(-vec3<i32>(0i, _wgslsmith_mod_i32(-14100i, 94853i), 0i), select(var_2.c.b.b, var_2.c.b.b, false), _wgslsmith_f_op_f32(round(var_0)) == _wgslsmith_f_op_f32(-620f - var_2.c.b.a.x)), u_input.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_2.c.b.a.x, var_0, var_2.c.b.a.x), vec4<f32>(var_2.c.b.a.x, 652f, -1000f, var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1211f, var_0, -1688f, -386f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.c.b.a.x, 786f, -679f, 777f))))))));
}

