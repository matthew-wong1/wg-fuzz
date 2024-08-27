struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
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

var<private> global0: f32;

var<private> global1: array<Struct_1, 8>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = arg_2;
    var var_1 = Struct_1(558f, -298f);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1783f)))) + arg_2.b.b));
    var var_2 = !vec2<bool>(all(vec4<bool>(true, arg_1 != arg_2.c.x, true, all(var_0.c))), true);
    var_1 = var_0.b;
    return arg_2.c.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>) -> Struct_1 {
    global0 = 965f;
    var var_0 = min(~_wgslsmith_div_u32(0u, ~1u), 19623u);
    var var_1 = Struct_2(vec2<bool>(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(400f, -411f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(371f, -434f) * vec2<f32>(359f, -1239f))), !select(false, false, true), Struct_2(vec2<bool>(true, true), Struct_1(-1000f, -629f), vec4<bool>(true, true, true, true), abs(vec4<u32>(4294967295u, 11631u, 17757u, u_input.c.x)))), true), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-470f * _wgslsmith_f_op_f32(f32(-1f) * -1356f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(-991f + -1000f))))), select(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), true), vec4<bool>(false, func_3(vec2<f32>(-251f, -142f), func_3(vec2<f32>(1654f, -511f), false, Struct_2(vec2<bool>(true, true), global1[_wgslsmith_index_u32(50298u, 8u)], vec4<bool>(true, true, false, false), vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u))), Struct_2(vec2<bool>(true, false), global1[_wgslsmith_index_u32(29105u, 8u)], vec4<bool>(true, true, true, true), vec4<u32>(u_input.d, u_input.c.x, u_input.b, u_input.d))), true, true), func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1182f), 575f), !select(true, true, false), Struct_2(select(vec2<bool>(false, false), vec2<bool>(true, true), true), Struct_1(-907f, 348f), vec4<bool>(true, true, true, true), vec4<u32>(u_input.d, u_input.c.x, u_input.c.x, u_input.c.x)))), ~min(~vec4<u32>(u_input.c.x, u_input.d, 4294967295u, 1u), vec4<u32>(u_input.d, 9719u, u_input.c.x, 6292u) >> (vec4<u32>(u_input.d, 78342u, 27585u, u_input.d) % vec4<u32>(32u))) & firstLeadingBit(~vec4<u32>(u_input.b, u_input.d, u_input.c.x, 31488u) << (~vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.d) % vec4<u32>(32u))));
    global1 = array<Struct_1, 8>();
    var_0 = u_input.d;
    return Struct_1(_wgslsmith_f_op_f32(843f - 453f), -605f);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(select(false, false, true), false, true), true, true), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))) || true);
    let var_1 = _wgslsmith_div_vec4_i32(-(~firstLeadingBit(vec4<i32>(-6498i, u_input.a, -24874i, u_input.a) | vec4<i32>(u_input.a, u_input.a, 22881i, u_input.a))), firstLeadingBit(reverseBits(select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), vec4<i32>(-2147483647i, 28147i, 2147483647i, u_input.a)), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), select(var_0, vec4<bool>(var_0.x, var_0.x, true, false), var_0)))));
    let var_2 = Struct_2(!var_0.ww, arg_2, select(vec4<bool>(!var_0.x || var_0.x, var_0.x, select(!var_0.x, all(var_0.xz), true), func_3(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_0.b), vec2<f32>(arg_1, arg_0.b)), true, Struct_2(var_0.wy, arg_2, var_0, vec4<u32>(4294967295u, u_input.c.x, 26141u, 30147u)))), select(var_0, vec4<bool>(u_input.b == u_input.b, false, true, true), !var_0), select(vec4<bool>(true, true, var_0.x & true, false), select(var_0, var_0, !var_0), false)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 1u, 0u, u_input.d), ~vec4<u32>(13878u, 0u, u_input.c.x, u_input.c.x)), ~vec4<u32>(60395u, 0u, u_input.b, u_input.d)));
    var var_3 = abs(var_2.d.zzw);
    var var_4 = any(vec2<bool>(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.a, arg_1))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1840f, -925f) * vec2<f32>(arg_1, -742f))), var_0.x, var_2), !all(var_2.c.xwy)));
    return var_2;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    global0 = -161f;
    global1 = array<Struct_1, 8>();
    var var_0 = arg_2;
    var var_1 = _wgslsmith_clamp_i32(11307i, -arg_0, ~u_input.a);
    let var_2 = vec2<bool>(false, var_0.b.b <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b.a), _wgslsmith_f_op_f32(step(arg_2.b.b, 479f)), !arg_2.a.x)) - arg_3));
    return arg_2.c;
}

