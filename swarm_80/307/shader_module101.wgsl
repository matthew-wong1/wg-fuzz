struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-820f, arg_0, arg_0)))))))));
    var var_1 = ~select(vec3<i32>(-1i) * -abs(vec3<i32>(-1i, -59016i, -1i)), vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, 0i), vec3<i32>(0i, u_input.a, u_input.c)), _wgslsmith_mod_i32(-1i, 9691i) >> ((92868u | u_input.e.x) % 32u), ~u_input.a & _wgslsmith_mod_i32(u_input.a, u_input.c)), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true));
    var_1 = vec3<i32>(_wgslsmith_mod_i32(~(-2147483647i) >> (1u % 32u), 35511i >> (select(u_input.d.x, 89780u, false) % 32u)) >> (_wgslsmith_mult_u32(u_input.d.x, 0u) % 32u), var_1.x, -28659i);
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), vec3<bool>(true, true, true), true, select(vec2<bool>(var_0.x > _wgslsmith_f_op_f32(round(155f)), ~u_input.d.x > ~u_input.b), vec2<bool>(true, false), vec2<bool>(true, true)));
    var_1 = vec3<i32>(var_1.x >> (_wgslsmith_clamp_u32(u_input.e.x, ~u_input.e.x, u_input.d.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(27340u, u_input.b), vec2<u32>(60415u, u_input.d.x)) % 32u)) % 32u), 52963i, ~(abs(var_1.x | 53006i) & -(~u_input.c)));
    return -749f > var_2.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(arg_0.a, arg_0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 835f, 1956f), vec3<f32>(-377f, -3051f, 289f), arg_2.x)))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a.x, var_0.x, 326f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.x, -163f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 1846f, 1840f), vec3<f32>(var_0.x, arg_0.a.x, -272f))))), vec3<f32>(230f, 695f, arg_0.a.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), 1f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(1901f, arg_0.a.x)) * var_1.yz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, var_1.x)))));
    var var_3 = arg_0;
    var var_4 = -1115f;
    return arg_2.x && all(!(!select(vec3<bool>(var_3.b.x, arg_1.x, false), arg_0.b, arg_0.b)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> vec3<bool> {
    var var_0 = arg_0;
    var var_1 = func_3(arg_0, select(!(!(!vec3<bool>(var_0.d.x, true, var_0.d.x))), arg_0.b, vec3<bool>(true, true, true)), !vec2<bool>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1004f)), ~25931u == ~u_input.d.x));
    var_1 = ~(-u_input.c & u_input.a) >= -(~(-64084i));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(871f)), arg_0.a.x), _wgslsmith_f_op_vec2_f32(-arg_0.a)))), select(arg_0.b, !vec3<bool>(false, 25018u < u_input.d.x, var_0.c), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), arg_0.b), !vec3<bool>(true, arg_1, arg_0.d.x), !var_0.b)), any(!var_0.b.xy), vec2<bool>(~(-u_input.a) > reverseBits(~u_input.c), true));
    let var_3 = ~vec2<u32>(firstTrailingBit(90695u), _wgslsmith_mod_u32(56030u, u_input.e.x));
    return var_0.b;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = !vec4<bool>(true, func_1(arg_1, any(select(vec4<bool>(arg_1.b.x, arg_1.c, arg_1.d.x, true), vec4<bool>(arg_1.c, arg_1.b.x, true, true), vec4<bool>(false, arg_1.d.x, arg_1.c, false))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-280f, 1764f, 902f, 1798f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1973f)))).x, arg_1.d.x, !any(vec2<bool>(arg_1.c, arg_1.c)));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(-707f)), _wgslsmith_f_op_f32(492f * -2824f)), func_1(Struct_1(vec2<f32>(-1343f, _wgslsmith_f_op_f32(max(1677f, arg_1.a.x))), arg_1.b, !arg_1.c | all(var_0.xw), arg_1.d), true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 961f, -959f))))), _wgslsmith_div_f32(arg_0, arg_2.x)), arg_1.b.x & true, !vec2<bool>(!(u_input.c <= 0i), arg_1.d.x));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1000f)), var_1.a.x, select(false, false, all(vec4<bool>(var_1.d.x, var_1.b.x, true, false)))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f * _wgslsmith_f_op_f32(-arg_2.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(ceil(417f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1497f)))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1083f, 1464f) * _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, 123f), _wgslsmith_f_op_f32(abs(119f))))));
    return ~abs(firstTrailingBit(min(vec3<i32>(-10902i, 0i, u_input.c), vec3<i32>(u_input.c, u_input.c, 143i)) << (firstTrailingBit(u_input.d.wyy) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-589f, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(380f, -1395f), vec2<f32>(-1000f, -1445f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1168f, 1068f) + vec2<f32>(-267f, -1167f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(624f, -908f)))), !func_1(Struct_1(vec2<f32>(842f, 849f), vec3<bool>(true, false, true), false, vec2<bool>(false, true)), true, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1780f, -1153f, -204f, -598f))), -449f), !(_wgslsmith_f_op_f32(abs(-694f)) >= _wgslsmith_f_op_f32(select(498f, 591f, false))), func_1(Struct_1(vec2<f32>(1741f, -638f), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), true, vec2<bool>(true, true)), true | (u_input.a != -1i), vec4<f32>(-1571f, _wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(f32(-1f) * -403f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-713f + -378f) + _wgslsmith_f_op_f32(f32(-1f) * -742f))).yy), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(488f, 955f)) * _wgslsmith_f_op_f32(floor(190f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(691f + 786f))) * vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(639f)))), _wgslsmith_f_op_f32(-485f - _wgslsmith_f_op_f32(-579f - -1000f)))));
    let var_1 = true;
    let var_2 = Struct_1(vec2<f32>(-546f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(992f)) + _wgslsmith_f_op_f32(select(-1298f, -371f, var_1))))), select(vec3<bool>(-134f == _wgslsmith_f_op_f32(ceil(675f)), var_1, var_1), !vec3<bool>(var_1, var_1 || true, false), select(func_1(Struct_1(vec2<f32>(-492f, 1501f), vec3<bool>(false, var_1, false), true, vec2<bool>(var_1, true)), true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(383f, -740f, 1840f, 1000f), vec4<f32>(-1141f, -561f, -405f, 1523f), vec4<bool>(true, false, var_1, true))), _wgslsmith_f_op_f32(f32(-1f) * -716f)), select(func_1(Struct_1(vec2<f32>(-743f, 440f), vec3<bool>(var_1, var_1, false), false, vec2<bool>(var_1, var_1)), true, vec4<f32>(-191f, -762f, -1113f, 956f), -774f), !vec3<bool>(false, var_1, var_1), -2147483647i > var_0.x), _wgslsmith_mod_i32(-2147483647i, -1i) <= (var_0.x | u_input.c))), !all(select(!vec4<bool>(true, var_1, false, var_1), !vec4<bool>(var_1, var_1, var_1, false), var_1)), vec2<bool>(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-800f, -295f), _wgslsmith_f_op_f32(863f - -420f)))), true));
    let var_3 = ~_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(43908i, 40329i, 1i, var_0.x), ~vec4<i32>(2147483647i, u_input.a, u_input.a, 35846i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(18719i, 0i, 2147483647i, var_0.x), vec4<i32>(-5609i, u_input.a, u_input.c, var_0.x))), vec4<i32>(~u_input.a, var_0.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.a, -1i), vec3<i32>(var_0.x, -3749i, u_input.c)), _wgslsmith_dot_vec3_i32(-var_0, _wgslsmith_div_vec3_i32(vec3<i32>(-93893i, var_0.x, var_0.x), vec3<i32>(u_input.a, var_0.x, 13844i)))));
    let var_4 = select(!vec4<bool>(true, true, !any(var_2.b), !func_3(Struct_1(var_2.a, var_2.b, var_1, var_2.d), var_2.b, var_2.b.yx)), select(!vec4<bool>(false, any(var_2.b), var_1, all(vec4<bool>(var_2.c, true, var_1, var_2.b.x))), !select(!vec4<bool>(true, var_1, true, false), select(vec4<bool>(false, var_2.d.x, true, var_1), vec4<bool>(false, true, var_1, var_2.c), true), true), vec4<bool>(var_2.b.x, var_1, select(u_input.c < var_0.x, any(vec2<bool>(var_1, true)), all(var_2.d)), var_2.d.x)), !(!(var_0.x == var_3.x)));
    var var_5 = min(~vec3<i32>(u_input.c, -5961i, -reverseBits(u_input.c)), min(~vec3<i32>(u_input.c, _wgslsmith_mult_i32(var_3.x, u_input.a), _wgslsmith_add_i32(15261i, var_3.x)), abs(abs(reverseBits(vec3<i32>(u_input.a, -45650i, -1i))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-866f))), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-1000f, var_2.a.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1589f * -1777f)))))), vec4<i32>(var_0.x, _wgslsmith_mod_i32(var_3.x, ~(-13549i)), -6584i, -(~45406i) & var_3.x), firstLeadingBit(u_input.b), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -444f))), _wgslsmith_f_op_f32(ceil(-2182f)))), -906f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, var_4.x))), var_2.a.x)), vec3<u32>(100237u, ~(_wgslsmith_add_u32(5461u, u_input.d.x) | 19000u), u_input.e.x));
}

