struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(80075u, 78058u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 46785u, 514u), vec3<u32>(97368u, 4294967295u, 54601u), vec3<u32>(40129u, 28351u, 16892u), vec3<u32>(46486u, 4294967295u, 17669u), vec3<u32>(1u, 61200u, 0u), vec3<u32>(0u, 1u, 47835u), vec3<u32>(22196u, 45306u, 13940u), vec3<u32>(95636u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 0u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(16203u, 0u, 0u), vec3<u32>(32198u, 66243u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 41477u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(6427u, 1u, 4294967295u), vec3<u32>(1u, 312u, 1u), vec3<u32>(9466u, 24343u, 1u), vec3<u32>(1u, 47441u, 55881u), vec3<u32>(122672u, 4294967295u, 85873u), vec3<u32>(15898u, 0u, 23844u), vec3<u32>(6016u, 1u, 4294967295u), vec3<u32>(22343u, 27837u, 55759u), vec3<u32>(123798u, 0u, 87637u), vec3<u32>(4294967295u, 1u, 39099u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    var var_0 = false;
    var var_1 = Struct_1(!(!all(vec3<bool>(true, true, false))), max(_wgslsmith_mod_u32(u_input.c.x, ~u_input.c.x), _wgslsmith_sub_u32(select(~37269u, 1u, any(vec4<bool>(false, true, true, false))), ~0u)), u_input.c);
    let var_2 = _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + -873f) - _wgslsmith_f_op_f32(min(1467f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x))))));
    var var_3 = 1u;
    var_1 = Struct_1(all(!select(select(vec4<bool>(false, var_1.a, var_1.a, false), vec4<bool>(var_1.a, false, false, true), var_1.a), vec4<bool>(var_1.a, false, var_1.a, false), true)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 55866u, var_1.b, u_input.c.x), min(u_input.a, var_1.c)), ~reverseBits(vec4<u32>(var_1.b, u_input.c.x, 4294967295u, 57143u))), abs(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, var_1.c.x) >> (~22518u % 32u), u_input.a.x, min(select(80788u, 17431u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(30057u, var_1.c.x, 0u), u_input.a.ywy)), u_input.c.x)));
    return arg_0.zx;
}

