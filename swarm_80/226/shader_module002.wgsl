struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = vec2<bool>(!(~(~95526u) <= arg_0.x), any(select(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, false), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), true)));
    let var_1 = ~arg_0;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1466f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1037f + -617f))))), Struct_2(u_input.b.x), vec2<u32>(var_1.x, reverseBits(arg_0.x)), vec2<i32>(u_input.a.x, ~_wgslsmith_div_i32(17008i, u_input.e)), _wgslsmith_f_op_f32(437f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(644f * 1000f))));
    var var_3 = var_2.b;
    let var_4 = Struct_1(u_input.e, _wgslsmith_clamp_vec3_i32(~(~abs(u_input.a)), u_input.a, ~vec3<i32>(var_2.d.x, var_2.d.x, var_2.d.x) | u_input.a));
    return (_wgslsmith_mult_u32(_wgslsmith_sub_u32(~u_input.d.x, var_3.a), firstTrailingBit(1u)) ^ var_1.x) ^ (abs(var_3.a) | var_3.a);
}

fn func_2() -> f32 {
    let var_0 = vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(min(u_input.b.x, u_input.b.x), 12695u, u_input.d.x), vec3<u32>(_wgslsmith_add_u32(u_input.c.x, 0u), 1u, func_3(vec2<u32>(69365u, 0u)))) == ((u_input.d.x | _wgslsmith_mod_u32(66736u, u_input.c.x)) >> (abs(1u) % 32u)), abs(-2147483647i) != ~max(_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.xz), u_input.e), !any(vec2<bool>(true, true)), any(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false))));
    var var_1 = Struct_1(firstTrailingBit(-20556i), vec3<i32>(~_wgslsmith_add_i32(u_input.a.x, u_input.e), -24705i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -u_input.a, vec3<i32>(722i, u_input.a.x, 32454i) >> (u_input.c % vec3<u32>(32u)))));
    var_1 = Struct_1(u_input.e, vec3<i32>(_wgslsmith_mod_i32(u_input.e, 2147483647i), countOneBits(firstLeadingBit(var_1.b.x | var_1.a)), var_1.a));
    let var_2 = firstTrailingBit(abs(_wgslsmith_mod_vec4_i32(-vec4<i32>(-2171i, 1i, var_1.a, -1i), vec4<i32>(1i, var_1.a, var_1.b.x, u_input.e) | vec4<i32>(u_input.e, 0i, -2147483647i, var_1.a))) >> (~(~u_input.d) % vec4<u32>(32u)));
    var_1 = Struct_1(_wgslsmith_mult_i32(~1i, _wgslsmith_add_i32(var_2.x, var_1.b.x << (_wgslsmith_div_u32(1909u, u_input.d.x) % 32u))), vec3<i32>(u_input.e, _wgslsmith_mod_i32(-var_1.a, ~1i), -_wgslsmith_sub_i32(-33410i, u_input.a.x)) & ~vec3<i32>(var_1.b.x, 17624i, -var_1.b.x));
    return 1011f;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(arg_3.x, countOneBits(15352i)), 0i);
    var var_1 = Struct_3(arg_0, Struct_2(~2822u), u_input.b, abs(arg_3), _wgslsmith_f_op_f32(select(1422f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1699f), arg_0.x), false)));
    var_0 = arg_2.b.xx;
    var var_2 = all(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true))) & !(_wgslsmith_clamp_u32(~4294967295u, ~u_input.b.x, u_input.c.x) != _wgslsmith_clamp_u32(max(52442u, 66795u), u_input.b.x >> (var_1.b.a % 32u), abs(var_1.c.x)));
    var var_3 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(46431u, ~u_input.b.x), u_input.d.x, u_input.d.x ^ var_1.b.a), ~vec3<u32>(min(_wgslsmith_sub_u32(var_1.b.a, 27765u), ~var_1.c.x), u_input.b.x >> (var_1.c.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, 11903u, u_input.b.x) >> (u_input.d % vec4<u32>(32u)), ~vec4<u32>(25946u, var_1.c.x, var_1.b.a, 0u))));
}

