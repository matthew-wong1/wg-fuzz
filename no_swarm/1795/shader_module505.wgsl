struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -464f), 505f, arg_0.b.x, _wgslsmith_div_f32(arg_0.b.x, arg_0.a.x));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.x)) * 552f), var_0.x)), _wgslsmith_f_op_f32(trunc(var_0.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, -1665f, var_0.x), var_0.zyx) * var_0.yzz) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, -430f, 959f))))), 959f);
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-775f * arg_0.a.x))), -509f)));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(~(-1i), select(1i, -10405i, false), select(10109i, -19061i, false)), u_input.d.xxx)), u_input.a);
    return !vec4<bool>(true, any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1306f - var_2.b)) > 232f, !(!select(true, true, true)));
}

fn func_2() -> Struct_1 {
    let var_0 = !(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), func_3(Struct_2(vec4<f32>(1600f, 729f, 444f, -674f), vec4<f32>(2245f, -1723f, -375f, -1533f)), 1u), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)))));
    let var_1 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(min(12459u, 0u), 38792u), ~vec2<u32>(1u, 1u))) >> (_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(select(vec2<u32>(93491u, 19665u), vec2<u32>(91219u, 56286u), var_0.zz), ~vec2<u32>(4294967295u, 2883u)), min(vec2<u32>(1u, 1u), select(firstLeadingBit(vec2<u32>(23888u, 4294967295u)), abs(vec2<u32>(21443u, 0u)), vec2<bool>(var_0.x, var_0.x)))) % vec2<u32>(32u));
    var var_2 = select(firstTrailingBit(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 18922u, var_1.x, var_1.x), vec4<u32>(var_1.x, 12595u, var_1.x, 8843u))), _wgslsmith_mod_u32(~min(8135u >> (1u % 32u), var_1.x), ~(~1u << (var_1.x % 32u))), !(!any(var_0)));
    var var_3 = max(countOneBits(_wgslsmith_dot_vec3_i32(reverseBits(u_input.c) | u_input.c, vec3<i32>(u_input.d.x, ~u_input.d.x, ~u_input.d.x))), -907i);
    var_3 = select(u_input.a, min(-u_input.c.x, (firstTrailingBit(-41722i) | 49445i) ^ -_wgslsmith_clamp_i32(1i, 0i, u_input.c.x)), any(vec4<bool>(select(false, var_0.x, var_0.x) | true, var_0.x, select(false, var_0.x | var_0.x, !var_0.x), true)));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1173f, 380f))), -1088f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, 2243f))) * _wgslsmith_f_op_f32(max(648f, -1507f)))), 136f);
}

fn func_1() -> Struct_2 {
    let var_0 = abs(1u);
    let var_1 = func_2();
    let var_2 = vec3<bool>(true, !(all(func_3(Struct_2(vec4<f32>(1000f, var_1.a.x, var_1.a.x, -1490f), vec4<f32>(300f, var_1.b, var_1.b, var_1.a.x)), 49791u).zw) || any(vec2<bool>(false, true))), true);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(min(-725f, var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-665f)) + var_1.a.x)) + -601f), -1294f));
    let var_4 = 4783u;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, _wgslsmith_f_op_f32(var_1.b * var_3), -2254f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.b)), _wgslsmith_f_op_f32(733f * var_3))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_3, -1664f, 409f)), vec4<f32>(var_1.b, var_1.b, var_3, var_1.a.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec3<u32>) -> vec3<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(786f * arg_0.b.x), arg_0.a.x, -1557f, 262f);
    let var_1 = select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true))), select(func_3(arg_0, 5532u), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true))), vec4<bool>(any(vec2<bool>(true, true)), all(!func_3(arg_0, 22737u)), any(vec4<bool>(true, any(vec4<bool>(true, false, true, true)), -1i <= u_input.b, true)), 1000f == _wgslsmith_f_op_f32(-119f + func_1().a.x)), !(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-862f, -656f, _wgslsmith_f_op_f32(step(254f, arg_0.b.x)), var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x + arg_1.x), _wgslsmith_f_op_f32(784f - 116f)))), _wgslsmith_f_op_f32(-func_1().a.x), arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(345f))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(func_1().a.zwy)));
    var var_4 = arg_2.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(func_1().b.ywz, vec3<f32>(-1319f, -1098f, var_0.x)), _wgslsmith_f_op_vec3_f32(sign(var_0.xzz)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(1u, ~(~(~4294967295u)), ~4909u);
    var_0 = vec3<u32>(var_0.x, 68945u, 0u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1313f, 508f, 1686f)))), ~(vec3<u32>(var_0.x, 4294967295u, var_0.x) | vec3<u32>(var_0.x, 0u, 8443u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 26099u)), firstTrailingBit(vec3<u32>(4294967295u, 1u, var_0.x)), vec3<u32>(var_0.x, var_0.x, var_0.x)))) + func_1().b.zxy), _wgslsmith_f_op_f32(f32(-1f) * -1676f));
    var_0 = select(_wgslsmith_div_vec3_u32(~vec3<u32>(22340u, ~var_0.x, select(6944u, 1u, false)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x), vec3<u32>(30046u, 18289u, 1u)))), ~max(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 86679u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 38911u, 4294967295u), vec3<u32>(4294967295u, var_0.x, 0u))), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 40890u) << (vec3<u32>(var_0.x, var_0.x, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(var_0.x, 1u, var_0.x), vec3<u32>(var_0.x, 4294967295u, var_0.x), false))), !(!(!func_3(Struct_2(vec4<f32>(var_1.b, 451f, var_1.b, var_1.b), vec4<f32>(1000f, -1088f, var_1.a.x, 722f)), var_0.x).zwy)));
    let var_2 = vec2<i32>(u_input.c.x, i32(-1i) * -17722i) << (var_0.yz % vec2<u32>(32u));
    var var_3 = 18671u;
    var_0 = vec3<u32>(~(~abs(~0u)), 14541u, ~var_0.x << (var_0.x % 32u));
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-227f, var_4.b.x, var_4.a.x, var_4.a.x), vec4<f32>(var_4.b.x, 1947f, 1477f, var_1.a.x), true)) + var_4.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_4.a.x, -446f)), vec4<bool>(false, any(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, true, true)), true))) + vec4<f32>(var_4.b.x, _wgslsmith_f_op_f32(step(215f, -1337f)), 743f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_1.b, -226f)), _wgslsmith_f_op_f32(-var_4.a.x))))), 35830u, -348i, u_input.a);
}

