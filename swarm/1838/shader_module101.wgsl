struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 20990i;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<f32> {
    let var_0 = (1u ^ select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.b.zx), min(select(u_input.c, u_input.b.x, true), firstTrailingBit(u_input.b.x)), true)) | ~(u_input.c >> (_wgslsmith_mult_u32(~0u, abs(u_input.c)) % 32u));
    let var_1 = _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(~min(vec2<u32>(u_input.b.x, 20856u), u_input.b.yx), countOneBits(~u_input.b.xx))), u_input.b.yz);
    var var_2 = any(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))) & true;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(362f, -2210f, 292f)) * vec3<f32>(-706f, 439f, -298f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3010f, 910f, 949f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2126f, 993f, 1152f)) * vec3<f32>(1253f, -794f, 545f))), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, true))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = arg_0;
    let var_1 = Struct_2(Struct_1(u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.x))), _wgslsmith_f_op_f32(max(var_0.a.d.x, _wgslsmith_f_op_f32(floor(arg_0.c.x)))), arg_0.e.b.x), select(!arg_0.a.c, vec2<bool>(false, true), !(!vec2<bool>(false, arg_0.e.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.d.x, var_0.b.d.x, arg_0.c.x))))), arg_1.a.x), Struct_1(select((u_input.b & vec3<u32>(arg_1.c, arg_0.b.a.x, var_0.d.x)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, 0u), var_0.d.zzy) % vec3<u32>(32u)), vec3<u32>(select(39975u, var_0.e.a.x, false), ~4988u, ~1u), vec3<bool>(var_0.e.c.x, false && arg_1.a.x, !var_0.b.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * var_0.b.b.x)), _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1247f, arg_0.a.d.x))), !arg_0.b.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b) + vec3<f32>(var_0.c.x, arg_0.e.d.x, 1485f))), arg_0.e.c.x), vec3<f32>(arg_1.b.x, arg_1.b.x, 252f), select(arg_0.d, firstTrailingBit(min(arg_0.d << (var_0.d % vec4<u32>(32u)), ~vec4<u32>(86702u, arg_1.c, u_input.b.x, 10585u))), var_0.e.d.x <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_1.b.x))), Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.e.b) - vec3<f32>(arg_1.b.x, 1680f, arg_1.b.x)))), select(arg_0.b.c, arg_0.b.c, arg_1.a.yz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, 1162f, -376f) - _wgslsmith_f_op_vec3_f32(arg_1.b * var_0.e.b))), arg_0.e.c.x));
    var_0 = var_1;
    var_0 = var_1;
    var_0 = Struct_2(Struct_1(abs(select(_wgslsmith_add_vec3_u32(var_1.b.a, u_input.b), vec3<u32>(20226u, var_1.a.a.x, 4294967295u), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(var_1.c.x, var_1.b.d.x)), _wgslsmith_f_op_f32(-arg_1.b.x), var_0.b.d.x)), vec2<bool>(!arg_0.b.e && false, _wgslsmith_sub_i32(-19295i, u_input.d) > _wgslsmith_mult_i32(-2147483647i, u_input.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-632f, _wgslsmith_f_op_f32(max(-1608f, arg_0.c.x)), -1197f)), false), Struct_1(arg_0.e.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.b.b + _wgslsmith_f_op_vec3_f32(var_0.a.d * var_0.c)))), !var_0.b.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.a.b)))), arg_1.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -178f))), _wgslsmith_f_op_f32(f32(-1f) * -309f), 391f)), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b.x, var_1.d.x, var_1.e.a.x), var_0.d), var_0.d) | ~countOneBits(var_1.d), Struct_1(~var_1.e.a, vec3<f32>(_wgslsmith_f_op_f32(step(1083f, _wgslsmith_f_op_f32(trunc(-335f)))), _wgslsmith_f_op_f32(abs(var_1.b.d.x)), _wgslsmith_f_op_f32(-var_1.b.d.x)), !(!vec2<bool>(var_1.a.e, arg_1.a.x)), arg_1.b, select((u_input.d << (arg_0.b.a.x % 32u)) == u_input.a.x, var_0.e.c.x, !(u_input.a.x != 2147483647i))));
    return _wgslsmith_clamp_vec4_u32(select(_wgslsmith_clamp_vec4_u32(max(~var_0.d, countOneBits(vec4<u32>(arg_1.c, 10082u, 4294967295u, 0u))), arg_0.d, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(var_1.d, vec4<u32>(1u, 4294967295u, 41456u, 50513u)), ~vec4<u32>(u_input.b.x, arg_0.d.x, arg_0.e.a.x, var_0.b.a.x))), _wgslsmith_mod_vec4_u32(countOneBits(var_1.d), vec4<u32>(~15780u, ~arg_0.e.a.x, arg_0.a.a.x, _wgslsmith_div_u32(var_0.e.a.x, 1u))), select(arg_1.a, select(!arg_1.a, !vec4<bool>(var_0.b.e, var_1.b.e, true, true), arg_1.a), vec4<bool>(4294967295u > arg_1.c, var_0.d.x != var_1.a.a.x, select(arg_0.b.e, arg_1.a.x, arg_0.e.c.x), arg_0.a.e))), arg_0.d << (vec4<u32>(countOneBits(arg_1.c) | ~4294967295u, _wgslsmith_add_u32(arg_1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.a.x, 1u), arg_0.b.a.yy)), ~4294967295u, min(0u | var_0.d.x, _wgslsmith_add_u32(u_input.b.x, arg_0.a.a.x))) % vec4<u32>(32u)), countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.d ^ vec4<u32>(arg_1.c, arg_0.a.a.x, u_input.b.x, 36059u), ~var_1.d), vec4<u32>(21300u, ~0u, var_0.b.a.x, 0u >> (u_input.b.x % 32u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(551f, -440f, -252f))), _wgslsmith_div_vec3_f32(vec3<f32>(-447f, 1033f, 944f), vec3<f32>(502f, -1201f, 914f))), vec3<f32>(_wgslsmith_f_op_f32(max(1432f, 1290f)), _wgslsmith_f_op_f32(f32(-1f) * -420f), -2796f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-487f, 655f, 1000f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(234f, 120f, 704f), vec3<f32>(-1883f, 1836f, -1002f))), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(433f, 607f, -1018f) - vec3<f32>(1502f, 294f, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-482f, -1418f, -154f) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-351f, 714f, 1073f))))), select(vec3<bool>(true, true, arg_1 == -16523i), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true), true))));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(282f + var_0.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, var_0.x, 1000f)))))))));
    let var_1 = Struct_3(!(!vec4<bool>(33663u > u_input.b.x, true, true, false)), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), 1877f, 866f), ~u_input.b.x << (~arg_0.x % 32u));
    var var_2 = arg_1;
    var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_1.a.x)), var_1.b.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(170f, -863f)), _wgslsmith_f_op_f32(f32(-1f) * -1711f), _wgslsmith_div_f32(-1797f, var_1.b.x)) + var_1.b))));
    return -14437i;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = u_input.b.x;
    global0 = u_input.d;
    global0 = countOneBits(arg_3.x);
    let var_1 = vec4<i32>(_wgslsmith_div_i32(func_4(func_2(Struct_2(Struct_1(u_input.b, vec3<f32>(arg_2, arg_2, 260f), vec2<bool>(false, arg_0), vec3<f32>(427f, -836f, -1992f), arg_1), Struct_1(vec3<u32>(u_input.b.x, 79541u, var_0), vec3<f32>(arg_2, arg_2, arg_2), vec2<bool>(arg_1, true), vec3<f32>(arg_2, arg_2, -719f), false), vec3<f32>(arg_2, -131f, arg_2), vec4<u32>(3881u, var_0, 2850u, u_input.c), Struct_1(vec3<u32>(u_input.c, 0u, u_input.c), vec3<f32>(271f, 390f, -963f), vec2<bool>(true, arg_1), vec3<f32>(1020f, -1680f, arg_2), true)), Struct_3(vec4<bool>(arg_1, arg_1, arg_1, true), vec3<f32>(1344f, -2055f, arg_2), 0u)), ~4186i) ^ arg_3.x, _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(-1i, arg_3.x, 23553i, 24682i)) >> (~var_0 % 32u)), _wgslsmith_sub_i32(arg_3.x, abs(u_input.d) & -u_input.a.x), -12467i << (countOneBits(reverseBits(var_0 << (u_input.b.x % 32u))) % 32u), -60309i);
    global0 = abs(4672i);
    return Struct_3(!vec4<bool>(!all(vec4<bool>(arg_0, arg_1, arg_0, true)), firstTrailingBit(4363i) == ~var_1.x, true, true), vec3<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2451f)) + _wgslsmith_f_op_f32(round(481f)))), _wgslsmith_div_f32(arg_2, -543f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * arg_2)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 2147483647i;
    var var_0 = countOneBits(select(21430i, select(u_input.d, max(u_input.a.x, u_input.a.x), reverseBits(u_input.a.x) < u_input.a.x), !all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false))));
    var var_1 = func_1(select(true, true, !(u_input.b.x < ~4294967295u)), true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(836f, -1998f) * _wgslsmith_f_op_f32(max(348f, 530f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-675f, _wgslsmith_f_op_f32(f32(-1f) * -1424f)))))), -(vec3<i32>(countOneBits(u_input.a.x), u_input.a.x, select(u_input.d, 0i, true)) >> (~vec3<u32>(1u, 1709u, 4294967295u) % vec3<u32>(32u))));
    let var_2 = true;
    var_1 = func_1(var_2, func_1(any(!vec3<bool>(var_2, true, var_2)), any(select(var_1.a.xw, vec2<bool>(var_1.a.x, var_2), vec2<bool>(true, var_1.a.x))), 2023f, -u_input.a.zwz).a.x, -228f, select(_wgslsmith_div_vec3_i32(max(vec3<i32>(39863i, -1i, u_input.d), firstLeadingBit(u_input.a.xwy)), u_input.a.yww), reverseBits(u_input.a.zzy), !select(var_1.a.wzz, select(vec3<bool>(true, false, false), vec3<bool>(var_2, true, false), var_1.a.zxz), vec3<bool>(var_2, var_2, false))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u));
}

