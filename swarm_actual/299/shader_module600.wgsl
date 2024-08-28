struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 5>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1000f, arg_0, 1362f), vec4<f32>(2032f, 492f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 109f, -1145f, 212f) * vec4<f32>(-373f, arg_0, arg_0, arg_0))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -1000f, arg_0, arg_0))), _wgslsmith_div_vec4_f32(vec4<f32>(-689f, arg_0, arg_0, -1691f), vec4<f32>(arg_0, 1811f, 393f, 707f))), vec4<bool>(true, true, true, true)))), Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(14364u, 4294967295u, 1u), firstTrailingBit(vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<u32>(8074u, 4294967295u, 64851u))), ~(~(~vec4<u32>(1u, 0u, 0u, 29850u))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -238f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_mult_vec3_u32(vec3<u32>(67849u, 19396u, 8272u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, -1000f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0)))))), 1u), -1287f, abs(max(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.c.x, u_input.a.x, -28035i), u_input.c & u_input.b, u_input.b), u_input.c)), Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(1442f, arg_0) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1205f, arg_0) + vec2<f32>(588f, 1000f)))))));
    global0 = array<vec2<bool>, 5>();
    global0 = array<vec2<bool>, 5>();
    var var_1 = _wgslsmith_dot_vec3_u32(var_0.b.b.wzy, reverseBits(~(~(~vec3<u32>(4294967295u, var_0.b.b.x, 35698u)))));
    var_1 = 28013u;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-100f, 502f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c.a + -217f)))));
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> Struct_5 {
    global0 = array<vec2<bool>, 5>();
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1968f, 1000f, arg_1.c.a, -844f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_1.c.b, arg_0, -949f))))), Struct_2(4294967295u, vec4<u32>(62002u, ~arg_1.d, 32786u | arg_1.c.c.x, _wgslsmith_dot_vec3_u32(arg_1.c.c, _wgslsmith_div_vec3_u32(arg_1.b.zwx, arg_1.b.yww))), arg_1.c, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(arg_1.c.d.x)), _wgslsmith_f_op_f32(round(arg_1.c.a)))))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.b.x, -14132i), ~u_input.c), u_input.b.x, u_input.b.x), select(-u_input.b.x, u_input.c.x, select(false, true, all(vec3<bool>(true, true, true)))), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, 22470i) << (arg_1.b % vec4<u32>(32u)), -vec4<i32>(-40961i, u_input.c.x, u_input.b.x, 39152i)))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.d.x - -858f) - -1704f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1136f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(arg_1.c.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1930f, -914f)))))));
    let var_1 = 433f;
    global0 = array<vec2<bool>, 5>();
    var var_2 = var_0.b;
    return Struct_5(vec4<f32>(990f, _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(abs(-574f))), -375f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.d.x)), var_1)), Struct_2(_wgslsmith_mod_u32(firstLeadingBit(arg_1.b.x) << (~4294967295u % 32u), ~(~var_2.d)), countOneBits(reverseBits(var_0.b.b)), Struct_1(var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.c.b + 450f), -1000f)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.d, 4294967295u, var_0.b.a), var_0.b.c.c), _wgslsmith_div_vec2_f32(var_0.a.yx, _wgslsmith_f_op_vec2_f32(abs(var_2.c.d)))), 0u), var_2.c.b, _wgslsmith_sub_vec3_i32(var_0.d, -_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.d.x, -2147483647i, 52286i), vec3<i32>(var_0.d.x, var_0.d.x, u_input.c.x)), abs(vec3<i32>(6523i, -1i, 2147483647i)))), var_0.e);
}

fn func_1(arg_0: bool) -> u32 {
    global0 = array<vec2<bool>, 5>();
    var var_0 = Struct_2(1u, ~(~min(abs(vec4<u32>(19114u, 5665u, 0u, 4294967295u)), ~vec4<u32>(0u, 4294967295u, 43797u, 0u))), Struct_1(-348f, 326f, ~(~vec3<u32>(29252u, 13036u, 4294967295u)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1432f), -476f), _wgslsmith_f_op_f32(min(-1704f, -725f)))), firstTrailingBit(~(~1u)));
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -207f) * _wgslsmith_f_op_f32(f32(-1f) * -289f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(-439f * var_0.c.d.x)))), Struct_2(9810u, var_0.b, var_0.c, ~33482u));
    var var_2 = _wgslsmith_add_vec2_i32(-(vec2<i32>(-1i) * -select(var_1.d.zy, var_1.d.xx, vec2<bool>(false, true))), vec2<i32>(firstTrailingBit(-5542i), max(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), u_input.a), -firstTrailingBit(0i))));
    let var_3 = func_2(_wgslsmith_f_op_f32(func_2(-224f, func_2(_wgslsmith_f_op_f32(420f * 209f), func_2(var_1.c, var_1.b).b).b).b.c.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(1076f - 1000f)))), func_2(var_1.e.a, Struct_2(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.b.x, 0u), ~1u), vec4<u32>(var_1.b.d >> (var_0.d % 32u), 1u, 0u, 18834u), Struct_1(-1678f, var_1.c, ~vec3<u32>(1u, var_0.a, var_1.b.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c.d.x, -1668f)))), ~(var_1.b.d ^ var_0.a))).b);
    return ~abs(firstLeadingBit(var_3.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(~min(1u, 71247u), func_1(true), _wgslsmith_mod_u32(select(24408u, 0u, true), 58476u), ~0u) ^ vec4<u32>(1u, 1u, 61439u, _wgslsmith_dot_vec2_u32(~vec2<u32>(26441u, 14763u), firstTrailingBit(vec2<u32>(0u, 4294967295u) >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)))));
    var var_1 = 1i;
    var var_2 = reverseBits(vec3<u32>(~_wgslsmith_mult_u32(var_0.x >> (1u % 32u), _wgslsmith_mod_u32(var_0.x, 0u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, var_0.x), var_0.zww), var_0.x));
    var_1 = -(_wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, u_input.a.x), 1i, u_input.c.x) >> (func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-217f, -536f))), func_2(_wgslsmith_f_op_f32(-1580f * 875f), Struct_2(var_0.x, vec4<u32>(1u, var_0.x, var_0.x, 56510u), Struct_1(-1002f, -101f, var_0.xwy, vec2<f32>(1458f, -1696f)), 14945u)).b).b.a % 32u));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(func_3(-1444f)), -893f, -1000f, -1623f);
    var_0 = reverseBits(vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~0u) & var_0.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + var_3.x) * var_3.x), func_2(-579f, func_2(-168f, Struct_2(0u, vec4<u32>(var_0.x, 57823u, var_0.x, 1u), Struct_1(-737f, var_3.x, var_0.zyw, var_3.wz), var_2.x)).b).b).b.d, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_2.x, 2131u, 36516u, 18122u), select(vec4<u32>(4294967295u, 72086u, 1u, var_2.x), vec4<u32>(var_0.x, var_2.x, 88886u, var_2.x), false)), vec4<u32>(~var_2.x, min(0u, 6005u), countOneBits(var_0.x), 0u)), 13077u << (var_0.x % 32u)));
    var_1 = 56006i;
    var var_4 = -(~(~(~6145i)));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(ceil(-1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, u_input.b.x, u_input.a.x, 49330i)) & ~max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.c.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.a.x)), vec4<i32>(u_input.a.x, 0i, ~min(-2147483647i, u_input.b.x), 2980i)));
}

