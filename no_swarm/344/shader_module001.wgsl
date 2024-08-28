struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(946f, -1217f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> vec4<i32> {
    var var_0 = !(!(!(!(!vec4<bool>(false, arg_0.b.d, arg_0.b.d, true)))));
    var var_1 = vec4<bool>(all(select(select(select(var_0.zzw, var_0.wxx, var_0.xyz), var_0.yww, !var_0.xwz), vec3<bool>(arg_2.a, true, true), all(!vec3<bool>(var_0.x, false, arg_2.c)))), !(!arg_2.c) == true, !any(vec3<bool>(var_0.x, all(vec4<bool>(true, arg_0.c, true, false)), arg_2.c)), arg_0.b.d);
    let var_2 = Struct_1(arg_2.b.a, _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(arg_2.b.e, 70291u, 32827u, arg_0.b.e)), vec4<u32>(~(~arg_0.d), 16724u, abs(arg_0.d) | arg_0.b.e, firstLeadingBit(33470u << (arg_2.d % 32u)))), arg_0.a, _wgslsmith_mod_u32(reverseBits(arg_0.d), 1811u) < 1u, ~(~68108u));
    var var_3 = u_input.b.x;
    var_3 = 31527i;
    return ~arg_3;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = u_input.b;
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    var var_1 = func_3(Struct_2(arg_0.c.d, arg_0.c, true, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.b, arg_0.c.b) << (vec2<u32>(36511u, 0u) % vec2<u32>(32u)), vec2<u32>(35396u, arg_0.c.b))), arg_1.x, Struct_2(true, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-338f + -740f), -171f, arg_0.c.d)), 1u, all(vec2<bool>(arg_0.c.d, arg_0.c.d)), any(vec2<bool>(false, true)), _wgslsmith_mod_u32(1u, 93273u)), u_input.a.x >= _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, u_input.c.x), select(-1i, -5193i, true)), ~(~(~39813u))), u_input.b);
    return arg_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<u32> {
    let var_0 = arg_0.b;
    let var_1 = ~firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(var_0, 25426u) ^ abs(15969u), ~arg_0.e, 4294967295u));
    var var_2 = vec3<u32>(var_0, 1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1.zx >> (vec2<u32>(42112u, arg_0.e) % vec2<u32>(32u)), var_1.yz), _wgslsmith_dot_vec3_u32(reverseBits(var_1), vec3<u32>(var_0, var_0, 23404u) >> (vec3<u32>(63020u, arg_0.b, var_1.x) % vec3<u32>(32u)))), var_1.x));
    var_2 = var_1 | abs(vec3<u32>(1u, ~92313u, _wgslsmith_add_u32(select(52190u, 1u, true), ~var_0)));
    var_2 = vec3<u32>(~(~_wgslsmith_div_u32(arg_0.b << (4294967295u % 32u), ~25335u)), ~abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, 3133u, var_1.x, 25785u), select(vec4<u32>(arg_0.b, 4294967295u, var_0, 33649u), vec4<u32>(arg_0.b, 13101u, 15224u, 1u), vec4<bool>(arg_0.c, arg_0.d, false, false)))), var_2.x);
    return vec4<u32>(var_2.x, abs(var_2.x), ~var_2.x, _wgslsmith_sub_u32(~abs(~var_1.x), 0u));
}

