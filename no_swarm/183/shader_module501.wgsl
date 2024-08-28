struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> u32 {
    var var_0 = min(vec2<u32>(~firstLeadingBit(~u_input.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(20025u, 3198u) >> ((vec2<u32>(78032u, u_input.a) & vec2<u32>(998u, u_input.a)) % vec2<u32>(32u)), ~abs(vec2<u32>(2206u, u_input.a)))), ~vec2<u32>(abs(80768u), u_input.a & _wgslsmith_mult_u32(0u, u_input.a)));
    var var_1 = any(vec2<bool>(true, false));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-843f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1046f + -1000f))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-698f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(820f)), _wgslsmith_f_op_f32(floor(1f)), true)));
    var var_3 = ~abs(_wgslsmith_clamp_i32(1i, ~reverseBits(0i), _wgslsmith_div_i32(-30545i, _wgslsmith_dot_vec3_i32(vec3<i32>(-27273i, 13511i, 56942i), vec3<i32>(2147483647i, 1i, 8369i)))));
    var_3 = -2147483647i;
    return _wgslsmith_sub_u32(reverseBits(u_input.a), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(62923u, u_input.a, u_input.a), select(vec3<u32>(4294967295u, 25380u, var_0.x), vec3<u32>(u_input.a, 17327u, 4294967295u), vec3<bool>(true, true, true)))));
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec3_u32(arg_2.xyw, select(~(_wgslsmith_div_vec3_u32(arg_2.xxy, arg_2.xyy) | ~vec3<u32>(4294967295u, 5456u, arg_0)), abs(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2.wwz, vec3<u32>(arg_0, 9155u, 0u)), ~vec3<u32>(arg_2.x, u_input.a, 1u))), vec3<bool>(select(u_input.a <= 37690u, all(vec4<bool>(false, true, true, false)), any(vec2<bool>(false, true))), !any(vec2<bool>(false, false)), true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1092f, _wgslsmith_f_op_f32(f32(-1f) * -1697f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(905f + _wgslsmith_f_op_f32(ceil(584f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(685f * -2277f), _wgslsmith_f_op_f32(544f + 1383f)))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-745f, var_1.x, true))))));
    var_1 = vec3<f32>(-486f, var_1.x, -779f);
    var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 203f, 1133f))))))), vec3<f32>(226f, _wgslsmith_f_op_f32(max(-1361f, var_2)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)))), any(!vec3<bool>(true, true, any(vec3<bool>(false, false, false))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1754f)) - _wgslsmith_f_op_f32(1098f - var_2)), -611f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-869f, 1279f))), var_2) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_2, var_1.x, var_1.x) - vec4<f32>(var_2, var_1.x, var_2, -1092f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1445f, var_2, -448f, var_1.x) + vec4<f32>(1046f, var_1.x, -908f, -1044f)))))) - vec4<f32>(-1443f, var_2, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1418f))))), var_1.x));
}

