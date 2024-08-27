struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: Struct_3,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(any(vec2<bool>(true, true)), arg_2.x, !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_1(true, ~(-18661i) | select(arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, -1i, arg_0.x), vec3<i32>(arg_2.x, 17552i, -52149i)), true), vec2<bool>(0u > u_input.a, !any(vec2<bool>(true, false)))), Struct_1(all(vec2<bool>(true, true)), ~arg_0.x, !vec2<bool>(true, arg_1 < 1019f)), 0i, Struct_1(all(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, false)))), arg_0.x, vec2<bool>(true, true)));
    var_0 = Struct_2(Struct_1(true, ~abs(arg_2.x) | firstLeadingBit(_wgslsmith_div_i32(78643i, -2147483647i)), var_0.a.c), Struct_1(arg_1 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))), var_0.b.b, vec2<bool>(!any(vec4<bool>(true, false, false, true)), false)), Struct_1(var_0.a.c.x, select(reverseBits(arg_0.x) | 1i, arg_2.x | 19287i, any(select(vec3<bool>(var_0.e.c.x, true, var_0.c.a), vec3<bool>(false, true, var_0.c.c.x), vec3<bool>(var_0.b.a, true, var_0.a.a)))), vec2<bool>(true, true)), countOneBits(-arg_2.x), var_0.a);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - -341f)) <= _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-878f + arg_1)), var_0.e.b, vec2<bool>(true, true)), Struct_1(false, ~abs(0i), !(!(!var_0.b.c))), Struct_1(any(!(!vec3<bool>(false, true, var_0.c.c.x))), i32(-1i) * -firstTrailingBit(19546i), vec2<bool>(!var_0.c.a, true)), ~(~(-(~arg_2.x))), var_0.a);
    var_0 = Struct_2(Struct_1(select(false, !select(false, var_0.c.c.x, var_0.b.c.x), all(var_0.c.c)), -_wgslsmith_dot_vec2_i32(arg_2.zz, vec2<i32>(arg_0.x, -3328i)) << (~u_input.a % 32u), vec2<bool>(var_0.c.a, var_0.e.a)), var_0.b, Struct_1(any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, var_0.a.a, var_0.c.c.x), vec3<bool>(true, var_0.a.c.x, false)), !vec3<bool>(true, var_0.c.a, var_0.b.c.x), any(vec4<bool>(var_0.a.a, var_0.e.c.x, false, false)))), arg_2.x, !vec2<bool>(any(vec4<bool>(false, var_0.b.a, var_0.b.a, var_0.b.c.x)), !var_0.b.a)), max(max(arg_2.x, min(min(arg_0.x, 0i), 0i & var_0.a.b)), 23859i), var_0.e);
    let var_1 = u_input.a & ~(~select(_wgslsmith_clamp_u32(u_input.a, 1u, 18870u), ~0u, var_0.e.c.x));
    return vec2<u32>(1667u, u_input.a);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_4(-(vec3<i32>(-1i, arg_0.e.b, arg_0.b) << (arg_0.d.xyz % vec3<u32>(32u))) >> (arg_0.d.wwz % vec3<u32>(32u)), (~arg_0.e.b != arg_0.e.b) || false, arg_0, firstLeadingBit(_wgslsmith_clamp_vec4_i32(arg_0.c, abs(vec4<i32>(arg_0.c.x, arg_0.c.x, 30813i, 66254i)), vec4<i32>(arg_0.b, 41579i, arg_0.c.x, arg_0.e.b) << (arg_0.d % vec4<u32>(32u)))) >> (abs(~_wgslsmith_add_vec4_u32(arg_0.d, arg_0.d)) % vec4<u32>(32u)));
    var var_1 = reverseBits(abs(firstLeadingBit(vec2<u32>(_wgslsmith_div_u32(var_0.c.d.x, 1u), 4294967295u ^ var_0.c.d.x))));
    var var_2 = Struct_3(-2147483647i, abs(~2147483647i | ~(arg_0.a >> (1u % 32u))), -select(min(vec4<i32>(var_0.c.c.x, var_0.c.a, -7064i, arg_0.e.b), arg_0.c), vec4<i32>(-23990i, 1i, 27294i, arg_0.c.x), any(arg_0.e.c)) | vec4<i32>(~_wgslsmith_sub_i32(-1i, var_0.d.x), -1i, abs(0i), -2147483647i), min(~max(vec4<u32>(39929u, 37634u, arg_0.d.x, 37341u), arg_0.d << (arg_0.d % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_0.d.x, 1u, 1u), ~vec4<u32>(0u, 1723u, arg_0.d.x, arg_1.x))), Struct_1(arg_0.e.c.x, -39971i, !vec2<bool>(var_0.a.x > var_0.d.x, any(vec2<bool>(true, false)))));
    let var_3 = _wgslsmith_sub_u32(18272u, ~4294967295u);
    var var_4 = var_0.c;
    return false;
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_1(true | func_4(Struct_3(_wgslsmith_add_i32(-1i, -17619i), -36602i, vec4<i32>(-913i, -2147483647i, -789i, 47435i), ~vec4<u32>(0u, u_input.a, 4294967295u, 45481u), Struct_1(true, 2147483647i, vec2<bool>(true, false))), func_3(vec2<i32>(1i, 1i), 1163f, countOneBits(vec4<i32>(20312i, 0i, -2147483647i, -76977i))), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1624f, 329f, 1218f, 1587f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2629f, arg_0.x, arg_0.x, arg_0.x)))), 1i, vec2<bool>(true, true));
    var var_1 = _wgslsmith_sub_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-31826i, _wgslsmith_mod_i32(var_0.b, var_0.b), min(var_0.b, var_0.b), ~var_0.b), vec4<i32>(var_0.b ^ -24133i, ~var_0.b, var_0.b, var_0.b << (u_input.a % 32u))), vec4<i32>(~abs(11846i), max(var_0.b, -2147483647i) >> (max(u_input.a, 30136u) % 32u), min(~(-2147483647i), 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 39529i, 20500i, -4308i), ~vec4<i32>(57998i, 2147483647i, 0i, var_0.b))), !(!func_4(Struct_3(var_0.b, -1i, vec4<i32>(-47935i, var_0.b, 0i, var_0.b), vec4<u32>(25871u, u_input.a, u_input.a, 1u), var_0), vec2<u32>(0u, u_input.a), var_0.a, vec4<f32>(arg_0.x, 751f, 599f, arg_0.x)))), vec4<i32>(-(2147483647i | var_0.b), reverseBits(var_0.b ^ -2147483647i), 2147483647i << ((12528u & u_input.a) % 32u), 1i >> (countOneBits(80544u) % 32u)) & vec4<i32>(var_0.b, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 29308i, var_0.b), vec3<i32>(49608i, -46994i, -1i)), vec3<i32>(2147483647i, 28448i, var_0.b)), var_0.b, -firstTrailingBit(2147483647i)));
    let var_2 = -5634i;
    var_1 = select(select(abs(~vec4<i32>(var_1.x, var_0.b, 1i, var_2)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_1.x, var_1.x, var_2), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, -6763i, 1i), vec4<i32>(var_0.b, -43191i, var_0.b, var_0.b))), ~(vec4<i32>(var_1.x, var_2, 8557i, 1i) ^ vec4<i32>(-10524i, var_1.x, -6465i, 1i)), -_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, var_1.x, 57394i, 2147483647i), vec4<i32>(-1i, -19468i, var_1.x, -2147483647i))), all(vec2<bool>(any(vec3<bool>(var_0.a, var_0.c.x, true)), all(vec3<bool>(var_0.a, false, var_0.c.x))))), vec4<i32>(-var_1.x, -(~var_1.x), 1570i, ~(~0i)), vec4<bool>(all(select(select(vec3<bool>(var_0.c.x, false, var_0.c.x), vec3<bool>(var_0.c.x, true, true), var_0.c.x), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(true, true, true), var_0.a), true)), var_0.c.x, var_0.c.x && select(!var_0.a, any(vec2<bool>(true, var_0.a)), true), all(vec2<bool>(var_0.c.x, var_0.c.x)) || !var_0.a));
    var_1 = ~min(vec4<i32>(-29415i, var_1.x, _wgslsmith_div_i32(firstTrailingBit(var_1.x), 6838i), var_1.x), firstTrailingBit(vec4<i32>(~var_2, 32249i, var_0.b, ~var_0.b)));
    return Struct_4(_wgslsmith_mod_vec3_i32(-(var_1.yzx | var_1.wzy) ^ var_1.zyx, var_1.ywy), var_0.a, Struct_3(-25266i, abs(~(var_0.b << (u_input.a % 32u))), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_2, var_0.b, -2147483647i, 1i) & vec4<i32>(var_1.x, var_2, var_0.b, 1i), -vec4<i32>(4722i, -2147483647i, var_2, 27245i)), vec4<u32>(countOneBits(~4294967295u), u_input.a, u_input.a, abs(29066u | u_input.a)), Struct_1(var_0.a, _wgslsmith_dot_vec3_i32(firstTrailingBit(var_1.zyy), -vec3<i32>(-27057i, var_2, 2147483647i)), vec2<bool>(6258u >= u_input.a, true))), -vec4<i32>(reverseBits(var_1.x), -2147483647i, var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, 19593i, var_2) & vec3<i32>(var_2, 2147483647i, -45483i), var_1.zww)));
}

