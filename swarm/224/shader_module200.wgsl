struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    var var_0 = -_wgslsmith_clamp_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(53537i, -2842i, u_input.d, 0i), max(vec4<i32>(arg_1.e, arg_3.c.e, -1i, -1i), vec4<i32>(1i, arg_1.e, arg_1.a.x, u_input.b.x))), arg_1.e, _wgslsmith_mult_i32(20982i, _wgslsmith_add_i32(u_input.a, u_input.d)));
    let var_1 = _wgslsmith_mod_vec4_i32(~(-max(vec4<i32>(arg_3.c.a.x, 0i, arg_1.d, -18664i), countOneBits(vec4<i32>(-1i, 1i, 18344i, 9726i)))), ~vec4<i32>((u_input.b.x << (arg_2.x % 32u)) >> (_wgslsmith_div_u32(arg_2.x, arg_2.x) % 32u), _wgslsmith_sub_i32(abs(arg_1.e), reverseBits(arg_1.d)), -select(59031i, arg_1.e, arg_1.c.x), _wgslsmith_div_i32(-12452i, _wgslsmith_mult_i32(arg_3.c.a.x, -2147483647i))));
    var var_2 = 649f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1491f - -528f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x))));
    let var_3 = arg_0.x;
    let var_4 = arg_3.c;
    return _wgslsmith_dot_vec3_i32(select(vec3<i32>(i32(-1i) * -2147483647i, arg_1.d, 2147483647i & arg_1.a.x), -vec3<i32>(arg_1.d, var_1.x, 0i), true) >> (arg_3.d.xxw % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(u_input.b, arg_3.c.a));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = arg_0.e ^ -4636i;
    var var_1 = _wgslsmith_add_i32(-arg_0.d, ~arg_0.e);
    var var_2 = min(-(firstLeadingBit(firstLeadingBit(vec4<i32>(arg_1, arg_0.d, 1i, arg_0.a.x))) | (countOneBits(vec4<i32>(arg_0.a.x, arg_1, arg_0.d, -2147483647i)) >> (~vec4<u32>(arg_0.b, 48318u, arg_0.b, u_input.e.x) % vec4<u32>(32u)))), vec4<i32>(2147483647i, ~abs(arg_0.d), _wgslsmith_sub_i32(func_3(vec4<f32>(-1459f, 1473f, 326f, 1000f), arg_0, vec4<u32>(34061u, u_input.c, u_input.e.x, arg_0.b), Struct_2(vec2<u32>(u_input.c, u_input.c), u_input.e, Struct_1(vec3<i32>(u_input.b.x, arg_1, -9662i), 80914u, arg_0.c, arg_0.a.x, -19477i), vec4<u32>(1u, 4294967295u, arg_0.b, 24070u))), select(arg_1, arg_1, arg_0.c.x)) << (0u % 32u), ~arg_0.d));
    let var_3 = Struct_2(vec2<u32>(reverseBits(1u), firstLeadingBit(0u | arg_0.b)) ^ max(u_input.e, u_input.e), ~abs(~vec2<u32>(u_input.c, u_input.c)), arg_0, ~(~_wgslsmith_mod_vec4_u32(max(vec4<u32>(arg_0.b, 1u, 1u, u_input.e.x), vec4<u32>(arg_0.b, 1u, arg_0.b, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(12713u, arg_0.b, u_input.e.x, arg_0.b), vec4<u32>(0u, u_input.c, arg_0.b, 1u)))));
    let var_4 = Struct_1(var_3.c.a, ~var_3.d.x, arg_0.c, 2147483647i, arg_1);
    return Struct_1(~(-vec3<i32>(-1i, arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 29845i), u_input.b.yx))), 17864u, vec3<bool>(var_4.c.x, !var_3.c.c.x | (true && var_4.c.x), true), _wgslsmith_mod_i32(-7346i, (_wgslsmith_sub_i32(-42223i, arg_0.d) << (arg_0.b % 32u)) & (_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, var_3.c.d), var_4.a) << (firstLeadingBit(var_4.b) % 32u))), u_input.a);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return func_2(arg_0, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec3<i32>(max(-2147483647i, u_input.d), _wgslsmith_mod_i32(abs(-16350i), u_input.d), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 8999i, u_input.b.x)), 1i)), 1u, !vec3<bool>(true, u_input.e.x > 3562u, true), -2147483647i, 0i));
    let var_1 = min(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(53292i, u_input.b.x), var_0.e & u_input.d), var_0.e, _wgslsmith_add_i32(-u_input.a, 2147483647i), -1i), select(-vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x), ~vec4<i32>(-1i, var_0.e, u_input.b.x, var_0.d), vec4<bool>(var_0.c.x, false, false, false)) | -vec4<i32>(-45491i, -12733i, u_input.d, u_input.a)) >> ((vec4<u32>(~func_2(Struct_1(u_input.b, 4294967295u, var_0.c, -3786i, u_input.b.x), u_input.a).b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, var_0.b, var_0.b), vec3<u32>(0u, var_0.b, 56445u) << (vec3<u32>(var_0.b, 31427u, 770u) % vec3<u32>(32u))), 17657u, var_0.b) | vec4<u32>(countOneBits(~var_0.b), u_input.c, var_0.b, u_input.e.x)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1664f) + -1526f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1f)), 1540f, false)));
    var var_3 = select(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 29845u, var_0.b, 91922u)), min(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 25594u, u_input.c, u_input.c), vec4<u32>(var_0.b, 62724u, 64138u, 4294967295u)), select(vec4<u32>(4294967295u, var_0.b, 0u, var_0.b), vec4<u32>(var_0.b, var_0.b, 61264u, 1u), vec4<bool>(false, var_0.c.x, false, var_0.c.x)), any(vec4<bool>(var_0.c.x, false, true, var_0.c.x))), vec4<u32>(var_0.b, 35668u, u_input.e.x, var_0.b) & _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, var_0.b), vec4<u32>(u_input.c, 7105u, 33860u, 75485u))), _wgslsmith_clamp_vec4_u32(abs(max(vec4<u32>(u_input.e.x, 1412u, 1u, var_0.b), vec4<u32>(u_input.e.x, 4294967295u, 21593u, var_0.b))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(18318u, var_0.b, 1u, 4294967295u), vec4<u32>(var_0.b, 0u, var_0.b, var_0.b), ~vec4<u32>(var_0.b, u_input.e.x, 4294967295u, var_0.b)), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.e.x, 16095u), vec4<u32>(u_input.e.x, 1u, 1u, 17152u))))), _wgslsmith_div_vec4_u32(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.b, u_input.e.x, var_0.b, 20226u), firstTrailingBit(vec4<u32>(0u, u_input.c, u_input.e.x, u_input.e.x)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, 15459u, u_input.c, 4294967295u), vec4<u32>(6912u, 39123u, var_0.b, var_0.b)), ~vec4<u32>(4294967295u, u_input.e.x, u_input.e.x, 4294967295u)), select(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, 4294967295u, u_input.c, 0u), vec4<u32>(8632u, 0u, u_input.c, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, u_input.c, 53457u, 0u), vec4<u32>(56172u, 0u, u_input.c, u_input.c)), !vec4<bool>(false, false, true, var_0.c.x)), max(vec4<u32>(4294967295u, var_0.b, var_0.b, 1u) >> (vec4<u32>(70367u, u_input.e.x, u_input.c, 1u) % vec4<u32>(32u)), vec4<u32>(4294967295u, var_0.b, 0u, u_input.c)))), var_0.c.x);
    var var_4 = func_2(func_2(var_0, _wgslsmith_add_i32(-func_3(vec4<f32>(var_2, 269f, -921f, var_2), Struct_1(var_0.a, u_input.e.x, vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), -1i, var_1.x), vec4<u32>(30091u, 4294967295u, var_3.x, var_0.b), Struct_2(vec2<u32>(var_0.b, u_input.e.x), var_3.yx, var_0, vec4<u32>(var_0.b, u_input.c, var_0.b, u_input.e.x))), -2147483647i)), _wgslsmith_dot_vec3_i32(max(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-11510i, 25035i, var_1.x), vec3<i32>(var_0.e, var_0.e, var_1.x)), countOneBits(vec3<i32>(-1i, 0i, 2147483647i))), vec3<i32>(-2147483647i, _wgslsmith_div_i32(var_1.x, u_input.a), -24250i)), var_1.zxx));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, vec4<i32>(var_4.a.x, _wgslsmith_dot_vec3_i32(var_4.a, -(~var_1.wzz)), 1i, var_1.x), u_input.d & ~_wgslsmith_add_i32(var_4.e, -var_1.x), _wgslsmith_clamp_i32(1i, -1i, max(-45721i, ~u_input.d)));
}

