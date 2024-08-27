struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: i32) -> i32 {
    let var_0 = 53848u;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-654f - _wgslsmith_f_op_f32(min(802f, 877f))))), ~min(u_input.b, u_input.b), Struct_1(u_input.c.x, _wgslsmith_f_op_f32(max(675f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(251f - arg_0) - arg_0))), _wgslsmith_add_vec3_i32(~min(u_input.c.xyx, u_input.c.wyz), u_input.c.yxw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0)), arg_0))), false, Struct_1(u_input.a, _wgslsmith_f_op_f32(242f + _wgslsmith_f_op_f32(403f - -118f)), vec3<i32>((arg_1 >> (u_input.b.x % 32u)) ^ u_input.a, -2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(2147483647i, u_input.c.x)), reverseBits(u_input.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 304f) - vec2<f32>(arg_0, arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-428f, arg_0))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 2327f))))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - var_1.c.d.x)), ~(~vec4<u32>(var_1.b.x, abs(4294967295u), var_0 >> (var_0 % 32u), 22706u)), Struct_1(-countOneBits(~0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1470f, _wgslsmith_f_op_f32(var_1.e.b - -1752f))) - var_1.e.b), _wgslsmith_div_vec3_i32(var_1.e.c, ~vec3<i32>(u_input.c.x, -69044i, arg_1)), var_1.e.d), true, Struct_1(_wgslsmith_add_i32(firstLeadingBit(var_1.e.c.x) | 2147483647i, _wgslsmith_mod_i32(-2147483647i, 2147483647i)), var_1.a, ~vec3<i32>(-1i, countOneBits(-2147483647i), -19325i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + -1000f), -496f)));
    var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(228f * 1f) * var_1.c.b))), ~(((vec4<u32>(var_0, var_1.b.x, var_1.b.x, var_0) ^ vec4<u32>(var_1.b.x, u_input.b.x, 8875u, u_input.b.x)) << (u_input.b % vec4<u32>(32u))) | vec4<u32>(~4294967295u, ~0u, ~var_1.b.x, ~30881u)), var_1.e, all(vec2<bool>(true | var_1.d, false)) & (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -529f))) == -608f), Struct_1(~abs(-10984i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-821f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.d.x * arg_0))), -select(firstLeadingBit(u_input.c.wyw), vec3<i32>(u_input.a, arg_1, -21809i), select(vec3<bool>(true, false, true), vec3<bool>(true, var_1.d, false), vec3<bool>(true, true, var_1.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1571f, 417f))))))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.e.b))), arg_0)), vec4<u32>(62347u, 2975u, _wgslsmith_add_u32(var_0, 1u), var_0), var_1.c, all(!(!select(vec3<bool>(var_1.d, true, true), vec3<bool>(var_1.d, false, var_1.d), true))), var_1.c);
    return reverseBits(~select(_wgslsmith_add_i32(-1i, _wgslsmith_clamp_i32(var_1.e.a, var_1.e.a, 1i)), -2147483647i, any(!vec2<bool>(var_1.d, false))));
}

