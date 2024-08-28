struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = select(select(vec4<bool>(false, true, true, !(!arg_3.e)), arg_2, vec4<bool>(arg_3.e, true, true, !any(arg_2))), vec4<bool>(!arg_2.x, false, arg_1.x | !all(vec3<bool>(false, arg_3.e, false)), !arg_1.x), arg_2);
    let var_1 = Struct_1(_wgslsmith_clamp_i32(i32(-1i) * -u_input.c, firstLeadingBit(arg_3.c) << (~1u % 32u), u_input.c));
    var var_2 = select(vec4<i32>(2147483647i, -2147483647i >> (~arg_3.a.x % 32u), _wgslsmith_div_i32(arg_3.c ^ -19672i, -arg_3.c), var_1.a), ~(~vec4<i32>(-1i, arg_3.c, 0i, 27474i)), !vec4<bool>(!arg_3.e, arg_3.e, arg_3.e != false, !arg_2.x)) ^ abs(vec4<i32>(-2147483647i, countOneBits(arg_3.c), -arg_3.c, var_1.a));
    var var_3 = Struct_2(~vec3<u32>(_wgslsmith_add_u32(arg_3.a.x, 4294967295u), abs(arg_3.a.x | arg_3.a.x), u_input.a.x), _wgslsmith_f_op_f32(ceil(518f)), abs(-43202i), arg_3.a, true);
    var var_4 = var_3.d.yx;
    return arg_0;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    var var_0 = Struct_1(u_input.c);
    var_0 = Struct_1(countOneBits(~(-(i32(-1i) * -25073i))));
    var_0 = Struct_1(4255i);
    var_0 = Struct_1(var_0.a);
    var var_1 = min(vec3<i32>(u_input.c, i32(-1i) * -u_input.c, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, u_input.c), vec2<i32>(var_0.a, arg_2)), 26276i | u_input.c)) ^ -reverseBits(func_3(vec3<i32>(u_input.c, -1i, -26863i), vec3<bool>(true, arg_1.x, arg_0), vec4<bool>(arg_1.x, arg_0, arg_1.x, false), Struct_2(vec3<u32>(u_input.a.x, 2440u, 0u), 1772f, 19379i, vec3<u32>(u_input.b, u_input.a.x, 0u), arg_0))), vec3<i32>(-arg_2, -20012i, var_0.a));
    return ~(~_wgslsmith_sub_u32(4294967295u, ~(u_input.a.x & u_input.a.x)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(vec3<u32>(_wgslsmith_clamp_u32(~arg_3.a.x & _wgslsmith_mult_u32(0u, arg_2), ~func_2(arg_3.e, vec3<bool>(arg_3.e, arg_0, arg_3.e), arg_3.c), 4294967295u), 47768u, 0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_3.b, -1600f)))), arg_3.b), ~_wgslsmith_div_i32(~u_input.c, _wgslsmith_mod_i32(u_input.c >> (u_input.b % 32u), 1i)), reverseBits(vec3<u32>(u_input.b, 4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(33512u, arg_2))) | max(select(arg_3.d, vec3<u32>(arg_2, 4294967295u, arg_2), vec3<bool>(arg_0, true, true)), vec3<u32>(1u, 30592u, arg_3.d.x))), arg_0);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-3344f)), arg_3.b)), arg_1))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, arg_3.b)))));
    var var_2 = select(select(select(!select(vec2<bool>(true, arg_0), vec2<bool>(true, true), true), !vec2<bool>(arg_3.e, false), vec2<bool>(true, arg_3.d.x < arg_3.a.x)), !(!(!vec2<bool>(var_0.e, false))), true), !vec2<bool>(arg_3.e, false), !all(vec2<bool>(var_0.e && true, true | var_0.e)));
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, ~_wgslsmith_div_i32(-u_input.c, -17612i)), -max(-vec2<i32>(-1i, u_input.c), -vec2<i32>(u_input.c, -1i)) & -_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 0i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, var_0.c), vec2<i32>(arg_3.c, arg_3.c))));
    var var_4 = arg_3;
    return arg_3;
}

