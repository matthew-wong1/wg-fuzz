struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

var<private> global1: array<vec3<f32>, 14>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(vec3<f32>(-334f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-265f, -661f))), -679f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 12946u), 14u)] + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 2808f, 721f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(u_input.b.x, 14u)]))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-489f, 1000f, 889f) - global1[_wgslsmith_index_u32(u_input.b.x, 14u)]))))) * vec3<f32>(_wgslsmith_f_op_f32(-808f + 217f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1081f + -812f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(912f))))), Struct_1((firstLeadingBit(u_input.b.x) >= ~4294967295u) && true, min(vec2<i32>(-8098i, 8889i) << (~u_input.d.zx % vec2<u32>(32u)), vec2<i32>(firstLeadingBit(-75178i), 1i)), !(~u_input.c > ~4083u), ~abs(~u_input.c)));
    let var_1 = Struct_4(~_wgslsmith_div_u32(abs(reverseBits(u_input.a.x)), _wgslsmith_dot_vec3_u32(u_input.a.zwy, ~vec3<u32>(18211u, 1u, u_input.a.x))), Struct_2(var_0.a, global1[_wgslsmith_index_u32(~4294967295u, 14u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(913f, _wgslsmith_f_op_f32(f32(-1f) * -209f), 340f), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.d.d, var_0.d.d), 14u)]), all(vec4<bool>(var_0.d.c, var_0.d.a, var_0.d.a, false)))), var_0.d), _wgslsmith_dot_vec4_u32(max(vec4<u32>(95186u, 4294967295u, u_input.e, 25014u), ~u_input.d) ^ u_input.b, _wgslsmith_mod_vec4_u32(u_input.a, firstTrailingBit(u_input.a) << (vec4<u32>(var_0.d.d, var_0.d.d, 76558u, 22878u) % vec4<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, -1000f, !var_1.b.d.a))) * _wgslsmith_f_op_f32(-var_0.a.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f) - 556f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-590f)))) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.c.x))))), 1000f));
    var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(var_1.a, 14u)])), global1[_wgslsmith_index_u32(var_1.c, 14u)]), global1[_wgslsmith_index_u32(~(~9436u), 14u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_3.yyy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, var_0.a.x, -299f), vec3<f32>(var_3.x, -635f, var_3.x)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 768f, var_3.x))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, 85922u & var_1.b.d.d), 14u)], select(global0[_wgslsmith_index_u32(~4294967295u, 16u)], select(vec3<bool>(true, var_0.d.c, true), global0[_wgslsmith_index_u32(110864u, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), false)))), var_3.zwz, Struct_1(var_0.d.a, -max(vec2<i32>(var_1.b.d.b.x, var_1.b.d.b.x), ~vec2<i32>(var_0.d.b.x, var_0.d.b.x)), -var_1.b.d.b.x < var_1.b.d.b.x, var_1.b.d.d));
    return max(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(62837u, 10106u & var_0.d.d, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.d, 1u), u_input.d.wz))), vec4<u32>(select(13734u, abs(0u), var_1.b.d.c), 0u, 1u, 1u)), firstTrailingBit(select(~u_input.d.x, countOneBits(abs(var_0.d.d)), 992f < _wgslsmith_f_op_f32(-var_1.b.b.x))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = vec3<f32>(608f, _wgslsmith_div_f32(1041f, arg_3.x), _wgslsmith_f_op_f32(arg_3.x * arg_3.x));
    var var_1 = 1u | u_input.a.x;
    var_1 = u_input.a.x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(func_3(), 14u)])), vec3<f32>(-361f, _wgslsmith_f_op_f32(trunc(1f)), arg_3.x), _wgslsmith_f_op_vec3_f32(-arg_3), Struct_1(false, _wgslsmith_mod_vec2_i32(~vec2<i32>(35399i, 56306i), min(arg_2.yz ^ arg_2.xx, vec2<i32>(-2597i, arg_2.x))), true, abs(20334u)));
    var var_3 = Struct_3(!var_2.d.c, Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(724f))), var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(4354u, var_2.d.d), 0u), 14u)], _wgslsmith_f_op_vec3_f32(-var_0), var_2.d.c)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_2.b))))), var_2.d), arg_3, select(~vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 24969u, 0u, u_input.d.x)), 24108u, ~var_2.d.d), ~u_input.d.wwx, !arg_1), i32(-1i) * -18240i);
    return 8741u;
}

