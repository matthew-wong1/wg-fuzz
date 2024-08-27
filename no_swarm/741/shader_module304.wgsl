struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(55063i, -1i, 1i), vec3<i32>(-1i, -31960i, -47210i), vec3<i32>(22267i, 7019i, -8620i), vec3<i32>(1i, -19502i, 33538i), vec3<i32>(18216i, 0i, 1i), vec3<i32>(2147483647i, 18565i, -1i), vec3<i32>(-43850i, -22989i, -6880i), vec3<i32>(2147483647i, -17958i, -1895i), vec3<i32>(-1258i, 0i, 1i), vec3<i32>(-30353i, 2147483647i, 0i), vec3<i32>(31286i, 1i, 18866i), vec3<i32>(2147483647i, 7629i, 29643i), vec3<i32>(-37543i, -22556i, 2147483647i), vec3<i32>(1i, -48247i, 20968i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(-16994i, -24128i, 1i), vec3<i32>(1i, -47774i, i32(-2147483648)), vec3<i32>(978i, -1i, 0i), vec3<i32>(2147483647i, -10090i, i32(-2147483648)), vec3<i32>(-29370i, 1i, -23441i), vec3<i32>(1i, 18271i, -26528i), vec3<i32>(11217i, -39462i, 1i), vec3<i32>(2147483647i, -57027i, -1i));

var<private> global2: array<vec2<u32>, 21>;

var<private> global3: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(-651f), Struct_4(1408f), Struct_4(754f), Struct_4(959f), Struct_4(420f), Struct_4(211f), Struct_4(-500f), Struct_4(322f), Struct_4(363f), Struct_4(272f), Struct_4(-629f), Struct_4(-128f), Struct_4(-1056f), Struct_4(-1000f));

