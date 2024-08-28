struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-286f, 1408f, 1457f), vec3<f32>(-1539f, -1203f, 559f), vec3<f32>(784f, 1000f, 495f), vec3<f32>(2019f, -1618f, 888f), vec3<f32>(-143f, -1000f, -1108f), vec3<f32>(-1000f, -138f, -1144f), vec3<f32>(-297f, 1064f, 893f), vec3<f32>(494f, 2595f, 1529f), vec3<f32>(-140f, 1247f, 1000f), vec3<f32>(469f, 1361f, 177f), vec3<f32>(210f, 399f, -272f), vec3<f32>(-1403f, 341f, 1439f), vec3<f32>(1599f, -629f, 984f), vec3<f32>(-1692f, 591f, 1168f), vec3<f32>(253f, 897f, -115f), vec3<f32>(1720f, -1000f, -896f), vec3<f32>(-1000f, 288f, 1000f), vec3<f32>(1219f, 1000f, 1193f), vec3<f32>(-176f, -971f, -888f), vec3<f32>(355f, -972f, 1462f), vec3<f32>(-158f, 283f, 1940f), vec3<f32>(-1326f, 681f, -1120f), vec3<f32>(-214f, -915f, -2470f), vec3<f32>(1263f, 851f, 590f), vec3<f32>(-1046f, -2257f, 1000f), vec3<f32>(-506f, -1094f, 709f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = Struct_1(~(~(-abs(vec2<i32>(17487i, -11696i)))), vec2<i32>(u_input.a | firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(u_input.a, i32(-1i) * -1i)) | -vec2<i32>(-u_input.a, _wgslsmith_sub_i32(-2160i, u_input.a)), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(any(vec3<bool>(false, true, true)), true), vec2<bool>(u_input.b != u_input.b, false), u_input.b >= ~u_input.b), true), ~4294967295u, vec3<u32>(0u, 0u, _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(u_input.b, ~36022u, _wgslsmith_sub_u32(41269u, 1u)))));
    let var_1 = Struct_1(select(-var_0.a, ~max(vec2<i32>(var_0.a.x, var_0.a.x) | vec2<i32>(-1i, u_input.a), vec2<i32>(var_0.b.x, var_0.a.x)), (abs(u_input.a) | min(2147483647i, u_input.a)) == ~(u_input.a >> (19561u % 32u))), min(vec2<i32>(14526i, -31458i), var_0.a), select(var_0.c, vec2<bool>(true, any(vec4<bool>(var_0.c.x, true, var_0.c.x, false))), vec2<bool>(select(any(var_0.c), true, true), true)), abs(_wgslsmith_add_u32(~select(u_input.b, var_0.d, true), u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(36450u, var_0.e.x), ~_wgslsmith_sub_u32(40299u, u_input.b), 1u), ~reverseBits(vec3<u32>(var_0.e.x, u_input.b, u_input.b))));
    var_0 = Struct_1(vec2<i32>(u_input.a << (u_input.b % 32u), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, 0i, var_1.b.x, 2147483647i)), select(vec4<i32>(u_input.a, 2147483647i, 1i, 2020i), vec4<i32>(var_1.b.x, 1i, 0i, 10108i), vec4<bool>(var_0.c.x, var_1.c.x, var_0.c.x, true))) | ~0i), var_1.a, vec2<bool>(true, var_1.c.x), ~1u, ~select(abs(vec3<u32>(64861u, u_input.b, 0u)), select(~vec3<u32>(var_1.d, 0u, var_0.d), vec3<u32>(2800u, var_0.d, 22529u), vec3<bool>(true, false, var_1.c.x)), select(vec3<bool>(var_1.c.x, var_0.c.x, var_0.c.x), !vec3<bool>(false, var_0.c.x, false), select(vec3<bool>(var_0.c.x, var_0.c.x, var_1.c.x), vec3<bool>(var_1.c.x, var_0.c.x, true), var_0.c.x))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(381f + 1199f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1266f, _wgslsmith_f_op_f32(max(271f, -546f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1189f)))) - -172f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-621f - 660f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-123f, -628f, true)) + -1000f) - 554f)));
    return var_1.c.x;
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<f32>, 26>();
    let var_0 = select((min(i32(-1i) * -1i, ~(-2147483647i)) >= (~1i | u_input.a)) && (false | (u_input.a >= 1i)), (!all(vec3<bool>(true, true, true)) && (true | func_3())) || any(vec2<bool>(all(vec4<bool>(true, false, true, false)), true)), !(true || (u_input.a != u_input.a)));
    var var_1 = true;
    var_1 = all(!(!(!(!vec2<bool>(var_0, var_0)))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1451f);
    return Struct_1(abs(-vec2<i32>(-37322i, 2147483647i) & (-vec2<i32>(40693i, u_input.a) << (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)))), firstTrailingBit(vec2<i32>(3749i, -1i) | vec2<i32>(u_input.a, -19318i)) | (-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a)) & -(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a))), !(!(!vec2<bool>(true, var_0))), u_input.b, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.b, 18085u, 62506u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, 0u, 44977u) ^ vec3<u32>(u_input.b, 1u, 45869u))), max((vec3<u32>(u_input.b, u_input.b, 37148u) | vec3<u32>(u_input.b, 15143u, 1u)) | countOneBits(vec3<u32>(0u, u_input.b, 52897u)), vec3<u32>(~64963u, ~39026u, ~0u))));
}

fn func_1() -> vec2<bool> {
    global0 = array<vec3<f32>, 26>();
    global0 = array<vec3<f32>, 26>();
    let var_0 = func_2();
    let var_1 = var_0.d;
    let var_2 = func_2();
    return select(var_2.c, !vec2<bool>(var_0.c.x, any(select(var_2.c, var_2.c, var_2.c.x))), select(!(!vec2<bool>(var_2.c.x, var_2.c.x)), func_2().c, var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = vec2<u32>(1u, 0u);
    var var_2 = u_input.a | _wgslsmith_sub_i32(-1i, 74015i);
    let var_3 = Struct_1(~((vec2<i32>(u_input.a, 0i) | vec2<i32>(-49216i, -2147483647i)) & -vec2<i32>(u_input.a, 1i)) >> (vec2<u32>(~firstLeadingBit(var_1.x), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_add_u32(var_1.x, 4294967295u))) % vec2<u32>(32u)), firstLeadingBit(firstLeadingBit(reverseBits(vec2<i32>(u_input.a, u_input.a)) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(0i, u_input.a), vec2<i32>(1i, u_input.a)))), select(select(vec2<bool>(true, var_1.x == var_1.x), vec2<bool>(true, true), true), select(func_1(), vec2<bool>(true, true), !func_1().x), true), min(~max(~42360u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_1.x, u_input.b), vec3<u32>(0u, 79799u, var_1.x))), 1u >> (_wgslsmith_sub_u32(u_input.b, ~u_input.b) % 32u)), vec3<u32>(var_1.x, ~(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(3022u, 487u), ~vec2<u32>(var_1.x, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.e, -286f);
}

