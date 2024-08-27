struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = ~(~vec4<u32>(~44490u, u_input.a, u_input.a, 4294967295u)) << (vec4<u32>(25288u, ~(abs(arg_0.a.x) << ((arg_0.d << (arg_0.d % 32u)) % 32u)), ~_wgslsmith_add_u32(_wgslsmith_mult_u32(32214u, arg_0.a.x), reverseBits(49300u)), ~(~59741u >> ((arg_0.d << (3837u % 32u)) % 32u))) % vec4<u32>(32u));
    let var_1 = arg_0.e;
    return arg_0.e.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> bool {
    var var_0 = -11380i;
    var_0 = arg_0.a.x;
    var var_1 = Struct_1(vec3<bool>(any(arg_1.yz), arg_1.x, arg_0.c), arg_1.yx, 707f);
    var_0 = max(_wgslsmith_div_i32(max(arg_0.a.x >> (4294967295u % 32u), _wgslsmith_add_i32(2147483647i << (arg_2 % 32u), 1i)), arg_0.a.x), _wgslsmith_add_i32(-3244i, func_2(Struct_3(vec3<u32>(u_input.a, 4294967295u, 25511u), Struct_1(var_1.a, vec2<bool>(true, arg_0.c), 1917f), 11111i, 10139u, arg_0)).x));
    var_1 = Struct_1(var_1.a, vec2<bool>(!((u_input.a > 1u) == arg_0.c), arg_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2100f)) - var_1.c) - var_1.c));
    return !all(arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(vec4<i32>(max(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.x, -1i), -vec2<i32>(-2147483647i, 21022i))), -12706i, func_2(Struct_3(abs(vec3<u32>(arg_0.b, arg_0.b, arg_0.b)), Struct_1(vec3<bool>(arg_0.c, true, true), vec2<bool>(arg_1.b.x, true), 1199f), -1i, u_input.a, Struct_2(vec4<i32>(arg_0.a.x, arg_0.a.x, -2147483647i, arg_0.a.x), 54955u, arg_1.a.x))).x, _wgslsmith_dot_vec3_i32(vec3<i32>(-47721i, _wgslsmith_mult_i32(1i, arg_0.a.x), 1i), _wgslsmith_add_vec3_i32(~arg_0.a.wyz, ~arg_0.a.yzw))), arg_0.b, all(select(select(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, arg_1.a.x), select(vec4<bool>(arg_0.c, arg_1.b.x, arg_1.b.x, arg_1.b.x), vec4<bool>(arg_1.b.x, arg_0.c, false, false), false), select(vec4<bool>(arg_0.c, arg_0.c, arg_1.a.x, true), vec4<bool>(arg_0.c, arg_1.a.x, false, true), true)), !(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, true)), select(vec4<bool>(arg_0.c, arg_1.a.x, true, arg_1.b.x), select(vec4<bool>(false, true, arg_0.c, arg_1.b.x), vec4<bool>(true, true, arg_1.a.x, false), false), vec4<bool>(true, true, arg_1.a.x, arg_1.b.x)))));
    var var_1 = Struct_3(~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, 88885u, arg_0.b), vec3<u32>(31962u, 26995u, 41670u))), Struct_1(!arg_1.a, select(arg_1.b, select(arg_1.a.zz, !arg_1.b, !var_0.c), !arg_1.a.xz), _wgslsmith_f_op_f32(-423f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-272f, arg_1.c))))), func_2(Struct_3(select(vec3<u32>(4294967295u, u_input.a, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0.b, 1u), vec3<u32>(u_input.a, var_0.b, var_0.b)), arg_1.a), Struct_1(vec3<bool>(arg_0.c, true, false), vec2<bool>(true, true), _wgslsmith_f_op_f32(-arg_1.c)), -(arg_0.a.x << (arg_0.b % 32u)), _wgslsmith_clamp_u32(var_0.b, ~var_0.b, 9428u), Struct_2(select(arg_0.a, vec4<i32>(0i, var_0.a.x, arg_0.a.x, var_0.a.x), vec4<bool>(var_0.c, false, var_0.c, arg_0.c)), _wgslsmith_sub_u32(u_input.a, 9497u), arg_1.a.x))).x, ~var_0.b, var_0);
    var_1 = Struct_3(~var_1.a, arg_1, firstLeadingBit(_wgslsmith_sub_i32(abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(28920i, 2147483647i, var_1.e.a.x, -1i), ~var_1.e.a))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(39392u, arg_0.b, 0u, u_input.a), ~vec4<u32>(6049u, 36671u, var_1.a.x, 76107u)) & ~_wgslsmith_dot_vec2_u32(var_1.a.xx ^ vec2<u32>(u_input.a, 0u), ~var_1.a.yz), var_0);
    var_1 = Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.a.x, ~51652u, arg_0.b >> (~42611u % 32u)), var_1.a), arg_1, 0i, 19448u, var_1.e);
    var var_2 = Struct_3((var_1.a & (vec3<u32>(var_1.d, 4294967295u, 1u) >> (~vec3<u32>(31232u, 756u, 0u) % vec3<u32>(32u)))) | vec3<u32>(1799u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 28630u), var_1.a.xy), ~109173u), var_1.b, ~(-_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_1.e.a, var_1.e.a), 15577i)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(20152u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 21329u, 1u), vec4<u32>(var_0.b, u_input.a, var_0.b, u_input.a)), ~var_1.a.x, var_1.e.b), ~(~vec4<u32>(2018u, u_input.a, 16992u, 40335u)), true), min(vec4<u32>(min(0u, var_0.b), _wgslsmith_sub_u32(var_1.a.x, 74673u), _wgslsmith_mod_u32(var_1.e.b, var_0.b), countOneBits(4294967295u)), vec4<u32>(arg_0.b >> (var_1.d % 32u), 1u, u_input.a, 22829u))), var_0);
    return Struct_1(!var_1.b.a, var_2.b.b, _wgslsmith_div_f32(-912f, -2492f));
}