fn func_5(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), any(vec3<bool>(true, false, arg_0.x < -428f)), 837u, _wgslsmith_add_vec2_i32(select(-vec2<i32>(1i, 1i), ~countOneBits(vec2<i32>(-1i, -4108i)), true), vec2<i32>(-38219i, 5951i)));
    var var_1 = Struct_2(u_input.a, -550f, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.a)), arg_0.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(min(var_0.a, var_0.a))), 1000f))));
    let var_2 = var_0.a;
    let var_3 = var_1.a;
    var_1 = Struct_2(~(~1u), _wgslsmith_div_f32(407f, _wgslsmith_f_op_f32(-var_0.a)), arg_0);
    return ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(22460u, var_1.a, var_0.c, var_1.a), vec4<u32>(var_0.c, 1u, 0u, 0u)), ~vec4<u32>(1u, 0u, var_0.c, 0u)) | vec4<u32>(u_input.a, u_input.a, _wgslsmith_div_u32(select(var_0.c, 50096u, var_0.b), 4294967295u), ~(5969u >> (0u % 32u))));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec4_u32(~func_5(_wgslsmith_f_op_vec4_f32(func_4(func_3(), vec2<u32>(u_input.a, 4294967295u) | vec2<u32>(u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 29186u, u_input.a)))), ~(~vec4<u32>(~1u, 0u, u_input.a << (u_input.a % 32u), _wgslsmith_sub_u32(u_input.a, u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(1246f - 626f);
    var var_2 = Struct_3(_wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(ceil(arg_0))), ~7053i, Struct_2(_wgslsmith_add_u32(abs(u_input.a), 1u), _wgslsmith_f_op_f32(max(arg_0.x, 457f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(max(1000f, arg_0.x)), -129f, arg_0.x, _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -584f, arg_0.x))))));
    let var_3 = Struct_4(var_2.c, var_2.a, Struct_2(var_2.c.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1934f, 128f, -286f) * var_2.c.c)))))), var_2.a);
    var var_4 = Struct_3(var_3.d, -(~_wgslsmith_sub_i32(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, var_2.b), vec3<i32>(2147483647i, 50i, var_2.b)))), Struct_2(var_2.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, arg_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_2.c.c - vec4<f32>(var_2.c.c.x, 569f, 956f, arg_0.x)), vec4<f32>(1544f, -1667f, -979f, 1111f), select(vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), false))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c.c)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_4.c.c - var_2.c.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_2.c.b, var_4.a.x, var_2.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-779f, 485f, var_4.c.c.x, var_4.a.x) * _wgslsmith_f_op_vec4_f32(-var_4.c.c)))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(-1129f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-269f))), _wgslsmith_f_op_f32(abs(-233f)))), 1503f, 365f);
    var var_1 = Struct_2(u_input.a, 239f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(var_0.x, var_0.x), true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_vec2_f32(var_0.xx, vec2<f32>(var_0.x, 1000f)), arg_0)))));
    var var_2 = select(vec4<i32>(firstLeadingBit(1i), 1i, countOneBits(-73490i), -4426i), vec4<i32>(4653i, -8313i, firstLeadingBit(min(0i, 2147483647i)), 1i), arg_0) | -vec4<i32>(_wgslsmith_mult_i32(~(-2147483647i), firstTrailingBit(-1i)), -_wgslsmith_clamp_i32(25956i, -1970i, 1i), -2147483647i, 3461i);
    var var_3 = !vec4<bool>(select(-275f < var_1.b, true, any(!vec4<bool>(arg_0, true, false, false))), !arg_0, !arg_0, any(!(!vec2<bool>(arg_0, true))));
    var var_4 = var_3.x;
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zx + var_1.c.wy)), -(~1i), Struct_2(~u_input.a, 704f, var_1.c));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    return Struct_4(func_1(!all(select(vec4<bool>(false, true, arg_2, true), vec4<bool>(arg_2, true, false, arg_2), arg_2))).c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec2_f32(arg_3.a - arg_3.a), any(vec2<bool>(arg_2, true)))).yx), _wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(arg_3.a.x * 849f)), false)).zx), func_1(any(!(!vec3<bool>(arg_2, arg_2, true)))).c, vec2<f32>(_wgslsmith_f_op_f32(floor(1108f)), arg_1.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(1i, func_1(true), true, Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-150f, -299f), vec2<f32>(_wgslsmith_f_op_f32(select(218f, 820f, false)), -199f), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), countOneBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(-12449i, -38390i, -2147483647i), vec3<i32>(-2147483647i, 55947i, 41271i))), Struct_2(select(firstLeadingBit(0u), 0u, true), 1638f, vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = Struct_3(vec2<f32>(202f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - -1104f)) * var_0.c.c.x)), -(~(~(62353i >> (u_input.a % 32u)))), Struct_2(func_3(), -1792f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1088f, 344f, var_0.d.x, 368f))), vec4<f32>(172f, _wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(598f + var_0.a.b), -407f))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.b.x), true, 4294967295u >> (~func_6(var_1.b, func_1(false), 4294967295u >= u_input.a, func_1(false)).c.a % 32u), (_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b, var_1.b), vec2<i32>(var_1.b, 2147483647i) & vec2<i32>(2147483647i, 59929i), firstTrailingBit(vec2<i32>(-2147483647i, -2147483647i))) & -(vec2<i32>(34583i, var_1.b) >> (vec2<u32>(var_0.a.a, 4294967295u) % vec2<u32>(32u)))) | select(vec2<i32>(var_1.b, _wgslsmith_sub_i32(var_1.b, -63535i)), _wgslsmith_mod_vec2_i32(vec2<i32>(52837i, var_1.b), firstLeadingBit(vec2<i32>(0i, var_1.b))), !(2147483647i <= var_1.b)));
    var var_3 = select(!select(select(!vec4<bool>(true, var_2.b, var_2.b, var_2.b), !vec4<bool>(var_2.b, var_2.b, false, false), var_2.b | var_2.b), select(select(vec4<bool>(var_2.b, true, false, var_2.b), vec4<bool>(var_2.b, false, true, true), vec4<bool>(false, var_2.b, var_2.b, false)), !vec4<bool>(var_2.b, var_2.b, var_2.b, true), !vec4<bool>(var_2.b, false, var_2.b, false)), vec4<bool>(any(vec3<bool>(true, true, var_2.b)), all(vec2<bool>(var_2.b, var_2.b)), all(vec2<bool>(false, var_2.b)), true)), !vec4<bool>(any(!vec4<bool>(var_2.b, var_2.b, var_2.b, true)), true, true, select(var_1.b, var_2.d.x, var_2.b) == 0i), var_2.b);
    let var_4 = var_2.c;
    let var_5 = 4294967295u;
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(19071i, 31890i, var_1.b), _wgslsmith_div_vec4_f32(vec4<f32>(426f, _wgslsmith_div_f32(-581f, var_2.a), _wgslsmith_f_op_f32(floor(-897f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -967f))), var_1.c.c), 0u);
}

