struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = ~(-(~_wgslsmith_div_i32(~(-2147483647i), u_input.b)));
    var var_1 = Struct_1(firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0, var_0), vec3<i32>(var_0, u_input.c.x, var_0) ^ vec3<i32>(0i, 2147483647i, u_input.c.x))), u_input.a.x, vec2<bool>(true, true));
    var_1 = Struct_1(_wgslsmith_dot_vec4_i32(u_input.c, -_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, -13318i), vec4<i32>(-6758i, u_input.b, 3917i, var_0))), _wgslsmith_dot_vec2_u32(countOneBits(max(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b, var_1.b), u_input.a.wz), vec2<u32>(121543u, 4294967295u))), ~vec2<u32>(~var_1.b, ~37332u)), !vec2<bool>(~var_0 > _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), u_input.c.xy), true));
    var_1 = Struct_1(-2147483647i, u_input.a.x, !vec2<bool>(var_1.c.x, (15501i << (u_input.e % 32u)) <= abs(1i)));
    var_1 = Struct_1(-3727i, var_1.b << (select(0u, u_input.e >> (9905u % 32u), !any(vec2<bool>(true, var_1.c.x))) % 32u), vec2<bool>(!all(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)) || var_1.c.x, var_1.c.x));
    return firstTrailingBit(~min(select(~var_1.b, ~4294967295u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 16396u, 47391u), u_input.a.xxw << (vec3<u32>(131164u, 29991u, 0u) % vec3<u32>(32u)))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(8318i, ~(~arg_0.a.b), vec2<bool>(!(!arg_2.c.x), true)), _wgslsmith_mult_vec3_u32(vec3<u32>(func_3(), ~arg_0.a.b >> (min(1u, 1u) % 32u), arg_2.b), vec3<u32>(_wgslsmith_sub_u32(56888u | arg_3, 76741u), 57906u, arg_3)), arg_0.c, _wgslsmith_f_op_vec2_f32(-arg_0.d));
    var var_1 = arg_0.c;
    let var_2 = var_0;
    var_1 = !var_2.a.c.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-446f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d.x, -1264f, false)), _wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x)), 171f)))) - _wgslsmith_f_op_f32(floor(1190f)));
    return vec2<f32>(-618f, var_2.d.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = ~vec3<u32>(arg_1.b, 45718u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b, 0u, u_input.a.x), ~vec3<u32>(4294967295u, arg_1.b, 0u)), 24369u));
    var_0 = select(firstTrailingBit(u_input.a.yxz >> (~vec3<u32>(arg_1.b, 0u, 20122u) % vec3<u32>(32u))), vec3<u32>(49514u, abs(~arg_1.b), 0u), select(vec3<bool>(true, true, !arg_1.c.x), vec3<bool>(true, true, true), arg_1.c.x)) | ~_wgslsmith_add_vec3_u32(select(u_input.a.xyw, firstLeadingBit(u_input.a.yww), arg_2 != arg_2), _wgslsmith_clamp_vec3_u32(u_input.a.yxy, ~vec3<u32>(var_0.x, 21212u, 25840u), ~vec3<u32>(var_0.x, var_0.x, arg_1.b)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.x) - _wgslsmith_f_op_f32(ceil(arg_0.x)))) + arg_3.x), _wgslsmith_f_op_f32(-arg_0.x));
    var_1 = arg_3.x;
    var_0 = _wgslsmith_div_vec3_u32(u_input.a.xwy, vec3<u32>(arg_1.b, ~1u, arg_1.b));
    return Struct_2(arg_1, vec3<u32>(1u, 4294967295u, ~(~(arg_1.b & 34934u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1736f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-793f, arg_0.x, true)))) == _wgslsmith_div_f32(378f, arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -869f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-702f, _wgslsmith_f_op_f32(min(arg_3.x, arg_3.x))), -1000f))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(Struct_1(u_input.b, 44768u, vec2<bool>(true, false)), u_input.a.yzy, false, vec2<f32>(-1504f, -1990f)), -1577f, Struct_1(-746i, u_input.a.x, vec2<bool>(true, true)), 9929u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2046f, -900f) - vec2<f32>(1514f, -661f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-270f, -367f) + vec2<f32>(-2010f, 186f)))), Struct_1(2147483647i, 12999u, vec2<bool>(false, select(all(vec3<bool>(true, true, false)), all(vec4<bool>(false, true, false, false)), true))), 44688i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-650f, -575f, 891f)))), vec3<f32>(-1324f, _wgslsmith_f_op_f32(-985f - 1000f), _wgslsmith_f_op_f32(floor(-1218f)))))));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 113f))) * var_0.d)), Struct_1(-u_input.b, ~var_0.b.x, var_0.a.c), u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1342f, var_0.d.x, 660f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<f32>(-458f, -475f, var_0.d.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1415f, var_0.d.x, var_0.d.x), vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)))))).a;
    var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(floor(-1000f)), -1004f), Struct_1(abs(-1i ^ var_0.a.a), var_0.b.x, func_4(vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_0.d.x - var_0.d.x)), func_4(_wgslsmith_f_op_vec2_f32(sign(var_0.d)), func_4(vec2<f32>(-350f, -677f), Struct_1(u_input.c.x, 0u, var_0.a.c), var_1.a, vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)).a, _wgslsmith_dot_vec4_i32(vec4<i32>(5000i, 1i, -19935i, u_input.c.x), u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, -1578f))).a, var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-680f, 393f, var_0.d.x) - vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, 655f, 548f)))).a.c), _wgslsmith_add_i32(1i, var_1.a), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 563f, var_0.d.x) - vec3<f32>(var_0.d.x, var_0.d.x, -473f)), _wgslsmith_div_vec3_f32(vec3<f32>(605f, -1063f, var_0.d.x), vec3<f32>(var_0.d.x, 254f, var_0.d.x)), select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(var_0.a.c.x, true, true), var_0.c))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.d.x, 2034f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d.x, 488f, 303f), vec3<f32>(var_0.d.x, var_0.d.x, var_0.d.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-711f, _wgslsmith_f_op_f32(min(-111f, var_0.d.x)), _wgslsmith_f_op_f32(var_0.d.x - -155f)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = func_4(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-745f, -463f), _wgslsmith_f_op_f32(step(1261f, -794f)))), Struct_1(-1i, 1u, !var_0.c), firstTrailingBit(max(8755i, 35249i)) | 2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(2305f, -1211f, _wgslsmith_f_op_f32(1526f + 260f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(108f, -2123f, -716f)))))).d, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1243f, 1031f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1300f, -310f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1247f, 226f), vec2<f32>(1000f, -1499f))), vec2<f32>(-194f, 179f))), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 877f)), func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(263f, -1497f))), Struct_1(-68379i, 38467u, var_0.c), u_input.c.x, vec3<f32>(-518f, 1000f, 1072f)).a, var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-647f, 1156f, 122f), vec3<f32>(-650f, -1179f, 1000f))) * _wgslsmith_div_vec3_f32(vec3<f32>(-154f, 1000f, -745f), vec3<f32>(-991f, 232f, 1000f)))).a, ~(~u_input.c.x) ^ var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1307f, -1081f)), 157f, -745f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-733f, 1025f, -763f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, -264f, -2917f))))).a, max(var_0.a, 0i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(vec2<f32>(-1467f, -395f), Struct_1(u_input.c.x, 60898u, vec2<bool>(var_0.c.x, var_0.c.x)), u_input.c.x, vec3<f32>(-161f, 1157f, 2588f)).d.x) + _wgslsmith_f_op_f32(abs(-389f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f)), _wgslsmith_div_f32(531f, -120f)));
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.d - vec2<f32>(-2257f, 1101f))))))), Struct_1(var_1.a.a, ~var_1.b.x, var_0.c), select(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 43006i), u_input.c.wxz), -24088i), ~(var_1.a.a >> (0u % 32u)), true) >> (u_input.e % 32u), vec3<f32>(-292f, 464f, var_1.d.x));
    let var_3 = !(!select(func_3() <= min(17266u, u_input.a.x), true, var_1.c));
    var_1 = var_2;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(step(var_1.d.x, var_1.d.x))), var_1.d.x, all(!vec4<bool>(var_3, var_3, var_3, false))))));
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1073f * -1720f)) - var_4), -1261f, 185f, -1000f);
    var var_6 = var_2.a;
    var var_7 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_6.b, u_input.c, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(var_2.b, u_input.a.wxw, reverseBits(~vec3<u32>(var_0.b, 10473u, 1u))), ~u_input.a.zzw));
}

