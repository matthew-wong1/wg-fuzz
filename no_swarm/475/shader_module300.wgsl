struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-827f, -770f, -454f), vec3<f32>(-2702f, 2493f, 860f), vec3<f32>(175f, -2526f, 166f), vec3<f32>(1000f, 1459f, -189f), vec3<f32>(101f, -2688f, -636f), vec3<f32>(-1000f, -1295f, -555f), vec3<f32>(-710f, 952f, 819f), vec3<f32>(1170f, -259f, 1000f), vec3<f32>(154f, 696f, 1421f), vec3<f32>(1329f, 1000f, -1027f), vec3<f32>(-490f, -246f, -1000f), vec3<f32>(2442f, -899f, -1013f), vec3<f32>(-1279f, -1696f, 1000f), vec3<f32>(2028f, -1350f, 704f), vec3<f32>(202f, 1002f, 822f), vec3<f32>(102f, -2746f, 429f), vec3<f32>(-1340f, -512f, 1760f), vec3<f32>(-999f, -1196f, 1032f), vec3<f32>(-1499f, -1346f, 482f), vec3<f32>(-288f, 1683f, -476f), vec3<f32>(-1361f, -749f, 902f), vec3<f32>(-1082f, -3220f, -150f), vec3<f32>(947f, 899f, -726f), vec3<f32>(439f, -1000f, 1031f), vec3<f32>(-1939f, 319f, 256f), vec3<f32>(251f, -570f, -1057f), vec3<f32>(640f, -566f, -823f), vec3<f32>(568f, 667f, -1265f), vec3<f32>(321f, 1466f, -867f));

var<private> global2: array<bool, 12>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.e.b);
    global0 = false;
    global2 = array<bool, 12>();
    var var_1 = arg_1.b;
    var_0 = arg_1.e.b;
    return true;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = Struct_1(arg_0.a ^ (~vec2<i32>(-10501i, arg_0.a.x) & _wgslsmith_div_vec2_i32(u_input.a.xx, vec2<i32>(0i, arg_0.a.x))), -1251f, !(!func_3(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], arg_0.c), Struct_2(-1552f, Struct_1(vec2<i32>(57871i, 2147483647i), 1273f, false, global2[_wgslsmith_index_u32(38138u, 12u)]), 22826i, true, Struct_1(vec2<i32>(-1i, -70609i), 1385f, false, arg_0.d)))), false);
    let var_1 = Struct_2(854f, arg_0, 11299i, any(vec2<bool>(1u > firstTrailingBit(1u), -1i <= _wgslsmith_mult_i32(-1i, arg_0.a.x))), Struct_1(-select(vec2<i32>(-1i, var_0.a.x) >> (vec2<u32>(41200u, 9952u) % vec2<u32>(32u)), ~arg_0.a, false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(var_0.b + var_0.b)))), arg_0.c, arg_0.a.x <= countOneBits(2147483647i)));
    var var_2 = !any(!vec3<bool>(global2[_wgslsmith_index_u32(41260u, 12u)] | false, var_1.a < -1064f, true));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.b.b, var_1.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(353f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)))));
    var var_4 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, var_1.c), reverseBits(_wgslsmith_add_vec2_i32(var_1.b.a, abs(arg_0.a)))), _wgslsmith_f_op_f32(1000f - 791f), false, global2[_wgslsmith_index_u32(24445u, 12u)]);
    return true;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec2<i32> {
    let var_0 = -668f;
    var var_1 = Struct_1(-u_input.a.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), global2[_wgslsmith_index_u32(1u, 12u)], !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(firstLeadingBit(arg_1.x), ~37776u, ~1u), ~(4294967295u << (arg_1.x % 32u))), 12u)]);
    global1 = array<vec3<f32>, 29>();
    let var_2 = _wgslsmith_div_i32(~2147483647i, u_input.a.x);
    var var_3 = !vec2<bool>(func_2(Struct_1(~var_1.a, _wgslsmith_f_op_f32(-arg_0), var_1.c, true)), !var_1.c);
    return -vec2<i32>(~_wgslsmith_mod_i32(var_1.a.x ^ var_2, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-33532i, 5558i, u_input.a.x))), var_2);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global2 = array<bool, 12>();
    var var_0 = func_2(arg_0);
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(i32(-1i) * -41488i), -select(func_1(arg_0.b, vec4<u32>(60584u, 44860u, 43345u, 1u), vec4<f32>(arg_0.b, arg_0.b, 1556f, arg_0.b)).x, ~u_input.b, all(vec2<bool>(true, global2[_wgslsmith_index_u32(40917u, 12u)]))), i32(-1i) * -(u_input.a.x & u_input.a.x)), ~vec3<i32>(u_input.a.x, -_wgslsmith_sub_i32(0i, arg_0.a.x), u_input.a.x));
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.b))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(560f, arg_0.b)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -613f) - _wgslsmith_f_op_f32(min(-1888f, arg_0.b))), arg_0.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, -480f)))) - vec2<f32>(arg_0.b, 127f)) * vec2<f32>(-1057f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * arg_0.b) - arg_0.b)))));
    return Struct_1(select(firstLeadingBit(vec2<i32>(1i, abs(27852i))), u_input.a.xz << (~vec2<u32>(23726u, 28880u) % vec2<u32>(32u)), !vec2<bool>(true, !var_2)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 396f) - _wgslsmith_f_op_f32(-var_3.x)), !(_wgslsmith_f_op_f32(f32(-1f) * -993f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(881f - 401f) - _wgslsmith_div_f32(var_3.x, arg_0.b))), !any(!select(vec2<bool>(var_2, global2[_wgslsmith_index_u32(52908u, 12u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(var_2, true))));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global2 = array<bool, 12>();
    var var_0 = 2147483647i;
    return func_4(func_4(Struct_1(~u_input.a.xz, _wgslsmith_f_op_f32(896f + _wgslsmith_f_op_f32(131f - arg_2.b)), true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~1u);
    global2 = array<bool, 12>();
    global0 = true;
    global2 = array<bool, 12>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), func_5(vec4<i32>(min(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(9916i, -30822i, 2322i), vec3<i32>(2147483647i, u_input.a.x, u_input.b))), -25234i << (var_0 % 32u), _wgslsmith_sub_i32(73017i, 9350i & u_input.a.x), -countOneBits(u_input.a.x)), global2[_wgslsmith_index_u32(61750u, 12u)], func_4(Struct_1(func_1(-542f, vec4<u32>(18361u, 8159u, 231u, 4294967295u), vec4<f32>(317f, 945f, -1000f, 579f)), _wgslsmith_f_op_f32(step(1288f, 2023f)), false, true))), _wgslsmith_add_i32(-(~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), abs(2147483647i)), true, func_4(Struct_1(_wgslsmith_div_vec2_i32(u_input.a.yz, firstTrailingBit(vec2<i32>(0i, 2147483647i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1769f, 190f)))), true, func_2(Struct_1(u_input.a.xz, 1544f, true, global2[_wgslsmith_index_u32(var_0, 12u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0, 10023u, var_0), ~vec3<u32>(0u, var_0, var_0)), firstTrailingBit(vec3<u32>(4294967295u, 0u, 4294967295u) >> (vec3<u32>(0u, 0u, var_0) % vec3<u32>(32u)))), ~countOneBits(0u), var_0), vec4<f32>(_wgslsmith_f_op_f32(abs(-1191f)), 1183f, var_1.a, var_1.b.b));
}

