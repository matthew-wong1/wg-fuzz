struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
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

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    let var_0 = arg_0.e.b.x | arg_0.e.b.x;
    let var_1 = vec4<f32>(-576f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b)) + -331f), arg_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_div_f32(666f, _wgslsmith_div_f32(arg_0.b, arg_0.b))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1.x, var_1.x)))) + var_1.x), true)) + -1071f);
    let var_3 = arg_0;
    var_2 = var_3.b;
    return -1614f;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_2 {
    let var_0 = u_input.b.x;
    var var_1 = Struct_2(37749u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(502f)), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(sign(-950f))))), -221f), 1i, vec2<i32>(1i, 1i) >> (u_input.a.zx % vec2<u32>(32u)), Struct_1(1i, vec3<bool>(false, true, select(true, true, true))));
    var_1 = Struct_2(firstTrailingBit(max(var_0, 0u)), 676f, -38149i, ~vec2<i32>(_wgslsmith_mult_i32(-33358i, 1i) ^ var_1.e.a, -2147483647i), var_1.e);
    var_1 = Struct_2(46414u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_f_op_f32(func_3(Struct_2(var_1.a, 809f, -18536i, vec2<i32>(var_1.d.x, -33283i), var_1.e), vec4<i32>(var_1.d.x, var_1.d.x, var_1.e.a, -2147483647i)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b, arg_0.x)) - _wgslsmith_f_op_f32(trunc(var_1.b)))))), 28703i, vec2<i32>(~max(-1i, -43462i), var_1.d.x) ^ firstTrailingBit(vec2<i32>(0i, -47051i) & (var_1.d ^ var_1.d)), Struct_1(~(-(~(-1i))), var_1.e.b));
    var var_2 = Struct_2(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2139f) - _wgslsmith_div_f32(710f, -371f)), firstLeadingBit(abs(-4513i)), _wgslsmith_add_vec2_i32(var_1.d, var_1.d), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(1i, var_1.e.a), _wgslsmith_add_i32(var_1.e.a, -2147483647i), -1i), abs(~vec3<i32>(var_1.e.a, var_1.c, var_1.d.x))), vec3<bool>(!(!var_1.e.b.x), var_1.e.b.x, any(vec2<bool>(var_1.e.b.x, var_1.e.b.x)))));
    return Struct_2(1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * var_1.b)) - arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-549f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-269f)))))), -23218i, firstTrailingBit(_wgslsmith_mult_vec2_i32(var_2.d, abs(var_2.d << (vec2<u32>(4294967295u, var_0) % vec2<u32>(32u))))), var_1.e);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_vec3_u32(reverseBits(u_input.c.wyx), u_input.a);
    var_0 = _wgslsmith_mod_vec3_u32(~(vec3<u32>(arg_0.a, 1u, _wgslsmith_dot_vec3_u32(u_input.c.wwz, vec3<u32>(0u, var_0.x, 4294967295u))) << (u_input.c.wwz % vec3<u32>(32u))), vec3<u32>(20537u, 1u, arg_0.a));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b - arg_1.b), arg_3.x)) - _wgslsmith_f_op_f32(select(166f, _wgslsmith_f_op_f32(ceil(arg_1.b)), true)))));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(~arg_0.d.x, arg_0.d.x), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(25762i, -56386i), arg_0.d), vec2<i32>(48255i, 31639i))) | 0i, vec3<bool>(arg_1.e.b.x, 5728u <= ~arg_1.a, select(!arg_1.e.b.x, false, _wgslsmith_f_op_f32(max(530f, 452f)) > _wgslsmith_f_op_f32(arg_1.b + 326f))));
    let var_3 = arg_1.e;
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    var var_0 = Struct_1(-10541i, arg_0.b);
    let var_1 = 25050u >= arg_1.a;
    var var_2 = true;
    var var_3 = u_input.c;
    var_2 = true;
    return _wgslsmith_f_op_f32(ceil(-1000f));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))) - _wgslsmith_f_op_f32(func_5(func_4(func_2(arg_0.xxw, 1149f), Struct_2(77616u, arg_0.x, -1i, vec2<i32>(-1i, -1i), Struct_1(1i, vec3<bool>(true, true, false))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2126f, 1291f, arg_0.x, arg_2.x))), arg_0.yxz), func_2(vec3<f32>(arg_0.x, -1101f, -2336f), -182f), _wgslsmith_div_vec2_f32(vec2<f32>(-1115f, -1733f), arg_2.yx)))), arg_2.x);
    var var_1 = vec4<i32>(reverseBits(~_wgslsmith_sub_i32(-2147483647i, -18133i)), 1i, -(0i & _wgslsmith_clamp_i32(_wgslsmith_div_i32(-23431i, 12084i), 1i, 1i)), i32(-1i) * -125i);
    let var_2 = func_4(func_2(arg_2.yxz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1319f * 213f), _wgslsmith_f_op_f32(select(var_0, var_0, true)))))), Struct_2(arg_1.x & firstLeadingBit(abs(u_input.b.x)), arg_0.x, 36232i, vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(var_1.zw, _wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, 0i), vec2<i32>(var_1.x, var_1.x)))), Struct_1(-13781i, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(-1775f, 374f, arg_2.x, 124f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(443f, 451f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_3 = func_2(arg_2.wyx, func_2(arg_2.yzy, _wgslsmith_f_op_f32(1595f + var_0)).b);
    let var_4 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.c.xy, _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 52298u), u_input.c.wy) >> (vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a.x), u_input.a.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.x, -882f))))), countOneBits(-4172i), vec2<i32>(6091i, ~var_3.e.a), var_3.e);
    return _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_sub_u32(arg_1.x, 1u), var_4.a) << (countOneBits(vec3<u32>(var_4.a, var_3.a, arg_1.x)) % vec3<u32>(32u)), vec3<u32>(var_3.a, _wgslsmith_mult_u32(u_input.c.x, var_4.a), ~arg_1.x)) >> (~countOneBits(reverseBits(~vec3<u32>(var_4.a, var_4.a, 4965u))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-182f, 780f)))), -657f, _wgslsmith_f_op_f32(f32(-1f) * -1061f), -1000f)), u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(select(2007f, 727f, true)), _wgslsmith_div_f32(272f, -106f), _wgslsmith_f_op_f32(select(723f, 1196f, true)), -256f)))));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_sub_i32(abs(abs(i32(-1i) * -1i)), ~(-1i)) & _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-2147483647i, 1i, -23290i, 1i), vec4<i32>(10063i, 11542i, 0i, -15635i), vec4<bool>(false, true, false, false)) ^ (~vec4<i32>(0i, 0i, -2226i, 0i) << (u_input.c % vec4<u32>(32u))), max(vec4<i32>(firstLeadingBit(2147483647i), 1i, -75985i, min(2147483647i, -2147483647i)), vec4<i32>(-1i) * -vec4<i32>(0i, 0i, 1i, 55324i)));
    let var_3 = Struct_2(func_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1489f, -1143f, -899f, 1496f) * vec4<f32>(-585f, -914f, 540f, -293f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-934f, -1304f, -178f, -188f), vec4<f32>(-507f, 756f, -1226f, 213f))), true)))), reverseBits(vec4<u32>(u_input.a.x, func_1(vec4<f32>(-437f, 125f, -1878f, 2016f), u_input.c, vec4<f32>(1248f, 659f, -864f, -960f)).x, u_input.c.x, ~1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 419f, 195f, -1577f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-291f, -626f, 346f, -372f), vec4<f32>(-1362f, 199f, -462f, 2246f))))))).x, 779f, func_4(Struct_2(0u, 1104f, 5284i, ~vec2<i32>(-8833i, 0i), func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(667f, -764f, 2206f), vec3<f32>(350f, -2111f, -1252f))), _wgslsmith_f_op_f32(756f * 748f)).e), func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(452f, -821f, -308f))), _wgslsmith_f_op_f32(step(func_2(vec3<f32>(-797f, 435f, -255f), 189f).b, _wgslsmith_f_op_f32(f32(-1f) * -256f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-285f)), _wgslsmith_f_op_f32(-1312f - -1699f), 2755f, _wgslsmith_f_op_f32(abs(-1340f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-913f, -599f, -687f) * vec3<f32>(1952f, -1316f, -1000f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1086f, -995f, -1282f), vec3<f32>(200f, 1543f, 721f)) + vec3<f32>(-1164f, 1052f, -367f)))).a, min(-vec2<i32>(-1i, _wgslsmith_div_i32(1i, 43396i)), -abs(~vec2<i32>(12713i, 41220i))), func_4(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1529f * -221f), -212f)), Struct_2(~u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f - -166f) + _wgslsmith_f_op_f32(floor(1342f))), countOneBits(firstLeadingBit(1i)), vec2<i32>(1i, 1i), Struct_1(76662i, vec3<bool>(false, false, true))), vec4<f32>(_wgslsmith_f_op_f32(305f - _wgslsmith_f_op_f32(905f - 1108f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(763f * 405f), _wgslsmith_f_op_f32(func_3(Struct_2(u_input.b.x, 607f, -47516i, vec2<i32>(-2147483647i, -1i), Struct_1(-21846i, vec3<bool>(false, true, false))), vec4<i32>(-19337i, -15514i, 16223i, -1i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(406f)) * _wgslsmith_f_op_f32(sign(839f))), _wgslsmith_div_f32(1803f, -701f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-347f, 448f, 884f))) + vec3<f32>(-1000f, 445f, -1236f))));
    var_1 = 1u;
    var_1 = abs(3545u);
    var var_4 = firstTrailingBit(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(0i, var_3.c, 1i, var_3.e.a)), ~vec4<i32>(2147483647i, var_3.e.a, var_3.d.x, 2147483647i)) & countOneBits(~vec4<i32>(9763i, -55757i, var_3.c, var_3.e.a))) >> (~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, var_0.x, var_0.x, var_0.x), u_input.c, vec4<u32>(0u, 2106u, 0u, u_input.b.x))) % vec4<u32>(32u));
    let var_5 = var_3.e;
    let x = u_input.a;
    s_output = StorageBuffer((~(~var_4.xyz) << (abs(reverseBits(vec3<u32>(0u, 26368u, var_0.x))) % vec3<u32>(32u))) >> (func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, -343f, var_3.b, 286f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.b, 291f, 1000f, var_3.b), vec4<f32>(var_3.b, 818f, -1088f, var_3.b)))), vec4<u32>(96204u, var_0.x, u_input.c.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.b, var_3.b, 941f, var_3.b))))) % vec3<u32>(32u)), -20062i);
}

