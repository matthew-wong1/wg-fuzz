struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
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

var<private> global0: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-655f, -1160f)), -592f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f * 763f)) - -723f)), 965f);
    global0 = 0u;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(var_0.x)), Struct_1(1u, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), vec4<i32>(-countOneBits(u_input.b.x), _wgslsmith_div_i32(-u_input.a, u_input.a), u_input.a, u_input.a), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a) & u_input.b.zzw, firstTrailingBit(u_input.b.wxy)), select(max(vec3<i32>(-43921i, -11727i, u_input.b.x), u_input.b.xzw), firstLeadingBit(u_input.b.yxw), vec3<bool>(true, true, true))), ~vec2<u32>(1u, 1u)), !(true || (any(vec2<bool>(true, true)) == true)), !(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))));
    global0 = ~0u;
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.b.wx, vec2<i32>(var_1.b.c.x, var_1.b.d)) >> (select(_wgslsmith_mult_u32(7635u, var_1.b.e.x), var_1.b.e.x, var_1.c) % 32u), var_1.b.c.x, var_1.b.c.x, ~(~(-25487i))), vec4<i32>(abs(_wgslsmith_div_i32(abs(-21443i), var_1.b.d)), 24025i, 2147483647i, firstTrailingBit(abs(u_input.a))));
    return ~(~4294967295u);
}

