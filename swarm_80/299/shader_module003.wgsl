struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<u32>(6586u, 105428u, 54024u), 5294u, vec4<f32>(-1843f, -1000f, 2830f, 1411f), 1000f), Struct_2(vec3<u32>(0u, 1u, 76242u), 4294967295u, vec4<f32>(-1593f, -1536f, -992f, 260f), -1036f), Struct_2(vec3<u32>(1u, 0u, 1u), 0u, vec4<f32>(321f, 896f, 421f, -429f), -1135f), Struct_2(vec3<u32>(31598u, 0u, 0u), 4294967295u, vec4<f32>(310f, -761f, 185f, 549f), -1201f), Struct_2(vec3<u32>(19118u, 1u, 33738u), 0u, vec4<f32>(422f, -1048f, -1206f, 578f), -215f), Struct_2(vec3<u32>(32789u, 7052u, 44509u), 59767u, vec4<f32>(1207f, 1313f, -592f, 1201f), 1255f), Struct_2(vec3<u32>(36974u, 0u, 42363u), 81748u, vec4<f32>(-791f, -385f, 681f, 1000f), -1000f), Struct_2(vec3<u32>(53152u, 1u, 4294967295u), 1u, vec4<f32>(-1187f, -138f, 1309f, -612f), 1022f), Struct_2(vec3<u32>(1u, 0u, 0u), 1u, vec4<f32>(-821f, 644f, -1167f, 1000f), 591f), Struct_2(vec3<u32>(0u, 1679u, 36416u), 0u, vec4<f32>(-1414f, -1028f, 399f, 1051f), 270f), Struct_2(vec3<u32>(1u, 1u, 34529u), 1u, vec4<f32>(-149f, 335f, -1143f, -1095f), 1000f), Struct_2(vec3<u32>(1u, 19677u, 0u), 0u, vec4<f32>(-787f, -1036f, -705f, 217f), -163f), Struct_2(vec3<u32>(45791u, 1u, 4294967295u), 4294967295u, vec4<f32>(-323f, -244f, 756f, -2813f), -317f), Struct_2(vec3<u32>(4294967295u, 63789u, 1u), 4294967295u, vec4<f32>(316f, 200f, -399f, -473f), -275f), Struct_2(vec3<u32>(106602u, 4294967295u, 1u), 25356u, vec4<f32>(1765f, 368f, 1888f, -1213f), -374f), Struct_2(vec3<u32>(4294967295u, 23651u, 0u), 1u, vec4<f32>(-1005f, -679f, 790f, -868f), -542f), Struct_2(vec3<u32>(0u, 4294967295u, 0u), 1u, vec4<f32>(-2037f, -1681f, 1496f, -368f), 1532f), Struct_2(vec3<u32>(90778u, 14849u, 1u), 0u, vec4<f32>(-2602f, 1406f, -774f, -405f), 169f), Struct_2(vec3<u32>(25433u, 0u, 5780u), 4294967295u, vec4<f32>(-985f, -147f, 262f, -898f), -1194f), Struct_2(vec3<u32>(52273u, 11944u, 1u), 48458u, vec4<f32>(-1144f, -1252f, -400f, 231f), 163f), Struct_2(vec3<u32>(40860u, 1u, 4294967295u), 40212u, vec4<f32>(478f, -2277f, -843f, -1138f), 559f), Struct_2(vec3<u32>(4294967295u, 4294967295u, 21969u), 38596u, vec4<f32>(1000f, 1015f, 699f, 586f), 205f), Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), 1u, vec4<f32>(731f, 1141f, -598f, -915f), 1000f), Struct_2(vec3<u32>(4294967295u, 22308u, 19818u), 45130u, vec4<f32>(2333f, -660f, -252f, -1281f), 996f), Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 11732u, vec4<f32>(-1000f, -270f, 737f, -2470f), 1000f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec3<bool>(!(!any(vec3<bool>(false, true, false))), (all(vec4<bool>(true, false, false, false)) && true) & !any(vec3<bool>(true, true, false)), select(true, false, true)));
    var_0 = Struct_1(var_0.a);
    let var_1 = vec4<bool>(var_0.a.x, !(max(1i, -55905i) <= u_input.b), var_0.a.x, var_0.a.x);
    var var_2 = i32(-1i) * -2147483647i;
    var var_3 = 1f;
    return u_input.c;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec3<i32>, arg_3: bool) -> vec4<i32> {
    let var_0 = func_3();
    let var_1 = vec2<u32>(18466u, ~(~40387u));
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    var var_2 = _wgslsmith_sub_u32(115709u, var_0);
    return vec4<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(0i), -arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, 0i), vec4<i32>(1i, arg_2.x, arg_2.x, arg_2.x))), vec3<i32>(-1i, -1i, u_input.a.x) << (~vec3<u32>(1u, 3399u, var_1.x) % vec3<u32>(32u))), 1i, true), ~u_input.a.x, -2147483647i, arg_2.x);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> bool {
    global0 = array<Struct_2, 25>();
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1507i, arg_0.a, arg_0.a), vec4<i32>(u_input.b, u_input.b, u_input.a.x, 4375i)), 1i, _wgslsmith_mod_i32(u_input.b, -2147483647i), _wgslsmith_mult_i32(arg_0.a, 5577i)), _wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(arg_0.a, arg_0.a, -2147483647i, -79100i)), func_2(vec4<bool>(false, true, true, true), false, vec3<i32>(u_input.b, -1i, -2147483647i), false)), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, arg_0.a, arg_0.a, 0i), vec4<i32>(arg_0.a, -2147483647i, -2147483647i, u_input.a.x)), -(vec4<i32>(arg_0.a, arg_0.a, 10153i, u_input.b) & vec4<i32>(-43515i, 22431i, 8706i, 12287i)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-13879i, 54554i | (u_input.b | u_input.b), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, 18546i), func_2(vec4<bool>(true, true, false, false), false, vec3<i32>(u_input.a.x, 24327i, arg_0.a), true).x), 1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_0.a, u_input.b, u_input.a.x), vec4<i32>(0i, -4320i, arg_0.a, u_input.a.x)), select(0i, -1i, true), -22090i), func_2(vec4<bool>(true, true, true, true), false, ~vec3<i32>(41243i, arg_0.a, arg_0.a), true))));
    var_0 = abs(i32(-1i) * -1i);
    var_0 = -1347i;
    let var_1 = Struct_1(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec3<bool>(true, true, true))), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)));
    return (_wgslsmith_clamp_u32(~16560u, abs(u_input.c), 4294967295u) & ~(~firstLeadingBit(u_input.c))) >= 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), vec3<bool>(func_1(Struct_3(-1i), u_input.c, 0u), true, true), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, all(vec3<bool>(true, false, false)))));
    let var_1 = Struct_1(select(select(var_0.a, select(var_0.a, vec3<bool>(true, true, true), !vec3<bool>(true, true, var_0.a.x)), true), vec3<bool>(select(u_input.a.x < -2147483647i, all(vec4<bool>(true, var_0.a.x, var_0.a.x, false)), true), all(vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x)) || var_0.a.x, false), var_0.a));
    global0 = array<Struct_2, 25>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1186f, 1624f, 566f));
    var_0 = Struct_1(vec3<bool>(var_0.a.x, any(!select(var_1.a.yx, var_1.a.zx, false)), !var_1.a.x));
    var_0 = Struct_1(!(!vec3<bool>(all(vec3<bool>(var_0.a.x, var_0.a.x, true)), !var_0.a.x, var_1.a.x)));
    let var_3 = vec4<u32>(~1u, 1u ^ _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, 1u, 15449u)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(17099u, 0u, 35323u), vec3<u32>(u_input.c, u_input.c, 20386u)) % vec3<u32>(32u)), vec3<u32>(u_input.c, 29086u, u_input.c) & vec3<u32>(u_input.c, u_input.c, 38256u)), u_input.c, countOneBits(_wgslsmith_sub_u32(80398u, 0u)));
    var var_4 = 4294967295u;
    let var_5 = Struct_1(!(!select(vec3<bool>(var_1.a.x, true, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, var_1.a.x), select(var_0.a.x, true, var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer((28920u << (_wgslsmith_add_u32(u_input.c & u_input.c, abs(53481u)) % 32u)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(max(var_3.x, u_input.c), reverseBits(45520u)), ~var_3.xz) % 32u), _wgslsmith_dot_vec4_u32((_wgslsmith_add_vec4_u32(var_3, vec4<u32>(var_3.x, u_input.c, 4294967295u, var_3.x)) ^ vec4<u32>(4294967295u, u_input.c, 28251u, 7200u)) ^ ~var_3, vec4<u32>(8493u, 1u, var_3.x | 98258u, u_input.c | var_3.x) & reverseBits(vec4<u32>(var_3.x, var_3.x, var_3.x, var_3.x))), -994f, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(0u, var_3.x) >> (_wgslsmith_clamp_u32(~var_3.x, 46759u, _wgslsmith_mod_u32(115951u, u_input.c)) % 32u), u_input.c, ~1u));
}