fn func_2(arg_0: Struct_3, arg_1: vec3<f32>) -> f32 {
    let var_0 = u_input.a.yzx;
    global0 = array<vec3<u32>, 26>();
    var var_1 = arg_0;
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -255f), _wgslsmith_f_op_vec3_f32(arg_1 - arg_1))))), _wgslsmith_clamp_vec3_i32(~vec3<i32>(~2147483647i, u_input.b.x, max(8128i, 1i)), vec3<i32>(~(-u_input.b.x), u_input.b.x, -13i), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(2147483647i, u_input.b.x, 0i)), abs(vec3<i32>(u_input.b.x, u_input.b.x, 0i))), ~(-vec3<i32>(0i, -1i, u_input.b.x)))), -1i, min(4294967295u, var_1.a.x), vec2<bool>(false, arg_1.x <= _wgslsmith_f_op_f32(step(1f, arg_1.x))));
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_1.zz * vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x)))));
    return _wgslsmith_f_op_f32(-var_2.a.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: i32) -> Struct_1 {
    var var_0 = false;
    let var_1 = arg_2;
    var var_2 = arg_1;
    global0 = array<vec3<u32>, 26>();
    let var_3 = u_input.a.wx;
    return Struct_1(_wgslsmith_div_u32((0u << (u_input.c.x % 32u)) ^ _wgslsmith_clamp_u32(var_3.x, u_input.a.x, 1u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(u_input.c.x, 1u), vec2<bool>(true, false)), reverseBits(vec2<u32>(u_input.a.x, 59974u)))) <= ~u_input.a.x, _wgslsmith_sub_u32(var_3.x, ~0u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, (var_3.x >> (1u % 32u)) ^ var_3.x, ~min(u_input.a.x, 4294967295u), _wgslsmith_add_u32(var_3.x, var_3.x) ^ 1u), vec4<u32>(~min(44942u, u_input.a.x), 1u, ~firstLeadingBit(var_3.x), 60109u)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: i32) -> Struct_3 {
    global0 = array<vec3<u32>, 26>();
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(788f, arg_2, arg_2, arg_2)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_2, arg_2, arg_2)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(u_input.c.yyy), vec3<f32>(arg_2, -145f, -1002f))), _wgslsmith_f_op_f32(-1274f + arg_0), arg_2, 627f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_2, arg_2, -135f) * vec4<f32>(arg_0, arg_0, arg_2, arg_2)), _wgslsmith_div_vec4_f32(vec4<f32>(1568f, arg_0, -202f, arg_0), vec4<f32>(586f, arg_0, 230f, arg_2)), select(vec4<bool>(true, true, true, arg_1.x), arg_1, arg_1))))), Struct_5(u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(285f * -1481f) - arg_0), 645f)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, abs(firstTrailingBit(0i)), ~u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-2147483647i, u_input.b.x)), arg_3 & -10928i)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-20455i, arg_3, arg_3, u_input.b.x), vec4<i32>(9854i, arg_3, 16579i, 0i)), -vec4<i32>(1i, 2147483647i, u_input.b.x, -43376i)), ~(~vec4<i32>(-1i, 2147483647i, arg_3, u_input.b.x)))));
    var var_1 = Struct_5(u_input.b.x, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_0))) - vec2<f32>(-1366f, _wgslsmith_f_op_f32(arg_2 * -402f))))));
    let var_2 = firstTrailingBit(-_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b.x, arg_3, -1i), vec3<i32>(0i, -10483i, var_1.a), countOneBits(vec3<i32>(arg_3, u_input.b.x, u_input.b.x))), -vec3<i32>(-1i, u_input.b.x, arg_3)));
    let var_3 = Struct_2(~min(var_0.c.zww, vec3<u32>(var_0.c.x, u_input.a.x | 0u, var_0.b)), (_wgslsmith_clamp_u32(0u, 4294967295u, ~682u) >> (121297u % 32u)) & (~u_input.c.x ^ u_input.a.x));
    return Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.wy, max(~vec2<u32>(var_0.b, 79293u), ~var_0.c.wz)) ^ _wgslsmith_clamp_u32(1u, u_input.c.x, var_0.c.x), 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2265f * -354f), _wgslsmith_f_op_f32(780f * 734f)), _wgslsmith_f_op_f32(-1245f * 1f))))), select(!vec4<bool>(true, true, all(vec2<bool>(true, false)), true), vec4<bool>(!all(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true)), -1060f, -1i);
    var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -938f) + _wgslsmith_f_op_f32(f32(-1f) * -663f))) + -822f), vec4<bool>(any(vec2<bool>(true, true)), true, !(!any(vec2<bool>(true, false))), (u_input.b.x <= ~1i) | (true || (-1i >= u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1000f) - _wgslsmith_f_op_f32(1f * -788f)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(reverseBits(-2147483647i), countOneBits(u_input.b.x)), u_input.b.x) ^ u_input.b.x);
    let var_1 = var_0.a.x;
    global0 = array<vec3<u32>, 26>();
    var var_2 = func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1073f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-313f - -597f), _wgslsmith_f_op_f32(f32(-1f) * -935f)))))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_4(vec4<f32>(-284f, -1964f, 1000f, -516f), Struct_5(-2147483647i, vec2<f32>(-1592f, 1542f)), -18342i).a), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1755f, -104f, -128f) * vec3<f32>(1849f, -1000f, -2281f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-115f, 2264f, -1230f) + vec3<f32>(596f, -289f, 1398f))))))).x, u_input.b.x);
    var var_3 = vec2<i32>(u_input.b.x, max(u_input.b.x, max(_wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32(u_input.b.x, -2147483647i, u_input.b.x)), -(~2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, var_3.x, u_input.b.x);
}

