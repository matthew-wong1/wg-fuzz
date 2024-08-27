struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(true, Struct_1(true, firstLeadingBit(~1i), _wgslsmith_add_vec3_i32(abs(-vec3<i32>(0i, 1i, -2147483647i)), -vec3<i32>(1i, 1i, 1i))));
    let var_1 = ~(~vec4<u32>(arg_0.x, arg_0.x, 1u, 1u));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2030f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1270f - 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1758f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1969f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(801f, 1000f, -482f) - vec3<f32>(1009f, 1887f, 1000f)))))), -2433f, min(-(~vec4<i32>(var_0.b.c.x, var_0.b.c.x, var_0.b.b, var_0.b.c.x)) >> (u_input.b % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(max(vec4<i32>(45640i, 5322i, var_0.b.c.x, var_0.b.c.x), vec4<i32>(0i, var_0.b.c.x, 2147483647i, var_0.b.c.x)), max(vec4<i32>(24425i, var_0.b.c.x, var_0.b.b, var_0.b.c.x), vec4<i32>(-1i, 15102i, 0i, var_0.b.b)))));
    let var_3 = -37443i;
    var var_4 = Struct_2(var_0.b.a, Struct_1(!var_0.b.a, _wgslsmith_sub_i32(select(_wgslsmith_mod_i32(1i, var_3), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.d.x, 61334i), var_2.d.yz), var_0.b.b >= var_3), countOneBits(var_0.b.b & var_0.b.b)), var_0.b.c));
    return Struct_2(!var_0.a, Struct_1(any(select(!vec2<bool>(var_4.b.a, false), select(vec2<bool>(true, false), vec2<bool>(false, false), var_4.a), true)), var_2.d.x, vec3<i32>(var_0.b.b, 0i, i32(-1i) * -1i)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_4) -> u32 {
    var var_0 = arg_0;
    var_0 = arg_1.x;
    let var_1 = Struct_1(arg_2.a, arg_0, max(arg_2.b.c, ~vec3<i32>(~arg_3.a.x, _wgslsmith_add_i32(-25280i, arg_0), arg_0)));
    var var_2 = u_input.a;
    var_2 = firstTrailingBit(~32686u);
    return ~_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.b.x, 1u), u_input.b.x);
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(~_wgslsmith_add_u32(u_input.a, u_input.a), u_input.b.x | u_input.b.x, 21022u, u_input.a)));
    let var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(var_0, u_input.b.x) % vec2<u32>(32u))), u_input.b.yy ^ ~vec2<u32>(11165u, var_0)), select(abs(vec2<u32>(17810u, 63765u)), ~(~vec2<u32>(u_input.a, u_input.b.x)), select(select(vec2<bool>(arg_0, false), vec2<bool>(true, false), true), vec2<bool>(false, arg_0), select(vec2<bool>(true, arg_1), vec2<bool>(arg_0, arg_0), arg_1))));
    let var_2 = countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(max(~(-13711i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 9532i, -1i, -2147483647i), vec4<i32>(7276i, 67486i, -2147483647i, 6041i))), firstLeadingBit(2147483647i), ~13402i), firstLeadingBit(vec3<i32>(1i, -1i, 1i)) >> (firstTrailingBit(~u_input.b.yzy) % vec3<u32>(32u))));
    let var_3 = Struct_4(vec4<i32>(~51685i, ~var_2.x, _wgslsmith_mod_i32(2147483647i, _wgslsmith_mult_i32(-5510i & var_2.x, min(-2147483647i, 1i))), firstTrailingBit(var_2.x | countOneBits(var_2.x))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -617f), vec3<f32>(203f, -2544f, 788f), _wgslsmith_f_op_f32(trunc(1f)), vec4<i32>(-25675i, abs(-21058i), countOneBits(0i), 0i) >> (~vec4<u32>(var_1, var_0, 4294967295u, 45794u) % vec4<u32>(32u))));
    var var_4 = func_2(vec2<u32>(~(~4294967295u), ~_wgslsmith_add_u32(u_input.b.x, var_0)) ^ (~(~vec2<u32>(var_0, 36939u)) >> (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(var_1, var_0))) % vec2<u32>(32u))));
    return Struct_1(!(var_3.b.c <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.b.x) + var_3.b.a)), -41249i, select(-select(vec3<i32>(-24189i, var_3.b.d.x, 2147483647i), var_4.b.c, true), vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_4.b.c.x), vec2<i32>(-10684i, var_3.a.x)), firstTrailingBit(_wgslsmith_mod_i32(var_4.b.b, var_4.b.c.x))), vec3<bool>(!arg_0 | any(vec4<bool>(arg_1, var_4.a, var_4.b.a, false)), true, arg_1)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(true, ~(min(30782i, -30085i) << (~(~u_input.a) % 32u)), ~vec3<i32>(abs(-1i), 1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, -2147483647i), abs(-2147483647i))));
    let var_1 = func_4(func_3(_wgslsmith_mod_i32(var_0.c.x, var_0.c.x) ^ ~var_0.b, vec3<i32>(var_0.c.x, var_0.b, var_0.c.x) << (vec3<u32>(0u, u_input.a, 16446u) % vec3<u32>(32u)), func_2(_wgslsmith_sub_vec2_u32(u_input.b.xy, u_input.b.xz)), Struct_4(~vec4<i32>(var_0.b, var_0.b, var_0.c.x, var_0.b), Struct_3(-1783f, vec3<f32>(514f, -783f, 810f), 1342f, vec4<i32>(2147483647i, -3070i, 20134i, var_0.c.x)))) > max(_wgslsmith_add_u32(_wgslsmith_mult_u32(22878u, 0u), abs(u_input.b.x)), _wgslsmith_mod_u32(abs(u_input.b.x), ~u_input.a)), true);
    var_0 = Struct_1(!var_1.a, _wgslsmith_mod_i32(var_0.b, select(_wgslsmith_sub_i32(-1i, -var_1.b), ~(~var_1.c.x), true)), firstLeadingBit(vec3<i32>(1i, 1i, 1i) & -reverseBits(var_1.c)));
    var_0 = var_1;
    var var_2 = Struct_4(countOneBits(~(~max(vec4<i32>(var_1.b, 2147483647i, var_1.b, -17401i), vec4<i32>(-43027i, 6057i, var_1.c.x, 2147483647i)))), Struct_3(175f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-666f, -460f, -2208f)) * vec3<f32>(-114f, -1000f, -1550f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(871f))), _wgslsmith_div_f32(-613f, _wgslsmith_f_op_f32(round(-1615f)))), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, var_1.c.x), var_1.c.x, abs(select(var_1.b, var_0.b, var_1.a)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-58821i, -27844i), -var_1.c.x))));
    return Struct_1(var_1.a, var_0.b, _wgslsmith_div_vec3_i32(var_1.c, vec3<i32>(i32(-1i) * -2147483647i, firstTrailingBit(var_0.b << (0u % 32u)), var_2.b.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(false, func_1());
    var var_1 = select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~0u, _wgslsmith_sub_u32(u_input.a, u_input.b.x), 1u), vec4<u32>(u_input.b.x << (30427u % 32u), 72303u, 1u, u_input.a)), u_input.b.x, ~abs(~1u), func_3(2147483647i, vec3<i32>(1i, -1i, var_0.b.c.x) ^ var_0.b.c, func_2(u_input.b.ww), Struct_4(vec4<i32>(var_0.b.b, var_0.b.c.x, var_0.b.c.x, var_0.b.b), Struct_3(-140f, vec3<f32>(823f, -1354f, 1580f), -1632f, vec4<i32>(var_0.b.c.x, var_0.b.b, var_0.b.b, var_0.b.b)))) >> (u_input.a % 32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, ~0u, abs(u_input.b.x)), ~(~vec4<u32>(9254u, u_input.a, u_input.b.x, u_input.b.x))), firstLeadingBit(max(u_input.a, u_input.b.x | 24549u)), ~_wgslsmith_div_u32(abs(4294967295u), firstTrailingBit(4294967295u)), _wgslsmith_mult_u32(0u, u_input.a)), true);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(692f, -402f))) * _wgslsmith_f_op_f32(sign(-1426f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(346f, -505f, 2264f)))) + vec3<f32>(-1182f, _wgslsmith_f_op_f32(sign(1755f)), -585f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1963f - 1258f), _wgslsmith_f_op_f32(f32(-1f) * -705f), true)), -983f)), ~((vec4<i32>(var_0.b.b, var_0.b.c.x, var_0.b.c.x, var_0.b.b) ^ vec4<i32>(41874i, -16915i, 15046i, var_0.b.c.x)) >> (abs(vec4<u32>(u_input.a, u_input.a, u_input.b.x, 0u)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_sub_u32(67756u | u_input.a, u_input.a), select(u_input.b.x, 20167u, false), ~42557u, min(abs(var_1.x), 26850u)) % vec4<u32>(32u)));
    var_1 = min(_wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 20842u, 61532u, 1u), vec4<u32>(13531u, var_1.x, 0u, u_input.a))), vec4<u32>(func_3(var_0.b.c.x, vec3<i32>(2316i, 4022i, var_0.b.c.x), var_0, Struct_4(var_2.d, Struct_3(-460f, var_2.b, 1044f, vec4<i32>(var_2.d.x, 2147483647i, var_2.d.x, var_0.b.c.x)))) | ~var_1.x, func_3(var_0.b.c.x, func_1().c, var_0, Struct_4(var_2.d, Struct_3(1536f, var_2.b, -123f, vec4<i32>(2147483647i, var_2.d.x, 1i, -1i)))), 1u, var_1.x)) | u_input.b;
    var_1 = ~u_input.b;
    var_1 = u_input.b;
    var_1 = abs(~(~u_input.b)) ^ vec4<u32>(~0u, u_input.a, ~1u, ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_2.a, vec3<f32>(-886f, _wgslsmith_f_op_f32(var_2.a - var_2.c), var_2.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(351f, -916f)) * _wgslsmith_f_op_vec2_f32(-var_2.b.yz)), _wgslsmith_f_op_vec2_f32(trunc(var_2.b.zy)))));
}

