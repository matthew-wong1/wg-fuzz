struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(15613u, 1u, 74398u, 52986u), vec4<u32>(0u, 4294967295u, 1u, 47999u), vec4<u32>(61112u, 1u, 30007u, 4294967295u), vec4<u32>(1u, 71928u, 116216u, 0u), vec4<u32>(82158u, 4294967295u, 28567u, 1u), vec4<u32>(1u, 32694u, 17800u, 1u), vec4<u32>(1u, 1u, 10131u, 7180u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(54256u, 8606u, 67664u, 54853u), vec4<u32>(0u, 1u, 1u, 1223u), vec4<u32>(36924u, 15286u, 52037u, 0u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(272u, 4294967295u, 4294967295u, 1u), vec4<u32>(68492u, 4294967295u, 28297u, 4294967295u), vec4<u32>(1u, 1u, 0u, 77675u), vec4<u32>(79072u, 71131u, 59663u, 62120u), vec4<u32>(1u, 1u, 34384u, 0u), vec4<u32>(1u, 34013u, 0u, 0u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(10627u, 31628u, 2506u, 1489u), vec4<u32>(4294967295u, 6979u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 81957u, 10276u), vec4<u32>(35076u, 27080u, 27301u, 27085u), vec4<u32>(47357u, 4294967295u, 15517u, 33298u), vec4<u32>(3845u, 74309u, 1u, 42364u), vec4<u32>(0u, 1542u, 32201u, 0u), vec4<u32>(69276u, 1u, 106744u, 1u), vec4<u32>(13152u, 119707u, 4294967295u, 1u));

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    var var_0 = ~(~0u ^ _wgslsmith_mod_u32(select(1u, reverseBits(4294967295u), true), 4294967295u & global1.x));
    let var_1 = -1052f;
    let var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -726f, 953f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2013f, -400f, var_1, var_1)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(trunc(-1441f)), 1000f, -297f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, 1220f, var_1, var_1)))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -810f, -990f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_3.xww))))));
    return _wgslsmith_add_u32(select(global2[_wgslsmith_index_u32(0u, 21u)], reverseBits(~u_input.b), !(true && (true == arg_1))), ~min(~global1.x, abs(21584u)));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global2 = array<u32, 21>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1595f, 1027f, arg_0.x)))))));
    var var_1 = Struct_1(var_0, min(_wgslsmith_div_u32(~func_3(vec4<bool>(false, true, arg_0.x, arg_0.x), false), ~4294967295u), global1.x & ~(~35299u)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1708f), ~_wgslsmith_add_u32(global2[_wgslsmith_index_u32(~u_input.b, 21u)], global1.x));
    var var_3 = Struct_1(1030f, min(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(24620u, var_1.b), 21u)], _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global1.xw, vec2<u32>(8696u, u_input.b)), _wgslsmith_dot_vec2_u32(global1.wx, u_input.a)), 28u)], select(vec4<u32>(global2[_wgslsmith_index_u32(var_2.b, 21u)], global1.x, 50558u, 60280u), ~vec4<u32>(33525u, 1u, u_input.b, u_input.a.x), u_input.c.x < 20870i))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f) + 777f) + _wgslsmith_f_op_f32(min(-277f, _wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(~4294967295u, 21u)], global1.x));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    let var_0 = func_2(select(select(vec2<bool>(true, arg_1 > arg_1), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), all(vec3<bool>(true, true, false))), vec2<bool>(true, true), !vec2<bool>(true, 1000f < arg_1)));
    var var_1 = any(vec3<bool>(true, true, true));
    let var_2 = select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), !(!vec3<bool>(all(vec3<bool>(true, true, true)), 1005f == arg_1, true)), !(!(true & (var_0.b >= var_0.b))));
    let var_3 = func_2(select(select(vec2<bool>(true, any(vec2<bool>(var_2.x, false))), select(select(var_2.xx, vec2<bool>(true, var_2.x), true), !var_2.zy, var_2.zx), select(var_2.yz, select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), vec2<bool>(true, var_2.x)), false)), vec2<bool>(_wgslsmith_f_op_f32(-var_0.a) != _wgslsmith_f_op_f32(sign(var_0.a)), true), var_2.x));
    let var_4 = 62406i & _wgslsmith_add_i32(-1i, firstTrailingBit(-(~0i)));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 0u), ~global2[_wgslsmith_index_u32(abs(select(0u, 4294967295u, true)), 21u)]), _wgslsmith_add_vec2_u32(~vec2<u32>(32504u, 0u) & global1.yz, vec2<u32>(reverseBits(firstLeadingBit(1u)), global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 372f;
    var var_1 = 16880u;
    var var_2 = 1u;
    var var_3 = _wgslsmith_mult_vec3_u32(global1.xwx, vec3<u32>(~_wgslsmith_add_u32(4294967295u, ~global1.x), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.x, global2[_wgslsmith_index_u32(u_input.b, 21u)]), 21u)], 21u)], 21u)], u_input.a.x), func_1(u_input.c.x >> (26661u % 32u), _wgslsmith_f_op_f32(floor(-1037f)), ~vec2<u32>(global2[_wgslsmith_index_u32(20180u, 21u)], global1.x)) >> (u_input.a.x % 32u)));
    var_3 = firstLeadingBit(vec3<u32>(~(~global1.x), 4294967295u, 23035u));
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(15163u, ~(_wgslsmith_mult_u32(u_input.b, 0u) & _wgslsmith_dot_vec3_u32(global1.wxy, global1.zxw))), 28u)];
    var_3 = ~firstLeadingBit(global1.ywz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-398f, 1409f, 403f, 963f), vec4<f32>(1594f, -542f, 430f, -1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(142f, 2728f, 263f, -2161f) * vec4<f32>(-1017f, 448f, -785f, 860f)) + vec4<f32>(-341f, -287f, -1349f, 775f)))), global2[_wgslsmith_index_u32(u_input.a.x, 21u)], vec2<f32>(_wgslsmith_f_op_f32(step(func_2(select(vec2<bool>(false, true), vec2<bool>(false, false), false)).a, _wgslsmith_f_op_f32(f32(-1f) * -1797f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -110f)))), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, 0i, -67885i), -vec3<i32>(u_input.c.x, u_input.c.x, 0i)), vec3<i32>(56475i, -2147483647i, _wgslsmith_mult_i32(u_input.c.x, 12873i))), select(_wgslsmith_mult_i32(1i, u_input.c.x), ~u_input.c.x, _wgslsmith_f_op_f32(select(766f, -158f, false)) <= -323f)));
}

