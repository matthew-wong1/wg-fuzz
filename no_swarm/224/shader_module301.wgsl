struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1078f, 1i, vec2<i32>(-1i, 2147483647i), true, vec4<i32>(2147483647i, 2147483647i, 33810i, 0i));

var<private> global1: u32 = 4294967295u;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> bool {
    global2 = vec4<bool>(any(arg_1) || any(vec4<bool>(arg_1.x, arg_1.x, global0.d, any(vec2<bool>(arg_1.x, true)))), arg_1.x, all(!select(!vec3<bool>(global0.d, global0.d, global2.x), vec3<bool>(global2.x, arg_1.x, true), false)), (abs(2147483647i) | (firstLeadingBit(arg_0.b) ^ global0.e.x)) < (min(~2147483647i, 0i) ^ (-global0.b & 0i)));
    let var_0 = _wgslsmith_div_i32(arg_0.b, -62806i << (_wgslsmith_add_u32(15656u, countOneBits(12896u) | min(u_input.c, u_input.c)) % 32u));
    var var_1 = ~select(max(vec4<u32>(arg_3.x, arg_3.x, ~10568u, abs(arg_3.x)), vec4<u32>(~arg_3.x, ~4294967295u, ~64327u, min(64560u, u_input.a.x))), vec4<u32>(~(u_input.c | 27982u), min(~u_input.c, arg_3.x << (u_input.a.x % 32u)), ~33975u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x, 1u), vec2<u32>(29292u, 1u)))), select(!vec4<bool>(arg_0.d, arg_0.d, false, arg_0.d), select(!vec4<bool>(arg_0.d, arg_0.d, false, arg_1.x), vec4<bool>(true, global2.x, false, true), vec4<bool>(global2.x, arg_1.x, global0.d, true)), !arg_0.d));
    let var_2 = true;
    var var_3 = var_0;
    return arg_1.x & any(!select(arg_1, vec2<bool>(arg_1.x, global0.d), vec2<bool>(true, true)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-235f)))))) * _wgslsmith_f_op_f32(arg_1.a - -2404f));
    global1 = 0u;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-298f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(arg_0.x, var_0))) + _wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(arg_0 * arg_0))))));
    let var_2 = arg_1;
    global2 = vec4<bool>(all(!vec3<bool>(false, true, !global2.x)), func_3(Struct_1(_wgslsmith_f_op_f32(round(arg_0.x)), abs(arg_1.e.x ^ 0i), ~(-var_2.c), false, abs(min(global0.e, arg_1.e))), select(select(vec2<bool>(var_2.d, true), vec2<bool>(global0.d, false), !global2.xz), select(global2.zy, global2.yx, var_1.x == var_1.x), arg_1.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a, global0.a, 972f), vec3<f32>(arg_1.a, arg_0.x, var_1.x), global2.wwz))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, global0.a, 1751f) + vec3<f32>(-340f, var_2.a, var_2.a))), ~(~min(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(75232u, 64969u, u_input.a.x)))), global0.d, true);
    return _wgslsmith_dot_vec3_i32(abs(arg_1.e.xyx), abs(~arg_1.e.wzw));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_1 {
    global2 = vec4<bool>(arg_0.d, false, any(select(select(!vec3<bool>(global0.d, arg_0.d, false), arg_3, global2.zyz), !select(global2.xyz, vec3<bool>(arg_3.x, global0.d, global0.d), true), true)), false);
    let var_0 = reverseBits(~(~4294967295u));
    let var_1 = Struct_1(global0.a, _wgslsmith_mult_i32(select(1i, arg_0.b, select(true, true, all(vec2<bool>(false, arg_0.d)))), 4722i), _wgslsmith_mult_vec2_i32(countOneBits(-global0.e.yy), ~global0.e.wz), arg_0.d, -arg_0.e);
    let var_2 = -arg_2;
    global2 = vec4<bool>(var_1.d, all(vec3<bool>(true, !(!var_1.d), _wgslsmith_f_op_f32(trunc(var_1.a)) < _wgslsmith_f_op_f32(ceil(-1062f)))), all(!(!select(vec4<bool>(true, arg_0.d, false, arg_3.x), vec4<bool>(true, false, arg_0.d, false), vec4<bool>(false, true, global0.d, global2.x)))), !(20670u < abs(firstTrailingBit(31055u))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)))), var_1.b, _wgslsmith_clamp_vec2_i32(-(~min(vec2<i32>(var_2.x, -1i), vec2<i32>(var_1.c.x, arg_2.x))), _wgslsmith_add_vec2_i32(arg_2.yy, ~var_2.yz), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), arg_0.c), i32(-1i) * -38447i), abs(vec2<i32>(u_input.b, global0.c.x)) >> (vec2<u32>(var_0, 9766u) % vec2<u32>(32u)))), global0.d && (4294967295u != select(_wgslsmith_div_u32(var_0, u_input.c), select(79403u, 1u, var_1.d), true)), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(var_2.x, -var_1.e.x, max(global0.c.x, var_2.x), ~arg_2.x)), select(var_1.e, _wgslsmith_sub_vec4_i32(~var_1.e, vec4<i32>(12846i, 2147483647i, -53261i, 32268i) & global0.e), vec4<bool>(select(var_1.d, var_1.d, arg_3.x), true, var_1.d && true, true))));
}

