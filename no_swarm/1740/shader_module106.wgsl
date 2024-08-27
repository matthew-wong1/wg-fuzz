struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-1116f, 556f, -801f, 915f, 232f, -1314f, 675f, -1253f, -1378f, 113f, -473f, -1095f, -255f, 207f, 1097f, -217f, -1000f, -696f, 613f, -662f, 1786f, 425f, -897f);

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(-6573i, 0i, i32(-2147483648)), 30896u, 7831u, 4294967295u), Struct_1(vec3<i32>(-20127i, 1i, -30365i), 6227u, 1u, 0u), Struct_1(vec3<i32>(2147483647i, 62776i, 9497i), 4294967295u, 18655u, 0u), Struct_1(vec3<i32>(-36248i, 1i, -535i), 4294967295u, 76776u, 3919u), false);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: f32) -> vec2<bool> {
    var var_0 = global1.d;
    var var_1 = false;
    let var_2 = false;
    var var_3 = u_input.e >> (u_input.a.zx % vec2<u32>(32u));
    global2 = arg_1.xw;
    return select(arg_1.xz, select(!vec2<bool>(true, global1.e), vec2<bool>(true, 1u > ~var_0.c), !(!vec2<bool>(global2.x, var_2))), arg_1.x);
}

fn func_3() -> vec4<bool> {
    let var_0 = max(reverseBits(-u_input.c), -reverseBits(~(u_input.c >> (vec4<u32>(global1.d.c, global1.c.d, u_input.a.x, 0u) % vec4<u32>(32u)))));
    var var_1 = ~vec2<i32>(u_input.c.x, -2147483647i);
    global1 = Struct_2(global1.d, global1.d, Struct_1(~vec3<i32>(_wgslsmith_mod_i32(49259i, var_0.x), 2147483647i, -var_0.x), u_input.a.x, ~u_input.a.x, ~u_input.b), global1.a, !global1.e);
    let var_2 = Struct_2(Struct_1(global1.b.a, 130u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 40784u, 1u), u_input.a), ~global1.a.d), global1.d, Struct_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(3902i, u_input.c.x, var_0.x), global1.d.a), 60995u, max(u_input.e.x << (u_input.e.x % 32u), abs(u_input.e.x)) & (0u << (~global1.b.b % 32u)), u_input.b >> (~_wgslsmith_sub_u32(41391u, 3990u) % 32u)), Struct_1(var_0.wyx, ~global1.c.b, _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), u_input.b)), countOneBits(~76811u & u_input.b)), true & select(global1.e, false, all(select(vec2<bool>(global1.e, true), vec2<bool>(global2.x, global1.e), vec2<bool>(true, false)))));
    let var_3 = u_input.c.x;
    return select(vec4<bool>(false, var_2.e, !(var_2.e || any(vec2<bool>(global1.e, false))), false & var_2.e), vec4<bool>(var_2.e && all(vec4<bool>(global1.e, global1.e, false, global1.e)), func_2(vec4<f32>(953f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 23u)], global0[_wgslsmith_index_u32(30114u, 23u)]), global0[_wgslsmith_index_u32(countOneBits(var_2.c.d), 23u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_2.d.b, 23u)], 2197f))), !(!vec4<bool>(global2.x, global2.x, var_2.e, true)), 1004f).x, global1.e, !global1.e), vec4<bool>(!global1.e, any(!vec2<bool>(global1.e, global2.x)), all(vec2<bool>(true, true)), !(!global1.e | select(global1.e, true, global2.x))));
}

