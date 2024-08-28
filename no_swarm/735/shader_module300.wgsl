struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 2>;

var<private> global1: vec3<f32> = vec3<f32>(-947f, 322f, 916f);

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(1u, 15083u, 1u), vec3<u32>(0u, 35140u, 19070u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 0u, 1u), vec3<u32>(3199u, 4294967295u, 0u), vec3<u32>(4294967295u, 6111u, 4294967295u), vec3<u32>(20501u, 51948u, 1u));

var<private> global4: array<vec3<u32>, 19>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<f32> {
    var var_0 = vec2<bool>(arg_3.x, true);
    let var_1 = !global0[_wgslsmith_index_u32(global2.x, 2u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_div_f32(arg_0.x, -629f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2065f), _wgslsmith_f_op_f32(-169f - arg_1))) + global1.x));
    global2 = vec2<u32>(~abs(select(~3240u, _wgslsmith_clamp_u32(global2.x, 20072u, 112954u), true)), global2.x);
    let var_3 = -2147483647i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, global1.x, arg_1), arg_0))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 * arg_0), _wgslsmith_f_op_vec3_f32(sign(arg_0))))));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -515f) * global1.x));
    global1 = _wgslsmith_f_op_vec3_f32(sign(arg_0));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(323f, _wgslsmith_f_op_f32(min(var_0.a, -586f)), all(vec2<bool>(true, true)) || !(-2147483647i < u_input.a))));
    let var_2 = ~46230u;
    let var_3 = !vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), all(global0[_wgslsmith_index_u32(33091u, 2u)]))), all(vec4<bool>(true, true, true, true)), true, false);
    return min(~4294967295u, max(~var_2 | ~_wgslsmith_dot_vec3_u32(vec3<u32>(2762u, global2.x, 23184u), vec3<u32>(var_2, var_2, 1u)), ~(~_wgslsmith_sub_u32(var_2, 4294967295u))));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(max(~global2.x, 0u), ~arg_0), 2u)];
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(arg_1 & (global2.x >> (arg_1 % 32u)), func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-571f, 594f, 207f) - vec3<f32>(-548f, global1.x, 1000f)), _wgslsmith_f_op_vec3_f32(func_2(vec3<f32>(-170f, -175f, -660f), 956f, Struct_1(31273i, vec2<i32>(u_input.a, -27252i)), vec4<bool>(true, false, var_0.x, false))), var_0.x & var_0.x)))), vec2<u32>(71469u, arg_0));
    var var_2 = Struct_1(-2147483647i, ~vec2<i32>(abs(u_input.a | 10564i), -13855i));
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x - 1495f)));
    var var_4 = ~vec3<u32>(reverseBits(_wgslsmith_mult_u32(arg_1, reverseBits(0u))), global2.x, arg_1 << (firstTrailingBit(countOneBits(arg_0)) % 32u));
    return Struct_2(global1.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = Struct_1(u_input.a, abs(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, -12516i)) | -vec2<i32>(-30845i, u_input.a), reverseBits(vec2<i32>(52340i, u_input.a)))));
    global2 = arg_0.xw;
    var var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a - arg_1.a), -586f)), _wgslsmith_f_op_f32(func_1(countOneBits(4294967295u), global2.x).a * _wgslsmith_f_op_f32(f32(-1f) * -2000f))), vec2<f32>(-813f, -868f)));
    var var_2 = Struct_3(Struct_1(-_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, 8283i), var_0.b.x), var_0.b));
    var var_3 = vec2<u32>(4294967295u, ~(~global2.x));
    return min(firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(-var_2.a.a, i32(-1i) * -34015i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_2.a.a), var_0.b) ^ _wgslsmith_add_i32(-1032i, var_2.a.a))), vec2<i32>(abs(_wgslsmith_mult_i32(~38919i, 6092i)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.b.x, -2147483647i, -1i) << ((global2.x | arg_0.x) % 32u), -45356i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.a;
    var_0 = -2147483647i;
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(abs(abs(vec4<i32>(u_input.a, arg_0.b.x, arg_0.a, u_input.a))), abs(-vec4<i32>(12462i, -1i, u_input.a, arg_0.b.x))), _wgslsmith_add_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(3661i, u_input.a, arg_0.a, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(14729i, 41959i, -45533i, u_input.a), vec4<i32>(arg_0.b.x, u_input.a, arg_0.b.x, -8905i), vec4<i32>(u_input.a, arg_0.b.x, -2147483647i, -16070i))), vec4<i32>(u_input.a, _wgslsmith_div_i32(_wgslsmith_mult_i32(21250i, 9311i), -arg_0.a), 2147483647i, u_input.a)));
    let var_2 = vec3<i32>(arg_0.a, max(~countOneBits(_wgslsmith_sub_i32(u_input.a, var_1)), _wgslsmith_clamp_i32(arg_0.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.a, arg_0.a), vec3<i32>(56195i, u_input.a, 0i)), ~max(arg_0.b.x, 2147483647i))), arg_0.a);
    var var_3 = _wgslsmith_div_f32(1097f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x) + _wgslsmith_f_op_f32(round(1190f))));
    return Struct_1(-_wgslsmith_mod_i32(arg_0.a, arg_0.a), ~abs(-arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(-firstLeadingBit(_wgslsmith_sub_i32(u_input.a, -339i)), _wgslsmith_mult_vec2_i32(func_4(vec4<u32>(global2.x, global2.x, 50356u, 4294967295u), func_1(43798u, global2.x)), countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(12579i, u_input.a))))), !(!vec2<bool>(all(vec4<bool>(true, true, true, true)), true)));
    global0 = array<vec3<bool>, 2>();
    var var_1 = abs(var_0.b.x << (_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 4294967295u, 4294967295u, global2.x), vec4<u32>(19824u, global2.x, global2.x, 4294967295u)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(97880u, 1u, global2.x, global2.x), vec4<u32>(global2.x, global2.x, 1u, global2.x), vec4<u32>(0u, global2.x, 0u, global2.x)), vec4<u32>(global2.x, 63091u, 87128u, global2.x))) % 32u));
    global0 = array<vec3<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -197f))), abs(_wgslsmith_dot_vec2_i32(var_0.b, var_0.b)), vec4<u32>(19239u, ~global2.x, ~36434u, global2.x) | max(vec4<u32>(~global2.x, min(17681u, 4294967295u), 4294967295u, global2.x & 4294967295u), firstTrailingBit(vec4<u32>(global2.x, global2.x, 55673u, global2.x) << (vec4<u32>(4294967295u, 19483u, 17058u, 51984u) % vec4<u32>(32u)))), vec3<i32>(1i, _wgslsmith_mod_i32(-27873i, -var_0.b.x ^ -9449i), reverseBits(var_0.a ^ -2147483647i)));
}

