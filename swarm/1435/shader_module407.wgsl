struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = 0i;
    var var_1 = u_input.a;
    var_1 = countOneBits(_wgslsmith_div_vec4_i32(u_input.a, -select(vec4<i32>(var_1.x, -2147483647i, 1i, 7163i), ~vec4<i32>(0i, u_input.a.x, 50762i, var_1.x), vec4<bool>(true, true, true, true))));
    var_0 = _wgslsmith_add_i32(~reverseBits(u_input.c), u_input.c);
    var var_2 = Struct_1(1041f);
    return 4294967295u;
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = 0i & (u_input.c | ~(-2147483647i));
    var var_1 = select(~(~countOneBits(1u)), func_3(~(vec4<u32>(u_input.b, arg_0.x, arg_0.x, u_input.d.x) >> (vec4<u32>(arg_0.x, 36991u, arg_0.x, 4294967295u) % vec4<u32>(32u)))), false);
    var_1 = ~arg_0.x;
    var_1 = _wgslsmith_add_u32(u_input.b, ~(func_3(vec4<u32>(arg_0.x, u_input.d.x, arg_0.x, arg_0.x)) | ~(arg_0.x ^ u_input.b)));
    var_1 = _wgslsmith_sub_u32(1u, min(0u, 4294967295u >> (countOneBits(~87626u) % 32u)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-655f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 410f) + -211f))), true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1197f)) + _wgslsmith_f_op_f32(284f * -1369f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1623f)))), _wgslsmith_div_f32(-195f, _wgslsmith_f_op_f32(-898f - -1716f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1579f + 1439f), -460f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(245f, -580f, -1860f, -2405f), vec4<f32>(-1241f, -1469f, -601f, 227f), false)))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -578f), -1334f, false)), _wgslsmith_f_op_f32(-349f - -1150f), arg_3.c.x);
    let var_1 = arg_1;
    var var_2 = Struct_3(select(!vec4<bool>(all(vec3<bool>(arg_3.b, true, arg_3.b)), arg_3.b, false, arg_3.b), !vec4<bool>(all(vec3<bool>(true, true, true)), all(vec4<bool>(true, arg_3.b, arg_3.b, arg_3.b)), true, arg_3.b), any(vec3<bool>(arg_3.b, true, false))), func_2(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 46765u, u_input.b), ~vec4<u32>(u_input.b, 90146u, 3810u, u_input.d.x))));
    var var_3 = ~(~vec3<u32>(37u, 71980u, u_input.b));
    let var_4 = arg_3.b;
    return -(~_wgslsmith_mult_vec3_i32(~u_input.a.wxw, ~u_input.a.wxx));
}

fn func_1() -> Struct_4 {
    var var_0 = true;
    let var_1 = Struct_4(~func_4(Struct_1(_wgslsmith_f_op_f32(-194f - -1800f)), vec4<f32>(_wgslsmith_f_op_f32(-1176f - 1121f), _wgslsmith_f_op_f32(ceil(135f)), _wgslsmith_f_op_f32(747f * -423f), -940f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-284f, -457f, -106f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1291f, -375f, -557f), vec3<f32>(-757f, 1267f, 1114f))), func_2(vec4<u32>(0u, 1u, u_input.b, u_input.b))));
    var_0 = false;
    var var_2 = func_2(vec4<u32>(abs(4294967295u), ~reverseBits(func_3(vec4<u32>(u_input.d.x, 0u, 1u, 8573u))), ~1u, _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.d.x, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, u_input.b) >> (vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u))))));
    var_2 = func_2(select(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 0u, u_input.b), vec4<u32>(0u, u_input.b, 8689u, u_input.b)), ~vec4<u32>(u_input.d.x, 16765u, u_input.d.x, 99944u)), vec4<u32>(~u_input.d.x, u_input.d.x ^ 7779u, reverseBits(u_input.d.x), 1u)), ~(~select(vec4<u32>(u_input.d.x, u_input.b, 1u, u_input.b), vec4<u32>(u_input.d.x, u_input.b, u_input.b, u_input.b), vec4<bool>(var_2.b, false, var_2.b, var_2.b))), !any(!vec2<bool>(true, var_2.b))));
    return Struct_4(select(u_input.a.zxy, vec3<i32>(u_input.a.x, 24020i, _wgslsmith_sub_i32(-var_1.a.x, ~1i)), select(!select(vec3<bool>(false, var_2.b, var_2.b), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, var_2.b, var_2.b), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false))), !(!vec3<bool>(var_2.b, false, true)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(472f, -182f)))))));
    return func_2(abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2, 31715u, 10889u, 3606u), select(vec4<u32>(4294967295u, u_input.b, 1u, u_input.b), vec4<u32>(arg_2, 49414u, u_input.d.x, 0u), vec4<bool>(true, false, false, true)))) | _wgslsmith_add_vec4_u32(select(max(vec4<u32>(932u, u_input.d.x, u_input.b, u_input.d.x), vec4<u32>(arg_2, arg_2, 24930u, 41038u)), ~vec4<u32>(14288u, 57789u, 39238u, 83867u), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), vec4<u32>(4294967295u, arg_2, _wgslsmith_mod_u32(1u, arg_2), 54085u)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<bool> {
    var var_0 = u_input.d.x;
    var var_1 = func_1();
    var var_2 = Struct_2(func_5(vec4<i32>(-1i) * -max(vec4<i32>(-1i, 4621i, 2147483647i, 15447i), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.b, 0u, u_input.d.x, u_input.b)).a.a + _wgslsmith_f_op_f32(max(arg_0.c.x, arg_2.x))) + _wgslsmith_f_op_f32(trunc(-181f))), ~_wgslsmith_mult_u32(0u, u_input.b) ^ max(~1u, ~u_input.b), func_1()).a, !arg_1.a.x, arg_0.c);
    var var_3 = _wgslsmith_div_f32(-557f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(arg_0.c.x, 2448f)), arg_2.x, all(arg_1.a)))) <= func_2(firstLeadingBit(vec4<u32>(u_input.b, 71789u, u_input.b, 4294967295u)) << (vec4<u32>(u_input.b, min(18445u, 15811u), u_input.b, abs(4294967295u)) % vec4<u32>(32u))).c.x;
    let var_4 = arg_1.b.c;
    return arg_1.a.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(countOneBits(u_input.a.zyz >> (~(~vec3<u32>(1u, u_input.b, u_input.b)) % vec3<u32>(32u))));
    var var_1 = !(!func_6(func_5(~u_input.a, -1602f, 4294967295u, func_1()), Struct_3(vec4<bool>(true, true, false, false), Struct_2(Struct_1(-1277f), false, vec4<f32>(804f, 1000f, -317f, -394f))), vec3<f32>(-802f, -756f, _wgslsmith_f_op_f32(select(-1000f, 3106f, true)))));
    var var_2 = true;
    var_0 = Struct_4(-var_0.a);
    var var_3 = select(firstTrailingBit(1i | abs(var_0.a.x ^ var_0.a.x)), func_4(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1860f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(421f, -2143f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -1813f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f) + _wgslsmith_f_op_f32(300f * 152f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-523f, 275f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1443f * 1174f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1157f, 1607f, 1516f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-590f, 1954f, 866f), vec3<f32>(834f, 367f, -660f))))), func_5(countOneBits(countOneBits(vec4<i32>(13792i, var_0.a.x, u_input.a.x, u_input.c))), 498f, firstTrailingBit(4294967295u), Struct_4(~var_0.a))).x, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-889f, vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_div_i32(u_input.a.x, -48338i)));
}