var<private> global4: array<i32, 6> = array<i32, 6>(-1i, -8506i, 6961i, -14742i, 0i, 0i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32) -> vec2<i32> {
    global0 = array<f32, 31>();
    let var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(826f)) * global0[_wgslsmith_index_u32(~arg_0, 31u)]) < -2729f) && true;
    let var_1 = -1678f;
    global3 = array<Struct_4, 14>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1004f, -1706f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(arg_0, 31u)]))))));
    return -vec2<i32>(_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(min(4294967295u, ~arg_0), 6u)], ~u_input.a.x, _wgslsmith_add_i32(-73863i, -59560i >> (0u % 32u))), ~global4[_wgslsmith_index_u32(4294967295u, 6u)] << (select(51500u, _wgslsmith_mult_u32(u_input.b, arg_0), any(vec4<bool>(true, var_0, true, var_0))) % 32u));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = !select(false, any(vec3<bool>(any(vec3<bool>(arg_1, arg_1, arg_1)), arg_2.c.x, 4294967295u < u_input.b)), arg_2.c.x);
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(83256u | u_input.b) ^ (_wgslsmith_mod_u32(1u, arg_2.b) | _wgslsmith_add_u32(0u, 1u)), 34969u), 6u)] ^ ~(~(-2147483647i));
    var_1 = -(u_input.d << (arg_2.b % 32u));
    var var_2 = max(-7742i, -11968i >> (~_wgslsmith_mod_u32(u_input.b, 0u << (arg_2.b % 32u)) % 32u));
    var var_3 = _wgslsmith_f_op_f32(round(arg_2.a));
    return global0[_wgslsmith_index_u32(~u_input.b, 31u)];
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1882f, 1065f, global0[_wgslsmith_index_u32(46652u, 31u)], global0[_wgslsmith_index_u32(16148u, 31u)]), vec4<f32>(135f, global0[_wgslsmith_index_u32(4294967295u, 31u)], -375f, 558f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 474f, global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(34042u, 31u)]) + vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], -1340f, -1188f, global0[_wgslsmith_index_u32(7185u, 31u)])))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(9182u, 31u)], -437f, 1307f, 1000f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)], -103f, global0[_wgslsmith_index_u32(0u, 31u)]), arg_1))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], -1317f, 1000f, global0[_wgslsmith_index_u32(u_input.b, 31u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(12161u, 31u)]) * vec4<f32>(global0[_wgslsmith_index_u32(120237u, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)], 503f, 405f))))) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 31u)])))), global0[_wgslsmith_index_u32(~0u, 31u)], _wgslsmith_f_op_f32(func_3(func_2(u_input.b << (25949u % 32u)), all(vec4<bool>(arg_1, false, arg_0, arg_0)) || arg_1, Struct_1(1000f, 37629u << (1u % 32u), vec2<bool>(true, true), -2200f)))));
    global0 = array<f32, 31>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(-750f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-u_input.a.zy, true, Struct_1(_wgslsmith_f_op_f32(-864f + var_0.x), ~4294967295u, vec2<bool>(true, arg_1), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 31u)] - -1000f))))));
    let var_2 = Struct_5(Struct_3(select(u_input.a, global1[_wgslsmith_index_u32(1u, 23u)] << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, u_input.b), vec3<u32>(24675u, 1u, u_input.b)) % vec3<u32>(32u)), arg_0), Struct_2(Struct_1(226f, ~u_input.b, vec2<bool>(false, arg_0), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(3777u, 31u)])), Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 31u)] + global0[_wgslsmith_index_u32(u_input.b, 31u)]), select(42876u, 73172u, true), select(vec2<bool>(arg_1, arg_0), vec2<bool>(arg_0, arg_1), arg_0), -315f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1260f, -1105f, 403f, 283f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1665f, 566f, 709f, var_1.x), vec4<f32>(1113f, global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(1u, 31u)], -118f))))), _wgslsmith_add_u32(u_input.b, ~28139u), Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 31u)]), 25874u, vec2<bool>(false, false), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(14231u, 31u)]))), Struct_1(_wgslsmith_f_op_f32(ceil(var_0.x)), ~u_input.b, vec2<bool>(arg_1, false), _wgslsmith_f_op_f32(1414f + global0[_wgslsmith_index_u32(4294967295u, 31u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(663f, -1408f, 288f, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0[_wgslsmith_index_u32(u_input.b, 31u)], 1255f, global0[_wgslsmith_index_u32(69756u, 31u)]))))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(17182u, 31u)], abs(~0u), !(!vec2<bool>(arg_0, arg_0)), global0[_wgslsmith_index_u32(u_input.b >> (u_input.b % 32u), 31u)]), Struct_1(1000f, ~u_input.b & _wgslsmith_mod_u32(u_input.b, u_input.b), vec2<bool>(all(vec3<bool>(false, arg_1, arg_1)), all(vec2<bool>(true, arg_1))), -816f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 31u)], -159f, 766f, var_0.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1893f, -1068f, var_1.x))))), !all(select(vec4<bool>(true, arg_1, arg_1, arg_0), vec4<bool>(false, true, arg_0, arg_1), !arg_1)));
    var_1 = var_0.xy;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b ^ ~func_1(false, !all(vec3<bool>(false, true, false)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(2885f)))), min(func_1(global4[_wgslsmith_index_u32(~15671u, 6u)] != 5882i, true), u_input.b), !vec2<bool>(!(0i >= global4[_wgslsmith_index_u32(4294967295u, 6u)]), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1792u, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)]))))))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(959f * var_1.d) - _wgslsmith_div_f32(-1082f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 31u)] * global0[_wgslsmith_index_u32(15242u, 31u)])))));
    let var_3 = ~(~((_wgslsmith_clamp_u32(var_1.b, var_1.b, 19213u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(2370u, 0u, 17530u), vec3<u32>(u_input.b, u_input.b, 90756u))) & ~var_1.b));
    global2 = array<vec2<u32>, 21>();
    let var_4 = global3[_wgslsmith_index_u32(1u, 14u)];
    var var_5 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(150f, -248f))), 44327u, !vec2<bool>(any(vec3<bool>(var_1.c.x, var_1.c.x, false)), global4[_wgslsmith_index_u32(var_3, 6u)] != -1i), var_2.a), Struct_1(var_2.a, _wgslsmith_mult_u32(var_3 & _wgslsmith_add_u32(var_3, var_3), ~1u), vec2<bool>(all(vec2<bool>(var_1.c.x, true)) || var_1.c.x, any(vec2<bool>(var_1.c.x, var_1.c.x))), var_4.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(2467f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.a, global0[_wgslsmith_index_u32(u_input.b, 31u)])) + _wgslsmith_f_op_f32(trunc(266f))), _wgslsmith_f_op_f32(var_1.d - _wgslsmith_f_op_f32(-1762f + var_4.a)), _wgslsmith_f_op_f32(f32(-1f) * -2348f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1.b, 31u)], 1247f, 814f, 353f), vec4<f32>(var_2.a, -853f, -197f, var_4.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(545f, var_1.d, global0[_wgslsmith_index_u32(var_3, 31u)], global0[_wgslsmith_index_u32(var_3, 31u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_2.a, 1000f, 828f) - vec4<f32>(var_4.a, -740f, var_1.d, -746f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(0i | global4[_wgslsmith_index_u32(firstLeadingBit(var_5.a.b), 6u)], global4[_wgslsmith_index_u32(~20637u, 6u)], any(vec4<bool>(true || var_1.c.x, var_5.b.c.x, !var_1.c.x, false))), -136f, vec2<u32>(~u_input.b, ~(~(var_3 ^ 4294967295u))), var_5.c.zx, _wgslsmith_dot_vec4_u32(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, var_1.b, 98565u), vec4<u32>(7784u, var_5.b.b, var_3, var_5.b.b), vec4<u32>(4294967295u, 1u, var_3, 21262u))), abs(vec4<u32>(var_3, 50087u, 1u, 0u) | ~vec4<u32>(var_1.b, var_5.a.b, u_input.b, var_3))));
}

