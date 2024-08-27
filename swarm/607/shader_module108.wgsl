struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = -670f;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, 1605f), vec2<f32>(-1246f, -469f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))))));
    var var_1 = Struct_4(u_input.a, Struct_3(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(73964u, 1u, 0u), u_input.d)), abs(vec2<u32>(4294967295u, u_input.d.x)))), -27078i, Struct_2(vec2<bool>(true, true), ~vec4<u32>(4009u, abs(u_input.c.x), u_input.c.x, ~u_input.d.x), Struct_1(true, vec3<bool>(true, any(vec2<bool>(false, false)), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1510f, global0.x, -117f, 755f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, arg_0)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.c.x, 13743u))))), Struct_1(!(45943i < -u_input.a.x), vec3<bool>(all(vec2<bool>(false, false)), !select(true, true, false), ~u_input.c.x != reverseBits(u_input.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1402f, 501f, arg_0, -512f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, arg_0, arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))))), 0u));
    var var_2 = ~((_wgslsmith_mult_u32(11474u, firstTrailingBit(63904u)) | ~(~var_1.d.b.x)) ^ (firstLeadingBit(u_input.d.x) ^ ~(~u_input.c.x)));
    var var_3 = vec3<bool>(false, false || (_wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(global0.x, -165f)) == -1189f), any(vec4<bool>(true, !var_1.e.b.x, false, !(!var_1.e.a))));
    return any(vec4<bool>(any(select(var_3.yy, var_3.yy, var_3.x)), var_1.e.b.x, var_3.x, all(select(!vec4<bool>(false, false, var_3.x, var_1.e.b.x), !vec4<bool>(var_3.x, var_1.d.a.x, var_1.e.b.x, var_3.x), true))));
}

