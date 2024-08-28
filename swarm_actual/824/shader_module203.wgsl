struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(true, vec3<i32>(-40498i, 40369i, -22751i), 0u, true), Struct_1(false, vec3<i32>(3693i, 12670i, -33824i), 3777u, true), Struct_1(true, vec3<i32>(50436i, -78064i, -1i), 0u, true));

var<private> global3: f32 = -429f;

var<private> global4: array<f32, 21> = array<f32, 21>(-1063f, -869f, -1000f, -411f, 999f, -122f, 2014f, 348f, 616f, -1572f, -554f, -3158f, 819f, 1152f, 467f, 487f, -1000f, 794f, -610f, -2397f, -561f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(~0u, 17u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~u_input.e, 21u)] * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 21u)] - global4[_wgslsmith_index_u32(~arg_2.c, 21u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2034f))), false))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_2.c, 21u)] * global4[_wgslsmith_index_u32(4294967295u, 21u)]));
    var var_2 = any(!select(select(vec2<bool>(false, arg_2.a), vec2<bool>(var_0.a, true), select(vec2<bool>(arg_2.d, false), vec2<bool>(false, arg_2.d), true)), !(!vec2<bool>(arg_2.d, var_0.d)), select(vec2<bool>(var_0.a, arg_2.d), !vec2<bool>(var_0.a, false), select(vec2<bool>(false, arg_2.a), vec2<bool>(var_0.a, true), vec2<bool>(true, false)))));
    var_2 = -1080f >= global4[_wgslsmith_index_u32(arg_1.x, 21u)];
    global0 = array<Struct_1, 27>();
    return ~32718u;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = global2[_wgslsmith_index_u32(max((4294967295u & _wgslsmith_clamp_u32(abs(12955u), 0u, _wgslsmith_mult_u32(32905u, 21010u))) & _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 136413u), vec2<u32>(4294967295u, arg_1.c)), _wgslsmith_add_u32(75443u, u_input.a), ~4294967295u, arg_1.c), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c, 10106u, u_input.a, 5059u), vec4<u32>(0u, arg_1.c, arg_1.c, u_input.c)), countOneBits(vec4<u32>(0u, u_input.a, u_input.c, arg_1.c)))), ~(func_3(u_input.a, vec3<u32>(arg_1.c, arg_1.c, 0u), global2[_wgslsmith_index_u32(4294967295u, 3u)]) << (_wgslsmith_mult_u32(4294967295u & arg_1.c, ~arg_1.c) % 32u))), 3u)];
    var var_1 = vec4<u32>(~_wgslsmith_mod_u32(1u, ~u_input.c), arg_1.c, (_wgslsmith_mod_u32(~71571u, ~u_input.c) << (u_input.e % 32u)) & 26823u, u_input.c);
    let var_2 = abs(~_wgslsmith_clamp_vec4_u32(max(firstLeadingBit(vec4<u32>(arg_1.c, u_input.c, arg_1.c, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.x, 19645u, 68915u), vec4<u32>(11037u, 1u, u_input.e, u_input.a))), select(abs(vec4<u32>(arg_1.c, 148u, 0u, 4294967295u)), vec4<u32>(var_1.x, 0u, 4294967295u, var_1.x), select(vec4<bool>(true, true, arg_0, var_0.a), vec4<bool>(var_0.a, arg_0, false, arg_0), vec4<bool>(var_0.a, true, true, true))), ~(~vec4<u32>(var_0.c, 4294967295u, var_0.c, arg_1.c))));
    var var_3 = !arg_0;
    let var_4 = true;
    return vec4<bool>(arg_0, !(!any(!vec3<bool>(arg_0, false, true))), !arg_0, arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0.b;
    let var_1 = !select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0.d, false, arg_3.d, arg_0.d), true)), !select(vec4<bool>(arg_0.a, arg_0.a, true, true), func_2(false, global2[_wgslsmith_index_u32(arg_0.c, 3u)]), func_2(false, global2[_wgslsmith_index_u32(32884u, 3u)]).x), select(select(func_2(arg_0.d, Struct_1(true, vec3<i32>(var_0.x, var_0.x, -1546i), u_input.e, arg_3.d)), vec4<bool>(false, false, true, arg_3.d), vec4<bool>(false, arg_0.a, arg_0.a, arg_0.a)), vec4<bool>(arg_3.a, false, any(vec2<bool>(true, arg_0.a)), false), vec4<bool>(true, any(vec4<bool>(arg_0.d, arg_0.a, true, arg_3.d)), !arg_0.d, true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(71295u, 21u)])) * 198f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1754f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1509f + global4[_wgslsmith_index_u32(arg_2, 21u)]) * global4[_wgslsmith_index_u32(u_input.c, 21u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(831f - arg_1.x), _wgslsmith_f_op_f32(ceil(916f)))) + _wgslsmith_f_op_f32(max(1253f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.c, 21u)]))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-866f)) * _wgslsmith_f_op_f32(2006f - 1145f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(u_input.a, 21u)], arg_1.x, var_1.x)), _wgslsmith_f_op_f32(min(1633f, global4[_wgslsmith_index_u32(arg_0.c, 21u)]))))))));
    var var_4 = arg_0;
    return global0[_wgslsmith_index_u32(~((_wgslsmith_add_u32(select(arg_0.c, 4294967295u, arg_0.a), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, var_4.c), vec2<u32>(arg_2, 71459u))) ^ _wgslsmith_clamp_u32(abs(1u), 0u, _wgslsmith_sub_u32(arg_0.c, arg_2))) >> (_wgslsmith_dot_vec2_u32(countOneBits(reverseBits(vec2<u32>(50814u, arg_2))), vec2<u32>(~arg_0.c, arg_2)) % 32u)), 27u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    global3 = 1083f;
    global4 = array<f32, 21>();
    global4 = array<f32, 21>();
    global2 = array<Struct_1, 3>();
    var var_0 = select(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~min(vec4<u32>(arg_2.c, 85138u, 46339u, 0u), vec4<u32>(0u, u_input.e, 0u, arg_2.c)), select(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 45088u, 4294967295u, 0u), vec4<u32>(8430u, 4294967295u, u_input.c, 15683u)), vec4<u32>(4294967295u, arg_2.c, u_input.e, 44547u), select(vec4<bool>(true, arg_0.x, true, false), vec4<bool>(false, false, true, arg_0.x), vec4<bool>(true, true, arg_2.d, false)))), vec4<u32>(120217u, _wgslsmith_dot_vec3_u32(vec3<u32>(24354u, 107970u, arg_1.c), vec3<u32>(arg_2.c, 41705u, u_input.a)), func_1(Struct_1(arg_0.x, arg_2.b, 84996u, false), vec2<f32>(arg_3.x, global4[_wgslsmith_index_u32(0u, 21u)]), 1u, global1[_wgslsmith_index_u32(4294967295u, 17u)]).c, arg_1.c) ^ vec4<u32>(arg_2.c, ~u_input.a, ~u_input.a, arg_1.c)), firstTrailingBit(vec4<u32>(29573u ^ arg_2.c, _wgslsmith_div_u32(u_input.e, 41019u), _wgslsmith_mod_u32(4294967295u, arg_1.c), ~arg_1.c) & (vec4<u32>(0u, arg_1.c, u_input.c, arg_2.c) ^ reverseBits(vec4<u32>(8560u, 29748u, 0u, 0u)))), select(vec4<bool>(any(!vec4<bool>(false, false, arg_1.a, true)), arg_0.x, arg_2.d, all(func_2(true, Struct_1(arg_0.x, vec3<i32>(-1i, 2147483647i, arg_1.b.x), 24094u, arg_1.a)).xyw)), !func_2(false, func_1(Struct_1(arg_0.x, arg_2.b, u_input.a, arg_1.d), vec2<f32>(global4[_wgslsmith_index_u32(arg_2.c, 21u)], 966f), arg_2.c, Struct_1(arg_1.d, arg_1.b, u_input.a, true))), !vec4<bool>(0u != arg_2.c, arg_0.x, any(vec4<bool>(arg_2.a, arg_2.d, false, false)), true)));
    return func_1(func_1(Struct_1(false, vec3<i32>(min(-17167i, u_input.b.x), arg_1.b.x, 2147483647i), 25197u, true), arg_3, _wgslsmith_dot_vec4_u32(vec4<u32>(6273u, reverseBits(0u), 0u, var_0.x), vec4<u32>(~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c, 18263u, 0u), var_0.xxz), ~u_input.e, firstTrailingBit(33157u))), global2[_wgslsmith_index_u32(~13178u, 3u)]), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(814f, _wgslsmith_f_op_f32(f32(-1f) * -179f)))), vec2<f32>(global4[_wgslsmith_index_u32(~u_input.e, 21u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(arg_1.c, 21u)], -1103f)), 861f)))), ~firstTrailingBit(~_wgslsmith_clamp_u32(33169u, 57220u, u_input.e)), global2[_wgslsmith_index_u32(arg_1.c, 3u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!select(vec2<bool>(all(vec4<bool>(true, false, true, false)), true), vec2<bool>(true, true), vec2<bool>(true, true)), func_1(Struct_1(true, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 0i, u_input.b.x), vec3<i32>(-2147483647i, u_input.b.x, u_input.d), ~vec3<i32>(u_input.d, u_input.b.x, 2147483647i)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 37792u, u_input.c, 31958u) & vec4<u32>(0u, u_input.c, u_input.e, u_input.e), vec4<u32>(0u, 4294967295u, u_input.a, u_input.e)), true), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 21u)] - -364f)), _wgslsmith_f_op_f32(f32(-1f) * -241f)), u_input.e, global1[_wgslsmith_index_u32(1u, 17u)]), Struct_1(false, vec3<i32>(u_input.d, -29004i, i32(-1i) * -33154i), _wgslsmith_sub_u32(~(~56231u), ~u_input.e), false), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(0u, 21u)], -249f))) - global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.c, u_input.a), 21u)]), 496f));
    var var_1 = _wgslsmith_dot_vec2_i32(func_4(!vec2<bool>(true, all(vec2<bool>(var_0.d, true))), Struct_1(abs(var_0.c) > reverseBits(u_input.a), var_0.b, 12621u, true), global2[_wgslsmith_index_u32(var_0.c, 3u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-416f, -1538f) + vec2<f32>(984f, -854f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2576f, global4[_wgslsmith_index_u32(u_input.a, 21u)]))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(284f, 507f), vec2<f32>(global4[_wgslsmith_index_u32(27778u, 21u)], 1919f)), vec2<f32>(-987f, global4[_wgslsmith_index_u32(var_0.c, 21u)]), func_2(var_0.a, global2[_wgslsmith_index_u32(var_0.c, 3u)]).xx)), select(vec2<bool>(true, true), !vec2<bool>(var_0.a, false), vec2<bool>(var_0.d, var_0.a))))).b.xy, vec2<i32>(~103692i, firstTrailingBit(u_input.b.x) ^ (firstLeadingBit(u_input.b.x) >> (var_0.c % 32u))));
    let var_2 = func_1(Struct_1(var_0.a, vec3<i32>(u_input.d, var_0.b.x, -(i32(-1i) * -1i)), ~(~func_1(Struct_1(var_0.d, var_0.b, u_input.c, true), vec2<f32>(global4[_wgslsmith_index_u32(u_input.e, 21u)], -345f), 4783u, global1[_wgslsmith_index_u32(u_input.a, 17u)]).c), func_1(func_1(global1[_wgslsmith_index_u32(~u_input.c, 17u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-1176f, 713f) - vec2<f32>(global4[_wgslsmith_index_u32(u_input.e, 21u)], -733f)), ~0u, func_1(Struct_1(var_0.a, var_0.b, var_0.c, var_0.a), vec2<f32>(global4[_wgslsmith_index_u32(var_0.c, 21u)], global4[_wgslsmith_index_u32(var_0.c, 21u)]), u_input.a, var_0)), _wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(57875u, 21u)], 580f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(548f, global4[_wgslsmith_index_u32(var_0.c, 21u)]))), ~(var_0.c ^ u_input.a), var_0).d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(176f, global4[_wgslsmith_index_u32(var_0.c, 21u)])))))), 12205u, var_0);
    global2 = array<Struct_1, 3>();
    global0 = array<Struct_1, 27>();
    var var_3 = select(!(!(!select(vec2<bool>(false, var_2.a), vec2<bool>(false, var_2.a), vec2<bool>(false, false)))), !(!(!vec2<bool>(var_2.a, var_0.a))), vec2<bool>(var_2.a, !(u_input.a <= _wgslsmith_mult_u32(1u, 112071u))));
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(0u, func_1(func_1(global0[_wgslsmith_index_u32(43474u, 27u)], vec2<f32>(global4[_wgslsmith_index_u32(u_input.c, 21u)], 960f), 1u, global2[_wgslsmith_index_u32(u_input.e, 3u)]), vec2<f32>(global4[_wgslsmith_index_u32(u_input.c, 21u)], -2173f), _wgslsmith_mult_u32(var_2.c, 4294967295u), Struct_1(var_2.a, var_2.b, u_input.e, true)).c, _wgslsmith_dot_vec2_u32(max(vec2<u32>(20585u, 21346u), vec2<u32>(var_0.c, var_0.c)), ~vec2<u32>(4294967295u, var_0.c)), 35348u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1272f), global4[_wgslsmith_index_u32(reverseBits(0u), 21u)]) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1083f, global4[_wgslsmith_index_u32(36093u, 21u)]))))));
}

