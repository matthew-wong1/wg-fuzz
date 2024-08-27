struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_mult_u32(u_input.b.x, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-252f, 1271f, -389f, 905f)))))));
    var_0 = Struct_3(Struct_2(~_wgslsmith_add_u32(select(77599u, var_0.a.a, true), 0u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -896f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x)), _wgslsmith_f_op_f32(ceil(var_0.a.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(877f * -1605f))))));
    var_0 = Struct_3(var_0.a);
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.b.wx))))), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, ~(u_input.c << (26177u % 32u))), ~u_input.c), var_0.a.b.x);
    var var_2 = vec4<bool>(all(!vec3<bool>(arg_1 <= arg_1, arg_0.x || false, arg_0.x)), arg_0.x, true, true);
    return -1675f;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = Struct_3(Struct_2(~min(arg_1.x, 0u) & u_input.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_3.b, vec4<f32>(arg_3.b.x, -952f, 427f, -1963f))), vec4<f32>(-1000f, arg_3.b.x, -2361f, 404f)))));
    var_0 = Struct_3(arg_3);
    var_0 = Struct_3(var_0.a);
    let var_1 = _wgslsmith_f_op_f32(min(-222f, var_0.a.b.x));
    let var_2 = u_input.b;
    return abs(min(firstLeadingBit(0i), -14082i));
}

fn func_2(arg_0: bool) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1410f)), 661f) * vec2<f32>(1299f, _wgslsmith_f_op_f32(trunc(812f)))), func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(293f, -821f))), _wgslsmith_mod_i32(u_input.c, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f))), u_input.b & (~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) | ~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 67095u)), 1i, Struct_2(firstLeadingBit(~33888u), vec4<f32>(-1046f, _wgslsmith_f_op_f32(f32(-1f) * -747f), _wgslsmith_f_op_f32(func_3(vec2<bool>(arg_0, false), u_input.a)), -671f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-243f + _wgslsmith_f_op_f32(f32(-1f) * -865f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(270f)) * _wgslsmith_div_f32(-588f, 967f)))));
    let var_1 = u_input.c;
    let var_2 = Struct_1(select(select(select(!vec2<bool>(arg_0, true), !vec2<bool>(arg_0, false), arg_0), !(!vec2<bool>(false, arg_0)), arg_0), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(arg_0, arg_0)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, arg_0)), all(vec2<bool>(true, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_0), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, arg_0), false)), vec2<bool>(all(vec3<bool>(true, true, arg_0)), true & arg_0)), !arg_0));
    let var_3 = firstTrailingBit(~u_input.b.yzz);
    var var_4 = vec2<i32>(-57828i | max(5666i, ~u_input.d), var_1);
    return Struct_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-988f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(func_3(select(var_2.a, var_2.a, arg_0), firstLeadingBit(1i)))))), _wgslsmith_div_i32(abs(-2147483647i | _wgslsmith_sub_i32(16649i, u_input.a)), u_input.d), _wgslsmith_f_op_f32(-var_0.c));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_dot_vec3_u32(~(~(~u_input.b.wwx)), min(countOneBits(reverseBits(vec3<u32>(u_input.b.x, u_input.b.x, 34337u))), _wgslsmith_mult_vec3_u32(u_input.b.yzy | vec3<u32>(4294967295u, arg_2.a, arg_2.a), _wgslsmith_sub_vec3_u32(u_input.b.xwx, vec3<u32>(1u, 88022u, 120344u))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(282f, 272f))), -378f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -443f))), arg_2.b.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_2.b.x, arg_2.b.x, arg_2.b.x)) - vec4<f32>(_wgslsmith_f_op_f32(round(-717f)), arg_2.b.x, _wgslsmith_f_op_f32(abs(arg_2.b.x)), _wgslsmith_f_op_f32(abs(-864f))))));
    var var_1 = select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), select(true, true, false)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), arg_2.a >= 0u), true), vec3<bool>(true, true, true)), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), any(select(vec3<bool>(true, any(vec2<bool>(false, false)), true), vec3<bool>(true, 4294967295u >= var_0.a, false), any(vec3<bool>(true, true, true)))));
    var var_2 = Struct_1(select(!vec2<bool>(!var_1.x, true), select(select(select(var_1.yx, var_1.yz, vec2<bool>(false, true)), vec2<bool>(var_1.x, true), true), var_1.yz, var_1.x), vec2<bool>(var_1.x, false)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - arg_2.b.x), _wgslsmith_div_f32(arg_2.b.x, 573f));
    let var_4 = Struct_1(var_2.a);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, 193f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(824f, arg_1.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1835f, -234f), arg_2.b.yz))), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.a)))));
}

