struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32;

var<private> global2: Struct_3;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: bool) -> vec3<f32> {
    let var_0 = Struct_5(vec3<bool>(arg_2, _wgslsmith_clamp_u32(~4294967295u, _wgslsmith_add_u32(u_input.c, 4294967295u), ~0u) == ~(~u_input.c), true));
    global0 = ~(1u | firstLeadingBit(firstTrailingBit(12161u))) << (0u % 32u);
    global0 = u_input.c;
    let var_1 = ~(~vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, -48527i, 49198i, u_input.d), vec4<i32>(u_input.a.x, u_input.a.x, arg_1, arg_1)), vec4<i32>(1i, -1i, 71796i, u_input.d)), 267i, 1i, 1313i));
    let var_2 = _wgslsmith_f_op_f32(-global2.d.b.x);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(168f, 471f) - _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.e.x) - _wgslsmith_f_op_f32(-var_2)), _wgslsmith_div_f32(var_2, var_2)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> vec4<i32> {
    global0 = 59919u;
    let var_0 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_0.c, vec3<u32>(14718u, arg_0.b, u_input.c)), abs(vec3<u32>(1u, 1u, 1u))), 0u), u_input.c >> (~u_input.c % 32u)), global2.c.x, _wgslsmith_sub_u32(arg_0.d.c.x, 47514u), ~29092u);
    var var_1 = Struct_4(arg_1.x, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-1063f - global2.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -553f)) - _wgslsmith_f_op_vec3_f32(exp2(arg_0.d.b.xzw))), _wgslsmith_f_op_vec3_f32(func_3(Struct_5(!vec3<bool>(global2.d.a.x, global2.d.d, global2.d.a.x)), arg_3.x, (global2.d.a.x == true) & true)))), _wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(66711u, u_input.c, 4294967295u))), vec3<u32>(firstTrailingBit(firstTrailingBit(76722u)), select(~36231u, _wgslsmith_mult_u32(6801u, arg_1.x), !global2.d.d), countOneBits(~arg_1.x))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-778f - global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.b.x + -1249f))), abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, 4294967295u), global2.b)), arg_1.wyw, global2.d));
    return _wgslsmith_add_vec4_i32(-arg_2, arg_2) << (var_0 % vec4<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_5) -> vec3<bool> {
    global2 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-284f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global2.d.b.x)), _wgslsmith_f_op_f32(ceil(global2.a)))), 479f)), ~40755u >> (u_input.c % 32u), ~firstTrailingBit(global2.c), Struct_1(vec3<bool>(any(vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_2.a.x)), arg_2.a.x, any(vec2<bool>(true, arg_2.a.x))), _wgslsmith_f_op_vec4_f32(sign(global2.d.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(global2.d.c.x), ~4294967295u, _wgslsmith_clamp_u32(1u, 4294967295u, 1u)), ~vec3<u32>(u_input.c, 8354u, 2658u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(30189u, u_input.c, 84914u), global2.d.c)), all(select(!global2.d.a, global2.d.a, select(global2.d.d, arg_2.a.x, global2.d.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, 1123f, 1255f) + vec3<f32>(-569f, -336f, -941f)) + vec3<f32>(_wgslsmith_f_op_f32(global2.a + -1000f), 294f, _wgslsmith_div_f32(global2.d.e.x, 271f)))));
    global2 = Struct_3(_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.e.x - global2.a) + _wgslsmith_f_op_f32(-global2.d.e.x))))), min(global2.c.x, u_input.c), vec3<u32>(6947u, select(4294967295u, ~4933u, true & global2.d.a.x), ~3264u) ^ ~(vec3<u32>(1u, global2.b, 2647u) ^ global2.d.c), Struct_1(select(!vec3<bool>(global2.d.d, global2.d.d, global2.d.d), arg_2.a, any(select(vec3<bool>(true, true, true), arg_2.a, true))), _wgslsmith_f_op_vec4_f32(global2.d.b * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.a, global2.d.b.x, global2.d.b.x, 1304f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1409f, 471f, global2.a, 622f) + global2.d.b))), select(~global2.c, select(vec3<u32>(global2.d.c.x, 4294967295u, global2.b), global2.d.c ^ vec3<u32>(31936u, u_input.c, u_input.c), any(vec4<bool>(false, true, global2.d.a.x, arg_2.a.x))), select(select(global2.d.a, vec3<bool>(false, true, false), true), vec3<bool>(arg_2.a.x, global2.d.d, false), any(vec2<bool>(global2.d.a.x, false)))), !(!(global2.d.a.x || arg_2.a.x)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f * -812f)), _wgslsmith_f_op_f32(global2.a - global2.d.b.x))));
    var var_0 = _wgslsmith_f_op_f32(max(1109f, _wgslsmith_f_op_f32(-global2.d.e.x)));
    let var_1 = -1i;
    var var_2 = _wgslsmith_f_op_vec3_f32(-global2.d.e);
    return vec3<bool>(arg_2.a.x, false, any(select(!arg_2.a, vec3<bool>(true, false, true), !(!arg_2.a.x))));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> bool {
    let var_0 = !(!arg_1.d.a.x);
    let var_1 = -(abs(vec3<i32>(abs(1i), u_input.b, 1i)) & vec3<i32>(abs(_wgslsmith_mod_i32(arg_1.a, 13365i)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -2147483647i), (1i & arg_1.a) & arg_1.a));
    let var_2 = select(-21134i, 1i, var_0);
    let var_3 = _wgslsmith_clamp_vec2_u32(max(~vec2<u32>(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.c.x, 31880u, arg_0.x, 18977u), vec4<u32>(4294967295u, global2.b, 64775u, 7514u))), arg_1.d.c.xz), ~vec2<u32>(~global2.d.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 0u, u_input.c), vec4<u32>(1u, 25749u, 9009u, arg_1.b))), _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(arg_0.x, arg_1.b)), ~(~(vec2<u32>(arg_1.e.c.x, 70421u) | vec2<u32>(global2.c.x, 84272u)))));
    var var_4 = Struct_5(func_4(var_2, firstTrailingBit(firstTrailingBit(vec4<i32>(-78784i, var_1.x, var_1.x, var_2))) ^ max(vec4<i32>(40279i, 1i, arg_1.a, 0i), func_2(Struct_3(-2274f, arg_1.d.c.x, arg_1.d.c, Struct_1(arg_1.d.a, vec4<f32>(arg_1.c, arg_1.d.b.x, arg_1.d.b.x, 146f), vec3<u32>(12134u, 0u, 113575u), true, arg_1.d.b.xwx)), vec4<u32>(arg_1.e.c.x, var_3.x, arg_1.e.c.x, 53212u), vec4<i32>(var_2, -10258i, 0i, 0i), var_1)), Struct_5(!arg_1.e.a)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(false, 1u == ~u_input.c, !func_1(_wgslsmith_mult_vec3_u32(global2.d.c, global2.d.c), Struct_2(u_input.b, global2.b, global2.d.e.x, Struct_1(vec3<bool>(global2.d.a.x, global2.d.d, true), vec4<f32>(1599f, global2.a, -384f, 2220f), global2.d.c, global2.d.d, global2.d.b.zxw), Struct_1(vec3<bool>(global2.d.d, global2.d.d, global2.d.a.x), global2.d.b, global2.d.c, global2.d.d, global2.d.b.wxz)))), global2.d.b, ~(vec3<u32>(_wgslsmith_sub_u32(global2.d.c.x, 1u), global2.b << (1u % 32u), ~u_input.c) & reverseBits(global2.c)), global2.d.d, _wgslsmith_f_op_vec3_f32(max(global2.d.b.yxx, _wgslsmith_f_op_vec3_f32(-global2.d.e))));
    var var_1 = var_0.c;
    var var_2 = Struct_2(abs(-2147483647i), u_input.c, -788f, Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(-global2.d.b), ~(~global2.d.c), !global2.d.a.x, vec3<f32>(-1108f, _wgslsmith_f_op_f32(f32(-1f) * -922f), -535f)), Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -1767f, 1252f, global2.d.b.x)), global2.d.b, true)), max(firstLeadingBit(vec3<u32>(global2.c.x, var_0.c.x, u_input.c)), ~firstTrailingBit(var_0.c)), true, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1803f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(682f, 129f))), _wgslsmith_f_op_f32(-global2.d.e.x))));
    var var_3 = Struct_2(var_2.a, 1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(-255f, 294f)))), 1775f)), Struct_1(vec3<bool>(!(true && var_0.a.x), !all(vec3<bool>(var_2.e.d, global2.d.d, global2.d.d)), global2.d.d), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1560f)) + _wgslsmith_f_op_f32(-var_2.d.b.x)), _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(floor(var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(606f * -1504f)), var_2.d.b.x), ~abs(vec3<u32>(12180u, u_input.c, 0u)), false, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1034f, 2246f)) - _wgslsmith_f_op_f32(sign(-250f))), -1095f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(833f, var_2.c))))), Struct_1(vec3<bool>(true, all(!vec4<bool>(global2.d.d, true, true, global2.d.a.x)), !select(var_0.a.x, true, false)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-411f, var_2.d.b.x, global2.d.e.x, 1028f)), vec4<f32>(1f, 1f, 1f, 1f), !vec4<bool>(false, var_2.e.d, true, var_2.e.a.x))), global2.c >> (vec3<u32>(_wgslsmith_clamp_u32(global2.d.c.x, 66802u, 54721u), var_2.e.c.x, var_0.c.x) % vec3<u32>(32u)), var_2.e.a.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.d.e + var_2.e.e)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-935f, -196f, -616f)))), true))));
    var var_4 = max(4294967295u, 4294967295u);
    global0 = _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(global2.d.c.x, 24845u, 1u, 75609u)), vec4<u32>(_wgslsmith_mod_u32(global2.c.x, var_1.x), var_0.c.x, abs(var_0.c.x), reverseBits(var_2.e.c.x)), !(!vec4<bool>(true, global2.d.d, global2.d.a.x, var_3.e.a.x))), countOneBits(vec4<u32>(var_0.c.x, 37480u, var_0.c.x, 35300u)) ^ ~abs(vec4<u32>(0u, 42327u, 4294967295u, u_input.c))), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(firstTrailingBit(firstTrailingBit(vec3<i32>(var_3.a, u_input.d, var_2.a)))), vec3<i32>(40259i, -5979i, var_2.a), select(vec3<bool>(true, u_input.d > 2147483647i, any(vec4<bool>(true, true, var_0.a.x, false))), !func_4(var_2.a, vec4<i32>(var_3.a, 2147483647i, 19778i, -11424i), Struct_5(vec3<bool>(var_0.d, true, false))), var_3.d.a)), vec2<u32>(var_0.c.x, ~(~0u)));
}