fn func_4(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = Struct_1(u_input.c);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1353f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.b))) - -504f), arg_0.e)), _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(ceil(681f))));
    var var_2 = _wgslsmith_dot_vec3_i32(reverseBits(max(vec3<i32>(var_0.a, u_input.c, -2147483647i), ~vec3<i32>(1i, 1i, -2147483647i))) << (vec3<u32>(~abs(u_input.a.x), u_input.b, ~arg_0.a.x) % vec3<u32>(32u)), -vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(2516i, -10885i, 15710i), vec3<i32>(-48194i, 0i, u_input.c) | vec3<i32>(-21475i, 2147483647i, 1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, var_0.a, u_input.c), vec3<i32>(u_input.c, u_input.c, var_0.a)) | 17316i, func_1(arg_0.e, _wgslsmith_f_op_f32(f32(-1f) * -892f), _wgslsmith_add_u32(u_input.a.x, u_input.b), arg_0).c));
    var_2 = _wgslsmith_sub_i32(-min(abs(-arg_0.c), -_wgslsmith_sub_i32(var_0.a, arg_0.c)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a, u_input.c, arg_0.c), vec3<i32>(arg_0.c, 1i, -36959i)), vec3<i32>(2147483647i, -27453i, 1i) >> (arg_0.d % vec3<u32>(32u))), ~(~vec3<i32>(0i, 2147483647i, arg_0.c))), ~var_0.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(585f, var_1.x))) - arg_0.b), func_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2253f)), u_input.a.x, Struct_2(vec3<u32>(u_input.b, 11127u, 59070u), var_1.x, u_input.c, arg_0.a, true)).b, var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -621f), -512f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1207f, 507f, var_1.x)), vec4<f32>(var_1.x, arg_0.b, arg_0.b, 1005f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1086f, arg_0.b, -229f, var_1.x)))))))));
    return reverseBits(vec3<i32>(-29275i, -abs(arg_0.c), _wgslsmith_mod_i32(1i, 1i) << (~4294967295u % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(61770u, arg_1.a.x);
    var_0 = _wgslsmith_div_u32(~13623u, ~_wgslsmith_mult_u32(25367u, arg_1.a.x));
    var_0 = ~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), vec4<u32>(4294967295u, func_1(arg_1.e, arg_1.b, u_input.b, arg_1).d.x, 4294967295u, u_input.a.x)));
    let var_1 = Struct_1(2147483647i);
    let var_2 = arg_0;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(u_input.c), Struct_2(vec3<u32>(~(u_input.b >> (u_input.b % 32u)), u_input.a.x, ~u_input.a.x), 1147f, -2147483647i, ~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(82531u, u_input.a.x, u_input.b))), false), _wgslsmith_dot_vec3_i32(func_4(func_1(true, -1002f, max(30959u, 31726u), Struct_2(vec3<u32>(4294967295u, 3260u, u_input.b), 498f, u_input.c, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), false))), ~(~vec3<i32>(u_input.c, -1i, u_input.c)) ^ select(vec3<i32>(u_input.c, u_input.c, 0i), ~vec3<i32>(u_input.c, -5227i, u_input.c), any(vec2<bool>(true, true)))), false);
    var var_1 = !vec4<bool>(func_5(Struct_1(_wgslsmith_sub_i32(var_0.c, 1i)), var_0, i32(-1i) * -u_input.c, any(!vec4<bool>(false, var_0.e, false, false))).e, false, !(_wgslsmith_mod_u32(1u, var_0.d.x) < max(u_input.a.x, 14353u)), true);
    let var_2 = var_0.b;
    var_1 = !(!select(vec4<bool>(var_1.x, false, func_1(true, var_0.b, u_input.b, var_0).e, false), vec4<bool>(false, var_0.a.x != u_input.b, any(var_1.wyx), true), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, var_0.e), true)));
    var var_3 = ~4294967295u & ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.d.x, 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a.x, var_0.a.x, var_0.d.x, 0u), vec4<u32>(4294967295u, 1u, 1u, u_input.a.x)));
    let var_4 = min(var_0.c, ~8532i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32(~(vec4<u32>(28805u, var_0.d.x, 36342u, 24713u) & vec4<u32>(78392u, u_input.a.x, 0u, u_input.b)), vec4<u32>(7643u, u_input.a.x, _wgslsmith_mod_u32(var_0.d.x, var_0.a.x), _wgslsmith_dot_vec2_u32(var_0.a.zz, u_input.a)), ~(~vec4<u32>(0u, u_input.b, 28788u, u_input.a.x))), func_5(Struct_1(-2147483647i), Struct_2(~func_1(false, 2423f, 1u, var_0).a, 605f, 25464i, var_0.d, var_0.e), min(firstTrailingBit(0i) | var_0.c, 2147483647i), false).a.zx);
}

