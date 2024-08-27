struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(vec3<f32>(-181f, -1000f, 403f), 1996f, vec4<f32>(1049f, -912f, 1342f, 172f), true, -277i)), Struct_2(Struct_1(vec3<f32>(220f, 1426f, 1000f), -1880f, vec4<f32>(1426f, 838f, -505f, 851f), true, 0i)), Struct_2(Struct_1(vec3<f32>(617f, -171f, 1350f), -1855f, vec4<f32>(482f, 351f, 292f, -1945f), true, -28129i)), Struct_2(Struct_1(vec3<f32>(-486f, 100f, 783f), 1565f, vec4<f32>(-1590f, 662f, -870f, -605f), false, -23735i)), Struct_2(Struct_1(vec3<f32>(646f, 504f, 171f), 1000f, vec4<f32>(-709f, 1000f, 650f, -635f), false, 1i)), Struct_2(Struct_1(vec3<f32>(1245f, -642f, 776f), -700f, vec4<f32>(-662f, -145f, -761f, -1350f), false, 19888i)), Struct_2(Struct_1(vec3<f32>(-1526f, 139f, 1157f), 1319f, vec4<f32>(-127f, -1049f, 671f, 705f), false, 2147483647i)), Struct_2(Struct_1(vec3<f32>(-923f, -339f, 1032f), -1000f, vec4<f32>(2360f, -2220f, -193f, 384f), true, 50231i)), Struct_2(Struct_1(vec3<f32>(166f, 229f, 989f), 716f, vec4<f32>(416f, -1104f, -1000f, -203f), false, -45510i)), Struct_2(Struct_1(vec3<f32>(268f, -683f, 1877f), -122f, vec4<f32>(503f, 1242f, 1166f, 1000f), false, 38210i)), Struct_2(Struct_1(vec3<f32>(1373f, -323f, 1329f), 536f, vec4<f32>(-1842f, 418f, 1000f, 437f), false, 21974i)), Struct_2(Struct_1(vec3<f32>(-1826f, -2676f, 634f), -1000f, vec4<f32>(3316f, -456f, -710f, 819f), false, -1i)), Struct_2(Struct_1(vec3<f32>(341f, 761f, 1597f), -824f, vec4<f32>(484f, -894f, -869f, -280f), false, 2147483647i)), Struct_2(Struct_1(vec3<f32>(-802f, -935f, 688f), 1961f, vec4<f32>(120f, 2318f, 884f, -410f), false, 2147483647i)), Struct_2(Struct_1(vec3<f32>(2341f, -1000f, -1209f), -215f, vec4<f32>(-1146f, 1623f, -1112f, -1000f), true, -1i)), Struct_2(Struct_1(vec3<f32>(432f, 1266f, -1029f), -1296f, vec4<f32>(956f, -416f, -1802f, 130f), false, -13094i)), Struct_2(Struct_1(vec3<f32>(-643f, 1928f, 989f), 548f, vec4<f32>(-1000f, 253f, -973f, -683f), true, 2147483647i)), Struct_2(Struct_1(vec3<f32>(1353f, 1000f, -505f), 420f, vec4<f32>(821f, -1000f, 1466f, -210f), false, -35694i)), Struct_2(Struct_1(vec3<f32>(-1226f, -862f, 1708f), -911f, vec4<f32>(1733f, 416f, 501f, 2053f), false, -24814i)), Struct_2(Struct_1(vec3<f32>(2080f, -664f, -1000f), -640f, vec4<f32>(-1000f, -874f, 326f, -467f), false, -28814i)), Struct_2(Struct_1(vec3<f32>(1783f, 470f, 444f), -1080f, vec4<f32>(2012f, -225f, 3090f, -593f), true, 0i)), Struct_2(Struct_1(vec3<f32>(1079f, 328f, 1451f), -246f, vec4<f32>(311f, 389f, 1405f, -370f), false, 68784i)), Struct_2(Struct_1(vec3<f32>(-629f, 1038f, -626f), 1095f, vec4<f32>(-1000f, 1916f, 388f, 244f), true, 0i)));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(404f, 138f, 522f), -723f, vec4<f32>(770f, -1000f, 234f, -1015f), false, -1i));

