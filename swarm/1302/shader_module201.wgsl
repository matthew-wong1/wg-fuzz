struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-608f, 1000f, 1000f);

var<private> global1: f32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> vec3<f32> {
    var var_0 = min(abs(abs(vec2<u32>(15495u, u_input.b) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.d.x, arg_0.d.x), vec2<u32>(arg_0.d.x, 1u))), vec2<u32>(reverseBits(~(~4294967295u)), ~(4294967295u ^ _wgslsmith_sub_u32(u_input.b, 55725u))));
    var var_1 = Struct_1(!(!select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), any(vec3<bool>(true, false, true)))), true, ~(~var_0.x));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.a.c.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 1000f)) * global0.x) - 2136f), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-716f, global0.x, 515f, global0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1967f, 1214f, arg_0.a.c.c.x)))))), arg_0.a.c.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global0.yz)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_0.a.c.b.wx * arg_0.b), _wgslsmith_f_op_vec2_f32(arg_0.b * arg_0.a.c.b.wz)))) * _wgslsmith_f_op_vec2_f32(arg_0.a.c.d + global0.zx)));
    let var_3 = arg_0;
    var var_4 = vec2<bool>(1i > arg_0.a.b.x, var_1.a.x);
    return var_2.c.wzz;
}

fn func_2() -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(15317u, vec3<i32>(u_input.e.x, -1i, -497i), Struct_2(global0.x, vec4<f32>(437f, global0.x, -224f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, -1104f), vec2<f32>(global0.x, global0.x))), _wgslsmith_div_vec2_f32(vec2<f32>(640f, global0.x), _wgslsmith_f_op_vec2_f32(-global0.zx)), _wgslsmith_div_i32(u_input.e.x, ~2147483647i), vec3<u32>(u_input.d << (u_input.d % 32u), 1u, ~u_input.d)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(678f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1260f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1266f * -2069f))))));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1229f - _wgslsmith_f_op_f32(-263f + -1366f)), _wgslsmith_f_op_f32(-125f - _wgslsmith_f_op_f32(1114f - _wgslsmith_f_op_f32(975f - global0.x))), false));
    let var_0 = vec2<bool>(false, !((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, u_input.d)) | 4294967295u) < select(59097u, ~1u, false)));
    let var_1 = Struct_3(70373u, ~vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, -2147483647i), vec3<i32>(1i, -9796i, -36276i)), _wgslsmith_sub_i32(u_input.e.x, 11957i), u_input.e.x), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(u_input.c.x, vec3<i32>(u_input.e.x, 30654i, u_input.e.x), Struct_2(1422f, vec4<f32>(global0.x, -1278f, global0.x, -2248f), vec4<f32>(global0.x, global0.x, 1000f, -778f), global0.zz)), vec2<f32>(-1538f, global0.x), u_input.e.x, vec3<u32>(u_input.b, 6568u, 1662u)))).x), global0.x), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(max(-701f, global0.x)))), _wgslsmith_f_op_f32(trunc(-869f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(1u, vec3<i32>(-43429i, u_input.e.x, -8114i), Struct_2(-649f, vec4<f32>(global0.x, 116f, global0.x, global0.x), vec4<f32>(562f, -2688f, 810f, -379f), vec2<f32>(1048f, global0.x))), global0.zy, u_input.e.x, vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u)))).x, -406f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(2805u, vec3<i32>(u_input.e.x, 0i, u_input.e.x), Struct_2(global0.x, vec4<f32>(221f, -1674f, global0.x, global0.x), vec4<f32>(global0.x, 633f, global0.x, global0.x), vec2<f32>(global0.x, global0.x))), global0.xy, -2147483647i, vec3<u32>(u_input.c.x, u_input.b, 4834u)))).x, _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(u_input.a, vec3<i32>(u_input.e.x, -30454i, u_input.e.x), Struct_2(-359f, vec4<f32>(-1390f, 2066f, global0.x, global0.x), vec4<f32>(global0.x, -330f, global0.x, 422f), vec2<f32>(global0.x, -763f))), vec2<f32>(-788f, 704f), 8871i, vec3<u32>(u_input.b, 4294967295u, u_input.d)))).x, 510f))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x + 577f))), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(u_input.d, vec3<i32>(-2147483647i, u_input.e.x, -27093i), Struct_2(global0.x, vec4<f32>(1357f, global0.x, global0.x, -1295f), vec4<f32>(943f, global0.x, global0.x, -785f), vec2<f32>(776f, global0.x))), global0.zz, u_input.e.x, vec3<u32>(31995u, u_input.d, 1u)))).x)));
    var var_2 = Struct_1(vec2<bool>(_wgslsmith_mod_i32(29482i, u_input.e.x) <= -(~u_input.e.x), var_1.a == reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 19115u, u_input.d), vec3<u32>(27588u, u_input.c.x, u_input.b)))), all(!vec3<bool>(true, global0.x <= var_1.c.b.x, all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), u_input.b);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-789f, _wgslsmith_f_op_f32(736f * -845f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-874f, var_1.c.c.x) - vec2<f32>(global0.x, var_1.c.b.x)) - global0.yz)));
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2()), global0.zz, true)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(262f - var_0.x), true)), -1948f)) + _wgslsmith_f_op_f32(step(var_0.x, -1296f))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, -248f, 411f))) - vec3<f32>(464f, var_0.x, 1000f)))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(max(865f, _wgslsmith_f_op_f32(trunc(-354f)))), -814f, -765f);
    let var_2 = Struct_1(vec2<bool>(true, true), any(!vec3<bool>(select(true, false, false), false, true)), _wgslsmith_clamp_u32(countOneBits(u_input.c.x), 1u, u_input.d));
    return u_input.c;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec2<u32>, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = firstTrailingBit(~(firstTrailingBit(-vec4<i32>(61157i, u_input.e.x, u_input.e.x, u_input.e.x)) & ~vec4<i32>(-1268i, u_input.e.x, 22181i, u_input.e.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(arg_3.zzw)))));
    var var_1 = Struct_1(select(!vec2<bool>(any(vec2<bool>(false, false)), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true)), true, func_1().x);
    global0 = arg_3.yyx;
    var_1 = Struct_1(var_1.a, select(true, false, var_1.a.x), ~71371u);
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-1849f * -1424f)) - global0.x), _wgslsmith_f_op_f32(ceil(-731f)))), _wgslsmith_f_op_vec4_f32(trunc(arg_3)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, global0.x, -2445f, arg_3.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3 + vec4<f32>(global0.x, -1000f, arg_3.x, 1124f)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, global0.x)), global0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(11129u, vec3<i32>(0i, u_input.e.x, var_0.x), Struct_2(arg_3.x, arg_3, vec4<f32>(global0.x, 262f, 177f, global0.x), vec2<f32>(1547f, global0.x))), vec2<f32>(arg_3.x, 280f), var_0.x, vec3<u32>(arg_0, 19330u, arg_1)))).x, _wgslsmith_f_op_f32(global0.x + arg_3.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0.x, -984f, true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_3.x))))), all(!vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x)) & ((var_0.x | var_0.x) == abs(358i)))), _wgslsmith_f_op_vec2_f32(global0.xz * arg_3.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(4294967295u, 6543u), reverseBits(23398u), 4294967295u >> (u_input.b % 32u)), firstTrailingBit(vec3<u32>(u_input.d, u_input.b, u_input.a))), countOneBits(vec3<i32>(i32(-1i) * -2147483647i, u_input.e.x | 29518i, ~(-10281i))), func_4(countOneBits(u_input.a) ^ reverseBits(53273u), u_input.b, ~func_1(), vec4<f32>(-318f, -458f, _wgslsmith_div_f32(1000f, -125f), global0.x))), _wgslsmith_f_op_vec2_f32(-global0.zy), -(~(-1i)), ~abs(vec3<u32>(~27297u, select(1u, u_input.a, true), 4294967295u)));
    var var_1 = u_input.e.x;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_2()).x, global0.x, all(vec3<bool>(true, true, true)))) * -1023f);
    global0 = vec3<f32>(1685f, -182f, var_0.b.x);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.c.c.xxy * vec3<f32>(-352f, var_0.b.x, 256f)) + _wgslsmith_f_op_vec3_f32(var_0.a.c.b.xzy + vec3<f32>(-1000f, -1324f, 1000f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.a.c.c.wzw * var_0.a.c.b.yyz)))), var_0.a.c.b.zzz)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(1011f + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-837f))), -123f);
    global0 = var_0.a.c.c.xyy;
    let var_2 = reverseBits(~vec4<u32>(_wgslsmith_sub_u32(~u_input.a, min(u_input.b, var_0.a.a)), func_1().x, var_0.d.x, u_input.c.x));
    var_1 = u_input.e.x >> (~_wgslsmith_add_u32(~firstTrailingBit(var_2.x), _wgslsmith_sub_u32(reverseBits(var_2.x), var_2.x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(91384u, _wgslsmith_sub_u32(~(~u_input.d), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 4294967295u, var_2.x, u_input.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 43743u, 4294967295u, 0u), var_2)))), -vec2<i32>(~_wgslsmith_mod_i32(85875i, var_0.a.b.x), 51163i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f) + 219f));
}

