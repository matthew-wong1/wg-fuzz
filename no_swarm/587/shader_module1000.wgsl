struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-1072f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-423f, 191f, false))))))));
    var_0 = Struct_2(var_0.a);
    let var_1 = false;
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.c, u_input.a.zx), u_input.a.x, max(reverseBits(_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 63952u), vec2<u32>(u_input.a.x, 1u)))), 2241u), _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_sub_u32(44193u, 0u)), ~23450u)));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -390f));
    return countOneBits(reverseBits(firstLeadingBit((u_input.b.x & 6709i) ^ -1i)));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = Struct_1(any(select(vec4<bool>(true, true, true, u_input.b.x != 0i), vec4<bool>(true, all(vec3<bool>(true, true, true)), false, -5316i >= u_input.b.x), vec4<bool>(true, true, true, false))), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 6962u, 1u), u_input.a.wzy), u_input.a.yyx), firstLeadingBit(vec3<u32>(1u, u_input.c.x, 1u)) << (min(u_input.a.xyy, vec3<u32>(5682u, u_input.c.x, 1u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -471f) * _wgslsmith_f_op_f32(floor(1483f))))) - arg_0), -u_input.b.x, vec2<bool>(!all(vec4<bool>(false, true, true, true)), true));
    var var_1 = var_0.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f * _wgslsmith_f_op_f32(-arg_0)));
    let var_3 = all(!select(vec3<bool>(true, all(vec2<bool>(true, true)), false), vec3<bool>(true, u_input.b.x > arg_1.x, u_input.a.x > 67510u), select(vec3<bool>(var_0.e.x, true, var_0.a), vec3<bool>(var_0.a, var_0.e.x, var_0.a), vec3<bool>(true, true, true))));
    let var_4 = !vec3<bool>(false, (-50801i < var_0.d) && true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-774f))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-171f, 683f)))));
    return vec4<bool>(-1i < _wgslsmith_mod_i32(abs(arg_1.x), 1i), !(!var_0.a), var_0.a, any(select(select(!var_4, !var_4, all(vec3<bool>(false, var_3, false))), select(var_4, var_4, select(true, var_0.e.x, true)), vec3<bool>(var_0.e.x, false, var_0.a | var_3))));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    let var_0 = u_input.c.x;
    let var_1 = arg_1;
    var var_2 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<i32>(-2147483647i, (func_3() << (max(4294967295u, var_0) % 32u)) >> ((~arg_2.x | _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(22247u, arg_2.x))) % 32u), u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(40953i, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -9232i, u_input.b.x)), ~vec4<i32>(-23507i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -40360i, 2147483647i, u_input.b.x)), -vec4<i32>(u_input.b.x, u_input.b.x, 2433i, u_input.b.x))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = var_2.xy;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1220f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) * 1000f), _wgslsmith_f_op_f32(max(-910f, _wgslsmith_f_op_f32(arg_0 - -538f))))) - vec3<f32>(-1506f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(530f + arg_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -613f), _wgslsmith_f_op_f32(-var_1.a))));
    return var_0;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<u32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = min(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, arg_2.x), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u), u_input.a, u_input.a), abs(vec4<u32>(0u, arg_2.x, u_input.a.x, arg_2.x))))), vec2<u32>(firstLeadingBit(abs(20520u | arg_2.x)), 4294967295u));
    let var_1 = arg_2.xx;
    var_0 = ~(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x << (30057u % 32u), var_1.x << (6262u % 32u)), reverseBits(var_1)) & vec2<u32>(4294967295u, 0u));
    var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), vec2<u32>(16635u, 23199u)), firstLeadingBit(u_input.c.x)), ~abs(var_0.x))), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(53785u, 4294967295u) << (vec2<u32>(var_1.x, arg_2.x) % vec2<u32>(32u)), ~vec2<u32>(1u, var_0.x)), vec2<u32>(reverseBits(36885u), ~arg_2.x)) ^ ~reverseBits(~var_1), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wzz, vec3<u32>(var_1.x, 4294967295u, var_0.x)), 0u >> (~var_0.x % 32u)), countOneBits(vec2<u32>(_wgslsmith_add_u32(34140u, var_0.x), 29989u))));
    var_0 = _wgslsmith_add_vec2_u32(~(~vec2<u32>(~4294967295u, _wgslsmith_add_u32(2371u, 0u))), vec2<u32>(u_input.a.x, 4294967295u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(803f * -598f);
    let var_1 = i32(-1i) * -2147483647i;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1760f * -1052f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1527f) * _wgslsmith_f_op_f32(func_1(428f, true, u_input.a.xxz, vec4<bool>(true, false, false, false)))))) * -1976f);
    let var_2 = Struct_4(1i, Struct_1(all(func_4(466f, -vec4<i32>(1i, var_1, 1i, 2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(327f, 467f))).zy), u_input.a.yzy ^ (vec3<u32>(u_input.c.x, u_input.a.x, u_input.c.x) >> (_wgslsmith_sub_vec3_u32(u_input.a.wyz, vec3<u32>(u_input.c.x, 1u, 0u)) % vec3<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f * -1103f)), 943f), u_input.b.x, vec2<bool>(true, true)), select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(func_4(-966f, vec4<i32>(var_1, u_input.b.x, var_1, var_1), vec2<f32>(1527f, 590f)).wwz, func_4(167f, vec4<i32>(-38408i, -1i, u_input.b.x, -22177i), vec2<f32>(-699f, -873f)).xyx, true)), select(vec3<bool>(true, true, true), func_4(-785f, firstLeadingBit(vec4<i32>(-1i, 2147483647i, var_1, var_1)), vec2<f32>(-1387f, 1000f)).yyy, vec3<bool>(true, true, all(vec2<bool>(true, true)))), true), vec4<bool>(true, true, any(vec4<bool>(true, all(vec4<bool>(true, false, true, false)), true, true)), var_1 < _wgslsmith_div_i32(func_3(), _wgslsmith_clamp_i32(1i, -14977i, -1603i))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b.c)))));
    var var_3 = Struct_5(Struct_3(var_2.c.x, !(20521u >= reverseBits(var_2.b.b.x)), select(vec3<i32>(_wgslsmith_mod_i32(-4827i, 1i), _wgslsmith_div_i32(var_2.b.d, var_2.b.d), 1i), _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, var_2.b.d, var_2.a), vec3<i32>(56830i, 2147483647i, -7662i)), func_4(_wgslsmith_f_op_f32(min(-315f, var_2.b.c)), ~vec4<i32>(u_input.b.x, -52564i, var_1, -42138i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.c, var_2.b.c))).x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b.c), _wgslsmith_f_op_f32(-678f + var_2.b.c))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.b.c, -758f), vec2<f32>(295f, 1437f)) * _wgslsmith_div_vec2_f32(vec2<f32>(437f, -1115f), vec2<f32>(var_2.b.c, 203f))), vec2<f32>(var_2.b.c, _wgslsmith_f_op_f32(abs(var_2.b.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

