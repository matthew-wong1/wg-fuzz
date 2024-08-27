struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-96608i, i32(-2147483648), 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-701f, -1902f, -1087f, 736f), vec4<f32>(-678f, -1153f, -1622f, -180f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-889f, 662f, -1396f, 736f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(261f, -201f, 1399f, -247f) - vec4<f32>(-122f, -1000f, -627f, 1135f)))))), _wgslsmith_f_op_f32(-2433f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(793f * -1000f))), -216f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -569f))), abs(21154i), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -648f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1256f, -574f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-993f, 719f))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, -470f)))), _wgslsmith_clamp_i32(global0.x, abs(2185i), i32(-1i) * -34927i), -669f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1670f, 1454f))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1338f, -1837f))))));
    global0 = min(vec3<i32>(-32768i | (u_input.a >> (~u_input.b % 32u)), ~global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(13216i, -44720i), firstLeadingBit(global0.zy)) << (u_input.b % 32u)), _wgslsmith_mult_vec3_i32(((vec3<i32>(-1i, 1i, -18994i) << (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u))) >> (vec3<u32>(u_input.b, u_input.b, 13431u) % vec3<u32>(32u))) | ~select(vec3<i32>(global0.x, global0.x, global0.x), vec3<i32>(-767i, 2147483647i, global0.x), arg_0), vec3<i32>(_wgslsmith_mult_i32(~2147483647i, global0.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.b, global0.x, var_0.c.b), vec3<i32>(44549i, 0i, global0.x)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-17161i, u_input.a, global0.x, global0.x), vec4<i32>(var_0.d.b, -2147483647i, global0.x, global0.x)))));
    let var_1 = true;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d.c * var_0.b))))) * -789f), var_0.c, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b + -1100f))), 1323f), i32(-1i) * -1284i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1012f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1226f + var_0.c.a) - 619f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.d.x, var_0.d.d.x) - _wgslsmith_div_vec2_f32(var_0.d.d, var_0.d.d)))));
    let var_3 = vec2<i32>(-_wgslsmith_sub_i32(var_0.d.b, 2147483647i) ^ (i32(-1i) * -1i), ~(global0.x | firstTrailingBit(abs(13997i))));
    return ~reverseBits(~(~vec4<u32>(87187u, u_input.b, 48625u, u_input.b) ^ ~vec4<u32>(0u, u_input.b, u_input.b, u_input.b)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.b, select(min(1u, 69334u), _wgslsmith_dot_vec3_u32(arg_2.c, vec3<u32>(23855u, 1u, u_input.b)), arg_0.d == arg_2.d)), _wgslsmith_add_u32(firstTrailingBit(firstLeadingBit(4294967295u)), 4294967295u)), vec2<u32>(~arg_1.b.x, ~44291u) ^ ~min(~arg_0.b.zw, ~vec2<u32>(u_input.b, 4294967295u)));
    var var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(40043i, -31930i), vec2<i32>(-1i, -6002i)), arg_2.a, 13003i), vec4<i32>(-1i) * -vec4<i32>(0i, global0.x, global0.x, global0.x)) >> (arg_2.b % vec4<u32>(32u)), ~(vec4<i32>(-1i) * -select(vec4<i32>(2147483647i, global0.x, arg_1.a, -1i), vec4<i32>(-24648i, -18957i, -2147483647i, 48049i), arg_2.d)));
    var var_2 = _wgslsmith_div_i32(2147483647i, -1i);
    let var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, -1490f, 261f, arg_3.x) - vec4<f32>(arg_3.x, 232f, arg_3.x, arg_3.x)))), _wgslsmith_f_op_f32(246f + _wgslsmith_f_op_f32(abs(arg_3.x))), Struct_1(_wgslsmith_f_op_f32(exp2(arg_3.x)), ~_wgslsmith_mult_i32(global0.x, 6598i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_f32(sign(arg_3.x)), !arg_2.d)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, arg_3.x)))), Struct_1(_wgslsmith_div_f32(304f, -472f), firstTrailingBit(u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(448f * -533f), -687f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(245f, arg_3.x) + vec2<f32>(-1124f, arg_3.x)), arg_3.zy, vec2<bool>(false, arg_0.d))))), Struct_1(arg_3.x, arg_2.a, _wgslsmith_f_op_f32(abs(arg_3.x)), arg_3.xx), _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_div_f32(-782f, 301f))), Struct_1(762f, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.a, arg_2.a, u_input.a, u_input.a), vec4<i32>(42036i, -15779i, global0.x, u_input.a)) << (vec4<u32>(u_input.b, var_0.x, arg_2.b.x, arg_0.c.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(arg_1.a, u_input.a, -1i, arg_2.a), vec4<i32>(-2147483647i, 2147483647i, u_input.a, global0.x), vec4<bool>(true, true, arg_1.d, false)), ~vec4<i32>(72320i, 2147483647i, 12687i, arg_0.a))), 311f, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.x, arg_3.x), _wgslsmith_f_op_vec2_f32(-arg_3.zx)), vec2<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1925f)))));
    let var_4 = all(vec4<bool>(all(select(select(vec4<bool>(false, arg_1.d, true, arg_2.d), vec4<bool>(arg_2.d, true, true, true), arg_2.d), select(vec4<bool>(true, arg_1.d, true, arg_2.d), vec4<bool>(false, arg_1.d, arg_1.d, arg_0.d), vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d)), !vec4<bool>(arg_0.d, true, false, true))), true, arg_2.d || arg_1.d, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(578f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_3.b.d.x)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_3 {
    return Struct_3(vec4<f32>(arg_1.x, -549f, _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + 1958f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 928f))))), _wgslsmith_f_op_f32(step(arg_0.x, -500f)), Struct_1(_wgslsmith_div_f32(-409f, _wgslsmith_f_op_f32(f32(-1f) * -875f)), 2147483647i, _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_mod_i32(23896i, 2448i), vec4<u32>(u_input.b, 66432u, 1u, u_input.b) | vec4<u32>(u_input.b, arg_2, u_input.b, 20576u), vec3<u32>(25263u, 68221u, u_input.b), all(vec3<bool>(false, true, false))), Struct_2(0i, func_3(false), max(vec3<u32>(92972u, 121081u, 43370u), vec3<u32>(59741u, u_input.b, u_input.b)), true), Struct_2(_wgslsmith_add_i32(-2147483647i, u_input.a), min(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, arg_2, u_input.b)), ~vec3<u32>(u_input.b, arg_2, u_input.b), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(729f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(global0.x, vec4<u32>(arg_2, u_input.b, u_input.b, arg_2), vec3<u32>(11147u, u_input.b, 34727u), true), Struct_2(u_input.a, vec4<u32>(4294967295u, 1u, 39775u, 1u), vec3<u32>(u_input.b, arg_2, arg_2), false), Struct_2(global0.x, vec4<u32>(63762u, arg_2, arg_2, 1u), vec3<u32>(55413u, 34651u, 15056u), true), vec3<f32>(arg_1.x, 401f, -1812f))) * arg_0.x))), Struct_1(894f, (i32(-1i) * -30443i) | u_input.a, -2627f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, _wgslsmith_f_op_f32(-258f + arg_1.x)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>) -> vec3<f32> {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-439f, arg_2.x), arg_2) - vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2075f * arg_2.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-601f, _wgslsmith_f_op_f32(arg_2.x - -666f), 1193f)) * vec3<f32>(-800f, arg_2.x, arg_2.x)), abs(1u));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c.d), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_2 * arg_2))), vec2<bool>(true, true))) + arg_2), _wgslsmith_f_op_vec2_f32(min(arg_2, arg_2)));
    var var_2 = vec3<i32>(min(arg_0.x, -(~reverseBits(arg_0.x))), 27702i, -1i);
    return var_0.a.yzw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(1047f, -471f, -1882f);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1((vec2<i32>(u_input.a, global0.x) | global0.zz) >> (((vec2<u32>(48640u, u_input.b) & vec2<u32>(u_input.b, u_input.b)) & ~vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), ~select(i32(-1i) * -2147483647i, ~global0.x, true), var_0.zz)));
    global0 = vec3<i32>(firstTrailingBit(firstLeadingBit(~(-global0.x))), _wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(u_input.a, -71022i)), _wgslsmith_dot_vec2_i32(select(global0.xx, vec2<i32>(-2147483647i, _wgslsmith_mod_i32(0i, -2147483647i)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), countOneBits(vec2<i32>(u_input.a, u_input.a))));
    let var_1 = select(!vec2<bool>(all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(false, true, true))), select(vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(all(vec3<bool>(true, true, true)), false), select(vec2<bool>(all(vec4<bool>(true, true, true, false)), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), true);
    let var_2 = _wgslsmith_mod_vec4_i32(select(min(select(-vec4<i32>(15480i, global0.x, -71958i, -38113i), vec4<i32>(0i, 55244i, global0.x, -51126i) >> (vec4<u32>(26089u, 50069u, 16863u, u_input.b) % vec4<u32>(32u)), var_1.x), ~firstLeadingBit(vec4<i32>(11497i, u_input.a, u_input.a, -2147483647i))), -_wgslsmith_mult_vec4_i32(max(vec4<i32>(global0.x, u_input.a, 10387i, u_input.a), vec4<i32>(2147483647i, -23922i, global0.x, global0.x)), reverseBits(vec4<i32>(global0.x, 3441i, u_input.a, -1i))), vec4<bool>(_wgslsmith_f_op_f32(1000f * var_0.x) != _wgslsmith_div_f32(var_0.x, var_0.x), true, all(!vec3<bool>(var_1.x, true, var_1.x)), false)), ~(~vec4<i32>(_wgslsmith_add_i32(2147483647i, -9092i), u_input.a, countOneBits(13655i), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-712f, -1000f, -818f, var_0.x) + vec4<f32>(var_0.x, var_0.x, var_0.x, 1529f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, var_0.x, -434f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -970f), vec4<f32>(var_0.x, var_0.x, var_0.x, 1000f)) - vec4<f32>(var_0.x, -1032f, var_0.x, 947f))))));
}