fn func_1(arg_0: vec2<f32>) -> vec4<u32> {
    global0 = array<vec3<bool>, 16>();
    let var_0 = any(vec2<bool>(all(global0[_wgslsmith_index_u32(func_2(true, any(vec2<bool>(false, false)), -vec3<i32>(-1i, 0i, -2147483647i), global1[_wgslsmith_index_u32(~4294967295u, 14u)]), 16u)]), true));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 1136f)))), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(703u, u_input.e, 1u), vec3<u32>(0u, u_input.b.x, 0u))), 14u)], !global0[_wgslsmith_index_u32(u_input.d.x, 16u)])), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 14u)])))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.x, 1065f)), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~23770u, 14u)]))), global1[_wgslsmith_index_u32(0u, 14u)]));
    global0 = array<vec3<bool>, 16>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, arg_0.x, 1012f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-418f - var_1.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(671f, _wgslsmith_f_op_f32(1000f * -270f), _wgslsmith_f_op_f32(max(var_1.x, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1484f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -122f), vec4<f32>(301f, arg_0.x, arg_0.x, -248f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(114f, -1765f, var_1.x, 321f) * vec4<f32>(-753f, var_1.x, 2634f, -893f)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(574f)), _wgslsmith_f_op_f32(sign(arg_0.x)), var_1.x, arg_0.x))));
    return vec4<u32>(27111u, abs(max(~(4294967295u >> (1u % 32u)), u_input.b.x)), ~(u_input.a.x >> (~(~u_input.b.x) % 32u)), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 16>();
    global1 = array<vec3<f32>, 14>();
    global0 = array<vec3<bool>, 16>();
    var var_0 = 4294967295u;
    global0 = array<vec3<bool>, 16>();
    let var_1 = true;
    global0 = array<vec3<bool>, 16>();
    let var_2 = firstTrailingBit(vec4<u32>(~u_input.d.x, u_input.e, u_input.c, _wgslsmith_mod_u32(4294967295u, ~u_input.b.x)) & min(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(992f, 782f) * vec2<f32>(712f, -2039f))), ~(u_input.a & u_input.a)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(12875u, 14u)] + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(512f - -524f), _wgslsmith_f_op_f32(step(-599f, -531f)), 113f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(func_2(all(vec4<bool>(var_1, var_1, false, true)), var_1, vec3<i32>(24106i, -52796i, -1771i), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 14u)])), 14u)]) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(254f * -617f), -1789f, 1115f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1295f, -256f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1490f, -1000f) - _wgslsmith_f_op_f32(min(-275f, 1840f))))), Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -486f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-190f))), select(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -3498i), vec2<i32>(2147483647i, 5586i)), select(vec2<i32>(1i, 1i), vec2<i32>(-10022i, 91152i), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), vec2<bool>(var_1, false))), !select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, false))), false, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3.d.d, func_3() >> ((~18244u ^ var_2.x) % 32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, var_3.b.x, var_3.c.x, 1935f), vec4<f32>(var_3.c.x, 651f, var_3.b.x, var_3.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.c.x, 120f, var_3.b.x) - vec4<f32>(2193f, -605f, -454f, 1523f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a.x, var_3.a.x, _wgslsmith_f_op_f32(-var_3.b.x), var_3.a.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(706f, var_3.b.x, -235f, var_3.b.x) - vec4<f32>(287f, -364f, var_3.c.x, var_3.c.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.b.x, 224f, 273f, -1458f), vec4<f32>(803f, 1000f, var_3.a.x, 453f)))))));
}

