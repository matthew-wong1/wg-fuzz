struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 719f;

var<private> global1: array<vec3<f32>, 30>;

var<private> global2: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(true, 1i), Struct_2(false, i32(-2147483648)), Struct_2(false, 0i), Struct_2(false, 1i), Struct_2(true, 1i), Struct_2(false, 16846i), Struct_2(true, 45230i), Struct_2(false, -2830i), Struct_2(false, 20040i), Struct_2(false, 0i), Struct_2(false, i32(-2147483648)), Struct_2(false, -68546i), Struct_2(false, i32(-2147483648)), Struct_2(true, i32(-2147483648)), Struct_2(true, 54326i), Struct_2(false, 32517i), Struct_2(true, 0i), Struct_2(false, -1671i), Struct_2(true, 2147483647i), Struct_2(false, 1i), Struct_2(false, -27345i), Struct_2(false, i32(-2147483648)), Struct_2(true, 0i), Struct_2(false, -21124i), Struct_2(true, i32(-2147483648)), Struct_2(true, 0i));

var<private> global3: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(1i, 17467i), vec2<i32>(i32(-2147483648), -73584i), vec2<i32>(1i, -1i), vec2<i32>(0i, -14375i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(8390i, -29966i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(20870i, 2147483647i), vec2<i32>(33967i, -28038i), vec2<i32>(28643i, 0i), vec2<i32>(21993i, 21597i), vec2<i32>(-1i, -3631i), vec2<i32>(0i, -1i), vec2<i32>(-15235i, -37177i), vec2<i32>(-10410i, 0i), vec2<i32>(-2759i, i32(-2147483648)));

var<private> global4: array<vec3<u32>, 22>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    let var_0 = arg_1.yx;
    let var_1 = (37647u & u_input.a.x) < u_input.a.x;
    var var_2 = firstLeadingBit(select(-select(vec2<i32>(arg_0.x, -1i), -vec2<i32>(-1021i, arg_0.x), arg_3.yy), abs(global3[_wgslsmith_index_u32(10640u, 17u)]), arg_3.zy));
    global4 = array<vec3<u32>, 22>();
    let var_3 = _wgslsmith_mult_i32(0i, arg_0.x);
    return 4294967295u;
}

fn func_3() -> f32 {
    global3 = array<vec2<i32>, 17>();
    global3 = array<vec2<i32>, 17>();
    var var_0 = all(!vec4<bool>(false, all(vec3<bool>(false, false, false)), true, true)) & false;
    let var_1 = _wgslsmith_dot_vec2_u32(max(_wgslsmith_add_vec2_u32(vec2<u32>(55414u, 0u), min(~u_input.a.wx, ~vec2<u32>(84936u, 4294967295u))), vec2<u32>(_wgslsmith_dot_vec4_u32(~u_input.a, max(u_input.a, u_input.a)), 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(19538u, 29323u), ~(~vec2<u32>(0u, 23705u) >> (countOneBits(u_input.a.zy) % vec2<u32>(32u)))));
    var var_2 = ~min(max(87426u & u_input.a.x, u_input.a.x), select(u_input.a.x, firstLeadingBit(var_1), true)) >> (~(~_wgslsmith_clamp_u32(70435u, var_1, var_1)) % 32u);
    return _wgslsmith_f_op_f32(max(1127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -798f))));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(4066i, -1i), 2009i << (~(55062u >> (arg_0 % 32u)) % 32u));
    var var_1 = _wgslsmith_add_i32(~_wgslsmith_div_i32(var_0.x, -(~20343i)), 29655i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))) * 368f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(2403f, -1368f, true))))), _wgslsmith_f_op_f32(min(-761f, _wgslsmith_f_op_f32(max(-1430f, _wgslsmith_f_op_f32(f32(-1f) * -446f)))))));
    var var_3 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.a);
    global3 = array<vec2<i32>, 17>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 30>();
    let var_0 = vec2<i32>(2147483647i, -17946i);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1025f)));
    global0 = _wgslsmith_f_op_f32(ceil(1249f));
    var var_1 = Struct_1(430f, vec2<bool>(func_2(func_1(firstTrailingBit(vec4<i32>(20098i, var_0.x, 1i, -5497i)), vec3<f32>(-1707f, -1402f, 223f), Struct_1(-386f, vec2<bool>(true, false)), vec4<bool>(true, true, false, true))), true));
    var var_2 = Struct_2(true, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1697f, 2344f)))))), 1u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))), 400f)), _wgslsmith_f_op_f32(min(336f, -606f)))), (((vec4<i32>(5879i, var_0.x, var_2.b, var_0.x) | vec4<i32>(62179i, 59444i, 0i, var_2.b)) ^ ~vec4<i32>(-1i, var_0.x, var_0.x, 0i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, 28082u, 0u), reverseBits(vec4<u32>(0u, 28198u, 1u, u_input.a.x))) % vec4<u32>(32u))) | -vec4<i32>(var_0.x, firstTrailingBit(var_2.b), _wgslsmith_div_i32(var_2.b, 2147483647i), var_0.x << (0u % 32u)), _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(1100f + _wgslsmith_f_op_f32(floor(-864f)))));
}