fn func_6(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = false;
    var var_1 = arg_0.wxw;
    global1 = array<Struct_1, 8>();
    var var_2 = !select(!vec4<bool>(all(vec3<bool>(var_1.x, var_1.x, arg_0.x)), all(arg_0.zzy), !var_1.x, false), arg_0, arg_0.x);
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1039f))))))));
    return Struct_2(!select(arg_0.wy, vec2<bool>(any(vec4<bool>(false, true, arg_0.x, true)), !var_1.x), vec2<bool>(any(var_2.ww), true)), func_2(reverseBits(max(select(vec2<i32>(u_input.a, -23814i), vec2<i32>(1635i, 49282i), false), vec2<i32>(-1i, u_input.a))), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(46883i, u_input.a, 0i)), vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(30089i, u_input.a, u_input.a))), vec4<bool>(true, all(select(!arg_0, arg_0, !vec4<bool>(var_2.x, false, arg_0.x, var_1.x))), !arg_0.x, true), vec4<u32>(31985u, min(38644u, 4294967295u), u_input.d, u_input.d));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> f32 {
    let var_0 = func_6(!func_5(-1i, all(select(vec3<bool>(true, false, true), vec3<bool>(arg_2.x, true, arg_2.x), arg_2.x)), func_4(Struct_1(466f, -1164f), -405f, func_2(vec2<i32>(u_input.a, -55565i), vec3<i32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f - 1538f))));
    global0 = func_2(vec2<i32>(u_input.a, _wgslsmith_mod_i32(_wgslsmith_mult_i32(24296i, u_input.a >> (773u % 32u)), abs(_wgslsmith_add_i32(u_input.a, u_input.a)))), max(vec3<i32>(u_input.a, _wgslsmith_clamp_i32(~(-15946i), u_input.a, u_input.a >> (arg_1.x % 32u)), 16758i), ~(vec3<i32>(1i, u_input.a, -2147483647i) >> ((var_0.d.wxw & var_0.d.zxw) % vec3<u32>(32u))))).b;
    var var_1 = func_6(vec4<bool>(all(var_0.c), any(vec3<bool>(62951u < arg_0, true, true)), false, !(_wgslsmith_f_op_f32(2242f + arg_3.x) <= 1000f)));
    let var_2 = func_4(func_6(vec4<bool>(_wgslsmith_f_op_f32(floor(-606f)) == -2398f, ~u_input.d != ~u_input.d, false, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i)) <= (45739i | u_input.a))).b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -982f))), -1813f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-664f, var_0.b.a) + _wgslsmith_f_op_f32(-var_0.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) - arg_3.x))).d.x;
    var var_3 = _wgslsmith_add_i32(u_input.a, -21467i << (1u % 32u));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-920f * -1000f)) + arg_3.x), func_4(func_2(reverseBits(vec2<i32>(-1i, 22459i)), -vec3<i32>(-14788i, u_input.a, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b.b)) - _wgslsmith_f_op_f32(583f - 494f)), Struct_1(-1490f, -1217f)).b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-520f - 1533f)), _wgslsmith_f_op_f32(-1191f * _wgslsmith_f_op_f32(f32(-1f) * -993f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-108f, 326f, false)), _wgslsmith_f_op_f32(-1000f - 906f)) + -1092f)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(21737u, vec2<u32>(select(0u, u_input.d, false), _wgslsmith_mult_u32(u_input.d, u_input.d)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2240f, -990f, -2319f, -2458f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-184f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-150f * 1907f), -1000f))), _wgslsmith_f_op_f32(449f + _wgslsmith_f_op_f32(-822f * _wgslsmith_f_op_f32(-1077f + 1219f)))));
    global1 = array<Struct_1, 8>();
    let var_1 = var_0.x;
    var var_2 = Struct_2(!func_5(u_input.a, !all(vec3<bool>(false, true, true)), Struct_2(vec2<bool>(true, true), Struct_1(var_0.x, var_1), vec4<bool>(true, true, true, true), ~vec4<u32>(4294967295u, 1u, 4294967295u, u_input.d)), _wgslsmith_f_op_f32(f32(-1f) * -764f)).xy, global1[_wgslsmith_index_u32(reverseBits(abs(1u)) << ((~1u | (u_input.c.x & firstTrailingBit(u_input.b))) % 32u), 8u)], vec4<bool>(func_5(u_input.a, any(vec3<bool>(true, true, true)), Struct_2(select(vec2<bool>(true, true), vec2<bool>(false, false), false), func_6(vec4<bool>(true, true, false, true)).b, func_4(global1[_wgslsmith_index_u32(1u, 8u)], var_0.x, Struct_1(920f, -281f)).c, ~vec4<u32>(45430u, u_input.d, 4294967295u, u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-713f, -571f))).x, false, all(vec3<bool>(true, true, true)), any(func_5(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), true, func_6(vec4<bool>(false, false, false, true)), var_1).zx)), ~vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.d, 4294967295u), vec4<u32>(u_input.d, 81683u, 36737u, 1u)), ~reverseBits(0u), u_input.c.x, u_input.d));
    var var_3 = var_2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, ~u_input.a, ~15172i, u_input.a), -reverseBits(vec4<i32>(-10009i, -28232i, u_input.a, u_input.a))));
}

