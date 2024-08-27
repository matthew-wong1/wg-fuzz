struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    let var_0 = max(0u & u_input.b, 113275u);
    let var_1 = vec4<bool>(arg_0.b.c.x, false, true, true);
    let var_2 = arg_0;
    let var_3 = var_2.b;
    let var_4 = _wgslsmith_f_op_f32(exp2(var_2.a));
    return _wgslsmith_f_op_f32(step(1974f, -1000f));
}

fn func_2() -> u32 {
    var var_0 = !vec4<bool>(false, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))), any(vec4<bool>(-1i > u_input.a, true, u_input.a >= u_input.a, true)));
    var var_1 = 4294967295u;
    var var_2 = Struct_5(Struct_3(Struct_2(19815u), var_0.xz, var_0.wz, vec2<u32>(u_input.b, ~46870u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(-1008f, Struct_3(Struct_2(u_input.b), vec2<bool>(var_0.x, true), var_0.xx, vec2<u32>(u_input.b, u_input.b))), 12749u, vec4<u32>(u_input.b, u_input.b, 6917u, 73408u), 246f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1501f)) + _wgslsmith_f_op_f32(round(-962f))), 2516f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1789f, -301f, -1000f)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-520f, 1000f, 2102f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1036f, -1027f, 1506f)), true)))), Struct_4(1560f, Struct_3(Struct_2(_wgslsmith_mod_u32(1u, 64583u)), vec2<bool>(true, var_0.x && var_0.x), !select(var_0.wz, var_0.zw, true), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(828u, 37653u))))));
    var_0 = vec4<bool>(true, true, (_wgslsmith_mod_i32(~u_input.a, firstTrailingBit(-6015i)) ^ _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), 16964i)) == _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), firstLeadingBit(u_input.a)), -vec2<i32>(-1i, 1i)), false);
    var var_3 = 0u;
    return _wgslsmith_dot_vec2_u32(select(abs(var_2.a.d), _wgslsmith_add_vec2_u32(~(~vec2<u32>(42789u, 4294967295u)), vec2<u32>(_wgslsmith_add_u32(var_2.c.b.d.x, u_input.b), _wgslsmith_clamp_u32(u_input.b, 1u, u_input.b))), vec2<bool>(false, var_2.a.c.x)), min(var_2.c.b.d & var_2.c.b.d, _wgslsmith_mult_vec2_u32(var_2.a.d, select(vec2<u32>(1u, var_2.a.d.x), vec2<u32>(var_2.c.b.d.x, var_2.a.a.a), var_2.a.b))) ^ vec2<u32>(1724u, _wgslsmith_add_u32(_wgslsmith_div_u32(var_2.c.b.a.a, 7182u), ~20747u)));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = 0i;
    var var_1 = Struct_2(u_input.b);
    var_1 = Struct_2(_wgslsmith_clamp_u32(u_input.b, ~func_2(), ~1u >> (0u % 32u)));
    var var_2 = min(~vec4<u32>(~1u, _wgslsmith_mult_u32(25195u, 0u), _wgslsmith_clamp_u32(u_input.b, var_1.a, var_1.a), 4294967295u), min(vec4<u32>(7805u, var_1.a, 65932u, var_1.a) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 64332u, var_1.a), vec4<u32>(1u, 1u, u_input.b, 17750u)), vec4<u32>(_wgslsmith_add_u32(var_1.a, var_1.a), ~0u, 41301u, ~32006u))) << ((_wgslsmith_mod_vec4_u32(~(~vec4<u32>(18714u, u_input.b, var_1.a, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1.a, 0u, 74188u), vec4<u32>(u_input.b, 1u, var_1.a, 36970u)) | vec4<u32>(u_input.b, var_1.a, var_1.a, 4294967295u)) ^ firstTrailingBit(vec4<u32>(abs(24078u), ~50743u, 4294967295u, u_input.b))) % vec4<u32>(32u));
    let var_3 = true;
    return u_input.b | 973u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(1u, max(25630u, 0u), u_input.b), vec3<u32>(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -711f, 486f, 931f))), ~22978u, ~4294967295u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(824f, 355f, -337f, 823f), vec4<f32>(490f, 1000f, -491f, 668f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(216f, -802f, -2042f, 483f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-570f, -1420f, 1185f, 857f), vec4<f32>(1000f, -1000f, -1000f, -332f), vec4<bool>(true, true, false, true))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-809f, -140f, 168f, -265f), vec4<f32>(-525f, -595f, 265f, -724f)))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true))))), _wgslsmith_add_u32(u_input.b << (((1u ^ u_input.b) << (min(1u, u_input.b) % 32u)) % 32u), _wgslsmith_mod_u32(var_0.x, reverseBits(u_input.b))), abs(~vec2<u32>(u_input.b, ~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1164f))))), vec4<f32>(-1692f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-313f)) * _wgslsmith_f_op_f32(sign(-1948f))))), _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_f_op_f32(-2059f - 348f), Struct_3(Struct_2(0u), vec2<bool>(true, true), vec2<bool>(true, true), var_0.zx)), var_0.x, vec4<u32>(func_2(), 15094u, var_0.x << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.x, 1u), var_0)), _wgslsmith_div_f32(-205f, _wgslsmith_f_op_f32(f32(-1f) * -1339f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1099f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(677f, -190f))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.a.x, var_1.a.x, -1556f, var_1.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_1.e.x, 1658f, var_1.e.x) * vec4<f32>(755f, -1106f, 1000f, -627f))), var_1.e))), var_0.x, var_1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(-620f + -2666f), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false))))), -1317f), var_1.a);
    var var_2 = Struct_3(Struct_2(~(reverseBits(var_1.b) & abs(4972u))), select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), !vec2<bool>(4294967295u > var_0.x, false), true), vec2<bool>(true, var_1.a.x == _wgslsmith_f_op_f32(f32(-1f) * -143f)), var_1.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(-var_1.e);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(select(1818f, var_1.e.x, false)), _wgslsmith_f_op_f32(trunc(var_3.x))) - _wgslsmith_f_op_vec3_f32(-var_3.wyz)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.e.x)), 1517f, _wgslsmith_f_op_f32(-var_3.x)))) - vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-var_1.d), 141f));
    var_1 = Struct_1(var_1.e, _wgslsmith_add_u32(var_0.x, func_1(vec4<f32>(var_3.x, var_1.a.x, 1000f, var_3.x)) ^ ~var_2.a.a) << (~u_input.b % 32u), _wgslsmith_mult_vec2_u32(var_2.d, vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(1u, 4294967295u)), _wgslsmith_add_u32(4294967295u & u_input.b, var_0.x))), _wgslsmith_f_op_f32(floor(var_4.x)), _wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(-187f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-715f - 1000f)), _wgslsmith_f_op_f32(-var_1.a.x)), true)));
    var var_5 = vec3<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, -6063i), -firstTrailingBit(~0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + -825f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0, _wgslsmith_mult_vec3_u32(vec3<u32>(20333u, 4294967295u, var_2.d.x), var_0)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1.b, 81204u), ~var_0), ~var_0)));
}