fn func_1(arg_0: Struct_1) -> bool {
    global2 = select(!(!select(select(vec2<bool>(false, global1.e), vec2<bool>(global1.e, global1.e), vec2<bool>(false, true)), func_2(vec4<f32>(-241f, 387f, global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]), vec4<bool>(true, true, global1.e, global1.e), global0[_wgslsmith_index_u32(37633u, 23u)]), vec2<bool>(true, true))), vec2<bool>(false, all(func_3())), vec2<bool>(global1.e, true));
    global2 = !select(vec2<bool>(global1.e, false), vec2<bool>(countOneBits(u_input.e.x) >= global1.b.d, false), !func_3().x);
    var var_0 = ~global1.b.a.x;
    let var_1 = Struct_5(arg_0, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -569f) * vec2<f32>(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(global1.d.c, 23u)])))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1137f, global0[_wgslsmith_index_u32(arg_0.c, 23u)]), vec2<f32>(-251f, global0[_wgslsmith_index_u32(4294967295u, 23u)])) * vec2<f32>(270f, -982f)), vec2<f32>(354f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(global1.c.d, 23u)])), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(898f, global0[_wgslsmith_index_u32(global1.c.d, 23u)], 1000f, -345f) - vec4<f32>(-740f, global0[_wgslsmith_index_u32(global1.d.b, 23u)], 931f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])), vec4<bool>(false, true, true, global2.x), -1888f))), vec3<i32>(abs(max(u_input.d, u_input.c.x)), 2147483647i, _wgslsmith_add_i32(~arg_0.a.x, i32(-1i) * -19728i)), global0[_wgslsmith_index_u32(~u_input.a.x, 23u)]), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1327f)), 938f) * _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-188f, -716f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(511f, global0[_wgslsmith_index_u32(u_input.b, 23u)])))), arg_0.a, -633f));
    global1 = Struct_2(global1.b, Struct_1(-(var_1.a.a & abs(u_input.c.zzx)), ~arg_0.c, ~_wgslsmith_mult_u32(~4294967295u, arg_0.c), ~firstTrailingBit(_wgslsmith_mod_u32(var_1.a.b, 5960u))), Struct_1(-u_input.c.zww, ~1u, 0u, u_input.b), Struct_1(u_input.c.wyw, 1u, ~_wgslsmith_clamp_u32(global1.a.d, global1.a.d, 20479u) ^ u_input.a.x, global1.b.b << (var_1.a.c % 32u)), any(vec3<bool>(func_2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(1u, 23u)], -1000f, -1992f, -597f))), vec4<bool>(true, true, true, true), -1117f).x, true, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1379f, var_1.b.a.x, -188f, global0[_wgslsmith_index_u32(global1.a.b, 23u)]) * vec4<f32>(var_1.c.a.x, 1737f, global0[_wgslsmith_index_u32(87378u, 23u)], -156f)), select(vec4<bool>(true, true, global1.e, false), vec4<bool>(global2.x, global1.e, global1.e, global1.e), global2.x), _wgslsmith_f_op_f32(abs(-294f))).x)));
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b, 23u)], var_1.c.d)), -195f, 822f, var_1.b.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(704f, var_1.b.a.x, -578f, 580f) * vec4<f32>(var_1.c.b.x, global0[_wgslsmith_index_u32(0u, 23u)], -427f, -924f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(381f, -1000f, -720f, var_1.c.b.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a.x, -1041f, 2090f, global0[_wgslsmith_index_u32(1u, 23u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(72987u, 23u)], 759f, -204f, var_1.c.b.x))))), vec4<bool>(false, !select(select(false, true, global2.x), !global2.x, global1.e), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.d, -770f, var_1.b.d, global0[_wgslsmith_index_u32(global1.c.b, 23u)])), !vec4<bool>(true, true, global2.x, global1.e), -372f).x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~0u), 23u)] - global0[_wgslsmith_index_u32(var_1.a.d, 23u)]) + -142f)).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!vec2<bool>(func_1(global1.b), true & (u_input.d > -51328i)));
    global0 = array<f32, 23>();
    let var_1 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(global1.d.d, 23u)]))), global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-258f, global0[_wgslsmith_index_u32(u_input.e.x, 23u)])) * global0[_wgslsmith_index_u32(abs(u_input.e.x), 23u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 27372u), 23u)], 1175f, 1479f)), vec4<bool>(global2.x, func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<f32>(global0[_wgslsmith_index_u32(global1.c.d, 23u)], -287f, global0[_wgslsmith_index_u32(1u, 23u)], 1000f), global1.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-773f, global0[_wgslsmith_index_u32(global1.a.b, 23u)], global0[_wgslsmith_index_u32(49722u, 23u)], global0[_wgslsmith_index_u32(23408u, 23u)])))), select(select(vec4<bool>(global2.x, var_0, false, true), vec4<bool>(false, false, global1.e, global2.x), vec4<bool>(global1.e, var_0, false, false)), select(vec4<bool>(global1.e, false, global2.x, var_0), vec4<bool>(var_0, global1.e, true, true), global2.x), var_0), 1258f).x, all(select(!vec2<bool>(var_0, var_0), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(var_0, true), vec2<bool>(false, global1.e)))), true), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-693f, 213f))), global1.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(35854u, 23u)], -513f)) + vec3<f32>(1f, 1f, 1f))))));
    global2 = func_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(512f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-550f + global0[_wgslsmith_index_u32(53978u, 23u)]))), _wgslsmith_f_op_f32(638f * 1f), -107f))), vec4<bool>(true, true, func_1(global1.b), true), -1354f);
    let var_2 = global1.b.a.xz;
    global2 = func_3().xx;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-(~vec2<i32>(1i, -1i))), _wgslsmith_f_op_vec2_f32(-var_1.a.wy), global1.c.b & _wgslsmith_add_u32(u_input.b, 41990u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1702f + global0[_wgslsmith_index_u32(1108u, 23u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_1.e, var_1.a.yyw))));
}

