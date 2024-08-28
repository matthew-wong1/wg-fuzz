struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: vec2<bool>,
    d: Struct_3,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    var var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1499f))) - -1639f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1084f, 335f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 1276f), _wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(246f, -1296f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-618f * -811f), _wgslsmith_f_op_f32(113f - -1000f), 580f, -501f)))));
    let var_1 = vec4<bool>(all(!vec2<bool>(true, var_0.x <= 733f)), any(vec3<bool>(true, true, true)), !(any(vec2<bool>(true, true)) || (arg_0.x > 0i)), true && any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))));
    let var_2 = Struct_5(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-39599i, arg_0.x, arg_0.x) ^ vec3<i32>(-1779i, 21299i, -42517i), ~vec3<i32>(2147483647i, arg_0.x, arg_0.x)) | ~arg_0.x, 0i), true, !select(var_1.zw, var_1.yy, true), Struct_3(vec4<bool>(true, all(vec2<bool>(true, false)), false, all(vec4<bool>(true, true, true, true))), vec2<u32>(~(~u_input.d.x), ~1u), ~reverseBits(u_input.d)), Struct_2(min(abs(vec3<i32>(2147483647i, arg_0.x, -48682i)), -vec3<i32>(arg_0.x, arg_0.x, arg_0.x) << (countOneBits(u_input.c) % vec3<u32>(32u))), Struct_1(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, 725i))));
    return _wgslsmith_mult_i32(-2147483647i ^ (var_2.e.b.a | (i32(-1i) * -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1878i, -37883i), _wgslsmith_mod_vec2_i32(var_2.e.a.yz, vec2<i32>(2147483647i, -var_2.a.x))));
}

