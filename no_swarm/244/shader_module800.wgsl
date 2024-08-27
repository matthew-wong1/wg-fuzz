struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    let var_0 = vec3<i32>(~(-abs(_wgslsmith_sub_i32(u_input.c.x, 27148i))), 0i, u_input.e);
    return _wgslsmith_f_op_f32(select(-2656f, arg_2.a.a, true));
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = Struct_5(Struct_2(select(vec3<bool>(true, true, true), !(!vec3<bool>(arg_0.b, arg_0.b, false)), true), _wgslsmith_f_op_f32(trunc(-762f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -545f))), any(select(!vec2<bool>(false, arg_0.b), vec2<bool>(true, true), select(arg_0.b, arg_0.b, arg_0.b)))));
    var var_1 = vec3<i32>(u_input.a, _wgslsmith_clamp_i32(max(2147483647i, -u_input.e), _wgslsmith_sub_i32(u_input.e, _wgslsmith_mod_i32(-1i, u_input.e) ^ u_input.a), u_input.a), _wgslsmith_div_i32(u_input.a, -15698i));
    let var_2 = var_0;
    return any(!select(vec4<bool>(var_0.a.a.x, !var_0.a.d, var_2.a.a.x, true), select(select(vec4<bool>(false, false, arg_0.b, arg_0.b), vec4<bool>(true, false, true, true), var_2.a.d), vec4<bool>(var_2.a.d, arg_0.b, true, false), !var_2.a.a.x), false));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<f32> {
    let var_0 = -2044f;
    let var_1 = Struct_4(Struct_3(arg_2.c), !(arg_2.b <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(921f))))), 4294967295u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-236f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2273f, 1035f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(Struct_5(Struct_2(arg_2.a, -903f, Struct_1(347f), var_1.b)), arg_2, Struct_3(arg_2.c))))) + arg_2.c.a)));
    let var_3 = var_1.b;
    let var_4 = func_3(Struct_4(Struct_3(var_1.a.a), arg_3.x & arg_3.x, var_1.c));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(506f, _wgslsmith_f_op_f32(min(227f, var_2.x)), _wgslsmith_f_op_f32(var_1.a.a.a + var_0)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: i32) -> vec2<bool> {
    let var_0 = !all(vec4<bool>(any(vec2<bool>(false, false)), true, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.e, 29703i)) == firstTrailingBit(-1i), all(vec4<bool>(false, true, false, true))));
    let var_1 = u_input.a;
    let var_2 = countOneBits(u_input.d);
    let var_3 = vec2<bool>(true, true);
    var var_4 = Struct_1(arg_0.x);
    return var_3;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    let var_0 = -711f;
    let var_1 = Struct_4(Struct_3(Struct_1(-344f)), true, max(~(~u_input.d), 7504u));
    var var_2 = Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.a * var_0)))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.a.a, -475f, 763f, arg_1.a.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.a, 572f, arg_1.a.a, -1000f) + vec4<f32>(478f, arg_2.a.a.a, -702f, var_1.a.a.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -241f, 1150f) * vec3<f32>(-669f, arg_1.a.a, var_1.a.a.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.a, arg_3.a.a, arg_2.a.a.a) - vec3<f32>(var_1.a.a.a, var_0, arg_2.a.a.a)))), 1i).x, 29674u);
    var var_3 = Struct_2(select(select(vec3<bool>(false, all(vec3<bool>(true, false, false)), true), select(!vec3<bool>(var_2.b, false, arg_0.x), vec3<bool>(true, var_2.b, arg_0.x), !var_1.b), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, var_2.b, false), vec3<bool>(arg_2.b, arg_2.b, true)), !vec3<bool>(false, var_2.b, true))), !vec3<bool>(arg_2.b, !var_1.b, func_4(vec4<f32>(var_2.a.a.a, 2682f, -189f, 1197f), vec3<f32>(var_0, 1000f, -1000f), 26087i).x), select(!(!vec3<bool>(var_2.b, true, var_1.b)), select(select(vec3<bool>(false, var_2.b, arg_0.x), vec3<bool>(true, true, false), var_1.b), vec3<bool>(true, false, true), var_1.b && arg_0.x), var_2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 - 1597f)))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.a, arg_2.a.a.a) * _wgslsmith_f_op_f32(-1257f * -2389f)))), arg_2.a.a, var_1.b);
    var var_4 = arg_0.x;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!func_4(vec4<f32>(-1028f, _wgslsmith_f_op_f32(floor(-184f)), _wgslsmith_f_op_f32(abs(556f)), _wgslsmith_div_f32(2259f, 719f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(63178i, u_input.a, -45772i, u_input.c.x), 0u, Struct_2(vec3<bool>(false, false, true), 1000f, Struct_1(-301f), true), vec2<bool>(true, true))))), min(~u_input.c.x, ~11514i)), Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1212f)) + _wgslsmith_f_op_f32(643f - 135f)))), Struct_4(Struct_3(Struct_1(-530f)), select(true && any(vec2<bool>(false, false)), true, true), _wgslsmith_add_u32(u_input.d, (u_input.d << (u_input.d % 32u)) | ~96885u)), Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(277f)))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1779f))) - 662f)), _wgslsmith_f_op_vec3_f32(func_1(u_input.c, ~47833u, Struct_2(vec3<bool>(true, true, true), 796f, Struct_1(241f), 4294967295u < _wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.d)), vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), any(vec2<bool>(false, true))))).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1035f + 1320f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-193f, 896f) - -1569f)), all(vec4<bool>(true, true, true, true)))));
    let var_2 = min(abs(firstLeadingBit(firstTrailingBit(-1i))) >> (u_input.d % 32u), u_input.b.x >> (0u % 32u));
    var var_3 = false;
    var var_4 = Struct_2(select(select(vec3<bool>(true, select(false, true, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, true), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(491f * var_1.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.x)))))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(392f, 180f, var_1.x, -397f))), _wgslsmith_f_op_vec3_f32(func_1(-(~vec4<i32>(var_2, u_input.e, u_input.a, 3676i)), 0u, Struct_2(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), -195f, Struct_1(149f), -4537i != var_2), vec2<bool>(true, true))), -4108i).x);
    var var_5 = _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), abs(2147483647i), -12400i), u_input.c.wwx), _wgslsmith_mod_vec3_i32(u_input.b, _wgslsmith_add_vec3_i32(min(u_input.c.yxx, vec3<i32>(2147483647i, u_input.e, var_2)), abs(u_input.b))));
    var var_6 = -842f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(min(~vec4<u32>(u_input.d, u_input.d, 23145u, u_input.d), ~(vec4<u32>(u_input.d, 8829u, 74560u, 82965u) ^ vec4<u32>(4294967295u, 0u, u_input.d, u_input.d)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-3029f, var_4.b, var_4.c.a, -735f) + vec4<f32>(var_4.c.a, 768f, -654f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_4.b, -511f, 135f) + vec4<f32>(var_1.x, 1481f, -1141f, -1535f)), true)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(488f, var_4.b, -375f, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.c.a, -1748f, var_4.b, 1244f))))) * vec4<f32>(-1210f, var_1.x, _wgslsmith_f_op_f32(940f + -732f), 1f)), var_4.a.x)), var_1.xz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -1112f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.b), 609f))));
}

