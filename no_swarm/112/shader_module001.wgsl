struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec2<u32>(8037u, 6480u), vec4<u32>(1u, 44020u, 4294967295u, 0u), vec2<u32>(3726u, 0u)), Struct_3(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(84316u, 758u, 1u, 16593u), vec2<u32>(76348u, 4294967295u)), Struct_3(vec2<u32>(0u, 61343u), vec4<u32>(14265u, 1u, 37327u, 1u), vec2<u32>(12360u, 643u)), Struct_3(vec2<u32>(1060u, 67229u), vec4<u32>(39133u, 1u, 1u, 1u), vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec2<u32>(4294967295u, 26269u), vec4<u32>(1u, 0u, 21382u, 0u), vec2<u32>(20798u, 1u)), Struct_3(vec2<u32>(18405u, 380u), vec4<u32>(0u, 19868u, 30579u, 8801u), vec2<u32>(0u, 18398u)));

var<private> global1: f32;

var<private> global2: Struct_5;

var<private> global3: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(Struct_1(1u, vec4<f32>(-404f, -196f, 713f, 641f), 42503u), true, 1264f, Struct_1(58823u, vec4<f32>(1266f, -251f, -1101f, -411f), 28511u), 203f), Struct_4(Struct_1(4294967295u, vec4<f32>(1077f, 243f, -305f, -2253f), 20348u), false, 682f, Struct_1(32533u, vec4<f32>(-695f, 554f, -202f, -893f), 4294967295u), 683f), Struct_4(Struct_1(4294967295u, vec4<f32>(1391f, 1033f, -451f, 1216f), 4294967295u), false, -582f, Struct_1(1u, vec4<f32>(-1499f, -170f, -204f, 343f), 1u), 612f), Struct_4(Struct_1(12080u, vec4<f32>(1554f, 1487f, 782f, 1825f), 69681u), false, -249f, Struct_1(52072u, vec4<f32>(2823f, 299f, 353f, 1317f), 23821u), -1557f), Struct_4(Struct_1(1u, vec4<f32>(144f, 549f, -753f, 520f), 9106u), true, 1314f, Struct_1(57848u, vec4<f32>(823f, -180f, -1418f, 264f), 0u), 228f), Struct_4(Struct_1(1u, vec4<f32>(-370f, -403f, 384f, 183f), 1u), true, 336f, Struct_1(27836u, vec4<f32>(-493f, -412f, -882f, -1775f), 4294967295u), 273f), Struct_4(Struct_1(1u, vec4<f32>(485f, 1175f, 152f, 166f), 0u), false, -1041f, Struct_1(1u, vec4<f32>(1512f, -1710f, 664f, 1828f), 0u), 179f), Struct_4(Struct_1(0u, vec4<f32>(-1378f, -458f, -518f, 957f), 1u), true, 1000f, Struct_1(0u, vec4<f32>(785f, 609f, 1232f, -527f), 79103u), -1000f), Struct_4(Struct_1(30001u, vec4<f32>(1000f, 2044f, 288f, 527f), 4294967295u), true, 818f, Struct_1(0u, vec4<f32>(-383f, -995f, 328f, -1000f), 1u), -2610f), Struct_4(Struct_1(1u, vec4<f32>(163f, 513f, 1216f, 488f), 15960u), false, -367f, Struct_1(4294967295u, vec4<f32>(-1000f, 1226f, 1201f, 1269f), 47059u), -1000f), Struct_4(Struct_1(3603u, vec4<f32>(256f, -1387f, 793f, 1489f), 20246u), false, 1000f, Struct_1(4294967295u, vec4<f32>(-861f, 724f, 1334f, -410f), 47778u), 2574f), Struct_4(Struct_1(0u, vec4<f32>(-639f, 120f, 1238f, 1597f), 2416u), true, -760f, Struct_1(4294967295u, vec4<f32>(672f, 412f, -718f, 666f), 24286u), -377f), Struct_4(Struct_1(4294967295u, vec4<f32>(797f, 920f, 282f, -758f), 0u), false, -326f, Struct_1(16244u, vec4<f32>(-548f, -2245f, 1526f, 1663f), 4294967295u), -1825f), Struct_4(Struct_1(17598u, vec4<f32>(305f, -1242f, 1000f, -855f), 28284u), true, -676f, Struct_1(2586u, vec4<f32>(547f, -1413f, -1158f, 1000f), 1u), -318f), Struct_4(Struct_1(1u, vec4<f32>(-1000f, 538f, 317f, -138f), 0u), false, 847f, Struct_1(50328u, vec4<f32>(-491f, 608f, 759f, 401f), 31686u), -1186f), Struct_4(Struct_1(1u, vec4<f32>(224f, 541f, 677f, 373f), 66076u), true, -231f, Struct_1(4294967295u, vec4<f32>(-241f, -723f, 698f, 323f), 17650u), -1000f));

