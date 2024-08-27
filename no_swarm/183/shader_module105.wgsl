struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: f32) -> bool {
    let var_0 = firstLeadingBit(u_input.a.x);
    var var_1 = Struct_2(firstLeadingBit(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.x, -11189i, -43071i, arg_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 0i, -13363i), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))) ^ arg_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -525f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -901f))))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -384f, arg_2, -428f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2340f, 1582f, 950f, arg_2), vec4<f32>(arg_2, 1826f, 711f, -896f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(579f, arg_2, 1326f, arg_2)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 1000f, arg_2))))));
    let var_2 = var_1.c;
    var var_3 = var_1.c;
    let var_4 = var_1.c;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = true;
    let var_1 = vec4<bool>(true, false, true, all(vec4<bool>((arg_1 == 27373u) == (arg_0.a < arg_0.a), -1743f > arg_0.c.a.x, true, select(true, false, true))));
    var_0 = all(!var_1.yxw);
    let var_2 = arg_0;
    let var_3 = !(!vec4<bool>(func_3(-vec2<i32>(var_2.a, 98861i), var_1, -649f), any(vec4<bool>(true, var_1.x, var_1.x, true)), _wgslsmith_mod_u32(1u, 1u) > (0u << (arg_1 % 32u)), var_1.x));
    return Struct_1(_wgslsmith_div_vec4_f32(arg_0.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c.a - var_2.c.a)))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_0, arg_3.x, 2147483647i, 77525i)), vec4<i32>(_wgslsmith_add_i32(0i, arg_3.x) | -1572i, -arg_0 | ~0i, ~(-35814i), _wgslsmith_div_i32(-18941i, ~(-37089i)))), 0i);
    let var_1 = Struct_2(_wgslsmith_clamp_i32(arg_0, -_wgslsmith_clamp_i32(-28955i, arg_0, arg_3.x), ~(~0i)) << (u_input.a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x))))), func_2(Struct_2(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f) - _wgslsmith_f_op_f32(-arg_1.x)), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-412f, arg_1.x, -1204f, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, -1159f, arg_1.x))))), 1u));
    let var_2 = var_1.c;
    var var_3 = arg_3.xx;
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(-1681f, _wgslsmith_div_f32(arg_1.x, -742f))), _wgslsmith_f_op_f32(sign(-613f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b, var_2.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-893f + 528f), _wgslsmith_f_op_f32(var_1.b - var_2.a.x))))));
    return Struct_2(abs(var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1629f * _wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(-arg_1.x)))) + _wgslsmith_f_op_f32(-var_4.a.x)), var_1.c);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: vec4<i32>) -> vec2<i32> {
    var var_0 = !select(!vec3<bool>(true, func_3(vec2<i32>(arg_3.x, 54196i), vec4<bool>(true, arg_1, false, false), -717f), any(vec3<bool>(arg_1, false, false))), vec3<bool>(true || func_3(vec2<i32>(arg_2.a, arg_3.x), vec4<bool>(arg_1, false, true, false), 239f), true, abs(u_input.a.x) <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.yx)), arg_1);
    var_0 = !vec3<bool>(func_3(countOneBits(arg_3.yy | vec2<i32>(2147483647i, arg_3.x)), !(!vec4<bool>(true, var_0.x, arg_1, false)), _wgslsmith_f_op_f32(floor(1637f))), true, true);
    var var_1 = arg_0.c;
    let var_2 = 1450i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, -824f, 251f, arg_0.b) * _wgslsmith_div_vec4_f32(var_1.a, vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.a.x * 981f), _wgslsmith_f_op_f32(var_1.a.x * 1170f), 1194f, _wgslsmith_f_op_f32(f32(-1f) * -1765f)))));
    return vec2<i32>(2147483647i, _wgslsmith_clamp_i32(var_2, -1i, var_2));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = func_1(_wgslsmith_sub_i32((i32(-1i) * -41440i) << (~arg_2.x % 32u), arg_1.x << (~firstLeadingBit(2933u) % 32u)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1039f, -663f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1436f, -483f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1506f) - vec2<f32>(arg_0, arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1412f, -1343f), vec2<f32>(104f, 739f)) + vec2<f32>(639f, arg_0))), vec2<bool>(true, true))), arg_2.ww, -select(~max(vec3<i32>(28967i, 2147483647i, arg_1.x), vec3<i32>(0i, -42928i, -21139i)), (vec3<i32>(1i, 1i, 21767i) & vec3<i32>(4730i, arg_1.x, arg_1.x)) ^ _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(arg_1.x, -1i, arg_1.x)), vec3<bool>(true, true, arg_0 < arg_0)));
    var var_1 = ~min(46114u, _wgslsmith_div_u32(~(~u_input.a.x), ~_wgslsmith_mod_u32(arg_2.x, 36230u)));
    let var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_f32(arg_0 * 1574f);
    let var_4 = var_2.a;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1386f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(408f - -549f))))), _wgslsmith_mult_vec2_i32(func_4(func_1(-9089i, vec2<f32>(-431f, -1000f), u_input.a.yy, vec3<i32>(-2874i, 1i, 14251i)), all(vec4<bool>(false, false, true, false)), Struct_2(0i, -1394f, Struct_1(vec4<f32>(1169f, -317f, 623f, 584f))), vec4<i32>(-27260i, -15805i, 1i, -1i) >> (vec4<u32>(0u, 1u, 8040u, u_input.a.x) % vec4<u32>(32u))), vec2<i32>(reverseBits(2147483647i), -66761i)) << ((_wgslsmith_mult_vec2_u32(~u_input.a.zz, u_input.a.xy) << (_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx) % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(u_input.a.xx, ~(~u_input.a.xy)), 45214u, min(reverseBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(max(func_1(2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.b - 281f), var_0.b)), ~abs(~vec2<u32>(0u, u_input.a.x)), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, var_0.a, var_0.a), -vec3<i32>(0i, var_0.a, var_0.a))).b, var_0.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(-func_5(var_0.b, vec2<i32>(var_0.a, var_0.a), ~_wgslsmith_sub_vec4_u32(vec4<u32>(43047u, 32022u, u_input.a.x, 41623u), max(vec4<u32>(1u, 3844u, u_input.a.x, 1u), vec4<u32>(1u, 0u, u_input.a.x, 4294967295u)))).c.a);
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f), var_0.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, -281f))) * var_0.c.a.x) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.c.a.x, var_2.x)), func_1(-10770i, vec2<f32>(var_0.b, 1092f), vec2<u32>(u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, 14992i, var_0.a)).b, select(false, true, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(trunc(var_2.x))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))) * _wgslsmith_f_op_f32(sign(var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, vec2<i32>(max(1i, _wgslsmith_mult_i32(var_0.a, 5243i)) << (~62407u % 32u), var_0.a));
}

