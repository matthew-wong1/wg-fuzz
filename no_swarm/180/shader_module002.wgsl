struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

var<private> global1: Struct_1;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<bool, 24> = array<bool, 24>(true, false, true, false, false, false, false, false, false, true, true, false, false, false, false, true, false, false, true, true, false, false, false, true);

var<private> global4: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(24200u, 49908u, 41118u, 0u), vec4<u32>(14261u, 4294967295u, 28407u, 6699u), vec4<u32>(34545u, 0u, 1u, 1u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(116388u, 4294967295u, 63399u, 4618u), vec4<u32>(1u, 40869u, 32333u, 18749u), vec4<u32>(55197u, 0u, 48651u, 10277u), vec4<u32>(10411u, 0u, 89380u, 42937u), vec4<u32>(101480u, 1061u, 4907u, 1u), vec4<u32>(47121u, 4294967295u, 31569u, 15307u), vec4<u32>(0u, 25572u, 35917u, 43080u), vec4<u32>(0u, 0u, 13737u, 0u), vec4<u32>(1u, 31765u, 19653u, 24732u), vec4<u32>(0u, 49613u, 1u, 1u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(1732u, 62265u, 4294967295u, 0u), vec4<u32>(31328u, 27614u, 18995u, 73077u), vec4<u32>(63544u, 1u, 0u, 28851u), vec4<u32>(0u, 4294967295u, 42614u, 4294967295u), vec4<u32>(38182u, 13157u, 1u, 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> f32 {
    var var_0 = Struct_1(-countOneBits(_wgslsmith_dot_vec2_i32(global1.d.xx, vec2<i32>(arg_1.x, -1i))), vec2<bool>(true, !global2.x && true), global1.c, arg_2, arg_2);
    return _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(var_0.c - var_0.c));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.d.xz, vec2<i32>(-1i, arg_0.a), vec3<i32>(-7336i, global1.a, arg_0.a), vec3<bool>(true, false, global2.x)))) - global1.c)), arg_1.c, _wgslsmith_f_op_f32(select(840f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(ceil(arg_1.c))) - _wgslsmith_div_f32(arg_0.c, arg_0.c)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1658f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-625f, -1571f, arg_2)))));
    let var_1 = arg_1;
    global3 = array<bool, 24>();
    var var_2 = Struct_2(vec4<u32>(38482u, max(_wgslsmith_div_u32(51849u, u_input.e), ~82596u), abs(u_input.e), 0u) ^ ~global4[_wgslsmith_index_u32(~arg_3.x, 20u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-167f, arg_1.c, arg_1.c)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-244f, arg_0.c, 1933f) - var_0.zzw)) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], var_0.zxx, true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(47496u, 6u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.c, -671f) * global0[_wgslsmith_index_u32(u_input.a, 6u)])), !(!vec3<bool>(global2.x, arg_1.b.x, arg_2)))) + global0[_wgslsmith_index_u32(13078u, 6u)]), arg_1);
    global2 = select(!vec3<bool>(all(arg_1.b), arg_1.b.x, arg_2), select(vec3<bool>(false, all(vec3<bool>(false, true, arg_1.b.x)), false), !select(vec3<bool>(false, false, true), vec3<bool>(arg_1.b.x, false, arg_1.b.x), vec3<bool>(false, arg_0.b.x, global1.b.x)), !select(vec3<bool>(true, true, global2.x), !vec3<bool>(false, true, arg_1.b.x), true)), true | (!(global1.b.x & arg_2) || var_2.d.b.x));
    return select(vec2<bool>(any(!select(vec4<bool>(var_1.b.x, global1.b.x, false, arg_0.b.x), vec4<bool>(var_2.d.b.x, arg_0.b.x, global1.b.x, false), vec4<bool>(true, false, global2.x, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.x))) == _wgslsmith_f_op_f32(-arg_0.c)), vec2<bool>(true, !global1.b.x & (548f >= _wgslsmith_f_op_f32(max(var_1.c, var_0.x)))), select(select(!vec2<bool>(global3[_wgslsmith_index_u32(var_2.a.x, 24u)], global1.b.x), !(!vec2<bool>(false, var_2.d.b.x)), vec2<bool>(var_1.d.x > var_2.d.e.x, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(41392u, var_2.a.x), 24u)])), global2.zy, !any(!vec4<bool>(true, global3[_wgslsmith_index_u32(25204u, 24u)], global3[_wgslsmith_index_u32(var_2.a.x, 24u)], false))));
}

