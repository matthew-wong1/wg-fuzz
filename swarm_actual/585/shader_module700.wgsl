struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    var var_0 = all(!vec4<bool>(select(arg_1.b.c.x, arg_2.c, true), any(vec3<bool>(arg_2.e, arg_2.e, arg_1.b.c.x)), any(vec4<bool>(false, arg_2.e, arg_1.b.c.x, false)), false)) & all(vec3<bool>(true, true, ~1i != (arg_0.x << (8899u % 32u))));
    var var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_1.b.a.x, 16956u, arg_2.b.x, 11721u)), vec4<u32>(4294967295u, _wgslsmith_sub_u32(arg_2.b.x, 4294967295u), 1u, ~25136u)), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.b.x, arg_2.a, arg_2.b.x), vec3<u32>(19071u, arg_1.b.a.x, arg_1.b.a.x)), vec3<u32>(1u, arg_2.b.x, _wgslsmith_dot_vec2_u32(arg_1.b.a, arg_1.b.a)))) >> (vec2<u32>(arg_1.b.a.x, arg_2.a) % vec2<u32>(32u));
    let var_2 = all(!(!vec4<bool>(true, !arg_2.c, arg_1.b.b >= arg_2.d, arg_2.c)));
    var var_3 = arg_2;
    let var_4 = arg_1.b;
    return _wgslsmith_div_u32(4294967295u, abs(~var_1.x));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: bool, arg_3: vec4<i32>) -> vec2<f32> {
    let var_0 = firstLeadingBit(firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 99639u), vec3<u32>(0u, 1u, 4294967295u)), reverseBits(4294967295u), _wgslsmith_mult_u32(29142u, 50470u), 1u))) & (vec4<u32>(0u, 70597u, ~33778u, abs(1u)) << (vec4<u32>(firstTrailingBit(~59487u), ~84758u, 1u, func_3(abs(arg_3), Struct_2(vec2<f32>(arg_1, -1246f), Struct_1(vec2<u32>(0u, 112647u), 879f, vec2<bool>(false, false))), Struct_4(0u, vec4<u32>(25200u, 0u, 64979u, 58289u), arg_2, -875f, false))) % vec4<u32>(32u)));
    let var_1 = func_3(~(~_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(arg_3, vec4<i32>(-2147483647i, 47043i, 2147483647i, 1i)), -vec4<i32>(-2147483647i, arg_0, 9176i, u_input.a))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))), Struct_1(var_0.yx, arg_1, select(vec2<bool>(true, arg_2), !vec2<bool>(true, arg_2), select(true, arg_2, true)))), Struct_4(var_0.x, _wgslsmith_mod_vec4_u32(~(~var_0), _wgslsmith_div_vec4_u32(var_0, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, 4294967295u), vec4<u32>(20871u, 4294967295u, var_0.x, 109321u), var_0))), arg_2 || true, arg_1, any(vec2<bool>(arg_2, !arg_2))));
    let var_2 = Struct_4(~_wgslsmith_sub_u32(~(~4384u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.x, 47878u, 0u, var_0.x)), ~var_0)), ~vec4<u32>(var_1, firstTrailingBit(0u), abs(var_1), var_0.x), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1052f - -1559f) * -1796f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1894f), _wgslsmith_f_op_f32(-arg_1))), true);
    var var_3 = u_input.a;
    let var_4 = 0i;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(sign(343f)), _wgslsmith_f_op_f32(trunc(1000f))), vec2<bool>(all(vec2<bool>(var_2.c, var_2.e)), !arg_2)))));
}

