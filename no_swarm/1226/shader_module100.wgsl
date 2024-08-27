struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(123204u, 1u, 4294967295u), vec3<u32>(29783u, 31302u, 12799u), vec3<u32>(66404u, 50533u, 20511u), vec3<u32>(4294967295u, 54251u, 28479u), vec3<u32>(0u, 43297u, 4294967295u), vec3<u32>(37789u, 0u, 10138u), vec3<u32>(4294967295u, 63888u, 1u), vec3<u32>(0u, 34228u, 28528u), vec3<u32>(1u, 1u, 68246u), vec3<u32>(7506u, 4294967295u, 24756u), vec3<u32>(1u, 4294967295u, 44641u), vec3<u32>(79814u, 67834u, 37237u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(68235u, 0u, 4294967295u), vec3<u32>(82538u, 0u, 52436u), vec3<u32>(3808u, 0u, 1128u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(1u, 1u, 58730u), vec3<u32>(1u, 6312u, 1u), vec3<u32>(1u, 4294967295u, 18685u), vec3<u32>(1u, 0u, 69762u), vec3<u32>(1u, 8538u, 4294967295u), vec3<u32>(1u, 0u, 8654u), vec3<u32>(0u, 20998u, 0u), vec3<u32>(0u, 23798u, 1u), vec3<u32>(72772u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    let var_0 = !(!(-9427i <= (-53039i ^ _wgslsmith_mod_i32(14174i, arg_2.x))));
    let var_1 = !select(vec4<bool>(!var_0, !all(vec2<bool>(arg_1.x, false)), true, !(!arg_1.x)), vec4<bool>(false, _wgslsmith_f_op_f32(arg_0 - arg_0) <= -1000f, select(all(vec4<bool>(arg_1.x, true, arg_1.x, var_0)), u_input.d.x >= 4957u, any(vec3<bool>(true, var_0, false))), !select(true, var_0, false)), ~u_input.d.x == ~firstLeadingBit(4294967295u));
    global0 = array<vec3<u32>, 27>();
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1240f, 2734f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1645f, 263f))))));
    global0 = array<vec3<u32>, 27>();
    return _wgslsmith_f_op_f32(f32(-1f) * -2077f);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> vec2<f32> {
    var var_0 = firstTrailingBit(u_input.d) & ~firstTrailingBit(arg_0.yxx | vec3<u32>(37736u, 24763u, u_input.d.x));
    let var_1 = arg_0;
    var_0 = countOneBits(select(~_wgslsmith_div_vec3_u32(~arg_0.xxz, vec3<u32>(28259u, var_1.x, arg_2.x)), vec3<u32>(1u, ~4294967295u, 19657u << (var_1.x % 32u)) >> (vec3<u32>(_wgslsmith_sub_u32(var_1.x, u_input.d.x), 26827u, 1u) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), true, true))));
    let var_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, var_0.x), -max(u_input.c.x, arg_1.x) << (11306u % 32u), true), 549f, Struct_1(var_1, arg_1.x, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))) && true), arg_1.x);
    let var_3 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.d.x, var_2.c.a.x, 1u, var_2.a.a.x)) & var_1, _wgslsmith_mod_vec4_u32(select(var_1, var_2.c.a, vec4<bool>(var_2.c.c, var_2.c.c, var_2.c.c, var_2.a.c)), firstTrailingBit(vec4<u32>(u_input.d.x, 1u, var_2.c.a.x, 31383u)))), arg_2 >> (var_2.a.a % vec4<u32>(32u))), _wgslsmith_div_i32(~_wgslsmith_add_i32(min(var_2.a.b, arg_1.x), _wgslsmith_div_i32(u_input.c.x, -6863i)), -56216i), !var_2.a.c | var_2.a.c);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(var_2.b, vec2<bool>(var_2.c.c, false), u_input.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1659f)) + -129f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -158f);
    global0 = array<vec3<u32>, 27>();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -287f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-648f, 824f)))), _wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(firstTrailingBit(62186u), ~u_input.d.x, _wgslsmith_div_u32(1u, u_input.d.x), u_input.d.x) | _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.d.x, 34900u, u_input.d.x, 48823u)), ~vec4<u32>(4294967295u, 1u, 67152u, u_input.d.x), vec4<u32>(1u, 0u, 1u, u_input.d.x) | vec4<u32>(60315u, u_input.d.x, u_input.d.x, 4294967295u)), u_input.a, vec4<u32>(u_input.d.x, _wgslsmith_add_u32(_wgslsmith_div_u32(74202u, 65023u), u_input.d.x << (u_input.d.x % 32u)), 1u, select(1u, ~u_input.d.x, any(arg_0.zwy)))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -2149f))) - _wgslsmith_f_op_vec2_f32(func_2(vec4<u32>(u_input.d.x, 11345u, u_input.d.x, u_input.d.x), -u_input.a, abs(vec4<u32>(3457u, 32881u, 81976u, u_input.d.x))))))));
    var var_3 = countOneBits(firstTrailingBit(~countOneBits(u_input.c.x)));
    return -_wgslsmith_clamp_vec3_i32(-(vec3<i32>(-21454i, u_input.b, arg_1.x) << (vec3<u32>(62309u, u_input.d.x, u_input.d.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(~(~u_input.a.zwy), arg_1.wyw), _wgslsmith_add_vec3_i32(vec3<i32>(~arg_1.x, arg_1.x & u_input.b, arg_1.x << (u_input.d.x % 32u)), vec3<i32>(~arg_1.x, -3520i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, false, false, false)), vec4<bool>(any(vec2<bool>(true, true)), true, any(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), all(vec3<bool>(false, true, false))), true), vec4<i32>(~u_input.c.x, abs(i32(-1i) * -u_input.a.x), u_input.a.x, 2147483647i));
    let var_1 = _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.x << (73762u % 32u), u_input.c.x), -var_0 ^ vec3<i32>(u_input.c.x, -45764i, 18826i)), var_0.x) << (u_input.d.x % 32u);
    let var_2 = reverseBits(-1i);
    var var_3 = 616i;
    var var_4 = Struct_2(Struct_1(vec4<u32>(1u, 0u, firstLeadingBit(43116u), u_input.d.x), abs(_wgslsmith_mod_i32(u_input.c.x >> (1u % 32u), ~9606i)), any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1291f)) * _wgslsmith_f_op_f32(f32(-1f) * -3005f)) * -829f), Struct_1(vec4<u32>(~firstTrailingBit(4294967295u), 18191u, 1u, ~u_input.d.x), u_input.a.x, false), ~var_1);
    var var_5 = var_4.a.a.x;
    var_5 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-min(u_input.b, u_input.b)), _wgslsmith_add_i32(~var_4.c.b ^ u_input.c.x, min(reverseBits(-54451i), 1i)), true), firstLeadingBit(vec4<u32>(var_4.a.a.x, var_4.c.a.x, 25500u, _wgslsmith_dot_vec2_u32(u_input.d.xz, var_4.a.a.wy))));
}

