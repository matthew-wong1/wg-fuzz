struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<f32>(-1151f, -1113f, -1108f), -1000f, vec2<f32>(-604f, 695f), vec2<i32>(19362i, -14295i), vec4<i32>(2147483647i, 2147483647i, 1i, -25491i)), Struct_1(vec3<f32>(-573f, -256f, 471f), -844f, vec2<f32>(-533f, -1513f), vec2<i32>(-1i, 1i), vec4<i32>(0i, i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_1(vec3<f32>(-169f, -1501f, 848f), 2040f, vec2<f32>(-1094f, 968f), vec2<i32>(i32(-2147483648), 2147483647i), vec4<i32>(1i, -1i, 6273i, 1875i)), Struct_1(vec3<f32>(256f, 1105f, -257f), 1068f, vec2<f32>(584f, 349f), vec2<i32>(0i, i32(-2147483648)), vec4<i32>(31832i, 44632i, i32(-2147483648), i32(-2147483648))), Struct_1(vec3<f32>(-544f, 716f, -1000f), 177f, vec2<f32>(-1077f, -489f), vec2<i32>(-3351i, 2147483647i), vec4<i32>(0i, 2147483647i, 6568i, 7696i)), Struct_1(vec3<f32>(-232f, 788f, 1324f), -200f, vec2<f32>(1000f, 1642f), vec2<i32>(2147483647i, -42366i), vec4<i32>(-1i, -17072i, 1i, 19658i)), Struct_1(vec3<f32>(-1000f, 1000f, 1024f), -445f, vec2<f32>(-888f, -589f), vec2<i32>(19982i, 1i), vec4<i32>(-31269i, -8402i, i32(-2147483648), -2324i)), Struct_1(vec3<f32>(-1512f, -388f, 1082f), -968f, vec2<f32>(-451f, -1092f), vec2<i32>(i32(-2147483648), 11488i), vec4<i32>(-54782i, -7325i, 0i, 1i)), Struct_1(vec3<f32>(-226f, -1000f, -1527f), -338f, vec2<f32>(-276f, 317f), vec2<i32>(-8179i, 0i), vec4<i32>(0i, 44335i, 19024i, 25651i)), Struct_1(vec3<f32>(-189f, 242f, -749f), -1000f, vec2<f32>(979f, -1650f), vec2<i32>(-2245i, i32(-2147483648)), vec4<i32>(-64882i, 1i, 18809i, -3314i)), Struct_1(vec3<f32>(1403f, 763f, 240f), -2488f, vec2<f32>(-1263f, 306f), vec2<i32>(0i, 2147483647i), vec4<i32>(1i, i32(-2147483648), 77372i, 0i)), Struct_1(vec3<f32>(-1000f, -187f, 1127f), -295f, vec2<f32>(1202f, 338f), vec2<i32>(2147483647i, 5851i), vec4<i32>(2147483647i, -51118i, -40431i, 1i)), Struct_1(vec3<f32>(-752f, -374f, -380f), -954f, vec2<f32>(1181f, -723f), vec2<i32>(-1i, 1i), vec4<i32>(-1i, -17533i, 2147483647i, 35668i)), Struct_1(vec3<f32>(1429f, 295f, -1072f), 1803f, vec2<f32>(148f, 969f), vec2<i32>(-1i, -12926i), vec4<i32>(2147483647i, -50284i, -31735i, 11223i)), Struct_1(vec3<f32>(-2117f, 466f, -158f), 677f, vec2<f32>(1452f, -1453f), vec2<i32>(i32(-2147483648), -29197i), vec4<i32>(-34643i, 33738i, -23337i, -8568i)), Struct_1(vec3<f32>(438f, -496f, 875f), 264f, vec2<f32>(3056f, -1090f), vec2<i32>(-21787i, 2147483647i), vec4<i32>(0i, -64424i, -12896i, i32(-2147483648))), Struct_1(vec3<f32>(429f, 296f, 288f), 1138f, vec2<f32>(-1159f, -478f), vec2<i32>(4767i, 14676i), vec4<i32>(1i, -15735i, -1i, 15186i)), Struct_1(vec3<f32>(698f, -1045f, -1295f), -468f, vec2<f32>(425f, -786f), vec2<i32>(1i, 8354i), vec4<i32>(41494i, 2147483647i, 2147483647i, -1i)), Struct_1(vec3<f32>(-1000f, -1424f, 259f), 1020f, vec2<f32>(994f, 1350f), vec2<i32>(i32(-2147483648), 2147483647i), vec4<i32>(-23227i, 2147483647i, 1i, -7092i)), Struct_1(vec3<f32>(-709f, -605f, -106f), -1731f, vec2<f32>(436f, 1094f), vec2<i32>(7561i, 0i), vec4<i32>(-33110i, 13865i, i32(-2147483648), -57192i)), Struct_1(vec3<f32>(-426f, -1370f, 345f), -329f, vec2<f32>(-266f, -309f), vec2<i32>(139i, i32(-2147483648)), vec4<i32>(-1i, -1i, 6604i, 89395i)), Struct_1(vec3<f32>(-321f, -1302f, 510f), -361f, vec2<f32>(-137f, -1416f), vec2<i32>(0i, 43357i), vec4<i32>(-1i, -2144i, -38424i, 32174i)), Struct_1(vec3<f32>(353f, -570f, -613f), 1204f, vec2<f32>(-216f, 251f), vec2<i32>(-1i, -1200i), vec4<i32>(0i, i32(-2147483648), -1i, -1i)), Struct_1(vec3<f32>(1000f, -463f, 612f), -175f, vec2<f32>(-410f, 1155f), vec2<i32>(i32(-2147483648), -1711i), vec4<i32>(i32(-2147483648), -30541i, 2147483647i, i32(-2147483648))), Struct_1(vec3<f32>(1094f, 992f, 999f), 858f, vec2<f32>(-886f, -378f), vec2<i32>(-47112i, 0i), vec4<i32>(2147483647i, -1i, -1i, -8763i)), Struct_1(vec3<f32>(-1351f, 451f, 2109f), 872f, vec2<f32>(552f, -957f), vec2<i32>(i32(-2147483648), -8636i), vec4<i32>(-20186i, -45977i, -22577i, 24868i)), Struct_1(vec3<f32>(-1259f, 501f, 396f), -1095f, vec2<f32>(1783f, 560f), vec2<i32>(1i, 10930i), vec4<i32>(-3810i, -25117i, 54004i, i32(-2147483648))), Struct_1(vec3<f32>(116f, -657f, 541f), 425f, vec2<f32>(407f, -1559f), vec2<i32>(-1i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -70869i)), Struct_1(vec3<f32>(-1761f, 805f, -182f), -546f, vec2<f32>(-795f, -1749f), vec2<i32>(i32(-2147483648), 1i), vec4<i32>(-16791i, i32(-2147483648), 2147483647i, -2305i)));

var<private> global1: Struct_1;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> u32 {
    global0 = array<Struct_1, 29>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.c.x, 1524f, global1.a.x))))), arg_1.a.x, _wgslsmith_f_op_vec2_f32(-global1.a.yy), abs(arg_1.e.ww), vec4<i32>(~_wgslsmith_clamp_i32(global1.d.x, global1.e.x, arg_1.d.x), -35578i, abs(_wgslsmith_mod_i32(42051i, arg_0.x)), 13217i)), arg_1, select(select(vec3<bool>(true, true, true), vec3<bool>(global1.b < global1.c.x, global1.a.x <= arg_1.c.x, all(vec4<bool>(true, true, false, true))), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -1843f) > _wgslsmith_f_op_f32(min(-413f, _wgslsmith_f_op_f32(global1.a.x * 917f)))));
    let var_1 = false;
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(0u, 29u)], Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(619f, _wgslsmith_f_op_f32(f32(-1f) * -1509f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(721f + global1.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -248f)), arg_1.b, _wgslsmith_f_op_vec2_f32(select(var_0.b.c, _wgslsmith_div_vec2_f32(global1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.b, -1000f))), var_1)), min(~_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.d.x, 0i), global1.d), vec2<i32>(~var_0.a.d.x, 0i)), ~abs(vec4<i32>(var_0.a.e.x, arg_1.e.x, 28590i, var_0.b.e.x))), select(!var_0.c, select(select(vec3<bool>(var_0.c.x, var_1, var_1), vec3<bool>(var_1, var_1, true), var_1 && var_1), var_0.c, var_0.c.x), vec3<bool>(any(vec3<bool>(var_1, true, true)), select(any(var_0.c.xz), !var_0.c.x, any(var_0.c.xz)), false)));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b.a * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.a * var_2.b.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(525f, -153f, var_0.b.b)), var_0.c))) + _wgslsmith_f_op_vec3_f32(-global1.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1038f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.c.x - var_0.b.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1524f))), select(var_1, var_2.c.x & true, 1i < _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.e.x, var_2.b.d.x, -20784i, -34815i), vec4<i32>(3110i, var_0.a.d.x, var_0.b.e.x, var_2.b.d.x))))), arg_1.a.xy, firstTrailingBit(vec2<i32>(-var_0.a.e.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 62479u, 33515u, 1u), u_input.a) % 32u), arg_0.x)), -vec4<i32>(var_0.a.d.x, arg_0.x, min(0i, -20223i), global1.e.x));
    return u_input.a.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_0 = arg_2;
    global0 = array<Struct_1, 29>();
    var var_1 = Struct_2(arg_2.b, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1576f)), -1000f, _wgslsmith_f_op_f32(min(var_0.a.a.x, -1587f)))), -471f, _wgslsmith_f_op_vec2_f32(max(arg_1.a.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.b, 1324f), arg_1.c)))), vec2<i32>(-22825i, _wgslsmith_dot_vec3_i32(vec3<i32>(-13957i, global1.e.x, -2147483647i), ~vec3<i32>(-1i, global1.d.x, global1.d.x))), -max(arg_1.e ^ vec4<i32>(arg_1.e.x, -32865i, arg_2.a.e.x, 48999i), ~vec4<i32>(0i, var_0.a.d.x, arg_1.d.x, 30033i))), select(var_0.c, !select(vec3<bool>(arg_2.c.x, false, false), arg_2.c, any(vec4<bool>(arg_2.c.x, false, false, true))), vec3<bool>(!all(vec2<bool>(false, arg_2.c.x)), any(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), arg_2.c.x)));
    return global1.c.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -232f, 1057f) - vec3<f32>(616f, 1136f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~vec3<u32>(1u, u_input.a.x, u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(global1.a * vec3<f32>(global1.a.x, global1.a.x, 382f)), _wgslsmith_f_op_f32(-global1.c.x), global1.a.xy, vec2<i32>(41260i, global1.d.x) ^ global1.e.xz, _wgslsmith_div_vec4_i32(vec4<i32>(38364i, -2147483647i, global1.d.x, global1.d.x), vec4<i32>(global1.e.x, global1.d.x, global1.d.x, global1.d.x))), Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(func_3(vec2<i32>(global1.d.x, 2147483647i), global0[_wgslsmith_index_u32(4217u, 29u)]), 29u)], vec3<bool>(false, false, true))))), vec2<f32>(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(-global1.c.x)), -494f), -select(countOneBits(_wgslsmith_mod_vec2_i32(global1.e.zw, vec2<i32>(global1.d.x, -15830i))), reverseBits(global1.d), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, false))), _wgslsmith_div_vec4_i32(vec4<i32>(-41939i >> (u_input.a.x % 32u), -72325i, 1i, -1i), _wgslsmith_sub_vec4_i32(global1.e, -vec4<i32>(global1.e.x, 31007i, global1.e.x, global1.d.x))) ^ (-global1.e >> (~_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 16468u, u_input.a.x)) % vec4<u32>(32u))));
    let var_1 = Struct_1(var_0.a, -964f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c.x, global1.c.x), vec2<f32>(var_0.b, var_0.c.x))), global1.a.xy) * _wgslsmith_f_op_vec2_f32(-var_0.c)) * global1.c), _wgslsmith_add_vec2_i32(global1.d, -_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), global1.e.wz)), vec4<i32>(-1i) * -select(abs(global1.e), countOneBits(var_0.e), true));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1030f, -2035f, _wgslsmith_div_f32(var_1.c.x, _wgslsmith_f_op_f32(-global1.a.x)))), 633f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.b), -610f) * vec2<f32>(1337f, _wgslsmith_f_op_f32(func_4(u_input.a.xxx, var_1, Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], Struct_1(var_0.a, global1.b, vec2<f32>(var_0.c.x, var_1.c.x), vec2<i32>(var_1.e.x, -20430i), vec4<i32>(var_1.d.x, 0i, -1i, global1.e.x)), vec3<bool>(false, true, false))))))), _wgslsmith_mult_vec2_i32(var_1.e.xx, select(-countOneBits(global1.d), var_0.e.xy, any(vec3<bool>(false, true, true)) || true)), min(reverseBits(var_0.e), firstLeadingBit(~(var_0.e | vec4<i32>(-2147483647i, var_1.e.x, -908i, global1.e.x)))));
    var var_2 = select(vec4<i32>(~(~(-30284i)), ~var_0.d.x, _wgslsmith_mult_i32(var_1.d.x, var_0.d.x), select(firstLeadingBit(global1.d.x), _wgslsmith_dot_vec3_i32(global1.e.yzz, var_0.e.yyz), true) << (firstTrailingBit(4294967295u) % 32u)), -var_1.e ^ (~_wgslsmith_div_vec4_i32(vec4<i32>(-9434i, 6873i, 27557i, -44883i), vec4<i32>(41731i, 9080i, 51819i, var_1.e.x)) & _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.e.x, global1.d.x, global1.e.x, var_0.e.x) << (u_input.a % vec4<u32>(32u)), var_1.e)), vec4<bool>(true, true, any(vec2<bool>(false, true)), !any(vec3<bool>(true, true, false))));
    let var_3 = global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(firstTrailingBit(~u_input.a.x), u_input.a.x), 11858u) & ~_wgslsmith_sub_u32(abs(u_input.a.x), abs(_wgslsmith_add_u32(36334u, u_input.a.x))), 29u)];
    return global0[_wgslsmith_index_u32(~14324u, 29u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_sub_i32(arg_0.d.x, _wgslsmith_add_i32(global1.e.x, ~reverseBits(func_2().e.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)) - _wgslsmith_f_op_f32(-func_2().a.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(arg_0.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a))), vec3<bool>(all(vec2<bool>(true, false)), true, all(vec2<bool>(true, false))))))), _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(419f))), 627f)), arg_0.d << (~arg_1.zz % vec2<u32>(32u)), min(~(-vec4<i32>(arg_0.d.x, var_1, var_1, var_0.d.x)) << (vec4<u32>(~arg_1.x, 0u, arg_1.x, _wgslsmith_mult_u32(76304u, arg_1.x)) % vec4<u32>(32u)), global1.e | (vec4<i32>(var_1, -2147483647i, var_0.e.x, -1i) << (abs(arg_1) % vec4<u32>(32u)))));
    var var_3 = func_3(select(_wgslsmith_clamp_vec2_i32(~_wgslsmith_mod_vec2_i32(var_0.e.xx, arg_0.e.zx), select(arg_0.d, vec2<i32>(2147483647i, var_1), vec2<bool>(true, false)), vec2<i32>(-1i, var_1)), vec2<i32>(arg_0.d.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, arg_0.d.x, 2147483647i, -20153i), vec4<i32>(-38657i, -22779i, global1.d.x, -1i))), false), arg_0);
    return -158f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.c.x, global1.b)) - _wgslsmith_f_op_f32(select(1000f, -1594f, false))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.a.x)), _wgslsmith_f_op_f32(global1.a.x + -1142f)), global1.c.x, _wgslsmith_f_op_f32(func_1(Struct_1(global1.a, 748f, global1.a.yx, vec2<i32>(2147483647i, global1.e.x), vec4<i32>(-1i, 0i, -35287i, -2147483647i)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)))) + global1.a));
    var var_2 = select(reverseBits(vec4<u32>(abs(~76297u), _wgslsmith_add_u32(u_input.a.x, 31820u) | ~u_input.a.x, ~(0u | u_input.a.x), (u_input.a.x & u_input.a.x) << (30301u % 32u))), _wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), u_input.a ^ u_input.a), u_input.a.x > _wgslsmith_add_u32(u_input.a.x, func_3(firstLeadingBit(vec2<i32>(-1i, -15778i)), func_2())));
    var_1 = vec3<f32>(-1514f, var_1.x, -545f);
    var var_3 = func_2();
    var var_4 = countOneBits(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, var_2.x, ~67907u), ~min(u_input.a, ~u_input.a)));
    let var_5 = max(func_2().d.x, _wgslsmith_mult_i32(global1.d.x ^ 8713i, -(~(-1i))));
    let var_6 = vec4<u32>(~101u, var_4.x, u_input.a.x, var_2.x >> (_wgslsmith_dot_vec4_u32(u_input.a, min(~vec4<u32>(var_4.x, 69073u, var_2.x, var_4.x), vec4<u32>(23458u, var_4.x, 9219u, var_4.x))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(10231u) >> (firstTrailingBit(7505u) % 32u), vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(countOneBits(u_input.a.yzz), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), 29u)], Struct_2(Struct_1(vec3<f32>(502f, 622f, var_1.x), global1.a.x, vec2<f32>(1000f, var_1.x), var_3.d, var_3.e), Struct_1(global1.a, 164f, var_3.c, vec2<i32>(var_5, -1i), var_3.e), vec3<bool>(false, true, true)))) - var_1.x)), ~var_4.x | firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, var_6.x)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_6.x, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, 0u)), ~var_4.zz), 89730u), _wgslsmith_mod_u32(1u, func_3(vec2<i32>(-13000i, var_3.d.x), Struct_1(vec3<f32>(1642f, 188f, 223f), var_3.c.x, var_1.zx, vec2<i32>(-10901i, global1.d.x), vec4<i32>(var_5, var_5, 10902i, -2147483647i)))) ^ max(u_input.a.x ^ var_6.x, firstLeadingBit(u_input.a.x))));
}

