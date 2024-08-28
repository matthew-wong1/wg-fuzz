struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<u32>(1u, 1u, 79333u, 42572u), vec4<f32>(2018f, -1223f, 1675f, 1000f), vec2<f32>(-1000f, 1896f), vec3<u32>(4294967295u, 33722u, 4294967295u)), Struct_1(vec4<u32>(37827u, 1u, 1u, 1u), vec4<f32>(279f, 1831f, 725f, -1633f), vec2<f32>(1098f, -1000f), vec3<u32>(26842u, 33858u, 21230u)), Struct_1(vec4<u32>(1u, 1u, 51416u, 4294967295u), vec4<f32>(1124f, -304f, -154f, -1000f), vec2<f32>(1000f, -724f), vec3<u32>(1u, 54130u, 4294967295u)), Struct_1(vec4<u32>(40992u, 30279u, 1u, 37190u), vec4<f32>(338f, 1480f, 1281f, -449f), vec2<f32>(-370f, 896f), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec4<u32>(94724u, 0u, 11947u, 0u), vec4<f32>(-1520f, -1053f, -1000f, 619f), vec2<f32>(-1000f, -358f), vec3<u32>(37500u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<f32>(1505f, -123f, -167f, -318f), vec2<f32>(-783f, -452f), vec3<u32>(5581u, 0u, 339u)), Struct_1(vec4<u32>(4294967295u, 1u, 208u, 31034u), vec4<f32>(275f, 1181f, 1086f, -2983f), vec2<f32>(1123f, -288f), vec3<u32>(1u, 51996u, 0u)), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<f32>(-789f, 1506f, 185f, 757f), vec2<f32>(321f, 735f), vec3<u32>(46673u, 1u, 44053u)), Struct_1(vec4<u32>(1928u, 0u, 4294967295u, 59636u), vec4<f32>(813f, -453f, 1010f, -399f), vec2<f32>(-347f, -1520f), vec3<u32>(0u, 0u, 81079u)), Struct_1(vec4<u32>(13983u, 5278u, 44952u, 52443u), vec4<f32>(-1140f, -668f, -1363f, -173f), vec2<f32>(-416f, 1000f), vec3<u32>(1u, 32978u, 33013u)), Struct_1(vec4<u32>(7645u, 4294967295u, 0u, 3715u), vec4<f32>(-770f, -616f, -456f, -369f), vec2<f32>(1107f, -176f), vec3<u32>(24005u, 10461u, 0u)), Struct_1(vec4<u32>(1864u, 11876u, 15623u, 1u), vec4<f32>(570f, -1329f, -271f, 698f), vec2<f32>(-146f, 985f), vec3<u32>(55739u, 55221u, 4294967295u)), Struct_1(vec4<u32>(25792u, 4294967295u, 14329u, 45587u), vec4<f32>(-920f, 1339f, 804f, 203f), vec2<f32>(-420f, 488f), vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec4<u32>(25366u, 17828u, 21871u, 116083u), vec4<f32>(-1697f, 427f, -1045f, 107f), vec2<f32>(625f, 648f), vec3<u32>(2639u, 32625u, 4294967295u)), Struct_1(vec4<u32>(1u, 20752u, 51955u, 4294967295u), vec4<f32>(-198f, -1595f, -712f, 315f), vec2<f32>(-906f, 1394f), vec3<u32>(47229u, 27742u, 37365u)), Struct_1(vec4<u32>(1u, 0u, 1u, 32483u), vec4<f32>(927f, -2239f, 206f, 1041f), vec2<f32>(409f, 1372f), vec3<u32>(52110u, 6217u, 44828u)), Struct_1(vec4<u32>(47491u, 4294967295u, 32064u, 1u), vec4<f32>(-1249f, 1015f, -723f, 1000f), vec2<f32>(1177f, -1000f), vec3<u32>(21978u, 35009u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 51121u, 0u, 74714u), vec4<f32>(614f, -2198f, -1659f, 961f), vec2<f32>(415f, -337f), vec3<u32>(86340u, 6509u, 4294967295u)), Struct_1(vec4<u32>(21611u, 28640u, 53706u, 11793u), vec4<f32>(171f, 1070f, 910f, -1866f), vec2<f32>(-116f, -275f), vec3<u32>(1u, 4294967295u, 30974u)), Struct_1(vec4<u32>(67826u, 35901u, 1369u, 1u), vec4<f32>(-2364f, -771f, -887f, -764f), vec2<f32>(-1279f, 582f), vec3<u32>(0u, 0u, 8390u)), Struct_1(vec4<u32>(4294967295u, 62524u, 26930u, 60029u), vec4<f32>(-889f, -883f, 2484f, 412f), vec2<f32>(-722f, -460f), vec3<u32>(4245u, 47591u, 47421u)), Struct_1(vec4<u32>(45510u, 1u, 7350u, 1u), vec4<f32>(104f, -781f, -1848f, -1324f), vec2<f32>(387f, 879f), vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 3585u, 37889u, 43438u), vec4<f32>(-385f, 655f, 447f, 536f), vec2<f32>(-1532f, -1614f), vec3<u32>(1u, 1u, 9806u)));

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    return Struct_2(abs(_wgslsmith_sub_i32(u_input.b, _wgslsmith_clamp_i32(-arg_0.b, -11624i, firstLeadingBit(2147483647i)))), -max(~countOneBits(-14716i), ~33533i));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_2(arg_2 >> (~1u % 32u), u_input.c.x);
    let var_1 = 14327u;
    var_0 = Struct_2(_wgslsmith_dot_vec2_i32(u_input.c.yx, max(~(~u_input.c.yz), u_input.c.xy)), arg_1.b);
    let var_2 = func_2(global1.a, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-55426i, 4694i, _wgslsmith_mult_i32(var_0.b, var_0.b), 1i), vec4<i32>(arg_3.a, ~u_input.c.x, firstLeadingBit(arg_2), _wgslsmith_mod_i32(1i, 2147483647i))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(16824i, -18897i, arg_1.b, 2147483647i), vec4<i32>(arg_3.b, 0i, -11878i, 2147483647i) >> (global1.c % vec4<u32>(32u))), vec4<i32>(_wgslsmith_div_i32(-2147483647i, arg_2), arg_2, arg_2, _wgslsmith_add_i32(var_0.b, global1.a.b)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(global1.b.b));
    return arg_3.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec4<i32> {
    let var_0 = false;
    let var_1 = vec4<bool>(select(-(56327i ^ u_input.c.x) > ~arg_0.x, var_0, (u_input.a.x & ~65061u) <= u_input.d), !(global1.b.b.x > -259f) && var_0, var_0, var_0);
    global2 = array<Struct_1, 23>();
    global0 = false;
    let var_2 = _wgslsmith_sub_vec2_i32(-vec2<i32>(1i, 1i) >> (u_input.a % vec2<u32>(32u)), vec2<i32>(1i, ~u_input.c.x >> (global1.c.x % 32u)));
    return vec4<i32>(max((-25843i | _wgslsmith_mult_i32(var_2.x, 0i)) << (1u % 32u), 0i), -20284i, -77623i, -(1i | _wgslsmith_clamp_i32(countOneBits(2147483647i), func_2(Struct_2(var_2.x, u_input.c.x), vec4<i32>(0i, -81802i, var_2.x, global1.a.a)).b, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(global1.b.b));
    let var_1 = Struct_2(-(~(-(~global1.a.a))), 19831i);
    var_0 = _wgslsmith_f_op_vec4_f32(-global1.b.b);
    var var_2 = var_1;
    var var_3 = vec4<bool>(true, true, !any(global3.wz), false);
    let var_4 = ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(31750u, 11972u), select(global1.c.xz, u_input.a, global3.x))));
    let var_5 = ~reverseBits(vec4<i32>(var_1.b, _wgslsmith_add_i32(1i, var_2.b), -33279i, func_1(global1.b, var_1, 42875i, Struct_2(var_1.a, -2208i))) << (countOneBits(~global1.c) % vec4<u32>(32u)));
    global1 = Struct_3(func_2(var_1, func_3(-vec3<i32>(u_input.c.x, var_2.a, 2147483647i) >> (vec3<u32>(60689u, 4294967295u, global1.b.d.x) % vec3<u32>(32u)), !global3.x | all(var_3.ww))), global2[_wgslsmith_index_u32(var_4, 23u)], ~global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, var_5.x, (var_1.b << (u_input.a.x % 32u)) | global1.a.b, u_input.c.x) << (~vec4<u32>(1u, u_input.a.x, global1.c.x & 1u, var_4) % vec4<u32>(32u)));
}

