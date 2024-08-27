struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: u32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<i32, 30> = array<i32, 30>(2147483647i, i32(-2147483648), 0i, 1i, 1i, 1i, 11794i, 21587i, 2147483647i, 1i, 2147483647i, i32(-2147483648), 35515i, 47209i, 85649i, -3314i, 36185i, 2147483647i, 0i, 1i, i32(-2147483648), 2147483647i, -38650i, 43700i, -52255i, -36549i, -14499i, 2806i, 1i, -42785i);

var<private> global2: i32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2) -> i32 {
    global0 = array<i32, 31>();
    let var_0 = select(!select(!(!arg_2.a.c.zx), vec2<bool>(u_input.c <= 35729u, all(vec3<bool>(arg_2.a.c.x, true, true))), vec2<bool>(true, true)), vec2<bool>(true, global1[_wgslsmith_index_u32(max(1u, ~8421u), 30u)] >= 2147483647i), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4000u, 0u, 59247u)), vec3<u32>(arg_2.a.d.x, 1u, u_input.c)) < _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_2.a.d.x, ~u_input.c), 1u ^ (u_input.c | 4294967295u)));
    global0 = array<i32, 31>();
    let var_1 = _wgslsmith_mod_vec2_i32(min(max(_wgslsmith_mult_vec2_i32(arg_1, arg_1), u_input.a.yz << (vec2<u32>(25360u, arg_2.a.d.x) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 31u)], 0i), vec2<i32>(arg_0, 26203i))), countOneBits(-(~u_input.a.xz))) | vec2<i32>(_wgslsmith_sub_i32(-(u_input.b.x | arg_0), -global1[_wgslsmith_index_u32(u_input.c | 1u, 30u)]), _wgslsmith_mod_i32(1i, min(arg_1.x, arg_1.x) << (4294967295u % 32u)));
    let var_2 = Struct_3(~(-1i), !vec4<bool>(var_0.x | false, any(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !(!arg_2.a.c.x), any(arg_2.a.c.zy)), _wgslsmith_f_op_vec4_f32(arg_2.b * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(658f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -217f) * arg_2.a.a), _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(trunc(arg_2.b.x)))), var_0);
    return _wgslsmith_div_i32(min(~(-1i), i32(-1i) * -1i), max(u_input.a.x, ~max(_wgslsmith_add_i32(arg_2.a.b, 2147483647i), -global1[_wgslsmith_index_u32(66746u, 30u)])));
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<bool> {
    global2 = u_input.b.x >> (1u % 32u);
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(374f, -1963f), _wgslsmith_f_op_f32(abs(335f)), global0[_wgslsmith_index_u32(u_input.c, 31u)] > 1i)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(635f - -497f), _wgslsmith_f_op_f32(round(-553f)), true))), _wgslsmith_clamp_i32(-1i, 1i, arg_1), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), vec4<u32>(_wgslsmith_mult_u32(~u_input.c, u_input.c >> (u_input.c % 32u)), u_input.c, u_input.c, ~u_input.c >> (u_input.c % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2685f, _wgslsmith_div_f32(-367f, 989f), _wgslsmith_f_op_f32(f32(-1f) * -738f), _wgslsmith_f_op_f32(f32(-1f) * -822f)))));
    global2 = select(~func_3(-9024i, u_input.b.xw, var_0), _wgslsmith_dot_vec2_i32(~(~countOneBits(u_input.b.wy)), vec2<i32>(_wgslsmith_mod_i32(46848i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.a.b), vec2<i32>(arg_1, global0[_wgslsmith_index_u32(4294967295u, 31u)]))), 2147483647i)), true);
    global2 = _wgslsmith_add_i32(max(var_0.a.b, ~15617i), var_0.a.b);
    var var_1 = Struct_3(-abs(51167i), select(vec4<bool>(all(var_0.a.c), true, any(select(var_0.a.c, vec3<bool>(var_0.a.c.x, true, true), true)), any(vec3<bool>(true, false, false))), select(vec4<bool>(true, !var_0.a.c.x, !var_0.a.c.x, true), vec4<bool>(false, arg_0 >= -28118i, var_0.a.c.x, var_0.a.a < var_0.a.a), var_0.a.c.x & false), vec4<bool>(true, true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(257f - var_0.b.x)) - var_0.a.a), _wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a.a)), var_0.b.x) + var_0.b.x), var_0.a.a), select(!(!vec2<bool>(var_0.a.c.x, false)), vec2<bool>(false, true), var_0.a.c.yz));
    return vec4<bool>(true, select(true, false, var_1.d.x), var_1.d.x, any(var_1.b) || false);
}

