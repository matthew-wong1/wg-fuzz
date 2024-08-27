struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = !(!(!select(global0.a.zz, global0.a.zz, any(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))));
    global0 = Struct_1(!(!select(vec3<bool>(var_0.x, global0.a.x, false), global0.a, global0.a)));
    var var_1 = Struct_3(vec3<u32>(abs(~u_input.b.x & u_input.b.x), u_input.b.x, 14228u), ~(~(vec4<u32>(28801u, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<u32>(1u, u_input.c.x, u_input.b.x, u_input.b.x)) | _wgslsmith_mult_vec4_u32(max(vec4<u32>(u_input.c.x, u_input.c.x, 36218u, u_input.c.x), vec4<u32>(u_input.b.x, 1u, 26134u, 0u)), reverseBits(vec4<u32>(4294967295u, 1u, u_input.c.x, 40846u)))), ~27489u, var_0.x, Struct_1(!select(vec3<bool>(global0.a.x, false, false), global0.a, select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, global0.a.x, var_0.x), global0.a))));
    var_0 = global0.a.zx;
    var var_2 = Struct_5(vec4<i32>(-_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), -vec3<i32>(1i, 2147483647i, -15944i)), firstLeadingBit(_wgslsmith_div_i32(~(-64204i), ~u_input.a)), ~(-1i), u_input.a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1540f, 1000f, -353f) * vec3<f32>(-669f, 929f, -595f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1970f, -1910f, -187f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(567f, -1167f, -356f) * vec3<f32>(-483f, 1201f, -273f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-615f, -1000f, -1132f) + vec3<f32>(-604f, -1983f, -1141f))))))), _wgslsmith_sub_i32(max(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), min(vec4<i32>(u_input.a, 4585i, u_input.a, -8729i), vec4<i32>(-26053i, u_input.a, u_input.a, -19476i))), countOneBits(-1i)), -40775i), var_1.e, Struct_4(~u_input.a, Struct_2(select(select(vec4<bool>(var_1.e.a.x, true, global0.a.x, var_0.x), vec4<bool>(var_1.e.a.x, var_0.x, var_0.x, var_1.e.a.x), vec4<bool>(var_0.x, var_1.d, true, false)), select(vec4<bool>(global0.a.x, var_0.x, var_1.e.a.x, var_1.e.a.x), vec4<bool>(var_0.x, true, false, global0.a.x), var_1.d), vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(-932f - -1000f)), global0.a.zz));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2.b.yx)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, var_2.e.b.b) * var_2.b.yz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b.x, var_2.e.b.b), var_2.b.xy))))) - var_2.b.yx);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_5) -> vec4<u32> {
    var var_0 = ~vec4<u32>(~29569u, _wgslsmith_mod_u32(19546u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 42573u, 4294967295u, u_input.b.x), vec4<u32>(1u, 4294967295u, 1u, 32382u)), ~u_input.c.x)), firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(93813u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(35984u, u_input.c.x, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.c.x, 1u, 18166u, u_input.b.x)), select(vec4<u32>(56766u, u_input.b.x, 4880u, 1u) << (vec4<u32>(21921u, 23448u, u_input.b.x, 46440u) % vec4<u32>(32u)), ~vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.b.x), any(global0.a.zy))));
    global0 = Struct_1(select(arg_1.a, !global0.a, all(select(!vec2<bool>(arg_1.a.x, arg_2.e.b.a.x), vec2<bool>(arg_2.e.c.x, true), vec2<bool>(global0.a.x, arg_2.e.c.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.e.b.b, arg_2.e.b.b, -812f, -840f) * vec4<f32>(811f, arg_2.b.x, -967f, -564f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, arg_2.b.x, arg_0.x, -1000f), vec4<f32>(arg_2.b.x, arg_0.x, arg_0.x, 285f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.b.x, 437f, 2022f, 262f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-476f, arg_0.x, arg_0.x, 1000f)) * vec4<f32>(arg_2.e.b.b, 1000f, -359f, _wgslsmith_div_f32(-305f, arg_0.x)))))));
    var_0 = vec4<u32>(u_input.c.x, 0u, _wgslsmith_add_u32(min(firstTrailingBit(75283u), min(0u, var_0.x)), var_0.x) ^ 8248u, 25108u);
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(735f, -397f, _wgslsmith_f_op_f32(f32(-1f) * -1293f), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(round(-365f))))), vec4<f32>(_wgslsmith_div_f32(627f, arg_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.b.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.e.b.b - _wgslsmith_f_op_f32(var_1.x * -967f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(674f, var_1.x))))), select(all(global0.a), all(arg_2.e.b.a.zyz), false)));
    return select(_wgslsmith_sub_vec4_u32(~vec4<u32>(558u, ~0u, firstLeadingBit(13362u), 4294967295u), ~abs(vec4<u32>(4294967295u, u_input.c.x, 10201u, var_0.x) & vec4<u32>(1u, u_input.c.x, 53938u, var_0.x))), ~abs(vec4<u32>(var_0.x, _wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(1u, var_0.x), u_input.b.x)), true);
}

