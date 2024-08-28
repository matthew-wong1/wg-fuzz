struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<i32> {
    return min(vec3<i32>(abs(min(~0i, _wgslsmith_add_i32(-1i, u_input.a.x))), ~(~_wgslsmith_div_i32(1i, -4952i)), u_input.c), u_input.d);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec2<bool> {
    var var_0 = arg_1.x & !(!(arg_1.x & arg_1.x));
    let var_1 = Struct_2(Struct_1(-286f, -select(abs(vec3<i32>(u_input.b, u_input.c, arg_0.x)), func_3(), vec3<bool>(arg_1.x, arg_1.x, true)), _wgslsmith_dot_vec3_i32(func_3(), arg_0.zyy) ^ -5263i, -647f), !arg_1.x);
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -216f), func_3(), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(465f + var_1.a.d)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) * var_1.a.d))), ~(~select(~4294967295u, countOneBits(1u), any(arg_1))), var_1, !(!(all(arg_1) && arg_1.x)));
    var var_3 = vec3<i32>(-_wgslsmith_mod_i32(abs(i32(-1i) * -1i), -12991i), ~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, -91555i), arg_0.wy)), ~1i), select(_wgslsmith_div_i32(u_input.c, 2147483647i), select(func_3().x, _wgslsmith_div_i32(2147483647i, -7304i), false), select(false, var_2.d, var_1.b)));
    let var_4 = Struct_2(var_2.c.a, false);
    return arg_1.zy;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_4(Struct_3(Struct_1(arg_1.d, _wgslsmith_add_vec3_i32(arg_1.b, vec3<i32>(u_input.d.x, 62000i, -22988i)) | vec3<i32>(arg_1.b.x, 2147483647i, u_input.a.x), firstTrailingBit(arg_1.b.x), -1808f), 0u, Struct_2(Struct_1(588f, ~arg_1.b, u_input.b, _wgslsmith_f_op_f32(arg_2.x + arg_1.d)), arg_0.x), arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(-683f * 729f), 701f, _wgslsmith_f_op_f32(arg_1.d - arg_1.d), _wgslsmith_f_op_f32(-1253f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a))))), _wgslsmith_div_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.b.x, arg_1.c, 0i, -24103i), vec4<i32>(arg_1.b.x, u_input.b, -2147483647i, -48513i))) | ~(~vec4<i32>(36806i, u_input.b, 13675i, arg_1.c)), abs(vec4<i32>(1i, -2147483647i, -2147483647i, arg_1.b.x))), arg_1, ~_wgslsmith_div_vec2_i32(arg_1.b.yz, u_input.a.zz));
    let var_1 = var_0.a.a.b.x;
    let var_2 = _wgslsmith_f_op_f32(-456f + arg_2.x);
    let var_3 = Struct_1(-512f, vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.a.zy, ~var_0.c.zz, max(vec2<i32>(arg_1.b.x, -11272i), vec2<i32>(34128i, -2147483647i))), _wgslsmith_div_vec2_i32(u_input.a.yx >> (vec2<u32>(var_0.a.b, var_0.a.b) % vec2<u32>(32u)), -vec2<i32>(5881i, -2147483647i))), arg_1.c, -8813i), firstLeadingBit(var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 910f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_1.a)), -1608f)));
    let var_4 = var_0.a.c;
    return (var_0.a.b >> (~19999u % 32u)) << (var_0.a.b % 32u);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> vec3<u32> {
    let var_0 = ~func_4(select(func_2(vec4<i32>(u_input.a.x, -1i, arg_1.a.b.x, arg_1.a.c), !vec4<bool>(true, true, arg_1.b, arg_1.b)), vec2<bool>(!arg_1.b, true), true), Struct_1(arg_1.a.a, u_input.a, ~(-9089i), arg_1.a.d), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.d, -174f, -760f) * vec3<f32>(-197f, arg_1.a.d, arg_1.a.d)), vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-arg_1.a.a), arg_1.a.d))));
    let var_1 = arg_2;
    var var_2 = _wgslsmith_mult_vec4_u32(reverseBits(~vec4<u32>(68490u >> (0u % 32u), arg_2, _wgslsmith_clamp_u32(23899u, 0u, var_0), 21807u >> (arg_2 % 32u))), vec4<u32>(~4294967295u, 26408u, var_0, ~(var_1 >> (var_1 % 32u))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a.a))), _wgslsmith_f_op_f32(-240f - arg_1.a.d)), u_input.d, -58084i, arg_1.a.d), func_4(!(!(!vec2<bool>(arg_1.b, false))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -247f), u_input.d, -_wgslsmith_sub_i32(arg_0.x, 1i), arg_1.a.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-522f, arg_1.a.a, 1000f)), vec3<f32>(-554f, _wgslsmith_f_op_f32(trunc(arg_1.a.a)), _wgslsmith_div_f32(arg_1.a.a, -490f)), all(!vec4<bool>(false, true, arg_1.b, arg_1.b))))), arg_1, select(arg_1.b, arg_1.a.c < firstTrailingBit(-59649i << (var_1 % 32u)), !arg_1.b));
    let var_4 = arg_1.a.a;
    return vec3<u32>(15905u, arg_2, _wgslsmith_mod_u32(~var_3.b, ~54558u));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: f32) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(-1228f, u_input.a, u_input.d.x, _wgslsmith_f_op_f32(-arg_3)), true);
    let var_1 = _wgslsmith_mult_i32(-25097i | u_input.a.x, (2147483647i ^ (i32(-1i) * -var_0.a.b.x)) & u_input.a.x);
    var_0 = Struct_2(var_0.a, all(!arg_1));
    let var_2 = Struct_3(var_0.a, 1u, Struct_2(var_0.a, func_2(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.c, 16699i, -1i), !vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)).x), !(arg_1.x & any(arg_1)) != true);
    var_0 = var_2.c;
    return arg_2;
}

