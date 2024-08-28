struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = 0u;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1198f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f - -1000f)))));
    return true;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    let var_0 = all(select(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), func_3(all(vec2<bool>(false, false)), Struct_1(vec4<f32>(561f, arg_1, arg_1, 1649f)))), vec3<bool>(!select(false, true, true), false, false), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))));
    let var_1 = !var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, arg_1, 1000f))))) * vec3<f32>(arg_1, _wgslsmith_f_op_f32(arg_1 + -1112f), _wgslsmith_f_op_f32(max(arg_1, arg_1))))) * _wgslsmith_div_vec3_f32(vec3<f32>(-256f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(354f, 788f)), arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * -527f) - _wgslsmith_f_op_f32(round(-505f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(757f, arg_1, 127f) - vec3<f32>(727f, arg_1, -1035f)), vec3<f32>(-980f, 1210f, -158f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, 193f) * vec3<f32>(arg_1, 308f, 1091f)))))));
    let var_3 = max(_wgslsmith_mod_u32(~(~(~25639u)), reverseBits(5696u)), 0u);
    let var_4 = i32(-1i) * -firstTrailingBit(u_input.b.x);
    return _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(9358i, ~var_4, -14768i, _wgslsmith_clamp_i32(0i, var_4, u_input.a.x)), u_input.b << (firstLeadingBit(vec4<u32>(1u, arg_0.x, var_3, 60559u)) % vec4<u32>(32u))), ~abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-25740i, u_input.b.x, 0i), u_input.b.xyw))), -17180i);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-20959i, u_input.a.x, -2147483647i, func_2(vec2<u32>(31721u, 1u), arg_1.x)), reverseBits(-u_input.b)), u_input.a.x);
    let var_1 = Struct_3(abs(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-241f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-309f, 1189f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2025f) * _wgslsmith_f_op_f32(select(-228f, arg_1.x, false)))), arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(-arg_1.x), -275f, _wgslsmith_f_op_f32(278f * var_2.a.x)))))));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.a.zw), var_2.a.wx, true)))), _wgslsmith_f_op_vec2_f32(min(arg_1.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a.x, arg_1.x)))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(arg_1)));
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_sub_u32(35996u, 1u), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1208f - 591f), _wgslsmith_div_f32(-709f, -1479f))), _wgslsmith_div_f32(-603f, _wgslsmith_f_op_f32(-1040f - -744f)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(425f, -833f, -745f, -752f))))))), ~10243u, func_4(true, func_1(vec3<i32>(_wgslsmith_div_i32(2147483647i, u_input.a.x), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, 49240i), vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x))), vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = func_1(_wgslsmith_mod_vec3_i32(select(select(reverseBits(u_input.a.wxw), -u_input.a.xwy, vec3<bool>(true, true, false)), -_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(2147483647i, 0i, 23676i)), false), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -38566i, 24515i), u_input.a.xyw, min(vec3<i32>(u_input.a.x, u_input.a.x, 1i), firstTrailingBit(u_input.a.zwz)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.e.a.x, 1561f, -1000f, var_0.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.c.x, var_0.c.x, var_0.b)))) - vec4<f32>(var_0.e.a.x, -404f, _wgslsmith_f_op_f32(var_0.e.a.x * -239f), _wgslsmith_f_op_f32(select(1000f, var_0.c.x, false)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, var_0.e.a.x, var_0.b, var_0.c.x))))));
    var_1 = Struct_1(var_1.a);
    var var_2 = 1i;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(545f + -640f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.e.a.x), _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_1.a.x)), u_input.a.x <= min(u_input.a.x, -2147483647i))))));
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.x)));
    let var_5 = func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(~(-2147483647i)), _wgslsmith_mod_i32(~2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, -7163i), vec3<i32>(2195i, -16263i, -13512i))), 28561i), vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, u_input.a.x) ^ u_input.b.x, ~min(u_input.b.x, u_input.b.x), abs(max(1i, 2147483647i)))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(85684u, var_3.a.xw, ~(-select(u_input.b >> (vec4<u32>(0u, var_0.d, var_0.d, var_0.a) % vec4<u32>(32u)), u_input.b >> (vec4<u32>(var_0.d, var_0.d, 1u, 7431u) % vec4<u32>(32u)), true)));
}