fn func_5(arg_0: vec4<u32>) -> u32 {
    var var_0 = vec3<i32>(~9839i, 1i, u_input.a.x) << (vec3<u32>(~0u, 1u, arg_0.x) % vec3<u32>(32u));
    global0 = array<f32, 2>();
    let var_1 = func_2(Struct_4(firstTrailingBit(1i) << (~arg_0.x % 32u), u_input.b.x, func_2(Struct_4(1i, firstLeadingBit(18639i), Struct_1(global0[_wgslsmith_index_u32(3313u, 2u)], 9272u, true, false, 52428u)), vec4<f32>(global0[_wgslsmith_index_u32(~arg_0.x, 2u)], -368f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(20908u, 2u)]), -965f))), vec4<f32>(global0[_wgslsmith_index_u32(~1u, 2u)], -2144f, 1229f, -604f));
    global0 = array<f32, 2>();
    var_0 = u_input.c;
    return arg_0.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> Struct_2 {
    var var_0 = min(~1u, func_5(max(_wgslsmith_div_vec4_u32(abs(vec4<u32>(24990u, 0u, 0u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), func_4(func_2(Struct_4(u_input.a.x, u_input.a.x, Struct_1(-202f, 49235u, arg_1, arg_0.x, 4294967295u)), vec4<f32>(-1000f, 1000f, global0[_wgslsmith_index_u32(4294967295u, 2u)], -1335f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(30154u, 2u)], -1785f, 824f)))))));
    global0 = array<f32, 2>();
    var var_1 = ~19635u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1431f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(86101u, 36740u), 2u)]))) + _wgslsmith_div_f32(-111f, -1000f));
    let var_3 = -(~(-7213i | _wgslsmith_clamp_i32(select(u_input.b.x, 24381i, arg_1), _wgslsmith_mod_i32(u_input.a.x, u_input.b.x), 1i)));
    return Struct_2(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~(-35369i), u_input.c.x), -1i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, u_input.c.x, 23074i), vec4<i32>(u_input.a.x, u_input.c.x, u_input.c.x, u_input.a.x)))) == _wgslsmith_dot_vec4_i32(vec4<i32>(var_3 & 17526i, -38787i, -u_input.c.x, select(-33857i, 1i, arg_1)), ~vec4<i32>(1i, -1i, -3298i, -1i)), Struct_1(global0[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_div_u32(reverseBits(firstTrailingBit(1u)), 1u), true, arg_1 | arg_1, 60659u), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.x, false, arg_1), arg_1), vec3<bool>(arg_0.x, arg_0.x, false), select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, true), true)), any(select(vec4<bool>(true, arg_0.x, arg_1, true), vec4<bool>(false, false, true, arg_0.x), arg_1)))), _wgslsmith_dot_vec2_u32(reverseBits(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 61359u), vec2<u32>(4294967295u, 21705u))), countOneBits(vec2<u32>(1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 2>();
    let var_0 = vec2<bool>(true, true);
    global0 = array<f32, 2>();
    var var_1 = func_1(var_0, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 78971u), 1u), firstTrailingBit(0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(21798u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 8924u))) <= 52229u);
    global0 = array<f32, 2>();
    var var_2 = u_input.c.x;
    var_2 = -1i;
    let var_3 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_mod_i32(func_3(func_1(vec2<bool>(var_1.b.c, var_0.x), var_1.a), 636f, Struct_2(var_1.b.d, var_1.b, var_0.x, var_1.d), func_3(Struct_2(var_0.x, Struct_1(global0[_wgslsmith_index_u32(10549u, 2u)], var_1.d, true, var_0.x, var_1.d), true, var_1.b.b), var_1.b.a, Struct_2(true, var_1.b, false, var_1.b.b), vec4<i32>(u_input.c.x, -16904i, u_input.b.x, 47436i))).x, 1i), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(41347i, u_input.c.x) | u_input.c.yy, abs(u_input.b.yx)))), ~(-42161i), func_1(!select(select(var_0, var_0, var_0.x), vec2<bool>(true, true), 40452u != var_1.b.e), var_1.a).b);
    var var_4 = ~max(vec2<i32>(~(-var_3.a), _wgslsmith_div_i32(var_3.b >> (66407u % 32u), 7813i)), vec2<i32>(max(-u_input.b.x, 28451i), 45864i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~firstTrailingBit(vec3<u32>(36553u, var_1.d, var_3.c.b & 102837u)), _wgslsmith_add_i32(u_input.a.x, u_input.b.x), vec4<f32>(_wgslsmith_div_f32(-982f, _wgslsmith_f_op_f32(-var_1.b.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.c.a, var_1.b.a))), -995f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(330f, -983f)))), countOneBits(vec2<i32>(_wgslsmith_mult_i32(~(-1i), -34922i), u_input.b.x)));
}

