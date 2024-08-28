struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7539u;

var<private> global1: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(0i, 19018i, 0i), vec3<i32>(1i, 1i, -43111i), vec3<i32>(39038i, -1i, 0i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(-1i, -5107i, 0i), vec3<i32>(0i, -1i, 18486i), vec3<i32>(12001i, -1i, 12353i), vec3<i32>(1i, -66914i, -1i), vec3<i32>(-2979i, 33681i, 1i), vec3<i32>(-14385i, 2147483647i, 10851i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(2147483647i, 48811i, -29520i), vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, -28802i), vec3<i32>(56426i, -1i, -19720i), vec3<i32>(34518i, 24151i, i32(-2147483648)), vec3<i32>(32187i, 0i, 2147483647i), vec3<i32>(1i, 19582i, 1i), vec3<i32>(-26753i, 13186i, 2147483647i), vec3<i32>(0i, 51418i, -43703i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(0i, 1i, 55159i));

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -498f);
    global0 = u_input.b.x;
    let var_1 = !global2.zyy;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -600f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + arg_0.x)));
    let var_3 = _wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(u_input.b, ~firstLeadingBit(vec4<u32>(u_input.b.x, 1u, 22210u, u_input.b.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-var_2.x))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> vec2<u32> {
    var var_0 = vec3<f32>(-739f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)), arg_2.x))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_div_f32(arg_2.x, arg_2.x), 1774f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1562f, -520f, -125f)))), !any(select(vec4<bool>(true, false, global2.x, arg_0.x), vec4<bool>(false, global2.x, true, true), arg_0.x)), all(!vec3<bool>(arg_0.x, global2.x, false)), Struct_1(~u_input.c))));
    var var_1 = vec4<bool>(all(select(select(!vec4<bool>(false, true, false, arg_0.x), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true)), arg_2.x == var_0.x), vec4<bool>(arg_2.x >= arg_2.x, true, select(arg_0.x, true, global2.x), global2.x), !arg_0.x)), (~13850u != (_wgslsmith_mult_u32(55752u, arg_1.x) << (firstLeadingBit(19832u) % 32u))) & global2.x, true == arg_0.x, false == (((arg_1.x | arg_1.x) < 20627u) || arg_0.x));
    global1 = array<vec3<i32>, 22>();
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(2147483647i, u_input.a, u_input.c) >> (~vec3<u32>(9287u, arg_1.x, 1u) % vec3<u32>(32u))), vec3<i32>(-82268i, -35989i, ~u_input.c)));
    let var_3 = var_2;
    return vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.xx), arg_1.x ^ _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_1.x, 4294967295u), arg_1.x), ~u_input.b.x));
}

fn func_4(arg_0: vec2<u32>) -> vec4<bool> {
    global1 = array<vec3<i32>, 22>();
    global2 = !(!vec4<bool>(!global2.x, all(global2.wz), true, true));
    var var_0 = select(global2.zy, !select(vec2<bool>(any(global2.xyy), global2.x), vec2<bool>(all(global2.xxz), true), all(vec4<bool>(global2.x, global2.x, true, global2.x))), select(vec2<bool>(true, all(vec4<bool>(global2.x, global2.x, global2.x, global2.x))), select(vec2<bool>(any(vec4<bool>(false, global2.x, false, false)), true), !(!vec2<bool>(global2.x, false)), !global2.x), _wgslsmith_f_op_f32(ceil(683f)) <= _wgslsmith_f_op_f32(f32(-1f) * -845f)));
    var_0 = select(vec2<bool>(var_0.x, global2.x), global2.xz, global2.yx);
    var var_1 = vec2<bool>(var_0.x, true);
    return vec4<bool>(global2.x, !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1033f * 197f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(360f)))), false, !all(!vec4<bool>(var_0.x, global2.x, true, false)));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = _wgslsmith_dot_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, ~u_input.b.x, arg_1 << (arg_1 % 32u)), firstLeadingBit(select(vec3<u32>(34793u, 0u, 40835u), vec3<u32>(arg_1, 17927u, 18273u), global2.xxx))), u_input.b.yww, global2.x), ~u_input.b.zyw);
    let var_0 = _wgslsmith_f_op_f32(floor(2743f));
    var var_1 = arg_0.a;
    global2 = select(func_4(_wgslsmith_add_vec2_u32(func_2(select(vec3<bool>(global2.x, global2.x, false), global2.zwz, global2.wxy), vec2<u32>(0u, 4294967295u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1338f, var_0, 1191f, 402f)))), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 15333u), vec2<u32>(0u, 25184u)) >> (u_input.b.zw % vec2<u32>(32u)))), vec4<bool>(true, all(vec2<bool>(global2.x, false)), true, _wgslsmith_f_op_f32(-1f) < _wgslsmith_f_op_f32(step(432f, _wgslsmith_f_op_f32(-var_0)))), !select(false, func_4(~u_input.b.yz).x, true));
    var var_2 = countOneBits(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, u_input.a), ~vec2<i32>(-10014i, -11380i), global2.x), select(~vec2<i32>(-16796i, u_input.a), u_input.d.yz, true || global2.x))) == arg_0.a;
    return -628f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.d.x);
    global2 = vec4<bool>(true, any(select(!select(vec3<bool>(true, true, global2.x), global2.zzx, vec3<bool>(global2.x, true, global2.x)), !vec3<bool>(global2.x, true, false), vec3<bool>(true, false, all(global2.ww)))), any(!vec3<bool>(global2.x, !global2.x, u_input.b.x <= u_input.b.x)), !(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_1(var_0, 6158u))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.c), u_input.b.x)))));
    var var_1 = Struct_2(Struct_1(~u_input.c), vec3<i32>(-31325i, u_input.a, max(-1i, var_0.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(194f))) + 1000f), -459f)), u_input.b.x, max(_wgslsmith_clamp_vec2_u32(u_input.b.xz, u_input.b.xw, vec2<u32>(u_input.b.x, 1u) << (u_input.b.zy % vec2<u32>(32u))), ~(~vec2<u32>(0u, 20394u))));
    var var_2 = var_1.d;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c)))), _wgslsmith_f_op_f32(sign(-1299f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(select(u_input.b.x, 42504u, global2.x), var_1.d, true), ~var_1.e.x, var_1.d), 22u)]), global1[_wgslsmith_index_u32(var_1.d, 22u)]);
}

