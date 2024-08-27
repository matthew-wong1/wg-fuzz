struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(-881f, vec4<f32>(-1664f, 407f, 1000f, 694f), vec4<f32>(1000f, -1101f, 1098f, -208f)), Struct_4(-516f, vec4<f32>(924f, 1996f, -307f, 777f), vec4<f32>(257f, 1040f, 1176f, -921f)), Struct_4(153f, vec4<f32>(-768f, 778f, -1239f, -599f), vec4<f32>(1168f, -370f, -631f, 588f)), Struct_4(1745f, vec4<f32>(128f, -462f, -1097f, 1462f), vec4<f32>(1067f, -1000f, 1000f, 262f)), Struct_4(-199f, vec4<f32>(-279f, -746f, -389f, 332f), vec4<f32>(-700f, -432f, -2033f, 1543f)), Struct_4(-230f, vec4<f32>(175f, -112f, -875f, 474f), vec4<f32>(454f, 195f, -733f, -1000f)), Struct_4(1388f, vec4<f32>(-796f, 148f, -501f, 776f), vec4<f32>(-2110f, 963f, -909f, -252f)), Struct_4(-1340f, vec4<f32>(-410f, -1210f, 187f, 200f), vec4<f32>(273f, 1000f, 896f, -265f)), Struct_4(1000f, vec4<f32>(-1000f, 1000f, 662f, -1399f), vec4<f32>(1527f, -156f, 1347f, 276f)), Struct_4(1654f, vec4<f32>(-282f, 692f, 1000f, -975f), vec4<f32>(-176f, 617f, 260f, 123f)), Struct_4(-245f, vec4<f32>(-1000f, -677f, 1027f, 1118f), vec4<f32>(-1354f, -506f, 1000f, 151f)), Struct_4(-303f, vec4<f32>(-818f, 1671f, 1768f, -237f), vec4<f32>(-787f, -669f, 1568f, -273f)), Struct_4(-177f, vec4<f32>(-201f, -3046f, -616f, -818f), vec4<f32>(-1339f, 1548f, -1836f, -505f)), Struct_4(589f, vec4<f32>(736f, -1249f, -1555f, 181f), vec4<f32>(153f, -1418f, -398f, -466f)), Struct_4(110f, vec4<f32>(251f, 1146f, -317f, -181f), vec4<f32>(2266f, 241f, -991f, -793f)), Struct_4(-1250f, vec4<f32>(1440f, 182f, 138f, -398f), vec4<f32>(1149f, -528f, 648f, 539f)));

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<u32, 18>;

var<private> global3: array<Struct_4, 13>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = Struct_5(!arg_0.c.www);
    global0 = array<Struct_4, 16>();
    let var_1 = ~_wgslsmith_sub_vec4_i32(-firstTrailingBit(arg_1.a.d ^ vec4<i32>(arg_0.d.x, -2147483647i, u_input.d, arg_1.d.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0.d, arg_1.d, arg_1.a.d), arg_0.d), _wgslsmith_div_vec4_i32(firstTrailingBit(arg_0.d), select(vec4<i32>(arg_0.d.x, arg_0.d.x, u_input.c.x, arg_1.a.d.x), vec4<i32>(2147483647i, arg_0.d.x, u_input.b, arg_0.d.x), arg_0.c))));
    global1 = var_0.a.xy;
    let var_2 = vec3<i32>(arg_0.d.x, min(_wgslsmith_mod_i32(u_input.c.x, firstLeadingBit(arg_0.d.x)), ~(~(arg_0.d.x ^ var_1.x))), -1i);
    return -253f;
}

