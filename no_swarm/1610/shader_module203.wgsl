struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
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

var<private> global0: u32 = 60214u;

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(-4165i, 15117i, 8771i), vec3<i32>(17644i, 2147483647i, 2147483647i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, -1i, 28586i), vec3<i32>(-6250i, 1i, -40656i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(56093i, 19410i, -18866i), vec3<i32>(-3497i, -5282i, -47404i), vec3<i32>(0i, -1i, 40955i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = u_input.c;
    var_0 = firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u << (0u % 32u), _wgslsmith_dot_vec3_u32(arg_0.c, vec3<u32>(u_input.c.x, 5466u, arg_0.c.x)), 4294967295u, ~u_input.e.x), u_input.c));
    var var_1 = 8190i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2085f * 209f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1588f)) + -117f) * arg_0.a.a.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(abs(37258u) & arg_1.a.c, 9u)], -global1[_wgslsmith_index_u32(arg_1.a.c, 9u)]);
    global0 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0.c, arg_0.c), arg_1.c.c.xz, (_wgslsmith_f_op_f32(-arg_0.a.x) >= 1082f) & !(!arg_0.b.x)), abs(arg_1.b.c.zy));
    var var_1 = vec2<f32>(arg_1.c.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a.a.x) - _wgslsmith_f_op_f32(func_2(arg_1.c))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(func_2(arg_1.d)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(452f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1077f, -220f)));
    return all(!arg_1.c.a.b.wz);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<u32>) -> vec4<i32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1210f, 207f, 1000f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1760f, 1000f, -1639f))), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, true, true), arg_0))))), !(!vec4<bool>(arg_0, arg_0, true, false)), u_input.c.x), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(804f, -646f, 183f), vec3<f32>(1213f, 803f, -990f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-309f, 669f, 890f)))), select(vec4<bool>(arg_0, arg_0, arg_0, true), select(vec4<bool>(true, false, arg_0, true), vec4<bool>(false, true, arg_0, true), true), all(vec2<bool>(false, true))), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.e.x, 4294967295u, arg_2.x), vec3<u32>(arg_2.x, u_input.c.x, u_input.c.x), arg_0), vec3<u32>(1u, 1u, arg_2.x))), 738u, _wgslsmith_mult_vec3_u32(arg_2, firstLeadingBit(arg_2) | ~vec3<u32>(arg_2.x, 50335u, arg_2.x)), countOneBits(-1i)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-682f, -1156f, 1909f)), vec4<bool>(true, arg_0, true, arg_0), firstLeadingBit(u_input.c.x)), abs(~u_input.d), abs(vec3<u32>(_wgslsmith_sub_u32(arg_2.x, 0u), max(u_input.e.x, 0u), firstTrailingBit(4294967295u))), _wgslsmith_clamp_i32(u_input.b, -u_input.a, ~1i) >> (1u % 32u)), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2545f), _wgslsmith_f_op_f32(f32(-1f) * -1041f), _wgslsmith_div_f32(1244f, -156f)), select(!vec4<bool>(true, arg_0, false, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), !vec4<bool>(arg_0, true, arg_0, arg_0)), arg_2.x | 39618u), firstLeadingBit(~_wgslsmith_mod_u32(75975u, 85340u)), max(vec3<u32>(arg_2.x & 1u, 0u | u_input.e.x, ~arg_2.x), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.e.xwz, vec3<u32>(arg_2.x, 1u, 1u)), arg_2 << (vec3<u32>(750u, 32263u, u_input.d) % vec3<u32>(32u)))), u_input.a), any(vec2<bool>(false | arg_0, select(arg_0, arg_0, arg_0))) | (arg_0 && any(vec4<bool>(arg_0, true, false, true))));
    global1 = array<vec3<i32>, 9>();
    global0 = 1u;
    global1 = array<vec3<i32>, 9>();
    global1 = array<vec3<i32>, 9>();
    return min(min(select(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.d.d, 9810i, 2147483647i, 30932i), vec4<i32>(0i, -45355i, arg_1, var_0.d.d)) << ((u_input.e & vec4<u32>(u_input.d, var_0.a.c, 216u, 8869u)) % vec4<u32>(32u)), ~select(vec4<i32>(arg_1, arg_1, 1776i, u_input.b), vec4<i32>(2147483647i, -2147483647i, arg_1, -1i), arg_0), !any(var_0.b.a.b.xzx)), abs(~vec4<i32>(var_0.b.d, arg_1, 0i, arg_1))), ~vec4<i32>(u_input.b, arg_1, _wgslsmith_clamp_i32(-arg_1, _wgslsmith_sub_i32(arg_1, var_0.b.d), _wgslsmith_clamp_i32(0i, var_0.b.d, -1i)), _wgslsmith_sub_i32(~arg_1, ~(-60395i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(~5994u);
    var var_0 = -vec4<i32>(u_input.a, u_input.b, -12213i, -48138i) | countOneBits(-func_3(func_1(Struct_1(vec3<f32>(2460f, -1352f, 1987f), vec4<bool>(true, true, false, false), 4294967295u), Struct_3(Struct_1(vec3<f32>(765f, 977f, 117f), vec4<bool>(true, true, false, true), u_input.d), Struct_2(Struct_1(vec3<f32>(297f, 1626f, 740f), vec4<bool>(true, false, false, false), 0u), 33224u, vec3<u32>(u_input.c.x, 23366u, 0u), u_input.b), Struct_2(Struct_1(vec3<f32>(235f, -1661f, 846f), vec4<bool>(false, true, false, false), 4294967295u), 69063u, vec3<u32>(1u, u_input.c.x, u_input.e.x), u_input.b), Struct_2(Struct_1(vec3<f32>(-333f, 128f, -807f), vec4<bool>(true, false, true, true), 2450u), 1u, vec3<u32>(u_input.e.x, 1u, 1u), u_input.a), false)), ~23814i, vec3<u32>(u_input.c.x, 4294967295u, 4294967295u)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1165f, _wgslsmith_f_op_f32(max(405f, 1000f)), 1f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(122f, 832f, -178f), vec3<f32>(-2299f, 324f, -1336f), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-343f, -905f, -142f) + vec3<f32>(-782f, 991f, 2031f)))))), !vec4<bool>(false, any(vec2<bool>(false, false)), u_input.e.x < u_input.d, all(vec3<bool>(true, true, false))), 33091u), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-429f, -571f, 129f) - vec3<f32>(-702f, 319f, -676f)))), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), all(vec4<bool>(true, true, false, false))), _wgslsmith_dot_vec2_u32(u_input.e.xy, vec2<u32>(u_input.d, 19906u))), 50742u, ~firstTrailingBit(u_input.e.zxy) | select(abs(vec3<u32>(74878u, 0u, 22834u)), ~vec3<u32>(31611u, 1u, u_input.c.x), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), 0i), Struct_2(Struct_1(vec3<f32>(-715f, _wgslsmith_div_f32(136f, 749f), 503f), vec4<bool>(true, true, any(vec4<bool>(false, true, true, true)), true), ~(~u_input.c.x)), abs(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(28113u, 1u, u_input.c.x) >> (_wgslsmith_mult_vec3_u32(u_input.c.xxx, u_input.e.wxx) % vec3<u32>(32u)), abs(~vec3<u32>(u_input.c.x, 4294967295u, 33944u))), abs(_wgslsmith_dot_vec2_i32(reverseBits(var_0.wx), min(var_0.yw, var_0.zy)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(423f, -343f, -603f))) - vec3<f32>(1631f, 761f, 1130f)), vec4<bool>(false, true, true, all(vec3<bool>(false, false, false))), _wgslsmith_div_u32(~46449u, 61182u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.e.x), 1u << (1u % 32u)), ~(~(~vec3<u32>(u_input.d, u_input.e.x, 77437u))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b, u_input.a, var_0.x), select(vec3<i32>(47010i, -2147483647i, var_0.x), vec3<i32>(u_input.a, var_0.x, var_0.x), vec3<bool>(true, false, false)), vec3<i32>(u_input.a, var_0.x, -53889i)), ~(~global1[_wgslsmith_index_u32(u_input.c.x, 9u)]))), true);
    let x = u_input.a;
    s_output = StorageBuffer(-5714i);
}

