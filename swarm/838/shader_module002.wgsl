struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-577f, -1443f, 1918f), vec3<f32>(-284f, -229f, 678f), vec3<f32>(611f, 1000f, -534f), vec3<f32>(600f, -500f, 1157f), vec3<f32>(-528f, -1000f, -958f), vec3<f32>(-886f, 579f, -965f), vec3<f32>(2162f, 1293f, 393f), vec3<f32>(392f, 226f, 376f), vec3<f32>(-2263f, 112f, 1362f), vec3<f32>(-930f, 673f, 1791f), vec3<f32>(-734f, 1290f, -125f), vec3<f32>(1848f, -804f, -821f), vec3<f32>(118f, 1000f, 1321f), vec3<f32>(1775f, -1196f, -1153f), vec3<f32>(183f, -1741f, 312f), vec3<f32>(2103f, 290f, 299f));

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(43182u, vec4<f32>(-952f, 888f, 725f, -1762f), true, vec2<u32>(4571u, 29122u)), Struct_1(4294967295u, vec4<f32>(587f, 480f, 1268f, -706f), true, vec2<u32>(0u, 0u)), Struct_1(0u, vec4<f32>(-2160f, -740f, -735f, 545f), false, vec2<u32>(66459u, 4294967295u)), Struct_1(53002u, vec4<f32>(-794f, 325f, -2044f, -528f), false, vec2<u32>(4294967295u, 13098u)), Struct_1(7664u, vec4<f32>(-291f, -2380f, -457f, 344f), true, vec2<u32>(7113u, 20953u)), Struct_1(45060u, vec4<f32>(-633f, 287f, -1000f, -1058f), true, vec2<u32>(34176u, 1u)), Struct_1(33268u, vec4<f32>(-562f, 1102f, 779f, -407f), true, vec2<u32>(4294967295u, 0u)), Struct_1(20721u, vec4<f32>(-453f, -611f, 1109f, 500f), true, vec2<u32>(0u, 0u)), Struct_1(73217u, vec4<f32>(1035f, 583f, -2229f, 1346f), true, vec2<u32>(1u, 80748u)), Struct_1(20865u, vec4<f32>(612f, 1261f, 595f, 303f), false, vec2<u32>(35965u, 1u)), Struct_1(13256u, vec4<f32>(731f, 147f, 1708f, 271f), true, vec2<u32>(1u, 8793u)), Struct_1(65059u, vec4<f32>(-1145f, -1000f, -1162f, 200f), true, vec2<u32>(0u, 28652u)), Struct_1(1u, vec4<f32>(383f, 674f, -1164f, -293f), true, vec2<u32>(505u, 1u)), Struct_1(7211u, vec4<f32>(319f, 191f, 1000f, -353f), false, vec2<u32>(63099u, 1u)), Struct_1(101909u, vec4<f32>(105f, 555f, -970f, 370f), true, vec2<u32>(9661u, 0u)), Struct_1(7924u, vec4<f32>(-334f, -1341f, -1592f, -550f), false, vec2<u32>(4533u, 67652u)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(arg_0.x, 16u)];
    global1 = array<Struct_1, 16>();
    var var_1 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(~select(var_0.d.x, 1u, true), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.x, 1u, 7948u), ~var_0.a)), var_0.a), _wgslsmith_mod_u32(arg_0.x, firstLeadingBit(0u)));
    global0 = array<vec3<f32>, 16>();
    let var_2 = ~var_1.x;
    return arg_1;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: bool) -> u32 {
    var var_0 = any(func_3(vec2<u32>(44081u, ~5665u), !(!vec4<bool>(arg_3, arg_3, false, true)), select(select(vec2<bool>(arg_3, arg_3), select(vec2<bool>(arg_3, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(arg_3, arg_3)), vec2<bool>(arg_3, true && arg_3), !(false && arg_3))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(~arg_0, arg_0, abs(15634u), 1u)), ~countOneBits(~(vec4<u32>(arg_0, 31708u, 69209u, 25405u) | vec4<u32>(arg_0, arg_0, 0u, 31183u)))), 16u)];
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, _wgslsmith_dot_vec2_u32(var_1.d, vec2<u32>(var_1.d.x, arg_0))), _wgslsmith_add_vec2_u32(abs(var_1.d | var_1.d), min(abs(var_1.d), var_1.d))), _wgslsmith_clamp_u32(abs(~22692u), min(_wgslsmith_clamp_u32(arg_0, 21391u, arg_0 >> (32108u % 32u)), _wgslsmith_mult_u32(min(4294967295u, 71929u), _wgslsmith_sub_u32(69284u, arg_0))), ~(min(1u, arg_0) << (select(var_1.d.x, arg_0, arg_3) % 32u))));
    let var_3 = ~abs(max(u_input.a, ~(vec3<i32>(u_input.a.x, -1i, u_input.a.x) << (vec3<u32>(arg_0, var_1.d.x, 65755u) % vec3<u32>(32u)))));
    let var_4 = ~var_3.x;
    return var_1.a | arg_0;
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    global0 = array<vec3<f32>, 16>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-474f + _wgslsmith_f_op_f32(-447f - 282f)), _wgslsmith_f_op_f32(floor(960f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-954f, 1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1155f, 1375f) - vec2<f32>(-418f, 103f))) * vec2<f32>(_wgslsmith_f_op_f32(max(701f, -1582f)), _wgslsmith_f_op_f32(f32(-1f) * -391f))))));
    let var_1 = false;
    global1 = array<Struct_1, 16>();
    global0 = array<vec3<f32>, 16>();
    return global1[_wgslsmith_index_u32(1u, 16u)];
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(~arg_1.a, arg_0.x, ~func_2(arg_1.a, -887f, arg_1.b.x, false)), vec3<u32>(1u, 1u, ~func_2(arg_0.x, -432f, 1000f, arg_1.c))));
    global1 = array<Struct_1, 16>();
    var var_1 = func_4(~_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(48508u, arg_2.d.x), 0u | arg_0.x, ~18312u), vec3<u32>(1u, 151835u, arg_1.d.x) & _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a, 0u, arg_2.a), vec3<u32>(arg_1.a, 38564u, arg_2.a))));
    var var_2 = global1[_wgslsmith_index_u32(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(34057u, 4294967295u, 1u, var_0.d.x), select(vec4<u32>(1u, arg_2.a, 39762u, arg_2.a), vec4<u32>(0u, var_0.d.x, arg_0.x, 32575u), var_1.c)))), 16u)];
    var_2 = global1[_wgslsmith_index_u32(~8240u, 16u)];
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (countOneBits(abs(u_input.a ^ u_input.a)) >> (~vec3<u32>(select(4294967295u, 69803u, false), 14424u, firstLeadingBit(44282u)) % vec3<u32>(32u))) ^ (vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(2147483647i, -8434i, u_input.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 14882i, 2147483647i), vec3<i32>(-15144i, -24110i, 2147483647i)), func_1(vec2<u32>(108205u, 4294967295u), global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(24708u, 16u)]) ^ abs(u_input.a.x)) ^ -select(u_input.a, abs(vec3<i32>(4150i, u_input.a.x, u_input.a.x)), true));
    let var_1 = Struct_1(reverseBits(1u) >> ((~1u << ((abs(64996u) | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(40588u, 23370u))) % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1567f, -590f)), -684f, -913f, _wgslsmith_f_op_f32(abs(-748f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1725f)), _wgslsmith_f_op_f32(-667f * -1777f), 1f, _wgslsmith_f_op_f32(sign(1589f))), vec4<f32>(-933f, 1f, _wgslsmith_f_op_f32(step(527f, -1132f)), _wgslsmith_f_op_f32(-1255f * -1789f)))), true, _wgslsmith_add_vec2_u32(vec2<u32>(~(~12625u), 0u), vec2<u32>(1u, 22830u)));
    var var_2 = var_1.b.x;
    let var_3 = -15830i;
    var var_4 = _wgslsmith_f_op_f32(floor(-1000f));
    var_0 = firstTrailingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-619f, var_1.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.x))), var_1.b.x), _wgslsmith_f_op_vec2_f32(floor(func_4(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(var_1.a, 8657u, 39011u)), vec3<u32>(var_1.d.x, 21038u, var_1.d.x))).b.yz)), var_1.b.x);
}

