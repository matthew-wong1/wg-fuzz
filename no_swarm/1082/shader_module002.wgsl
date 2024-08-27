struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(12507i, -1i);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 26>;

var<private> global3: array<f32, 30>;

var<private> global4: array<vec3<i32>, 12>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = (vec4<i32>(-1i) * -(u_input.c ^ arg_2.b)) & -u_input.c;
    let var_1 = arg_2.e.zzz;
    global1 = arg_2;
    let var_2 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.b.x, global0.x, abs(global1.b.x), _wgslsmith_div_i32(25946i, 19122i)), vec4<i32>(-var_0.x, _wgslsmith_sub_i32(global1.b.x, u_input.c.x), -18093i, _wgslsmith_add_i32(global0.x, global0.x)), _wgslsmith_add_vec4_i32(global1.b >> (vec4<u32>(16759u, 18843u, u_input.d.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(global1.b.x, 0i, 0i, u_input.b))), arg_2.b);
    global3 = array<f32, 30>();
    return global2[_wgslsmith_index_u32(1u, 26u)];
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec4<f32> {
    global3 = array<f32, 30>();
    global0 = global1.b.wx;
    global3 = array<f32, 30>();
    let var_0 = vec2<bool>(any(vec4<bool>(false, global1.c, global1.c || global1.c, global1.c)) & global1.c, global1.c);
    var var_1 = vec4<bool>(all(vec3<bool>(!var_0.x, (4294967295u >> (global1.e.x % 32u)) > 0u, false)), false, var_0.x, false);
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(109370u, 30u)]), -125f, _wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(-global1.d)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -756f), _wgslsmith_div_f32(262f, global1.d), global3[_wgslsmith_index_u32(~u_input.a, 30u)], _wgslsmith_f_op_f32(-global1.a)), select(select(vec4<bool>(true, global1.c, var_0.x, true), vec4<bool>(var_0.x, global1.c, var_1.x, var_1.x), var_1.x), select(vec4<bool>(var_0.x, true, false, global1.c), vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(true, false, true, true)), true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1318f, 1000f, global1.a, global1.a) - vec4<f32>(global3[_wgslsmith_index_u32(26884u, 30u)], -1046f, -1000f, global1.d))))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    var var_0 = vec2<i32>(firstTrailingBit(~_wgslsmith_div_i32(34187i, 10896i)), arg_0.b.x) | vec2<i32>(global0.x, _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(arg_2.b.yx, global1.b.ww), abs(arg_2.b.xz)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(2050f, global1.a))))));
    var var_2 = true;
    let var_3 = vec3<u32>(~_wgslsmith_mult_u32(global1.e.x, ~1200u), _wgslsmith_mod_u32(~(~arg_2.e.x), ~1u) >> ((u_input.a << (arg_2.e.x % 32u)) % 32u), _wgslsmith_mod_u32(4294967295u, max(u_input.d.x, min(arg_2.e.x, 0u))));
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, -2340f) * _wgslsmith_f_op_f32(abs(var_1.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + _wgslsmith_f_op_f32(-1000f * 1000f))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(arg_3.x, var_1.x)), -1180f));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    global4 = array<vec3<i32>, 12>();
    global1 = arg_1;
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(trunc(-821f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, global1.e.x, global1.e.x), arg_0.e), 30u)]))), _wgslsmith_f_op_f32(func_4(func_2(!vec4<bool>(true, true, arg_0.c, global1.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(473f, global1.a, arg_0.d) * vec3<f32>(1128f, 2776f, global1.d)), global2[_wgslsmith_index_u32(17802u, 26u)]), arg_1, func_2(select(vec4<bool>(arg_0.c, true, arg_0.c, true), vec4<bool>(true, false, false, arg_1.c), vec4<bool>(true, true, false, global1.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, arg_1.d, -1337f) * vec3<f32>(global3[_wgslsmith_index_u32(global1.e.x, 30u)], global1.a, arg_1.d)), func_2(vec4<bool>(arg_1.c, arg_0.c, arg_1.c, global1.c), vec3<f32>(-2267f, 1343f, -145f), Struct_1(arg_0.d, global1.b, false, arg_2, global1.e))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_add_vec4_u32(vec4<u32>(9033u, arg_0.e.x, u_input.d.x, u_input.d.x), global1.e), 14733u))))), _wgslsmith_f_op_f32(select(global1.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f)))), !arg_1.c)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, select(arg_1.e.x, global1.e.x, true), _wgslsmith_add_u32(1u, global1.e.x)), _wgslsmith_mod_vec4_u32(arg_0.e, vec4<u32>(4294967295u, u_input.d.x, 0u, 4294967295u)) | ~arg_1.e) | 82634u, 30u)]);
    global3 = array<f32, 30>();
    global2 = array<Struct_1, 26>();
    return arg_1.a;
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = func_2(vec4<bool>(!global1.c, 1f >= arg_2, global1.c, all(!select(vec2<bool>(global1.c, global1.c), vec2<bool>(true, false), false))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-541f * -350f) - 1722f), arg_2)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)), -115f))), global1.d), func_2(select(select(select(vec4<bool>(true, false, true, global1.c), vec4<bool>(true, arg_1.c, global1.c, global1.c), vec4<bool>(global1.c, global1.c, false, arg_1.c)), select(vec4<bool>(false, false, arg_1.c, arg_1.c), vec4<bool>(true, global1.c, true, arg_1.c), vec4<bool>(true, false, global1.c, true)), global0.x < global0.x), select(select(vec4<bool>(true, true, global1.c, true), vec4<bool>(false, arg_1.c, false, false), vec4<bool>(arg_1.c, true, false, true)), !vec4<bool>(global1.c, false, false, arg_1.c), select(vec4<bool>(true, true, false, global1.c), vec4<bool>(true, global1.c, global1.c, arg_1.c), vec4<bool>(false, true, arg_1.c, global1.c))), select(select(vec4<bool>(arg_1.c, global1.c, false, global1.c), vec4<bool>(true, true, false, false), true), !vec4<bool>(arg_1.c, false, arg_1.c, false), true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.yzy)), vec3<f32>(global1.a, 172f, arg_2)), Struct_1(-180f, countOneBits(-arg_1.b), false, _wgslsmith_f_op_f32(f32(-1f) * -303f), func_2(!vec4<bool>(false, false, global1.c, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_2, global3[_wgslsmith_index_u32(1u, 30u)])), Struct_1(-2563f, vec4<i32>(arg_1.b.x, 41994i, global1.b.x, -2147483647i), arg_1.c, 1552f, vec4<u32>(25047u, 4294967295u, u_input.d.x, u_input.d.x))).e)));
    global1 = func_2(!vec4<bool>(true, false, var_0.c, true), vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(775f + var_0.d))))), arg_0.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(var_0.e, 32993u)).x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(func_1(Struct_1(arg_0.x, global1.b, arg_1.c, -1676f, global1.e), Struct_1(-1707f, arg_1.b, true, 883f, arg_1.e), global3[_wgslsmith_index_u32(global1.e.x, 30u)])))), u_input.c, true, arg_0.x, ~(~var_0.e) << (_wgslsmith_div_vec4_u32(arg_1.e >> (global1.e % vec4<u32>(32u)), ~vec4<u32>(20567u, 16414u, 1u, var_0.e.x)) % vec4<u32>(32u))));
    global1 = func_2(vec4<bool>(all(select(!vec4<bool>(arg_1.c, true, arg_1.c, global1.c), select(vec4<bool>(arg_1.c, arg_1.c, true, global1.c), vec4<bool>(false, arg_1.c, false, global1.c), arg_1.c), select(vec4<bool>(arg_1.c, false, false, global1.c), vec4<bool>(var_0.c, arg_1.c, false, var_0.c), false))), all(vec2<bool>(true, !var_0.c)), var_0.c, var_0.c), arg_0.wxx, Struct_1(_wgslsmith_div_f32(296f, arg_1.d), u_input.c, true, var_0.d, global1.e));
    var var_1 = func_2(vec4<bool>(!((global1.c && false) && (var_0.c & true)), true, arg_1.c, true), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -977f, 183f), arg_0.wzz), vec3<f32>(681f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d.x, 30u)] - arg_0.x), _wgslsmith_f_op_f32(func_4(arg_1, Struct_1(1009f, vec4<i32>(u_input.c.x, arg_1.b.x, 66825i, 25443i), global1.c, global3[_wgslsmith_index_u32(u_input.a, 30u)], global1.e), Struct_1(arg_0.x, global1.b, true, -644f, vec4<u32>(0u, arg_1.e.x, arg_1.e.x, 4294967295u)), arg_0)))))), arg_1);
    global2 = array<Struct_1, 26>();
    return func_2(!select(!vec4<bool>(global1.c, global1.c, var_0.c, false), vec4<bool>(any(vec3<bool>(arg_1.c, false, var_0.c)), 2147483647i < global1.b.x, true, false), select(vec4<bool>(var_0.c, true, false, arg_1.c), select(vec4<bool>(false, arg_1.c, var_0.c, false), vec4<bool>(var_0.c, true, var_1.c, true), false), vec4<bool>(var_0.c, false, arg_1.c, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.zwz, vec3<f32>(_wgslsmith_div_f32(arg_1.d, arg_1.d), _wgslsmith_f_op_f32(ceil(-1014f)), _wgslsmith_f_op_f32(select(arg_1.d, 152f, true))), _wgslsmith_mod_i32(u_input.c.x, u_input.b) != global1.b.x))), Struct_1(-1163f, vec4<i32>(abs(0i), func_2(select(vec4<bool>(true, var_0.c, true, true), vec4<bool>(true, global1.c, false, var_1.c), false), vec3<f32>(1039f, -284f, arg_0.x), func_2(vec4<bool>(false, var_1.c, var_0.c, true), arg_0.zxw, global2[_wgslsmith_index_u32(var_0.e.x, 26u)])).b.x, ~abs(-1481i), _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, var_1.b.x), 1i)), var_0.c, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(13922u, 4294967295u, var_1.e.x) & arg_1.e.ywx, global1.e.yzz, !vec3<bool>(false, false, var_1.c)), func_2(vec4<bool>(arg_1.c, var_1.c, false, arg_1.c), _wgslsmith_f_op_vec3_f32(step(arg_0.xzx, arg_0.zyz)), Struct_1(-1150f, arg_1.b, arg_1.c, arg_1.a, vec4<u32>(var_0.e.x, u_input.d.x, global1.e.x, var_0.e.x))).e.zyz), 30u)], var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 30u)], 1108f), global3[_wgslsmith_index_u32(~global1.e.x, 30u)], global1.d, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(12617u, 30u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1231f, global1.a, global3[_wgslsmith_index_u32(global1.e.x, 30u)], global3[_wgslsmith_index_u32(global1.e.x, 30u)])) + _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(0u, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(1u, 30u)], 1031f), vec4<f32>(global3[_wgslsmith_index_u32(global1.e.x, 30u)], 1126f, global3[_wgslsmith_index_u32(1u, 30u)], 2689f)))))), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(69992u, 38471u), 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(-761f, _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, global1.b.x, 2147483647i), u_input.c), !global1.c, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4294967295u, 30u)] + 1070f), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.e.x, 28230u, global1.e.x, global1.e.x), global1.e)), global2[_wgslsmith_index_u32(4294967295u, 26u)], global1.d)) - global1.d));
    global3 = array<f32, 30>();
    global0 = u_input.c.xz;
    global2 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, 1u, _wgslsmith_add_u32(global1.e.x & ~4294967295u, global1.e.x), abs(4294967295u)), _wgslsmith_f_op_vec4_f32(func_3(vec4<u32>(4294967295u, ~(~var_0.e.x), u_input.d.x, ~countOneBits(var_0.e.x)), func_5(vec4<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global1.e.x, 30u)], -183f), -772f, 550f), func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(552f, global3[_wgslsmith_index_u32(u_input.d.x, 30u)], var_0.d, global3[_wgslsmith_index_u32(global1.e.x, 30u)]), vec4<f32>(-431f, -1304f, global3[_wgslsmith_index_u32(1396u, 30u)], global1.a), var_0.c)), func_2(vec4<bool>(false, var_0.c, global1.c, var_0.c), vec3<f32>(344f, global3[_wgslsmith_index_u32(1u, 30u)], 811f), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 30u)], var_0.b, false, var_0.d, var_0.e)), _wgslsmith_f_op_f32(-var_0.d)), -1091f).e.x)).xxx, min(1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(firstTrailingBit(0u), 1u), 1u)));
}