fn func_3() -> i32 {
    global1 = select(vec2<bool>(global1.x | global1.x, true), vec2<bool>(all(vec4<bool>(all(vec2<bool>(false, global1.x)), u_input.a > u_input.e.x, false, any(vec2<bool>(true, true)))), select(global1.x, false, select(u_input.b == u_input.c.x, u_input.d < 45905i, global1.x))), vec2<bool>(true, false));
    global2 = array<u32, 18>();
    let var_0 = firstTrailingBit(u_input.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_2 = var_1.x;
    return u_input.b;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: i32) -> f32 {
    return _wgslsmith_f_op_f32(sign(-921f));
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1650f), -323f), -140f, -734f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(752f))) + 145f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-512f, _wgslsmith_f_op_f32(func_2(Struct_1(vec3<bool>(false, global1.x, global1.x), global2[_wgslsmith_index_u32(26073u, 18u)], vec4<bool>(false, false, global1.x, true), vec4<i32>(20752i, 0i, -22281i, 28378i), vec3<f32>(507f, 388f, 1734f)), Struct_2(Struct_1(vec3<bool>(global1.x, global1.x, global1.x), u_input.e.x, vec4<bool>(true, true, false, global1.x), vec4<i32>(u_input.b, 19610i, 2147483647i, -1i), vec3<f32>(-931f, 136f, -559f)), 4294967295u, u_input.e.x, vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, u_input.c.x), vec2<u32>(55040u, 4667u)))), 1327f, -847f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(875f, -3186f, -1091f, -547f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -707f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2483f) + -527f), _wgslsmith_f_op_f32(func_4(reverseBits(vec4<i32>(-11238i, 47208i, 2147483647i, -2147483647i)), vec3<f32>(-1734f, 1533f, 1088f), Struct_3(Struct_2(Struct_1(vec3<bool>(false, global1.x, false), 0u, vec4<bool>(true, global1.x, global1.x, global1.x), vec4<i32>(u_input.c.x, 2147483647i, -15194i, u_input.c.x), vec3<f32>(-514f, 113f, 1233f)), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 18u)], u_input.e.x, vec4<i32>(-68551i, u_input.d, u_input.c.x, -3203i), u_input.e.xx), -1000f, vec2<f32>(-142f, 724f), Struct_1(vec3<bool>(true, global1.x, global1.x), 65610u, vec4<bool>(true, global1.x, false, global1.x), vec4<i32>(2147483647i, -39434i, u_input.b, 35745i), vec3<f32>(-243f, -1318f, -2016f))), func_3())), -718f)));
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1303f, -112f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -1266f, 1995f, -1472f), vec4<f32>(-465f, -662f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-330f, 921f, 1000f, -592f) - vec4<f32>(var_0.x, var_0.x, -1016f, 1228f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 585f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 257f) * vec4<f32>(var_0.x, var_0.x, var_0.x, 387f))))))));
    let var_1 = select(!vec4<bool>(global1.x, global1.x, any(!vec4<bool>(true, true, false, global1.x)), global1.x), select(select(select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x)), !vec4<bool>(global1.x, global1.x, true, false), global1.x), select(vec4<bool>(false, false, true, true), vec4<bool>(false, global1.x, true, true), false & global1.x), vec4<bool>(global1.x, true, select(global1.x, global1.x, global1.x), true)), select(select(!vec4<bool>(global1.x, true, false, false), !vec4<bool>(global1.x, false, false, true), 1536f <= var_0.x), !(!vec4<bool>(global1.x, false, global1.x, global1.x)), global1.x), vec4<bool>(global1.x, true, global1.x, !(!global1.x))), vec4<bool>(true && global1.x, false, !global1.x, !global1.x));
    let var_2 = !global1.x;
    global2 = array<u32, 18>();
    return vec4<i32>(~33559i << (max(~4294967295u, firstTrailingBit(1u)) % 32u), 0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d, -55107i, u_input.d, 0i)), -vec4<i32>(-1i, u_input.d, u_input.b, u_input.d)) ^ _wgslsmith_add_i32(u_input.d, ~u_input.c.x), ~1i ^ u_input.b), ~u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<u32>(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22113u, 18u)], 18u)] | reverseBits(5293u), max(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2053u, 18u)], 18u)] | 1u), global1.x), ~global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], u_input.a), 18u)], 102955u, ~_wgslsmith_dot_vec3_u32(u_input.e.zxw << (u_input.e.wzx % vec3<u32>(32u)), ~u_input.e.wxw)));
    global0 = array<Struct_4, 16>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(3015f, -584f, 1000f), vec3<f32>(575f, -1000f, -1371f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-645f, -1000f, 1361f)))), vec3<bool>(true, !global1.x, global1.x)))));
    global0 = array<Struct_4, 16>();
    global3 = array<Struct_4, 13>();
    var var_2 = Struct_3(Struct_2(Struct_1(vec3<bool>(any(vec4<bool>(true, global1.x, global1.x, global1.x)), true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 0u, 4294967295u), var_0.wyy), vec4<bool>(false, true, false || global1.x, true), -func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-672f, -936f, 982f))), ~min(global2[_wgslsmith_index_u32(12835u, 18u)], ~1543u), ~(~global2[_wgslsmith_index_u32(~u_input.e.x, 18u)]), _wgslsmith_sub_vec4_i32(-countOneBits(vec4<i32>(u_input.d, 80699i, u_input.b, -60434i)), ~(~vec4<i32>(u_input.c.x, u_input.d, 191i, u_input.c.x))), ~(abs(u_input.e.wx) | _wgslsmith_div_vec2_u32(var_0.wx, vec2<u32>(var_0.x, 0u)))), var_1.x, var_1.yz, Struct_1(vec3<bool>(select(global1.x, true, global1.x), false, select(var_1.x <= var_1.x, !global1.x, all(vec4<bool>(global1.x, true, global1.x, global1.x)))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 54403u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]), ~var_0), !(!select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(true, global1.x, false, true), vec4<bool>(global1.x, false, false, true))), vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.c, u_input.c), ~u_input.d >> (~1u % 32u), 4923i, u_input.b), var_1));
    let var_3 = Struct_1(!var_2.a.a.c.xzw, var_2.d.b, vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(262f)))) > _wgslsmith_f_op_f32(-var_2.c.x), true, true, !all(select(vec4<bool>(global1.x, var_2.d.a.x, var_2.a.a.a.x, true), vec4<bool>(true, true, var_2.a.a.a.x, true), var_2.d.c))), var_2.a.a.d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-338f - -174f), 2261f)) + -1228f), var_2.c.x, 1000f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_2.d.e), select(reverseBits(u_input.e), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(43869u, var_3.b, 1u, 60253u), u_input.e << (vec4<u32>(1u, 52348u, var_3.b, var_2.d.b) % vec4<u32>(32u))), !(all(var_3.c.wx) | true)), 1u, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -479f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_3, var_2.a)) + -835f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.e.x) * _wgslsmith_f_op_f32(sign(var_1.x))))), ~select(firstLeadingBit(_wgslsmith_mod_u32(4294967295u, 4294967295u)), 1u, true));
}