fn func_1() -> i32 {
    global1 = array<i32, 30>();
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f * -712f), _wgslsmith_f_op_f32(214f - 302f), _wgslsmith_f_op_f32(-709f * 130f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-297f, 363f, 679f))))), Struct_3(-(abs(-12786i) >> (min(77338u, u_input.c) % 32u)), !func_2(0i, -global0[_wgslsmith_index_u32(u_input.c, 31u)]), vec4<f32>(-887f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f + -1150f) + _wgslsmith_f_op_f32(374f - 975f)), -384f, -677f), !vec2<bool>(true, all(vec4<bool>(true, true, true, true)))), 59906u, Struct_3(global0[_wgslsmith_index_u32(reverseBits(u_input.c), 31u)], vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-148f, -919f, 1051f, -462f) - vec4<f32>(672f, 469f, -1415f, 445f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-2371f, -167f, -1000f, 1534f), vec4<f32>(2014f, -980f, -2339f, -1303f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(368f, -1039f, 374f, -1455f) * vec4<f32>(163f, 1028f, -1467f, 646f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1089f, 1471f, 456f, 703f)), all(vec2<bool>(false, false))))), select(vec2<bool>(true, true), vec2<bool>(true, true), !any(vec2<bool>(true, false)))), Struct_3(0i, select(vec4<bool>(true, false, all(vec4<bool>(true, false, true, false)), false), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1163f, -148f, _wgslsmith_f_op_f32(-1188f * -302f), _wgslsmith_f_op_f32(f32(-1f) * -1092f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f)))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, true))));
    var var_1 = select(var_0.d.b.wwx, var_0.b.b.zyw, !var_0.e.b.xzy);
    var var_2 = all(select(select(!select(vec3<bool>(true, false, var_1.x), var_0.e.b.wzx, var_1.x), vec3<bool>(true, any(var_0.e.b.zyz), any(vec2<bool>(var_1.x, var_0.b.b.x))), !var_0.b.b.yxy), select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(!vec3<bool>(var_1.x, true, var_1.x), var_0.e.b.wxx, var_0.e.d.x), var_1.x), true));
    var var_3 = all(func_2(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(11992u, 31u)], u_input.a.x >> (reverseBits(72494u) % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, u_input.c, var_0.c, u_input.c) ^ vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c, var_0.c, 4294967295u, u_input.c), vec4<u32>(var_0.c, 44994u, var_0.c, 31772u))), 1u), 31u)]).zz);
    return ~(-8525i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(-1i, abs(-2147483647i)), -34110i);
    let var_0 = true;
    var var_1 = -25025i;
    var var_2 = var_0;
    var var_3 = true;
    let var_4 = true;
    global1 = array<i32, 30>();
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(func_1(), _wgslsmith_mod_i32(6960i, ~global0[_wgslsmith_index_u32(1u, 31u)]), 44543i, u_input.a.x), _wgslsmith_mult_vec4_i32(min(~u_input.b, u_input.b), -_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 31u)], -1i, 1i, u_input.a.x)))) ^ _wgslsmith_mod_i32(u_input.b.x, -1i);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-495f, vec2<i32>(33659i, global0[_wgslsmith_index_u32(~81527u, 31u)]), 4294967295u, u_input.c, ~_wgslsmith_mod_u32(u_input.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(62091u, 4294967295u))));
}

