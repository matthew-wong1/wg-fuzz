struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<f32>) -> bool {
    var var_0 = ~(~_wgslsmith_clamp_i32(2147483647i, _wgslsmith_add_i32(11902i, 50053i) & min(2147483647i, u_input.a.x), u_input.a.x ^ u_input.b));
    var var_1 = abs(vec2<i32>(-1i) * -(u_input.a << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, 66097u)) % vec2<u32>(32u))));
    var_1 = vec2<i32>(u_input.a.x | -30364i, _wgslsmith_clamp_i32(abs(~_wgslsmith_mod_i32(18101i, u_input.a.x)), var_1.x, 10939i));
    var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a.x, -1i), min(_wgslsmith_sub_i32(-17918i, 0i), -26121i), 0i)), abs(_wgslsmith_clamp_vec2_i32(~(-u_input.a), abs(u_input.a) << (select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, u_input.c), vec2<bool>(true, true)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i) >> (vec2<u32>(33537u, u_input.c) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, 31614i))))));
    var var_2 = !(true & (_wgslsmith_f_op_f32(-arg_2.x) <= 301f));
    return !arg_0;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_3) -> u32 {
    var var_0 = arg_0.zx;
    var var_1 = Struct_3(Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, var_0.x))), 86469i), vec4<bool>(select(arg_2.a.b.x, arg_2.b.b.x, arg_2.a.b.x) || select(false, arg_2.a.b.x, arg_2.a.b.x), true, true, (71286u <= arg_1) | all(vec3<bool>(arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x))), Struct_1((arg_2.b.a.c | arg_2.b.a.c) >> (~1u % 32u), _wgslsmith_f_op_f32(abs(arg_0.x)), 1i)), Struct_2(arg_2.a.c, vec4<bool>(all(vec4<bool>(false, true, arg_2.a.b.x, arg_2.b.b.x)), true, arg_1 < u_input.c, func_3(true, true, vec2<f32>(-1366f, -1337f)) | arg_2.a.b.x), arg_2.b.c));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, arg_2.b.a.b)));
    var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.xx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_2.b.c.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_2.a.a.b))))), vec2<f32>(_wgslsmith_f_op_f32(arg_2.a.a.b - _wgslsmith_f_op_f32(-var_1.a.c.b)), var_0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(arg_0.yz, vec2<f32>(arg_2.b.c.b, var_0.x), vec2<bool>(var_1.a.b.x, var_1.a.b.x))), vec2<f32>(137f, -268f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(804f, arg_0.x), arg_0.yx))), arg_0.xz, arg_2.b.b.x))));
    var_1 = arg_2;
    return arg_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(arg_1, select(vec4<bool>(arg_1.b > 1273f, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false))), false), arg_1), Struct_2(arg_1, vec4<bool>(true, true, true, true), Struct_1(abs(i32(-1i) * -20992i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-arg_1.b)), 0i)));
    var_0 = Struct_3(Struct_2(arg_1, select(select(select(vec4<bool>(false, false, var_0.b.b.x, false), var_0.a.b, var_0.a.b), !var_0.a.b, all(vec2<bool>(false, true))), !vec4<bool>(true, false, var_0.a.b.x, false), !(var_0.a.b.x && var_0.b.b.x)), Struct_1(abs(max(var_0.a.a.c, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(841f * arg_1.b)), 2147483647i)), Struct_2(Struct_1(2147483647i, arg_1.b, arg_1.a), vec4<bool>(true, !all(var_0.a.b), all(!var_0.b.b.zw), select(all(vec2<bool>(true, var_0.a.b.x)), false, false)), Struct_1(arg_1.a, arg_1.b, _wgslsmith_mult_i32(12609i, -1i))));
    var var_1 = u_input.c;
    let var_2 = var_0.b.c.c;
    var_1 = ~u_input.c;
    return var_0.a.c;
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    var var_0 = vec2<bool>(true, true && (u_input.b != ~(~0i)));
    let var_1 = arg_0;
    let var_2 = 4294967295u;
    let var_3 = firstTrailingBit(~(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(49709u, u_input.c, arg_1), vec3<u32>(var_2, u_input.c, arg_1)), vec3<u32>(4294967295u, 26485u, var_2))));
    let var_4 = Struct_2(func_4(vec3<u32>(_wgslsmith_sub_u32(u_input.c | 0u, var_3.x & 56053u), func_2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1, arg_0, arg_0))), abs(var_3.x), Struct_3(Struct_2(Struct_1(u_input.b, arg_0, 0i), vec4<bool>(true, true, var_0.x, false), Struct_1(2147483647i, 153f, 18954i)), Struct_2(Struct_1(-31873i, var_1, -13478i), vec4<bool>(false, true, true, true), Struct_1(u_input.b, var_1, -56635i)))), _wgslsmith_sub_u32(23522u, _wgslsmith_dot_vec4_u32(vec4<u32>(5860u, 5557u, var_3.x, var_3.x), vec4<u32>(var_2, 2823u, 3339u, 4294967295u)))), Struct_1(-13129i, -1418f, 18793i)), !vec4<bool>(var_0.x, all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, var_0.x, false), var_0.x)), true, 88088u < arg_1), func_4(_wgslsmith_sub_vec3_u32(~vec3<u32>(38100u, arg_1, u_input.c), vec3<u32>(62855u, 0u, 0u)) >> ((~var_3 >> (_wgslsmith_sub_vec3_u32(var_3, vec3<u32>(36876u, var_3.x, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)), func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(var_2, 0u, u_input.c), var_3), Struct_1(~u_input.b, arg_0, 0i))));
    return _wgslsmith_add_u32(var_3.x, 716u);
}

