struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(2147483647i, vec3<bool>(true, false, true), 20667u, vec2<i32>(40683i, 1i), true), Struct_1(-45849i, vec3<bool>(false, false, false), 4294967295u, vec2<i32>(1i, 5210i), true), Struct_1(-23812i, vec3<bool>(true, false, true), 19449u, vec2<i32>(2147483647i, 48382i), false), Struct_1(0i, vec3<bool>(false, true, false), 0u, vec2<i32>(12000i, 2147483647i), true), Struct_1(0i, vec3<bool>(false, true, false), 0u, vec2<i32>(-29746i, i32(-2147483648)), false), Struct_1(1i, vec3<bool>(true, true, false), 1u, vec2<i32>(-9961i, 1i), false), Struct_1(-1i, vec3<bool>(true, true, true), 21643u, vec2<i32>(2147483647i, -9502i), true), Struct_1(5093i, vec3<bool>(false, false, false), 50072u, vec2<i32>(-22327i, 39459i), true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    let var_0 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(u_input.a <= firstTrailingBit(u_input.a), true), true));
    let var_1 = Struct_3(select(arg_0.yzx, vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_clamp_i32(u_input.e.x, u_input.c, -33907i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.x, u_input.b.x, u_input.e.x), u_input.d)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 1u, 25543u), ~vec3<u32>(19667u, u_input.a, u_input.a), vec3<u32>(u_input.a, arg_1, 25203u)) % vec3<u32>(32u)), vec3<bool>(!var_0.a.x || any(vec4<bool>(true, var_0.a.x, true, var_0.a.x)), -52178i < ~u_input.b.x, firstLeadingBit(u_input.a) <= u_input.a)), abs(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(48519u, u_input.a, u_input.a), vec3<u32>(6944u, 1u, u_input.a))), ~(vec3<u32>(4294967295u, arg_1, 35235u) | vec3<u32>(arg_1, arg_1, u_input.a)))), arg_1, max(arg_1, 4294967295u));
    var var_2 = -u_input.d;
    var var_3 = Struct_1(1i, !(!vec3<bool>(any(var_0.a), any(vec3<bool>(false, true, var_0.a.x)), var_0.a.x && false)), var_1.c, ~abs(-arg_0.zw), _wgslsmith_div_i32(~var_2.x, arg_0.x) <= ~arg_0.x);
    var var_4 = ~(~(abs(vec2<u32>(var_1.c, 75004u)) | ~vec2<u32>(u_input.a, var_3.c)) << (vec2<u32>(3754u, u_input.a) % vec2<u32>(32u)));
    return 30451u;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(vec3<i32>(firstLeadingBit(-7083i), select(2147483647i, ~_wgslsmith_mod_i32(u_input.b.x, -10517i), true), u_input.c), _wgslsmith_clamp_u32(~4294967295u, ~(~countOneBits(51789u)), abs(~_wgslsmith_add_u32(u_input.a, 41351u))), 33853u, u_input.a);
    let var_1 = _wgslsmith_mod_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, firstTrailingBit(38810u), u_input.a | 460u, ~0u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.d, u_input.a, 1u), vec4<u32>(26853u, u_input.a, 1u, 85119u))), func_3(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(var_0.a.x, var_0.a.x, 0i, var_0.a.x)), ~u_input.d), 15345u)), ~u_input.a);
    var_0 = Struct_3(select(abs(vec3<i32>(-15531i, u_input.e.x, -30013i)), -vec3<i32>(~(-2147483647i), countOneBits(-11965i), min(-50056i, u_input.c)), select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, false)), false, true), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, false, false)))), ~var_0.d << (1u % 32u), u_input.a, 11706u);
    var_0 = Struct_3(-(~vec3<i32>(-6258i, reverseBits(0i), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, var_0.a.x)))), 0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 22919u, ~36251u, ~0u), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, var_0.d, var_0.b, var_0.d), vec4<u32>(u_input.a, 11473u, var_0.b, var_0.d)), vec4<u32>(u_input.a, 1u, var_1, 53030u) & vec4<u32>(1u, 1u, 1u, 1u))), 55455u), _wgslsmith_mult_u32(var_0.d, ~var_0.c));
    var_0 = Struct_3(-u_input.d.yzy, firstLeadingBit(abs(0u)), 1u, ~2743u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, u_input.a, 90066u, 2251u), select(vec4<u32>(u_input.a, var_0.b, 4294967295u, 16910u), vec4<u32>(1830u, 0u, var_0.c, 5890u), vec4<bool>(false, true, false, true))));
    return Struct_1(var_0.a.x, !(!vec3<bool>(true, 4294967295u < var_0.d, false)), var_0.c, vec2<i32>(-1i) * -(~(-vec2<i32>(1i, u_input.e.x))), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<vec3<f32>, 18>();
    global0 = array<vec3<f32>, 18>();
    global0 = array<vec3<f32>, 18>();
    global0 = array<vec3<f32>, 18>();
    global1 = array<Struct_1, 8>();
    return func_2();
}

