struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(vec2<u32>(0u, 31256u), Struct_4(9662i, -123f, vec4<bool>(true, true, false, false)), Struct_4(19109i, -1511f, vec4<bool>(false, false, true, true)), 21718i), Struct_5(vec2<u32>(34186u, 32694u), Struct_4(0i, 1129f, vec4<bool>(true, true, false, false)), Struct_4(1i, 633f, vec4<bool>(true, true, false, true)), -37632i), Struct_5(vec2<u32>(49639u, 4294967295u), Struct_4(2147483647i, 1000f, vec4<bool>(false, false, true, true)), Struct_4(15376i, -1000f, vec4<bool>(false, false, true, true)), 8075i), Struct_5(vec2<u32>(6679u, 16532u), Struct_4(1216i, -1000f, vec4<bool>(true, true, false, true)), Struct_4(0i, 1203f, vec4<bool>(false, false, true, false)), 2147483647i), Struct_5(vec2<u32>(66519u, 18950u), Struct_4(-2432i, 3080f, vec4<bool>(false, false, true, true)), Struct_4(i32(-2147483648), 255f, vec4<bool>(false, false, true, false)), i32(-2147483648)), Struct_5(vec2<u32>(0u, 0u), Struct_4(i32(-2147483648), -1069f, vec4<bool>(true, true, true, false)), Struct_4(-7092i, -1217f, vec4<bool>(true, true, false, true)), 2147483647i), Struct_5(vec2<u32>(23889u, 94787u), Struct_4(2147483647i, 1222f, vec4<bool>(false, true, false, true)), Struct_4(2147483647i, 190f, vec4<bool>(true, false, false, false)), -1i), Struct_5(vec2<u32>(0u, 0u), Struct_4(1i, -135f, vec4<bool>(true, false, false, false)), Struct_4(i32(-2147483648), 316f, vec4<bool>(false, false, false, false)), 2147483647i), Struct_5(vec2<u32>(32432u, 2854u), Struct_4(37337i, 681f, vec4<bool>(false, true, false, false)), Struct_4(1i, 183f, vec4<bool>(false, false, false, false)), i32(-2147483648)), Struct_5(vec2<u32>(0u, 71863u), Struct_4(2147483647i, 1174f, vec4<bool>(false, true, true, false)), Struct_4(-1i, -326f, vec4<bool>(false, false, true, false)), 48441i), Struct_5(vec2<u32>(4294967295u, 1u), Struct_4(14320i, -392f, vec4<bool>(false, false, true, false)), Struct_4(1i, -812f, vec4<bool>(true, true, true, true)), 2147483647i), Struct_5(vec2<u32>(20489u, 1u), Struct_4(30744i, 155f, vec4<bool>(true, false, true, true)), Struct_4(-37220i, 591f, vec4<bool>(false, true, true, false)), 759i), Struct_5(vec2<u32>(1u, 1u), Struct_4(55708i, -150f, vec4<bool>(true, false, true, true)), Struct_4(-1i, -926f, vec4<bool>(true, false, true, true)), -44998i), Struct_5(vec2<u32>(47279u, 4294967295u), Struct_4(i32(-2147483648), 301f, vec4<bool>(true, true, false, true)), Struct_4(i32(-2147483648), -478f, vec4<bool>(false, false, false, true)), 2147483647i), Struct_5(vec2<u32>(0u, 4294967295u), Struct_4(-1i, -850f, vec4<bool>(true, false, true, true)), Struct_4(41777i, -478f, vec4<bool>(false, true, true, true)), 0i), Struct_5(vec2<u32>(37516u, 1u), Struct_4(-17561i, 429f, vec4<bool>(false, true, true, false)), Struct_4(65239i, 375f, vec4<bool>(false, true, false, false)), 16791i), Struct_5(vec2<u32>(36109u, 3347u), Struct_4(i32(-2147483648), 787f, vec4<bool>(false, true, false, true)), Struct_4(8139i, -1514f, vec4<bool>(false, false, true, true)), 2147483647i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> i32 {
    global0 = array<Struct_5, 17>();
    global0 = array<Struct_5, 17>();
    let var_0 = vec3<f32>(1244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(290f, _wgslsmith_f_op_f32(914f + -795f)))), _wgslsmith_f_op_f32(f32(-1f) * -586f));
    var var_1 = ~33446u;
    let var_2 = !vec3<bool>(any(vec2<bool>(true, true)), false, true);
    return _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(~u_input.d), ~firstTrailingBit(_wgslsmith_mod_i32(-38349i, -1i))), firstLeadingBit(vec2<i32>(-_wgslsmith_mult_i32(u_input.d, -2147483647i), 36995i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = arg_0.a.d.b;
    var var_1 = vec3<i32>(_wgslsmith_mod_i32(~_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_mult_i32(u_input.d, 1i)), u_input.d), _wgslsmith_clamp_i32(u_input.b.x, u_input.d, -u_input.b.x), 0i);
    var_0 = arg_1.b;
    var_1 = u_input.b;
    let var_2 = Struct_3(Struct_2(vec2<u32>(firstTrailingBit(1u), ~_wgslsmith_sub_u32(arg_0.a.d.c, arg_1.d.c)), 606f, select(!arg_0.a.c, !arg_1.c, !select(arg_0.a.c, arg_1.c, arg_1.d.a)), arg_1.d), ~vec4<u32>(~(~arg_0.b.x), u_input.c.x, ~countOneBits(u_input.c.x), max(~15832u, 1u)), 4294967295u, arg_1.c);
    return !vec4<bool>(false, all(vec4<bool>(true, any(vec4<bool>(false, true, false, false)), !arg_1.c.x, any(vec3<bool>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x)))), true, arg_0.d.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> i32 {
    var var_0 = abs(~vec4<u32>(firstLeadingBit(4294967295u >> (u_input.a.x % 32u)), _wgslsmith_add_u32(1u, 1u), 23795u, u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = arg_0.x;
    var var_3 = Struct_5(~vec2<u32>(~(var_0.x << (0u % 32u)), ~countOneBits(u_input.c.x)), Struct_4(-func_1(), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_div_f32(-249f, var_1)), arg_0.x), select(!func_3(Struct_3(Struct_2(vec2<u32>(27434u, 19532u), 1076f, vec3<bool>(true, arg_1, arg_1), Struct_1(false, var_1, 0u)), vec4<u32>(0u, u_input.c.x, var_0.x, 41652u), var_0.x, vec3<bool>(arg_1, true, arg_1)), Struct_2(vec2<u32>(0u, 14857u), -179f, vec3<bool>(true, arg_1, true), Struct_1(false, 1000f, u_input.c.x))), !vec4<bool>(false, arg_1, arg_1, arg_1), false)), Struct_4(u_input.b.x, 444f, vec4<bool>(all(vec4<bool>(arg_1, false, true, true)), all(vec2<bool>(arg_1, true)), !all(vec4<bool>(arg_1, false, false, arg_1)), u_input.c.x < _wgslsmith_clamp_u32(32837u, 1u, var_0.x))), -2147483647i);
    let var_4 = global0[_wgslsmith_index_u32(15580u, 17u)];
    return abs(-(i32(-1i) * -13118i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -46099i;
    var_0 = firstLeadingBit(func_1());
    var var_1 = ~(vec4<i32>(countOneBits(func_2(vec4<f32>(2156f, -255f, 100f, -184f), true)), _wgslsmith_sub_i32(u_input.b.x, u_input.d), _wgslsmith_mod_i32(~u_input.b.x, -u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-27474i, -28396i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.d, u_input.d, u_input.b.x), vec4<i32>(u_input.b.x, -1i, u_input.d, 2147483647i)))) ^ -vec4<i32>(countOneBits(u_input.b.x), u_input.d, -u_input.d, _wgslsmith_sub_i32(u_input.d, 11135i)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1385f, -1457f)), _wgslsmith_f_op_f32(ceil(-689f)))), func_3(Struct_3(Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), -592f, vec3<bool>(true, false, false), Struct_1(false, -1175f, u_input.c.x)), vec4<u32>(u_input.a.x, u_input.a.x, 2196u, 1u), u_input.c.x, vec3<bool>(true, false, false)), Struct_2(u_input.c.zy, 184f, vec3<bool>(false, false, false), Struct_1(false, -1000f, 36091u))).x))), _wgslsmith_f_op_f32(-1310f * 232f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -226f))))), _wgslsmith_f_op_f32(f32(-1f) * -1076f));
    global0 = array<Struct_5, 17>();
    var_0 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, 1i, max(~u_input.a, u_input.c), ~firstTrailingBit(_wgslsmith_sub_vec4_u32(u_input.c, ~u_input.c)), vec2<f32>(-397f, _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + -405f) - var_2.x), true || all(vec2<bool>(false, false))))));
}

