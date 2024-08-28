struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_3,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_5;

var<private> global2: array<i32, 15>;

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

var<private> global4: Struct_3 = Struct_3(-952f, false, vec4<bool>(true, true, false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = arg_2;
    global3 = !vec3<bool>(109930u != ~(~global1.e.x), any(!select(vec3<bool>(global4.c.x, true, arg_0.a.b), vec3<bool>(false, true, false), vec3<bool>(global3.x, global3.x, global1.a.x))), false);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a * _wgslsmith_f_op_f32(round(1000f))))), all(arg_1.c.c), !select(vec4<bool>(arg_1.c.b & arg_1.a.b, any(global4.c), true, true), !select(arg_0.c.c, global4.c, global1.a.x), vec4<bool>(all(arg_0.c.c), !global3.x, arg_1.c.a <= arg_0.c.a, false)));
    let var_2 = arg_0.b;
    var var_3 = -320f;
    return !vec2<bool>(true, any(!vec2<bool>(var_1.b, true)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = max(_wgslsmith_sub_vec3_u32(global1.e.yxx, vec3<u32>(~global1.e.x, 0u, firstLeadingBit(0u))), ~global1.e.zyx);
    global1 = Struct_5(func_3(Struct_4(Struct_1(arg_1.x > 4294967295u, true), arg_1, Struct_3(_wgslsmith_f_op_f32(select(global4.a, global4.a, true)), false, select(vec4<bool>(global3.x, global1.a.x, global1.a.x, global4.b), vec4<bool>(global1.a.x, global1.a.x, false, global4.b), false)), -59698i, Struct_1(!global3.x, global1.a.x)), Struct_4(Struct_1(global4.a == 410f, global4.b), firstLeadingBit(arg_1) ^ arg_1, Struct_3(global4.a, false, vec4<bool>(global4.b, global4.b, false, true)), -2147483647i, Struct_1(global1.a.x, all(global4.c))), 2214f, vec3<u32>(~(~arg_1.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_1.x, 64904u), vec3<u32>(1u, var_0.x, arg_1.x)), global1.e.x)), ~(-global1.d), 9381u, ~vec4<i32>(~global2[_wgslsmith_index_u32(global1.e.x, 15u)], -1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(0u, 15u)], 13854i, 1440i, -40071i), vec4<i32>(global2[_wgslsmith_index_u32(global1.e.x, 15u)], -14184i, 0i, global2[_wgslsmith_index_u32(4294967295u, 15u)])), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(global1.b, global1.b), global2[_wgslsmith_index_u32(24417u, 15u)])), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1.x, var_0.x, var_0.x ^ var_0.x), _wgslsmith_clamp_vec4_u32(~arg_1, global1.e, global1.e)));
    var var_1 = Struct_5(select(func_3(Struct_4(Struct_1(global3.x, global3.x), vec4<u32>(13135u, 11017u, var_0.x, 1u) ^ global1.e, Struct_3(global4.a, true, vec4<bool>(global4.b, global4.b, true, true)), reverseBits(-2147483647i), Struct_1(true, global3.x)), Struct_4(Struct_1(true, global1.a.x), ~global1.e, Struct_3(global4.a, global4.c.x, global4.c), _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(arg_1.x, 15u)], -33834i), vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(1u, 15u)])), Struct_1(global1.a.x, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.a))), vec3<u32>(30517u << (arg_1.x % 32u), global1.e.x, _wgslsmith_add_u32(0u, 105025u))), vec2<bool>(true, global4.c.x), !global4.c.x), vec4<i32>(global2[_wgslsmith_index_u32(~(~arg_1.x), 15u)] >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global1.e, vec4<u32>(global1.c, 4294967295u, global1.e.x, 11774u)), var_0.x) % 32u), min(-u_input.a.x, _wgslsmith_add_i32(2147483647i, global1.d.x)) >> (_wgslsmith_add_u32(global1.c, 58539u) % 32u), _wgslsmith_add_i32(27646i, firstLeadingBit(abs(-1i))), global1.d.x), max(~countOneBits(global1.e.x), ~4294967295u), vec4<i32>(global1.d.x, _wgslsmith_add_i32(select(global2[_wgslsmith_index_u32(42192u, 15u)], ~global1.d.x, !global4.b), 0i), 2147483647i, -34625i), ~vec4<u32>(var_0.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, var_0.x), 4294967295u), 7203u, ~select(78977u, 1u, true)));
    global2 = array<i32, 15>();
    let var_2 = select(-var_1.b.wy, var_1.d.zy, global4.c.x);
    return Struct_2(arg_0.x, global4.c);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> u32 {
    global0 = 1i;
    var var_0 = Struct_4(Struct_1(global4.c.x, global4.c.x), vec4<u32>(select(global1.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(13957u, global1.c), select(global1.e.wz, vec2<u32>(1u, 65685u), global1.a)), global4.b), ~_wgslsmith_add_u32(~global1.c, 22475u), max(~_wgslsmith_dot_vec4_u32(global1.e, global1.e), ~_wgslsmith_add_u32(56584u, global1.e.x)), 31550u), Struct_3(global4.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a) * _wgslsmith_f_op_f32(floor(global4.a))) <= -251f, arg_0.b), select(u_input.a.x, reverseBits(6150i) | countOneBits(_wgslsmith_mult_i32(global1.d.x, global1.b.x)), all(func_2(vec2<i32>(global1.b.x, u_input.a.x) << (global1.e.wx % vec2<u32>(32u)), vec4<u32>(29496u, global1.c, 11175u, 29788u)).b.zzz)), Struct_1(false, any(vec4<bool>(false, true, global3.x, false | global1.a.x))));
    var_0 = Struct_4(var_0.a, ~var_0.b, var_0.c, ~var_0.d, var_0.e);
    let var_1 = var_0.d;
    global1 = Struct_5(var_0.c.c.xy, vec4<i32>(-u_input.a.x, 0i, u_input.b.x, firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -44914i, u_input.b.x), u_input.b)))), max(8668u, global1.e.x), vec4<i32>(u_input.b.x >> (_wgslsmith_sub_u32(abs(34218u), ~global1.e.x) % 32u), _wgslsmith_div_i32(~37605i, var_0.d) ^ 2147483647i, countOneBits(-46226i), ~firstLeadingBit(2147483647i) >> (abs(19996u & global1.e.x) % 32u)), global1.e);
    return global1.c;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4.a * global4.a)))))), true, select(global4.c, vec4<bool>(false, true, arg_0.x, true), global1.a.x));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, global1.c, global1.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.c, global1.c, 1u), vec3<u32>(76314u, global1.c, global1.e.x))), global1.c), firstLeadingBit(global1.c)), global1.e.x);
    var var_2 = _wgslsmith_mod_u32(max(4294967295u, firstLeadingBit(1u)), _wgslsmith_mod_u32(global1.e.x << (global1.e.x % 32u), min(0u, func_4(func_2(u_input.b.yz, global1.e), true == arg_0.x))));
    var_2 = abs(31793u) | abs(var_1.x & global1.e.x);
    var var_3 = Struct_3(-581f, arg_0.x, func_2(global1.d.zy, _wgslsmith_mult_vec4_u32(abs(global1.e) | global1.e, firstTrailingBit(vec4<u32>(1u, var_1.x, global1.c, var_1.x)))).b);
    return -412f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_u32(global1.e.xx, vec2<u32>(global1.e.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(global1.e, global1.e), global1.e) << ((~global1.e.x ^ global1.e.x) % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(global3.x, true))) - _wgslsmith_f_op_f32(ceil(global4.a))), _wgslsmith_f_op_f32(sign(global4.a)), -1317f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1364f), _wgslsmith_f_op_f32(global4.a - global4.a)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-287f, -832f, -667f, 990f)))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-global4.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, global4.a, !global3.x)), -730f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-997f + 1f)))));
    var var_2 = ~4294967295u;
    let var_3 = Struct_1(any(global4.c), all(vec2<bool>(!(global4.b || global1.a.x), true)));
    let var_4 = Struct_4(var_3, global1.e, Struct_3(110f, global4.c.x, select(vec4<bool>(true, !global1.a.x, true, any(global4.c)), !(!global4.c), true)), _wgslsmith_mult_i32(~(-global2[_wgslsmith_index_u32(var_0.x, 15u)]) & abs(-u_input.b.x), 2147483647i), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(1767f, global1.e.zww, 1u << (global1.c % 32u), _wgslsmith_sub_u32(~_wgslsmith_add_u32(~var_0.x, 29451u), 0u));
}

