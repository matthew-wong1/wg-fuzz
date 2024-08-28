struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_1.a.x;
    let var_1 = vec2<bool>(true, arg_2.x);
    var var_2 = ~vec4<u32>(1u, var_0, u_input.c, countOneBits(_wgslsmith_dot_vec2_u32(arg_1.a << (arg_1.a % vec2<u32>(32u)), countOneBits(arg_1.a))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1122f)), -1320f), _wgslsmith_f_op_f32(f32(-1f) * -460f)))));
    let var_4 = -arg_3.wwy;
    return Struct_1(arg_1.a, arg_3.yyx);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> bool {
    var var_0 = 35814u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 + vec3<f32>(arg_2.x, arg_2.x, arg_2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(227f, 1145f, -389f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 514f, -358f)))));
    let var_2 = select(select(vec2<bool>(false, false), select(vec2<bool>(true, any(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), false), any(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), true))), select(vec2<bool>(true, true), vec2<bool>(!any(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, true, true))), vec2<bool>(select(-1i == arg_1, true, all(vec2<bool>(false, false))), true)), false);
    global0 = abs(func_2(var_2.x, func_2(!var_2.x, Struct_1(arg_0.a, vec3<i32>(u_input.a, -2348i, 32677i)), select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(false, false, true, false), vec4<bool>(var_2.x, var_2.x, var_2.x, false)), vec4<i32>(arg_0.b.x, -38153i, 16613i, arg_1)), select(!vec4<bool>(false, var_2.x, false, var_2.x), !vec4<bool>(true, false, var_2.x, false), var_2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, -2716i, u_input.a, arg_0.b.x), vec4<i32>(arg_0.b.x, arg_1, arg_0.b.x, 90i)) ^ -vec4<i32>(-2147483647i, arg_0.b.x, -1i, 0i)).b.x) <= _wgslsmith_add_i32(arg_0.b.x & u_input.a, abs(arg_1));
    let var_3 = func_2(!(false && var_2.x), arg_0, vec4<bool>(true, var_2.x, true, all(select(select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, true), vec4<bool>(false, false, true, true)), !vec4<bool>(var_2.x, var_2.x, false, var_2.x), true))), vec4<i32>(_wgslsmith_div_i32(46023i, -_wgslsmith_mult_i32(arg_1, 0i)), 0i, -firstTrailingBit(-31700i) << (u_input.b % 32u), arg_1));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    global0 = true;
    let var_0 = Struct_1(vec2<u32>(u_input.c, _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(arg_1.a.x, 4294967295u), 1u, u_input.b)), arg_1.b);
    var var_1 = 69963i;
    let var_2 = var_0;
    let var_3 = func_2(all(vec4<bool>(true, all(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), !all(vec3<bool>(arg_0, true, arg_0)), true)), Struct_1(arg_1.a, abs(vec3<i32>(~var_2.b.x, -arg_1.b.x, 1i))), vec4<bool>(!arg_0, arg_0, true, 1f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(593f))))), vec4<i32>(1i, arg_1.b.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(countOneBits(-2147483647i), select(arg_1.b.x, -15093i, arg_0)), var_2.b.x), select(1i, u_input.a, false))).b;
    return ~vec3<u32>(var_0.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(var_0.a), countOneBits(vec2<u32>(u_input.c, 1u))), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.a.x, 32533u), vec2<u32>(34671u, 1u), var_2.a), arg_1.a)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(50394u, u_input.c, 14364u, 13769u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_2.a.x, u_input.b, 0u), select(vec4<u32>(u_input.b, 1u, 5470u, 0u), vec4<u32>(arg_1.a.x, 1u, 0u, 0u), false))));
}

fn func_5(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = !vec2<bool>(true, (all(vec2<bool>(false, true)) | true) || true);
    var var_1 = func_2(var_0.x, Struct_1(arg_1.zy, countOneBits(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(arg_0, 2147483647i, u_input.a)), abs(vec3<i32>(1i, arg_0, -2147483647i))))), select(!select(select(vec4<bool>(var_0.x, false, false, true), vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false)), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), select(select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, true, false, var_0.x), var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, var_0.x, true, true), var_0.x)), vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<bool>(!(true != var_0.x), true, !select(var_0.x, true, var_0.x), true)), -(~(-(vec4<i32>(arg_0, -2147483647i, arg_0, u_input.a) >> (vec4<u32>(u_input.c, u_input.b, u_input.c, arg_1.x) % vec4<u32>(32u))))));
    let var_2 = arg_0;
    var_0 = vec2<bool>(_wgslsmith_sub_u32(arg_1.x, ~func_4(var_0.x, Struct_1(arg_1.yz, vec3<i32>(7394i, var_1.b.x, var_1.b.x))).x) <= min(u_input.b, arg_1.x), false && (arg_1.x <= min(0u, firstTrailingBit(u_input.b))));
    let var_3 = func_2(any(select(select(select(vec3<bool>(false, true, false), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(true, true, true), !vec3<bool>(var_0.x, true, var_0.x))), func_2(true, Struct_1(select(vec2<u32>(u_input.c, 12395u), ~vec2<u32>(arg_1.x, u_input.c), !vec2<bool>(false, var_0.x)), var_1.b), !vec4<bool>(true, true, var_0.x, all(vec4<bool>(var_0.x, false, var_0.x, var_0.x))), vec4<i32>(~var_1.b.x | var_1.b.x, -(-2147483647i >> (1u % 32u)), var_2, _wgslsmith_mult_i32(var_2, 1i))), vec4<bool>(true, !var_0.x, !(_wgslsmith_f_op_f32(f32(-1f) * -379f) <= _wgslsmith_f_op_f32(select(-1213f, 146f, var_0.x))), true), vec4<i32>(~2147483647i, _wgslsmith_mult_i32(-69075i, 19877i), 15115i, -29397i));
    return Struct_1(firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(~u_input.c, u_input.c), ~(~25129u))), var_1.b);
}

