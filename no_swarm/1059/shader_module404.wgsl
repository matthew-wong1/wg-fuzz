struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<bool>(true, false), -378f, -36160i), Struct_1(vec2<bool>(false, true), 549f, -38262i), Struct_1(vec2<bool>(false, false), 1661f, -1i), Struct_1(vec2<bool>(false, true), -2042f, -240i), Struct_1(vec2<bool>(false, false), 1132f, -22468i), Struct_1(vec2<bool>(true, true), -699f, 1i), Struct_1(vec2<bool>(true, false), 1180f, 58080i), Struct_1(vec2<bool>(true, false), 989f, -1i), Struct_1(vec2<bool>(true, true), -337f, -5861i), Struct_1(vec2<bool>(true, true), -435f, -15324i), Struct_1(vec2<bool>(true, true), 313f, -5618i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> i32 {
    let var_0 = vec2<i32>(-2147483647i, arg_0.a.c & abs(-8240i));
    let var_1 = 4294967295u;
    let var_2 = u_input.e;
    var var_3 = vec3<u32>(~(~(~arg_2.a) << (~(var_1 & u_input.e) % 32u)), u_input.e, arg_2.a);
    let var_4 = arg_0;
    return reverseBits(_wgslsmith_mult_i32(min(-reverseBits(var_4.a.c), -u_input.b.x), arg_0.a.c));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec2<f32> {
    var var_0 = any(vec2<bool>(true, all(!vec4<bool>(false, arg_1, arg_1, false))));
    let var_1 = Struct_3(vec3<bool>(arg_1, _wgslsmith_div_u32(_wgslsmith_clamp_u32(43269u, 1u, 11965u), u_input.e) <= (~u_input.e >> ((u_input.e >> (u_input.e % 32u)) % 32u)), arg_1), true, Struct_2(global0[_wgslsmith_index_u32(~abs(u_input.e), 11u)]));
    global0 = array<Struct_1, 11>();
    var var_2 = func_3(var_1.c, u_input.c.x, Struct_4(33835u));
    let var_3 = abs(-(~vec2<i32>(firstTrailingBit(-31278i), _wgslsmith_div_i32(-24767i, 2147483647i))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(138f + 775f), -940f)) + 239f)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.a.b), _wgslsmith_div_f32(326f, var_1.c.a.b)), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 682f), _wgslsmith_f_op_vec2_f32(vec2<f32>(748f, -1782f) + vec2<f32>(1278f, var_1.c.a.b)))))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1781f) * vec2<f32>(-664f, -191f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-814f, 1380f) * vec2<f32>(-1147f, 305f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-786f, -353f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-366f, -369f), vec2<f32>(1305f, 849f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -550f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-801f, 940f), vec2<f32>(558f, -1022f)))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1303f), 504f) + _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(-1132f - -1102f), select(true, false, true)))) * vec2<f32>(_wgslsmith_f_op_f32(-491f * -1054f), _wgslsmith_f_op_f32(-422f * -760f))));
    let var_1 = Struct_2(Struct_1(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, false), true), vec2<bool>(all(vec4<bool>(true, true, true, false)), true)), 1430f, _wgslsmith_clamp_i32(19762i, min(-2147483647i, -u_input.b.x), _wgslsmith_dot_vec3_i32(-u_input.d, firstLeadingBit(u_input.d)))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_0.x, var_1.a.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) * _wgslsmith_f_op_f32(floor(-779f))) * _wgslsmith_f_op_f32(-1089f - _wgslsmith_f_op_f32(-var_0.x)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(338f - var_1.a.b), -1120f)) - var_1.a.b), 566f));
    global0 = array<Struct_1, 11>();
    let var_2 = (abs(vec4<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), func_3(Struct_2(Struct_1(vec2<bool>(true, var_1.a.a.x), var_0.x, var_1.a.c)), 0i, Struct_4(4294967295u)), _wgslsmith_div_i32(0i, u_input.a.x))) | -abs(vec4<i32>(-10386i, 48278i, u_input.b.x, var_1.a.c) << (vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e) % vec4<u32>(32u)))) ^ _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.c, -19490i, u_input.a.x, u_input.b.x), vec4<i32>(2147483647i, u_input.c.x, -1i, var_1.a.c)), select(-30561i, u_input.c.x, var_1.a.a.x), _wgslsmith_add_i32(79458i, -1i))), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 17357i, u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(489i, 8353i), vec2<i32>(-26068i, u_input.d.x))), vec4<i32>(u_input.c.x, 0i, 1i, _wgslsmith_mod_i32(-1i, u_input.a.x))));
    return var_1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-731f * _wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(-163f * _wgslsmith_f_op_f32(870f + -587f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1555f)))));
    var var_1 = Struct_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), vec3<bool>(select(u_input.e, 0u, false) < ~37545u, !(u_input.c.x > u_input.b.x), _wgslsmith_f_op_f32(var_0 * -1000f) != var_0)), false, Struct_2(Struct_1(vec2<bool>(true, false), -1738f, u_input.c.x)));
    let var_2 = vec3<u32>(4294967295u, _wgslsmith_add_u32(15228u, ~u_input.e), u_input.e);
    let var_3 = Struct_4(~_wgslsmith_div_u32(~(~u_input.e), _wgslsmith_dot_vec2_u32(~var_2.xy, var_2.yz)));
    let var_4 = vec2<f32>(751f, _wgslsmith_f_op_f32(min(var_1.c.a.b, var_0)));
    var var_5 = Struct_3(select(!(!var_1.a), select(!vec3<bool>(var_1.b, false, false), vec3<bool>(true, var_1.a.x, !var_1.c.a.a.x), !vec3<bool>(var_1.c.a.a.x, true, false)), var_1.c.a.a.x), true, var_1.c);
    var var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(~15203i, -_wgslsmith_add_i32(var_1.c.a.c, var_1.c.a.c), -1i, countOneBits(var_1.c.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * _wgslsmith_f_op_f32(-var_1.c.a.b))), max(reverseBits(vec4<u32>(~0u, abs(var_3.a), abs(22258u), u_input.e)), vec4<u32>(select(countOneBits(u_input.e), ~11257u, true), ~1u, reverseBits(countOneBits(u_input.e)), ~abs(var_3.a))));
}