fn func_2() -> vec2<i32> {
    let var_0 = func_3(_wgslsmith_add_vec2_i32(-vec2<i32>(~(-64467i), 45244i), ~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(63557i, 0i), vec2<i32>(503i, 8854i)))));
    var var_1 = Struct_2(vec3<i32>(-1i, var_0, abs(-1i)), Struct_1(13097i));
    let var_2 = -609f;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2 * var_2), 1877f)))))));
    var var_4 = u_input.c & _wgslsmith_add_vec3_u32(u_input.d, ~u_input.c);
    return vec2<i32>(_wgslsmith_mod_i32(-35115i, var_0), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, max(1i, var_0), var_1.a.x >> (43773u % 32u), 18143i), abs(-vec4<i32>(var_0, var_1.a.x, 2147483647i, var_1.a.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> vec3<u32> {
    global0 = array<vec3<f32>, 4>();
    var var_0 = Struct_5(firstLeadingBit(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(6218i, 7028i), firstLeadingBit(vec2<i32>(arg_1, arg_1)), func_2()), firstLeadingBit(max(vec2<i32>(-1i, -31951i), vec2<i32>(2147483647i, arg_1))))), !any(!select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, false, true))), arg_0, Struct_3(select(select(select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, false), arg_0.x), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), true), vec4<bool>(false, arg_0.x | true, false, arg_0.x), select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), arg_0.x != arg_0.x)), ~vec2<u32>(0u, _wgslsmith_mod_u32(arg_3.x, 1u)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_3.x) >> (u_input.d % vec3<u32>(32u)), reverseBits(arg_3.wwz)))), Struct_2(vec3<i32>(arg_1 >> (1u % 32u), ~arg_1, _wgslsmith_mult_i32(arg_1, arg_1)) ^ -vec3<i32>(arg_1, arg_1, arg_1), Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1, -1i, -20042i), vec4<i32>(-35409i, arg_1, 0i, 0i)))));
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(ceil(arg_2))));
    var_0 = Struct_5(~(-(vec2<i32>(var_1, var_0.e.b.a) | vec2<i32>(var_0.a.x, var_1)) << (~(vec2<u32>(var_0.d.b.x, 43379u) << (vec2<u32>(17875u, 46235u) % vec2<u32>(32u))) % vec2<u32>(32u))), all(vec2<bool>(true, true)), vec2<bool>(1u > _wgslsmith_dot_vec3_u32(max(vec3<u32>(31380u, 0u, 59774u), u_input.d), arg_3.wzx), !var_0.d.a.x), var_0.d, var_0.e);
    return _wgslsmith_mod_vec3_u32(vec3<u32>(1316u | (var_0.d.c.x | 0u), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(36904u, 1u), u_input.c.xx) >> ((_wgslsmith_div_u32(1u, arg_3.x) & (var_0.d.b.x >> (11562u % 32u))) % 32u)), ~(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 27916u), vec3<u32>(1u, arg_3.x, u_input.b), arg_3.xyy) | firstLeadingBit(vec3<u32>(24870u, 1u, 12079u)))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = ~1u;
    let var_1 = arg_0.d.c.zx;
    var_0 = func_1(!select(!(!vec2<bool>(arg_3, true)), select(arg_0.c, select(arg_0.c, vec2<bool>(false, arg_3), arg_0.c), select(true, arg_2, arg_3)), arg_0.d.a.wz), select(arg_0.a.x, ~arg_0.a.x, arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f))), max(_wgslsmith_mult_vec4_u32(vec4<u32>(52074u, u_input.e, 35551u, 0u), vec4<u32>(4294967295u, arg_0.d.b.x, u_input.b, 40776u)) & ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.d.b.x, 25097u, u_input.a, var_1.x), vec4<u32>(4524u, arg_0.d.c.x, arg_0.d.b.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~arg_0.d.c.x, arg_0.d.c.x, var_1.x), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_0.d.c.x, 18227u, 1u), vec4<u32>(0u, arg_0.d.b.x, u_input.e, arg_0.d.b.x)), vec4<u32>(45688u, arg_0.d.b.x, 48414u, var_1.x) >> (vec4<u32>(var_1.x, 0u, 58884u, 54670u) % vec4<u32>(32u)))))).x;
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-507f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(347f)), _wgslsmith_f_op_f32(round(-1000f)))))));
    return Struct_1(arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_5(min(firstTrailingBit(-vec2<i32>(8609i, 12283i)), firstTrailingBit(-vec2<i32>(-24706i, -1382i))), true, vec2<bool>(true, true), Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), select(vec2<u32>(24106u, 0u), vec2<u32>(6854u, u_input.c.x), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), select(func_1(vec2<bool>(true, true), 0i, -2139f, vec4<u32>(8437u, u_input.d.x, u_input.b, u_input.e)), u_input.d ^ vec3<u32>(0u, u_input.b, u_input.c.x), vec3<bool>(true, true, true))), Struct_2(-_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, -2147483647i, 29939i)), Struct_1(-58575i))), Struct_1(select(30521i, abs(~(-1i)), false)), any(vec4<bool>(true, true, !all(vec3<bool>(false, true, false)), true)), select(true, true, all(vec2<bool>(true, any(vec2<bool>(false, false))))));
    var_0 = func_4(Struct_5(vec2<i32>(var_0.a, var_0.a | 2147483647i), all(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), false)), !select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true), Struct_3(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec2<u32>(u_input.a, 1u) >> (reverseBits(u_input.d.yx) % vec2<u32>(32u)), u_input.c ^ vec3<u32>(48951u, 0u, 1u)), Struct_2(countOneBits(~vec3<i32>(5343i, var_0.a, -17830i)), func_4(Struct_5(vec2<i32>(-1i, 63581i), true, vec2<bool>(false, true), Struct_3(vec4<bool>(false, false, true, true), vec2<u32>(10398u, u_input.a), u_input.c), Struct_2(vec3<i32>(var_0.a, var_0.a, 29726i), Struct_1(0i))), Struct_1(34029i), any(vec3<bool>(true, true, true)), all(vec3<bool>(true, false, true))))), func_4(Struct_5(vec2<i32>(func_2().x, _wgslsmith_sub_i32(-1i, -2147483647i)), true, select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), Struct_3(vec4<bool>(true, true, true, true), abs(vec2<u32>(5897u, 1u)), u_input.d), Struct_2(select(vec3<i32>(-2147483647i, var_0.a, var_0.a), vec3<i32>(-23380i, var_0.a, 21349i), vec3<bool>(false, true, true)), func_4(Struct_5(vec2<i32>(var_0.a, 7900i), true, vec2<bool>(false, true), Struct_3(vec4<bool>(true, true, false, true), vec2<u32>(u_input.d.x, u_input.b), u_input.d), Struct_2(vec3<i32>(-7064i, var_0.a, 6797i), Struct_1(var_0.a))), Struct_1(var_0.a), true, false))), func_4(Struct_5(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, var_0.a), vec2<i32>(-22645i, var_0.a), vec2<i32>(var_0.a, var_0.a)), var_0.a >= -1i, select(vec2<bool>(true, false), vec2<bool>(true, false), false), Struct_3(vec4<bool>(true, false, true, true), u_input.c.yy, u_input.d), Struct_2(vec3<i32>(-1i, var_0.a, 1i), Struct_1(var_0.a))), func_4(Struct_5(vec2<i32>(var_0.a, -1i), true, vec2<bool>(false, true), Struct_3(vec4<bool>(true, true, false, false), vec2<u32>(u_input.a, 38223u), u_input.c), Struct_2(vec3<i32>(-2147483647i, -40038i, -1i), Struct_1(-1i))), Struct_1(-1i), select(false, false, true), true), any(vec3<bool>(false, true, false)), !all(vec3<bool>(true, false, false))), all(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, true))), all(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), any(vec2<bool>(false, false)) | true)));
    var_0 = func_4(Struct_5(max(~vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_0.a, 1i)), all(vec4<bool>(false, all(vec2<bool>(true, false)), false, true)), vec2<bool>(true, true), Struct_3(vec4<bool>(true, true, true, true), vec2<u32>(13375u, ~u_input.e), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 1u, u_input.e), vec3<u32>(u_input.d.x, u_input.c.x, 57580u), u_input.c)), Struct_2(_wgslsmith_div_vec3_i32(select(vec3<i32>(-87694i, var_0.a, var_0.a), vec3<i32>(7772i, var_0.a, 31324i), false), vec3<i32>(var_0.a, var_0.a, var_0.a) | vec3<i32>(var_0.a, var_0.a, var_0.a)), Struct_1(-var_0.a))), Struct_1(2147483647i), !(reverseBits(func_4(Struct_5(vec2<i32>(2147483647i, 2147483647i), true, vec2<bool>(true, false), Struct_3(vec4<bool>(true, true, false, true), vec2<u32>(u_input.a, 42149u), vec3<u32>(1u, u_input.e, 0u)), Struct_2(vec3<i32>(30461i, var_0.a, var_0.a), Struct_1(var_0.a))), Struct_1(var_0.a), true, true).a) <= -(0i >> (u_input.b % 32u))), true);
    let var_1 = select(vec2<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), any(vec2<bool>(any(vec4<bool>(false, false, false, false)), any(vec2<bool>(false, false))))), !select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, false, false))), true), true);
    var var_2 = 970f;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-383f, -756f, 619f, -831f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-236f, 579f, -1000f, 1074f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-101f, 688f, -619f, 1589f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(745f, -402f, 528f, 2474f), vec4<f32>(1109f, 1794f, 239f, 342f), vec4<bool>(true, false, var_1.x, var_1.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(119f, -904f, 2069f, 423f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-487f, 461f, 507f, -1398f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a);
}

