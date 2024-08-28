struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_2.c.e.x, arg_1.a), arg_0.a.e);
    var var_1 = arg_0;
    global1 = array<vec4<bool>, 31>();
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(abs(-min(vec2<i32>(-54518i, var_2.a.e.x), vec2<i32>(var_0, -1i))), min(~vec2<i32>(arg_0.a.a, var_0), firstLeadingBit(vec2<i32>(0i, arg_1.e.x) ^ vec2<i32>(var_2.a.a, var_1.a.a)))), abs(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_0.a.b, 26410u), vec3<u32>(0u, arg_0.a.b, 5553u)), 1u)), arg_2.a.c, _wgslsmith_dot_vec2_u32(~(~abs(vec2<u32>(50406u, 1u))), var_2.a.c.xy), -abs(vec2<i32>(var_2.a.e.x, 1i) | max(var_1.a.e, vec2<i32>(-30871i, arg_0.a.e.x))));
    return ~arg_0.a.d & _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_add_u32(arg_2.a.c.x, 1u)), arg_2.c.d >> (var_2.a.b % 32u));
}

fn func_2() -> Struct_3 {
    var var_0 = select(global1[_wgslsmith_index_u32(4294967295u, 31u)], !vec4<bool>(false, (u_input.a ^ u_input.a) > u_input.a, !select(false, true, true), true), select(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true), vec4<bool>(-1i == (u_input.a & 8654i), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(85715u, 22u)] - global0[_wgslsmith_index_u32(4294967295u, 22u)]) == global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), 22u)], false, !all(vec3<bool>(true, false, false))), !((1092f == global0[_wgslsmith_index_u32(0u, 22u)]) || true)));
    var var_1 = -1077f;
    var var_2 = Struct_2(Struct_1(u_input.b.x, ~4294967295u, vec3<u32>(_wgslsmith_add_u32(u_input.c, 89047u) ^ ~u_input.c, ~(~u_input.c), ~countOneBits(41724u)), 23605u, u_input.b.xy), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1508f, global0[_wgslsmith_index_u32(func_3(Struct_3(Struct_1(18704i, 1u, vec3<u32>(4294967295u, u_input.c, 0u), 1u, vec2<i32>(5236i, -2147483647i))), Struct_1(u_input.a, 4294967295u, vec3<u32>(4294967295u, 46551u, 12047u), u_input.c, vec2<i32>(-13547i, u_input.b.x)), Struct_2(Struct_1(26619i, 71532u, vec3<u32>(u_input.c, u_input.c, 0u), 50549u, vec2<i32>(-34047i, u_input.a)), vec3<f32>(2245f, -627f, global0[_wgslsmith_index_u32(80338u, 22u)]), Struct_1(-35629i, 9003u, vec3<u32>(0u, 4294967295u, 4294967295u), 1u, vec2<i32>(u_input.a, -1i)), u_input.b)), 22u)], !var_0.x))), global0[_wgslsmith_index_u32(~1u, 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_1(reverseBits(-6488i), u_input.c, ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.c, 11956u, u_input.c)), vec3<u32>(51311u, u_input.c, 39125u) ^ vec3<u32>(15878u, 43752u, u_input.c)), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, 36084u), u_input.c, ~0u), -vec2<i32>(~u_input.a, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x))), u_input.b);
    return Struct_3(var_2.c);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_3 {
    global0 = array<f32, 22>();
    var var_0 = func_2();
    let var_1 = Struct_2(var_0.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 22u)])))), _wgslsmith_f_op_f32(-748f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 22u)] - arg_0)), global0[_wgslsmith_index_u32(u_input.c << ((u_input.c << (4294967295u % 32u)) % 32u), 22u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(var_0.a.b, 22u)], -656f, global0[_wgslsmith_index_u32(4294967295u, 22u)])), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(16401u, 22u)], -609f, -1574f))), select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(false, arg_1.x, false), arg_1.x))))), func_2().a, ~u_input.b);
    var var_2 = !select(!(!select(arg_1, vec3<bool>(arg_1.x, false, arg_1.x), false)), arg_1, true);
    var var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(18222u, min(_wgslsmith_mult_u32(firstLeadingBit(31142u), min(u_input.c, 66668u)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.a.b, var_1.c.b, var_0.a.c.x), u_input.c, ~u_input.c))), vec2<u32>(0u, 0u));
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_4(~(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0.a.d, arg_0.a.d, u_input.c, 54762u), vec4<u32>(arg_1, arg_1, u_input.c, arg_1)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(15487u, arg_1, u_input.c, 30839u), ~vec4<u32>(1u, u_input.c, arg_0.a.d, u_input.c)) % vec4<u32>(32u))), arg_0.a.c.yx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1103f, _wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(arg_1, 22u)])))))), true, ~1u);
    var var_2 = false;
    global0 = array<f32, 22>();
    var var_3 = ~u_input.b.xw;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_4(func_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(38056u, 16965u, u_input.c, 4294967295u), vec4<u32>(33545u, 1u, 62831u, u_input.c)), 22u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 22u)])), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), false), vec4<i32>(-1i) * -u_input.b), ~1u));
    global1 = array<vec4<bool>, 31>();
    var var_1 = _wgslsmith_sub_i32(2147483647i, u_input.b.x);
    var_1 = _wgslsmith_add_i32(var_0.a.a, max(func_4(func_2(), ~1u).a, u_input.b.x >> (~func_1(global0[_wgslsmith_index_u32(u_input.c, 22u)], vec3<bool>(true, false, true), u_input.b).a.c.x % 32u)));
    var var_2 = !vec4<bool>(false, !all(vec3<bool>(true, true, true)) | (true & (u_input.c == 4294967295u)), false, true);
    var var_3 = !var_2.x;
    let var_4 = Struct_4(_wgslsmith_mod_vec4_u32(~vec4<u32>(firstTrailingBit(7758u), ~26702u, u_input.c << (var_0.a.c.x % 32u), min(var_0.a.c.x, 16137u)), firstLeadingBit(min(vec4<u32>(var_0.a.d, u_input.c, var_0.a.d, 0u), vec4<u32>(76458u, u_input.c, u_input.c, var_0.a.c.x) & vec4<u32>(29833u, 11522u, var_0.a.b, u_input.c)))), vec2<u32>(~var_0.a.c.x, abs(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(22989u, 0u, 0u), var_0.a.c, vec3<u32>(var_0.a.c.x, var_0.a.c.x, 18896u)), var_0.a.c))), vec4<f32>(_wgslsmith_f_op_f32(-1521f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(27898u, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)])))), -143f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.c & 1u, 22u)], _wgslsmith_f_op_f32(max(-2099f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(40168u, 22u)]))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1057f + 331f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.d, 22u)])), true))), all(select(vec2<bool>(var_2.x || var_2.x, global0[_wgslsmith_index_u32(677u, 22u)] < 204f), var_2.yz, !var_2.x)), ~reverseBits(74903u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_4.c.xx - var_4.c.wz))) * var_4.c.zw)));
}