fn func_1() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(660f, -1201f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-853f, 474f), vec2<f32>(1000f, 503f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-705f, 704f)))) * _wgslsmith_f_op_vec2_f32(func_2(~(~u_input.a), _wgslsmith_f_op_f32(trunc(-869f)), false, -(~vec4<i32>(u_input.a, 1i, -25060i, u_input.a))))), Struct_1(~abs(vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -389f) - _wgslsmith_f_op_f32(sign(212f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1210f - -1260f)), any(vec4<bool>(true, true, true, true)))), vec2<bool>(true, true)));
    let var_1 = firstLeadingBit(firstTrailingBit(var_0.b.a.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-389f, 1000f, var_0.a.x, var_0.b.b) * vec4<f32>(493f, -646f, 1000f, var_0.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(1000f + -779f), -116f, -1048f, var_0.a.x)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b.b)), -518f, 1f, var_0.b.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, 585f, var_0.b.b, var_0.b.b), vec4<f32>(884f, 674f, -689f, -241f), var_0.b.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.b.b, -1000f) * vec4<f32>(-570f, -777f, var_0.b.b, -536f)), !vec4<bool>(var_0.b.c.x, true, var_0.b.c.x, var_0.b.c.x))), vec4<bool>(var_0.b.c.x, var_0.b.c.x && var_0.b.c.x, any(vec4<bool>(var_0.b.c.x, false, true, var_0.b.c.x)), false)))));
    var var_3 = var_0.b;
    var_3 = var_0.b;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(reverseBits(9934i), _wgslsmith_f_op_f32(760f - _wgslsmith_f_op_f32(-903f + var_0.a.x)), any(select(vec3<bool>(true, var_0.b.c.x, false), vec3<bool>(true, true, var_0.b.c.x), false)), vec4<i32>(u_input.a | u_input.a, 51366i, -23132i, ~8037i))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1727f + -553f) + _wgslsmith_f_op_f32(func_1())) <= 391f, true, true);
    var_0 = vec3<bool>(true, !all(vec3<bool>(true, select(var_0.x, var_0.x, false), var_0.x)), false);
    let var_1 = all(select(select(vec2<bool>(var_0.x | var_0.x, !var_0.x), var_0.yx, var_0.zx), var_0.yy, any(select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, var_0.x, false)), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, true, false), var_0.x), all(vec2<bool>(var_0.x, var_0.x))))));
    var_0 = select(vec3<bool>(true, false, var_1 | !all(vec4<bool>(var_1, var_1, false, false))), vec3<bool>(false, (!var_1 && false) & !var_1, true), !(!select(vec3<bool>(false, var_0.x, true), !vec3<bool>(false, var_0.x, var_1), vec3<bool>(var_0.x, var_0.x, true))));
    var_0 = select(!select(select(select(vec3<bool>(var_0.x, var_1, true), vec3<bool>(var_1, true, var_1), var_0.x), select(vec3<bool>(true, false, var_1), vec3<bool>(true, true, var_1), vec3<bool>(var_1, false, true)), true), vec3<bool>(var_0.x, var_0.x, var_1), _wgslsmith_mod_i32(2147483647i, 1i) > ~u_input.a), select(select(!select(vec3<bool>(var_1, false, false), vec3<bool>(var_0.x, var_0.x, var_1), vec3<bool>(false, var_0.x, false)), select(vec3<bool>(var_1, var_1, var_0.x), select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, var_1), false), vec3<bool>(var_0.x, var_1, var_0.x)), true), select(!select(vec3<bool>(var_1, false, var_0.x), vec3<bool>(true, var_0.x, false), var_0.x), !vec3<bool>(var_1, false, var_1), !(!vec3<bool>(var_1, true, true))), -1i > abs(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, u_input.a))), select(vec3<bool>(var_0.x, select(!var_1, any(var_0.yy), any(vec4<bool>(var_1, var_1, false, var_0.x))), true), !select(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(var_1, var_0.x, true), var_1), !vec3<bool>(false, var_0.x, false), vec3<bool>(var_1, var_0.x, true)), true));
    var var_2 = all(!vec2<bool>(false != var_0.x, (true & var_1) && var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~3467u, -select(u_input.a, u_input.a, !(!var_0.x)));
}

