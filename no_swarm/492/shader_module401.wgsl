struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> vec4<bool> {
    let var_0 = !arg_2.d.b.yx;
    global0 = array<Struct_2, 20>();
    var var_1 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_2.d.a, -1i, arg_1.a.a.x, -59858i)), vec4<i32>(i32(-1i) * -12473i, -(~(-2147483647i)), -2147483647i, arg_1.c.a.x) >> (firstLeadingBit(min(arg_2.d.e, vec4<u32>(32131u, 0u, 0u, 20066u))) % vec4<u32>(32u)));
    var_1 = _wgslsmith_clamp_i32(reverseBits(10425i), 6552i, (arg_2.d.a << (~firstLeadingBit(u_input.d) % 32u)) ^ arg_2.c.a.x);
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(66736u, select(firstTrailingBit(73312u), 1u, arg_3), 1u), arg_2.d.d.xxx);
    return select(select(select(!(!arg_1.d.b), select(arg_2.d.b, select(arg_2.d.b, vec4<bool>(false, true, true, true), true), arg_1.d.b), vec4<bool>(1i < u_input.b, true, false, true)), arg_2.d.b, !arg_2.d.b), arg_2.d.b, !((all(vec3<bool>(arg_1.d.b.x, true, true)) && arg_2.d.c) & any(arg_2.d.b)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    global0 = array<Struct_2, 20>();
    let var_0 = u_input.b;
    var var_1 = Struct_3(arg_2.a, select(_wgslsmith_sub_u32(u_input.c & firstTrailingBit(arg_2.b), 1u), 5899u, any(func_3(_wgslsmith_f_op_f32(arg_2.c.b.x + 705f), Struct_3(global0[_wgslsmith_index_u32(arg_3.e.x, 20u)], 81175u, Struct_2(arg_2.c.a, vec4<f32>(arg_1.x, arg_2.a.b.x, 1859f, -377f)), Struct_1(1i, arg_2.d.b, false, arg_3.e, arg_2.d.d)), Struct_3(Struct_2(vec4<i32>(25526i, var_0, 1i, 0i), arg_2.c.b), arg_2.b, Struct_2(arg_2.a.a, arg_1), Struct_1(-38183i, vec4<bool>(arg_2.d.c, true, true, arg_2.d.b.x), arg_2.d.c, vec4<u32>(0u, 86484u, 16547u, arg_0.x), arg_2.d.e)), false))), arg_2.c, Struct_1(31159i | arg_2.a.a.x, !arg_3.b, !all(arg_2.d.b.xyz) || (~12135u > _wgslsmith_div_u32(arg_3.e.x, 46160u)), vec4<u32>(~19786u, _wgslsmith_dot_vec2_u32(~arg_3.d.xz, ~vec2<u32>(21791u, 14478u)), arg_0.x, 0u), arg_2.d.e));
    let var_2 = true;
    var var_3 = arg_2.d.b.x != all(!vec3<bool>(any(var_1.d.b), !var_1.d.c, arg_3.c));
    return false & (_wgslsmith_f_op_f32(-var_1.a.b.x) >= arg_1.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global0 = array<Struct_2, 20>();
    var var_0 = Struct_1(select(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, u_input.a, u_input.b), vec3<i32>(-8564i, -1i, u_input.a)), ~vec3<i32>(arg_1.a, -3060i, -61460i)), 72595i), arg_1.a & ~(u_input.b & 3610i), select(true, arg_2, true)), arg_1.b, true, _wgslsmith_clamp_vec4_u32(firstLeadingBit((vec4<u32>(92465u, arg_1.d.x, 6535u, u_input.d) | vec4<u32>(1u, arg_1.d.x, arg_1.d.x, arg_1.d.x)) ^ arg_1.e), arg_1.d, select(arg_1.e << ((vec4<u32>(72899u, arg_1.e.x, arg_1.e.x, arg_1.e.x) ^ arg_1.d) % vec4<u32>(32u)), arg_1.d ^ vec4<u32>(arg_1.d.x, u_input.d, arg_1.e.x, 113585u), true)), ~arg_1.d);
    let var_1 = 37637u;
    let var_2 = firstTrailingBit(select(var_0.a, countOneBits(var_0.a), var_1 >= 12867u));
    var var_3 = arg_1.e.wxy;
    return Struct_1(arg_1.a, !(!(!arg_1.b)), arg_0, firstTrailingBit(~var_0.d), firstLeadingBit(max(var_0.e, ~arg_1.d)) >> (firstTrailingBit(~vec4<u32>(32787u, var_0.e.x, arg_1.d.x, 1u) | abs(arg_1.e)) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: u32) -> Struct_2 {
    global0 = array<Struct_2, 20>();
    let var_0 = Struct_3(Struct_2(~(-vec4<i32>(arg_1, 2147483647i, arg_1, u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1059f, 433f, -1007f, -327f))))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.c, u_input.c, arg_0, arg_0) << (select(vec4<u32>(u_input.d, 65006u, u_input.d, arg_0), vec4<u32>(16998u, u_input.c, 62495u, 0u), true) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.d, 4294967295u, arg_0), vec4<u32>(60125u, 1u, 4294967295u, arg_0)), _wgslsmith_sub_vec4_u32(~vec4<u32>(25090u, u_input.d, arg_0, 4294967295u), vec4<u32>(arg_0, u_input.c, 6729u, arg_0) ^ vec4<u32>(arg_2, u_input.c, 0u, 2062u)))), Struct_2(_wgslsmith_div_vec4_i32(max(~vec4<i32>(54027i, arg_1, u_input.b, 2147483647i), vec4<i32>(0i, arg_1, arg_1, 24968i)), vec4<i32>(-arg_1, 2147483647i, -13965i, arg_1 >> (u_input.c % 32u))), vec4<f32>(1f, 1f, 1f, 1f)), func_4(!func_2(~vec2<u32>(arg_0, arg_0), _wgslsmith_div_vec4_f32(vec4<f32>(-1476f, 525f, 2181f, -995f), vec4<f32>(285f, -587f, 1152f, 2040f)), Struct_3(Struct_2(vec4<i32>(arg_1, u_input.a, -95387i, -5028i), vec4<f32>(-949f, -433f, -1971f, -285f)), 70062u, global0[_wgslsmith_index_u32(1u, 20u)], Struct_1(arg_1, vec4<bool>(false, false, false, false), false, vec4<u32>(1u, 23969u, 106870u, arg_2), vec4<u32>(26367u, arg_0, 4294967295u, 60705u))), Struct_1(u_input.b, vec4<bool>(false, false, false, true), true, vec4<u32>(u_input.c, u_input.d, arg_2, 63705u), vec4<u32>(arg_0, 65729u, arg_0, arg_2))), Struct_1(_wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a, -33569i, arg_1, arg_1), vec4<i32>(arg_1, u_input.b, -80909i, arg_1)), vec4<i32>(u_input.a, arg_1, u_input.a, arg_1)), vec4<bool>(true, select(false, false, true), true, true), any(vec2<bool>(true, true)), ~select(vec4<u32>(58420u, arg_0, arg_2, arg_0), vec4<u32>(106960u, u_input.c, 1u, arg_0), false), ~vec4<u32>(u_input.c, 43728u, 18375u, u_input.d)), true));
    global0 = array<Struct_2, 20>();
    var var_1 = var_0.c.b.zz;
    var var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(-1i, arg_1)) ^ (_wgslsmith_clamp_i32(2147483647i, var_0.a.a.x, 20727i) ^ abs(var_0.a.a.x)), _wgslsmith_dot_vec4_i32(~var_0.a.a & vec4<i32>(var_0.d.a, 1i, -2147483647i, -26021i), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.b, arg_1, 1i), var_0.c.a))), ~(u_input.a << ((984u >> (u_input.d % 32u)) % 32u)), 2147483647i), vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.c.a.yww, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, 0i, -1i), vec3<i32>(u_input.b, arg_1, 2147483647i))), -27824i, ~(-(~(-20252i))), ~abs(var_0.d.a)));
    return Struct_2(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(~(var_0.a.a & var_0.a.a), vec4<i32>(arg_1 & u_input.a, _wgslsmith_mult_i32(var_2.x, 4488i), min(-1i, -1i), _wgslsmith_add_i32(var_0.a.a.x, var_2.x))), select(var_0.a.a, var_0.c.a, var_0.d.b.x)), var_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c, 2147483647i, ~_wgslsmith_sub_u32(~u_input.c, ~u_input.d));
    let var_1 = Struct_3(func_1(~_wgslsmith_mult_u32(45967u, u_input.d), firstLeadingBit(1i), ~9057u), _wgslsmith_dot_vec2_u32(reverseBits(~(vec2<u32>(23775u, u_input.c) ^ vec2<u32>(11621u, 2298u))), vec2<u32>(firstTrailingBit(max(43545u, u_input.c)), 0u)), func_1(u_input.c, ~_wgslsmith_add_i32(var_0.a.x, -1i), u_input.d), func_4(false, Struct_1(-30528i, vec4<bool>(true, true, true, true), true, vec4<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(12371u, 0u)), func_4(false, Struct_1(u_input.b, vec4<bool>(false, true, false, true), true, vec4<u32>(u_input.c, u_input.d, 58929u, u_input.d), vec4<u32>(u_input.c, u_input.d, u_input.c, 16611u)), false).d.x, ~1u), vec4<u32>(~u_input.d, ~0u, _wgslsmith_sub_u32(u_input.c, 4294967295u), 0u)), func_4(func_2(vec2<u32>(u_input.d, u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, 1646f, -647f)), Struct_3(Struct_2(var_0.a, vec4<f32>(1042f, 1053f, var_0.b.x, var_0.b.x)), u_input.d, Struct_2(vec4<i32>(-48067i, 24324i, u_input.a, u_input.b), vec4<f32>(var_0.b.x, -402f, -292f, -1009f)), Struct_1(2147483647i, vec4<bool>(false, true, true, false), false, vec4<u32>(u_input.d, u_input.d, 0u, 15626u), vec4<u32>(u_input.d, 4294967295u, 4294967295u, 68521u))), Struct_1(1i, vec4<bool>(true, false, true, true), true, vec4<u32>(u_input.c, 68873u, u_input.d, u_input.d), vec4<u32>(u_input.c, u_input.d, 4294967295u, u_input.c))), Struct_1(1i, func_4(false, Struct_1(u_input.a, vec4<bool>(false, false, true, true), true, vec4<u32>(u_input.d, u_input.c, u_input.c, u_input.c), vec4<u32>(34182u, 4294967295u, 51239u, u_input.d)), false).b, false, ~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.c), vec4<u32>(u_input.c, u_input.d, u_input.d, 4991u)), !any(vec2<bool>(false, true))).b.x));
    global0 = array<Struct_2, 20>();
    var_0 = Struct_2(vec4<i32>(~var_1.a.a.x, -var_1.c.a.x, reverseBits(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(-31293i, var_0.a.x, var_0.a.x), _wgslsmith_mod_i32(-32678i, u_input.b))), 1i), vec4<f32>(-255f, _wgslsmith_f_op_f32(-453f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(755f + var_1.c.b.x), var_1.c.b.x)), var_0.b.x, 281f));
    let var_2 = var_0.a.x;
    let var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(var_3.a.wzw, -var_3.a.ywz, ~vec3<i32>(var_3.a.x, var_1.c.a.x, 0i)), -vec3<i32>(-24794i, u_input.b, -2147483647i))), vec2<u32>(~_wgslsmith_add_u32(1u, 18249u), 26388u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - var_0.b.x)));
}

