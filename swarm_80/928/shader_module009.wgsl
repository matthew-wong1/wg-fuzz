struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 26>;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool) -> vec2<f32> {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f + 1262f))), -271f), -1469f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(120f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-318f, -1835f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(858f, 477f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(1000f))), global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(823f * -769f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(144f - 317f)))));
    global0 = array<vec4<bool>, 26>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_div_f32(var_0.x, -1000f), true)))));
    global1 = !(!select(vec3<bool>(select(false, global1.x, arg_1), arg_1 | arg_1, global1.x), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1), true), false), all(!vec3<bool>(arg_1, arg_1, global1.x))));
    var_0 = vec4<f32>(_wgslsmith_div_f32(190f, _wgslsmith_f_op_f32(-var_0.x)), -2420f, var_1.a, var_0.x);
    return vec2<f32>(_wgslsmith_f_op_f32(-272f - -426f), var_1.a);
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(~(~vec2<i32>(-6964i, -31997i)), !arg_2 | false)).x))));
    var var_1 = 0u ^ u_input.a.x;
    var var_2 = any(select(vec3<bool>(true, (0u >> (u_input.a.x % 32u)) == firstLeadingBit(u_input.b.x), all(!global0[_wgslsmith_index_u32(0u, 26u)])), !(!vec3<bool>(arg_2, true, true)), select(vec3<bool>(false, true, !global1.x), vec3<bool>(!global1.x, u_input.a.x <= 32326u, true), true && any(vec4<bool>(global1.x, true, arg_2, arg_2)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 + arg_0))), _wgslsmith_f_op_vec2_f32(sign(arg_0)), !global1.yy)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(0i, -abs(-11872i), 0i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, -52553i, 33138i), vec3<i32>(1i, 1i, -1i), global1.x), firstTrailingBit(vec3<i32>(-25194i, -12263i, 2147483647i))))), firstLeadingBit(max(-vec3<i32>(6215i, -2147483647i, -17314i), -vec3<i32>(-1i, 11892i, -2147483647i))) >> ((~(~vec3<u32>(4294967295u, u_input.a.x, u_input.b.x)) | _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, 0u) << (vec3<u32>(0u, 1u, u_input.b.x) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x)))) % vec3<u32>(32u)));
    var_1 = ~u_input.a.x;
    return vec3<f32>(_wgslsmith_f_op_f32(789f * var_3.a.x), 369f, arg_0.x);
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = !vec3<bool>(true, !(!global1.x) | (1u <= ~u_input.a.x), global1.x);
    global0 = array<vec4<bool>, 26>();
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(495f + -430f), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1884f)), _wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(-25806i, 13097i), global1.x)), select(vec2<bool>(global1.x, global1.x), global1.zy, true)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1236f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, 920f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1211f, arg_0), vec2<f32>(-736f, arg_0))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-774f, arg_0))))), arg_0, any(global0[_wgslsmith_index_u32(0u, 26u)])));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(252f)) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(-696f, -1166f) + vec2<f32>(var_0.x, var_0.x)), -364f, global1.x)).x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(2147483647i, 24548i), global1.x)).x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - -656f), var_0.x);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(select(2107f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(902f)) - -296f), var_0.x), global1.x)));
    return Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(min(-393f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-558f)), _wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    global1 = vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a * 737f) + _wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(1i, 5415i), false)).x), -1283f, global1.x)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a)) + -524f), (u_input.b.x != u_input.a.x) | !global1.x, global1.x);
    var var_0 = all(global1.zy) | all(!vec4<bool>(false, any(vec4<bool>(true, global1.x, true, false)), true, true));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-297f, arg_0.a))), _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), ~_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -2147483647i, -69827i, -31855i), vec4<i32>(1i, 1i, 1i, 1i))), vec3<i32>(0i, 2497i, -48904i));
    var_0 = _wgslsmith_sub_i32(~countOneBits(66502i), ~(~(~var_1.b.x))) > 2147483647i;
    global1 = select(!vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, all(vec3<bool>(-1i > var_1.b.x, global1.x, global1.x)), global1.x && true), (_wgslsmith_add_i32(~39724i, var_1.c.x) <= var_1.c.x) && true);
    return arg_1.b;
}

