struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    let var_0 = true;
    return _wgslsmith_div_vec2_f32(arg_3.e, vec2<f32>(-869f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.e.x), _wgslsmith_f_op_f32(ceil(-341f)), true))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    var var_0 = -14829i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(533f, -512f, arg_0, -270f)))))));
    let var_2 = 3980u;
    return arg_1.d;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_1(966f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1332f, _wgslsmith_f_op_f32(f32(-1f) * -1173f)))))), u_input.b, func_4(_wgslsmith_div_f32(388f, _wgslsmith_f_op_f32(f32(-1f) * -123f)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(136f, -337f)), 1166f)), -1000f, _wgslsmith_add_vec2_u32(u_input.b, u_input.a.zx), _wgslsmith_div_i32(_wgslsmith_add_i32(arg_3.x, 0i), 1i << (u_input.c.x % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<u32>(arg_2, 3489u), -309f, -7871i, Struct_1(582f, -1245f, vec2<u32>(1u, arg_2), -2147483647i, vec2<f32>(254f, -1614f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(334f, -751f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1205f, -1440f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1212f, -499f) - vec2<f32>(1571f, -2447f)))))), vec2<f32>(-508f, _wgslsmith_f_op_f32(min(-707f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(586f)) * -1000f)))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.a, var_0.b)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1456f, var_0.a, -1769f), vec3<f32>(222f, 658f, var_0.e.x)))))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(floor(var_0.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + var_0.b))), _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(sign(364f)), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-222f, var_0.b, -445f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.e.x, 489f) - vec3<f32>(var_0.b, 771f, 159f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.e.x, -146f, var_0.b)))), vec3<bool>(u_input.c.x == 8163u, !arg_1, true)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.x, var_1.x))))), firstLeadingBit(var_0.c), -2147483647i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yy)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(reverseBits(var_0.c), var_1.x, -15478i, var_0)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-697f, 389f)) + _wgslsmith_f_op_f32(f32(-1f) * -2023f))), var_1.x)), 1795f, var_2.c, 1i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_2.e, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.b, var_0.a), var_1.zz))), _wgslsmith_f_op_vec2_f32(step(var_0.e, vec2<f32>(var_0.a, -1316f))))))));
    var var_4 = !vec2<bool>(arg_0, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(f32(-1f) * -1066f));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<f32> {
    global0 = array<vec3<bool>, 12>();
    var var_0 = arg_3.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(any(vec4<bool>(false, false, false, arg_3.x)), !(arg_3.x && true), _wgslsmith_sub_u32(arg_0.x, _wgslsmith_sub_u32(4294967295u, u_input.b.x)), _wgslsmith_sub_vec2_i32(select(vec2<i32>(27689i, arg_2.d), vec2<i32>(arg_1, -9281i), arg_3.x), abs(vec2<i32>(0i, arg_2.d))))) - _wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(-410f * _wgslsmith_f_op_f32(f32(-1f) * -814f)))), 1160f, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(abs(arg_2.c)), vec2<u32>(u_input.b.x | 21652u, _wgslsmith_mult_u32(48425u, 40513u)), abs(~vec2<u32>(4294967295u, arg_0.x))), _wgslsmith_sub_vec2_u32(~vec2<u32>(49087u, arg_2.c.x), _wgslsmith_mod_vec2_u32(max(arg_2.c, vec2<u32>(arg_0.x, arg_0.x)), firstTrailingBit(u_input.b)))), abs(arg_1) ^ ~(arg_2.d & 2147483647i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_2.e)) * _wgslsmith_f_op_vec2_f32(select(arg_2.e, vec2<f32>(-1000f, arg_2.b), vec2<bool>(false, arg_3.x)))) + vec2<f32>(_wgslsmith_div_f32(arg_2.b, arg_2.a), _wgslsmith_f_op_f32(trunc(arg_2.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_2.e)))));
    let var_2 = var_1;
    global0 = array<vec3<bool>, 12>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.e)) - arg_2.e);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(458f, arg_0.x))) + arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1596f), u_input.c.xw, countOneBits(-_wgslsmith_mod_i32(1i, -9647i) | arg_1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1679f)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-2256f * -1884f), _wgslsmith_f_op_f32(sign(arg_1.e.x)), _wgslsmith_div_f32(1003f, arg_0.x));
    var var_2 = vec2<u32>(_wgslsmith_mod_u32(1u, firstTrailingBit(0u)), _wgslsmith_mod_u32(1u, var_0.c.x));
    return !vec4<bool>(true, !any(select(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)], true)), -564f == arg_1.b, false != any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 79208i) << (u_input.a.yy % vec2<u32>(32u)), countOneBits(vec2<i32>(-2147483647i, 26677i)))) << (~(~u_input.b.x) % 32u);
    var var_1 = 141f;
    var var_2 = any(vec4<bool>(true, true, any(func_5(_wgslsmith_f_op_vec2_f32(func_1(vec3<u32>(7370u, u_input.b.x, 39438u), -2147483647i, Struct_1(659f, 1000f, vec2<u32>(4294967295u, u_input.a.x), 1i, vec2<f32>(644f, -2135f)), vec4<bool>(false, false, false, true))), Struct_1(-1749f, 1620f, vec2<u32>(u_input.b.x, u_input.b.x), 30274i, vec2<f32>(-541f, 1108f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, 210f)))), true));
    var var_3 = Struct_1(1f, -217f, u_input.b, 1i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(621f, 539f) + vec2<f32>(-1089f, 1191f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(459f, -804f)))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, 157f, -481f) + vec3<f32>(var_3.b, 517f, 495f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-335f, 477f, var_3.a), vec3<f32>(var_3.a, 1175f, 543f), true)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_3.e.x, -296f)))), vec3<f32>(_wgslsmith_f_op_f32(765f - var_3.a), _wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(-var_3.a)))));
    var var_5 = -(i32(-1i) * -8721i);
    let var_6 = 1000f;
    var var_7 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(var_3.b + -1585f), firstTrailingBit(min(reverseBits(_wgslsmith_clamp_vec2_u32(u_input.a.xw, vec2<u32>(1u, 0u), u_input.b)), vec2<u32>(68538u, var_3.c.x) << (vec2<u32>(u_input.c.x, var_3.c.x) % vec2<u32>(32u)))), -11048i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1000f + var_4.x), _wgslsmith_f_op_f32(-2122f + var_4.x)), vec2<f32>(_wgslsmith_div_f32(var_4.x, 135f), -1000f), select(vec2<bool>(true, true), vec2<bool>(true, true), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(182f - 261f))), _wgslsmith_f_op_f32(max(var_6, var_7.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f - var_4.x)), -341f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_6, 272f)))), var_4.x), firstLeadingBit(firstTrailingBit(min(~u_input.b, u_input.c.xy))));
}

