struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 - arg_0))), 481f)))), ~u_input.a.x >= 26670u, -(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(143i, arg_1, 0i), vec3<i32>(arg_1, 0i, -162i))), vec2<u32>(56397u, max(_wgslsmith_clamp_u32(69754u, ~15068u, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 0u))));
    var_0 = Struct_1(arg_0, false, -(~(~(~vec3<i32>(arg_1, -50607i, arg_1)))), vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(~4294967295u, ~23898u), 0u)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -783f)) * _wgslsmith_f_op_f32(arg_0 + arg_0)), var_0.a, false)), var_0.b, Struct_3(Struct_2(var_0.c, Struct_1(_wgslsmith_f_op_f32(-arg_0), !var_0.b, select(vec3<i32>(-2147483647i, -34998i, arg_1), var_0.c, vec3<bool>(var_0.b, var_0.b, true)), ~vec2<u32>(var_0.d.x, 1u)), Struct_1(_wgslsmith_f_op_f32(-arg_0), any(vec4<bool>(true, false, false, var_0.b)), var_0.c, var_0.d), var_0.c.x, select(select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, var_0.b)), vec2<bool>(var_0.b, var_0.b), select(vec2<bool>(true, var_0.b), vec2<bool>(true, true), true))), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(~1u, var_0.d.x, ~41013u))));
    var_1 = Struct_4(var_1.a, arg_1 == 0i, Struct_3(var_1.c.a, u_input.a));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -345f), true, Struct_3(Struct_2(~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, -5814i), vec3<i32>(-29345i, var_0.c.x, -32005i)), Struct_1(_wgslsmith_f_op_f32(-arg_0), var_1.c.a.b.b, var_1.c.a.c.c, abs(var_1.c.a.b.d)), var_1.c.a.c, _wgslsmith_sub_i32(var_1.c.a.c.c.x, 4572i), !(!vec2<bool>(var_0.b, true))), vec3<u32>(~(~var_0.d.x), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.c.a.c.d.x), var_1.c.b.yz))));
    return var_2.c.a.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec4<bool> {
    let var_0 = Struct_5(Struct_2(_wgslsmith_div_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.c.x, arg_0.x, arg_1.c.x), arg_0), arg_1.c), arg_1, arg_1, -2674i, select(select(vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.b, arg_1.b), select(vec2<bool>(false, arg_1.b), vec2<bool>(true, true), vec2<bool>(arg_1.b, arg_1.b))), vec2<bool>(arg_1.b, all(vec2<bool>(arg_1.b, arg_1.b))), 1u < _wgslsmith_div_u32(1u, arg_2))), 0u >> (abs(arg_2) % 32u), Struct_1(619f, false, abs(arg_0), firstTrailingBit(vec2<u32>(arg_3, u_input.a.x))));
    var var_1 = Struct_1(-1192f, select(true, true, true), select(arg_0, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 21807i, var_0.c.c.x), -var_0.a.c.c) << (~u_input.a % vec3<u32>(32u)), any(select(select(vec4<bool>(false, true, arg_1.b, true), vec4<bool>(arg_1.b, false, true, false), vec4<bool>(arg_1.b, arg_1.b, true, var_0.c.b)), vec4<bool>(true, true, true, true), arg_1.b))), _wgslsmith_sub_vec2_u32(~max(vec2<u32>(arg_1.d.x, u_input.a.x), arg_1.d) & ~(~vec2<u32>(arg_3, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d.x, 32791u), vec2<u32>(var_0.c.d.x, arg_2) << (abs(var_0.a.c.d) % vec2<u32>(32u)))));
    var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.a.c.a, -930f)), var_0.c.a), true))), 1i | arg_0.x);
    var_1 = arg_1;
    var_1 = Struct_1(-929f, !arg_1.b, -_wgslsmith_sub_vec3_i32(~(-vec3<i32>(arg_1.c.x, var_0.c.c.x, arg_1.c.x)), ~(vec3<i32>(var_1.c.x, 16438i, var_0.c.c.x) << (vec3<u32>(arg_3, arg_1.d.x, arg_3) % vec3<u32>(32u)))), arg_1.d);
    return vec4<bool>(var_0.c.b, true, !arg_1.b, !var_0.c.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = select(vec4<bool>(false, arg_2.b, arg_2.b, !any(vec2<bool>(arg_2.b, false))), vec4<bool>(false, arg_1, true, any(func_3(arg_2.c, func_2(241f, arg_2.c.x), 1u, select(4294967295u, arg_2.d.x, arg_1)))), vec4<bool>(false, ~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) != ~arg_2.d.x, arg_2.b, true || arg_2.b));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-594f, -1251f, arg_2.a, -196f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, -2829f, -1141f, 1106f) - vec4<f32>(arg_2.a, 2338f, -309f, arg_2.a)), !vec4<bool>(var_0.x, false, arg_2.b, arg_1)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, -482f, 565f, 169f) - vec4<f32>(arg_2.a, arg_2.a, 211f, arg_2.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1887f, -129f, arg_2.a, -482f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(414f, arg_2.a, 602f, arg_2.a) - vec4<f32>(1358f, -146f, -225f, 307f)))))) * vec4<f32>(arg_2.a, arg_2.a, _wgslsmith_f_op_f32(-1173f * _wgslsmith_f_op_f32(floor(arg_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(370f, 1006f)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(func_2(arg_2.a, arg_0.x).a, _wgslsmith_div_f32(var_1.x, var_1.x)))))), ~(arg_2.c.x | (arg_2.c.x >> (u_input.a.x % 32u))) < arg_0.x, Struct_3(Struct_2(_wgslsmith_div_vec3_i32(arg_2.c & arg_2.c, arg_2.c), arg_2, Struct_1(_wgslsmith_f_op_f32(round(-1272f)), select(arg_2.b, arg_2.b, arg_2.b), arg_2.c, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(arg_2.d.x, 18058u))), arg_2.c.x, var_0.yw), _wgslsmith_div_vec3_u32(reverseBits(u_input.a), u_input.a)));
    var_0 = !select(vec4<bool>(!all(vec4<bool>(var_0.x, false, var_0.x, true)), false, true, true), func_3(vec3<i32>(_wgslsmith_div_i32(arg_2.c.x, 5016i), 2061i, reverseBits(-2147483647i)), Struct_1(_wgslsmith_f_op_f32(-var_1.x), !var_0.x, _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.c.a.a.x, arg_2.c.x, 0i), var_2.c.a.a), var_2.c.b.xx), arg_2.d.x, arg_2.d.x), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, var_2.c.b.x, 1u)) == ~(~u_input.a.x));
    var_0 = !vec4<bool>(func_2(301f, _wgslsmith_mult_i32(1i, 24709i)).b && (!var_0.x & false), false, !(_wgslsmith_f_op_f32(round(arg_2.a)) > _wgslsmith_f_op_f32(-var_2.a)), !var_0.x);
    return ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(arg_0.x, -55193i, var_2.c.a.b.c.x, 0i)), vec4<i32>(arg_2.c.x << (select(1u, arg_2.d.x, arg_1) % 32u), var_2.c.a.c.c.x, 0i ^ (var_2.c.a.b.c.x << (u_input.a.x % 32u)), arg_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_mod_i32(firstLeadingBit(~max(6132i, _wgslsmith_mult_i32(arg_0.c.c.x, arg_0.a.x))), _wgslsmith_div_i32(_wgslsmith_add_i32(~0i, -2147483647i), -2147483647i));
    let var_1 = Struct_3(arg_0, select(~(u_input.a | vec3<u32>(13844u, u_input.a.x, u_input.a.x)), vec3<u32>(0u, firstLeadingBit(1u), 66641u), false));
    var var_2 = var_1.b;
    var_2 = firstTrailingBit(countOneBits(select(select(var_1.b, ~var_1.b, vec3<bool>(true, false, arg_0.b.b)), u_input.a, var_1.a.b.b)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.a)))));
    return Struct_5(var_1.a, _wgslsmith_sub_u32(11752u, ~(686u >> (arg_0.c.d.x % 32u)) ^ ~(~arg_0.b.d.x)), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(vec3<i32>(1i, 36983i, func_1(_wgslsmith_add_vec2_i32(vec2<i32>(41912i, 2147483647i), vec2<i32>(-1i, -1i)), select(true, false, false), Struct_1(1057f, false, vec3<i32>(12315i, -11362i, 2147483647i), vec2<u32>(26187u, u_input.a.x)))), func_2(_wgslsmith_f_op_f32(f32(-1f) * -919f), -(~(-1i))), Struct_1(-452f, true, vec3<i32>(1i, 1i, 1i), u_input.a.zx), -2147483647i, select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true)), _wgslsmith_f_op_f32(489f + 1061f), select(select(vec2<bool>(select(false, true, false), false), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, ~28315u > reverseBits(u_input.a.x))));
    var_0 = Struct_5(func_4(Struct_2(-(~var_0.c.c), Struct_1(var_0.c.a, all(vec3<bool>(var_0.c.b, true, var_0.c.b)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.c.x, 38053i, var_0.a.b.c.x), vec3<i32>(1664i, -32835i, var_0.a.b.c.x)), ~var_0.c.d), var_0.a.b, var_0.c.c.x, !select(var_0.a.e, var_0.a.e, var_0.a.b.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.c.a))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(1040f)), !var_0.a.b.b))), !(!var_0.a.e)).a, 1u ^ abs(~37535u >> (func_4(Struct_2(var_0.a.b.c, Struct_1(var_0.c.a, true, var_0.c.c, vec2<u32>(20890u, 10536u)), var_0.a.c, 7002i, vec2<bool>(var_0.c.b, false)), -643f, var_0.a.e).b % 32u)), var_0.a.b);
    var_0 = func_4(Struct_2(countOneBits(-min(var_0.a.a, var_0.a.b.c)), Struct_1(-464f, true && var_0.c.b, firstLeadingBit(vec3<i32>(var_0.a.a.x, -25531i, var_0.a.a.x) & vec3<i32>(var_0.a.b.c.x, var_0.a.a.x, -2147483647i)), var_0.a.b.d), var_0.a.c, ~0i, !var_0.a.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a)), !(!var_0.a.e));
    var var_1 = Struct_4(-1235f, !(u_input.a.x < abs(abs(73532u))), Struct_3(Struct_2(abs(~var_0.c.c), Struct_1(-2130f, var_0.a.c.b, vec3<i32>(var_0.c.c.x, var_0.a.d, -29387i), min(vec2<u32>(u_input.a.x, var_0.b), vec2<u32>(24962u, u_input.a.x))), Struct_1(-324f, any(vec2<bool>(var_0.a.b.b, var_0.c.b)), var_0.c.c, vec2<u32>(var_0.a.b.d.x, u_input.a.x)), -15013i, var_0.a.e), ~u_input.a));
    var var_2 = var_0.a.b.c.x;
    var_0 = func_4(Struct_2(vec3<i32>(0i, 0i, ~_wgslsmith_div_i32(var_0.a.d, var_1.c.a.c.c.x)), func_2(_wgslsmith_f_op_f32(var_0.a.b.a - _wgslsmith_f_op_f32(-var_1.a)), max(func_2(var_1.c.a.c.a, var_0.a.c.c.x).c.x, var_1.c.a.c.c.x)), var_0.c, 1i, func_3(min(~var_1.c.a.c.c, vec3<i32>(-5950i, var_1.c.a.b.c.x, 100i)), func_2(var_0.a.c.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.a.d, var_0.a.a.x, var_0.c.c.x), vec3<i32>(var_1.c.a.a.x, -2147483647i, var_1.c.a.c.c.x))), reverseBits(~1u), 51539u).zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(abs(var_0.c.a)))), func_3(vec3<i32>(22309i, -(-2147483647i ^ var_0.c.c.x), var_1.c.a.d), var_0.a.c, 50104u, 3545u << (var_1.c.a.c.d.x % 32u)).xx);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1.c.b.x >> (~(var_0.b >> (4294967295u % 32u)) % 32u)), -firstTrailingBit(~vec4<i32>(var_0.a.d, -1i, 2147483647i, -23357i)) | _wgslsmith_add_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(var_0.c.c.x, 13470i, var_1.c.a.d, 0i))), select(vec4<i32>(-1684i, 1i, 0i, 2147483647i), vec4<i32>(var_1.c.a.a.x, var_0.c.c.x, 0i, var_1.c.a.d), vec4<bool>(var_1.c.a.b.b, var_0.c.b, var_1.c.a.b.b, true)) ^ -vec4<i32>(-1i, -2147483647i, 2507i, var_0.c.c.x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(515f, _wgslsmith_f_op_f32(var_1.c.a.b.a - var_0.c.a)), 675f), -904f)), func_4(func_4(Struct_2(vec3<i32>(var_1.c.a.d, -11044i, -36793i), func_2(var_1.c.a.b.a, var_0.a.b.c.x), Struct_1(-2183f, false, var_1.c.a.c.c, var_0.c.d), ~0i, var_0.a.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c.a.b.a)) - _wgslsmith_f_op_f32(f32(-1f) * -1055f)), var_1.c.a.e).a, func_4(func_4(Struct_2(vec3<i32>(var_0.a.a.x, -1i, 0i), var_0.a.c, var_1.c.a.b, var_0.a.b.c.x, var_1.c.a.e), var_0.c.a, var_1.c.a.e).a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.a))), func_4(Struct_2(var_0.c.c, Struct_1(1144f, true, var_0.c.c, vec2<u32>(1u, u_input.a.x)), Struct_1(var_1.a, var_0.a.c.b, var_0.c.c, var_0.a.c.d), var_0.c.c.x, var_1.c.a.e), _wgslsmith_f_op_f32(295f * var_0.c.a), func_4(Struct_2(var_1.c.a.c.c, Struct_1(var_0.c.a, true, vec3<i32>(var_1.c.a.b.c.x, var_1.c.a.d, var_0.a.c.c.x), u_input.a.xy), var_1.c.a.c, var_0.c.c.x, var_1.c.a.e), 767f, vec2<bool>(true, false)).a.e).a.e).a.c.a, var_0.a.e).a.c.c);
}

