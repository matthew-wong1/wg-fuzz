struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(-701f, 1116f, 2329f, 2156f), vec4<f32>(1478f, 1795f, -316f, 608f), vec4<f32>(605f, 2151f, 459f, 1206f), vec4<f32>(1000f, -1000f, 809f, 225f), vec4<f32>(830f, -469f, 1285f, 1000f), vec4<f32>(149f, -1000f, 381f, 292f), vec4<f32>(-182f, 322f, -903f, 776f), vec4<f32>(-1497f, 186f, 769f, -1440f), vec4<f32>(-308f, -214f, -1052f, -1496f), vec4<f32>(-1000f, 1242f, 2102f, 326f), vec4<f32>(1339f, 946f, 202f, 1029f), vec4<f32>(-925f, 1219f, 1028f, -1108f), vec4<f32>(295f, -1000f, 1000f, 837f));

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(i32(-2147483648), 1i, -15426i), vec3<i32>(0i, 1i, 1i), vec3<i32>(29619i, -1i, 1i), vec3<i32>(-10224i, -29993i, 6850i), vec3<i32>(0i, -41603i, -9635i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(-17784i, 0i, 3707i), vec3<i32>(i32(-2147483648), -7964i, 32061i), vec3<i32>(i32(-2147483648), 0i, -30209i), vec3<i32>(26376i, -21007i, i32(-2147483648)), vec3<i32>(-18908i, 17642i, 1i), vec3<i32>(-265i, 0i, 1i), vec3<i32>(-1i, 0i, -40386i), vec3<i32>(1i, -3864i, 1i), vec3<i32>(-1i, -23952i, 0i), vec3<i32>(-41715i, 0i, -50767i), vec3<i32>(0i, 24381i, -20540i), vec3<i32>(23691i, 5849i, 26608i), vec3<i32>(62445i, 1i, 1i), vec3<i32>(-50661i, 1i, 2147483647i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(-21304i, 20678i, 2147483647i), vec3<i32>(0i, i32(-2147483648), -38141i), vec3<i32>(34924i, -60054i, 33942i), vec3<i32>(25700i, 37806i, -41849i), vec3<i32>(0i, 2147483647i, -7151i), vec3<i32>(i32(-2147483648), -8752i, -1i), vec3<i32>(3337i, 5196i, -16148i));

var<private> global2: array<i32, 14> = array<i32, 14>(i32(-2147483648), 2147483647i, -1i, 40216i, 77878i, -35235i, 14292i, 1i, 2147483647i, 7256i, 1i, i32(-2147483648), -27303i, -1i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    global0 = array<vec4<f32>, 13>();
    var var_0 = (vec3<i32>(max(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]) ^ global2[_wgslsmith_index_u32(u_input.a.x, 14u)], _wgslsmith_mult_i32(-7464i, -36401i), countOneBits(_wgslsmith_add_i32(0i, global2[_wgslsmith_index_u32(11457u, 14u)]))) | -(vec3<i32>(167i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)]) | vec3<i32>(-9658i, global2[_wgslsmith_index_u32(27938u, 14u)], 32701i))) ^ _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(4294967295u, 28u)], vec3<i32>(-27169i, -2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)])), global1[_wgslsmith_index_u32(20028u, 28u)]) ^ (vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)]) << (~u_input.a.zwx % vec3<u32>(32u))), global1[_wgslsmith_index_u32(~4294967295u, 28u)]);
    var var_1 = ~(~1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-1328f + -622f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2029f, 1276f) * 1000f)), _wgslsmith_div_f32(1405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2690f) - -1000f)), -543f)));
    global0 = array<vec4<f32>, 13>();
    return _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(~u_input.a.x, 15006u, 1u, ~8363u));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    global0 = array<vec4<f32>, 13>();
    var var_1 = Struct_1(~func_3(true, true) ^ ~10630u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1411f, -325f, -696f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1013f, 1000f, 2512f), vec3<f32>(1000f, 262f, 654f))))))));
    var var_3 = (-_wgslsmith_add_i32(1i, 1i & global2[_wgslsmith_index_u32(var_0, 14u)]) >> (min((u_input.a.x & 4294967295u) | var_1.a, abs(var_0)) % 32u)) | ~(-2147483647i);
    return Struct_1(41165u);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = Struct_1(u_input.a.x);
    let var_1 = vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(firstLeadingBit(-1i), ~_wgslsmith_mod_i32(arg_1.c.x, global2[_wgslsmith_index_u32(var_0.a, 14u)]))), 0i, arg_1.c.x);
    global1 = array<vec3<i32>, 28>();
    var var_2 = arg_2.xx;
    global2 = array<i32, 14>();
    return Struct_4(!select(true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), 1u);
}

fn func_1() -> vec3<i32> {
    global1 = array<vec3<i32>, 28>();
    let var_0 = vec2<f32>(1f, -338f);
    global2 = array<i32, 14>();
    let var_1 = func_4(0i, Struct_3(Struct_1(u_input.a.x), Struct_2(func_2()), _wgslsmith_add_vec2_i32(abs(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], 2147483647i)), max(-vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], 0i), vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 14u)]) << (u_input.a.yy % vec2<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(834f, -1710f, var_0.x) * vec3<f32>(var_0.x, -369f, var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 388f, 699f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))))));
    global2 = array<i32, 14>();
    return vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(u_input.a.zz, vec2<u32>(u_input.a.x, var_1.b), var_1.a), select(vec2<u32>(4294967295u, var_1.b), vec2<u32>(0u, var_1.b), false)) & 0u, u_input.a.x), 14u)], global2[_wgslsmith_index_u32(~(26909u >> (_wgslsmith_add_u32(select(var_1.b, u_input.a.x, true), ~1u) % 32u)), 14u)], select(firstLeadingBit(-2147483647i), -2147483647i >> (func_2().a % 32u), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(!all(vec3<bool>(true, false, true)), true, any(vec4<bool>(true, true, false, false)), true));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, ~u_input.a.x), 28u)];
    var_1 = func_1() & vec3<i32>(firstLeadingBit(global2[_wgslsmith_index_u32(99081u, 14u)]), ~(~1i << (u_input.a.x % 32u)), 12848i);
    global2 = array<i32, 14>();
    var var_2 = global2[_wgslsmith_index_u32(u_input.a.x << (_wgslsmith_mod_u32(48779u, 1u) % 32u), 14u)];
    let var_3 = Struct_5(!vec4<bool>(!var_0.x, !var_0.x, func_1().x < ~(-10224i), true), Struct_2(Struct_1(_wgslsmith_mult_u32(5604u ^ u_input.a.x, 4294967295u))), func_4(-1i, Struct_3(Struct_1(u_input.a.x), Struct_2(func_2()), ~vec2<i32>(var_1.x, global2[_wgslsmith_index_u32(1u, 14u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, -674f, 926f)), vec3<f32>(-912f, -1157f, -1642f), vec3<bool>(false, false, var_0.x))))), -14786i);
    var_1 = _wgslsmith_div_vec3_i32(~min(countOneBits(global1[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 2147483647i, var_1.x)), -vec3<i32>(var_1.x, -49121i, 11954i))), global1[_wgslsmith_index_u32(1u, 28u)]);
    global2 = array<i32, 14>();
    let var_4 = Struct_2(Struct_1(~30782u));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().x);
}