fn func_2() -> bool {
    var var_0 = ~(~func_3(-1548f, u_input.c.x));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(829f, -656f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1348f, 713f) + vec2<f32>(357f, -774f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1326f, -1000f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(100f, 3679f) + vec2<f32>(-306f, 2263f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-469f, -2349f) * vec2<f32>(-266f, -1246f))))))));
    let var_3 = _wgslsmith_mod_vec2_i32(abs(_wgslsmith_sub_vec2_i32(max(vec2<i32>(u_input.c.x, -2147483647i), -u_input.c.zz), abs(~vec2<i32>(0i, u_input.c.x)))), vec2<i32>(-((u_input.a >> (u_input.b.x % 32u)) << (~u_input.b.x % 32u)), u_input.a));
    var var_4 = vec3<i32>(var_3.x ^ var_3.x, _wgslsmith_dot_vec4_i32(max(vec4<i32>(_wgslsmith_mod_i32(var_3.x, 2147483647i), ~var_3.x, max(var_3.x, -15086i), var_3.x), u_input.c), ~_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(-2147483647i, 1i, var_3.x, 12424i)), abs(u_input.c))), u_input.a);
    return !var_1;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = abs(arg_0);
    var_0 = ~(~(~arg_0));
    var_0 = 7464u;
    var_0 = u_input.b.x;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-42099i << (u_input.b.x % 32u), max(u_input.c.x, -97629i)), u_input.a), vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(~u_input.c.xw, vec2<i32>(arg_2, 1943i), abs(u_input.c.xw)));
    return _wgslsmith_f_op_f32(select(1397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))))), arg_0 >= u_input.b.x));
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = firstLeadingBit(firstTrailingBit(vec4<i32>(firstTrailingBit(~2147483647i), abs(-2147483647i), 2147483647i, 14479i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-184f, arg_0.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -800f) * arg_0.x));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(select(1142f, 1268f, func_2())), 0i >> (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 13713u)) % 32u)))), ~(u_input.b << (~(~u_input.b) % vec4<u32>(32u))), Struct_1(select(39870i, abs(u_input.a) | u_input.a, true), 298f, _wgslsmith_mult_vec3_i32(var_0.zyz, vec3<i32>(var_0.x, 10007i, u_input.c.x)) | reverseBits(vec3<i32>(-43238i, -36884i, var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -932f), arg_0.x)), var_1)), !(!(u_input.b.x > u_input.b.x)), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(var_0, vec4<i32>(1i, u_input.a, -1i, -22703i) << (u_input.b % vec4<u32>(32u))), reverseBits(abs(vec4<i32>(1i, 1i, var_0.x, -49117i)))), var_1, ~min(vec3<i32>(var_0.x, 17200i, 41801i), vec3<i32>(u_input.c.x, 36918i, var_0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.zx), vec2<f32>(_wgslsmith_f_op_f32(var_1 - 1022f), 2012f), false))));
    var var_3 = countOneBits(abs(_wgslsmith_sub_vec3_u32(var_2.b.yzw, _wgslsmith_sub_vec3_u32(var_2.b.wwz, ~var_2.b.xyw))));
    let var_4 = firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(15012u, 1u), var_2.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(14497u, 1u), vec2<u32>(1u, u_input.b.x)) % 32u), 4385u, ~var_3.x)) << (reverseBits(~firstLeadingBit(abs(vec4<u32>(var_2.b.x, var_2.b.x, var_2.b.x, 0u)))) % vec4<u32>(32u));
    return !(!select(vec3<bool>(var_2.d, select(false, var_2.d, true), true), select(!vec3<bool>(false, var_2.d, var_2.d), vec3<bool>(false, true, true), !vec3<bool>(var_2.d, var_2.d, true)), !select(vec3<bool>(true, var_2.d, true), vec3<bool>(var_2.d, var_2.d, true), var_2.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(true, u_input.a <= 2147483647i, all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, false), func_1(vec3<f32>(-1027f, -1345f, 165f)))));
    var var_1 = Struct_1(_wgslsmith_mult_i32(-1i >> ((u_input.b.x >> (_wgslsmith_clamp_u32(u_input.b.x, 1u, u_input.b.x) % 32u)) % 32u), _wgslsmith_dot_vec3_i32(u_input.c.wzz, vec3<i32>(11829i, 0i, u_input.c.x)) | u_input.c.x), _wgslsmith_f_op_f32(-489f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-856f)) + _wgslsmith_f_op_f32(sign(1852f))))), abs(firstLeadingBit(vec3<i32>(u_input.c.x, ~u_input.c.x, min(-1i, -1i)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1472f, _wgslsmith_f_op_f32(sign(1240f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f))))));
    var_1 = Struct_1(18755i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -179f) * var_1.b), min(vec3<i32>(-_wgslsmith_sub_i32(7794i, 59558i), u_input.c.x, u_input.c.x), max((vec3<i32>(u_input.a, var_1.c.x, u_input.c.x) << (vec3<u32>(u_input.b.x, 1u, u_input.b.x) % vec3<u32>(32u))) ^ var_1.c, firstTrailingBit(vec3<i32>(u_input.c.x, 1229i, u_input.a) | u_input.c.wzx))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-337f * -608f), -552f) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.d)) + var_1.d), vec2<f32>(var_1.b, var_1.d.x))));
    var var_2 = ~_wgslsmith_mod_u32(u_input.b.x, 0u);
    var_2 = 37841u;
    let var_3 = u_input.c;
    var_2 = 0u;
    var_2 = reverseBits(abs(~(~(u_input.b.x ^ 35970u))));
    let x = u_input.a;
    s_output = StorageBuffer(31627u, ~u_input.b, _wgslsmith_f_op_f32(-748f + _wgslsmith_f_op_f32(var_1.b * var_1.b)));
}

