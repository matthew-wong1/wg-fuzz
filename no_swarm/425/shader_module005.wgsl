struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = true;
    global0 = array<u32, 26>();
    var var_1 = Struct_1(vec2<u32>(30207u, _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(49957u, 46302u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(2722u, 69602u, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(6800u, 26u)]), arg_2), ~select(52573u, 37573u, false))), u_input.a ^ _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x) ^ u_input.a), select(_wgslsmith_mod_vec2_i32(u_input.a, u_input.a), u_input.a, select(vec2<bool>(true, false), vec2<bool>(true, false), false))), vec2<bool>(true, true), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1330f - -142f)), arg_0))), 5449u);
    let var_2 = -1210f;
    var var_3 = var_2;
    return arg_2;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec4<u32>) -> vec2<u32> {
    let var_0 = true;
    var var_1 = 4294967295u >> (_wgslsmith_mult_u32(func_3(_wgslsmith_f_op_f32(max(387f, -1000f)), _wgslsmith_mult_vec2_u32(arg_3.wz, arg_3.yw), arg_3).x, ~_wgslsmith_mult_u32(~arg_3.x, arg_3.x)) % 32u);
    let var_2 = var_0;
    var var_3 = Struct_1(vec2<u32>(max(abs(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 13429u, global0[_wgslsmith_index_u32(0u, 26u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_3.x, 26u)], arg_3.x, global0[_wgslsmith_index_u32(27038u, 26u)], 0u), min(arg_3, vec4<u32>(1u, 0u, 1u, 1u))), 26u)]), ~(~(~arg_3.x))), max(min(u_input.a, abs(max(arg_2.b, u_input.a))), abs(_wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_2.b.x, u_input.a.x), arg_2.b, vec2<i32>(-1i, -2147483647i)))), !select(vec2<bool>(true, any(vec3<bool>(true, var_2, true))), !select(vec2<bool>(var_2, false), vec2<bool>(true, var_0), var_0), select(vec2<bool>(var_2, false), select(vec2<bool>(var_2, var_2), vec2<bool>(var_0, false), var_0), select(vec2<bool>(var_2, var_2), vec2<bool>(false, true), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-523f * 242f)), 4294967295u);
    let var_4 = ~(~(vec4<u32>(_wgslsmith_sub_u32(var_3.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)]), ~31403u, 6197u, ~arg_3.x) << (vec4<u32>(~17110u, select(var_3.e, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24385u, 26u)], 26u)], var_3.c.x), ~global0[_wgslsmith_index_u32(arg_3.x, 26u)], 0u) % vec4<u32>(32u))));
    return ~var_4.zz;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(205f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1590f)), 171f, -998f)));
    let var_2 = !vec2<bool>(false, (global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45433u, 26u)], 26u)]), 26u)] == firstLeadingBit(global0[_wgslsmith_index_u32(0u, 26u)])) || (-u_input.a.x != ~1i));
    var var_3 = Struct_1(max(func_4(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -1000f), -1070f, Struct_2(-u_input.a.x, u_input.a), func_3(-1665f, vec2<u32>(42532u, 31073u), vec4<u32>(68416u, 0u, global0[_wgslsmith_index_u32(1u, 26u)], 21526u)) & vec4<u32>(0u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55092u, 26u)], 26u)], 26u)], 26u)], 26u)], 26u)], 2585u)), ~vec2<u32>(global0[_wgslsmith_index_u32(66825u, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26996u, 26u)], 26u)]) ^ abs(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], 30520u) | vec2<u32>(4294967295u, 43846u))), u_input.a, select(!var_2, vec2<bool>(var_2.x, var_2.x), var_2.x), 1150f, 1u);
    var var_4 = ~select(var_3.e, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(var_3.e, 26u)], 12095u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.a.x, 26u)], 26u)], 23879u), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)], global0[_wgslsmith_index_u32(1u, 26u)], 0u, global0[_wgslsmith_index_u32(4294967295u, 26u)])), all(vec4<bool>(true, true, false, var_2.x && var_2.x)));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d * -130f))));
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-903f, 2745f, 488f, -586f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(417f, -662f, -2148f, 590f) + vec4<f32>(-218f, -457f, 256f, -295f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-2923f + -824f), _wgslsmith_f_op_f32(1012f * -295f), -807f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-706f, 456f, -1093f, -1460f), vec4<f32>(-341f, -1000f, 1000f, -1327f))), vec4<f32>(2416f, 1075f, 160f, 904f), vec4<bool>(arg_1, arg_1, false, arg_1)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(871f - 1000f) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2142f)), _wgslsmith_f_op_f32(-605f - -672f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1307f)) * _wgslsmith_f_op_f32(func_2())))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -1352f, var_0.x, 1247f) + vec4<f32>(2437f, var_0.x, var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)))))));
    let var_1 = 714f;
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1081f, -109f, var_1, 199f), vec4<f32>(var_0.x, -1000f, var_0.x, 198f), vec4<bool>(arg_1, false, true, arg_1))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_1)) - _wgslsmith_div_vec4_f32(vec4<f32>(1933f, var_1, var_0.x, var_1), vec4<f32>(var_0.x, 179f, 1670f, var_1))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1, 255f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, var_1, 207f) - vec4<f32>(-452f, 1000f, 1476f, var_0.x)), false))))), vec4<bool>(all(!(!vec4<bool>(true, false, arg_1, true))), !arg_1, arg_1, !(!arg_1 && true))));
    var var_2 = Struct_2(52280i, vec2<i32>(_wgslsmith_dot_vec4_i32(min(~vec4<i32>(u_input.a.x, u_input.a.x, 15783i, u_input.a.x), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), max(vec4<i32>(-43700i, u_input.a.x, 0i, 5280i) ^ vec4<i32>(u_input.a.x, 10269i, 48107i, -2147483647i), -vec4<i32>(-319i, 0i, u_input.a.x, 32310i))), u_input.a.x));
    return Struct_2(1i, vec2<i32>(u_input.a.x, _wgslsmith_mult_i32(-31166i, _wgslsmith_add_i32(min(-3869i, 1i), abs(68740i)))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: u32) -> Struct_1 {
    global0 = array<u32, 26>();
    let var_0 = Struct_1(countOneBits(min(~(~vec2<u32>(global0[_wgslsmith_index_u32(arg_3, 26u)], arg_3)), ~(vec2<u32>(arg_3, 47573u) >> (vec2<u32>(global0[_wgslsmith_index_u32(33951u, 26u)], 1u) % vec2<u32>(32u))))), vec2<i32>(_wgslsmith_sub_i32(11872i, _wgslsmith_mult_i32(arg_1 >> (0u % 32u), arg_1)), 2147483647i), select(vec2<bool>(true, true), vec2<bool>(false, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false))), all(vec3<bool>(true, true, true)) != false), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1125f - 301f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1329f + -941f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1266f), _wgslsmith_f_op_f32(ceil(-481f)))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(~4443u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(43106u, arg_3), vec2<u32>(56939u, 4294967295u)), ~max(4294967295u, 1u), reverseBits(abs(arg_3))), reverseBits(vec4<u32>(18828u, arg_3, 45064u, global0[_wgslsmith_index_u32(arg_3, 26u)]) | _wgslsmith_sub_vec4_u32(vec4<u32>(68773u, 6661u, arg_3, arg_3), vec4<u32>(78869u, 78662u, 9692u, 26727u)))), 26u)]);
    global0 = array<u32, 26>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + var_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - var_0.d)) * var_0.d) * var_0.d));
    var var_2 = countOneBits(1u);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(10847u, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70898u, 26u)], 26u)]), 26u)], 26u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 26u)], 26u)]), true), i32(-1i) * -18610i, -(firstLeadingBit(u_input.a.x) & u_input.a.x), firstLeadingBit(53785u));
    let var_1 = global0[_wgslsmith_index_u32(~(~(var_0.e | _wgslsmith_mult_u32(var_0.e & var_0.e, var_0.a.x))), 26u)];
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    let var_2 = func_1((var_0.e & ~(~4294967295u)) & (max(~4294967295u, 4294967295u) << (select(global0[_wgslsmith_index_u32(firstLeadingBit(var_0.e), 26u)], ~var_0.a.x, all(vec3<bool>(false, var_0.c.x, var_0.c.x))) % 32u)), any(select(vec2<bool>(func_5(Struct_2(u_input.a.x, vec2<i32>(u_input.a.x, var_0.b.x)), var_0.b.x, 2147483647i, var_0.a.x).c.x, !var_0.c.x), !var_0.c, false))).b;
    global0 = array<u32, 26>();
    let var_3 = func_1(firstLeadingBit(min(var_0.a.x, min(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.e, 26u)], 74576u), 4294967295u))), var_0.c.x);
    global0 = array<u32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(global0[_wgslsmith_index_u32(var_0.e, 26u)], 4294967295u, global0[_wgslsmith_index_u32(15422u, 26u)], 40778u)) | vec4<u32>(0u, countOneBits(var_0.e), var_0.e, 29957u)));
}

