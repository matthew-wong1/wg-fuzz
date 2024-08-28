struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(2147483647i, Struct_2(vec3<f32>(670f, 219f, -429f), true, Struct_1(vec4<i32>(6536i, 0i, 2147483647i, 0i), -508f, 203f, 10448i, vec2<u32>(2829u, 3459u))), vec2<bool>(false, true), vec4<bool>(true, false, false, false), Struct_1(vec4<i32>(27563i, 53347i, 1i, 8243i), -144f, -152f, -37206i, vec2<u32>(1u, 19289u))));

var<private> global1: i32;

var<private> global2: array<vec3<u32>, 6>;

var<private> global3: array<vec2<u32>, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> vec4<f32> {
    global3 = array<vec2<u32>, 19>();
    let var_0 = global0[_wgslsmith_index_u32(min(arg_0.c.e.x >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(arg_2, arg_2), ~arg_2), 4294967295u ^ ~arg_0.c.e.x, 18445u) % 32u), ~(~arg_2.x << (arg_2.x % 32u)) | 77254u), 1u)];
    global3 = array<vec2<u32>, 19>();
    var var_1 = 1202f;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.c)), 1090f);
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.b, _wgslsmith_f_op_f32(684f + arg_1.c), var_0.b.a.x, arg_0.c.c) + vec4<f32>(271f, 1291f, _wgslsmith_f_op_f32(-1259f + 1075f), arg_1.b)), vec4<f32>(_wgslsmith_f_op_f32(-113f + var_0.b.a.x), _wgslsmith_f_op_f32(var_0.b.c.c - _wgslsmith_f_op_f32(-var_0.b.c.c)), var_0.b.c.c, _wgslsmith_f_op_f32(arg_1.c * var_0.b.c.b)), (any(vec4<bool>(arg_0.b, false, var_0.c.x, var_0.c.x)) || arg_0.b) & true)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.e.b, 836f, _wgslsmith_f_op_f32(-var_0.e.b), -1101f)))));
}

fn func_2(arg_0: f32, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(157f, -486f, -2629f, arg_0)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1526f, arg_0, arg_0, -236f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, 1646f, 1959f, 699f))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec3<f32>(arg_0, 1941f, arg_0), true, Struct_1(vec4<i32>(2147483647i, arg_1, 36772i, -13079i), 382f, arg_0, 44573i, vec2<u32>(33711u, u_input.c))), Struct_1(vec4<i32>(2147483647i, 2147483647i, -9498i, -4954i), -100f, arg_0, -13107i, global3[_wgslsmith_index_u32(1u, 19u)]), vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -799f) * vec4<f32>(-1130f, -368f, 551f, 2183f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1212f, 1186f, arg_0, 2597f) + vec4<f32>(-611f, arg_0, arg_0, -453f))) * vec4<f32>(arg_0, _wgslsmith_f_op_f32(exp2(arg_0)), arg_0, arg_0)), _wgslsmith_div_vec4_f32(vec4<f32>(-212f, _wgslsmith_f_op_f32(round(-1873f)), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_div_f32(393f, arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, arg_0, -445f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1005f, 1693f, 1439f, arg_0))))));
    var var_1 = select(vec3<i32>(_wgslsmith_sub_i32(-46604i, _wgslsmith_sub_i32(arg_1, 1i)), arg_1, _wgslsmith_add_i32(-u_input.b, -(~u_input.b))), vec3<i32>(~_wgslsmith_sub_i32(abs(arg_1), firstLeadingBit(2147483647i)), ~(-10913i), u_input.b), true);
    var var_2 = any(vec2<bool>(true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)))));
    let var_3 = all(!(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true))));
    var var_4 = _wgslsmith_add_i32(var_1.x, ~1i);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1077f) * arg_0))));
}

fn func_1(arg_0: f32) -> vec3<f32> {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * -1294f))))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, 216f))), 8130i))), _wgslsmith_div_f32(781f, arg_0), _wgslsmith_f_op_f32(ceil(-950f)));
    global1 = u_input.b;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, arg_0))))))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1351f, _wgslsmith_f_op_f32(-1654f + arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, -540f)))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1151f, _wgslsmith_f_op_f32(f32(-1f) * -317f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1048f, -613f), vec2<f32>(-386f, -119f), true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(928f, -977f), vec2<f32>(856f, -1039f), true)))))));
    let var_1 = var_0.x;
    var var_2 = 1u;
    global1 = 18730i;
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-890f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1249f, var_0.x))), var_0.x) + _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_div_f32(1054f, _wgslsmith_f_op_f32(-var_0.x))))), true & (false || all(vec2<bool>(true, true))), Struct_1(vec4<i32>(-1i) * -select(vec4<i32>(u_input.b, u_input.b, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.b, -5738i), true), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(1350f)).x - var_0.x), u_input.a)), _wgslsmith_f_op_f32(var_0.x + 323f), 33655i, _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, u_input.c))), global3[_wgslsmith_index_u32(~u_input.c >> (~u_input.c % 32u), 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(-var_3.c.a, -abs(var_3.c.a)), vec4<i32>(0i >> (1u % 32u), _wgslsmith_sub_i32(-var_3.c.a.x, ~u_input.b << (~32384u % 32u)), var_3.c.a.x, ~countOneBits(15775i)));
}