var<private> global4: i32 = -1i;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_5) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(10212u, 16u)];
    var_0 = global3[_wgslsmith_index_u32(1u, 16u)];
    let var_1 = var_0.b;
    var var_2 = Struct_2(vec3<bool>(true, var_0.b, u_input.c == u_input.c), vec3<bool>(false, all(!(!vec3<bool>(false, var_0.b, false))), false));
    var var_3 = firstLeadingBit(60150i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) * var_0.c);
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = u_input.c;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_5(vec2<u32>(4294967295u, arg_0.b.x) | arg_0.b.wx, countOneBits(global2.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(f32(-1f) * -1459f)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: Struct_5) -> f32 {
    global4 = u_input.c;
    return -1930f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 1347f;
    let var_0 = Struct_1(68580u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(-370f, -936f, true)), _wgslsmith_f_op_f32(round(-358f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec2<u32>(u_input.d.x, 88519u), vec4<u32>(global2.b, global2.a.x, u_input.a.x, global2.b), vec2<u32>(0u, 24914u)))) * _wgslsmith_f_op_f32(f32(-1f) * -388f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(9162u, vec4<f32>(-819f, -775f, 759f, -702f), vec2<bool>(false, true), Struct_5(vec2<u32>(u_input.d.x, 0u), 595u))))))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(~u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, global2.a.x, global2.a.x, 0u), vec4<u32>(u_input.d.x, 10093u, 0u, u_input.a.x)), ~0u)), firstTrailingBit(vec3<u32>(countOneBits(global2.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a.x, u_input.d.x, 0u), vec4<u32>(0u, 22904u, 6726u, 50392u)), ~29045u))));
    var var_1 = _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(u_input.d.x, 6u)]));
    let var_2 = var_0.a;
    let var_3 = select(vec3<bool>(true, true, true), !vec3<bool>(any(vec3<bool>(true, true, true)), true, all(vec2<bool>(true, true))), true);
    var var_4 = global3[_wgslsmith_index_u32(~max(var_2, ~global2.b), 16u)];
    global1 = -404f;
    let var_5 = _wgslsmith_f_op_f32(var_4.a.b.x * _wgslsmith_f_op_f32(ceil(var_4.a.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec4<i32>(_wgslsmith_clamp_i32(u_input.c, i32(-1i) * -59556i, ~(u_input.c | 0i)), _wgslsmith_mod_i32(0i, ~max(-23880i, u_input.c)), _wgslsmith_sub_i32(-1i, countOneBits(-14551i) & (u_input.c ^ -2147483647i)), u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_add_i32(u_input.c, u_input.c), -(u_input.c >> (var_4.d.a % 32u)), 0i, countOneBits(u_input.c)), vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(3060i, u_input.c, 1i, u_input.c))), select(~(~abs(vec3<u32>(72681u, var_4.d.c, var_2))), vec3<u32>(reverseBits(max(u_input.a.x, var_0.c)), u_input.b & 15561u, abs(var_0.a ^ 4294967295u)), select(!select(var_3, vec3<bool>(var_4.b, true, true), true), vec3<bool>(all(vec4<bool>(false, true, true, true)), true, true), vec3<bool>(var_4.b, any(vec4<bool>(var_3.x, false, var_4.b, var_4.b)), u_input.c <= 25974i))), 0u);
}

