struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<vec2<u32>, 2>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<u32>, 2>();
    return Struct_1(~abs(1u >> (0u % 32u)), firstTrailingBit(select(_wgslsmith_sub_i32(-45441i & u_input.a, _wgslsmith_add_i32(-37545i, u_input.a)), -(u_input.a & u_input.a), true)), reverseBits(4294967295u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-438f, 2390f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1823f, 515f) + vec2<f32>(-432f, -277f)) - vec2<f32>(-1437f, -1609f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-543f, -1773f), vec2<f32>(-1000f, 825f)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(440f, -625f), vec2<f32>(-855f, 2473f)), _wgslsmith_div_vec2_f32(vec2<f32>(-651f, -424f), vec2<f32>(1161f, 757f)))))), 849f);
}

fn func_3() -> bool {
    let var_0 = -516f;
    var var_1 = max(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(50626u, 4294967295u, 1u, 69953u), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(64069u, (2557u << (1u % 32u)) & _wgslsmith_clamp_u32(60885u, 0u, 0u), 1u, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(28786u, 1u, 35108u), vec3<u32>(56215u, 0u, 0u)))) | (firstTrailingBit(~vec4<u32>(0u, 20725u, 47209u, 1u)) & firstTrailingBit(firstTrailingBit(vec4<u32>(66407u, 0u, 0u, 4294967295u)))));
    var var_2 = func_2();
    global1 = array<vec2<u32>, 2>();
    var var_3 = Struct_1(func_2().a, min(-2147483647i, u_input.a), var_1.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1805f), var_2.d.x)) + -785f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1067f, var_2.e) - var_2.e)), -1417f);
    return !any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> i32 {
    var var_0 = func_2();
    let var_1 = global0[_wgslsmith_index_u32(1u, 22u)];
    var var_2 = func_2();
    var var_3 = vec2<bool>(any(arg_2), all(select(select(arg_2, !vec4<bool>(arg_2.x, true, false, arg_2.x), !vec4<bool>(true, arg_2.x, true, true)), arg_2, vec4<bool>(true, func_3(), !arg_2.x, any(vec2<bool>(true, false))))));
    global1 = array<vec2<u32>, 2>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 96332u), vec3<u32>(4294967295u, 4294967295u, 14157u))), -func_1(global0[_wgslsmith_index_u32(1u, 22u)], vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, -2147483647i), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), abs(vec4<u32>(2727u, 1u, 41924u, 44561u))), abs(~max(1u, reverseBits(4294967295u))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(343f)))))), _wgslsmith_f_op_f32(-1705f * -169f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(963f + 588f) + _wgslsmith_div_f32(-343f, 1862f)) + -1000f), _wgslsmith_f_op_f32(step(1f, 1322f)))));
    let var_1 = func_2();
    let var_2 = global0[_wgslsmith_index_u32(1u, 22u)];
    var var_3 = ~vec4<u32>(_wgslsmith_mult_u32(~reverseBits(var_0.a), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(var_0.c, 2u)] >> (vec2<u32>(var_2.a, 0u) % vec2<u32>(32u)), vec2<u32>(4294967295u, 16850u))), ~58976u, var_2.c, var_1.a);
    global0 = array<Struct_1, 22>();
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e, var_1.e, var_0.d.x, -967f) - vec4<f32>(-820f, var_1.e, var_2.e, var_0.e))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_2.d.x, -451f, 847f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1640f, 918f, -588f, var_1.d.x))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.d.x, _wgslsmith_div_f32(158f, -1068f), 1f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e, var_2.d.x, 542f, var_0.e)) + vec4<f32>(_wgslsmith_f_op_f32(round(1039f)), _wgslsmith_f_op_f32(-1000f + 861f), _wgslsmith_f_op_f32(var_0.e + var_2.d.x), -819f))));
    var var_5 = Struct_1(var_3.x << (_wgslsmith_mult_u32(11539u, var_1.c) % 32u), ~(-1i) | _wgslsmith_mod_i32((40333i & var_2.b) << (var_3.x % 32u), 1i), 75844u, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_4.x, -611f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.d.x, var_2.e)))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_2.e)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2690f, -1210f) * vec2<f32>(var_2.e, var_0.d.x))))), var_0.e);
    var_0 = Struct_1(abs(var_2.c), -firstTrailingBit(~(-2147483647i)), 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_5.d.x), _wgslsmith_f_op_f32(-var_2.e));
    var_5 = global0[_wgslsmith_index_u32(~var_1.c, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec4<u32>(var_1.c, 4294967295u, var_0.a, var_1.a) << (vec4<u32>(38709u, var_0.a, 0u, 0u) % vec4<u32>(32u)))), max(vec2<u32>(var_1.c, ~54812u), ~((vec2<u32>(1u, var_1.c) >> (vec2<u32>(58270u, var_2.c) % vec2<u32>(32u))) << (var_3.zw % vec2<u32>(32u)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1091f, _wgslsmith_f_op_f32(exp2(var_2.e))), 1000f)));
}