fn func_1(arg_0: i32, arg_1: f32) -> vec3<i32> {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-387f, arg_1), vec2<f32>(arg_1, -1000f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, 1322f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1177f)))))));
    let var_1 = false;
    let var_2 = vec3<f32>(-590f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(trunc(arg_1)))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(-var_2.x));
    var_3 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -429f));
    return (var_0.c.c.wwy << ((_wgslsmith_mod_vec3_u32(min(var_0.c.d.www, var_0.c.d.yzy), ~vec3<u32>(var_0.c.d.x, u_input.a, var_0.c.d.x)) | vec3<u32>(~0u, u_input.a, abs(var_0.c.d.x))) % vec3<u32>(32u))) ^ var_0.d.xwz;
}

fn func_5(arg_0: i32, arg_1: vec4<i32>) -> bool {
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-280f, 317f) - vec2<f32>(515f, 852f)))))))).c;
    var var_1 = func_2(vec2<f32>(852f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -264f) + _wgslsmith_f_op_f32(max(-196f, -1708f)))))));
    let var_2 = func_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f) + _wgslsmith_f_op_f32(793f * 1934f)), -995f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))))));
    var_1 = var_2;
    let var_3 = var_2.c;
    return var_1.c.e.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i << (min(u_input.a, 1u) % 32u);
    var var_1 = vec2<bool>(true, func_5(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(90440i, -2147483647i, -2147483647i), vec3<i32>(-2147483647i, 55964i, -1i), vec3<bool>(false, false, false)), vec3<i32>(1i, 1i, 1i), func_1(-2147483647i, 717f)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 1i, -11134i))), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, 11380i, 1i, 1i), vec4<i32>(-42409i, -83829i, -1i, 17857i)))));
    var_1 = vec2<bool>(true, true);
    var_1 = select(vec2<bool>(true, true), func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1319f, -295f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1610f, -2378f), vec2<f32>(-1302f, 765f))))))).c.e.c, !func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(681f, 1079f) + vec2<f32>(-1207f, 1448f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-375f, -351f)))).c.e.c);
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a, select(u_input.a, u_input.a, var_1.x | !var_1.x)), firstTrailingBit(~u_input.a));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(984f, -1623f)) - vec2<f32>(1943f, -1317f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1144f, 1052f))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(608f, -747f))))))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1804f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1044f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(351f - 1495f) + _wgslsmith_f_op_f32(-1696f + -1287f)))));
    var var_5 = Struct_4(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1155i, 2147483647i, 2147483647i), vec3<i32>(-9990i, 0i, -46098i)) & 1i, -(~(-1i))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -14609i, 0i), vec3<i32>(-2147483647i, 13634i, -12276i) << (vec3<u32>(1u, 4294967295u, u_input.a) % vec3<u32>(32u))) << (select(firstTrailingBit(vec3<u32>(u_input.a, 0u, 19046u)), vec3<u32>(28358u, u_input.a, u_input.a), true) % vec3<u32>(32u))), true, func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_4.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1145f, var_4.x))))).c, max(~max(countOneBits(vec4<i32>(-2147483647i, 0i, 37484i, 1i)), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(_wgslsmith_mult_i32(~(-553i), -789i), firstTrailingBit(_wgslsmith_div_i32(1i, -37230i)), -1i, func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_4.x, var_4.x)))).d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-327f))))), ~(~(~vec4<u32>(var_5.c.d.x, 48156u, u_input.a, 0u) >> (var_5.c.d % vec4<u32>(32u)))), vec2<u32>(0u, ~min(func_2(vec2<f32>(1862f, -946f)).c.d.x, 83948u)), var_5.c.c);
}

