struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(2182f, -718f, 667f, -1465f), vec4<f32>(598f, -856f, -398f, 499f), vec4<f32>(-723f, 1051f, -105f, -891f), vec4<f32>(-2737f, 1200f, 1557f, 856f), vec4<f32>(753f, 1779f, -213f, 1412f), vec4<f32>(-1011f, 2076f, -1000f, 1150f), vec4<f32>(457f, 349f, 1000f, -1675f), vec4<f32>(-468f, -571f, -601f, 808f), vec4<f32>(-1027f, -794f, 859f, -119f), vec4<f32>(-1078f, -2175f, 1000f, 758f), vec4<f32>(-1012f, -1583f, 2207f, 615f), vec4<f32>(1980f, 1000f, -1773f, -336f), vec4<f32>(294f, -1000f, -101f, -1373f), vec4<f32>(409f, -694f, -1000f, -1144f), vec4<f32>(1000f, -525f, 870f, 1140f), vec4<f32>(-167f, 656f, -294f, 924f), vec4<f32>(-1191f, 576f, 494f, 1260f), vec4<f32>(1000f, 580f, 1000f, 642f), vec4<f32>(-1000f, 1041f, -1720f, 258f), vec4<f32>(260f, 356f, -706f, 441f), vec4<f32>(1050f, -757f, 648f, 1799f), vec4<f32>(-1292f, 1234f, 1783f, -676f), vec4<f32>(1495f, -1207f, -197f, 1662f), vec4<f32>(838f, -548f, -1000f, -1803f), vec4<f32>(-1502f, 1603f, -1288f, -100f), vec4<f32>(-1311f, -138f, -1186f, -838f), vec4<f32>(1948f, 926f, 568f, -464f), vec4<f32>(466f, -115f, -540f, -591f), vec4<f32>(-1119f, 310f, 1173f, 661f), vec4<f32>(1790f, 1021f, -1032f, 1042f), vec4<f32>(-1000f, -532f, 888f, -462f));

var<private> global2: bool = true;

var<private> global3: u32;

var<private> global4: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = arg_1;
    var var_1 = Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d.xy, ~min(vec2<i32>(u_input.b, u_input.c.x), vec2<i32>(u_input.a.x, u_input.c.x))), -8965i), _wgslsmith_f_op_f32(-arg_1.a), -877f, arg_3.x & reverseBits(0u), vec4<u32>(arg_3.x, _wgslsmith_add_u32(~max(arg_2.x, 4294967295u), _wgslsmith_dot_vec2_u32(arg_3, arg_3)), _wgslsmith_add_u32(abs(_wgslsmith_mult_u32(arg_0.x, arg_2.x)), max(arg_2.x, 11685u) ^ arg_0.x), min(1u, ~1u)));
    var var_2 = 24904u & ~min(48519u, ~(18632u >> (var_1.d % 32u)));
    global4 = true && !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(13504u, ~arg_2.x), 28u)];
    var var_3 = vec4<bool>(826f != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1778f + -337f), -1236f, any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(arg_3.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(87620u, 28u)])))), -351f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(firstLeadingBit(1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(11352u, var_1.e.x), ~vec2<u32>(arg_0.x, 1u)), _wgslsmith_mult_u32(~arg_0.x, _wgslsmith_dot_vec4_u32(var_1.e, var_1.e))), ~arg_0), 28u)], !any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(585u, 28u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(71373u, 28u)]), global0[_wgslsmith_index_u32(arg_2.x, 28u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_3.x, 28u)], global0[_wgslsmith_index_u32(1393u, 28u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_2.x, 28u)], false), global0[_wgslsmith_index_u32(var_1.d, 28u)]), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], false), true))), false);
    return _wgslsmith_add_u32(0u ^ arg_3.x, 1u);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<i32> {
    global0 = array<bool, 28>();
    global1 = array<vec4<f32>, 31>();
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, arg_0.d, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x >> (arg_2.x % 32u), _wgslsmith_mod_u32(_wgslsmith_div_u32(10182u, arg_0.e.x), 40945u), _wgslsmith_div_u32(68587u, 4294967295u)), vec3<u32>(69941u, 1u, arg_0.e.x))), 28u)];
    global0 = array<bool, 28>();
    global3 = 32497u;
    return vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_clamp_i32(1i, u_input.a.x, u_input.c.x) ^ 2134i, ~(-16046i));
}

fn func_2() -> f32 {
    global0 = array<bool, 28>();
    global4 = false;
    let var_0 = Struct_2(_wgslsmith_sub_vec2_i32(func_4(Struct_2(vec2<i32>(u_input.c.x, -27496i), _wgslsmith_f_op_f32(-922f * 1204f), _wgslsmith_f_op_f32(-1122f * -353f), _wgslsmith_dot_vec4_u32(vec4<u32>(84735u, 21704u, 17097u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 0u)), firstTrailingBit(vec4<u32>(4294967295u, 30467u, 4294967295u, 1u))), Struct_1(_wgslsmith_div_f32(-735f, -1312f)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(22706u, 10267u, 0u), vec3<u32>(30765u, 42346u, 1u)), func_3(vec3<u32>(4566u, 7748u, 28490u), Struct_1(-511f), vec4<u32>(4294967295u, 0u, 4294967295u, 4880u), vec2<u32>(4294967295u, 4294967295u)), reverseBits(1u))), -reverseBits(u_input.d.xz) | u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1218f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1284f * -1586f) + 652f), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(791f)))))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), 4294967295u, ~43412u), reverseBits(vec3<u32>(1u, 25020u, 4294967295u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), ~(~(~26762u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 39325u, 9717u), vec4<u32>(14598u, 4294967295u, 1u, 0u), vec4<u32>(13381u, 4886u, 0u, 45537u)))));
    var var_1 = ~var_0.a.x;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -472f))) - -1409f) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1765f + var_0.c) - _wgslsmith_f_op_f32(exp2(var_0.b))), 1734f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1578f, var_0.b)), _wgslsmith_f_op_f32(-623f - var_0.c))) * _wgslsmith_f_op_f32(var_0.b * var_0.b))));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = 1000f;
    var var_1 = _wgslsmith_f_op_f32(func_2()) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(695f, -1173f)))) + 1601f));
    let var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1363f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(123f, -1000f)) + _wgslsmith_div_f32(1385f, -224f)) + _wgslsmith_f_op_f32(-227f + _wgslsmith_f_op_f32(-1820f + -452f)))));
    global2 = any(!(!select(select(vec3<bool>(var_2, var_2, global0[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(3103u, 28u)], var_2, true), false), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 28u)]), any(vec2<bool>(false, true)))));
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-1229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -268f))))), _wgslsmith_f_op_f32(-939f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(313f * _wgslsmith_f_op_f32(1710f - -472f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(424f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(min(1u, min(1u, ~4294967295u)), 49312u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 50288u, 46642u), vec3<u32>(23526u, 0u, 4294967295u)))), select(vec3<i32>(_wgslsmith_add_i32(-1i, firstLeadingBit(1i)), reverseBits(~u_input.a.x), _wgslsmith_sub_i32(u_input.b, 20637i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 9608u, 1u), vec4<u32>(4294967295u, 4294967295u, 57544u, 0u)) % 32u)), vec3<i32>(-1i ^ _wgslsmith_clamp_i32(u_input.c.x, 1i, u_input.b), -func_1(6092i), _wgslsmith_mod_i32(u_input.a.x, u_input.d.x) << (63014u % 32u)), vec3<bool>(true, all(vec3<bool>(global0[_wgslsmith_index_u32(9655u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)])), true)));
}

