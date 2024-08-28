struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<bool, 13> = array<bool, 13>(false, true, false, true, true, true, false, false, false, false, false, false, false);

var<private> global2: array<f32, 1> = array<f32, 1>(216f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_5, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(49684u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(1543u, 1u)])) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(arg_2.b.x, 1u)], -111f, global2[_wgslsmith_index_u32(4294967295u, 1u)], 1007f)))), vec4<f32>(_wgslsmith_f_op_f32(-549f + global2[_wgslsmith_index_u32(4294967295u, 1u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 1u)]), global2[_wgslsmith_index_u32(~arg_2.b.x, 1u)], arg_1), !any(vec4<bool>(global1[_wgslsmith_index_u32(74380u, 13u)], arg_3, arg_0.x, true)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(1u, 1u)], -503f, arg_1, -2371f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-630f, global2[_wgslsmith_index_u32(arg_2.b.x, 1u)], -296f, -824f) - vec4<f32>(global2[_wgslsmith_index_u32(1u, 1u)], -1000f, global2[_wgslsmith_index_u32(37368u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)]))), vec4<f32>(-659f, 1987f, _wgslsmith_f_op_f32(155f * var_0.x), _wgslsmith_f_op_f32(min(arg_1, -535f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1730f, arg_1, -630f, -1752f) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], -766f, global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(42191u, 1u)]))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(255f, -1370f, global2[_wgslsmith_index_u32(31265u, 1u)], arg_1), vec4<f32>(arg_1, arg_1, var_0.x, -133f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(714f, arg_1, var_0.x, 1000f) - vec4<f32>(-1120f, 1339f, global2[_wgslsmith_index_u32(4294967295u, 1u)], var_0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 1u)], -1499f, arg_1, global2[_wgslsmith_index_u32(67322u, 1u)])))))))));
    global1 = array<bool, 13>();
    var var_1 = true;
    let var_2 = Struct_4(1i, ~vec4<i32>(19743i, u_input.d.x | firstLeadingBit(52196i), ~firstLeadingBit(u_input.d.x), -arg_2.a.x), arg_2.b.x);
    return countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x & 1u, u_input.b, ~4294967295u, abs(6575u)), ~vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2.b.xwy, u_input.a.zww), ~arg_2.b.x, ~var_2.c, _wgslsmith_mod_u32(4294967295u, u_input.b))));
}

fn func_4(arg_0: vec2<bool>) -> vec3<bool> {
    global0 = array<vec2<bool>, 7>();
    global0 = array<vec2<bool>, 7>();
    var var_0 = vec3<bool>(false, 1i != u_input.d.x, false);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(14708u, reverseBits(firstTrailingBit(u_input.b))), _wgslsmith_mult_u32(u_input.a.x, max(12917u, countOneBits(4294967295u)) ^ u_input.b)), 1u)];
    global1 = array<bool, 13>();
    return select(!(!select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], var_0.x), vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(76131u, 13u)], false), var_0.x), select(vec3<bool>(arg_0.x, true, global1[_wgslsmith_index_u32(u_input.b, 13u)]), vec3<bool>(false, arg_0.x, arg_0.x), arg_0.x), any(vec2<bool>(false, true)))), select(!vec3<bool>(!arg_0.x, true, true), vec3<bool>(all(vec2<bool>(false, var_0.x)), false, true), !(!select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(global1[_wgslsmith_index_u32(4194u, 13u)], true, true), true))), vec3<bool>(!var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f - global2[_wgslsmith_index_u32(5420u, 1u)]) - _wgslsmith_f_op_f32(trunc(-130f))) < -480f, !(!(!arg_0.x))));
}