fn func_1() -> bool {
    var var_0 = vec4<bool>(true, true, !(!(!global1.b.x || all(vec3<bool>(false, true, global1.b.x)))), all(select(!func_2(Struct_1(-32679i, global2.xz, -150f, vec3<i32>(u_input.c, -2147483647i, global1.a), vec3<i32>(26813i, global1.d.x, global1.d.x)), Struct_1(14653i, vec2<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)]), 543f, global1.d, global1.e), global1.b.x, vec2<u32>(86100u, u_input.e)), global2.zy, ~global1.a <= _wgslsmith_mod_i32(-43695i, u_input.b.x))));
    global0 = array<vec3<f32>, 6>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1305f))) + 112f) * global1.c);
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, ~u_input.a), 20u)];
    var var_3 = Struct_2(~_wgslsmith_add_vec4_u32(global4[_wgslsmith_index_u32(~17605u >> (u_input.d.x % 32u), 20u)], global4[_wgslsmith_index_u32(~u_input.e >> (123581u % 32u), 20u)]), vec3<f32>(_wgslsmith_f_op_f32(var_1 - global1.c), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(exp2(var_1))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-598f - var_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(0u, 6u)] - global0[_wgslsmith_index_u32(1u, 6u)]) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 6u)]) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 522f))))), Struct_1(-19886i >> (1u % 32u), !vec2<bool>(global3[_wgslsmith_index_u32(~var_2.x, 24u)], var_0.x), 818f, ~vec3<i32>(~u_input.c, reverseBits(u_input.c), reverseBits(0i)), global1.d));
    return !global2.x;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<bool>) -> i32 {
    let var_0 = Struct_2(vec4<u32>(firstLeadingBit(u_input.d.x), _wgslsmith_mult_u32(u_input.d.x, 4294967295u), _wgslsmith_clamp_u32(1u, u_input.a, firstTrailingBit(u_input.e)), countOneBits(u_input.e)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(u_input.a, 6u)] * _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(u_input.a, 6u)])))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.c, 1000f)), _wgslsmith_f_op_f32(586f * global1.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(-107f - _wgslsmith_f_op_f32(global1.c - -687f))), global1.c), Struct_1(~abs(u_input.b.x), vec2<bool>(true, u_input.c >= u_input.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - global1.c)), global1.c)), ~global1.d, vec3<i32>(_wgslsmith_div_i32(u_input.b.x >> (67340u % 32u), 1i), 1i, u_input.b.x)));
    let var_1 = global1.c;
    let var_2 = vec2<bool>(firstTrailingBit(_wgslsmith_clamp_u32(u_input.a, u_input.a, var_0.a.x) & ~0u) < 78924u, 4294967295u > (_wgslsmith_mult_u32(1u, countOneBits(var_0.a.x)) ^ _wgslsmith_clamp_u32(u_input.d.x | u_input.d.x, 7941u << (var_0.a.x % 32u), 37046u)));
    var var_3 = _wgslsmith_f_op_f32(step(global1.c, -1982f));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.d.c, _wgslsmith_f_op_f32(exp2(global1.c)))), -1178f)));
    return i32(-1i) * -(~(~global1.a << (~u_input.e % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(func_4(select(global2.x, global2.x, func_1()), !select(!vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(6032u, 24u)]), select(vec4<bool>(global1.b.x, true, true, global3[_wgslsmith_index_u32(u_input.e, 24u)]), vec4<bool>(true, global1.b.x, true, false), global3[_wgslsmith_index_u32(u_input.d.x, 24u)]), true), select(!(!vec4<bool>(global1.b.x, false, global1.b.x, global1.b.x)), vec4<bool>(global1.b.x, global1.b.x, !global3[_wgslsmith_index_u32(u_input.d.x, 24u)], !global2.x), !vec4<bool>(global3[_wgslsmith_index_u32(61567u, 24u)], true, global1.b.x, global2.x))), global1.b, -672f, vec3<i32>(_wgslsmith_dot_vec3_i32(global1.e, global1.e), i32(-1i) * -23369i, -2147483647i), -global1.d << (countOneBits(~(~u_input.d)) % vec3<u32>(32u)));
    var var_0 = firstTrailingBit(u_input.a);
    var var_1 = _wgslsmith_sub_i32(min(-2147483647i, select(~(~(-1i)), u_input.b.x, global1.b.x && global3[_wgslsmith_index_u32(52598u, 24u)])), min(-global1.d.x, _wgslsmith_mult_i32(reverseBits(global1.d.x), ~(global1.d.x >> (u_input.a % 32u)))));
    var var_2 = u_input.e;
    var var_3 = vec2<f32>(global1.c, global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(-(global1.a ^ -2147483647i), global1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1656f), _wgslsmith_div_f32(1263f, var_3.x), false)))), vec4<u32>(u_input.e, u_input.d.x, u_input.d.x, u_input.e));
}

