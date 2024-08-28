struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec4<bool>) -> vec4<f32> {
    var var_0 = ~0i;
    let var_1 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x << (0u % 32u), arg_0.a.a, u_input.a.x), _wgslsmith_div_u32(reverseBits(1u), 36423u << (u_input.a.x % 32u))) ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x), _wgslsmith_div_u32(4294967295u, arg_0.a.a) & _wgslsmith_sub_u32(arg_0.a.a, u_input.a.x)));
    let var_2 = -(~(i32(-1i) * -61480i));
    var_0 = abs(var_2);
    var var_3 = ~vec3<i32>(0i, var_2, ~var_2);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1924f, 1032f, -732f, 371f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(907f, 1400f, -1325f, -563f), vec4<f32>(790f, -1000f, -1836f, 168f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-346f * -1556f), _wgslsmith_f_op_f32(1619f - 758f), _wgslsmith_f_op_f32(f32(-1f) * -700f), -404f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1081f, -1000f, -421f, 124f), vec4<f32>(-605f, 149f, 588f, 1090f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1465f, 595f, -735f, -1489f))))), select(vec4<bool>(false, arg_2.x, arg_1.x, arg_2.x), !vec4<bool>(arg_2.x, true, arg_2.x, true), true)))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-398f))), _wgslsmith_f_op_f32(step(348f, -152f)), select(false, arg_1.x, any(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -810f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1794f + _wgslsmith_f_op_f32(max(446f, -1000f))) - 1373f), _wgslsmith_f_op_f32(-330f * 1f)));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), false)));
    var var_1 = _wgslsmith_f_op_f32(abs(-1010f)) == _wgslsmith_div_f32(661f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(624f)) - -332f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1529f) + _wgslsmith_f_op_f32(1000f * 1401f)))));
    let var_2 = vec3<bool>(var_0.x, 0u <= u_input.a.x, var_0.x);
    var var_3 = ~(~46482i);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(u_input.a.x)), vec4<bool>(var_0.x, var_2.x, false, var_2.x), vec4<bool>(false, var_0.x, true, false))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(u_input.a.x)), vec4<bool>(var_0.x, var_2.x, true, true), vec4<bool>(false, var_0.x, var_2.x, true)))), vec4<f32>(1f, -173f, _wgslsmith_f_op_f32(-1315f - -917f), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_2(28633u)), vec4<bool>(true, var_2.x, false, true), vec4<bool>(true, false, false, var_0.x))).x), vec4<bool>(true | var_0.x, all(vec3<bool>(var_0.x, true, true)), true, all(var_2.xx))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, -1299f, 289f, -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(153f, -411f, 480f, -110f))))), true)));
    return Struct_2(0u);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(min(firstLeadingBit(u_input.a.x), 0u), 1u, 15433u, u_input.a.x), vec4<u32>(0u, u_input.a.x, ~abs(33167u), max(85050u, 47000u))));
    var_0 = func_2(-(vec2<i32>(1i, _wgslsmith_sub_i32(-28169i, 49153i)) << (u_input.a % vec2<u32>(32u))));
    let var_1 = Struct_2(4294967295u);
    let var_2 = -1i;
    var_0 = func_2(_wgslsmith_add_vec2_i32(vec2<i32>(~var_2, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_2, var_2), vec3<i32>(var_2, var_2, var_2))) ^ _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(10552i, var_2), vec2<i32>(var_2, -29127i)), vec2<i32>(var_2, var_2)), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(0i, var_2)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_2), vec2<i32>(5978i, -1i)), vec2<i32>(1i, var_2) >> (u_input.a % vec2<u32>(32u)), ~vec2<i32>(1i, var_2)))));
    return Struct_2(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -946f, -477f, -1918f), vec4<f32>(-779f, 683f, 456f, 1098f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-421f, -730f, -631f) - vec3<f32>(892f, 228f, -675f)), vec3<f32>(-986f, _wgslsmith_div_f32(-145f, 338f), _wgslsmith_f_op_f32(f32(-1f) * -989f)), vec3<bool>(true, true, true)))));
    var var_1 = Struct_2(~(~2110u));
    let var_2 = Struct_1(vec3<f32>(394f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f), -1495f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + -367f), _wgslsmith_f_op_f32(377f - -394f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) - _wgslsmith_div_f32(1000f, 919f)))), max(abs(vec2<i32>(-41408i, _wgslsmith_sub_i32(1i, 0i))), vec2<i32>(1i, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(988f, 1140f) - vec2<f32>(198f, -1648f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-628f, 1013f))))))), false);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -952f);
    let var_4 = Struct_3(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, var_2.a.x, 177f, -677f) + vec4<f32>(var_2.a.x, var_2.c.x, -2421f, -211f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(126f, var_2.a.x, -1138f))))));
    let var_5 = ~(vec3<u32>(u_input.a.x, 56517u, var_1.a) & (~(~vec3<u32>(62240u, var_0.a.a, var_1.a)) & ~(~vec3<u32>(var_1.a, 4294967295u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(1i | -_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, var_2.b.x), -var_2.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-877f, -1058f, -103f, _wgslsmith_f_op_f32(round(var_2.c.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(300f, var_2.a.x, -1000f, _wgslsmith_f_op_f32(max(1454f, 1010f))) * vec4<f32>(403f, -159f, var_2.a.x, _wgslsmith_div_f32(182f, var_2.a.x)))));
}

