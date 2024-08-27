struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> i32 {
    return _wgslsmith_clamp_i32(~(-2147483647i), 0i << (arg_0 % 32u), -(~select(4383i, 1i, all(vec2<bool>(arg_1.x, arg_1.x)))));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: f32, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = Struct_2(vec4<i32>(~arg_0.x, arg_0.x, _wgslsmith_div_i32(_wgslsmith_add_i32(-32176i, arg_1), arg_1 | arg_1), arg_0.x) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.a.x, 1u), ~(vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x) & vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1117f), u_input.a.x, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    global0 = 1u;
    let var_1 = Struct_1(vec2<f32>(-1902f, _wgslsmith_f_op_f32(f32(-1f) * -333f)), var_0.a);
    let var_2 = -vec4<i32>(_wgslsmith_dot_vec4_i32(-select(vec4<i32>(var_1.b.x, var_1.b.x, arg_0.x, var_0.a.x), vec4<i32>(var_0.a.x, var_1.b.x, var_1.b.x, -6497i), vec4<bool>(false, var_0.d, var_0.d, var_0.d)), reverseBits(vec4<i32>(arg_1, arg_1, -2147483647i, 19676i))), var_0.a.x, var_0.a.x, func_3(13953u, select(vec3<bool>(true, var_0.d, false), vec3<bool>(var_0.d, true, false), all(vec3<bool>(var_0.d, true, var_0.d)))));
    let var_3 = abs(~vec3<u32>(abs(u_input.a.x), ~61911u, u_input.a.x)) ^ vec3<u32>(~var_0.c, _wgslsmith_div_u32(var_0.c, _wgslsmith_mult_u32(0u, var_0.c)), ~var_0.c);
    return -(max(select(var_2, vec4<i32>(var_2.x, var_2.x, var_1.b.x, var_0.a.x), select(vec4<bool>(var_0.d, var_0.d, var_0.d, true), vec4<bool>(false, var_0.d, true, true), vec4<bool>(false, var_0.d, false, var_0.d))), -reverseBits(vec4<i32>(arg_1, -10986i, arg_0.x, var_1.b.x))) >> (abs(max(vec4<u32>(68783u, 14643u, var_3.x, 5783u), min(vec4<u32>(1u, 1u, 25447u, u_input.a.x), vec4<u32>(822u, 0u, var_0.c, 4294967295u)))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> u32 {
    var var_0 = Struct_3(2147483647i, select(!arg_2.yx, select(!vec2<bool>(arg_0.b.d, false), vec2<bool>(arg_3.x != arg_3.x, false), vec2<bool>(1u > arg_1.x, true)), !vec2<bool>(true, arg_0.b.d)), vec2<bool>(all(vec4<bool>(all(arg_2.yz), all(arg_2), any(arg_2.yz), arg_0.a.b <= arg_0.c.a.x)), arg_2.x), Struct_2((vec4<i32>(0i, -2147483647i, 0i, arg_0.b.a.x) | vec4<i32>(arg_3.x, arg_0.c.b.x, arg_3.x, -6505i)) << (vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.a.x), arg_0.a.c, ~4294967295u, 94380u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.c.a.x * _wgslsmith_f_op_f32(-arg_0.a.b)), 950f)), arg_0.a.c, all(!(!arg_2.zy))));
    var_0 = Struct_3(-17259i, vec2<bool>(var_0.b.x, var_0.b.x), !(!var_0.c), Struct_2((_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_0.d.a.x, arg_0.c.b.x, -28954i), var_0.d.a, arg_0.c.b) & (arg_3 | vec4<i32>(1i, arg_3.x, -5020i, 2147483647i))) << (max(vec4<u32>(arg_0.a.c, 126123u, u_input.a.x, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(27695u, u_input.a.x, 91411u, var_0.d.c), vec4<u32>(arg_1.x, 1u, arg_0.a.c, var_0.d.c), vec4<u32>(5042u, 1u, 1u, var_0.d.c))) % vec4<u32>(32u)), 652f, 0u, false));
    let var_1 = -2147483647i;
    global0 = _wgslsmith_mod_u32(~(~arg_0.b.c) << (1u % 32u), _wgslsmith_mod_u32(min(arg_1.x, firstLeadingBit(~arg_1.x)), _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(55481u, ~4294967295u))));
    global0 = reverseBits(43090u);
    return u_input.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_5) -> vec4<u32> {
    let var_0 = Struct_4(Struct_2(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1751f - _wgslsmith_f_op_f32(round(arg_1.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1238f)), _wgslsmith_f_op_f32(exp2(arg_2.a.x))))), func_4(Struct_4(Struct_2(vec4<i32>(21925i, -2147483647i, -35356i, 1i), -162f, u_input.a.x, arg_0.d), Struct_2(vec4<i32>(-19267i, 5036i, -2638i, arg_0.a.x), arg_1.x, 12395u, false), Struct_1(vec2<f32>(arg_0.b, arg_2.a.x), arg_0.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 63026u), u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, arg_0.c, arg_0.c), vec3<u32>(4294967295u, u_input.a.x, 0u)), vec3<bool>(true, all(vec2<bool>(arg_0.d, false)), all(vec3<bool>(true, false, false))), func_2(arg_0.a.wx, _wgslsmith_div_i32(arg_0.a.x, arg_0.a.x), 583f, _wgslsmith_f_op_vec3_f32(arg_1 - vec3<f32>(arg_2.a.x, arg_0.b, 726f)))), arg_1.x > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.b - 1000f)))), arg_0, Struct_1(vec2<f32>(-119f, _wgslsmith_f_op_f32(-arg_0.b)), -_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, arg_0.a.x, arg_0.a.x, 8503i), vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x))), vec2<u32>(~19504u, ~_wgslsmith_div_u32(35968u, 1u)));
    global0 = 4294967295u;
    global0 = ~arg_0.c;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a.b)), _wgslsmith_f_op_f32(-var_0.b.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f * arg_0.b)) - arg_1.x))));
    var var_2 = Struct_3(1i, select(vec2<bool>(true, select(!arg_0.d, true, true)), select(select(vec2<bool>(var_0.b.d, arg_0.d), !vec2<bool>(arg_0.d, false), vec2<bool>(arg_0.d, var_0.b.d)), vec2<bool>(any(vec4<bool>(var_0.b.d, var_0.b.d, var_0.a.d, false)), false), false), vec2<bool>(true, true)), !(!vec2<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(arg_0.d, false, false)))), arg_0);
    return countOneBits(vec4<u32>(~7925u, var_2.d.c, reverseBits(1u), 24929u) | select((vec4<u32>(1u, var_2.d.c, 1u, var_2.d.c) << (vec4<u32>(39656u, 0u, 82993u, 3002u) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.c, 0u, 41530u, arg_0.c), vec4<u32>(u_input.a.x, var_2.d.c, var_2.d.c, 4294967295u)) % vec4<u32>(32u)), reverseBits(vec4<u32>(var_2.d.c, 4294967295u, 85005u, 45962u)), select(!vec4<bool>(false, false, var_2.d.d, true), vec4<bool>(var_0.a.d, true, true, false), vec4<bool>(var_2.b.x, var_0.a.d, var_2.b.x, arg_0.d))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> vec4<u32> {
    var var_0 = vec4<bool>(true, true, false, any(select(vec4<bool>(false, false, arg_2.x || true, !arg_2.x), !select(arg_2, arg_2, arg_1.x), select(select(vec4<bool>(arg_1.x, false, arg_2.x, arg_2.x), vec4<bool>(false, arg_2.x, false, arg_2.x), vec4<bool>(true, false, arg_2.x, true)), arg_2, select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, arg_2.x), true)))));
    var var_1 = 1317f;
    var_0 = select(vec4<bool>(arg_2.x, true, true, var_0.x), vec4<bool>(arg_2.x, true, !any(arg_1) && true, !(all(vec3<bool>(false, var_0.x, arg_2.x)) | true)), true);
    let var_2 = func_2(select(~_wgslsmith_sub_vec2_i32(vec2<i32>(-57152i, 2251i), vec2<i32>(1i, 2147483647i)), vec2<i32>(1i, func_2(vec2<i32>(1i, 15907i), 2147483647i, 1000f, vec3<f32>(1041f, 442f, 999f)).x), false) & min(_wgslsmith_add_vec2_i32(-vec2<i32>(-1i, -2147483647i), vec2<i32>(0i, -32135i)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(0i, 697i), vec2<i32>(-1i, 63835i))), ~(~(-firstTrailingBit(-31623i))), 1272f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-298f, -1024f, -942f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1250f, -624f, -455f) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(470f, -278f, 1706f), vec3<f32>(823f, -607f, 272f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(617f, -1185f, -1148f) * vec3<f32>(-302f, 1253f, 886f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-225f, -665f, -1039f))))))).x;
    let var_3 = Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -1391f))), _wgslsmith_f_op_f32(-1f))));
    return vec4<u32>(_wgslsmith_mult_u32(4294967295u, arg_0.x), ~(~u_input.a.x), _wgslsmith_dot_vec2_u32(~u_input.a, _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.x, 19276u), vec2<u32>(31780u, 4294967295u))) >> (arg_0.x % 32u), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.x;
    global0 = _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, ~u_input.a.x)), vec3<u32>(13970u, 8910u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), func_5(func_1(Struct_2(vec4<i32>(-51461i, -1i, -19995i, -21990i), -932f, 65214u, true), vec3<f32>(263f, -2092f, 1312f), Struct_5(vec2<f32>(-784f, 1184f))), vec2<bool>(false, true), vec4<bool>(true, true, true, true)))));
    global0 = _wgslsmith_mod_u32(~(u_input.a.x & u_input.a.x), ~(~(~u_input.a.x)));
    var var_0 = vec4<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)))) && true, any(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(u_input.a.x == 39489u, all(vec2<bool>(false, true)), false), vec3<bool>(any(vec4<bool>(true, true, false, false)), all(vec2<bool>(false, false)), true))), !(select(any(vec4<bool>(true, true, true, true)), 67193u == u_input.a.x, true) | true));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-900f, -843f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-554f, 1659f))), any(vec3<bool>(var_0.x, var_0.x, var_0.x))))));
    var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a, vec2<f32>(var_1.a.x, var_1.a.x), var_0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) - var_1.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a, var_1.a))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_1.a, vec2<f32>(-910f, -101f), vec2<bool>(true, true))), vec2<f32>(-704f, var_1.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1924f, -283f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, -171f) * var_1.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-935f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x - 437f))), var_1.a.x)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, -1076f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(-525f)), -498f, var_1.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(383f, -1519f, var_1.a.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -332f, var_1.a.x)))))));
}