fn func_6(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = 75424u;
    var_1 = u_input.b.x;
    var_1 = ~_wgslsmith_div_u32(u_input.b.x, max(1u, u_input.b.x));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(u_input.c, -16395i), u_input.c);
    return Struct_3(Struct_2(~(~u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.x, arg_1.x), _wgslsmith_f_op_f32(1000f * 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-466f, arg_1.x))), arg_1.x, 536f)));
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_4) -> Struct_2 {
    let var_0 = arg_0.x;
    let var_1 = func_6(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a - arg_2.a) - _wgslsmith_f_op_vec2_f32(-arg_2.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(245f, -862f), func_6(arg_1.a.b.wx, vec4<f32>(1000f, arg_2.a.x, arg_1.a.b.x, 1767f)).a.b.wx)), vec2<bool>(true, true))), arg_1.a.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-841f, _wgslsmith_f_op_f32(727f * var_1.a.b.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-405f))))) - -593f));
    var var_3 = (~select(firstTrailingBit(u_input.b.wzx), vec3<u32>(u_input.b.x, 1u, 4294967295u), u_input.d > 1i) ^ vec3<u32>(min(_wgslsmith_clamp_u32(arg_1.a.a, u_input.b.x, arg_1.a.a), 76974u), max(arg_1.a.a, arg_1.a.a) << (u_input.b.x % 32u), 4294967295u)) & ~abs(abs(vec3<u32>(4294967295u, 89027u, 63263u)));
    var_2 = -270f;
    return var_1.a;
}

fn func_1() -> f32 {
    var var_0 = u_input.c;
    var_0 = ~(-24514i);
    var var_1 = func_7(u_input.b.zy, func_6(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_sub_i32(12785i, u_input.c), func_2(false), Struct_2(u_input.b.x, vec4<f32>(2076f, -1000f, -274f, -965f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(164f, -1199f) * _wgslsmith_f_op_f32(f32(-1f) * -776f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1450f + -181f) - -145f), func_2(true).c, -1146f)), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-441f, -1639f))), ~(-80694i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, true), vec2<bool>(true, false), true), -28747i)))));
    var_1 = Struct_2(~(~var_1.a) << (~func_6(_wgslsmith_f_op_vec2_f32(-var_1.b.yx), var_1.b).a.a % 32u), _wgslsmith_f_op_vec4_f32(max(var_1.b, var_1.b)));
    var_0 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.c | 2147483647i, u_input.a, u_input.c & u_input.d, 26983i) >> (_wgslsmith_mult_vec4_u32(u_input.b << (vec4<u32>(var_1.a, u_input.b.x, 39742u, var_1.a) % vec4<u32>(32u)), u_input.b) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -62720i, -2147483647i), firstTrailingBit(vec4<i32>(-2147483647i, 11935i, -13316i, u_input.d))), ~(-vec4<i32>(26222i, -16103i, 22814i, u_input.d)), countOneBits(vec4<i32>(-4392i, u_input.d, 23128i, -1i)) & -vec4<i32>(-2147483647i, 15313i, 2864i, 2025i)) >> (~u_input.b % vec4<u32>(32u)));
    return var_1.b.x;
}

fn func_8(arg_0: u32, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_2(arg_0 | u_input.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -719f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) + _wgslsmith_f_op_f32(arg_1 - arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -539f)), 203f) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 1523f, _wgslsmith_f_op_f32(arg_1 + arg_1), arg_1), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_1, arg_1, 192f) * vec4<f32>(arg_1, arg_1, arg_1, -227f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, arg_1, -165f, 970f))))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.c;
    let var_1 = Struct_3(func_8(22143u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(534f + -240f)) * _wgslsmith_f_op_f32(func_1()))));
    let var_2 = !vec2<bool>(var_1.a.b.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.a.b.x, -611f, false)), var_1.a.b.x), -1i <= (u_input.d | -2147483647i));
    let var_3 = vec2<i32>(-1i) * -firstLeadingBit(vec2<i32>(0i, reverseBits(u_input.d)));
    var var_4 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-429f)), _wgslsmith_f_op_f32(step(-1269f, var_1.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-499f)) - _wgslsmith_f_op_f32(-558f + 899f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_5(-758i, Struct_4(var_1.a.b.zx, u_input.d, -892f), Struct_2(0u, var_1.a.b))).x)) - -1225f), -627f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1033f), _wgslsmith_div_f32(var_4.x, -1889f), vec4<u32>(4294967295u, ~u_input.b.x, _wgslsmith_dot_vec4_u32(~u_input.b, _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.a.a, u_input.b.x, var_1.a.a, 73323u), u_input.b, vec4<u32>(var_1.a.a, var_1.a.a, var_1.a.a, u_input.b.x))), 1u));
}

