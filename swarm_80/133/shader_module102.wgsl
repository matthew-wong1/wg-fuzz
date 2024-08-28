struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(196f, 1704f)))))));
    return !vec2<bool>(arg_0.x, arg_0.x);
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = Struct_3(Struct_2(vec3<bool>(true, true, true), Struct_1(abs(~u_input.b.x), _wgslsmith_add_u32(u_input.e.x, u_input.c.x) << (u_input.c.x % 32u)), u_input.d < u_input.d, select(vec2<bool>(true, true), func_3(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), Struct_1(u_input.d, u_input.a), Struct_1(u_input.b.x, 101911u)), vec2<bool>(2147483647i != u_input.d, any(vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_f32(arg_0 + -1246f));
    var var_1 = var_0.a.b;
    let var_2 = Struct_4(Struct_3(Struct_2(vec3<bool>(var_1.a >= 23111i, 1685f == var_0.b, !var_0.a.c), Struct_1(-19207i, var_0.a.b.b), var_0.a.d.x, var_0.a.d), arg_0), Struct_2(vec3<bool>(u_input.e.x >= 42393u, true, select(true, all(vec3<bool>(false, false, var_0.a.d.x)), true)), Struct_1(var_1.a, var_0.a.b.b), _wgslsmith_f_op_f32(max(arg_0, -281f)) >= -1280f, select(var_0.a.d, select(!var_0.a.a.yx, vec2<bool>(false, var_0.a.a.x), vec2<bool>(false, false)), vec2<bool>(!var_0.a.a.x, var_0.a.a.x))), Struct_3(Struct_2(vec3<bool>(true, true, !var_0.a.d.x), Struct_1(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_0.a.b.a, var_0.a.b.a, 11204i)), ~u_input.e.x), true || any(vec2<bool>(true, true)), !func_3(vec4<bool>(false, var_0.a.a.x, var_0.a.a.x, true), var_0.a.b, var_0.a.b)), arg_0), Struct_2(!(!var_0.a.a), Struct_1(_wgslsmith_clamp_i32(8560i, var_1.a, -35110i) & _wgslsmith_clamp_i32(u_input.d, -3657i, 1i), ~(~0u)), select(any(vec4<bool>(true, var_0.a.d.x, var_0.a.d.x, var_0.a.c)), var_0.a.a.x, _wgslsmith_mult_u32(var_1.b, var_1.b) == ~u_input.a), var_0.a.d));
    var_0 = var_2.a;
    var_1 = var_2.c.a.b;
    return _wgslsmith_dot_vec4_u32(~reverseBits(~vec4<u32>(4294967295u, u_input.c.x, 1u, 83271u)), abs(~(vec4<u32>(var_0.a.b.b, 4294967295u, var_1.b, var_1.b) >> (vec4<u32>(var_1.b, 0u, 25780u, 1u) % vec4<u32>(32u))))) > ~(~(~u_input.e.x));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> Struct_4 {
    let var_0 = abs(~countOneBits(u_input.b | u_input.b)) & abs(vec3<i32>(~(~(-12244i)), -20471i, -(i32(-1i) * -2147483647i)));
    let var_1 = Struct_1(var_0.x, arg_1.x);
    let var_2 = Struct_4(Struct_3(Struct_2(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, false)), Struct_1(var_1.a, u_input.c.x), true, !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), -776f), Struct_2(vec3<bool>(false, (var_0.x > -12340i) || true, true), var_1, true, !select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), Struct_3(Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), var_1, 828f < _wgslsmith_f_op_f32(-arg_0), vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(574f)))) * -583f)), Struct_2(vec3<bool>(true, false, false), Struct_1(select(_wgslsmith_add_i32(-35277i, var_0.x), _wgslsmith_mult_i32(var_0.x, var_0.x), all(vec4<bool>(true, false, false, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 3233u), ~vec2<u32>(u_input.a, arg_1.x))), true, vec2<bool>(select(false, true, false) | true, u_input.c.x < _wgslsmith_add_u32(var_1.b, var_1.b))));
    var var_3 = Struct_2(vec3<bool>(false, true, func_3(!select(vec4<bool>(var_2.b.c, var_2.a.a.c, var_2.a.a.d.x, false), vec4<bool>(var_2.a.a.d.x, false, var_2.a.a.c, var_2.a.a.d.x), var_2.b.c), var_2.c.a.b, var_2.d.b).x), Struct_1(var_0.x, 1u), all(select(var_2.a.a.a, var_2.c.a.a, false)) | !var_2.b.d.x, var_2.b.d);
    var_3 = var_2.c.a;
    return Struct_4(var_2.a, Struct_2(vec3<bool>(true, var_1.b <= ~1u, true), var_1, var_2.c.a.a.x, vec2<bool>((1u << (var_1.b % 32u)) < ~1851u, _wgslsmith_f_op_f32(floor(1130f)) != _wgslsmith_f_op_f32(f32(-1f) * -1189f))), var_2.a, Struct_2(var_3.a, var_3.b, _wgslsmith_div_f32(var_2.c.b, _wgslsmith_f_op_f32(max(var_2.c.b, var_2.c.b))) > 1000f, vec2<bool>(true, !(false || var_2.c.a.c))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_4(262f, select(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.a, u_input.e.x, u_input.c.x) & vec4<u32>(u_input.e.x, 4751u, 51864u, 18122u)), vec4<u32>(1u, 102811u, ~u_input.a, ~u_input.c.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.e.x, 38283u), ~vec4<u32>(33995u, u_input.e.x, u_input.c.x, u_input.e.x)), vec4<bool>(!any(arg_0.ww), all(arg_0), true & func_2(919f), true)));
    var_0 = func_4(var_0.a.b, ~vec4<u32>(firstTrailingBit(abs(u_input.a)), abs(1u), ~u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, u_input.e.x, u_input.e.x), u_input.c.x)));
    var var_1 = _wgslsmith_f_op_f32(-var_0.a.b);
    let var_2 = all(func_3(!arg_0, func_4(_wgslsmith_f_op_f32(abs(-116f)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0.a.a.b.b, 4294967295u, 1u), vec4<u32>(u_input.e.x, 92122u, var_0.a.a.b.b, var_0.a.a.b.b) ^ vec4<u32>(114785u, 6124u, 0u, var_0.c.a.b.b), vec4<u32>(var_0.b.b.b, u_input.e.x, u_input.a, var_0.a.a.b.b))).d.b, func_4(_wgslsmith_f_op_f32(-var_0.a.b), reverseBits(abs(vec4<u32>(u_input.e.x, var_0.a.a.b.b, 33525u, u_input.c.x)))).b.b));
    var_1 = var_0.a.b;
    return Struct_1(firstTrailingBit(firstTrailingBit(-_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(u_input.d, var_0.b.b.a)))), min(var_0.c.a.b.b, min(u_input.e.x, 34672u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b, u_input.b), u_input.b ^ vec3<i32>(u_input.b.x, -9594i, ~(u_input.b.x >> (0u % 32u))));
    var var_1 = countOneBits(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, ~0u, u_input.a, u_input.c.x), vec4<u32>(u_input.a, 29365u, reverseBits(u_input.c.x), ~0u))));
    let var_2 = 2147483647i;
    let var_3 = func_1(vec4<bool>(any(vec2<bool>(true, all(vec2<bool>(true, true)))), true, true, all(vec3<bool>(true, true, true))));
    let var_4 = _wgslsmith_sub_i32(-select(-25741i, _wgslsmith_clamp_i32(~u_input.d, _wgslsmith_add_i32(-14732i, -2817i), firstLeadingBit(u_input.b.x)), true), -1i);
    var_0 = var_2;
    var_0 = -2147483647i ^ (var_2 ^ func_4(-1066f, vec4<u32>(~2507u, 81525u, u_input.e.x | 1u, var_1.x)).d.b.a);
    var var_5 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1690f)), _wgslsmith_f_op_f32(trunc(-630f))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(194f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1445f))))))));
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1418f))), _wgslsmith_f_op_f32(-1671f * _wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_f_op_f32(f32(-1f) * -1721f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, var_5.x, 250f) - vec3<f32>(-1421f, var_5.x, -117f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<i32>(var_4, 1308i, firstTrailingBit(var_4), var_2) >> (firstLeadingBit(~vec4<u32>(u_input.e.x, 39612u, u_input.e.x, 4294967295u)) % vec4<u32>(32u)), var_3.b, vec4<f32>(_wgslsmith_f_op_f32(max(var_5.x, _wgslsmith_f_op_f32(f32(-1f) * -859f))), var_6.x, 1463f, _wgslsmith_div_f32(var_6.x, 352f)), var_2);
}

