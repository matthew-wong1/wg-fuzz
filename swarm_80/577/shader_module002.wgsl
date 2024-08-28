struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    var var_0 = false;
    var_0 = true;
    var var_1 = Struct_2(Struct_1(!select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false), all(vec4<bool>(true, true, false, true))), true, !(!any(vec4<bool>(false, false, false, false))), vec2<f32>(1f, 284f)), -295f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1345f, _wgslsmith_f_op_f32(trunc(789f)))), -1641f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    let var_2 = _wgslsmith_clamp_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a ^ u_input.a, u_input.a << (67890u % 32u), u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i)), max(vec4<i32>(-25651i, 33554i, u_input.a, 12998i), vec4<i32>(-19203i, 19944i, u_input.a, u_input.a) << (vec4<u32>(4294967295u, 70666u, 1u, 74565u) % vec4<u32>(32u)))), -(abs(vec4<i32>(30746i, u_input.a, 1i, 1i)) | vec4<i32>(u_input.a, -10296i, -1i, -1i)) >> (reverseBits(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(10242u, 10991u, 6399u, 16200u), vec4<bool>(var_1.a.b, var_1.a.c, var_1.a.a.x, var_1.a.a.x))) % vec4<u32>(32u)), ~(min(select(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, 6856i, u_input.a, u_input.a), true), vec4<i32>(u_input.a, u_input.a, -19759i, -1i)) & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-22188i, u_input.a)), _wgslsmith_mod_i32(2147483647i, u_input.a), _wgslsmith_mult_i32(-8925i, 45982i), 0i)));
    var_0 = true;
    return ~(~firstTrailingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1260u, 4294967295u, 61096u, 0u)), vec4<u32>(1u, 12089u, 30596u, 4294967295u))));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = vec4<u32>(func_3(), max(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(55716u, reverseBits(1u), abs(28543u)), firstTrailingBit(2763u) ^ ~36801u), 1u), 42834u, func_3() ^ _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 34951u)), ~abs(vec2<u32>(55502u, 62627u))));
    let var_1 = arg_0.a.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1062f) - arg_0.d.x), -1000f)));
    return arg_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = ~(~select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 29269u, 13410u, 61242u), all(vec2<bool>(arg_2.a.a.x, arg_0.a.c))));
    let var_1 = firstTrailingBit(2147483647i) & u_input.a;
    let var_2 = func_2(Struct_2(arg_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1274f, _wgslsmith_f_op_f32(f32(-1f) * -127f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c, arg_0.c)) - _wgslsmith_f_op_f32(floor(-586f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_1.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0.d.x, -2229f)), _wgslsmith_f_op_f32(-arg_1.d.x)), 1u < var_0.x)), _wgslsmith_f_op_vec2_f32(select(arg_1.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-819f, arg_1.d.x) - arg_1.d), func_2(arg_2, -1086f).a))), -613f);
    let var_3 = Struct_2(func_2(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-873f * -1628f) + _wgslsmith_f_op_f32(-arg_2.b))), _wgslsmith_f_op_f32(-219f + var_2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(arg_1.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_2.d.x)))))));
    var var_4 = ~(~(~(~abs(2649i))));
    return arg_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    let var_0 = -2147483647i;
    let var_1 = func_4(Struct_2(func_2(Struct_2(arg_3, -745f, _wgslsmith_f_op_f32(-arg_3.d.x), vec2<f32>(arg_3.d.x, arg_3.d.x)), -134f), func_2(Struct_2(func_2(Struct_2(Struct_1(vec2<bool>(arg_3.c, arg_1.b), arg_1.c, true, arg_1.d), 207f, arg_1.d.x, vec2<f32>(arg_1.d.x, arg_1.d.x)), 567f), _wgslsmith_f_op_f32(select(arg_0.x, arg_3.d.x, false)), _wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))), arg_1.d.x).d.x, _wgslsmith_f_op_f32(abs(arg_1.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.d.x, _wgslsmith_f_op_f32(round(arg_0.x))) - vec2<f32>(-709f, arg_3.d.x))), arg_3, Struct_2(Struct_1(!func_2(Struct_2(arg_3, 948f, arg_3.d.x, arg_3.d), 448f).a, true, arg_3.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.x, 728f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, arg_1.c)))) - 1000f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.d.x, arg_0.x), arg_1.d)) * arg_3.d))));
    let var_2 = select(!(!vec3<bool>(arg_1.b, true, arg_3.a.x)), !select(!(!vec3<bool>(false, true, arg_3.a.x)), select(vec3<bool>(arg_3.b, arg_3.b, true), select(vec3<bool>(var_1.b, arg_1.c, var_1.b), vec3<bool>(false, true, false), false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(arg_1.b, arg_1.c, true), vec3<bool>(arg_3.c, var_1.a.x, false)), vec3<bool>(var_1.b, var_1.c, var_1.a.x), vec3<bool>(arg_1.c, true, var_1.a.x))), !vec3<bool>(true, any(vec3<bool>(false, arg_3.a.x, arg_3.a.x)) & false, _wgslsmith_f_op_f32(-arg_3.d.x) < _wgslsmith_f_op_f32(-2017f * arg_1.d.x)));
    var var_3 = Struct_2(arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, arg_0.x)) * _wgslsmith_f_op_f32(floor(452f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(716f, 932f)) - -384f)), var_1.d.x, !any(!vec4<bool>(arg_1.b, true, arg_1.b, true)))), _wgslsmith_f_op_f32(func_2(Struct_2(arg_1, _wgslsmith_f_op_f32(-704f + -579f), -121f, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.d.x, -827f), arg_0))), 1258f).d.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2579f * 426f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2331f, _wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.d), vec2<f32>(arg_3.d.x, arg_0.x)) + func_2(Struct_2(Struct_1(vec2<bool>(true, true), true, arg_3.b, vec2<f32>(var_1.d.x, -711f)), -942f, 1281f, vec2<f32>(arg_1.d.x, arg_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -435f)).d)));
    var_3 = Struct_2(var_3.a, _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -144f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_3.b, -362f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(323f, arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_3.d.x, var_1.d.x)), _wgslsmith_f_op_f32(max(716f, arg_3.d.x)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec2<bool>(!all(vec4<bool>(false, true, true, true)), all(vec4<bool>(true, true, true, true))), !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false)), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1611f, 798f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-391f, -603f))))), _wgslsmith_f_op_f32(trunc(819f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(216f - -448f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1795f + -424f))) - -1242f), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-268f, -1363f)) - _wgslsmith_f_op_f32(select(600f, _wgslsmith_f_op_f32(ceil(714f)), true)))));
    let var_1 = !(func_1(var_0.d, var_0.a, ~abs(vec4<u32>(4294967295u, 74332u, 41926u, 40966u)), var_0.a) | !(!any(vec4<bool>(false, var_0.a.c, false, false))));
    let var_2 = _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(15880u, ~1u)), ~vec2<u32>(select(4294967295u, 24574u, var_1), 1u), vec2<u32>(1u, 1u)) & vec2<u32>(1u, 1u);
    let var_3 = vec2<bool>(var_2.x != reverseBits(~var_2.x), var_1);
    var var_4 = any(select(var_0.a.a, !vec2<bool>(var_0.c != var_0.a.d.x, true), func_2(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c), -200f))).a));
    var var_5 = -183f;
    let var_6 = Struct_2(Struct_1(!func_4(var_0, func_4(var_0, Struct_1(vec2<bool>(var_3.x, false), false, var_1, var_0.a.d), Struct_2(Struct_1(var_0.a.a, var_3.x, var_1, vec2<f32>(var_0.a.d.x, -1077f)), -317f, 847f, vec2<f32>(var_0.b, var_0.d.x))), Struct_2(Struct_1(vec2<bool>(false, var_1), var_1, var_0.a.b, var_0.d), var_0.d.x, var_0.b, var_0.d)).a, func_2(var_0, 1918f).c, !var_0.a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, _wgslsmith_f_op_f32(floor(var_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), 1f))), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(var_0.a.d * var_0.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1475f, -816f))) - _wgslsmith_f_op_vec2_f32(-var_0.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.d.x, -1610f) - vec2<f32>(var_0.b, 422f)), var_0.d, var_3)) + var_0.a.d)));
    var_4 = all(select(select(vec3<bool>(true, false && var_6.a.c, !var_3.x), !(!vec3<bool>(true, var_6.a.b, var_0.a.b)), vec3<bool>(all(var_3), true, true)), select(!select(vec3<bool>(var_6.a.c, true, false), vec3<bool>(true, var_3.x, var_6.a.c), true), vec3<bool>(-410f > var_0.b, func_2(Struct_2(var_0.a, -954f, var_0.a.d.x, var_0.d), var_0.c).b, var_3.x), select(!vec3<bool>(var_3.x, var_1, false), !vec3<bool>(true, var_0.a.b, var_6.a.a.x), !vec3<bool>(var_3.x, true, false))), func_2(Struct_2(Struct_1(var_6.a.a, false, false, vec2<f32>(-397f, var_6.a.d.x)), var_6.d.x, -529f, var_0.a.d), -152f).b));
    let var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_2), vec2<i32>(~(~0i), _wgslsmith_dot_vec4_i32(-min(vec4<i32>(u_input.a, 0i, -27552i, 1241i), vec4<i32>(u_input.a, u_input.a, -10510i, u_input.a)), -vec4<i32>(u_input.a, -71586i, u_input.a, u_input.a))), func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-540f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(max(var_6.b, 1801f)))))), (vec4<i32>(u_input.a, 1i >> (var_2.x % 32u), -2147483647i, _wgslsmith_mult_i32(1i, u_input.a)) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(5511u, 4294967295u, var_2.x, var_2.x), vec4<u32>(2103u, 69538u, 11429u, 9319u)), abs(vec4<u32>(1u, var_2.x, var_2.x, 4294967295u))) % vec4<u32>(32u))) ^ vec4<i32>(~u_input.a, 0i, 1i, _wgslsmith_mult_i32(abs(u_input.a), firstTrailingBit(u_input.a))));
}

