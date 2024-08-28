struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
    e: u32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 172f;

var<private> global1: vec4<f32> = vec4<f32>(-164f, 1038f, 540f, 878f);

var<private> global2: array<bool, 13> = array<bool, 13>(false, false, true, false, true, false, false, true, false, true, false, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> f32 {
    global0 = 914f;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(453f + 1010f), _wgslsmith_div_f32(698f, global1.x), _wgslsmith_f_op_f32(global1.x * 1694f), 1000f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global1.x, global1.x)))), global1.x, -1442f, global1.x)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-193f, global1.x, global1.x, 188f), vec4<f32>(-172f, 932f, -814f, global1.x)))), vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 1853f, global1.x, _wgslsmith_f_op_f32(min(552f, -222f))))));
    return global1.x;
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec2<u32> {
    let var_0 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(-arg_1.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.a), _wgslsmith_f_op_f32(arg_1.a.d.x - -178f))), -1000f), -556f);
    var var_1 = !select(true, (~u_input.c.x <= max(u_input.c.x, 6047i)) == false, !(-220f > _wgslsmith_f_op_f32(trunc(-777f))));
    var var_2 = select(!select(select(vec2<bool>(false, arg_0), select(vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(arg_1.a.b, true), global2[_wgslsmith_index_u32(1u, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(8586u, 13u)], true)), select(select(vec2<bool>(arg_0, false), vec2<bool>(true, true), arg_1.a.b), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, arg_0)), select(vec2<bool>(arg_1.a.b, arg_1.a.b), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 13u)]), true)), vec2<bool>(!arg_1.a.b, false)), !vec2<bool>(!(u_input.b.x >= 47887i), _wgslsmith_f_op_f32(floor(-746f)) > -307f), !select(select(vec2<bool>(global2[_wgslsmith_index_u32(16098u, 13u)], false), vec2<bool>(arg_1.a.b, arg_1.a.b), true), select(select(vec2<bool>(arg_0, true), vec2<bool>(global2[_wgslsmith_index_u32(22034u, 13u)], false), vec2<bool>(arg_0, arg_1.a.b)), !vec2<bool>(true, global2[_wgslsmith_index_u32(arg_1.a.c, 13u)]), select(vec2<bool>(false, false), vec2<bool>(arg_1.a.b, global2[_wgslsmith_index_u32(46388u, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(15918u, 13u)], arg_0))), vec2<bool>(true & global2[_wgslsmith_index_u32(3169u, 13u)], u_input.a <= u_input.a)));
    global1 = arg_1.a.d;
    global2 = array<bool, 13>();
    return vec2<u32>(arg_1.a.c, _wgslsmith_mult_u32(arg_1.a.c | arg_1.a.c, ~arg_1.a.c));
}