fn func_1(arg_0: i32, arg_1: f32) -> vec3<bool> {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(638f - _wgslsmith_f_op_f32(-global0.a)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1565f - global0.a) + arg_1)), _wgslsmith_mod_i32(arg_0, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-840f, 1761f, arg_1)), Struct_1(2232f, u_input.b, global0.c, global2.x, vec4<i32>(-2147483647i, u_input.b, arg_0, global0.e.x)))), countOneBits(vec2<i32>(_wgslsmith_sub_i32(49237i, 0i), -u_input.b)), global2.x, reverseBits(_wgslsmith_mod_vec4_i32(select(vec4<i32>(arg_0, 0i, 22385i, u_input.b), vec4<i32>(arg_0, global0.b, 27304i, 34404i), false), reverseBits(vec4<i32>(global0.c.x, 18009i, global0.e.x, arg_0))))), u_input.a.x > 1u, vec3<i32>(-1i) * -max(global0.e.zyy, global0.e.wxz), global2.yyy);
    var var_1 = _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(trunc(func_4(func_4(var_0, global2.x & global2.x, ~vec3<i32>(-52401i, u_input.b, u_input.b), vec3<bool>(true, true, false)), true, global0.e.yzw, global2.xyy).a)));
    global0 = Struct_1(_wgslsmith_f_op_f32(var_0.a + var_0.a), max(23072i, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(min(1i, ~(-1i)), ~(~global0.c.x)), var_0.c << (~(u_input.a & vec2<u32>(u_input.c, 0u)) % vec2<u32>(32u))), u_input.a.x <= _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(u_input.c << (u_input.a.x % 32u), 1u)), ~global0.e);
    let var_2 = !vec3<bool>(!all(!global2.xyx), firstLeadingBit(abs(var_0.c.x)) != -1i, global2.x);
    let var_3 = Struct_1(932f, var_0.e.x, -_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(30408i, var_0.e.x) | var_0.c), -vec2<i32>(u_input.b, -77976i) & _wgslsmith_add_vec2_i32(vec2<i32>(-4814i, arg_0), vec2<i32>(25979i, var_0.b))), var_2.x, vec4<i32>(abs(arg_0), u_input.b, var_0.e.x, countOneBits(abs(-80694i))));
    return vec3<bool>(true, var_3.a >= _wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(-1499f * 661f)), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(~_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b, 2042i), _wgslsmith_clamp_i32(global0.e.x, 2147483647i, -1i)), global0.a);
    let var_1 = vec2<i32>(-2147483647i, ~(-2147483647i));
    global1 = 9654u;
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f + 1083f)), u_input.b, vec2<i32>(-55589i >> (_wgslsmith_sub_u32(~25601u, u_input.a.x) % 32u), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 286f, global0.a) * vec3<f32>(-1032f, global0.a, global0.a))), Struct_1(global0.a, i32(-1i) * -1156i, abs(vec2<i32>(-4457i, u_input.b)), global2.x, -vec4<i32>(1i, global0.b, -1i, var_1.x)))), ((global0.d || true) & true) || true, -global0.e);
    let var_2 = -global0.e.yyx;
    var var_3 = _wgslsmith_f_op_f32(global0.a * 1147f);
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a + -1218f), 211f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a + global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)))), global0.a, -482f);
    global0 = func_4(func_4(func_4(Struct_1(var_4.x, func_4(Struct_1(var_4.x, var_1.x, vec2<i32>(global0.e.x, 0i), var_0.x, global0.e), global0.d, vec3<i32>(var_2.x, -1i, u_input.b), global2.yxy).c.x, firstTrailingBit(vec2<i32>(-24502i, -11223i)), true, vec4<i32>(50515i, -2147483647i, u_input.b, var_1.x)), any(vec3<bool>(global0.d, true, false)), countOneBits(vec3<i32>(u_input.b, u_input.b, 56305i)), !(!global2.zyz)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1025u, 1836u, u_input.c), 57206u, ~7712u) <= _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x), _wgslsmith_div_vec4_u32(vec4<u32>(25088u, 34807u, 84870u, 24796u), vec4<u32>(u_input.a.x, 67872u, 0u, u_input.c))), vec3<i32>(~(~var_1.x), 2147483647i, global0.c.x), !global2.www), true, global0.e.yxz, global2.yzx);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 20381i), vec2<i32>(-2147483647i, var_2.x))), ~_wgslsmith_div_i32(_wgslsmith_mult_i32(-14796i, global0.c.x), -9499i >> (u_input.c % 32u))), var_4.wz);
}

