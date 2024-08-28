struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)), 1601f, 1u > u_input.b.x)), vec4<bool>(true, true, select(true, true, true), !(1i <= u_input.c.x)), u_input.c.zy, 942f, -237f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1663f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1128f + 210f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f - 260f)) * _wgslsmith_f_op_f32(486f + _wgslsmith_f_op_f32(f32(-1f) * -1772f))), !select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false)), ~abs(vec2<i32>(u_input.c.x, -1073i)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(539f + 1690f) + _wgslsmith_f_op_f32(-655f - -213f))), _wgslsmith_f_op_f32(862f * _wgslsmith_f_op_f32(f32(-1f) * -218f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(786f, 1049f, 645f, 984f))))));
    var_0 = Struct_2(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-355f)) + var_0.c.e), Struct_1(651f, vec4<bool>(true, var_0.c.b.x != (var_0.c.b.x || var_0.a.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.a.x, 41818u), vec4<u32>(u_input.b.x, 3768u, u_input.b.x, u_input.a.x)) <= 70228u, !var_0.c.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(44443i, ~(-1i)), vec2<i32>(reverseBits(u_input.c.x), ~var_0.c.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, -287f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1826f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-243f * 256f), var_0.a.d), 1000f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -228f), _wgslsmith_f_op_f32(abs(-692f)))) - var_0.a.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.x + -751f), 564f), 320f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -677f) * -815f)));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.c.e), select(!vec4<bool>(var_0.a.b.x, var_0.c.b.x, true, var_0.a.b.x), select(!vec4<bool>(var_0.a.b.x, var_0.c.b.x, false, var_0.c.b.x), !vec4<bool>(false, true, var_0.c.b.x, var_0.a.b.x), u_input.a.x <= 38943u), var_0.c.b.x), -var_0.a.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1164f))))), var_0.d.x), _wgslsmith_f_op_f32(-var_0.c.d), var_0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d, vec4<f32>(var_0.c.a, 1621f, 654f, var_0.d.x)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.d, vec4<f32>(-1121f, -1155f, 934f, -482f), true)), vec4<f32>(-374f, -452f, 1000f, -1044f))) * _wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(_wgslsmith_f_op_f32(trunc(2362f)), var_0.b, _wgslsmith_f_op_f32(sign(var_0.a.e)), _wgslsmith_f_op_f32(max(-1000f, var_0.a.d))))));
    var_0 = Struct_2(Struct_1(2065f, select(vec4<bool>(false && var_0.c.b.x, var_0.c.b.x, 750f <= var_0.b, var_0.a.b.x), !vec4<bool>(false, var_0.c.b.x, true, false), true), var_0.a.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1628f + -1334f) + var_0.d.x))), var_0.b), _wgslsmith_f_op_f32(select(var_0.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -613f)))), false)), var_0.a, _wgslsmith_f_op_vec4_f32(-var_0.d));
    var var_1 = Struct_1(var_0.c.e, !var_0.c.b, var_0.a.c, _wgslsmith_f_op_f32(var_0.c.e - _wgslsmith_div_f32(-794f, var_0.a.d)), 177f);
    return vec4<bool>(var_0.c.b.x, var_1.b.x, all(vec4<bool>(false, false, var_0.a.b.x, var_1.b.x)), all(vec2<bool>(var_0.a.b.x, (var_0.c.b.x != var_0.a.b.x) && !var_0.c.b.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))));
    var_0 = _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-arg_2));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-240f)))))));
    var_0 = 1f;
    var var_1 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.c.x >> (u_input.a.x % 32u)), ~(~arg_0.x), arg_0.x), firstTrailingBit(-vec3<i32>(arg_0.x, 1i, arg_0.x)));
    return firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, reverseBits(firstTrailingBit(select(u_input.b.x, 1u, true))), _wgslsmith_dot_vec3_u32((u_input.b ^ u_input.b) & ~vec3<u32>(35941u, 16868u, u_input.a.x), _wgslsmith_mult_vec3_u32(~u_input.b, min(vec3<u32>(0u, 8658u, u_input.b.x), vec3<u32>(0u, 4294967295u, u_input.a.x))))));
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_4(~select(vec2<i32>(u_input.c.x, 18733i), countOneBits(abs(vec2<i32>(u_input.c.x, u_input.c.x))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(true, any(vec2<bool>(true, true)) && (u_input.b.x >= u_input.a.x), any(func_3())), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f)), -683f)));
    let var_1 = all(vec3<bool>(arg_0.x > _wgslsmith_f_op_f32(arg_0.x + arg_0.x), !select(true, true, any(vec4<bool>(true, false, true, false))), !any(vec2<bool>(false, false))));
    var var_2 = _wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(9058i, -22881i), 68577i, 62988i), u_input.c, firstLeadingBit(u_input.c)), vec3<i32>(u_input.c.x, -_wgslsmith_clamp_i32(u_input.c.x, firstLeadingBit(u_input.c.x), _wgslsmith_div_i32(-7670i, 1i)), u_input.c.x | _wgslsmith_dot_vec4_i32(select(vec4<i32>(5522i, -47415i, 2657i, 9355i), vec4<i32>(2147483647i, -1i, u_input.c.x, 78706i), false), _wgslsmith_add_vec4_i32(vec4<i32>(10705i, u_input.c.x, u_input.c.x, -22822i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)))));
    var var_3 = abs(var_2.x);
    let var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(select(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 53702u), func_3().x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, u_input.b.x, u_input.a.x, var_0.x)), ~vec4<u32>(1u, 4294967295u, 0u, var_0.x)), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, u_input.b.x), var_0.x), countOneBits(~var_0.x)) | (~var_0 >> (~(~vec4<u32>(4294967295u, 35594u, 34510u, u_input.b.x)) % vec4<u32>(32u))), reverseBits(var_0), var_0);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(869f + 492f) + _wgslsmith_div_f32(-1375f, -791f))) * arg_0.x), vec4<bool>(true, true, all(select(!vec4<bool>(var_1, var_1, false, true), !vec4<bool>(true, true, false, var_1), select(vec4<bool>(var_1, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(var_1, var_1, var_1, var_1)))), arg_0.x != _wgslsmith_f_op_f32(-arg_0.x)), abs(_wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, u_input.c.x), firstTrailingBit(select(var_2.xz, vec2<i32>(var_2.x, -2147483647i), vec2<bool>(var_1, var_1))))), arg_0.x, _wgslsmith_f_op_f32(1069f + arg_0.x));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = Struct_4(u_input.b, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1046f, -1247f), vec2<f32>(-641f, 2545f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-727f, -626f))) + vec2<f32>(1f, 1f))));
    let var_1 = ~select(0i, _wgslsmith_dot_vec2_i32(u_input.c.zz, countOneBits(vec2<i32>(-37199i, 1i))), var_0.b.b.x) << (abs(~1u) % 32u);
    let var_2 = Struct_2(var_0.b, var_0.b.a, func_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, var_0.b.d) + vec2<f32>(-645f, -1110f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -2083f, -205f, 298f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.d, -1486f, var_0.b.a, var_0.b.a) + vec4<f32>(-836f, var_0.b.d, -952f, -1835f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-var_2.d);
    var_3 = var_2.d;
    return !(!func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.e, 646f)), _wgslsmith_f_op_vec2_f32(-var_2.d.wz))).b);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-113f, arg_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1389f, arg_1)))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1000f) * vec2<f32>(arg_1, 611f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, arg_1))) - vec2<f32>(arg_1, -270f))))));
    let var_1 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(var_0 + _wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(106f, 1715f)))))), arg_1, Struct_1(-1978f, arg_0, abs(select(u_input.c.xz, u_input.c.zx, false)), arg_1, var_0.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, var_0.x, arg_1, 1015f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -260f) + vec4<f32>(626f, -232f, var_0.x, arg_1))))))));
    let var_2 = Struct_3(arg_0.wyz, var_1.a.b.x, _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-119f, -201f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.a), arg_1)))), _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(u_input.c, ~vec3<i32>(var_1.c.c.x, 1i, var_1.a.c.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(20716i, 14018i), u_input.c.x, 11085i), _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, var_1.a.c.x, 33387i), vec3<i32>(u_input.c.x, u_input.c.x, var_1.c.c.x)))));
    let var_3 = _wgslsmith_mult_i32(-(_wgslsmith_div_i32(reverseBits(var_1.a.c.x), _wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.xy)) >> (1u % 32u)), var_2.d);
    let var_4 = Struct_4(vec3<u32>(countOneBits(~(~4294967295u)), 79514u, _wgslsmith_dot_vec2_u32(u_input.b.zx, ~vec2<u32>(u_input.a.x, 10008u)) | u_input.a.x), func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(131f, arg_1)) - _wgslsmith_f_op_vec2_f32(-var_0))));
    return Struct_4(u_input.b, func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-505f, 176f) * vec2<f32>(var_2.c, arg_1)) - _wgslsmith_f_op_vec2_f32(select(var_0, vec2<f32>(385f, var_1.b), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(!func_1(-u_input.c.x), vec4<bool>(_wgslsmith_mod_i32(u_input.c.x, -19612i) >= (i32(-1i) * -37751i), select(true, false, true), u_input.c.x >= _wgslsmith_div_i32(-30230i, u_input.c.x), true), vec4<bool>(true, true, true, true)), 1000f);
    let var_1 = ~(u_input.a | _wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, var_0.a.x), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), u_input.b.xx), ~u_input.b.xx >> (vec2<u32>(0u, u_input.a.x) % vec2<u32>(32u))));
    var var_2 = ~19209u;
    var var_3 = any(func_5(var_0.b.b, 1440f).b.b.zwx);
    var_3 = _wgslsmith_f_op_f32(-var_0.b.e) >= _wgslsmith_f_op_f32(-678f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.e)))));
    var var_4 = -_wgslsmith_sub_i32(u_input.c.x, select(u_input.c.x, -12110i, true));
    var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_5(!(!(!vec4<bool>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x, true))), var_0.b.e).b.a, 4294967295u, u_input.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-205f)), _wgslsmith_f_op_f32(round(463f)))));
}