fn func_2() -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-369f, -186f)) - vec2<f32>(global0.x, global0.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1145f) + vec2<f32>(global0.x, global0.x)), vec2<f32>(1042f, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, 140f))) + vec2<f32>(_wgslsmith_div_f32(280f, 387f), _wgslsmith_div_f32(442f, global0.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(890f, global0.x) * vec2<f32>(-376f, 1371f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1648f, global0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), vec2<f32>(-1000f, 586f), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - 879f)))))));
    var var_0 = Struct_1(true, vec3<bool>(!(!any(vec4<bool>(false, true, true, false))), true, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), 1767f, _wgslsmith_f_op_f32(global0.x - -1841f), -842f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -996f), 1926f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(1933f * global0.x)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1197f, -126f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, global0.x), vec2<f32>(global0.x, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -145f)), u_input.a.x != 2147483647i))))), u_input.c.x);
    let var_1 = var_0.b.x;
    var var_2 = select(vec3<bool>(!(6804u >= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 5912u, u_input.c.x, 0u), vec4<u32>(u_input.c.x, 221u, 57114u, var_0.e))), var_0.b.x, func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + var_0.d.x), var_0.d.x)))), vec3<bool>(var_0.b.x, !(!any(var_0.b.yz)), true), var_0.a);
    return var_2.yz;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = u_input.a.x;
    let var_1 = Struct_2(func_2(), vec4<u32>(39205u, abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, arg_1.e), arg_1.e)), arg_1.e, countOneBits(_wgslsmith_sub_u32(u_input.d.x >> (6649u % 32u), 78248u))), Struct_1(-(0i << (arg_1.e % 32u)) < (var_0 & u_input.b.x), arg_1.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1000f - -1470f), _wgslsmith_f_op_f32(-arg_1.c.x), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1016f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1.c)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d.x, -446f, arg_1.d.x, -819f), arg_1.c, arg_1.a))))), vec2<f32>(_wgslsmith_f_op_f32(-1353f + arg_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1420f))), max(4294967295u, _wgslsmith_add_u32(arg_1.e, 7862u))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.c.c.yy)) + vec2<f32>(525f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(701f + arg_1.c.x), -1318f)) - 251f)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_1.c.zw * var_1.c.c.zy))));
    var var_2 = Struct_2(arg_1.b.xy, vec4<u32>(_wgslsmith_mod_u32(48935u, _wgslsmith_sub_u32(~65574u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_1.e), arg_0.yx))), _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(7031u, 4294967295u, 1u)), ~1u | ~(~arg_0.x), ~(~var_1.c.e)), Struct_1(arg_1.b.x, var_1.c.b, arg_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, global0.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(175f, global0.x), arg_1.d))), arg_0.x << (firstTrailingBit(var_1.b.x) % 32u)));
    return _wgslsmith_f_op_vec2_f32(var_2.c.d + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_2.c.c.zz, arg_1.c.yz, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1(min(abs(vec4<u32>(4294967295u, u_input.c.x, 40225u, u_input.d.x) << (vec4<u32>(1u, 51416u, 4294967295u, 4294967295u) % vec4<u32>(32u))), ~abs(vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, u_input.d.x))), Struct_1(!all(vec3<bool>(false, true, false)), vec3<bool>(true, false, true), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1454f, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-518f, global0.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -361f), vec2<f32>(-756f, global0.x))), ~u_input.d.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-403f)))))) + vec2<f32>(_wgslsmith_f_op_f32(-901f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + global0.x) * -269f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1579f), _wgslsmith_div_f32(-1000f, 2085f)))))));
    var var_1 = Struct_3(~(~vec2<u32>(u_input.c.x, ~88887u)));
    var var_2 = Struct_2(vec2<bool>(false, true || !func_2().x), firstLeadingBit(_wgslsmith_sub_vec4_u32(abs(~vec4<u32>(0u, var_1.a.x, 4955u, 1u)), ~min(vec4<u32>(42312u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(34870u, 0u, var_1.a.x, 1u)))), Struct_1(true, select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), vec3<bool>(true, all(vec3<bool>(true, false, true)), any(vec2<bool>(false, true))), vec3<bool>(true, false, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.x, -2211f, -1640f)) + vec4<f32>(1555f, global0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_0.x, global0.x, 1221f)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(305f, _wgslsmith_f_op_f32(floor(var_0.x))))), 84727u));
    var_2 = Struct_2(vec2<bool>(all(vec2<bool>(!var_2.a.x, var_2.c.a)), var_2.c.e > 24388u), vec4<u32>(var_1.a.x & abs(1u), abs(var_2.c.e), 32965u, var_1.a.x | ~select(var_1.a.x, u_input.c.x, false)), Struct_1(false, var_2.c.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_2.c.c)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1055f, 1113f, var_0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.c.c) * var_2.c.c))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.c.c.wz), vec2<f32>(1333f, var_2.c.c.x), select(vec2<bool>(false, var_2.c.a), var_2.c.b.xx, var_2.a.x))))), _wgslsmith_mult_u32(select(u_input.c.x, var_2.c.e, false) & ~106774u, countOneBits(var_1.a.x))));
    let var_3 = Struct_4(u_input.a, Struct_3(u_input.c.yx), u_input.e, Struct_2(select(vec2<bool>(true, u_input.c.x > 57292u), select(!vec2<bool>(true, var_2.c.a), select(var_2.a, var_2.a, var_2.c.b.x), var_2.c.b.x), func_3(_wgslsmith_f_op_f32(round(-691f)))), countOneBits(select(var_2.b, var_2.b, var_2.c.a) >> (min(vec4<u32>(u_input.d.x, 1u, 604u, var_2.c.e), vec4<u32>(var_2.c.e, 59571u, 0u, 0u)) % vec4<u32>(32u))), var_2.c), var_2.c);
    let var_4 = reverseBits(~(vec4<i32>(~var_3.c, u_input.a.x, u_input.b.x >> (var_3.d.c.e % 32u), 1i) ^ _wgslsmith_clamp_vec4_i32(-vec4<i32>(-24353i, var_3.c, var_3.a.x, var_3.a.x), abs(vec4<i32>(-2147483647i, 0i, var_3.c, var_3.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.e, -43084i, var_3.c, var_3.c), u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, vec3<f32>(-453f, global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * var_0.x), _wgslsmith_f_op_f32(-var_2.c.d.x))))), _wgslsmith_f_op_f32(trunc(var_2.c.d.x)), u_input.b.x ^ ~1i, _wgslsmith_div_f32(var_2.c.c.x, 116f));
}

