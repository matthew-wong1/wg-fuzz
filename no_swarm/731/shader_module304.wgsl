struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = !vec3<bool>(any(!select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, true), true)), arg_1, arg_1);
    var var_1 = vec4<i32>(0i, 1i, -(-arg_0.a.x ^ arg_0.c), firstLeadingBit(2147483647i) | _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 7156i), arg_0.a), ~5978i)) << (_wgslsmith_div_vec4_u32(vec4<u32>(~1u, 4294967295u, ~_wgslsmith_div_u32(38132u, 58222u), firstLeadingBit(18163u)), vec4<u32>(min(firstLeadingBit(29858u), abs(27824u)), ~(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), 1u)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_mod_vec2_u32(countOneBits(~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(18556u, 0u), vec2<u32>(4783u, 0u), vec2<u32>(818u, 53032u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(65034u, 28413u), vec2<u32>(0u, 26829u), vec2<u32>(0u, 32998u)), var_0.zz)), ~vec2<u32>(1u, ~45647u));
    var var_3 = !(arg_1 && (true & any(var_0.xz)));
    var var_4 = select(vec4<bool>(true, false, false, true), vec4<bool>(true, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-820f + -714f) * _wgslsmith_f_op_f32(arg_0.b.x + 119f)) < 432f, !(!all(vec2<bool>(var_0.x, true)))), !(!(!var_0.x)));
    return 1i;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    return Struct_1(firstLeadingBit(vec2<i32>(1i, func_3(Struct_1(vec2<i32>(-2147483647i, u_input.a), vec3<f32>(arg_0.x, 140f, arg_0.x), u_input.a), true))), arg_0, ~_wgslsmith_mult_i32(u_input.a, ~u_input.a));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_3(func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1429f, arg_0, _wgslsmith_f_op_f32(arg_0 * 470f))))), Struct_1(vec2<i32>(2147483647i, (i32(-1i) * -2147483647i) >> (max(4294967295u, arg_2.x) % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1000f, 404f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1440f, arg_0, -290f))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 126f, arg_0)), 1i), _wgslsmith_sub_u32(~(~firstTrailingBit(4294967295u)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, 1u), 49436u, arg_1.x, _wgslsmith_clamp_u32(57043u, arg_1.x, 70188u)), vec4<u32>(arg_2.x, _wgslsmith_sub_u32(34282u, arg_2.x), _wgslsmith_mod_u32(arg_1.x, arg_1.x), ~4294967295u))), ~_wgslsmith_mult_i32(u_input.a, -22350i) == -(i32(-1i) * -u_input.a), !(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))));
    let var_1 = select(select(~(~(~vec3<u32>(arg_1.x, var_0.c, var_0.c))), _wgslsmith_div_vec3_u32(arg_1, arg_1), false), ~_wgslsmith_mult_vec3_u32(arg_1, arg_1), vec3<bool>(!select(var_0.d, var_0.d, var_0.e.x), false, var_0.d));
    var var_2 = vec3<u32>(var_0.c, _wgslsmith_clamp_u32(var_1.x, ~arg_1.x, _wgslsmith_dot_vec3_u32(~arg_1, select(~var_1, ~vec3<u32>(var_1.x, 3530u, 23938u), vec3<bool>(false, false, true)))), arg_2.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0)))));
    var_2 = firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, 19457u), vec2<u32>(0u, var_0.c)) << (min(arg_1.x, arg_1.x) % 32u), ~abs(24353u), 0u));
    return var_0.a;
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(vec2<i32>(35757i, -22237i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b * arg_0.b))), _wgslsmith_clamp_i32(firstLeadingBit(1115i), ~(~1772i), _wgslsmith_div_i32(-1i, 1i))));
    let var_1 = select(!(!vec4<bool>(true, arg_0.a.x > arg_0.a.x, any(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, false, false, false)))), vec4<bool>(true, select(true, true, true), false, true), vec4<bool>(select(true, true, false), true, all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))))));
    let var_2 = !(!var_1.x && true);
    var_0 = Struct_2(arg_0);
    let var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)), countOneBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 1u, 42516u), vec3<u32>(1u, 1u, firstTrailingBit(1u)))), vec2<u32>(~1u, ~(~_wgslsmith_add_u32(1u, 35270u))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(1u, 36170u, _wgslsmith_dot_vec2_u32(~countOneBits(~vec2<u32>(60815u, 2678u)), ~select(vec2<u32>(1u, 1u), ~vec2<u32>(42655u, 73658u), true)), countOneBits(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(28314u, 44371u), 4294967295u, 4294967295u)) ^ (func_4(func_1(160f, vec3<u32>(4294967295u, 1u, 39604u), vec2<u32>(16934u, 1u))) >> (35252u % 32u)));
    let var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~var_0.yxw >> (vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(32u)), var_0.zww | ~vec3<u32>(var_0.x, var_0.x, 4294967295u)), vec3<u32>(_wgslsmith_add_u32(4294967295u, var_0.x), reverseBits(var_0.x), 1u)), reverseBits(~var_0.ywy), var_0.xxy);
    let var_2 = true;
    var var_3 = ~var_1;
    var var_4 = any(vec4<bool>(var_2, true, true, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec3<f32>(-109f, -344f, -641f)).b.xz + vec2<f32>(1326f, 1000f))), countOneBits(~vec2<i32>(select(-3624i, u_input.a, var_2), 9470i >> (var_3.x % 32u))));
}

