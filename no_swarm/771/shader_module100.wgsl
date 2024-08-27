struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-1i, 1i, i32(-2147483648)), vec3<i32>(0i, 1i, 0i), vec3<i32>(1i, -1522i, 0i), vec3<i32>(-951i, 22096i, 21730i), vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(2147483647i, i32(-2147483648), -65216i), vec3<i32>(0i, i32(-2147483648), 38155i), vec3<i32>(-20829i, -23451i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, -41932i), vec3<i32>(i32(-2147483648), -2038i, i32(-2147483648)), vec3<i32>(-1i, 1i, -472i), vec3<i32>(i32(-2147483648), 2147483647i, -57093i), vec3<i32>(-15010i, 22285i, -12599i), vec3<i32>(-1i, 47295i, -48426i), vec3<i32>(28867i, -45495i, -11734i), vec3<i32>(-6156i, 4198i, 69788i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(-1i, -1i, -35057i), vec3<i32>(39654i, i32(-2147483648), 41184i), vec3<i32>(33335i, 22572i, 0i));

var<private> global1: array<vec2<f32>, 16>;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<u32>(1u, 1u, 6408u, 45667u), 397f, vec4<f32>(-656f, -878f, 1092f, 999f)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<u32>(1u, 4294967295u, 10398u, 0u), -799f, vec4<f32>(658f, 2154f, 1000f, 236f)), Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<u32>(51377u, 39063u, 16176u, 16183u), 754f, vec4<f32>(-309f, -1603f, 525f, 618f)), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<u32>(1u, 0u, 4294967295u, 33571u), 305f, vec4<f32>(-800f, -1440f, 1237f, 694f)), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<u32>(0u, 41385u, 4294967295u, 13279u), 872f, vec4<f32>(-985f, 392f, 742f, -930f)), Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<u32>(65418u, 1u, 25987u, 1u), -508f, vec4<f32>(-480f, -579f, 696f, 1491f)), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<u32>(15159u, 26556u, 0u, 35391u), -802f, vec4<f32>(378f, 828f, -498f, 1165f)), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<u32>(62089u, 62150u, 0u, 1u), 332f, vec4<f32>(381f, 1000f, 625f, -1641f)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<u32>(10433u, 34956u, 28310u, 10601u), 1243f, vec4<f32>(905f, -2908f, 238f, 285f)), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<u32>(47696u, 1u, 69419u, 4294967295u), 582f, vec4<f32>(1000f, 561f, -706f, 872f)), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<u32>(17892u, 4294967295u, 4294967295u, 112219u), -1780f, vec4<f32>(-138f, 372f, -1254f, 1032f)), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<u32>(4294967295u, 12493u, 4294967295u, 1u), -334f, vec4<f32>(-222f, -120f, -402f, -261f)), Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<u32>(31234u, 16739u, 0u, 412u), 538f, vec4<f32>(328f, -384f, -923f, -1216f)), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<u32>(0u, 4294967295u, 1910u, 8040u), -150f, vec4<f32>(495f, 623f, -1000f, -257f)), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<u32>(89570u, 95775u, 4294967295u, 4294967295u), 518f, vec4<f32>(525f, 1586f, 1849f, -525f)), Struct_1(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<u32>(0u, 4294967295u, 0u, 7211u), 470f, vec4<f32>(-974f, -334f, 2185f, -1554f)), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<u32>(46515u, 4294967295u, 4294967295u, 0u), 190f, vec4<f32>(796f, 1822f, 422f, -278f)), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<u32>(15887u, 0u, 0u, 63763u), -416f, vec4<f32>(1000f, 1545f, -118f, -436f)), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<u32>(30627u, 0u, 53071u, 52999u), 178f, vec4<f32>(142f, 264f, -1424f, 2181f)), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<u32>(234u, 4294967295u, 42624u, 1u), 1079f, vec4<f32>(-1628f, 329f, 291f, -793f)), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<u32>(28980u, 57056u, 3871u, 25418u), 1005f, vec4<f32>(1400f, -1789f, -1195f, 236f)), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<u32>(0u, 0u, 1u, 58857u), -1000f, vec4<f32>(1589f, -326f, -174f, -1833f)), Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<u32>(28323u, 1u, 19544u, 0u), 246f, vec4<f32>(-684f, -1293f, -412f, -264f)), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, 12997u, 0u, 1u), -562f, vec4<f32>(-107f, -1005f, -718f, -855f)), Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<u32>(1u, 92231u, 0u, 5919u), 505f, vec4<f32>(870f, 926f, 1000f, 977f)), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<u32>(4294967295u, 53068u, 5482u, 4294967295u), -1136f, vec4<f32>(-1035f, -553f, 452f, -1124f)), Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<u32>(1u, 4294967295u, 12841u, 1u), 2199f, vec4<f32>(-1038f, 1016f, -2595f, 405f)), Struct_1(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<u32>(6587u, 0u, 57989u, 62155u), -1100f, vec4<f32>(1730f, 1823f, -1000f, 722f)), Struct_1(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<u32>(0u, 4294967295u, 30850u, 21653u), -500f, vec4<f32>(166f, -1124f, -956f, 395f)));

