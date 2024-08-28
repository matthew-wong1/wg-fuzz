struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    let var_1 = Struct_3(4294967295u);
    let var_2 = _wgslsmith_f_op_f32(arg_0.x - arg_0.x);
    var var_3 = vec2<bool>(!any(select(vec3<bool>(false, var_0.b.x, var_0.b.x), !vec3<bool>(arg_3.b.x, var_0.b.x, false), select(vec3<bool>(false, arg_1.b.x, arg_1.b.x), vec3<bool>(var_0.b.x, true, true), arg_3.b.x))), !var_0.b.x);
    var var_4 = Struct_2(~(-19639i) ^ arg_3.a.x, vec2<bool>(var_2 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - var_2)), !select(select(var_3.x, true, arg_3.b.x), var_0.b.x, any(vec4<bool>(true, true, true, arg_3.b.x)))), arg_3, u_input.a);
    return arg_0.x;
}

fn func_2() -> vec2<bool> {
    let var_0 = u_input.a;
    let var_1 = vec3<i32>(1i, _wgslsmith_mod_i32(~2147483647i, abs(_wgslsmith_clamp_i32(max(0i, -1i), -10849i, -45813i))), 0i >> (var_0 % 32u));
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(747f, 277f, 1818f) + vec3<f32>(1559f, 310f, 1929f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, -1168f, 363f))), Struct_1(vec4<i32>(var_1.x, var_2.x, var_2.x, var_2.x), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), Struct_3(reverseBits(u_input.a)), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(21752i, var_1.x, var_2.x, var_2.x), vec4<i32>(var_1.x, -1i, var_2.x, var_2.x)), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-628f + -371f), -333f))), 1368f));
    var var_4 = var_2.xy;
    return vec2<bool>(!(u_input.a < (1u >> (_wgslsmith_mult_u32(u_input.a, 4294967295u) % 32u))), any(vec2<bool>((var_1.x != 1731i) && true, all(vec3<bool>(false, false, true)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> Struct_3 {
    var var_0 = -2147483647i;
    let var_1 = arg_0.c.a.yz;
    var var_2 = Struct_2(abs(_wgslsmith_clamp_i32(-6058i, ~var_1.x, arg_0.c.a.x)), select(select(select(!arg_0.b, vec2<bool>(false, true), func_2()), select(arg_0.b, arg_0.b, arg_2), vec2<bool>(true, true)), select(select(vec2<bool>(arg_0.b.x, false), vec2<bool>(true, false), !arg_0.b.x), func_2(), vec2<bool>(func_2().x, arg_2)), vec2<bool>(any(select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(false, false, arg_0.c.b.x), vec3<bool>(arg_2, arg_2, arg_2))), any(vec3<bool>(arg_2, arg_2, false)))), arg_0.c, ~4294967295u);
    var_0 = ~arg_0.c.a.x;
    let var_3 = Struct_3(_wgslsmith_mult_u32(4294967295u ^ ~select(arg_0.d, 57193u, var_2.c.b.x), ~_wgslsmith_div_u32(0u, 1u) ^ (_wgslsmith_add_u32(92851u, arg_1.a) & arg_0.d)));
    return Struct_3(~var_2.d | _wgslsmith_div_u32(~min(0u, var_2.d), _wgslsmith_sub_u32(var_2.d, u_input.a)));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = func_4(Struct_2(firstLeadingBit(1i), !(!func_2()), Struct_1(vec4<i32>(1i, 1i, 1i, 1i), vec2<bool>(true, true)), ~u_input.a), Struct_3(u_input.a), true);
    let var_1 = Struct_1(~(~(~countOneBits(vec4<i32>(-1i, -1i, 22191i, -19157i)))), vec2<bool>(any(vec3<bool>(true, true, true)), all(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_2 = var_1;
    var var_3 = firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_1.a.www & abs(var_2.a.wxz), -vec3<i32>(1852i, -47672i, 0i)), -1i));
    var var_4 = Struct_2(min(40183i, countOneBits(abs(var_2.a.x) & var_2.a.x)), var_2.b, var_1, var_0.a);
    return arg_2.zx;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: f32) -> vec4<i32> {
    var var_0 = func_4(Struct_2(firstTrailingBit(_wgslsmith_div_i32(2504i, -2147483647i)), vec2<bool>(any(vec3<bool>(true, true, true)), true), Struct_1(vec4<i32>(-2147483647i, 1i, -16788i, ~(-49032i)), vec2<bool>(true, true)), ~0u), Struct_3(4294967295u), select(true, all(vec2<bool>(true, true)) && true, !any(vec4<bool>(true, true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-374f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 697f, -673f, arg_0.x)), 29255u, _wgslsmith_f_op_vec3_f32(arg_0.wzz * vec3<f32>(-1000f, -840f, 1590f)))).x))));
    let var_2 = Struct_2(1i, vec2<bool>(true, true), Struct_1(select(vec4<i32>(-2147483647i, -2147483647i, -6120i, 0i), vec4<i32>(1i, 1i, 1i, 1i), true) & abs(vec4<i32>(35442i, -29295i, -1i, -27412i)), select(select(func_2(), vec2<bool>(false, true), false), vec2<bool>(true, true), any(vec2<bool>(false, true)))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(23160u, var_0.a, var_0.a, min(u_input.a, u_input.a)), countOneBits(vec4<u32>(49265u, 10942u, var_0.a, var_0.a)), true), select(~vec4<u32>(u_input.a, u_input.a, 0u, 37071u), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, var_0.a, var_0.a, u_input.a), vec4<u32>(u_input.a, u_input.a, var_0.a, var_0.a)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, false), true))));
    return var_2.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, 1u), u_input.a));
    let var_1 = true;
    let var_2 = Struct_1(func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -467f) * _wgslsmith_f_op_f32(f32(-1f) * -1228f)), -1077f, -301f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-397f)) - _wgslsmith_f_op_f32(abs(1980f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(402f, 2275f) - _wgslsmith_f_op_vec2_f32(func_1(vec4<f32>(-1000f, -956f, -880f, -685f), 19587u, vec3<f32>(-890f, -1047f, -1029f))))), _wgslsmith_f_op_f32(round(759f))), select(!select(vec2<bool>(true, true), vec2<bool>(false, var_1), vec2<bool>(var_1, var_1)), !select(select(vec2<bool>(true, var_1), vec2<bool>(var_1, true), var_1), !vec2<bool>(var_1, var_1), !vec2<bool>(true, var_1)), any(select(!vec4<bool>(false, false, true, var_1), !vec4<bool>(false, false, false, var_1), var_1))));
    let var_3 = Struct_2(func_5(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(733f, -1069f, -244f, -1044f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-797f, -787f, 1000f, -438f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-109f, -1780f, -859f, 392f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(1526f + 917f), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-145f, -129f)), _wgslsmith_f_op_f32(f32(-1f) * -1915f)))).x, select(var_2.b, var_2.b, !(!var_2.b.x) & var_2.b.x), var_2, _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, var_0)), vec2<u32>(u_input.a, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a);
}