fn func_1(arg_0: f32) -> bool {
    global0 = array<vec3<f32>, 18>();
    global0 = array<vec3<f32>, 18>();
    var var_0 = func_4(func_2(), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_0, _wgslsmith_f_op_f32(-128f - arg_0), 594f)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(221f, arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 1103f)));
    global0 = array<vec3<f32>, 18>();
    var var_1 = u_input.d.zyx;
    return !(_wgslsmith_mult_u32(u_input.a, 4294967295u ^ (u_input.a >> (0u % 32u))) != 3226u);
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = 235f;
    var var_1 = arg_3;
    var var_2 = Struct_1(2147483647i << (arg_3.b % 32u), arg_2.b, func_2().c, ~(~(-var_1.a.xz) | -_wgslsmith_sub_vec2_i32(arg_2.d, vec2<i32>(arg_3.a.x, 2147483647i))), arg_0);
    var var_3 = true;
    var var_4 = var_2.b;
    return ~(~2890u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    global0 = array<vec3<f32>, 18>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, select(select(~u_input.a, 4294967295u, false), u_input.a, true)) & firstLeadingBit(func_5(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(346f, 328f, -764f, 1275f)), Struct_1(abs(u_input.e.x), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), ~u_input.a, u_input.e | vec2<i32>(u_input.d.x, -6354i), func_1(989f)), Struct_3(-u_input.d.yzw, ~65256u, ~u_input.a, u_input.a))), 8u)];
    let var_1 = Struct_3(u_input.d.xzz, var_0.c, 4294967295u, u_input.a);
    var_0 = Struct_1(~_wgslsmith_mult_i32(1i, -max(2368i, 14528i)), select(select(vec3<bool>(true, true, func_1(-1014f)), func_4(global1[_wgslsmith_index_u32(~u_input.a, 8u)], _wgslsmith_div_vec4_f32(vec4<f32>(1029f, -206f, -424f, 1705f), vec4<f32>(-2096f, 157f, -455f, 940f))).b, var_0.b.x), !vec3<bool>(true, var_0.b.x, false), true), ~func_5(!var_0.e, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-680f, 870f, 140f, 564f)))), func_4(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.c, u_input.a, 29995u), 8u)], _wgslsmith_f_op_vec4_f32(round(vec4<f32>(198f, 560f, -451f, -1014f)))), var_1), -var_0.d, _wgslsmith_div_u32(4294967295u, _wgslsmith_div_u32(var_1.c, ~u_input.a)) >= var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~66062u, ~(var_1.d >> (~var_1.d % 32u)), (1u | u_input.a) >> (u_input.a % 32u)), firstTrailingBit(min(abs(max(vec4<u32>(51770u, 4294967295u, 93191u, 54654u), vec4<u32>(var_0.c, 1u, u_input.a, var_1.b))), ~vec4<u32>(1u, var_1.c, u_input.a, var_1.d) | vec4<u32>(47827u, var_1.b, 22464u, var_0.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(var_1.d, 18u)], _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(7627u, 18u)]), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-244f, -1000f, 293f), vec3<f32>(1000f, -1973f, 691f))))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -720f) + _wgslsmith_div_f32(1000f, -481f)), -1000f, _wgslsmith_f_op_f32(round(-526f)))), vec4<i32>(-43414i, 2147483647i, u_input.d.x, 1i), reverseBits(vec3<u32>(_wgslsmith_add_u32(~u_input.a, var_0.c), _wgslsmith_mod_u32(min(var_0.c, var_0.c), u_input.a >> (var_0.c % 32u)), 1u)));
}

