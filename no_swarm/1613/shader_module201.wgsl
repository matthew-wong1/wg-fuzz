struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: u32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: f32 = -474f;

var<private> global2: array<f32, 16>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = array<bool, 7>();
    var var_0 = Struct_1(u_input.a);
    let var_1 = Struct_4(any(vec2<bool>(!(global0[_wgslsmith_index_u32(u_input.a, 7u)] || global0[_wgslsmith_index_u32(u_input.a, 7u)]), any(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 7u)], true, global0[_wgslsmith_index_u32(u_input.a, 7u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(24706u, 7u)], global0[_wgslsmith_index_u32(var_0.a, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]), global0[_wgslsmith_index_u32(u_input.a, 7u)])))), Struct_3(u_input.b.x, Struct_2(select(countOneBits(vec2<u32>(17962u, 4294967295u)), ~vec2<u32>(0u, var_0.a), false), firstTrailingBit(vec3<u32>(35372u, 1u, var_0.a)) ^ firstTrailingBit(vec3<u32>(20171u, u_input.a, 65298u)), u_input.c, _wgslsmith_f_op_f32(1876f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 16u)]))), true, ~select(abs(vec2<u32>(var_0.a, var_0.a)), min(vec2<u32>(10601u, 23844u), vec2<u32>(4294967295u, var_0.a)), global0[_wgslsmith_index_u32(28106u, 7u)] && global0[_wgslsmith_index_u32(var_0.a, 7u)]), !vec2<bool>(any(vec2<bool>(true, true)), !global0[_wgslsmith_index_u32(var_0.a, 7u)])), _wgslsmith_div_u32(~var_0.a, u_input.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(20456u, 16u)] - 1f), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(55639u, 16u)])))))));
    global0 = array<bool, 7>();
    let var_2 = vec4<bool>(!all(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(8918u, 7u)], false, false, false), var_1.b.c)), var_1.a, true, any(select(vec4<bool>(true, true, var_0.a > 22836u, any(vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 7u)]))), select(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 7u)], var_1.a, true), vec4<bool>(global0[_wgslsmith_index_u32(var_1.b.d.x, 7u)], false, true, var_1.a), vec4<bool>(var_1.a, var_1.b.c, true, true)), true)));
    return min(var_0.a, _wgslsmith_div_u32(var_1.c, firstLeadingBit(var_1.c))) & ~(~_wgslsmith_mult_u32(~u_input.a, var_0.a));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    var var_0 = ~_wgslsmith_add_u32(u_input.a, reverseBits(firstLeadingBit(u_input.a)));
    let var_1 = firstLeadingBit(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, u_input.a), vec2<u32>(43216u, 1u) & vec2<u32>(54557u, u_input.a)), ~vec2<u32>(firstLeadingBit(90720u), func_3())));
    let var_2 = var_1.x;
    let var_3 = u_input.d.yy;
    var var_4 = 4294967295u;
    return (_wgslsmith_dot_vec4_u32(select(~vec4<u32>(1u, u_input.a, var_2, var_2), countOneBits(vec4<u32>(4294967295u, var_2, 0u, var_2)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], false, global0[_wgslsmith_index_u32(u_input.a, 7u)], false)), countOneBits(vec4<u32>(1u, u_input.a, 45218u, 20360u) ^ vec4<u32>(u_input.a, 13696u, var_1.x, var_1.x))) ^ ~(~abs(u_input.a))) >> (6539u % 32u);
}

fn func_1() -> bool {
    global1 = _wgslsmith_f_op_f32(round(763f));
    global1 = 484f;
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2706f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 16u)]))))));
    global2 = array<f32, 16>();
    global2 = array<f32, 16>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 16u)])), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, u_input.a), 16u)]))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 16u)] - global2[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -986f), vec3<f32>(-266f, global2[_wgslsmith_index_u32(u_input.a, 16u)], -726f)), 16u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 7>();
    let var_0 = vec4<bool>(!func_1(), (_wgslsmith_mod_u32(0u, u_input.a) << (select(u_input.a, ~4294967295u, -2147483647i != u_input.d.x) % 32u)) != 1u, !((_wgslsmith_mult_i32(-1i, -58280i) <= _wgslsmith_div_i32(-1i, u_input.d.x)) == global0[_wgslsmith_index_u32(12967u, 7u)]), !(all(vec3<bool>(false, false, false)) & false));
    var var_1 = u_input.d.x;
    global2 = array<f32, 16>();
    var var_2 = Struct_4(var_0.x, Struct_3(-_wgslsmith_sub_i32(-41413i, u_input.c), Struct_2(vec2<u32>(~u_input.a, ~u_input.a), vec3<u32>(4294967295u, _wgslsmith_add_u32(123374u, u_input.a), u_input.a), countOneBits(_wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(u_input.d.x, u_input.b.x))), 908f), all(select(var_0.zy, select(vec2<bool>(true, var_0.x), var_0.xz, global0[_wgslsmith_index_u32(u_input.a, 7u)]), true | global0[_wgslsmith_index_u32(u_input.a, 7u)])), ~(~(~vec2<u32>(u_input.a, 8489u))), !var_0.wx), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1023f)), -1018f))));
    var var_3 = var_2.b;
    let var_4 = -(var_2.b.b.c >> ((var_3.b.b.x | _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_3.d.x, 0u), var_2.b.d), var_2.b.d)) % 32u));
    let var_5 = -1842f;
    let x = u_input.a;
    s_output = StorageBuffer(25676u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.d.x, global2[_wgslsmith_index_u32(7800u, 16u)]))) * var_2.d) - var_2.d));
}

