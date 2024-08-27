struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(4294967295u, 34545u, 10246u, 28507u, 42074u, 10110u, 1u, 74441u);

var<private> global1: Struct_4;

var<private> global2: f32 = 1831f;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 21642u, 86144u, 77064u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = u_input.d.zzw | _wgslsmith_add_vec3_i32(vec3<i32>(abs(_wgslsmith_div_i32(-18292i, global1.a.a)), ~global1.a.b, u_input.a.x), (countOneBits(u_input.d.wzw) ^ _wgslsmith_clamp_vec3_i32(u_input.d.yzw, vec3<i32>(-1i, 24516i, -1i), u_input.a.zwx)) >> (~_wgslsmith_sub_vec3_u32(global3.xwy, global3.www) % vec3<u32>(32u)));
    var var_1 = Struct_4(global1.a, 18466u);
    let var_2 = _wgslsmith_f_op_f32(ceil(890f));
    global2 = var_2;
    global3 = ~firstLeadingBit(abs(_wgslsmith_div_vec4_u32(vec4<u32>(14712u, var_1.b, global3.x, global3.x), vec4<u32>(global1.b, global1.b, 13313u, 0u))));
    return var_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> vec4<u32> {
    global2 = 2886f;
    let var_0 = arg_0;
    global3 = vec4<u32>(global3.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, ~global3.x, 4294967295u ^ global1.b, ~u_input.c.x), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(var_0.c, 8u)], 48886u, 4294967295u, arg_0.c) << (vec4<u32>(13821u, 1u, global1.b, 24304u) % vec4<u32>(32u))), vec4<u32>(65701u, var_0.c, ~var_0.c, 4294967295u | arg_0.c))), 36571u, _wgslsmith_div_u32(~max(arg_0.c ^ global1.b, 7138u), global1.b ^ global0[_wgslsmith_index_u32(arg_1.b, 8u)]));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(step(-1662f, var_0.a)))), arg_0.b.c.x, 485f);
    global2 = var_0.b.c.x;
    return vec4<u32>(var_0.c, max(global3.x ^ arg_0.c, 4294967295u), global1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(15732u, 30612u, u_input.c.x), global3.xzy), _wgslsmith_add_u32(u_input.c.x, min(global3.x, 155244u))), ~(~u_input.c) ^ (u_input.c ^ select(u_input.c, u_input.c, vec2<bool>(false, false)))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = Struct_4(Struct_1(global1.a.b, select(-arg_0, _wgslsmith_add_i32(arg_0, u_input.b.x), true) & _wgslsmith_add_i32(~arg_0, select(-39888i, 0i, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a.c * vec4<f32>(1222f, -737f, -158f, -1337f)))), global1.b | (_wgslsmith_add_u32(~20475u, _wgslsmith_sub_u32(78807u, global1.b)) << (~45006u % 32u)));
    let var_0 = func_4(Struct_2(788f, Struct_1(37187i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d.x, -2147483647i), abs(u_input.d.zxy)), global1.a.c), ~(u_input.c.x & 1u) ^ global0[_wgslsmith_index_u32(abs(0u) | func_3(), 8u)], ~(-19535i)), Struct_4(global1.a, 32944u));
    var var_1 = -401f;
    let var_2 = Struct_4(global1.a, ~14566u);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-570f * _wgslsmith_f_op_f32(round(1608f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f)));
    return global1.a;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(722f, _wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_f_op_f32(abs(-205f)))), func_2(func_2(abs(max(global1.a.a, arg_1.a))).b), ~func_4(Struct_2(-1000f, arg_1, 4294967295u, -21430i), arg_0).x, countOneBits(0i));
    let var_1 = Struct_4(arg_0.a, ~(~30183u));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1302f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-557f - -2067f) + -588f)), _wgslsmith_f_op_f32(f32(-1f) * -1473f)), _wgslsmith_div_f32(global1.a.c.x, global1.a.c.x));
    let var_3 = ~(~(~select(~vec2<u32>(0u, 0u), firstLeadingBit(global3.zw), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_4 = Struct_3(~select(~_wgslsmith_dot_vec3_u32(global3.zyz, global3.zxw), 5212u, any(vec2<bool>(true, true))), vec4<bool>(abs(var_3.x) != _wgslsmith_dot_vec2_u32(vec2<u32>(9297u, 0u), vec2<u32>(var_3.x, arg_0.b) & u_input.c), true, !(any(vec4<bool>(true, true, false, true)) | select(false, false, false)), true));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(45762u, min(~var_0.c, abs(31147u)), ~global0[_wgslsmith_index_u32(50928u, 8u)] & _wgslsmith_mod_u32(global1.b, 4294967295u), ~(global0[_wgslsmith_index_u32(global3.x, 8u)] & 623u)), vec4<u32>(0u, ~countOneBits(25121u), _wgslsmith_mod_u32(max(arg_0.b, global1.b), ~var_4.a), arg_0.b)) & select(vec4<u32>(~(u_input.c.x | var_4.a), 0u, 45u, max(20383u, 78203u) ^ arg_0.b), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global3.x, u_input.c.x, 30938u), countOneBits(vec4<u32>(0u, arg_0.b, global1.b, 39038u))), var_4.b.x);
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: i32) -> vec4<u32> {
    global3 = func_5(Struct_4(func_2(~_wgslsmith_mod_i32(global1.a.b, arg_2)), 36602u), func_2(u_input.d.x));
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-559f * arg_0.a.c.x) + -272f))), 493f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a.c.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(675f)), _wgslsmith_f_op_f32(select(global1.a.c.x, global1.a.c.x, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.c.x + arg_0.a.c.x))))), arg_0.a.c.x);
    var var_1 = Struct_4(func_2(-2147483647i), func_4(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-850f)), _wgslsmith_f_op_f32(abs(431f)))), global1.a, ~(~arg_0.b), i32(-1i) * -u_input.d.x), arg_0).x);
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.a.c.x - arg_0.a.c.x), 1247f, _wgslsmith_f_op_f32(var_0.x * global1.a.c.x))))));
    var var_3 = arg_1;
    return vec4<u32>(func_5(arg_0, func_2(1i)).x, 4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(11710u & _wgslsmith_dot_vec3_u32(global3.zxw, vec3<u32>(global3.x, global1.b, var_1.b)), ~global3.x), ~func_4(Struct_2(var_2.x, arg_0.a, 32674u, arg_2), Struct_4(var_1.a, arg_0.b)).x), ~func_4(Struct_2(_wgslsmith_f_op_f32(select(arg_0.a.c.x, var_2.x, true)), var_1.a, ~global0[_wgslsmith_index_u32(22331u, 8u)], -10233i), Struct_4(global1.a, ~31377u)).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.c;
    global3 = ((~select(vec4<u32>(global1.b, 1u, 0u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 8u)], global3.x, 0u, 85056u), true) ^ abs(func_1(Struct_4(Struct_1(1935i, 2147483647i, global1.a.c), 4294967295u), true, 0i))) ^ ((vec4<u32>(673u, global1.b, global1.b, u_input.c.x) & vec4<u32>(global1.b, u_input.c.x, global1.b, global1.b)) & (countOneBits(vec4<u32>(global3.x, u_input.c.x, global1.b, global3.x)) << (vec4<u32>(u_input.c.x, global3.x, 1u, global3.x) % vec4<u32>(32u))))) << (_wgslsmith_sub_vec4_u32(~(vec4<u32>(58810u, u_input.c.x, global3.x, 1u) << (vec4<u32>(global3.x, 30301u, 49261u, 0u) % vec4<u32>(32u))), ~(~vec4<u32>(54580u, global3.x, global3.x, 4338u)) | vec4<u32>(_wgslsmith_sub_u32(u_input.c.x, global0[_wgslsmith_index_u32(global1.b, 8u)]), ~8730u, u_input.c.x, reverseBits(27140u))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_2 = func_2(-u_input.a.x);
    var_0 = global1.a.c;
    var var_3 = Struct_3(1u, vec4<bool>(any(vec2<bool>(true, true)), any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), _wgslsmith_f_op_f32(select(-1074f, -995f, true)) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.c.x * -1000f), _wgslsmith_f_op_f32(sign(global1.a.c.x)))), all(vec4<bool>(false, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, global0[_wgslsmith_index_u32(~func_3(), 8u)]);
}

