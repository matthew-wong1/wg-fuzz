struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: Struct_2;

var<private> global2: array<bool, 11>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, -17563i, -2147483647i, global1.a), vec4<i32>(u_input.a.x, global1.a, 61186i, u_input.a.x), true), -vec4<i32>(1464i, -58888i, 5273i, global1.a)), ~global1.a), Struct_1(~abs(~global1.e.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * 868f)), _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_2.x), vec2<u32>(34899u, 4294967295u)), global1.d), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(global1.e.a.x, u_input.b), arg_0.xx))), global1.b);
    let var_1 = ~_wgslsmith_add_u32(_wgslsmith_mod_u32(firstTrailingBit(arg_2.x), 1u), u_input.b) & _wgslsmith_clamp_u32(~arg_2.x, 1u, ~var_0.d.x);
    let var_2 = Struct_2(1i, var_0.e, -1000f, var_0.b.a.yw, Struct_1(~var_0.e.a));
    global2 = array<bool, 11>();
    var var_3 = any(!select(arg_1, arg_1, any(select(vec4<bool>(true, true, arg_1.x, global2[_wgslsmith_index_u32(50314u, 11u)]), vec4<bool>(true, arg_1.x, global2[_wgslsmith_index_u32(0u, 11u)], false), vec4<bool>(arg_1.x, false, global2[_wgslsmith_index_u32(arg_2.x, 11u)], global2[_wgslsmith_index_u32(arg_0.x, 11u)])))));
    return global2[_wgslsmith_index_u32((var_1 ^ ~0u) >> (arg_2.x % 32u), 11u)];
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = 1i;
    global0 = array<f32, 30>();
    var var_1 = Struct_2(u_input.a.x, Struct_1(global1.b.a), 132f, ~arg_0.a.zw, global1.b);
    let var_2 = select(select(!vec4<bool>(!global2[_wgslsmith_index_u32(arg_0.a.x, 11u)], global2[_wgslsmith_index_u32(1u, 11u)], false, arg_2 || true), !select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, global2[_wgslsmith_index_u32(52206u, 11u)], true), !global2[_wgslsmith_index_u32(var_1.d.x, 11u)]), select(vec4<bool>(arg_2, true, true, func_3(var_1.e.a.wyw, vec2<bool>(arg_2, false), var_1.b.a.wwz)), select(select(vec4<bool>(false, arg_2, global2[_wgslsmith_index_u32(4294967295u, 11u)], true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 11u)], arg_2, false, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(arg_0.a.x, 11u)], global2[_wgslsmith_index_u32(global1.d.x, 11u)], false)), select(vec4<bool>(arg_2, arg_2, global2[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(16143u, 11u)]), vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(true, true, global2[_wgslsmith_index_u32(0u, 11u)], false)), !arg_2), arg_2)), select(select(vec4<bool>(false, !global2[_wgslsmith_index_u32(0u, 11u)], !global2[_wgslsmith_index_u32(4294967295u, 11u)], true), select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 11u)], true, global2[_wgslsmith_index_u32(u_input.b, 11u)]), vec4<bool>(false, arg_2, false, global2[_wgslsmith_index_u32(global1.d.x, 11u)]), arg_2), vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 11u)], arg_2), vec4<bool>(global2[_wgslsmith_index_u32(49915u, 11u)], true, true, false)), true), !select(select(vec4<bool>(false, false, arg_2, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], false, false, false), global2[_wgslsmith_index_u32(62593u, 11u)]), vec4<bool>(global2[_wgslsmith_index_u32(30776u, 11u)], true, global2[_wgslsmith_index_u32(arg_0.a.x, 11u)], arg_2), all(vec2<bool>(false, false))), !(!select(vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(false, true, arg_2, arg_2), vec4<bool>(arg_2, arg_2, global2[_wgslsmith_index_u32(92694u, 11u)], arg_2)))), select(select(select(!vec4<bool>(arg_2, global2[_wgslsmith_index_u32(global1.d.x, 11u)], global2[_wgslsmith_index_u32(arg_0.a.x, 11u)], arg_2), vec4<bool>(false, global2[_wgslsmith_index_u32(18902u, 11u)], true, arg_2), global2[_wgslsmith_index_u32(~u_input.b, 11u)]), select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 11u)], true, false, arg_2), vec4<bool>(false, false, false, arg_2), vec4<bool>(false, arg_2, arg_2, false)), !arg_2), !select(vec4<bool>(true, true, arg_2, false), vec4<bool>(false, arg_2, global2[_wgslsmith_index_u32(arg_0.a.x, 11u)], true), !vec4<bool>(arg_2, false, false, false)), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(57840u, 11u)], global2[_wgslsmith_index_u32(u_input.b, 11u)], arg_2)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - var_1.c) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.a.x, 30u)])))))));
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = countOneBits(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(abs(-69544i), u_input.a.x), 2147483647i), select(u_input.a.x, firstLeadingBit(~2147483647i), true), _wgslsmith_mod_i32(abs(select(-2147483647i, u_input.a.x, true)), 2147483647i)));
    global2 = array<bool, 11>();
    var var_1 = -2147483647i >> ((~(10168u & ~arg_0.a.x) << (min(~0u >> (u_input.b % 32u), u_input.b & 0u) % 32u)) % 32u);
    var var_2 = abs(vec2<i32>(~(-155i), ~_wgslsmith_add_i32(~global1.a, _wgslsmith_div_i32(2147483647i, -1i))));
    global2 = array<bool, 11>();
    return abs(select(abs(global1.b.a.zy), vec2<u32>(u_input.b, _wgslsmith_mult_u32(global1.e.a.x & 7682u, ~arg_0.a.x)), false));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(51192u, u_input.b, 1u), vec3<u32>(u_input.b, arg_2.x, u_input.b)), 30u)]), 1368f))), -698f, all(select(vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(global1.b.a.x, 11u)], global2[_wgslsmith_index_u32(global1.b.a.x, 11u)])), true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.x, 4294967295u), 11u)], global2[_wgslsmith_index_u32(max(51210u, 4294967295u), 11u)]), !select(vec4<bool>(true, false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(global1.d.x, 11u)], global2[_wgslsmith_index_u32(u_input.b, 11u)], false, true), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_2.x, 11u)], false, true)), false))));
    global0 = array<f32, 30>();
    var var_1 = func_4(func_2(Struct_1(~vec4<u32>(3102u, arg_2.x, global1.e.a.x, 96077u) & _wgslsmith_sub_vec4_u32(global1.e.a, vec4<u32>(97023u, arg_2.x, arg_2.x, 0u))), ((i32(-1i) * -1i) ^ arg_1) & firstLeadingBit(~0i), all(vec2<bool>(!global2[_wgslsmith_index_u32(23796u, 11u)], true))));
    var var_2 = func_2(func_2(Struct_1(~global1.b.a), -2147483647i, !global2[_wgslsmith_index_u32(~(~u_input.b), 11u)]), _wgslsmith_dot_vec3_i32(-abs(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 1i, u_input.a.x))), abs(u_input.a)), global2[_wgslsmith_index_u32(11146u, 11u)]);
    let var_3 = Struct_2(_wgslsmith_add_i32(~firstTrailingBit(u_input.a.x), firstLeadingBit(u_input.a.x | ~(-1i))), global1.e, _wgslsmith_f_op_f32(1695f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(global1.c + global1.c))))), abs(vec2<u32>(~var_1.x, min(u_input.b, 0u) ^ ~var_1.x)), Struct_1(firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(0u, 10332u), _wgslsmith_dot_vec4_u32(global1.b.a, var_2.a), ~4294967295u, var_1.x & 34953u))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 30>();
    global2 = array<bool, 11>();
    var var_0 = _wgslsmith_mult_i32(1i, ~(~(-12917i)));
    var var_1 = func_1(min(vec2<i32>(~u_input.a.x, global1.a), u_input.a.yz), min(_wgslsmith_add_i32(_wgslsmith_mult_i32(countOneBits(-38733i), firstLeadingBit(u_input.a.x)), u_input.a.x), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(-23911i, global1.a), 21982i)), _wgslsmith_clamp_vec2_u32(~min(min(vec2<u32>(global1.b.a.x, 1u), vec2<u32>(global1.b.a.x, global1.b.a.x)), firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), vec2<u32>(_wgslsmith_mult_u32(3795u, select(u_input.b, global1.d.x, global2[_wgslsmith_index_u32(u_input.b, 11u)])), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 60473u), global1.e.a.yzx)), vec2<u32>(~u_input.b ^ global1.b.a.x, ~(~77081u))));
    var var_2 = func_2(global1.b, -8590i, true);
    var var_3 = vec3<u32>(4294967295u, 0u, firstLeadingBit(1u << (~_wgslsmith_mod_u32(global1.b.a.x, u_input.b) % 32u)));
    var var_4 = ~global1.a;
    var var_5 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(748f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.x, 30u)])))) * var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 30u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(countOneBits(min(~1u, var_3.x)), 21713u, ~_wgslsmith_div_u32(u_input.b, 4294967295u), 2234u), vec4<i32>(-7788i, -var_1.a, 0i, 0i), -459f, countOneBits(0i));
}

