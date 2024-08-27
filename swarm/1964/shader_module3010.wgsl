struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = -12709i;
    let var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1291f * -349f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1767f, -1632f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(826f, -1482f, true)) + _wgslsmith_div_f32(-274f, 1804f)), _wgslsmith_f_op_f32(ceil(-332f))), any(select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec3<bool>(true, false, false)))), vec2<bool>(true, false), ~vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 17272u), u_input.a.x, max(0u, u_input.b))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(false, false, false)), vec3<bool>(any(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, false, false)), any(vec4<bool>(true, true, false, false))), true || all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-119f, -956f, 1000f, -1886f) * vec4<f32>(1f, 1f, 1f, 1f))), false, !select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), -1i > var_0), ~(~vec3<u32>(u_input.b, 0u, u_input.a.x))));
    let var_2 = var_1.c;
    let var_3 = var_2.b;
    return 1331f;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = -1627f;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, 1015f)) - var_0)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), var_0, true))) + var_0);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f - _wgslsmith_div_f32(161f, 1581f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(10640i)) - _wgslsmith_f_op_f32(trunc(-384f))) - _wgslsmith_f_op_f32(func_3()))));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-107f, -1383f, -240f, -672f), vec4<f32>(934f, 723f, 457f, -744f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1900f, 1000f, -579f, 683f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1529f, -160f, 368f, 1337f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 466f, 482f, -974f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(617f, -1322f, 1868f, -1640f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(806f, 200f, 141f, 1516f))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -278f), 1707f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-889f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-427f)) * _wgslsmith_f_op_f32(abs(490f))))), -841f)));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(981f, var_1.x))), var_1.x), false, !vec2<bool>(!all(vec3<bool>(true, true, false)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true))), (_wgslsmith_div_vec3_u32(u_input.a, vec3<u32>(64484u, 67242u, u_input.b)) << (vec3<u32>(69792u >> (u_input.b % 32u), 1u, u_input.b) % vec3<u32>(32u))) >> (max(_wgslsmith_clamp_vec3_u32(u_input.a, ~u_input.a, vec3<u32>(0u, u_input.a.x, u_input.b) ^ vec3<u32>(4294967295u, 4294967295u, 5543u)), vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.b), 4294967295u, ~107808u)) % vec3<u32>(32u)));
    var var_3 = vec4<bool>(!any(vec3<bool>(var_2.b, var_2.c.x, var_2.b)) & true, true, false, any(vec4<bool>(true, all(vec3<bool>(var_2.b, var_2.b, false)), any(!vec3<bool>(false, var_2.c.x, true)), any(var_2.c))));
    var var_4 = ~(~(~countOneBits(u_input.a) ^ vec3<u32>(abs(u_input.b), 15575u, ~1u)));
    return Struct_2(var_2, var_3.yyx, var_2);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: f32) -> vec2<bool> {
    var var_0 = arg_1.c;
    let var_1 = Struct_2(func_1().c, !func_1().b, func_1().c);
    var_0 = var_1.a;
    var_0 = func_1().c;
    var_0 = var_1.a;
    return !(!arg_1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-201f - -127f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-454f + 1796f) + _wgslsmith_f_op_f32(max(-632f, -1556f))), -793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1163f, 1621f)) + _wgslsmith_f_op_f32(ceil(-386f)))), vec4<f32>(_wgslsmith_f_op_f32(-291f + _wgslsmith_f_op_f32(-1000f * -360f)), _wgslsmith_f_op_f32(-1150f * -1233f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), 1f)), any(vec4<bool>(true, true, true, true)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), func_4(true, func_1(), 1f, 476f), func_4(true, Struct_2(Struct_1(vec4<f32>(-620f, -479f, -1034f, 557f), false, vec2<bool>(true, true), vec3<u32>(4294967295u, u_input.a.x, u_input.b)), vec3<bool>(true, false, true), Struct_1(vec4<f32>(-130f, -497f, 1000f, -137f), true, vec2<bool>(false, true), vec3<u32>(1u, 1823u, u_input.a.x))), _wgslsmith_f_op_f32(-308f + 287f), _wgslsmith_f_op_f32(1710f - 1494f))), func_4(false, func_1(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1134f * 412f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1445f, -1547f, true)), -2857f)))), vec3<u32>(u_input.a.x, 69818u << (u_input.b % 32u), _wgslsmith_mod_u32(u_input.a.x, ~u_input.a.x)) << (_wgslsmith_mod_vec3_u32(~u_input.a, ~vec3<u32>(u_input.a.x, u_input.b, u_input.a.x) >> (_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(1u, 0u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = ~1i;
    var var_2 = func_1().c;
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) - _wgslsmith_f_op_vec4_f32(-var_0.a)) - func_1().c.a))), true, func_4(var_1 > var_1, func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.x, _wgslsmith_f_op_f32(round(-468f))))), var_2.a.x), reverseBits(var_0.d) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.d.x, 13307u, u_input.a.x), vec3<u32>(var_2.d.x, var_0.d.x, 62499u)) & max(~vec3<u32>(var_0.d.x, u_input.b, var_2.d.x), ~vec3<u32>(u_input.a.x, u_input.b, 10618u))) % vec3<u32>(32u)));
    let var_3 = 881f;
    let var_4 = -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(var_1), ~var_1), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 2147483647i) & vec2<i32>(var_1, -1i), vec2<i32>(-2147483647i, 0i) << (vec2<u32>(var_2.d.x, var_2.d.x) % vec2<u32>(32u)))), abs(~(-1i) & -var_1), var_1, ~_wgslsmith_sub_i32(22633i ^ var_1, var_1));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d, _wgslsmith_mult_i32(var_4.x, countOneBits((i32(-1i) * -1i) ^ select(-66136i, var_1, var_2.b))), var_0.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_3)), _wgslsmith_f_op_f32(-var_3), var_3, _wgslsmith_f_op_f32(var_0.a.x + -1192f)))), -var_4.x);
}