fn func_2() -> i32 {
    var var_0 = Struct_1(select(!(!vec3<bool>(true, true, global0.a.x)), !global0.a, true));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(func_4(_wgslsmith_f_op_vec2_f32(func_3()), Struct_1(vec3<bool>(true, var_0.a.x, global0.a.x)), Struct_5(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec3<f32>(-669f, 488f, -810f), u_input.a, Struct_1(vec3<bool>(false, var_0.a.x, global0.a.x)), Struct_4(u_input.a, Struct_2(vec4<bool>(var_0.a.x, var_0.a.x, true, global0.a.x), 1000f), vec2<bool>(false, false)))), vec4<u32>(0u, 50583u, 1u, u_input.b.x) & _wgslsmith_add_vec4_u32(vec4<u32>(13769u, 47514u, u_input.b.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b.x))), 1u) > select(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, u_input.c.x)), vec2<u32>(34276u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.b.x))), min(1u, 66116u), true);
    let var_2 = Struct_3(vec3<u32>(u_input.b.x, ~11526u, max(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 11629u), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u))), ~4294967295u)), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, 25811u) & vec4<u32>(u_input.c.x, u_input.c.x, 8587u, 4294967295u), ~vec4<u32>(4294967295u, 6842u, u_input.b.x, u_input.b.x)), reverseBits(vec4<u32>(4294967295u >> (u_input.c.x % 32u), ~u_input.c.x, 1u, 13024u ^ u_input.b.x))), ~(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-748f, 1000f)), Struct_1(vec3<bool>(true, true, var_0.a.x)), Struct_5(vec4<i32>(0i, -45378i, u_input.a, u_input.a), vec3<f32>(1075f, 789f, -354f), u_input.a, Struct_1(vec3<bool>(false, var_1, var_1)), Struct_4(u_input.a, Struct_2(vec4<bool>(var_1, true, global0.a.x, false), -1000f), var_0.a.yz))).x | ~abs(0u)), 1u == u_input.b.x, Struct_1(select(vec3<bool>(select(true, false, true), 4294967295u > u_input.b.x, false), global0.a, !(!var_1))));
    global0 = var_2.e;
    var var_3 = Struct_4(-2452i, Struct_2(vec4<bool>(false, var_2.d, all(!var_2.e.a), !var_0.a.x), _wgslsmith_f_op_vec2_f32(func_3()).x), !(!select(!global0.a.xz, vec2<bool>(var_0.a.x, true), true)));
    return var_3.a;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(max(vec4<i32>(func_2(), u_input.a | u_input.a, -40271i, u_input.a), vec4<i32>(-1310i, -1i, firstLeadingBit(u_input.a), ~2147483647i)), vec4<i32>(2147483647i, 61048i, u_input.a, reverseBits(2147483647i) << (_wgslsmith_mult_u32(u_input.c.x, 0u) % 32u))), max(-2147483647i ^ u_input.a, -1i));
    var_0 = -2147483647i;
    var var_1 = select(vec4<bool>(global0.a.x, !all(!vec3<bool>(true, global0.a.x, global0.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1187f)), _wgslsmith_f_op_f32(1000f + 1260f)) >= _wgslsmith_f_op_f32(trunc(-304f)), !(!global0.a.x && any(vec4<bool>(global0.a.x, true, true, global0.a.x)))), select(!select(vec4<bool>(true, global0.a.x, global0.a.x, true), !vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), select(vec4<bool>(false, global0.a.x, global0.a.x, true), vec4<bool>(global0.a.x, true, true, global0.a.x), vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x))), vec4<bool>(select(u_input.b.x == 12798u, true, !global0.a.x), any(select(vec4<bool>(false, global0.a.x, global0.a.x, true), vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x), vec4<bool>(false, true, global0.a.x, true))), true, all(global0.a)), all(vec4<bool>(global0.a.x, !global0.a.x, true, any(vec4<bool>(true, global0.a.x, false, global0.a.x))))), true);
    var_1 = select(vec4<bool>(global0.a.x, ~u_input.c.x <= u_input.b.x, -1i <= (~u_input.a ^ u_input.a), select(true, true, var_1.x)), vec4<bool>(all(vec4<bool>(true, !var_1.x, select(false, var_1.x, var_1.x), -1i < u_input.a)), true, false, global0.a.x), select(vec4<bool>(global0.a.x, all(vec4<bool>(global0.a.x, var_1.x, var_1.x, true)), false, global0.a.x), select(select(!vec4<bool>(global0.a.x, global0.a.x, var_1.x, true), !vec4<bool>(false, global0.a.x, global0.a.x, var_1.x), !vec4<bool>(false, false, true, global0.a.x)), select(vec4<bool>(global0.a.x, false, false, false), select(vec4<bool>(true, global0.a.x, var_1.x, global0.a.x), vec4<bool>(false, var_1.x, var_1.x, global0.a.x), vec4<bool>(var_1.x, var_1.x, true, true)), vec4<bool>(false, var_1.x, global0.a.x, true)), global0.a.x), var_1.x));
    global0 = Struct_1(vec3<bool>(true, true, true));
    return Struct_1(!(!(!global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!vec3<bool>(true, 17765u >= u_input.b.x, true));
    global0 = func_1();
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-(u_input.a ^ ~u_input.a), max(~(~(-1i)), _wgslsmith_mod_i32(u_input.a, 19616i))), min(vec2<i32>(u_input.a, ~u_input.a), ~(-vec2<i32>(u_input.a, 7409i))) | ~vec2<i32>(_wgslsmith_add_i32(1i, -39473i), 2147483647i));
    var var_1 = Struct_5(select(~vec4<i32>(u_input.a, 55265i, -5214i, 13052i) >> (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 67506u, 55511u, 100020u), vec4<u32>(u_input.c.x, u_input.b.x, u_input.c.x, 4294967295u))) % vec4<u32>(32u)), -vec4<i32>(-1i, 33973i, var_0.x, -2147483647i) | select(-vec4<i32>(7567i, u_input.a, -2147483647i, -4825i), countOneBits(vec4<i32>(u_input.a, var_0.x, var_0.x, 10975i)), !global0.a.x), !select(vec4<bool>(global0.a.x, global0.a.x, true, global0.a.x), select(vec4<bool>(global0.a.x, false, global0.a.x, true), vec4<bool>(false, false, global0.a.x, global0.a.x), vec4<bool>(global0.a.x, false, false, true)), !global0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1527f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1481f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-228f - -1425f)))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-129f, 1000f))), -1215f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1564f, 586f))))), -_wgslsmith_mod_i32(-67726i, select(_wgslsmith_mult_i32(-2147483647i, u_input.a), u_input.a, true)), Struct_1(vec3<bool>(any(global0.a.xy), !(var_0.x != -2147483647i), !all(global0.a))), Struct_4(abs(-2147483647i), Struct_2(vec4<bool>(all(vec2<bool>(false, true)), !global0.a.x, true, any(vec2<bool>(true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))), vec2<bool>(all(vec2<bool>(global0.a.x, global0.a.x)), global0.a.x)));
    var var_2 = 1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x));
    let var_3 = Struct_5(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.a << (48213u % 32u), 34821i, -1i, _wgslsmith_dot_vec4_i32(var_1.a, var_1.a))), select(var_1.a, -var_1.a, var_1.e.b.a), _wgslsmith_clamp_vec4_i32(var_1.a, vec4<i32>(2147483647i, var_0.x, var_0.x, -1i) >> (vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 9224u) % vec4<u32>(32u)), -vec4<i32>(var_1.e.a, u_input.a, var_1.a.x, -42250i)) | vec4<i32>(var_1.e.a, firstTrailingBit(2147483647i), 0i, firstLeadingBit(26047i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-450f, var_1.e.b.b, _wgslsmith_f_op_f32(trunc(var_1.e.b.b))) + vec3<f32>(-721f, _wgslsmith_f_op_f32(trunc(2583f)), var_1.e.b.b))), max(var_1.e.a, 2147483647i), func_1(), Struct_4(-_wgslsmith_add_i32(var_1.c, u_input.a), Struct_2(var_1.e.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-770f - var_1.e.b.b))), vec2<bool>(any(!var_1.d.a.xy), global0.a.x)));
    var var_4 = Struct_4(-u_input.a, var_1.e.b, select(vec2<bool>(any(vec4<bool>(global0.a.x, var_3.d.a.x, var_1.d.a.x, false)), false), vec2<bool>(var_3.e.b.a.x, !all(vec2<bool>(var_1.d.a.x, true))), func_1().a.xy));
    var_1 = Struct_5(-(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.c, var_0.x, var_3.e.a, var_1.c), var_3.a, var_1.a) << (firstLeadingBit(vec4<u32>(1123u, 1u, 4294967295u, u_input.c.x)) % vec4<u32>(32u)))), var_1.b, -28814i, Struct_1(!func_1().a), Struct_4(firstTrailingBit(682i), Struct_2(vec4<bool>(var_4.c.x, select(global0.a.x, true, true), true, var_1.e.b.a.x), 303f), func_1().a.zy));
    let x = u_input.a;
    s_output = StorageBuffer(1u, 10861i);
}

