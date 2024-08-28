struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec3<i32>) -> f32 {
    var var_0 = vec4<i32>(-(2147483647i >> (1u % 32u)) >> (arg_2.a % 32u), min(~(1i << (u_input.e.x % 32u)), abs(arg_2.c.d)), arg_3.x, countOneBits(-2147483647i));
    return arg_1.b.x;
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1052f)) - _wgslsmith_f_op_f32(f32(-1f) * -595f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(577f + 1764f)))), -226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-997f + -1411f)) - _wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, true), Struct_4(u_input.a.x, vec4<f32>(-286f, -561f, 1939f, 785f), Struct_1(vec2<bool>(true, false), u_input.c.x, vec3<u32>(29472u, u_input.a.x, 9780u), u_input.d.x, 20346u)), Struct_4(1u, vec4<f32>(-1185f, -469f, 356f, -445f), Struct_1(vec2<bool>(true, false), 2147483647i, u_input.a, u_input.c.x, 0u)), vec3<i32>(u_input.d.x, u_input.c.x, -2147483647i)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, false), Struct_4(28238u, vec4<f32>(391f, -1103f, 1004f, -899f), Struct_1(vec2<bool>(true, false), u_input.d.x, u_input.e.wzy, u_input.d.x, u_input.e.x)), Struct_4(1u, vec4<f32>(-1799f, -534f, -128f, 1542f), Struct_1(vec2<bool>(true, true), u_input.c.x, u_input.b, -8968i, 52978u)), u_input.d))))));
    let var_1 = _wgslsmith_sub_vec4_i32(-_wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.d.x, -31642i, u_input.d.x, u_input.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 0i, u_input.d.x), vec4<i32>(u_input.c.x, u_input.d.x, u_input.c.x, u_input.d.x))), -vec4<i32>(u_input.c.x, u_input.d.x, u_input.c.x, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -14899i, -2564i, u_input.c.x), max(vec4<i32>(u_input.d.x, 1i, 31157i, u_input.d.x), vec4<i32>(u_input.d.x, -1i, u_input.c.x, u_input.d.x))), 1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -1i, u_input.c.x), u_input.d), 0i), countOneBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.d.x, 53688i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c.x)))));
    var var_2 = Struct_1(!vec2<bool>(!all(vec4<bool>(false, true, true, true)), true), var_1.x, u_input.a, 8923i, select(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(18746u, 1u, u_input.b.x), u_input.a) | ~56237u, _wgslsmith_add_u32(_wgslsmith_mod_u32(77757u, u_input.a.x), 46992u)), ~1u, true));
    let var_3 = abs(abs(~(_wgslsmith_div_i32(2147483647i, var_1.x) & 0i)));
    var_2 = Struct_1(vec2<bool>(true, all(select(select(vec4<bool>(false, var_2.a.x, true, false), vec4<bool>(var_2.a.x, var_2.a.x, false, false), vec4<bool>(var_2.a.x, true, true, true)), vec4<bool>(true, true, var_2.a.x, var_2.a.x), select(vec4<bool>(false, false, true, var_2.a.x), vec4<bool>(true, var_2.a.x, true, var_2.a.x), false)))), var_3, firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.e.xxx << (~vec3<u32>(u_input.a.x, 0u, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(30340u, 8430u, 20763u), ~vec3<u32>(u_input.b.x, var_2.c.x, 29300u)))), -select(var_1.x, ~(var_3 << (var_2.c.x % 32u)), !var_2.a.x), 25810u);
    return Struct_2(Struct_1(!var_2.a, abs(-24314i >> (~var_2.c.x % 32u)), var_2.c, select(max(-42651i, var_3) ^ -var_3, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_1, var_1), abs(vec4<i32>(-1i, -2147483647i, 11842i, 0i))), !(true || var_2.a.x)), ~21816u));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = u_input.d;
    var var_1 = arg_0;
    var var_2 = select(!(!vec4<bool>(true, func_2().a.a.x, all(vec4<bool>(var_1.a.a.x, false, arg_0.a.a.x, false)), arg_0.a.a.x)), vec4<bool>(true, true, !(!any(var_1.a.a)), func_2().a.a.x | true), true);
    var_2 = !vec4<bool>(true, true, false && (_wgslsmith_f_op_f32(sign(-874f)) <= _wgslsmith_div_f32(277f, 801f)), !((var_0.x << (66576u % 32u)) <= _wgslsmith_div_i32(-1221i, u_input.c.x)));
    var var_3 = Struct_1(select(var_1.a.a, var_2.zy, var_1.a.a), -var_0.x, min(var_1.a.c, vec3<u32>(var_1.a.e, ~_wgslsmith_add_u32(arg_0.a.c.x, 1u), 1u)), 0i, firstLeadingBit(~min(arg_0.a.e & 17315u, 0u)));
    return var_1.a;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_3(func_4(func_2()), Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec3<bool>(true, false, false))), _wgslsmith_div_i32(abs(u_input.d.x), _wgslsmith_mult_i32(1i, u_input.c.x)), u_input.a ^ u_input.e.xxw, 2147483647i, u_input.b.x)));
    var var_1 = _wgslsmith_sub_i32(func_4(Struct_2(func_2().a)).b, abs(var_0.b.a.d));
    let var_2 = Struct_1(var_0.a.a, 70460i, var_0.a.c, u_input.c.x, 5111u & _wgslsmith_div_u32(_wgslsmith_sub_u32(4933u, ~var_0.a.e), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.e.x, 27995u, var_0.a.c.x)), func_2().a.c)));
    let var_3 = ~(~(_wgslsmith_mult_u32(u_input.a.x, 0u) ^ ~var_2.c.x) ^ _wgslsmith_dot_vec2_u32(~var_2.c.zy, ~vec2<u32>(6927u, var_2.c.x) & ~vec2<u32>(78829u, 1659u)));
    let var_4 = vec4<bool>(true, var_2.a.x, func_4(func_2()).a.x, true);
    return func_2();
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<i32>) -> bool {
    let var_0 = Struct_3(func_4(Struct_2(func_1(vec2<f32>(arg_0.b.x, 1000f)).a)), func_2());
    let var_1 = arg_0;
    var var_2 = var_0.a.a;
    var_2 = !vec2<bool>(true, arg_0.c.a.x);
    let var_3 = 1i;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(true, any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), !select(true, true, true), select(true, func_5(Struct_4(u_input.b.x, vec4<f32>(1000f, -191f, 733f, 726f), Struct_1(vec2<bool>(true, false), u_input.c.x, vec3<u32>(u_input.a.x, 0u, u_input.b.x), -79659i, 91151u)), func_1(vec2<f32>(-818f, 611f)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, -27522i), vec2<i32>(u_input.d.x, u_input.c.x))), true));
    var_0 = !(!select(select(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, false, false), vec4<bool>(var_0.x, false, true, var_0.x)), vec4<bool>(var_0.x, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, true, var_0.x)), vec4<bool>(var_0.x, !var_0.x, all(vec4<bool>(false, var_0.x, true, false)), true), vec4<bool>(true, func_5(Struct_4(u_input.a.x, vec4<f32>(1843f, 932f, -1312f, -136f), Struct_1(vec2<bool>(var_0.x, true), -1i, u_input.a, u_input.c.x, 0u)), Struct_2(Struct_1(vec2<bool>(var_0.x, false), u_input.c.x, vec3<u32>(39259u, u_input.b.x, u_input.a.x), u_input.c.x, 0u)), vec2<i32>(-51262i, u_input.d.x)), true, true)));
    var var_1 = Struct_3(Struct_1(var_0.xz, func_2().a.b, u_input.e.ywx, (-2147483647i >> ((u_input.b.x & 32793u) % 32u)) << (~u_input.b.x % 32u), 1786u), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1060f, -935f) - vec2<f32>(1233f, -1206f)) - vec2<f32>(-658f, 454f))).a));
    let var_2 = _wgslsmith_add_u32(func_4(var_1.b).e, var_1.a.e);
    var_1 = Struct_3(func_2().a, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var var_3 = Struct_1(!func_2().a.a, ~(-reverseBits(-38107i)), select(~(~u_input.e.wxz), ~_wgslsmith_div_vec3_u32(u_input.a, u_input.b), var_0.xzw), -38831i, 18103u);
    var_3 = var_1.a;
    let var_4 = Struct_3(var_1.b.a, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(347f + -518f), _wgslsmith_div_f32(258f, 1145f)) + vec2<f32>(570f, _wgslsmith_div_f32(-151f, -807f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~u_input.c.x, _wgslsmith_mult_i32(func_4(Struct_2(Struct_1(var_1.a.a, -18185i, u_input.e.xxy, -8593i, u_input.e.x))).d, firstLeadingBit(~u_input.c.x)), -var_3.d), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_1.a.c.x, 9207u) | u_input.e.zxw, select(min(vec3<u32>(1u, var_3.c.x, 3662u), var_4.a.c), ~vec3<u32>(51824u, 4294967295u, 4294967295u), !var_4.b.a.a.x))));
}