fn func_1() -> bool {
    let var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(func_2()), 554f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.a.x, 16890i), 2147483647i) ^ 0i, u_input.a.x, _wgslsmith_div_i32(4228i, u_input.e)), Struct_1(_wgslsmith_sub_i32(u_input.e, ~_wgslsmith_mod_i32(35128i, u_input.a.x)), ~(select(u_input.a, u_input.a, vec3<bool>(true, true, false)) & (u_input.a & u_input.a))), firstTrailingBit(_wgslsmith_sub_vec2_i32(u_input.a.zy, vec2<i32>(firstLeadingBit(u_input.e), u_input.e))));
    let var_1 = ~firstTrailingBit((~u_input.c.x << (~66132u % 32u)) << (8550u % 32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(496f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1142f + 1494f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1025f)))));
    let var_3 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), var_2 < var_2)), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), true), vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), true)), any(vec4<bool>(-1i >= u_input.a.x, true, true, true)), false));
    return any(vec2<bool>(any(var_3.ywy), any(select(select(vec2<bool>(var_3.x, var_3.x), var_3.xy, var_3.x), select(var_3.yw, vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, var_3.x)), !vec2<bool>(true, var_3.x)))));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !select(vec3<bool>(true, true, true), select(vec3<bool>(func_1(), all(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, true, true, true))), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), any(vec2<bool>(false, false))), vec3<bool>(arg_1.x >= arg_1.x, true, true)), true);
    let var_1 = arg_2;
    let var_2 = ~abs(select(-_wgslsmith_div_vec3_i32(u_input.a, var_1.b), countOneBits(-arg_2.b), vec3<bool>(all(vec3<bool>(false, true, var_0.x)), var_0.x, false)));
    var var_3 = Struct_3(vec3<f32>(-128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(546f - arg_1.x), 491f))), _wgslsmith_div_f32(499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1291f)))), Struct_2(min(min(arg_0, ~u_input.b.x), ~(arg_0 & 52113u))), reverseBits(_wgslsmith_sub_vec2_u32(u_input.c.yz << (_wgslsmith_sub_vec2_u32(vec2<u32>(15838u, u_input.c.x), u_input.b) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(1540u, 6240u) & u_input.b, vec2<u32>(u_input.c.x, arg_0)))), vec2<i32>(select(arg_2.a, ~(-39687i), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, arg_0), vec2<u32>(4294967295u, 1u)) == abs(0u)), ~(~2147483647i & arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1002f)), arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -353f))));
    var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, 391f, var_3.e)))), arg_1.yxy)), var_3.b, ~(~(~_wgslsmith_mod_vec2_u32(u_input.d.xw, var_3.c))), ~select(firstTrailingBit(var_1.b.yx), _wgslsmith_mult_vec2_i32(~arg_2.b.xx, abs(vec2<i32>(var_2.x, u_input.a.x))), select(select(var_0.zz, vec2<bool>(true, var_0.x), vec2<bool>(false, false)), var_0.yx, select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) * var_3.a.x));
    return Struct_1(-_wgslsmith_sub_i32(reverseBits(1i), ~(~(-2147483647i))), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(~var_3.d.x, -11114i, firstTrailingBit(u_input.e)), -(var_1.b | vec3<i32>(u_input.a.x, 2686i, 1i)), vec3<i32>(~arg_2.b.x, reverseBits(var_2.x), _wgslsmith_add_i32(56274i, 0i))), -u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(85513u, 71055u, !(func_1() && true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-688f, -765f, -1207f, 940f))) + vec4<f32>(602f, 1410f, -1460f, -1191f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-469f, 606f, -1000f, 704f) + vec4<f32>(-418f, 925f, -996f, -506f)))), Struct_1(-26738i, abs(-u_input.a)));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-518f))))))));
    var var_2 = vec2<f32>(var_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_1)), var_1, u_input.b.x <= 1u)));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) - var_2.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(123f + -445f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1331f)))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(abs(u_input.d), vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, 14941u, u_input.b.x), ~10197u, u_input.d.x ^ 80340u, 0u | u_input.d.x) >> (~(~u_input.d) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), -1000f))));
}