var<private> global2: array<Struct_4, 9>;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<f32>(519f, -1948f, -553f), -1000f, vec4<f32>(-1207f, -156f, -1030f, -523f), true, 2525i), Struct_1(vec3<f32>(885f, -1582f, -243f), 506f, vec4<f32>(-1419f, -486f, 1192f, 630f), true, -40985i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_2 {
    global3 = array<Struct_1, 2>();
    return global0[_wgslsmith_index_u32(abs(~(~0u)), 23u)];
}

fn func_3(arg_0: Struct_2) -> Struct_4 {
    let var_0 = ~countOneBits(countOneBits(u_input.a));
    global3 = array<Struct_1, 2>();
    return Struct_4(-vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.e, -2147483647i, global1.a.e), vec3<i32>(2147483647i, u_input.b, u_input.b)), countOneBits(firstTrailingBit(1i)), -15233i, u_input.b), 41221u);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    global1 = Struct_2(func_2().a);
    let var_0 = arg_2.d.xz;
    global1 = Struct_2(arg_2.a);
    var var_1 = global0[_wgslsmith_index_u32(12008u, 23u)];
    global2 = array<Struct_4, 9>();
    return arg_1.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u << (u_input.a % 32u), 1u | _wgslsmith_add_u32(_wgslsmith_div_u32(0u, u_input.a), 29301u), func_4(_wgslsmith_f_op_vec2_f32(global1.a.c.wy + _wgslsmith_f_op_vec2_f32(-arg_1.c.wx)), func_3(func_2()), Struct_3(Struct_1(vec3<f32>(arg_1.c.x, arg_1.c.x, -150f), arg_1.c.x, vec4<f32>(global1.a.b, arg_1.b, -1851f, -678f), arg_1.d, global1.a.e), Struct_1(vec3<f32>(-1024f, 106f, -1657f), arg_1.a.x, vec4<f32>(-1748f, arg_1.a.x, global1.a.c.x, global1.a.a.x), false, 1i), arg_0.x, firstLeadingBit(arg_0))), u_input.a), vec4<u32>(u_input.a, func_3(func_2()).b, _wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(14531u, u_input.a, 1u, u_input.a)), reverseBits(abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), ~u_input.a));
    global0 = array<Struct_2, 23>();
    global2 = array<Struct_4, 9>();
    global0 = array<Struct_2, 23>();
    var var_1 = func_2();
    return !var_1.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 9>();
    global0 = array<Struct_2, 23>();
    global2 = array<Struct_4, 9>();
    let var_0 = !vec3<bool>(!(global1.a.d || global1.a.d) || !global1.a.d, true, !(!func_1(vec3<i32>(u_input.b, 50818i, global1.a.e), Struct_1(vec3<f32>(1058f, global1.a.a.x, 471f), global1.a.b, global1.a.c, false, 20677i))));
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.a.c.zyx), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(global1.a.a)))))), global1.a.c.x, vec4<f32>(_wgslsmith_f_op_f32(global1.a.a.x + 2553f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2315f * -1479f) - _wgslsmith_f_op_f32(-1754f + global1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b + 283f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x))), true, firstLeadingBit(min(~u_input.b, global1.a.e))));
    global2 = array<Struct_4, 9>();
    var var_1 = select(!vec3<bool>(false, true, select(all(vec2<bool>(true, var_0.x)), select(global1.a.d, true, true), global1.a.d)), !select(var_0, !select(vec3<bool>(true, true, true), vec3<bool>(global1.a.d, true, false), vec3<bool>(var_0.x, true, var_0.x)), global1.a.d), var_0);
    global1 = Struct_2(global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec2_f32(trunc(global1.a.c.xw)), Struct_4(max(vec4<i32>(u_input.b, -15021i, -1i, 0i) | vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), vec4<i32>(global1.a.e, 17618i, global1.a.e, u_input.b) | vec4<i32>(u_input.b, 2147483647i, u_input.b, global1.a.e)), max(u_input.a, u_input.a)), Struct_3(func_2().a, global1.a, max(max(u_input.b, 20406i), ~(-62862i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-6052i, u_input.b, 1i), vec3<i32>(-28224i, global1.a.e, 0i)) & _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(global1.a.e, global1.a.e, global1.a.e)))), 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(419f * global1.a.c.x), _wgslsmith_f_op_f32(global1.a.b * 510f), var_1.x))))), vec3<u32>(71537u ^ u_input.a, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, 49907u), vec3<u32>(107549u, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(41446u, u_input.a, 22181u))), u_input.a), reverseBits(vec2<i32>(global1.a.e, abs(u_input.b))), global1.a.c.x, _wgslsmith_sub_vec4_i32(max(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, global1.a.e, 4354i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-41243i, -2147483647i, global1.a.e, 8032i), vec4<i32>(-26180i, -2147483647i, 18406i, -2147483647i), vec4<i32>(38796i, global1.a.e, global1.a.e, 1i))), -select(vec4<i32>(global1.a.e, 2147483647i, 47628i, -1i), vec4<i32>(global1.a.e, u_input.b, u_input.b, u_input.b), vec4<bool>(var_0.x, var_1.x, true, false))), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(10425i, u_input.b, -52297i, -3382i)) ^ vec4<i32>(7599i, u_input.b, u_input.b, u_input.b), ~select(vec4<i32>(u_input.b, u_input.b, global1.a.e, u_input.b), vec4<i32>(6869i, 1i, global1.a.e, u_input.b), var_1.x))));
}

