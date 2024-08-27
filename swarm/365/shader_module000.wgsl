struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(1598f, -370f, 1374f, -1567f, -1530f, -444f, 1338f, -124f, -1517f, 1090f, -718f, 806f, 709f, 669f, 1000f, 277f, -1000f, -685f, -868f, 1772f, -511f, 1024f);

var<private> global1: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(0u, 1u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(62953u, 0u, 1u), vec3<u32>(0u, 73925u, 4294967295u), vec3<u32>(4294967295u, 55212u, 1u), vec3<u32>(1u, 1933u, 1u));

var<private> global2: u32;

var<private> global3: array<f32, 7> = array<f32, 7>(-247f, 386f, 1240f, 705f, 1727f, 343f, -127f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec3<bool> {
    global3 = array<f32, 7>();
    global0 = array<f32, 22>();
    global0 = array<f32, 22>();
    let var_0 = u_input.b.wy | vec2<i32>(~u_input.c.x, abs(-1i));
    var var_1 = vec3<bool>(true, select(true, all(vec2<bool>(true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), ((-1695f >= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 7u)] + global3[_wgslsmith_index_u32(0u, 7u)])) || true) && true);
    return select(select(select(vec3<bool>(var_1.x & var_1.x, true, var_1.x), select(select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, var_1.x)), !vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), true), select(vec3<bool>(var_1.x, var_1.x, any(var_1.yx)), vec3<bool>(true, true, true), var_1.x), !vec3<bool>(var_1.x, true, !var_1.x)), select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(true, !var_1.x, _wgslsmith_div_i32(u_input.c.x, -38881i) >= 1737i), select(vec3<bool>(true, !var_1.x, all(vec4<bool>(var_1.x, false, var_1.x, var_1.x))), select(vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(false, false, var_1.x)), var_1.x)), !vec3<bool>(select(true, false & var_1.x, var_1.x), true, any(var_1.yz)));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 22u)] + -967f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 22u)]))))));
    let var_1 = func_3();
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(42538u, 22u)], global0[_wgslsmith_index_u32(48635u, 22u)])) * vec2<f32>(889f, 604f))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) - _wgslsmith_f_op_f32(trunc(525f)))))) - _wgslsmith_f_op_f32(970f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1787f * var_0))));
    global2 = 1u;
    return Struct_3(Struct_1(select(!vec2<bool>(var_1.x, true), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(var_1.x, false)), true)), _wgslsmith_clamp_u32(max(~4294967295u, _wgslsmith_mod_u32(67606u, 117650u)), 4294967295u, 54574u), ~(~26986u << (firstTrailingBit(9326u) % 32u))), firstLeadingBit(global1[_wgslsmith_index_u32(29845u, 6u)] & global1[_wgslsmith_index_u32(26844u, 6u)]), Struct_2(var_2, var_1, vec2<bool>(select(var_0 >= 414f, all(vec4<bool>(false, false, true, var_1.x)), all(vec4<bool>(true, true, false, false))), false), Struct_1(select(!var_1.zx, select(vec2<bool>(var_1.x, var_1.x), var_1.zx, vec2<bool>(true, var_1.x)), true), 3657u, abs(~4294967295u))), vec3<bool>(any(!(!vec4<bool>(false, true, var_1.x, var_1.x))), any(!(!vec2<bool>(var_1.x, var_1.x))), var_1.x));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = vec4<bool>(!(!(!(!arg_2.a.a.x))), true, !(max(0i, ~2147483647i) <= _wgslsmith_div_i32(u_input.b.x, countOneBits(1i))), arg_2.c.c.x);
    var var_1 = _wgslsmith_dot_vec2_u32(reverseBits(~func_2().b.yy), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~arg_2.b.xz, countOneBits(arg_2.b.yy)), vec2<u32>(~arg_2.b.x, ~8384u)), min(arg_2.c.d.b, arg_1)));
    global3 = array<f32, 7>();
    var var_2 = _wgslsmith_add_u32(abs(arg_0), ~(~arg_0) & arg_0);
    global1 = array<vec3<u32>, 6>();
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> Struct_2 {
    global0 = array<f32, 22>();
    let var_0 = all(arg_1.a);
    global3 = array<f32, 7>();
    global0 = array<f32, 22>();
    let var_1 = 269f;
    return arg_2.c;
}

