struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, !(arg_3.a > 0i), abs(43559u) > ~u_input.a), vec3<bool>(true, true, !all(vec2<bool>(false, true))));
    var var_1 = _wgslsmith_f_op_f32(397f - -142f);
    var var_2 = any(!(!select(select(var_0, vec3<bool>(false, true, false), var_0.x), !var_0, arg_3.a <= 31494i)));
    var_1 = _wgslsmith_f_op_f32(min(arg_0.a.b.x, 803f));
    let var_3 = arg_3.a;
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(96200u, 0u, u_input.a, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 20501u), vec4<u32>(u_input.a, 4294967295u, 615u, u_input.a))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 44657u, 1u, u_input.a) & vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), ~vec4<u32>(41234u, u_input.a, u_input.a, 1u)), firstTrailingBit(vec4<u32>(71460u, 0u, u_input.a, max(4294967295u, 29700u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 24986u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)) & (max(vec4<u32>(u_input.a, u_input.a, u_input.a, 5668u), vec4<u32>(69716u, 42463u, u_input.a, u_input.a)) >> (vec4<u32>(44562u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))), ~select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 38977u, 71219u, 0u) ^ vec4<u32>(19501u, u_input.a, 385u, u_input.a), ~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), ~countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<bool>(!var_0.x, var_0.x, true, true)), select(vec4<u32>(~u_input.a, ~38251u, 1u, ~u_input.a | ~u_input.a), ~abs(vec4<u32>(1u, u_input.a, 4020u, u_input.a)), vec4<bool>(false, any(vec4<bool>(false, var_0.x, true, var_0.x)), false, var_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.x * -693f), _wgslsmith_div_f32(arg_1.c.x, arg_1.c.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, 1000f, -977f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, -250f, -340f, 1144f))))), max(arg_0.c, arg_0.c & vec3<i32>(827i, -1i, -2147483647i))), Struct_2(~arg_0.c.x));
    return vec4<bool>(!arg_1.a, true, arg_1.a, !(min(0i, var_0.a.c.x & var_0.a.c.x) <= -var_0.a.c.x));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = select(vec4<bool>(true, true, true, true), !func_4(Struct_1(162f, _wgslsmith_f_op_vec4_f32(vec4<f32>(-252f, 1377f, 1525f, 1000f) * vec4<f32>(-255f, 402f, -166f, -1147f)), vec3<i32>(1i, 1i, 1i)), Struct_3(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -876f) - vec2<f32>(1119f, -778f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1023f, 1099f), vec2<f32>(559f, -1780f))), func_3(Struct_4(Struct_1(-176f, vec4<f32>(-390f, -353f, -1736f, -768f), vec3<i32>(1i, 54158i, -1i)), Struct_2(7264i)), Struct_1(584f, vec4<f32>(752f, -797f, 100f, -296f), vec3<i32>(-46030i, -52482i, -8978i)), -35796i, Struct_2(2147483647i)), 741f), vec4<bool>(all(vec4<bool>(true, false, true, all(vec4<bool>(true, true, true, true)))), true, false, false));
    let var_1 = ~_wgslsmith_dot_vec3_i32(-(~select(vec3<i32>(-281i, 8429i, 18628i), vec3<i32>(-14082i, 37226i, 2147483647i), false)), vec3<i32>(1i, reverseBits(2147483647i), 2147483647i << (_wgslsmith_div_u32(arg_0, 1u) % 32u)));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(4294967295u | func_3(Struct_4(Struct_1(723f, vec4<f32>(1686f, 605f, -670f, -1137f), vec3<i32>(var_1, var_1, -25564i)), Struct_2(var_1)), Struct_1(-945f, vec4<f32>(1203f, 1203f, 800f, 1417f), vec3<i32>(var_1, -25087i, -13894i)), 15700i, Struct_2(var_1)).x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), ~countOneBits(vec2<u32>(arg_0, u_input.a))), 4294967295u), arg_0);
    var_2 = 1u;
    var var_3 = select(!(!(!select(var_0, vec4<bool>(var_0.x, false, false, true), var_0.x))), !(!(!(!var_0))), select(!func_4(Struct_1(-324f, vec4<f32>(-1059f, 194f, 1000f, -428f), vec3<i32>(-2147483647i, -2147483647i, var_1)), Struct_3(var_0.x, vec2<f32>(1651f, 1758f), vec2<f32>(-323f, 1840f)), vec4<u32>(0u, 1u, u_input.a, 0u), _wgslsmith_f_op_f32(sign(-328f))), var_0, select(vec4<bool>(true, true, true, var_1 >= var_1), select(vec4<bool>(var_0.x, var_0.x, true, false), !var_0, var_0.x), !select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x), false))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(458f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-379f, _wgslsmith_f_op_f32(-924f - 1399f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-373f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1126f)))) - 1633f), 161f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1725f + -1526f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2269f), _wgslsmith_f_op_f32(step(-1025f, 297f)))), 1486f), min(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, 0i), vec3<i32>(var_1, var_1, var_1)), ~_wgslsmith_clamp_i32(var_1, var_1, 0i)), ~vec3<i32>(reverseBits(var_1), 1i, -var_1)));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = func_2(13665u);
    var_0 = func_2(arg_1);
    var var_1 = func_2(arg_3 << (arg_3 % 32u));
    var var_2 = Struct_2(-2147483647i);
    var_1 = func_2(func_3(Struct_4(func_2(13163u), Struct_2(1i)), func_2(min(arg_0.x & arg_3, 0u)), _wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(12618i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.x, arg_2, var_1.c.x, var_1.c.x), vec4<i32>(2147483647i, 0i, var_2.a, var_1.c.x)))), Struct_2(38088i)).x);
    return func_2(reverseBits(_wgslsmith_mult_u32(_wgslsmith_add_u32(5941u, arg_0.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 1u, u_input.a), vec3<u32>(16466u, 27519u, 4294967295u)), 4294967295u, firstLeadingBit(arg_1)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1296f, _wgslsmith_div_f32(arg_1.a.a, arg_1.a.a), any(vec2<bool>(false, false)))) * _wgslsmith_f_op_f32(select(-1715f, _wgslsmith_f_op_f32(ceil(arg_1.a.a)), select(true, false, false)))) >= _wgslsmith_f_op_f32(-360f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1054f)))), _wgslsmith_f_op_vec2_f32(step(func_1(~vec3<u32>(56534u, 46197u, u_input.a) << (vec3<u32>(0u, u_input.a, 1u) % vec3<u32>(32u)), 1u, 15977i, ~_wgslsmith_mult_u32(23003u, u_input.a)).b.zz, arg_1.a.b.zw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-692f, arg_1.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_5(Struct_2(2147483647i), Struct_4(func_1(max(vec3<u32>(20698u, u_input.a, 1u), vec3<u32>(1u, 1u, 1u)), ~(~76209u), -_wgslsmith_add_i32(1i, 10346i), u_input.a), Struct_2(_wgslsmith_div_i32(~46443i, i32(-1i) * -7896i))));
    var_1 = Struct_3(!all(vec3<bool>(true, var_0, false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.b.x)), 167f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b))) - _wgslsmith_f_op_vec2_f32(func_1(~vec3<u32>(64488u, u_input.a, u_input.a), func_3(Struct_4(Struct_1(var_1.c.x, vec4<f32>(1146f, var_1.b.x, 1330f, var_1.b.x), vec3<i32>(1i, -43341i, -3277i)), Struct_2(-8800i)), Struct_1(-741f, vec4<f32>(-2315f, var_1.b.x, 110f, var_1.c.x), vec3<i32>(-55880i, -1i, -4986i)), -8243i, Struct_2(0i)).x, _wgslsmith_clamp_i32(-1119i, -7958i, 40487i), u_input.a).b.xz * var_1.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-582f, var_1.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b) + _wgslsmith_f_op_vec2_f32(abs(var_1.b))), true)), var_1.b, false)));
    var var_2 = Struct_1(var_1.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1207f, -1303f, var_1.c.x, var_1.c.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(367f, var_1.b.x, var_1.b.x, var_1.c.x)))), vec3<i32>(-90652i, min(firstLeadingBit(~0i), -2147483647i << ((52128u ^ u_input.a) % 32u)), -1i));
    var_2 = Struct_1(var_1.b.x, _wgslsmith_f_op_vec4_f32(var_2.b - var_2.b), vec3<i32>(var_2.c.x, ~(-74555i), 36722i));
    var var_3 = func_5(Struct_2(0i), Struct_4(Struct_1(-743f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.b, vec4<f32>(var_2.b.x, -819f, 687f, 1958f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(682f, var_1.c.x, var_2.b.x, 1000f))), (var_2.c ^ vec3<i32>(var_2.c.x, 1i, var_2.c.x)) | vec3<i32>(var_2.c.x, -44710i, var_2.c.x)), Struct_2(49951i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32((vec3<u32>(u_input.a, 1u, 23419u) << (abs(vec3<u32>(u_input.a, u_input.a, 0u)) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(14494u, 0u, u_input.a)), vec3<u32>(55907u, 53823u, 1u), select(vec3<u32>(u_input.a, 4294967295u, 27221u), vec3<u32>(1u, 4294967295u, u_input.a), vec3<bool>(var_1.a, var_3.a, false))) % vec3<u32>(32u)), ~vec3<u32>(reverseBits(1757u), ~u_input.a, ~u_input.a)), vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(1u), u_input.a & (0u << (u_input.a % 32u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(16264u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, u_input.a)), 81514u), 1u), var_2.c.x, u_input.a, firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 7659u, u_input.a) << ((vec3<u32>(110620u, u_input.a, u_input.a) >> (vec3<u32>(9218u, u_input.a, 55636u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 1u), vec3<u32>(u_input.a, 1u, 3567u)) & _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 63103u)))));
}