var<private> global3: bool = true;

var<private> global4: u32 = 6599u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> vec2<bool> {
    return arg_1.d.a.xw;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> u32 {
    global3 = arg_1.a.x;
    global0 = array<vec3<i32>, 20>();
    let var_0 = select(arg_1.b.zwx, !(!vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.c.x > arg_0)), any(select(func_3(vec4<u32>(0u, u_input.a, arg_0, u_input.a), Struct_3(4294967295u, 334f, vec3<f32>(337f, arg_1.d, arg_1.d), global2[_wgslsmith_index_u32(arg_1.c.x, 29u)])), arg_1.b.zw, _wgslsmith_f_op_f32(step(arg_1.d, arg_1.e.x)) != _wgslsmith_f_op_f32(sign(arg_1.d)))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(arg_1.d * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1367f + arg_1.d), _wgslsmith_f_op_f32(select(1685f, 658f, arg_1.b.x)))))))));
    let var_2 = 1i;
    return _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(~arg_1.c, firstLeadingBit(arg_1.c)), ~abs(47670u), arg_0), countOneBits(~arg_1.c.yzw));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> bool {
    let var_0 = arg_1.b.xwz;
    var var_1 = _wgslsmith_mod_u32(u_input.a, firstTrailingBit(1u));
    let var_2 = Struct_3(~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a << (u_input.a % 32u), min(u_input.a, 1u)), func_2(4294967295u, global2[_wgslsmith_index_u32(0u, 29u)]) >> (391u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.e.x + arg_1.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1700f)), arg_1.d)) + -482f), arg_1.e.yzw, global2[_wgslsmith_index_u32(~(~arg_0) & arg_1.c.x, 29u)]);
    global2 = array<Struct_1, 29>();
    let var_3 = arg_1.d;
    return any(!select(select(select(arg_1.a, vec4<bool>(true, true, true, false), arg_1.a), vec4<bool>(true, false, true, false), select(vec4<bool>(var_2.d.a.x, var_2.d.b.x, var_2.d.b.x, arg_3.x), vec4<bool>(true, true, arg_2, true), false)), arg_1.b, arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(min(~(-_wgslsmith_sub_i32(1i, 28849i)), firstTrailingBit(0i)), 10049i);
    var var_1 = vec3<bool>(!((any(vec3<bool>(true, true, true)) & true) || (false & (u_input.a > u_input.a))), true, func_1(max(u_input.a << (12547u % 32u), 61256u), Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), vec4<u32>(0u, 4294967295u, 0u, 4294967295u), -174f, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(397f, 1000f, -877f, 1745f)))), true, vec3<bool>(true, true, true)) || select(true, any(vec4<bool>(false, false, false, true)), true));
    let var_2 = -1031f;
    var var_3 = var_1.x;
    let var_4 = var_0.x & countOneBits(abs(var_0.x) >> (min(16929u, u_input.a) % 32u));
    var_3 = all(!vec3<bool>(!var_1.x, var_1.x, true)) | any(vec2<bool>(false, u_input.a == func_2(u_input.a, Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(var_1.x, true, var_1.x, false), vec4<u32>(18029u, u_input.a, 10605u, u_input.a), var_2, vec4<f32>(-2140f, var_2, var_2, var_2)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, 4294967295u, ~(~u_input.a), ~0u) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) & vec4<u32>(u_input.a, 5832u, u_input.a, u_input.a), vec4<u32>(4294967295u, 77796u, u_input.a, 5703u)), ~_wgslsmith_sub_i32(var_0.x, _wgslsmith_clamp_i32(var_0.x, var_4, _wgslsmith_div_i32(var_4, var_0.x))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2)) - _wgslsmith_f_op_f32(ceil(var_2))), _wgslsmith_f_op_f32(-1573f * 970f), 1f))));
}