fn func_2(arg_0: Struct_4) -> Struct_5 {
    let var_0 = func_4(!select(!global0[_wgslsmith_index_u32(max(u_input.a.x, 0u), 7u)], global0[_wgslsmith_index_u32(func_3(vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 13u)], false), global2[_wgslsmith_index_u32(u_input.a.x, 1u)], Struct_5(arg_0.b, vec4<u32>(arg_0.c, u_input.a.x, u_input.b, 1u)), false) ^ 1u, 7u)], global0[_wgslsmith_index_u32(~4294967295u, 7u)]));
    global1 = array<bool, 13>();
    var var_1 = false;
    let var_2 = _wgslsmith_add_i32(-2147483647i, arg_0.b.x);
    let var_3 = u_input.d.x >> (arg_0.c % 32u);
    return Struct_5(vec4<i32>(-11048i, 1i, ~_wgslsmith_dot_vec4_i32(countOneBits(arg_0.b), _wgslsmith_mult_vec4_i32(arg_0.b, vec4<i32>(12932i, -1162i, u_input.d.x, -42326i))), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2, var_2, -1i, 1i), arg_0.b)), max(arg_0.b, vec4<i32>(-84214i, var_3, var_3, arg_0.a)) | _wgslsmith_mult_vec4_i32(arg_0.b, vec4<i32>(var_2, var_2, 0i, -10801i)))), _wgslsmith_add_vec4_u32(u_input.a, firstTrailingBit(~u_input.a)) | vec4<u32>(4294967295u, firstLeadingBit(arg_0.c), reverseBits(_wgslsmith_mult_u32(u_input.b, u_input.a.x)), 10248u));
}

fn func_5(arg_0: Struct_5, arg_1: bool, arg_2: Struct_5, arg_3: i32) -> vec2<bool> {
    global0 = array<vec2<bool>, 7>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(select(arg_2.b.x, arg_2.b.x, true), 1u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(113793u, 1u)])) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(arg_2.b.x, 1u)], 128f) * vec2<f32>(941f, global2[_wgslsmith_index_u32(u_input.a.x, 1u)])))), vec2<f32>(_wgslsmith_f_op_f32(679f - _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0.b.x, 1u)] + 786f)), _wgslsmith_f_op_f32(f32(-1f) * -255f)), !(!select(vec2<bool>(false, false), global0[_wgslsmith_index_u32(2595u, 7u)], vec2<bool>(true, true))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_0.x), vec2<f32>(global2[_wgslsmith_index_u32(82944u, 1u)], 743f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2[_wgslsmith_index_u32(arg_2.b.x, 1u)], -577f))))))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 1065f));
    let var_1 = vec4<bool>(true, func_4(global0[_wgslsmith_index_u32(10967u, 7u)]).x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_2.b.x, _wgslsmith_div_u32(~(~arg_0.b.x), reverseBits(~4294967295u))), 13u)], all(!vec3<bool>(false, arg_1, true)));
    let var_2 = Struct_4(-1i, vec4<i32>(i32(-1i) * -arg_0.a.x, min(firstTrailingBit(_wgslsmith_div_i32(12268i, arg_2.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 28647i, arg_0.a.x) ^ arg_0.a.zxx, arg_2.a.wxx)), 2147483647i, -25975i), ~(~(~_wgslsmith_mod_u32(u_input.b, arg_0.b.x))));
    return vec2<bool>(!(!var_1.x), all(global0[_wgslsmith_index_u32(~firstTrailingBit(10498u), 7u)]));
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(func_2(Struct_4(_wgslsmith_mod_i32(~u_input.e, u_input.c.x), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.d.x, -5201i, u_input.d.x, 0i)), vec4<i32>(u_input.c.x, u_input.d.x, 92926i, u_input.d.x)), u_input.a.x)), global1[_wgslsmith_index_u32(u_input.a.x, 13u)], func_2(Struct_4(firstLeadingBit(-30484i), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 42329i, 43998i, u_input.c.x), vec4<i32>(u_input.d.x, u_input.c.x, 14682i, 38745i))), u_input.b)), ~min(u_input.c.x, 37804i));
    return Struct_2(!select(func_4(!vec2<bool>(var_0.x, true)), vec3<bool>(u_input.c.x >= u_input.e, !var_0.x, var_0.x), vec3<bool>(u_input.e > 14170i, false & global1[_wgslsmith_index_u32(25084u, 13u)], global1[_wgslsmith_index_u32(select(4294967295u, 29163u, var_0.x), 13u)])), 1u, vec2<f32>(global2[_wgslsmith_index_u32(0u, 1u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1652f))) - global2[_wgslsmith_index_u32(countOneBits(0u | u_input.a.x), 1u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 1>();
    global1 = array<bool, 13>();
    var var_0 = func_1();
    global2 = array<f32, 1>();
    let var_1 = -abs(vec3<i32>(u_input.d.x, i32(-1i) * -2147483647i, -9396i));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