fn func_1() -> vec2<f32> {
    var var_0 = func_5(func_2(_wgslsmith_f_op_f32(-1f)), Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), -778f)), func_2(_wgslsmith_f_op_f32(min(-220f, _wgslsmith_f_op_f32(f32(-1f) * -402f))))));
    var_0 = func_5(Struct_2(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-var_0.a))), Struct_3(Struct_2(594f), func_2(_wgslsmith_f_op_f32(f32(-1f) * -862f))));
    global1 = select(select(select(vec3<bool>(all(vec4<bool>(true, global1.x, false, global1.x)), global1.x, global1.x), select(!vec3<bool>(global1.x, false, global1.x), !vec3<bool>(false, global1.x, false), !global1.x), global1.x), select(!select(vec3<bool>(true, true, true), vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, false, global1.x)), !(!vec3<bool>(global1.x, global1.x, false)), vec3<bool>(global1.x, true, false)), any(select(!vec2<bool>(global1.x, false), vec2<bool>(true, false), !global1.xx))), !select(!select(vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, true, true), true), select(!vec3<bool>(false, global1.x, false), select(vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, global1.x)), select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, true, false))), vec3<bool>(1u > u_input.a.x, true, global1.x && true)), !(!(!vec3<bool>(global1.x, true, global1.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(select(vec2<i32>(-2147483647i, 0i), vec2<i32>(-41013i, -2147483647i), global1.x), false)), _wgslsmith_f_op_f32(-var_0.a), global1.x)).xz)), -max(abs(vec4<i32>(0i, -1i, 2147483647i, 12009i)), select(vec4<i32>(2853i, 2147483647i, -2147483647i, 46968i), vec4<i32>(1i, -8501i, -1i, -1i), global1.x)) ^ _wgslsmith_mod_vec4_i32(-(~vec4<i32>(-2147483647i, 0i, 62635i, -1i)), vec4<i32>(countOneBits(29970i), abs(1i), 4664i, i32(-1i) * -1i)), vec3<i32>(~max(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -2147483647i)), min(49757i, 2147483647i)), _wgslsmith_clamp_i32(-1i, select(-1i, firstTrailingBit(-31701i), true), _wgslsmith_mult_i32(1i, 15441i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(38944i, -1i), -select(vec2<i32>(-1i, -23023i), vec2<i32>(432i, -1i), global1.zz))));
    let var_2 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(~1i, var_1.b.x), 0i), min(-19880i, -2147483647i), firstLeadingBit(firstLeadingBit(~5591i) ^ -_wgslsmith_add_i32(var_1.c.x, -1i)), _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec4_i32(var_1.b, var_1.b | _wgslsmith_add_vec4_i32(var_1.b, var_1.b))));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!select(select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, false), true), select(vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), false), select(vec3<bool>(true, true, true), !vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), global1.x));
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1715f);
    let var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -374f) - vec2<f32>(-2134f, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1462f, 1104f)))), vec4<i32>(firstTrailingBit(1i) | -35408i, -firstLeadingBit(-1i), 5457i, -16536i), _wgslsmith_add_vec3_i32(abs(countOneBits(vec3<i32>(0i, -1i, -2147483647i))), vec3<i32>(2147483647i, -28419i, 1i)));
    let var_3 = var_2.c.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, 0u), vec3<u32>(26986u, 0u, 7125u))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, 0u, 43865u)), _wgslsmith_add_vec3_u32(vec3<u32>(29156u, 4294967295u, var_0.x), vec3<u32>(u_input.b.x, u_input.a.x, 20044u))), ~(~vec3<u32>(var_0.x, 97718u, var_0.x)))), select(~20909u, u_input.a.x, global1.x));
}

