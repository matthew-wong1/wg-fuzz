struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<bool>, 25>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = 1i;
    let var_1 = ~_wgslsmith_mult_u32(~(~0u), firstTrailingBit(u_input.a.x << (4294967295u % 32u))) & ((_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mod_u32(0u, 35588u)) >> (~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u)) | _wgslsmith_dot_vec4_u32(u_input.a, max(u_input.a, u_input.a) << (vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 28974u) % vec4<u32>(32u))));
    global0 = vec2<i32>(abs(-47478i), _wgslsmith_mult_i32(global0.x, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.x, global0.x, 37879i), vec3<i32>(u_input.b, 0i, global0.x))));
    var var_2 = Struct_1(false);
    let var_3 = select(select(select(vec4<bool>(any(vec2<bool>(true, true)), arg_0.a, arg_0.a, any(global1[_wgslsmith_index_u32(0u, 25u)])), global1[_wgslsmith_index_u32(27980u, 25u)], reverseBits(4294967295u) <= var_1), select(!global1[_wgslsmith_index_u32(u_input.a.x, 25u)], !(!global1[_wgslsmith_index_u32(12428u, 25u)]), arg_1), any(vec3<bool>(select(var_2.a, true, true), false, all(global1[_wgslsmith_index_u32(u_input.a.x, 25u)])))), !select(select(!vec4<bool>(false, arg_1, arg_0.a, var_2.a), global1[_wgslsmith_index_u32(min(u_input.a.x, 57737u), 25u)], !global1[_wgslsmith_index_u32(4294967295u, 25u)]), !vec4<bool>(arg_1, false, false, false), vec4<bool>(true, false, true, true)), true);
    return ~(~1i);
}

fn func_2(arg_0: vec4<f32>) -> vec4<i32> {
    global0 = vec2<i32>(_wgslsmith_add_i32(0i, 27560i | (global0.x & global0.x)), -2147483647i ^ abs(_wgslsmith_mult_i32(func_3(Struct_1(false), false), -28901i)));
    var var_0 = _wgslsmith_div_vec4_i32(min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, global0.x, global0.x, 17189i) << (vec4<u32>(0u, 4294967295u, 0u, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(-10940i, u_input.b, -78401i, -15842i)), vec4<i32>(-1i) * -vec4<i32>(u_input.b, 1i, -2147483647i, global0.x)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-22242i, global0.x, global0.x, 6115i), vec4<i32>(-2147483647i, 1i, global0.x, u_input.b) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), min(select(vec4<i32>(1i, global0.x, u_input.b, 47119i), vec4<i32>(u_input.b, u_input.b, global0.x, global0.x), vec4<bool>(false, false, false, true)), -vec4<i32>(global0.x, global0.x, u_input.b, global0.x)))) | vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(-46260i, u_input.b, -1i), vec3<i32>(2147483647i, 2147483647i, -61115i)), _wgslsmith_add_vec3_i32(vec3<i32>(10044i, 10564i, u_input.b), vec3<i32>(u_input.b, 853i, 16897i))), 0i, ~_wgslsmith_clamp_i32(-9320i, 1i, 2147483647i)), _wgslsmith_mult_i32(firstLeadingBit(-1i), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(40419i, 38062i), vec2<i32>(global0.x, -8602i), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(0i, u_input.b)))), -62805i, _wgslsmith_sub_i32(global0.x, global0.x));
    var var_1 = false;
    let var_2 = u_input.a.x ^ select(reverseBits(u_input.a.x << (~u_input.a.x % 32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 48448u), u_input.a.zyx) ^ ~1u, firstLeadingBit(u_input.a.x)), any(vec3<bool>(true, true, true)));
    let var_3 = ~var_2;
    return _wgslsmith_add_vec4_i32(~select(~_wgslsmith_mod_vec4_i32(vec4<i32>(-53811i, global0.x, var_0.x, var_0.x), vec4<i32>(u_input.b, -21167i, -14233i, global0.x)), select(-vec4<i32>(6028i, u_input.b, global0.x, var_0.x), vec4<i32>(global0.x, 369i, u_input.b, 33304i) | vec4<i32>(0i, -12538i, 2147483647i, var_0.x), vec4<bool>(false, true, true, true)), select(!global1[_wgslsmith_index_u32(u_input.a.x, 25u)], vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false))), abs(~vec4<i32>(abs(global0.x), 2147483647i ^ var_0.x, u_input.b, max(global0.x, global0.x))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = func_2(vec4<f32>(781f, _wgslsmith_f_op_f32(1045f * arg_3.x), 1000f, 730f));
    global0 = arg_2;
    let var_1 = Struct_1(any(vec3<bool>(true, true, true)) && true);
    let var_2 = var_1;
    var var_3 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-arg_3.x), -1049f, -517f) + vec4<f32>(369f, arg_3.x, _wgslsmith_f_op_f32(trunc(arg_3.x)), _wgslsmith_f_op_f32(exp2(arg_3.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1213f, arg_3.x, arg_3.x, 344f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, 185f, arg_3.x, arg_3.x)), vec4<bool>(var_1.a, var_1.a, select(var_2.a, true, false), !var_1.a))))).x;
    return _wgslsmith_f_op_f32(125f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(-2564i, _wgslsmith_clamp_i32(var_0, _wgslsmith_add_i32(var_0, _wgslsmith_mod_i32(-25718i, global0.x)), u_input.b), min(select(10604i, u_input.b, false), select(abs(22867i), 1i, true))), vec3<i32>(max(_wgslsmith_sub_i32(-28861i, ~(-55768i)), var_0), var_0, min(firstTrailingBit(-6722i) >> (28687u % 32u), countOneBits(reverseBits(global0.x)))));
    let var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(u_input.b), -11739i), vec2<i32>(abs(max(-1i, i32(-1i) * -1i)), global0.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-836f * 2253f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 501f), vec3<f32>(_wgslsmith_f_op_f32(func_1(u_input.b, u_input.a.xwy, var_2, vec3<f32>(2074f, 984f, -625f))), 128f, -2835f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -550f, 1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(649f, 219f, 195f)))))));
    let var_4 = vec4<bool>(all(vec2<bool>(true, all(vec2<bool>(false, true)))) || !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), ((u_input.a.x ^ ~u_input.a.x) >= ((9860u >> (u_input.a.x % 32u)) << (~51989u % 32u))) & all(vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true)), false, true);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x * var_3.x))))));
    var_5 = _wgslsmith_f_op_f32(floor(-879f));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.x, var_3.x), 1f, 4294967295u != u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(345f + _wgslsmith_f_op_f32(f32(-1f) * -739f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - -146f) + _wgslsmith_f_op_f32(-406f + -510f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~1u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-854f, _wgslsmith_f_op_f32(trunc(var_3.x)))), var_3.x, _wgslsmith_f_op_f32(abs(-111f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(ceil(-592f)), 291f), vec3<f32>(-598f, var_3.x, -682f))), _wgslsmith_mod_i32(_wgslsmith_add_i32(global0.x, -global0.x), global0.x));
}

