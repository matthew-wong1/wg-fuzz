struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<i32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> vec3<i32> {
    let var_0 = ~(~13741i);
    var var_1 = select(select(select(vec2<bool>(all(vec3<bool>(true, true, false)), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), false)), select(vec2<bool>(select(false, true, false), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), !any(vec4<bool>(true, false, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(false, false)))), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), true);
    var_1 = vec2<bool>(all(!vec2<bool>(var_1.x, var_1.x)), !var_1.x);
    var var_2 = u_input.a.x;
    global0 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(select(global0.x, arg_1.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -360f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    return vec3<i32>(-global1.x, i32(-1i) * -1i, ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.b, firstTrailingBit(vec2<i32>(global1.x, -2147483647i))), -1i));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> u32 {
    global1 = _wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, 0i, global1.x), vec3<i32>(u_input.b.x, global1.x, global1.x)), countOneBits(vec3<i32>(global1.x, 1i, 2147483647i))), func_3(u_input.a.x << (1u % 32u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, arg_0, -831f, 126f), vec4<f32>(-919f, arg_0, 456f, arg_0))))), func_3(4294967295u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(171f, arg_0, arg_0, arg_0) * vec4<f32>(arg_0, global0.x, arg_0, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-338f, global0.x, -1386f, -790f))) + vec4<f32>(-343f, -1952f, -412f, global0.x))))));
    var var_0 = _wgslsmith_sub_u32(35250u, 2922u);
    var_0 = u_input.a.x;
    var_0 = u_input.a.x;
    var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(max(_wgslsmith_sub_vec2_u32(arg_1, vec2<u32>(2899u, arg_1.x)), vec2<u32>(1u, arg_1.x)), arg_1), _wgslsmith_div_vec2_u32(u_input.a.xw, ~(~arg_1))), vec2<u32>(1u, firstLeadingBit(~49734u)) ^ vec2<u32>(59787u ^ reverseBits(arg_1.x), ~1u));
    return arg_1.x;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = vec4<bool>(true, arg_2.x, all(!(!select(arg_2.yww, arg_2.ywy, false))), _wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(-global0.x));
    let var_1 = Struct_1(select(!var_0, arg_2, !(!vec4<bool>(var_0.x, var_0.x, false, true))), _wgslsmith_div_u32(u_input.a.x, 19279u));
    global1 = firstLeadingBit(arg_1.wyw);
    let var_2 = var_1;
    var var_3 = !(_wgslsmith_div_u32(func_2(global0.x, ~u_input.a.wy), ~var_2.b >> ((var_1.b << (var_2.b % 32u)) % 32u)) > 25310u);
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)) & (_wgslsmith_mod_i32(u_input.b.x, 10296i) < 14825i), all(select(func_1(global1.x, vec4<i32>(global1.x, global1.x, 0i, 2147483647i), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true))), !(all(vec3<bool>(true, false, true)) && false), true));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-630f, global0.x, global0.x, global0.x))), vec4<f32>(-956f, global0.x, global0.x, global0.x)), vec4<f32>(_wgslsmith_f_op_f32(select(152f, global0.x, var_0)), _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(floor(global0.x)), global0.x)) * vec4<f32>(global0.x, _wgslsmith_f_op_f32(step(-869f, global0.x)), _wgslsmith_div_f32(1313f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, global0.x)) * _wgslsmith_f_op_f32(-global0.x)))), vec4<i32>(-2147483647i, ~(global1.x & global1.x), func_3(~32185u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1252f, global0.x, global0.x, 446f)))).x, _wgslsmith_div_i32(-global1.x, ~u_input.b.x)) | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -u_input.b.x, 33649i, select(u_input.b.x, -18745i, false)), vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, global1.x, global1.x), ~1i, u_input.b.x >> (33562u % 32u))), global1.x, func_1(u_input.b.x, vec4<i32>(u_input.b.x, ~1i, u_input.b.x, u_input.b.x), !vec4<bool>(var_0, select(var_0, true, var_0), true != var_0, var_0)));
    var var_2 = Struct_1(!select(var_1.d, vec4<bool>(any(vec3<bool>(var_1.d.x, true, var_0)), true, true, true), select(vec4<bool>(var_1.d.x, var_0, true, var_1.d.x), func_1(-1i, var_1.b, vec4<bool>(false, var_1.d.x, var_1.d.x, var_1.d.x)), vec4<bool>(true, true, var_1.d.x, false))), 4294967295u);
    var_2 = Struct_1(vec4<bool>(false, false, any(vec2<bool>(var_2.a.x && var_0, false)), !var_0), var_2.b);
    var_2 = Struct_1(select(select(var_1.d, vec4<bool>(true, var_0, true, var_1.d.x), var_2.a), var_1.d, !all(vec2<bool>(true, true))), 4294967295u);
    var var_3 = Struct_1(!vec4<bool>(!var_2.a.x, false, !var_1.d.x, var_1.d.x), _wgslsmith_mod_u32(var_2.b, ~(~u_input.a.x)));
    let var_4 = Struct_1(select(var_1.d, vec4<bool>(!var_1.d.x, true || !var_2.a.x, !(!var_2.a.x), !(!var_1.d.x)), true), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_3.b), vec2<u32>(var_2.b, 1u << (var_3.b % 32u)))));
    var var_5 = Struct_1(!var_4.a, ~(~(u_input.a.x & 0u) ^ 3676u));
    let x = u_input.a;
    s_output = StorageBuffer(74084u << (_wgslsmith_clamp_u32(_wgslsmith_add_u32(~var_3.b, var_4.b), _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 4294967295u), ~0u), max(4294967295u, var_2.b)) % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-230f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_div_f32(161f, 410f))), -585f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, global0.x, var_1.a.x) + _wgslsmith_f_op_vec3_f32(-var_1.a.xyy)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, global0.x)))), firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, global1.x, var_1.b.x, 2147483647i) << (vec4<u32>(var_5.b, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u)), var_1.b | vec4<i32>(22088i, global1.x, 27155i, u_input.b.x), ~var_1.b), vec4<i32>(select(36464i, 10900i, var_3.a.x), 30012i, u_input.b.x, ~u_input.b.x))), _wgslsmith_sub_vec4_u32(min(u_input.a | firstLeadingBit(u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_3.b, var_3.b, 0u) ^ vec4<u32>(var_2.b, u_input.a.x, var_4.b, 7497u), vec4<u32>(var_3.b, 4294967295u, 15110u, var_5.b))), abs(vec4<u32>(abs(1u), _wgslsmith_div_u32(var_4.b, 1u), 0u, 0u))));
}

