struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3) -> bool {
    let var_0 = -(~((vec4<i32>(0i, 2147483647i, -39877i, 0i) | reverseBits(vec4<i32>(-2147483647i, 0i, u_input.d, u_input.a.x))) & abs(vec4<i32>(-45180i, u_input.a.x, u_input.d, arg_2.c.c.c.x) << (arg_1.e % vec4<u32>(32u)))));
    let var_1 = arg_2.b && arg_1.c;
    var var_2 = -max(max(_wgslsmith_sub_vec2_i32(var_0.wy, select(var_0.zw, vec2<i32>(-1i, arg_2.c.b.x), false)), _wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(24050i, arg_1.a.c.x))), vec2<i32>(1i, min(174i, -14158i)));
    let var_3 = ~3528u;
    var_2 = _wgslsmith_mod_vec2_i32(max(var_0.wz, -reverseBits(arg_2.c.b & vec2<i32>(var_2.x, arg_2.c.c.c.x))), arg_2.c.c.c);
    return !(arg_2.b || !all(select(vec2<bool>(true, arg_1.c), vec2<bool>(var_1, arg_1.c), vec2<bool>(true, false))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -19886i, u_input.d, countOneBits(arg_0.b.x), u_input.a.x), select(vec4<i32>(~(-15748i), 1i, -8102i, 1i), _wgslsmith_sub_vec4_i32(~vec4<i32>(4224i, -46767i, 6238i, 2147483647i), vec4<i32>(arg_2.c.x, -1i, -1i, u_input.d)), func_3(-1134f, Struct_4(arg_2, arg_1, arg_2.b.x, arg_0.a.a.x, vec4<u32>(u_input.c, u_input.b.x, arg_1, arg_1)), Struct_3(u_input.c, true, Struct_2(Struct_1(vec2<f32>(-492f, -662f), arg_2.b, vec2<i32>(-2682i, arg_0.a.c.x)), u_input.a, Struct_1(arg_0.a.a, arg_0.c.b, arg_2.c), 1u), u_input.b.x, -648f)))));
    var var_1 = firstTrailingBit(~(-2147483647i >> (arg_1 % 32u)));
    let var_2 = Struct_3(abs(~max(u_input.c, min(27026u, arg_1))), arg_2.b.x, arg_0, 14399u, _wgslsmith_f_op_f32(step(731f, -1000f)));
    var_1 = _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(var_2.c.c.c.x ^ -1i, select(~var_0.x, 50216i, !all(vec2<bool>(true, true)))));
    var var_3 = Struct_4(var_2.c.a, _wgslsmith_mult_u32(0u, ~(_wgslsmith_sub_u32(arg_1, 16720u) >> (4294967295u % 32u))), var_2.c.c.b.x, var_2.c.c.a.x, min(vec4<u32>(firstLeadingBit(var_2.c.d >> (86559u % 32u)), 1u, var_2.d, _wgslsmith_clamp_u32(~20919u, 1u, _wgslsmith_clamp_u32(arg_0.d, 52488u, 18857u))), vec4<u32>(u_input.c, ~(~4294967295u), ~_wgslsmith_div_u32(arg_0.d, 0u), min(var_2.d, arg_0.d))));
    return Struct_3(~(~arg_1) | 67541u, arg_2.b.x, var_2.c, firstLeadingBit(_wgslsmith_mult_u32(arg_1 ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 8626u, 1u, u_input.b.x), vec4<u32>(arg_1, 1u, 1u, arg_1)), max(countOneBits(29017u), max(var_2.c.d, var_3.b)))), var_2.c.a.a.x);
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> bool {
    var var_0 = arg_1.b;
    let var_1 = !(!arg_1.c.a.b.x);
    var_0 = all(vec3<bool>(any(!select(vec4<bool>(arg_1.b, true, var_1, var_1), vec4<bool>(arg_1.b, true, false, var_1), var_1)), true, true));
    var var_2 = arg_1.c.a;
    var var_3 = arg_1.e;
    return any(vec3<bool>(true, all(!select(vec3<bool>(var_2.b.x, arg_1.c.c.b.x, true), vec3<bool>(false, false, true), var_1)), true | var_1));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = func_2(func_2(func_2(func_2(func_2(Struct_2(arg_1, vec2<i32>(-48537i, arg_1.c.x), arg_1, u_input.b.x), 25737u, Struct_1(arg_1.a, vec2<bool>(arg_0, false), arg_1.c)).c, _wgslsmith_mod_u32(u_input.c, 1u), func_2(Struct_2(arg_1, vec2<i32>(u_input.a.x, arg_1.c.x), arg_1, u_input.c), u_input.b.x, Struct_1(arg_1.a, vec2<bool>(false, arg_0), arg_1.c)).c.c).c, u_input.c, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_1.a.x)), arg_1.b, ~arg_1.c)).c, (~32055u ^ u_input.c) ^ u_input.c, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_2) - vec2<f32>(1609f, arg_1.a.x)), vec2<f32>(arg_2, 695f)), arg_1.b, -(~vec2<i32>(-7126i, 32801i)))).c, reverseBits(37922u), Struct_1(_wgslsmith_f_op_vec2_f32(sign(arg_1.a)), func_2(func_2(Struct_2(arg_1, vec2<i32>(u_input.a.x, 51838i), Struct_1(vec2<f32>(-1000f, -1245f), vec2<bool>(arg_1.b.x, true), vec2<i32>(-2147483647i, 0i)), 1979u), _wgslsmith_mod_u32(1u, 1u), Struct_1(arg_1.a, arg_1.b, u_input.a)).c, reverseBits(~u_input.c), func_2(Struct_2(arg_1, u_input.a, arg_1, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, 27310u, u_input.c)), Struct_1(arg_1.a, arg_1.b, vec2<i32>(arg_1.c.x, arg_1.c.x))).c.c).c.a.b, -_wgslsmith_add_vec2_i32(u_input.a, u_input.a) ^ -(~u_input.a))).c.a.a.x;
    var var_1 = 39345i;
    let var_2 = u_input.d;
    var_1 = -max(59737i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-37288i, -2147483647i, 0i), vec3<i32>(0i, 21642i, u_input.a.x)), select(firstTrailingBit(vec3<i32>(2147483647i, u_input.a.x, arg_1.c.x)), vec3<i32>(0i, -1i, -2147483647i), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, false), vec3<bool>(arg_1.b.x, false, arg_1.b.x)))));
    let var_3 = Struct_3(_wgslsmith_div_u32(74493u, u_input.b.x), arg_1.b.x && ((i32(-1i) * -1i) > var_2), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(arg_1, vec2<i32>(2147483647i, arg_1.c.x), arg_1, u_input.c), u_input.c, Struct_1(arg_1.a, vec2<bool>(false, true), u_input.a)).c.c.a + _wgslsmith_f_op_vec2_f32(select(arg_1.a, arg_1.a, arg_1.b))), select(arg_1.b, !vec2<bool>(arg_1.b.x, false), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), arg_1.b)), -vec2<i32>(2147483647i, 43009i) | arg_1.c), max(abs(arg_1.c), ~max(arg_1.c, arg_1.c)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a.x, -100f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1164f, -494f))), select(arg_1.b, vec2<bool>(false, arg_0), arg_1.b), arg_1.c), 1u), select(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 68996u, false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0)));
    return func_2(Struct_2(func_2(var_3.c, ~4294967295u ^ u_input.b.x, func_2(Struct_2(Struct_1(vec2<f32>(arg_2, -311f), vec2<bool>(var_3.c.a.b.x, var_3.b), var_3.c.b), vec2<i32>(arg_1.c.x, var_3.c.a.c.x), arg_1, u_input.b.x), reverseBits(1u), Struct_1(vec2<f32>(-392f, var_3.c.c.a.x), vec2<bool>(false, var_3.b), arg_1.c)).c.a).c.a, ~abs(min(vec2<i32>(-1i, arg_1.c.x), vec2<i32>(32357i, arg_1.c.x))), var_3.c.a, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(77085u, u_input.c), u_input.b.yz), _wgslsmith_mult_u32(0u, u_input.c))), var_3.c.d, arg_1).c;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = func_5(!(arg_0.x & func_4(_wgslsmith_f_op_f32(max(784f, -2043f)), func_2(Struct_2(Struct_1(vec2<f32>(-1051f, 1659f), vec2<bool>(false, true), u_input.a), vec2<i32>(u_input.d, u_input.d), Struct_1(vec2<f32>(-908f, 2541f), arg_0.yz, u_input.a), u_input.c), 44103u, Struct_1(vec2<f32>(1910f, 1521f), arg_0.xx, vec2<i32>(24785i, u_input.d))))), func_2(func_2(func_2(func_2(Struct_2(Struct_1(vec2<f32>(-2884f, -1156f), vec2<bool>(true, arg_0.x), u_input.a), u_input.a, Struct_1(vec2<f32>(513f, 303f), arg_0.xx, vec2<i32>(-1i, 0i)), 1u), 81024u, Struct_1(vec2<f32>(-357f, -1000f), arg_0.yx, u_input.a)).c, _wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(u_input.b.x, u_input.b.x)), func_2(Struct_2(Struct_1(vec2<f32>(-427f, -761f), vec2<bool>(arg_0.x, arg_0.x), u_input.a), vec2<i32>(u_input.a.x, 9204i), Struct_1(vec2<f32>(-221f, 1773f), arg_0.xy, vec2<i32>(u_input.a.x, 15118i)), 25553u), 0u, Struct_1(vec2<f32>(274f, -1628f), arg_0.xz, u_input.a)).c.c).c, u_input.b.x, func_2(Struct_2(Struct_1(vec2<f32>(-1645f, 297f), vec2<bool>(true, arg_0.x), vec2<i32>(4327i, u_input.a.x)), u_input.a, Struct_1(vec2<f32>(-493f, 832f), vec2<bool>(arg_0.x, false), u_input.a), 4294967295u), ~44906u, Struct_1(vec2<f32>(-1104f, 850f), arg_0.yy, vec2<i32>(-1i, 0i))).c.a).c, 50212u, func_2(Struct_2(Struct_1(vec2<f32>(825f, -1688f), vec2<bool>(arg_0.x, false), u_input.a), -u_input.a, func_2(Struct_2(Struct_1(vec2<f32>(-1311f, 1361f), arg_0.zy, u_input.a), u_input.a, Struct_1(vec2<f32>(-1000f, -367f), arg_0.zx, vec2<i32>(0i, -10630i)), 4294967295u), u_input.c, Struct_1(vec2<f32>(988f, -780f), arg_0.yx, u_input.a)).c.a, 9438u), 4294967295u, func_2(Struct_2(Struct_1(vec2<f32>(711f, 923f), vec2<bool>(arg_0.x, arg_0.x), u_input.a), u_input.a, Struct_1(vec2<f32>(-1625f, -395f), arg_0.xy, u_input.a), u_input.c), u_input.c, func_2(Struct_2(Struct_1(vec2<f32>(316f, 1176f), arg_0.yy, vec2<i32>(u_input.a.x, 1i)), vec2<i32>(1i, -44910i), Struct_1(vec2<f32>(1000f, 286f), arg_0.yz, vec2<i32>(32823i, 1i)), 1005u), 88869u, Struct_1(vec2<f32>(173f, -1325f), arg_0.zz, vec2<i32>(1i, u_input.a.x))).c.c).c.c).c.c).c.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1134f, _wgslsmith_f_op_f32(f32(-1f) * -784f)) - -1864f));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -585f);
    var_0 = Struct_2(var_0.c, vec2<i32>((1i << (var_0.d % 32u)) & u_input.a.x, (1i | var_0.b.x) | (_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.b.x, -2125i, 12041i), vec4<i32>(0i, u_input.d, 82012i, 16151i)) ^ countOneBits(var_0.b.x))), var_0.c, 4294967295u);
    let var_2 = func_5(select(true, _wgslsmith_f_op_f32(f32(-1f) * -1404f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1358f, 524f, arg_0.x)))), all(!vec4<bool>(arg_0.x, true, false, false))), var_0.c, var_1);
    var_0 = func_2(func_2(func_5(true, var_2.a, var_1), 22372u, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.a.a)), vec2<bool>(true, var_0.c.b.x), reverseBits(-vec2<i32>(-7264i, var_0.b.x)))).c, _wgslsmith_clamp_u32(var_0.d, _wgslsmith_dot_vec3_u32(u_input.b, ~_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))), u_input.c), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(160f)), _wgslsmith_f_op_f32(min(var_2.a.a.x, var_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-409f, -1983f) + vec2<f32>(-304f, var_0.a.a.x))), select(vec2<bool>(true, true), vec2<bool>(var_2.b.x == 0i, all(vec2<bool>(true, arg_0.x))), vec2<bool>(true, true)), u_input.a)).c;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!vec3<bool>(u_input.b.x < ~u_input.b.x, any(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))));
    var_0 = func_2(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c.a.x, -125f))))), vec2<bool>(var_0.a.b.x, 0i >= u_input.a.x), vec2<i32>(func_2(Struct_2(var_0.c, var_0.a.c, var_0.c, var_0.d), u_input.c, var_0.a).c.c.c.x, var_0.b.x)), var_0.c.c, Struct_1(_wgslsmith_f_op_vec2_f32(-func_2(Struct_2(Struct_1(var_0.c.a, var_0.a.b, u_input.a), u_input.a, Struct_1(vec2<f32>(var_0.a.a.x, 428f), var_0.c.b, u_input.a), 23598u), u_input.c, Struct_1(vec2<f32>(var_0.c.a.x, -696f), var_0.a.b, var_0.c.c)).c.a.a), var_0.c.b, var_0.a.c), _wgslsmith_mult_u32(0u, ~0u)), u_input.b.x << (64497u % 32u), Struct_1(var_0.c.a, !func_1(select(vec3<bool>(false, true, var_0.c.b.x), vec3<bool>(var_0.c.b.x, true, var_0.a.b.x), vec3<bool>(var_0.c.b.x, false, false))).a.b, -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -2147483647i), vec2<i32>(2147483647i, var_0.b.x)))).c;
    var_0 = Struct_2(func_5(!var_0.c.b.x, func_2(func_2(func_2(Struct_2(Struct_1(var_0.c.a, var_0.c.b, vec2<i32>(-2147483647i, u_input.a.x)), vec2<i32>(var_0.a.c.x, var_0.a.c.x), Struct_1(var_0.a.a, vec2<bool>(false, var_0.c.b.x), vec2<i32>(-1i, 1i)), u_input.b.x), 4294967295u, Struct_1(var_0.c.a, var_0.a.b, u_input.a)).c, ~1u, func_1(vec3<bool>(true, false, var_0.a.b.x)).a).c, 23839u, var_0.a).c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_0.a.a.x)))).c, ~(func_1(!vec3<bool>(var_0.c.b.x, true, false)).a.c >> (~firstTrailingBit(u_input.b.zz) % vec2<u32>(32u))), func_2(Struct_2(var_0.a, select(vec2<i32>(var_0.a.c.x, 2147483647i), _wgslsmith_div_vec2_i32(var_0.c.c, vec2<i32>(var_0.a.c.x, 2147483647i)), select(var_0.a.b, vec2<bool>(var_0.c.b.x, true), vec2<bool>(true, true))), var_0.c, 4294967295u), ~_wgslsmith_mod_u32(1u, ~u_input.c), Struct_1(vec2<f32>(-853f, _wgslsmith_f_op_f32(round(var_0.c.a.x))), vec2<bool>(var_0.d >= u_input.c, true), var_0.c.c)).c.c, 4294967295u);
    var_0 = func_5(any(select(vec3<bool>(all(vec3<bool>(true, true, true)), func_4(760f, Struct_3(4294967295u, true, Struct_2(var_0.c, u_input.a, var_0.a, 4294967295u), var_0.d, var_0.a.a.x)), all(vec3<bool>(var_0.a.b.x, var_0.a.b.x, true))), vec3<bool>(func_5(false, Struct_1(vec2<f32>(1400f, -1219f), vec2<bool>(var_0.c.b.x, var_0.a.b.x), vec2<i32>(21590i, -6554i)), -1000f).c.b.x, var_0.c.b.x, any(var_0.c.b)), !var_0.c.b.x | all(vec2<bool>(var_0.a.b.x, false)))), func_5(false, func_5(var_0.c.b.x, func_2(func_2(Struct_2(var_0.c, u_input.a, Struct_1(var_0.a.a, vec2<bool>(true, false), u_input.a), 1218u), 4292u, var_0.c).c, _wgslsmith_dot_vec4_u32(vec4<u32>(36483u, 29882u, u_input.b.x, 4294967295u), vec4<u32>(4294967295u, u_input.b.x, 1u, 60375u)), Struct_1(vec2<f32>(1555f, -879f), vec2<bool>(var_0.c.b.x, var_0.a.b.x), vec2<i32>(-23354i, 1i))).c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.a.x, var_0.c.a.x)))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1509f))).a, var_0.c.a.x);
    var_0 = func_2(func_2(func_5(var_0.c.b.x, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-570f, var_0.c.a.x) - 1451f)), ~(var_0.d ^ (0u >> (u_input.b.x % 32u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.a * var_0.a.a)), vec2<bool>(true, var_0.d > 40022u), vec2<i32>(var_0.b.x, _wgslsmith_div_i32(u_input.d, -1i)))).c, firstTrailingBit(12513u), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.a.a))), !func_2(Struct_2(Struct_1(var_0.c.a, var_0.a.b, u_input.a), var_0.a.c, Struct_1(var_0.a.a, vec2<bool>(true, var_0.a.b.x), u_input.a), 79918u), ~0u, Struct_1(var_0.a.a, vec2<bool>(true, true), var_0.c.c)).c.c.b, var_0.a.c)).c;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>((~(-2147483647i) | func_5(false, var_0.a, var_0.a.a.x).a.c.x) ^ abs(u_input.a.x), -var_0.b.x, 60408i, _wgslsmith_div_i32(var_0.b.x, u_input.a.x ^ 0i)), _wgslsmith_sub_vec4_u32(~vec4<u32>(~4294967295u, firstTrailingBit(u_input.b.x), ~1u, u_input.b.x), ~(~vec4<u32>(u_input.c, u_input.c, var_0.d, 52475u)) ^ reverseBits(vec4<u32>(var_0.d, 25724u, var_0.d, u_input.c))), (abs(131397u) >> (countOneBits(select(4294967295u, 0u, var_0.a.b.x)) % 32u)) ^ ~var_0.d, _wgslsmith_mod_vec2_u32(u_input.b.zy << (u_input.b.yx % vec2<u32>(32u)), reverseBits(_wgslsmith_div_vec2_u32(~u_input.b.xy, firstTrailingBit(vec2<u32>(var_0.d, 4294967295u))))), countOneBits(var_0.b.x));
}