fn func_2() -> Struct_2 {
    global0 = 4294967295u;
    global0 = 1u;
    let var_0 = true;
    let var_1 = ~(~1u);
    global0 = func_3() | 10135u;
    return Struct_2(1281f, Struct_1(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 76745u, 4294967295u) & vec4<u32>(0u, 9797u, var_1, var_1), vec4<u32>(15208u, 35519u, var_1, 1u) >> (vec4<u32>(var_1, var_1, var_1, 4294967295u) % vec4<u32>(32u)))), var_0, abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, -38021i, u_input.a, 1i) ^ vec4<i32>(-1700i, u_input.b.x, 1i, u_input.a), ~vec4<i32>(u_input.a, -2147483647i, -37532i, -1i))), max(u_input.b.x << (~var_1 % 32u), u_input.a | abs(u_input.a)), vec2<u32>(~var_1, 23417u)), false, true);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(15684u, arg_2.b.e.x) >> (max(4294967295u, 24093u) % 32u), _wgslsmith_clamp_u32(~70171u, 4294967295u, arg_0.b.a), ~abs(arg_1), firstTrailingBit(~4294967295u)), select(vec4<u32>(6081u, arg_1, 1u, arg_1 | 13391u), vec4<u32>(42325u, arg_1, 38501u, ~arg_1), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), !vec4<bool>(true, arg_0.d, arg_0.d, arg_0.c)))), firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(17264u, 0u, arg_2.b.e.x, arg_1), vec4<u32>(1u, arg_2.b.a, arg_2.b.e.x, arg_1)) | ~(vec4<u32>(arg_2.b.a, 47633u, arg_0.b.a, arg_2.b.a) | vec4<u32>(1u, 48502u, arg_0.b.e.x, 4294967295u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.a)), -130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1186f, -574f, arg_2.a, arg_2.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a, -620f, -502f, -506f), vec4<f32>(arg_0.a, arg_0.a, -943f, 779f))))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(arg_0.d, arg_0.b.b, arg_0.c, arg_0.c), vec4<bool>(arg_0.b.b, false, true, arg_2.d)), select(vec4<bool>(false, false, true, arg_0.b.b), !vec4<bool>(false, false, true, arg_0.d), select(false, true, arg_2.d)), !select(vec4<bool>(true, arg_0.b.b, arg_0.c, arg_2.b.b), vec4<bool>(true, false, false, false), arg_2.d)))));
    var var_2 = arg_2;
    let var_3 = arg_2;
    global0 = func_3();
    return abs(vec2<u32>(51026u, ~arg_1 & (~67577u ^ ~arg_0.b.e.x)));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = 4294967295u;
    let var_0 = ~_wgslsmith_add_i32(firstLeadingBit(i32(-1i) * -u_input.b.x), i32(-1i) * -(~u_input.a));
    var var_1 = arg_0.b;
    return Struct_1(~1u, all(vec4<bool>(!(!arg_0.b), true, arg_0.b, true)), u_input.b, arg_0.d, arg_0.e);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: bool) -> Struct_2 {
    var var_0 = func_5(Struct_1(~(~(~0u)), !arg_2, u_input.b, i32(-1i) * -(~u_input.a), _wgslsmith_add_vec2_u32(func_4(func_2(), 65573u >> (1u % 32u), func_2()), select(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 56025u), vec2<u32>(53125u, 1u)), vec2<u32>(1u, 0u), false | arg_0))));
    let var_1 = Struct_2(330f, func_2().b, arg_0, arg_1 >= arg_1);
    let var_2 = _wgslsmith_mod_u32(var_1.b.e.x, ~19746u) << (var_1.b.a % 32u);
    var_0 = var_1.b;
    let var_3 = vec3<bool>(any(vec2<bool>(var_1.a != func_2().a, arg_0)), true, var_0.b);
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(735f - _wgslsmith_f_op_f32(var_1.a * var_1.a))), -2446f)), Struct_1(var_2, _wgslsmith_f_op_f32(ceil(-739f)) == var_1.a, vec4<i32>(39462i, _wgslsmith_mult_i32(1i, var_0.c.x), countOneBits(arg_1), 2147483647i), 2147483647i, vec2<u32>(_wgslsmith_clamp_u32(func_4(var_1, var_0.a, var_1).x, 0u, abs(1u)), ~_wgslsmith_mult_u32(14320u, 36596u))), !arg_2, arg_2);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = vec3<i32>(~(~(arg_3.b.c.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, arg_1.e.x, 1u, arg_1.e.x), vec4<u32>(0u, 0u, 4294967295u, 1u)) % 32u))), ~max(func_1(arg_3.b.b, -arg_2.b.c.x, false).b.d, _wgslsmith_mod_i32(arg_1.c.x, 2147483647i)), arg_3.b.c.x);
    var_0 = func_5(Struct_1(arg_2.b.a, true, reverseBits(arg_3.b.c & _wgslsmith_mod_vec4_i32(u_input.b, arg_3.b.c)), -2147483647i, select(vec2<u32>(firstLeadingBit(0u), 0u), min(arg_1.e, arg_3.b.e), func_2().b.b))).c.zzz;
    var var_1 = arg_2.b.e;
    let var_2 = vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(arg_2.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(619f + arg_3.a)))), 1000f);
    var_0 = ~(vec3<i32>(var_0.x, ~0i, ~_wgslsmith_mult_i32(arg_2.b.d, arg_2.b.c.x)) >> (max(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_2.b.e.x, arg_2.b.a), vec3<u32>(arg_1.e.x, arg_0, arg_3.b.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.b.a, 59255u, arg_3.b.a), vec3<u32>(1u, 4294967295u, 68900u))) % vec3<u32>(32u)));
    return 108627u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~abs(_wgslsmith_div_u32(6222u, _wgslsmith_sub_u32(~12723u, _wgslsmith_div_u32(4294967295u, 25373u))));
    global0 = min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~select(firstLeadingBit(vec2<u32>(29656u, 0u)), ~vec2<u32>(107382u, 11942u), true)), abs(86392u));
    let x = u_input.a;
    s_output = StorageBuffer(~func_6(~(~45828u), Struct_1(1u, all(vec2<bool>(false, false)), vec4<i32>(-68551i, 24108i, 0i, -2147483647i), countOneBits(u_input.a), select(vec2<u32>(40826u, 85925u), vec2<u32>(26241u, 8519u), false)), func_1(true, u_input.a ^ u_input.a, false), func_1(true, firstTrailingBit(u_input.b.x), true)), u_input.a);
}

