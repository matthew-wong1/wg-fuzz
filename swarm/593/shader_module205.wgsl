struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global0 = !select(select(vec2<bool>(global0.x, false && global0.x), select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), true), !vec2<bool>(global0.x, false), select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), false)), !select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), global0.x)), select(vec2<bool>(select(true, global0.x, global0.x), false), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), !global0.x), any(vec2<bool>(global0.x, global0.x))), global0.x);
    let var_0 = -_wgslsmith_mod_vec3_i32(reverseBits(min(firstTrailingBit(vec3<i32>(-1i, u_input.a, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, -1i), vec3<i32>(43151i, u_input.a, 52789i)))), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, u_input.a, 15625i), vec3<i32>(u_input.a, 0i, -9737i))) & _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -34880i, 1944i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -19417i, -2147483647i), vec3<i32>(11883i, u_input.a, -2147483647i))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(571f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-644f)))), !(!global0.x))), -1159f)), true, vec2<bool>(true, select(true & global0.x, !all(vec3<bool>(global0.x, true, true)), !all(vec3<bool>(true, true, global0.x)))));
    var var_2 = var_1;
    let var_3 = var_0;
    return true;
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -702f)))), all(vec4<bool>(true, func_3(), true, global0.x)), select(!vec2<bool>(true, global0.x), !(!vec2<bool>(true, global0.x)), all(!vec2<bool>(false, global0.x))));
    global0 = !select(select(vec2<bool>(var_0.a >= -1000f, any(vec4<bool>(var_0.c.x, global0.x, var_0.b, false))), select(!vec2<bool>(var_0.b, false), !vec2<bool>(var_0.b, true), var_0.c), false), vec2<bool>(func_3(), true), !(!select(var_0.c, vec2<bool>(true, false), false)));
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(34389u, 40377u, 18267u)), abs(vec3<u32>(1628u, 1u, 0u)))), 1u, 1u, 1u), min(max(vec4<u32>(~22645u, ~45197u, 4294967295u, 1u), min(vec4<u32>(9890u, 4294967295u, 0u, 59609u), vec4<u32>(1u, 1u, 1u, 1u))), max(vec4<u32>(_wgslsmith_mult_u32(1u, 1u), abs(0u), firstTrailingBit(0u), ~14492u), abs(vec4<u32>(1u, 1u, 1u, 1u)))));
    var var_2 = -countOneBits(countOneBits(max(countOneBits(0i), u_input.a ^ u_input.a)));
    var_2 = u_input.a;
    return !(true == all(vec4<bool>(global0.x, !var_0.c.x, var_0.c.x, true)));
}

fn func_1(arg_0: bool) -> vec2<bool> {
    global0 = !(!(!(!(!vec2<bool>(true, global0.x)))));
    let var_0 = Struct_1(1f, _wgslsmith_dot_vec2_i32(firstTrailingBit(~vec2<i32>(-10976i, u_input.a)), abs(~vec2<i32>(1i, u_input.a))) != u_input.a, !vec2<bool>(func_2(), global0.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.a))), vec2<f32>(_wgslsmith_f_op_f32(var_0.a + var_0.a), 202f))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-541f, 1274f), vec2<f32>(-401f, -1926f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a))))));
    let var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(~41406u, ~1069u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(57892u, 0u)), _wgslsmith_add_u32(4294967295u, 0u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(65316u, 40221u, 41263u, 1u), vec4<u32>(~1u, ~15780u, _wgslsmith_clamp_u32(71427u, 0u, 30393u), 4294967295u)), max(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(1u, 0u, 4294967295u, 4294967295u)))), reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(51113u, 4294967295u), vec2<u32>(4294967295u, 40630u))), ~_wgslsmith_mod_u32(4294967295u, 27309u), ~max(0u, 48974u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), abs(vec2<u32>(1098u, 4294967295u))))));
    let var_3 = true;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec2<bool>(!any(vec2<bool>(true, global0.x)) | global0.x, global0.x & (any(vec4<bool>(true, global0.x, false, true)) & global0.x));
    let var_0 = true;
    var var_1 = vec2<u32>(1u, 50310u) & ~select(~vec2<u32>(0u, 26387u), vec2<u32>(~1u, ~4294967295u), vec2<bool>(!global0.x, true));
    var var_2 = vec2<u32>(33619u, _wgslsmith_div_u32(var_1.x, 15127u));
    let var_3 = global0.x;
    var_1 = countOneBits(select(~(~vec2<u32>(4294967295u, 85520u)) & select(~vec2<u32>(var_1.x, 32021u), reverseBits(vec2<u32>(21923u, 1u)), vec2<bool>(true, false)), ~abs(vec2<u32>(var_2.x, var_1.x) ^ vec2<u32>(var_2.x, 5154u)), !(!func_1(var_0))));
    var var_4 = _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-21737i, u_input.a, -1i, -20988i), vec4<i32>(u_input.a, u_input.a, -5693i, u_input.a))), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a)) << (_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_1.x, var_1.x, var_2.x, var_2.x) | firstLeadingBit(vec4<u32>(var_2.x, 35800u, var_1.x, 79273u))), countOneBits(min(~vec4<u32>(var_2.x, var_1.x, 59237u, var_2.x), vec4<u32>(4294967295u, 4294967295u, var_2.x, var_2.x))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_2.x, 1u, var_2.x), vec4<u32>(var_1.x, var_1.x, 0u, 1u)))) % vec4<u32>(32u));
    var var_5 = reverseBits(vec3<i32>(49593i, abs(_wgslsmith_dot_vec3_i32(abs(var_4.zzw), vec3<i32>(var_4.x, u_input.a, -27689i))), abs(~u_input.a ^ var_4.x)));
    var_4 = ~(_wgslsmith_mult_vec4_i32(select(vec4<i32>(var_5.x, u_input.a, u_input.a, 0i), vec4<i32>(45949i, -7004i, u_input.a, 2147483647i), vec4<bool>(false, true, global0.x, var_0)) ^ vec4<i32>(-1i, -5372i, 1i, 80504i), ~vec4<i32>(var_5.x, 39032i, var_5.x, var_5.x) ^ vec4<i32>(-2854i, var_5.x, 0i, -14139i)) ^ _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(551i, var_4.x, -2147483647i, 2147483647i), select(vec4<i32>(u_input.a, -34186i, 9725i, var_5.x), vec4<i32>(-7025i, -2147483647i, var_4.x, var_4.x), true)), ~vec4<i32>(u_input.a, var_4.x, var_4.x, var_4.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1546f, 819f, 3653f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(121f, 679f, -1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-100f, 1472f, 1739f) + vec3<f32>(-584f, 165f, -1030f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 1531f, 1000f))))))), ~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, var_1.x), vec2<u32>(var_2.x, var_2.x) | vec2<u32>(33997u, 4294967295u))));
}

