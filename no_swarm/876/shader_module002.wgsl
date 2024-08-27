struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = array<vec4<bool>, 24>();
    let var_0 = -reverseBits(max(vec2<i32>(i32(-1i) * -2147483647i, ~2147483647i), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 36060i), vec2<i32>(0i, 63895i), vec2<i32>(-1473i, 0i))));
    global0 = array<vec4<bool>, 24>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.a);
    var_1 = _wgslsmith_f_op_vec4_f32(min(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -1724f, _wgslsmith_f_op_f32(select(-2004f, _wgslsmith_f_op_f32(1458f + 485f), true)), _wgslsmith_f_op_f32(step(-1388f, 1000f)))));
    return ~(arg_0.c.x >> (arg_0.e.x % 32u));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    var var_0 = -vec3<i32>(47628i, 0i, _wgslsmith_dot_vec2_i32(countOneBits(reverseBits(vec2<i32>(6941i, -18928i))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-16872i, -83558i) >> (vec2<u32>(u_input.a, u_input.b.x) % vec2<u32>(32u)))));
    return _wgslsmith_add_i32(~(-(~(-19994i))) << (((~u_input.b.x ^ u_input.c) >> (_wgslsmith_mult_u32(abs(u_input.c), 45916u) % 32u)) % 32u), firstLeadingBit(var_0.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> vec2<u32> {
    let var_0 = Struct_5(Struct_4(reverseBits(-select(vec3<i32>(-1i, 52228i, 1i), vec3<i32>(41804i, 2147483647i, 2147483647i), arg_1)), vec2<i32>(2147483647i, _wgslsmith_sub_i32(0i, -13460i)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1105f, arg_0.x, arg_0.x)), true, vec4<u32>(89307u, ~0u, u_input.c, 61465u), global0[_wgslsmith_index_u32(0u, 24u)], u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x))), Struct_2(-1i, Struct_1(vec4<f32>(-267f, arg_0.x, arg_0.x, arg_0.x), true, vec4<u32>(19593u, u_input.a, u_input.b.x, u_input.c) >> (vec4<u32>(4294967295u, 0u, 43292u, u_input.a) % vec4<u32>(32u)), select(vec4<bool>(true, false, false, arg_1), vec4<bool>(true, false, arg_1, arg_1), true), u_input.b), _wgslsmith_mult_i32(~5223i, i32(-1i) * -7450i))), !select(!select(vec4<bool>(false, arg_1, false, arg_1), global0[_wgslsmith_index_u32(u_input.c, 24u)], vec4<bool>(arg_1, true, true, arg_1)), !global0[_wgslsmith_index_u32(max(u_input.a, 4294967295u), 24u)], vec4<bool>(arg_1, any(vec3<bool>(arg_1, arg_1, arg_1)), true, arg_1 | arg_1)), _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.c, abs(57303u), 60041u ^ u_input.c), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 22444u, u_input.c, u_input.b.x), vec4<u32>(0u, u_input.a, 4294967295u, u_input.b.x)) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, u_input.c), vec4<u32>(u_input.a, u_input.c, 1u, 10855u)))), _wgslsmith_sub_i32(select(-19316i, -5723i, false) & ~(-18824i), 0i) | func_3(select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, true, false)), vec3<bool>(true, arg_1, false), vec3<bool>(true, true, true))));
    return firstTrailingBit(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    var var_0 = u_input.b;
    var var_1 = select(vec4<u32>(~min(u_input.c, var_0.x ^ var_0.x), 12620u, var_0.x, 18381u), vec4<u32>(1u, var_0.x, ~4294967295u, u_input.b.x), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(min(106040u, 0u), func_1(Struct_1(vec4<f32>(-349f, -841f, 153f, -1101f), false, vec4<u32>(var_0.x, 84933u, var_0.x, 1u), vec4<bool>(false, false, false, true), u_input.b), -1122f)), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(1558f, 1498f, 359f, 513f), vec4<f32>(185f, 208f, -340f, -285f)), true)), 24u)], select(select(vec4<bool>(false, true, false, false), !global0[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<bool>(true, true, true, false)), global0[_wgslsmith_index_u32(1u, 24u)], select(select(global0[_wgslsmith_index_u32(var_0.x, 24u)], vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<bool>(false, true, true, true)))), vec4<bool>(true, true, true, true)));
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(abs(abs(-42522i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -1i, -25527i), -vec3<i32>(0i, 15992i, -2147483647i))), 20179i, _wgslsmith_mult_i32(-countOneBits(0i), countOneBits(_wgslsmith_add_i32(-2147483647i, 2147483647i)))) ^ select(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)), min(~(vec3<i32>(-1i, -1i, 56728i) >> (vec3<u32>(u_input.a, var_0.x, 36641u) % vec3<u32>(32u))), vec3<i32>(0i, 21583i, -2147483647i)), func_3(vec3<bool>(true, true, true)) != 0i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.ywy);
}