fn func_1() -> vec2<u32> {
    let var_0 = func_5(u_input.a, func_4(func_3(func_2(false, Struct_1(vec2<u32>(72673u, u_input.c), vec3<i32>(u_input.a, 1i, u_input.a)), vec4<bool>(true, false, false, true), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-640f, 393f, 1000f))) & true, func_2(true, Struct_1(firstLeadingBit(vec2<u32>(0u, u_input.c)), select(vec3<i32>(u_input.a, u_input.a, -9705i), vec3<i32>(-16823i, u_input.a, 1i), false)), vec4<bool>(u_input.a >= u_input.a, all(vec3<bool>(true, false, false)), false, true), -(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i) | vec4<i32>(37535i, u_input.a, u_input.a, -15613i)))));
    let var_1 = Struct_1(countOneBits(vec2<u32>(var_0.a.x, 18823u)), _wgslsmith_add_vec3_i32(func_2(u_input.b >= 4294967295u, var_0, vec4<bool>(false, false, false, true), vec4<i32>(u_input.a, u_input.a, 1i, 2147483647i) | vec4<i32>(u_input.a, u_input.a, u_input.a, -21608i)).b, -firstTrailingBit(var_0.b)) & -var_0.b);
    var var_2 = select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), true), vec2<bool>(true, all(vec3<bool>(true, false, false)) || true), !select(vec2<bool>(false, false), vec2<bool>(true, true), true)), select(select(vec2<bool>(false, func_3(Struct_1(var_0.a, var_1.b), var_1.b.x, vec3<f32>(-722f, 872f, -1177f))), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), (1u << (var_1.a.x % 32u)) != 63829u), !vec2<bool>(true, all(vec3<bool>(true, true, false))), false), true);
    let var_3 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.a, select(var_0.a, var_1.a, !vec2<bool>(false, var_2.x))), _wgslsmith_sub_vec2_u32(~var_1.a, reverseBits(var_0.a)) >> (var_0.a % vec2<u32>(32u)));
    var var_4 = var_1.b.x;
    return _wgslsmith_add_vec2_u32(vec2<u32>(6977u, _wgslsmith_mod_u32(var_3.x, ~var_0.a.x >> (10802u % 32u))), ~vec2<u32>(var_1.a.x, ~(53981u & var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(select(vec4<bool>(u_input.b > 0u, all(vec2<bool>(true, false)), true, u_input.b > 1u), vec4<bool>(false, all(vec4<bool>(false, false, true, false)), true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var var_1 = Struct_1(func_1(), _wgslsmith_add_vec3_i32(select(abs(reverseBits(vec3<i32>(1i, u_input.a, u_input.a))), vec3<i32>(u_input.a, -11056i, -5399i), !(!var_0)), ~((vec3<i32>(-2147483647i, 2147483647i, u_input.a) ^ vec3<i32>(u_input.a, -21227i, u_input.a)) << (countOneBits(vec3<u32>(u_input.c, u_input.b, u_input.b)) % vec3<u32>(32u)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1896f, 299f, var_0)), _wgslsmith_f_op_f32(max(143f, -970f)), true)))), 1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-596f, -137f)))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1328f, 793f, false)), _wgslsmith_f_op_f32(f32(-1f) * -140f)), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1348f)))))));
    let var_3 = func_5(u_input.a, vec3<u32>(u_input.b, u_input.c, firstTrailingBit(u_input.c)));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 2510f, var_2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, -640f) - vec3<f32>(var_2.x, var_2.x, var_2.x))))));
    let var_4 = func_5(firstTrailingBit(_wgslsmith_add_i32(-1i, i32(-1i) * -2147483647i)), ~func_4(any(select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, var_0, var_0, var_0), false)), Struct_1(vec2<u32>(var_3.a.x, 52028u), var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<i32>(var_3.b.x & 25642i, var_3.b.x & 38959i, var_4.b.x & -2147483647i)) & vec3<i32>(var_4.b.x ^ (var_4.b.x | 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, -1i, u_input.a, var_1.b.x), -vec4<i32>(-1i, var_1.b.x, var_3.b.x, -25206i)), -34517i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), -u_input.a, ~(-vec4<i32>(var_3.b.x, u_input.a, -2147483647i, -6482i) | (_wgslsmith_div_vec4_i32(vec4<i32>(19375i, u_input.a, -42369i, 0i), vec4<i32>(var_3.b.x, -19990i, 1i, var_4.b.x)) ^ -vec4<i32>(var_3.b.x, 1i, var_1.b.x, 0i))), reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_4.b.x, u_input.a, 2147483647i, var_3.b.x), vec4<i32>(28868i, var_1.b.x, 0i, -29667i), false), _wgslsmith_clamp_vec4_i32(vec4<i32>(-70209i, 1i, 827i, -635i), vec4<i32>(51883i, 1i, -1i, var_4.b.x), vec4<i32>(var_3.b.x, var_4.b.x, -2147483647i, var_4.b.x))), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(1i, var_3.b.x, u_input.a, 1i)), vec4<i32>(14020i, u_input.a, var_4.b.x, -2147483647i) | vec4<i32>(u_input.a, u_input.a, var_3.b.x, -2147483647i)), min(vec4<i32>(-12675i, -1i, -1i, -26016i) & vec4<i32>(var_3.b.x, 21762i, var_1.b.x, var_3.b.x), vec4<i32>(-4788i, 2147483647i, -44434i, var_4.b.x)))));
}