fn func_5(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(1453f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1048f * -146f))))));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~0u ^ (u_input.c << (4294967295u % 32u)), _wgslsmith_div_u32(func_2(vec3<f32>(448f, -771f, -476f), 1u, Struct_3(Struct_2(Struct_1(u_input.b, -751f, u_input.b), vec4<bool>(false, false, true, true), Struct_1(1i, 486f, -2147483647i)), Struct_2(Struct_1(u_input.a.x, 405f, u_input.a.x), vec4<bool>(true, false, false, true), Struct_1(-9656i, -1079f, -9668i)))), _wgslsmith_sub_u32(arg_0.x, u_input.c))), _wgslsmith_mult_vec2_u32(arg_0, (vec2<u32>(arg_0.x, 4294967295u) >> (vec2<u32>(35535u, u_input.c) % vec2<u32>(32u))) << ((vec2<u32>(u_input.c, 21460u) >> (vec2<u32>(arg_0.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)))) | ~arg_0;
    return Struct_1(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(877f - _wgslsmith_f_op_f32(sign(748f)))))), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 45940u, u_input.c, 17606u), vec4<u32>(u_input.c, u_input.c, u_input.c, 3663u)), ~vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c))), _wgslsmith_mult_u32(func_1(464f, 1u), ~12621u)));
    var var_1 = select(vec2<bool>(false, !(u_input.c <= 4294967295u)), vec2<bool>(false, var_0.b <= _wgslsmith_f_op_f32(select(-1593f, -181f, u_input.c != 64750u))), vec2<bool>(true, select(any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))), true)));
    let var_2 = Struct_3(Struct_2(var_0, select(vec4<bool>(true, var_1.x, var_1.x, false), select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x), true), vec4<bool>(false, var_1.x, var_1.x, false)), true), func_4(_wgslsmith_clamp_vec3_u32(~vec3<u32>(31526u, 48663u, u_input.c), ~vec3<u32>(u_input.c, 0u, 61914u), _wgslsmith_sub_vec3_u32(vec3<u32>(19605u, u_input.c, u_input.c), vec3<u32>(u_input.c, 4294967295u, 0u))), var_0)), Struct_2(var_0, vec4<bool>(reverseBits(-1i) <= var_0.a, var_1.x | true, all(vec2<bool>(var_1.x, true)), true), Struct_1(~abs(28229i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 498f) - _wgslsmith_f_op_f32(f32(-1f) * -241f)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, var_0.a), u_input.a))));
    let var_3 = ~u_input.a.x;
    var_1 = !(!(!select(var_2.b.b.wz, !vec2<bool>(true, var_2.b.b.x), all(var_2.b.b.yyw))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~_wgslsmith_div_u32(21030u, u_input.c), ~u_input.c, 1u, _wgslsmith_mod_u32(1u, ~u_input.c)), abs(countOneBits(-2147483647i)), 53349u, ~((~vec3<u32>(1u, 4294967295u, 28061u) | vec3<u32>(u_input.c, 21473u, 0u)) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 14604u, 1u), vec3<u32>(0u, 68342u, 0u))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(76577i, var_4.b.a.a, 1i), vec3<i32>(var_4.a.a.a, -2147483647i, var_2.a.a.c)), vec3<i32>(var_4.a.a.a, var_4.b.a.a, 0i)), vec3<i32>(var_3, -34456i, _wgslsmith_add_i32(36827i, u_input.a.x))), -reverseBits(vec3<i32>(-50022i, u_input.a.x, var_0.c))));
}