fn func_1(arg_0: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_4(func_5(firstLeadingBit(arg_0.x), Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(~arg_0.x, select(37205u, 1u, true), false), _wgslsmith_mod_u32(arg_0.x, 1u) | abs(4294967295u)), func_4(~arg_0.x, arg_0.x, func_2()), i32(-1i) * -(u_input.c.x | 1i)), u_input.b, ~firstTrailingBit(arg_0.x), max(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 7409u), vec2<u32>(arg_0.x, arg_0.x)), abs(~min(1u, 42931u))));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1016f), var_0.a.a.x));
    global3 = array<f32, 7>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-319f, global3[_wgslsmith_index_u32(var_0.d, 7u)]) * -1103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(64972u, 22u)])) + _wgslsmith_f_op_f32(var_2.x - var_2.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 219f)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<u32>(26674u, 1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(2012u, 4294967295u, 29092u, 44413u), ~vec4<u32>(14493u, 0u, 7808u, 5862u)) >> (38231u % 32u), _wgslsmith_add_u32(1u, select(9043u, 0u, false) | ~76404u)));
    let var_1 = var_0;
    var var_2 = var_0.a.d;
    let var_3 = u_input.b.xzw;
    var_2 = var_0.a.d;
    global2 = ~4294967295u;
    var var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_2().a.c, ~31756u, ~41978u, var_0.c), vec4<u32>(1u, firstLeadingBit(min(var_0.c, var_1.d)), (var_1.d << (39923u % 32u)) & ~232u, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.c, var_2.c), _wgslsmith_mod_u32(24756u, var_2.c)))) << ((_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_2.b, var_0.a.d.c, var_2.b, var_1.c)), vec4<u32>(~38115u, func_4(1u, 79173u, Struct_3(var_1.a.d, vec3<u32>(21615u, 4294967295u, 1u), Struct_2(var_1.a.a, var_0.a.b, var_0.a.d.a, Struct_1(vec2<bool>(var_2.a.x, false), var_2.c, 43750u)), vec3<bool>(var_0.a.c.x, false, false))).b.x, func_5(var_2.b, var_1.a.d, Struct_3(var_0.a.d, vec3<u32>(4294967295u, 13129u, 18024u), Struct_2(vec2<f32>(global3[_wgslsmith_index_u32(1u, 7u)], -535f), var_0.a.b, var_1.a.d.a, Struct_1(vec2<bool>(var_0.a.b.x, var_1.a.c.x), 45050u, var_1.d)), vec3<bool>(var_0.a.b.x, var_1.a.c.x, false)), -1i).d.c, ~4536u), ~(vec4<u32>(25565u, var_1.a.d.c, var_2.c, var_0.d) | vec4<u32>(var_1.c, var_0.c, 33124u, 24890u))) ^ (~firstLeadingBit(vec4<u32>(var_2.b, var_0.a.d.b, var_1.d, var_2.b)) & select(countOneBits(vec4<u32>(var_0.d, var_2.b, var_1.c, 60567u)), vec4<u32>(4294967295u, var_1.c, 4294967295u, var_1.a.d.b), var_1.a.d.a.x & var_0.a.d.a.x))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(_wgslsmith_div_u32((_wgslsmith_mult_u32(12377u, 33430u) << (var_4.x % 32u)) | _wgslsmith_mod_u32(var_1.c, var_1.a.d.c), _wgslsmith_mult_u32(~0u, var_0.d)), 7u)]);
}