fn func_1() -> u32 {
    var var_0 = 0u;
    let var_1 = func_4(Struct_2(-select(func_2(Struct_3(vec3<u32>(4294967295u, 1u, u_input.a), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true), 1133f), 2147483647i, u_input.a, Struct_2(vec4<i32>(-39898i, 0i, -34736i, 18743i), u_input.a, false))), vec4<i32>(-1i, -39821i, 0i, -4838i), false), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 35370u) ^ vec2<u32>(u_input.a, 80882u), ~vec2<u32>(u_input.a, 1u)), func_3(Struct_2(vec4<i32>(1i, 1i, 1i, 1i), u_input.a, true), vec3<bool>(u_input.a >= 1u, true, true), 4294967295u)), Struct_1(vec3<bool>(true, true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(any(vec4<bool>(true, false, false, true)), false)), _wgslsmith_f_op_f32(879f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, 810f)), -1213f))));
    var_0 = u_input.a;
    var_0 = 4294967295u;
    var_0 = ~select(select(u_input.a, 16871u, true), max(reverseBits(4294967295u), select(u_input.a, u_input.a, false)), any(select(!vec4<bool>(true, false, var_1.b.x, var_1.a.x), !vec4<bool>(var_1.b.x, var_1.b.x, false, false), !vec4<bool>(var_1.a.x, false, true, var_1.a.x))));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = func_1();
    var var_1 = 33249i;
    var var_2 = func_4(Struct_2(vec4<i32>(func_2(Struct_3(vec3<u32>(u_input.a, 5495u, u_input.a), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true), -1687f), -1i, 0u, Struct_2(vec4<i32>(1i, -24543i, -26649i, 2147483647i), 29476u, false))).x, ~_wgslsmith_sub_i32(-1i, 1i), func_2(Struct_3(vec3<u32>(54353u, u_input.a, 14252u), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false), -1709f), -2692i, 1u, Struct_2(vec4<i32>(-1i, -12144i, 1i, 2147483647i), 48864u, false))).x, _wgslsmith_mult_i32(1i >> (1u % 32u), 1i)), select(~(u_input.a & 42563u), ~(~4294967295u), false), !(min(u_input.a, u_input.a) != (16508u >> (0u % 32u)))), func_4(Struct_2(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 22638i, 2147483647i, -2147483647i), func_1(), true), func_4(Struct_2(vec4<i32>(2147483647i, 1i, 24204i, 27128i), ~u_input.a, true), func_4(Struct_2(vec4<i32>(1i, -1i, 2147483647i, -1i), 1u, true), func_4(Struct_2(vec4<i32>(-1i, 8380i, 5833i, -1096i), 45715u, false), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), 2270f))))));
    let var_3 = vec4<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-12067i, -24393i, -1i), vec3<i32>(-18080i, -1i, -1i), vec3<i32>(1i, 16748i, 0i)), vec3<i32>(2147483647i, 46235i, -2147483647i)), -abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(60869i, 1i, -1i), ~vec3<i32>(-2147483647i, -2147483647i, 0i))), 5747i, 22539i);
    var var_4 = select(all(var_2.a.zy), false, !(false && (func_3(Struct_2(vec4<i32>(var_3.x, var_3.x, var_3.x, var_3.x), u_input.a, true), vec3<bool>(true, true, var_2.b.x), u_input.a) | var_2.a.x)));
    var var_5 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(abs(u_input.a), _wgslsmith_clamp_u32(27545u, u_input.a, 0u))), vec2<u32>(16884u, _wgslsmith_mod_u32(~(~u_input.a), u_input.a)));
    var_0 = max((var_5.x | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, 49225u) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))) | u_input.a, var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, firstTrailingBit(max(vec2<i32>(var_3.x, 2147483647i), -vec2<i32>(1i, 7560i)) | _wgslsmith_add_vec2_i32(vec2<i32>(1297i, 12488i), var_3.yx)), var_3.xzz, -var_3.x);
}