fn func_6(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_1 {
    let var_0 = arg_3.b;
    let var_1 = abs(arg_3.c);
    let var_2 = !select(!(!(!vec4<bool>(arg_3.a.c.b, true, false, arg_3.a.c.b))), select(select(vec4<bool>(arg_3.a.c.b, true, false, false), vec4<bool>(true, true, arg_3.a.d, arg_3.a.c.b), all(vec4<bool>(true, arg_3.a.c.b, arg_3.a.d, false))), !select(vec4<bool>(false, arg_3.a.c.b, arg_3.a.c.b, true), vec4<bool>(false, arg_3.a.d, arg_3.a.d, true), vec4<bool>(false, arg_3.a.c.b, true, arg_3.a.c.b)), !select(vec4<bool>(arg_3.a.d, true, true, arg_3.a.c.b), vec4<bool>(false, false, true, arg_3.a.c.b), vec4<bool>(false, false, true, arg_3.a.c.b))), true);
    var var_3 = !select(select(vec3<bool>(var_2.x, !arg_3.a.c.b, var_2.x), var_2.zyw, select(!vec3<bool>(var_2.x, var_2.x, arg_3.a.d), !var_2.wyx, vec3<bool>(arg_3.a.c.b, false, arg_3.a.c.b))), !vec3<bool>(false, !var_2.x, 0i <= u_input.d.x), select(var_2.zwx, !vec3<bool>(true, var_2.x, var_2.x), !select(vec3<bool>(var_2.x, true, true), vec3<bool>(var_2.x, false, true), var_2.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -491f, -569f, arg_2.x) - vec4<f32>(-1000f, arg_3.a.c.a.d, -1504f, -652f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1535f), _wgslsmith_f_op_f32(arg_2.x + -578f), arg_2.x, 1f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.x, 578f)), arg_3.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2.x, -1000f)), _wgslsmith_f_op_f32(arg_3.d.d * 797f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.d) - _wgslsmith_f_op_f32(-var_0.x)), 1000f)), !(!all(select(var_2.yxx, var_2.zzy, vec3<bool>(arg_3.a.c.b, var_2.x, false))))));
    return arg_3.a.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.a.yy, -(~vec3<i32>(875i, 99905i, u_input.a.x) << (func_5(vec3<u32>(0u, 3844u, 0u), vec2<bool>(true, true), func_1(vec3<i32>(u_input.d.x, u_input.c, u_input.a.x), Struct_2(Struct_1(831f, u_input.a, u_input.b, -815f), true), 36573u), _wgslsmith_f_op_f32(517f * -1000f)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, _wgslsmith_f_op_f32(605f - -384f), _wgslsmith_f_op_f32(select(1008f, -1168f, true))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-839f, -632f, 1217f), vec3<f32>(380f, 526f, 1119f)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(-1391f)), _wgslsmith_f_op_f32(1084f + 1899f), -1000f))), Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(step(-523f, -623f)), -vec3<i32>(u_input.c, u_input.b, 83374i), ~(-8720i), _wgslsmith_f_op_f32(floor(125f))), ~0u | _wgslsmith_dot_vec2_u32(vec2<u32>(17133u, 53618u), vec2<u32>(0u, 12501u)), Struct_2(Struct_1(-313f, u_input.a, -24728i, 600f), true), true), vec4<f32>(-1140f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(-597f))), 495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1542f, 2443f)))), reverseBits(-vec4<i32>(u_input.d.x, u_input.d.x, -37255i, -1i)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1376f))), u_input.a, u_input.b ^ -1230i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-252f + 611f)))), u_input.a.yy));
    var var_1 = !vec3<bool>(!any(vec2<bool>(false, true)) || false, !all(vec2<bool>(true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, true))));
    var var_2 = 221f;
    let var_3 = Struct_2(Struct_1(var_0.a, -(vec3<i32>(var_0.c, u_input.a.x, var_0.b.x) & _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -25920i), vec3<i32>(var_0.b.x, var_0.b.x, -57336i))), -1i, _wgslsmith_f_op_f32(step(var_0.d, _wgslsmith_f_op_f32(-522f - -978f)))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(865f, _wgslsmith_f_op_f32(-var_0.a), var_0.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.a, var_3.a.d, -680f))))), _wgslsmith_sub_u32(reverseBits(~0u), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(18610u, 1u)))) << (reverseBits(_wgslsmith_add_u32(1u, reverseBits(16035u))) % 32u), _wgslsmith_clamp_vec4_u32(~min(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(2652u, 1u, 30403u, 4294967295u), vec4<u32>(1u, 37812u, 0u, 52311u), vec4<bool>(var_1.x, var_3.b, var_1.x, var_3.b))), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 2545u, 21654u), vec3<u32>(77963u, 32380u, 0u)), 0u, all(vec2<bool>(true, false))), 102028u, 16883u, ~4294967295u)), _wgslsmith_dot_vec2_u32(func_5(abs(vec3<u32>(13646u, 1u, 4294967295u)), var_1.yz, _wgslsmith_sub_vec3_u32(vec3<u32>(78272u, 4294967295u, 42684u), vec3<u32>(68766u, 0u, 1u)), 345f).yz | ~_wgslsmith_div_vec2_u32(vec2<u32>(23058u, 0u), vec2<u32>(1u, 4294967295u)), ~func_5(vec3<u32>(1u, 1u, 1u), var_1.yx, select(vec3<u32>(100248u, 10572u, 12707u), vec3<u32>(1u, 0u, 0u), true), _wgslsmith_f_op_f32(-var_0.d)).zx));
}

