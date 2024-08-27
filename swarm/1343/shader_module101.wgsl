struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: bool) -> bool {
    var var_0 = Struct_1(-1i, -2147483647i, !vec4<bool>(select(34494u, arg_0.x, arg_1.x) > u_input.b.x, !arg_1.x, true, 0u <= ~arg_0.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(637f, -298f, -1566f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(564f, -528f, 1270f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(984f, -575f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-872f + -1910f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, 2123f)), vec3<f32>(-914f, 503f, 1110f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(426f, 210f)) - -258f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -134f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(512f, var_1.x, 476f, 327f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -878f), vec4<f32>(1634f, 330f, 1065f, 550f)), true))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(149f, var_1.x, -1000f, 1527f)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -961f, 953f, var_1.x))))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.x)), 2209f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 1955f))))));
    let var_3 = Struct_1(firstTrailingBit(reverseBits(u_input.d.x ^ u_input.d.x) << (46320u % 32u)), u_input.d.x, vec4<bool>(true, var_0.c.x, true, var_0.c.x));
    let var_4 = _wgslsmith_sub_u32(max(~arg_0.x, _wgslsmith_sub_u32(u_input.a.x, arg_0.x)), 1u);
    return ~1u != _wgslsmith_clamp_u32(~reverseBits(max(arg_0.x, u_input.e.x)), ~firstLeadingBit(~23677u), 32987u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_1(-_wgslsmith_div_i32(~(u_input.d.x | u_input.d.x), _wgslsmith_add_i32(~u_input.d.x, ~(-1i))), _wgslsmith_dot_vec4_i32(select(~(~vec4<i32>(u_input.d.x, u_input.d.x, -1i, -20585i)), ~vec4<i32>(1i, u_input.d.x, 0i, -2147483647i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 0i, u_input.d.x), vec4<i32>(1i, u_input.d.x, u_input.d.x, -3749i), vec4<i32>(u_input.d.x, 53136i, u_input.d.x, 0i)), true), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, -4987i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 25370i, u_input.d.x)))), vec4<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)) | (countOneBits(34687i) >= (0i ^ u_input.d.x)), select(-2147483647i < u_input.d.x, true, true), true));
    let var_1 = var_0.c;
    let var_2 = any(!(!vec2<bool>(any(vec2<bool>(false, var_0.c.x)), func_3(vec4<u32>(1u, 4294967295u, 0u, u_input.c.x), vec3<bool>(var_1.x, false, false), var_0.c.x))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1498f - _wgslsmith_f_op_f32(sign(649f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3362f + 1149f)) * -331f))));
    var var_4 = -_wgslsmith_sub_i32(u_input.d.x | u_input.d.x, -(u_input.d.x ^ -1i));
    return Struct_1(-1i, -1i, var_0.c);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~select(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, 45354u), _wgslsmith_div_u32(u_input.e.x, u_input.c.x)), abs(vec2<u32>(u_input.a.x, u_input.a.x))), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.e, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), abs(u_input.b)), abs(u_input.a.x)), select(select(vec2<bool>(arg_2.c.x, arg_2.c.x), !vec2<bool>(arg_1.c.x, true), vec2<bool>(true, true)), vec2<bool>(true, arg_1.c.x || true), vec2<bool>(!arg_1.c.x, arg_2.c.x)));
    return Struct_1(max(arg_2.b, ~(~firstLeadingBit(arg_2.b))), ~(abs(_wgslsmith_mod_i32(arg_2.a, u_input.d.x)) << (countOneBits(u_input.e.x << (1u % 32u)) % 32u)), !select(select(arg_1.c, vec4<bool>(false, arg_0, true, arg_2.c.x), select(arg_2.c, arg_2.c, true)), arg_1.c, !any(vec2<bool>(true, arg_0))));
}

fn func_1() -> u32 {
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = 4294967295u;
    var var_2 = func_4(select(var_0.x && !select(var_0.x, var_0.x, false), any(select(select(var_0.wx, vec2<bool>(var_0.x, var_0.x), var_0.yx), vec2<bool>(var_0.x, false), var_0.yw)), -u_input.d.x < 2147483647i), func_2(~(~var_1)), Struct_1(-37873i, ~(~u_input.d.x), !func_2(_wgslsmith_add_u32(62831u, u_input.c.x)).c));
    var var_3 = 2303i;
    var_2 = Struct_1(var_2.a, 0i, var_0);
    return _wgslsmith_div_u32(~1u, u_input.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_sub_u32(u_input.b.x, u_input.e.x), u_input.b.x, true);
    let var_1 = !vec3<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, false), false)), !any(vec4<bool>(false, false, false, true)), true || any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false))));
    var var_2 = func_1();
    let var_3 = ~(~reverseBits(select(var_0, 4294967295u, true)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0, 1u, 16295u, ~9816u), ~abs(vec4<u32>(19318u, 4294967295u, 14833u, var_0))) % 32u));
    var var_4 = vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-20410i >> (u_input.e.x % 32u), 0i), vec2<i32>(2147483647i, func_2(u_input.a.x).a)), u_input.d.x, _wgslsmith_div_i32(56611i, u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(715f, -690f, 466f, -1935f), u_input.d.zz, ~reverseBits(~(~vec3<u32>(20089u, 0u, var_3))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-750f, _wgslsmith_f_op_f32(select(-1634f, 1621f, var_1.x))), _wgslsmith_f_op_f32(step(1076f, _wgslsmith_f_op_f32(-265f + -2070f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1405f, 1245f, 864f)))) - vec3<f32>(-1240f, _wgslsmith_f_op_f32(-1441f * -368f), _wgslsmith_f_op_f32(-211f + -1011f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, 133f, 977f)), vec3<f32>(-996f, -249f, 1813f), u_input.e.x > var_3)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(-322f - -901f), _wgslsmith_f_op_f32(f32(-1f) * -709f)))));
}

