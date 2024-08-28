struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> bool {
    var var_0 = ~(~(~(u_input.a & 0u))) & ~1u;
    var_0 = _wgslsmith_div_u32(u_input.a, 1u ^ u_input.a);
    var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, true)), arg_0.a.x, _wgslsmith_f_op_f32(round(-373f))))));
    var var_2 = Struct_3(Struct_2(max(~(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u) | vec4<u32>(u_input.a, 0u, 86794u, 0u)), vec4<u32>(~10206u, u_input.a, _wgslsmith_div_u32(u_input.a, 28429u), _wgslsmith_dot_vec3_u32(vec3<u32>(46284u, u_input.a, u_input.a), vec3<u32>(60459u, 1u, u_input.a)))), Struct_1(vec4<bool>(true, true, true, true), false, _wgslsmith_mod_u32(u_input.a, u_input.a) << (u_input.a % 32u)), Struct_1(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false)), _wgslsmith_div_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 57280u, u_input.a, u_input.a), vec4<u32>(32919u, 38307u, u_input.a, u_input.a))))), _wgslsmith_div_vec2_f32(arg_0.a.yy, var_1.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x))))), _wgslsmith_div_vec4_i32(min(max(max(vec4<i32>(arg_0.b, -23758i, 2147483647i, arg_0.b), vec4<i32>(arg_0.b, 38140i, -2147483647i, 6621i)), -vec4<i32>(-60757i, 66673i, arg_0.b, -48980i)), countOneBits(~vec4<i32>(arg_0.b, 46901i, arg_0.b, arg_0.b))), vec4<i32>(arg_0.b << (46437u % 32u), i32(-1i) * -arg_0.b, arg_0.b, firstTrailingBit(~arg_0.b))));
    return !all(!vec4<bool>(true, any(var_2.a.c.a.yw), !var_2.a.b.b, -1430f >= var_2.c.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<u32>) -> vec3<i32> {
    let var_0 = any(arg_1.c.a.xww);
    var var_1 = _wgslsmith_mod_vec3_i32(abs(countOneBits(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(22118i, 1i), vec2<i32>(1i, 0i)), select(7151i, -40054i, var_0), 1i))), vec3<i32>(~min(1i, -10281i), i32(-1i) * -firstLeadingBit(28361i), 1i));
    let var_2 = Struct_3(Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.x, arg_1.a.x, min(0u, 4294967295u), min(5786u, 1u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 14064u, arg_1.c.c), ~arg_1.a)), arg_1.b, arg_1.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1039f, -1070f)) + vec2<f32>(_wgslsmith_f_op_f32(-2285f + -867f), _wgslsmith_f_op_f32(f32(-1f) * -489f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1342f)), vec2<f32>(-1499f, 1580f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1088f) - vec2<f32>(-162f, -371f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-760f, 1763f) + vec2<f32>(-270f, 1662f)), arg_1.c.a.yx)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-307f, -995f))), -106f), vec4<i32>(var_1.x & var_1.x, 1i, var_1.x, -1i));
    let var_3 = true;
    var var_4 = Struct_3(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1749f * var_2.c.x), _wgslsmith_f_op_f32(-var_2.c.x))))), _wgslsmith_f_op_vec2_f32(round(var_2.b)), min(firstLeadingBit(var_2.d), min(firstLeadingBit(var_2.d & vec4<i32>(2147483647i, 0i, -4322i, var_1.x)), vec4<i32>(min(17984i, var_1.x), ~1946i, i32(-1i) * -23804i, _wgslsmith_div_i32(var_1.x, 1i)))));
    return -vec3<i32>(var_2.d.x, var_2.d.x, firstLeadingBit(_wgslsmith_clamp_i32(~var_1.x, -1i, select(var_1.x, var_4.d.x, var_0))));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = -func_4(vec2<bool>(true, true), Struct_2(vec4<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 4294967295u), 26405u ^ u_input.a, 0u), Struct_1(!vec4<bool>(arg_0, false, arg_0, false), func_3(Struct_4(vec3<f32>(-290f, 735f, 412f), -1i)), ~u_input.a), Struct_1(vec4<bool>(false, true, arg_0, arg_0), !arg_0, _wgslsmith_add_u32(3429u, u_input.a))), reverseBits(vec3<u32>(u_input.a, 0u, 1u) & firstTrailingBit(vec3<u32>(u_input.a, 66322u, u_input.a))), vec3<u32>(firstLeadingBit(4294967295u), 1u, u_input.a ^ _wgslsmith_sub_u32(u_input.a, u_input.a)));
    var var_1 = 4032u;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-136f, -922f, -598f, -511f)) + vec4<f32>(_wgslsmith_f_op_f32(max(-500f, 269f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-312f)), _wgslsmith_f_op_f32(f32(-1f) * -489f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1786f, 260f)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-375f, 231f)))));
    var_0 = vec3<i32>(_wgslsmith_div_i32(var_0.x, select(-48658i << (u_input.a % 32u), -1i, any(vec4<bool>(arg_0, true, true, arg_0))) >> (1u % 32u)), var_0.x, countOneBits(var_0.x << ((~0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(32969u, 0u, 63434u, 4294967295u), vec4<u32>(4294967295u, 1u, u_input.a, 4294967295u))) % 32u)));
    var_0 = _wgslsmith_mod_vec3_i32(-(~(-vec3<i32>(var_0.x, -10549i, var_0.x))) >> ((vec3<u32>(1u, u_input.a, countOneBits(u_input.a)) << ((vec3<u32>(62072u, 12750u, 26418u) >> (vec3<u32>(u_input.a, 36482u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), -(~vec3<i32>(-1i & var_0.x, _wgslsmith_add_i32(var_0.x, var_0.x), _wgslsmith_div_i32(var_0.x, var_0.x))));
    return -565f;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_4) -> bool {
    let var_0 = true;
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1000f, _wgslsmith_f_op_f32(func_2(var_0))) + _wgslsmith_f_op_vec3_f32(exp2(arg_2.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) - _wgslsmith_f_op_vec3_f32(-arg_2.a)))), _wgslsmith_dot_vec4_i32(firstTrailingBit(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.b, arg_0.x, 1i, arg_2.b), arg_0))), vec4<i32>(arg_2.b, min(arg_2.b, -35851i), -func_4(vec2<bool>(false, var_0), Struct_2(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(vec4<bool>(true, true, var_0, var_0), var_0, u_input.a), Struct_1(vec4<bool>(false, false, var_0, var_0), false, 23454u)), vec3<u32>(2691u, u_input.a, 67656u), vec3<u32>(u_input.a, u_input.a, u_input.a)).x, ~arg_2.b)));
    var var_2 = Struct_1(vec4<bool>(_wgslsmith_div_i32(8879i, arg_2.b) <= arg_0.x, var_0 & true, any(!(!vec3<bool>(var_0, false, true))), true), true, ~10264u);
    let var_3 = !(!(!(var_0 & true))) | true;
    var_2 = Struct_1(!select(!(!var_2.a), select(vec4<bool>(var_2.a.x, false, true, true), !var_2.a, !var_0), !(-35872i == arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1211f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(1770f - 1178f))), u_input.a);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(floor(arg_2.a.x))))))) < var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(u_input.a > (u_input.a | 0u), func_1(firstTrailingBit(firstTrailingBit(vec4<i32>(19568i, 2147483647i, -2147483647i, 19050i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1461f, -1483f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-953f, 817f) + vec2<f32>(1448f, 709f))), Struct_4(vec3<f32>(-442f, 130f, -883f), ~(-1i))));
    var var_1 = Struct_3(Struct_2(max(select(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 3919u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), var_0.x), ~abs(vec4<u32>(u_input.a, 0u, 93417u, 4294967295u))), Struct_1(vec4<bool>(var_0.x, true, false, true), var_0.x || true, u_input.a), Struct_1(vec4<bool>(!var_0.x, select(var_0.x, true, var_0.x), var_0.x, true), false, _wgslsmith_sub_u32(u_input.a, 1u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + -815f), _wgslsmith_f_op_f32(-1440f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1784f, -268f)))), vec2<f32>(-203f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-563f))))), ~(vec4<i32>(-1i) * -(~vec4<i32>(-23673i, 1i, -27249i, 2147483647i))));
    var_1 = Struct_3(var_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(-var_1.b.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.x))))), _wgslsmith_f_op_vec2_f32(var_1.c * var_1.b), min(-var_1.d, abs(-var_1.d) >> ((vec4<u32>(var_1.a.c.c, var_1.a.a.x, 4294967295u, u_input.a) ^ vec4<u32>(33188u, 34713u, var_1.a.a.x, var_1.a.a.x)) % vec4<u32>(32u))));
    let var_2 = Struct_3(Struct_2(~var_1.a.a, var_1.a.c, var_1.a.c), var_1.c, var_1.c, vec4<i32>(0i, -1i, _wgslsmith_clamp_i32(var_1.d.x, var_1.d.x << (var_1.a.c.c % 32u), var_1.d.x), -var_1.d.x));
    var_1 = var_2;
    var var_3 = vec4<u32>(var_2.a.b.c, u_input.a, 15176u, 0u) & ~select(~var_2.a.a, var_1.a.a, !var_2.a.c.a);
    let var_4 = Struct_4(vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -241f) - 551f), _wgslsmith_f_op_f32(f32(-1f) * -253f)), -20648i);
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - var_2.c.x);
    var var_6 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_5, select(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.d.ww, vec2<i32>(1i, 1i), ~var_2.d.zx), var_2.d.xw), var_1.d.yx, var_0.x), var_4.b, vec3<u32>(~(~(~u_input.a)), 1u, var_2.a.a.x));
}

