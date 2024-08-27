struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(804f, arg_0.b, arg_0.e) + vec3<f32>(-265f, 240f, -1350f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(215f, arg_0.e, arg_0.c)))))))));
    var var_1 = !select(!vec4<bool>(arg_0.d.x & true, arg_0.d.x, true, false), select(!select(vec4<bool>(arg_0.d.x, true, arg_0.d.x, arg_0.d.x), vec4<bool>(true, false, false, arg_0.d.x), true), select(!vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, true), select(vec4<bool>(true, arg_0.d.x, false, arg_0.d.x), vec4<bool>(true, false, false, arg_0.d.x), arg_0.d.x), any(vec3<bool>(false, true, true))), vec4<bool>(arg_0.d.x, all(vec2<bool>(true, false)), true, arg_0.d.x)), !vec4<bool>(arg_0.d.x, false, !arg_0.d.x, true));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(568f, arg_0.c))));
    let var_3 = _wgslsmith_mod_u32(1u << (u_input.a % 32u), _wgslsmith_mod_u32(firstTrailingBit(1u), ~_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.a)));
    let var_4 = Struct_1(arg_0.a, -661f, _wgslsmith_f_op_f32(trunc(var_0.x)), vec2<bool>(any(vec4<bool>(true, true, var_1.x, all(vec2<bool>(arg_0.d.x, arg_0.d.x)))), false & !(var_0.x <= -248f)), _wgslsmith_f_op_f32(f32(-1f) * -1702f));
    return ~abs(i32(-1i) * -44046i);
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(-16125i, func_3(Struct_1(_wgslsmith_mod_vec2_u32(u_input.b.xy, vec2<u32>(u_input.a, u_input.b.x)), 351f, arg_0, vec2<bool>(true, true), _wgslsmith_div_f32(arg_0, 565f)))), ~(-44053i), ~1i, 1i);
    var var_1 = -10328i;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))))));
    var_1 = func_3(Struct_1(u_input.b.yz, -2013f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0)))), !(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), 1212f));
    return _wgslsmith_dot_vec3_u32(u_input.b, firstLeadingBit(~(~_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = reverseBits(1u);
    let var_1 = arg_0.d.d.x;
    var var_2 = vec3<i32>(-1632i, arg_0.c.x, _wgslsmith_mod_i32(arg_0.c.x, arg_0.c.x));
    var_2 = arg_0.c;
    var_2 = abs(_wgslsmith_clamp_vec3_i32(arg_0.c, vec3<i32>(var_2.x, arg_0.c.x, -2147483647i), _wgslsmith_div_vec3_i32(arg_0.c, vec3<i32>(-42510i, abs(arg_0.c.x), var_2.x))));
    return Struct_1(firstLeadingBit(vec2<u32>(arg_0.d.a.x, func_2(1105f))), -347f, 1000f, select(select(select(!arg_0.a.d, vec2<bool>(var_1, false), vec2<bool>(false, arg_0.d.d.x)), select(vec2<bool>(arg_0.a.d.x, true), vec2<bool>(false, true), !arg_0.b.x), vec2<bool>(true, true)), arg_0.a.d, !arg_0.b.x), -1000f);
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> vec2<u32> {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(146u, 35946u), 1u), 23985u), u_input.b.x, _wgslsmith_mod_u32(4294967295u, 1u)), vec4<u32>(~(func_2(arg_2.a.e) | _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), abs(arg_2.e.x), ~arg_1.x, ~arg_1.x), abs(~(~(~vec4<u32>(0u, 27561u, u_input.b.x, arg_2.d.a.x)))));
    var var_1 = arg_2;
    var_1 = arg_2;
    var var_2 = func_1(Struct_2(arg_2.a, vec4<bool>(true, any(select(vec4<bool>(true, arg_2.d.d.x, false, false), var_1.b, false)), true, arg_2.b.x), arg_2.c, func_1(Struct_2(arg_2.d, !arg_2.b, vec3<i32>(arg_2.c.x, 1i, 0i), arg_2.d, u_input.b)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(arg_1.x, 4409u, 4294967295u), vec3<u32>(1u, 4294967295u, arg_2.d.a.x)), arg_2.e)));
    return _wgslsmith_add_vec2_u32(var_0.zz ^ reverseBits(~vec2<u32>(var_2.a.x, u_input.b.x)), firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, 0u), vec2<u32>(11482u, var_0.x), true), vec2<u32>(arg_1.x, 29133u)), func_1(arg_2).a)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> vec3<u32> {
    var var_0 = _wgslsmith_mod_u32(35649u, firstTrailingBit(~arg_1.x)) << (firstLeadingBit(1u) % 32u);
    return _wgslsmith_add_vec3_u32(~u_input.b, _wgslsmith_mult_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, arg_0.a.x, arg_0.a.x), u_input.b), vec3<u32>(1u, 809u, 0u)), ~(~u_input.b))) << (vec3<u32>(abs(func_4(arg_0.b, vec2<u32>(arg_1.x, 0u), Struct_2(Struct_1(u_input.b.yz, -2161f, arg_0.e, vec2<bool>(false, true), -1968f), vec4<bool>(true, false, true, true), vec3<i32>(2147483647i, 2147483647i, -37134i), Struct_1(arg_1, 589f, arg_2, arg_0.d, -157f), u_input.b)).x | arg_0.a.x), u_input.b.x, ~u_input.a) % vec3<u32>(32u));
}