fn func_4(arg_0: vec2<u32>) -> u32 {
    var var_0 = arg_0.x;
    let var_1 = vec4<u32>(86073u, u_input.a, ~arg_0.x | u_input.a, u_input.a) >> (~(~firstTrailingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u));
    var var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-607f + -959f), global1.x)))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 11203u), var_1.zwx), 13u)], ~(~arg_0.x >> (func_3(false, Struct_4(Struct_1(global1.x, true, arg_0.x, vec4<f32>(global1.x, global1.x, -1408f, -1218f)))).x % 32u)), vec4<f32>(_wgslsmith_f_op_f32(max(421f, _wgslsmith_f_op_f32(global1.x * 562f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.x, global1.x))), global1.x, _wgslsmith_f_op_f32(trunc(1f)))));
    var var_3 = _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(-(max(1i, 1i) << (max(4294967295u, u_input.a) % 32u)), -(reverseBits(0i) ^ u_input.b.x)));
    global2 = array<bool, 13>();
    return 59995u;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: i32) -> f32 {
    let var_0 = ~func_4(_wgslsmith_div_vec2_u32(func_3(true, Struct_4(Struct_1(159f, false, 62253u, vec4<f32>(-722f, 611f, global1.x, global1.x)))), (vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) << (vec2<u32>(73926u, 550u) % vec2<u32>(32u))));
    global0 = -1875f;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.zx))) + _wgslsmith_f_op_vec2_f32(-global1.yw)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 351f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.wx + vec2<f32>(global1.x, global1.x))))));
    let var_2 = _wgslsmith_f_op_f32(-199f + _wgslsmith_f_op_f32(var_1.x * 1317f));
    global0 = 1906f;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1021f + var_2))))));
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1482f, 898f, !(!global2[_wgslsmith_index_u32(arg_3, 13u)]))), -676f), 21315u < ~func_3(global1.x >= 858f, Struct_4(Struct_1(2194f, true, arg_3, vec4<f32>(arg_0, global1.x, arg_2, global1.x)))).x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(~17942u, ~func_3(true, Struct_4(Struct_1(arg_2, global2[_wgslsmith_index_u32(u_input.a, 13u)], arg_1.x, vec4<f32>(global1.x, arg_0, 761f, 478f)))).x, _wgslsmith_sub_u32(arg_1.x | u_input.a, select(arg_3, arg_3, global2[_wgslsmith_index_u32(33994u, 13u)]))), arg_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, global1.x, arg_0, arg_0), vec4<f32>(-1000f, arg_2, arg_2, arg_2)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-719f, 1649f, -1078f, arg_0), vec4<f32>(arg_0, global1.x, -170f, -2131f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1620f, 1599f, arg_2, -134f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(192f, -972f, 1000f, -172f)), vec4<f32>(global1.x, -571f, 951f, 267f), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 13u)], true, global2[_wgslsmith_index_u32(arg_3, 13u)], true))))));
    var var_1 = var_0;
    let var_2 = Struct_2(true, var_1.c, Struct_1(271f, all(select(vec2<bool>(true, true), vec2<bool>(true, false), global2[_wgslsmith_index_u32(0u, 13u)] && global2[_wgslsmith_index_u32(32656u, 13u)])), min(u_input.a, ~reverseBits(var_1.c)), var_0.d), vec4<bool>(true, (-u_input.b.x <= reverseBits(u_input.c.x)) && !select(var_0.b, var_0.b, false), ~select(29715u, u_input.a, true) <= 1u, var_0.b), 46360u);
    let var_3 = !(arg_1.x != 4294967295u);
    let var_4 = firstLeadingBit(u_input.b.x);
    return ~(~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(u_input.a);
    let var_1 = !vec3<bool>(true, !global2[_wgslsmith_index_u32(~u_input.a >> (27696u % 32u), 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)] | true);
    let var_2 = vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * global1.x), _wgslsmith_f_op_f32(exp2(global1.x)), -1000f);
    var var_3 = select(vec4<u32>(~u_input.a, func_5(_wgslsmith_f_op_f32(func_2(!global2[_wgslsmith_index_u32(1u, 13u)], _wgslsmith_f_op_f32(var_2.x * var_2.x), 0i, countOneBits(-34024i))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), reverseBits(vec2<u32>(1u, u_input.a))), -606f, ~_wgslsmith_dot_vec2_u32(vec2<u32>(26351u, u_input.a), vec2<u32>(u_input.a, 41565u))), 0u, u_input.a), select(_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 11781u, u_input.a, 3419u)), vec4<u32>(_wgslsmith_sub_u32(1u, u_input.a), 57481u, 12422u, ~u_input.a)), _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.a, u_input.a, 68994u, u_input.a)), ~vec4<u32>(0u, 0u, u_input.a, 34322u))), -17793i < u_input.c.x), true);
    var var_4 = abs(u_input.a << (reverseBits(_wgslsmith_sub_u32(3395u, 1u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(-(max(vec2<i32>(u_input.c.x, u_input.b.x), vec2<i32>(u_input.b.x, 1i)) ^ vec2<i32>(u_input.c.x, u_input.c.x)) & vec2<i32>(u_input.c.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) * -513f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + global1.x), _wgslsmith_f_op_f32(-global1.x))), global1.x, global1.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(var_2, vec4<f32>(-1299f, 473f, var_2.x, var_2.x), !var_1.x)))), select(!(!vec4<bool>(global2[_wgslsmith_index_u32(var_3.x, 13u)], false, false, var_1.x)), !(!vec4<bool>(false, false, true, var_1.x)), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 13u)], true, var_1.x, global2[_wgslsmith_index_u32(4294967295u, 13u)]))))), 16186u, 0i, select(firstTrailingBit(max(~88944u, var_3.x)), _wgslsmith_mult_u32(min(abs(var_3.x), ~var_3.x), ~_wgslsmith_add_u32(var_3.x, 20073u)), !(select(var_1.x, var_1.x, true) | all(vec4<bool>(var_1.x, true, global2[_wgslsmith_index_u32(var_3.x, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)])))));
}