fn func_6(arg_0: vec3<u32>, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_sub_u32(0u, arg_1), arg_1), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(round(-1063f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1004f)), _wgslsmith_f_op_f32(f32(-1f) * -933f))), -1000f, vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -764f) - func_1(Struct_2(Struct_1(u_input.b.yz, -1395f, 551f, vec2<bool>(true, false), 864f), vec4<bool>(true, false, true, true), vec3<i32>(-1i, -1i, -1i), Struct_1(vec2<u32>(u_input.b.x, 42794u), -234f, -1912f, vec2<bool>(true, true), -1146f), vec3<u32>(u_input.a, 4294967295u, 45270u))).e) - 2064f)), !select(vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, true), vec4<bool>(true, true, 4294967295u != arg_0.x, true), vec4<bool>(true, true, true, true)), ~select(vec3<i32>(14844i, 1i, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -62930i, 1i), vec3<i32>(2147483647i, -12270i, -8155i)), true) | select(~(~vec3<i32>(15527i, -1i, -25562i)), ~vec3<i32>(1i, 23806i, -17650i), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, false, false))), func_1(Struct_2(func_1(Struct_2(Struct_1(u_input.b.yx, -217f, 1097f, vec2<bool>(true, false), -172f), vec4<bool>(false, true, true, false), vec3<i32>(-2147483647i, 2147483647i, -13678i), Struct_1(vec2<u32>(42709u, arg_1), 365f, -2824f, vec2<bool>(true, true), -388f), vec3<u32>(u_input.b.x, arg_1, arg_0.x))), vec4<bool>(false, u_input.a >= u_input.a, all(vec2<bool>(false, true)), true), _wgslsmith_clamp_vec3_i32(-vec3<i32>(62837i, -61270i, 2709i), reverseBits(vec3<i32>(45528i, 34982i, 1i)), vec3<i32>(7132i, 17490i, -1i)), func_1(Struct_2(Struct_1(vec2<u32>(37960u, arg_1), -681f, 415f, vec2<bool>(true, true), 1000f), vec4<bool>(false, false, true, true), vec3<i32>(0i, -63582i, 4321i), Struct_1(vec2<u32>(arg_1, 1u), -331f, 1414f, vec2<bool>(true, true), 166f), vec3<u32>(64117u, 19042u, arg_1))), firstLeadingBit(~arg_0))), vec3<u32>(_wgslsmith_add_u32(~u_input.b.x >> (~0u % 32u), 39883u), 4294967295u, arg_1));
    var var_1 = reverseBits(42904u);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(-1644f)), var_0.a.e, _wgslsmith_f_op_f32(-1294f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-895f)), _wgslsmith_f_op_f32(-var_0.d.e)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(Struct_2(var_0.d, var_0.b, vec3<i32>(var_0.c.x, var_0.c.x, var_0.c.x), Struct_1(u_input.b.zy, 1620f, 365f, var_0.d.d, var_0.d.e), vec3<u32>(8492u, var_0.d.a.x, u_input.a))).b)));
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-(~(-57839i)), var_0.c.x | var_0.c.x, var_0.c.x, -(~2147483647i)), min(vec4<i32>(i32(-1i) * -2147483647i, 1i, -(i32(-1i) * -1i), _wgslsmith_add_i32(-var_0.c.x, _wgslsmith_sub_i32(2147483647i, var_0.c.x))), max(vec4<i32>(12753i | var_0.c.x, var_0.c.x, -var_0.c.x, var_0.c.x), -select(vec4<i32>(var_0.c.x, 1i, var_0.c.x, -47721i), vec4<i32>(1i, -2147483647i, var_0.c.x, var_0.c.x), false))));
    var_1 = countOneBits(arg_0.x);
    return Struct_2(Struct_1(var_0.d.a, var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.c)) - _wgslsmith_f_op_f32(784f + 205f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.c), _wgslsmith_f_op_f32(-var_0.d.b)), select(true || var_0.a.d.x, !var_0.d.d.x, var_0.a.d.x))), select(vec2<bool>(-2421f <= var_2.x, -796f == var_2.x), vec2<bool>(any(var_0.b.zxw), var_0.d.d.x), vec2<bool>(var_0.b.x && true, all(vec3<bool>(var_0.d.d.x, var_0.a.d.x, var_0.b.x)))), 2040f), var_0.b, abs(firstLeadingBit(-countOneBits(vec3<i32>(var_0.c.x, -1i, var_3)))), var_0.d, vec3<u32>(1u, 17475u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(u_input.a >= u_input.a, !select(true, false, true));
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.b.yy | _wgslsmith_mult_vec2_u32(vec2<u32>(select(u_input.b.x, 12809u, var_0.x), 4294967295u), max(~u_input.b.yx, ~vec2<u32>(u_input.a, u_input.b.x))), u_input.b.xz);
    let var_2 = func_6(func_5(Struct_1(u_input.b.zx, -140f, 1000f, !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false), true), _wgslsmith_div_f32(1705f, 1209f)), func_4(1083f, select(~vec2<u32>(u_input.b.x, 1u), var_1, false), Struct_2(Struct_1(u_input.b.xz, -1082f, -1000f, vec2<bool>(var_0.x, true), 802f), !vec4<bool>(false, var_0.x, var_0.x, false), -vec3<i32>(6561i, 1i, -2147483647i), func_1(Struct_2(Struct_1(vec2<u32>(14449u, u_input.a), 1397f, -1584f, vec2<bool>(false, false), 760f), vec4<bool>(true, var_0.x, false, var_0.x), vec3<i32>(-1i, -2147483647i, 2147483647i), Struct_1(var_1, -1000f, 2772f, vec2<bool>(var_0.x, var_0.x), 480f), vec3<u32>(19497u, var_1.x, var_1.x))), ~u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-3017f)))), _wgslsmith_clamp_u32(min(16482u, 27649u), ~0u, 4294967295u));
    var var_3 = ~abs(~var_2.e);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a.c))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.e, -178f))))));
    let var_5 = _wgslsmith_dot_vec2_i32(var_2.c.zx, var_2.c.zy);
    var_3 = var_2.e | _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.a.x, 33822u, var_1.x), u_input.b), min(u_input.b, vec3<u32>(0u, var_3.x, u_input.a))) | (~vec3<u32>(u_input.b.x, 0u, var_3.x) >> (firstTrailingBit(var_2.e) % vec3<u32>(32u))), min(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.d.a.x, 1u, 1u), min(u_input.b, var_2.e)), var_2.e));
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_4));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec3<u32>(13443u, ~10526u, var_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2022f, -726f, var_6.x, var_6.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, var_4.x, var_4.x, -668f)))))), vec3<i32>(2147483647i, i32(-1i) * -select(0i, -1i, var_2.a.d.x), var_5), var_5, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.c, -1218f, var_2.d.e, -103f), vec4<f32>(var_6.x, -1189f, -1345f, 1104f))) + vec4<f32>(-760f, _wgslsmith_f_op_f32(max(var_2.d.b, var_2.d.b)), _wgslsmith_div_f32(var_6.x, -778f), _wgslsmith_f_op_f32(-var_4.x))))));
}

