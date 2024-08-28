struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_2,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> bool {
    let var_0 = min(u_input.a.x, u_input.a.x) << (~1u % 32u);
    let var_1 = _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, var_0), ~1u);
    let var_2 = abs(~_wgslsmith_add_i32(u_input.c.x, u_input.c.x)) << (u_input.a.x % 32u);
    let var_3 = vec2<u32>(0u, var_0);
    var var_4 = true;
    return 274f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1110f))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = !(!vec2<bool>(select(select(false, false, false), true, true), false));
    var_0 = select(select(!(!select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), true)), vec2<bool>(!all(vec4<bool>(var_0.x, true, false, var_0.x)), var_0.x & true), select(!(!vec2<bool>(false, var_0.x)), vec2<bool>(!var_0.x, arg_1.x < -1i), var_0.x)), select(select(vec2<bool>(var_0.x, arg_3.a.a <= arg_0.a.e.a), select(vec2<bool>(var_0.x, true), !vec2<bool>(false, var_0.x), false), all(vec4<bool>(var_0.x, true, var_0.x, true)) || select(var_0.x, false, var_0.x)), !select(select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), var_0.x), !vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(true, false))), !(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), var_0.x))), all(select(!vec2<bool>(true, var_0.x), vec2<bool>(false, var_0.x), true)));
    let var_1 = _wgslsmith_f_op_f32(round(1f));
    var_0 = vec2<bool>(true, !(!var_0.x));
    var_0 = vec2<bool>(var_0.x, var_0.x);
    return _wgslsmith_mult_vec4_i32(abs(-select(_wgslsmith_add_vec4_i32(u_input.b, u_input.b), firstLeadingBit(u_input.b), !vec4<bool>(var_0.x, false, false, true))), u_input.b);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<f32>) -> vec2<i32> {
    var var_0 = vec2<u32>(max(arg_1.x, u_input.a.x), _wgslsmith_sub_u32(4294967295u, arg_1.x));
    var var_1 = _wgslsmith_sub_vec4_i32(func_3(Struct_4(Struct_3(arg_1.wwx, 0u, Struct_2(Struct_1(u_input.b.x), Struct_1(u_input.d)), -665f, Struct_1(u_input.b.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, arg_2.x, -1557f, -916f), vec4<f32>(arg_2.x, arg_0, 751f, -1173f))), 1701f, ~arg_1.x), ~(vec3<i32>(-2147483647i, -62356i, u_input.d) & vec3<i32>(u_input.b.x, u_input.d, u_input.d)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.d, 0i, 44766i, 85243i)), 2147483647i), Struct_2(Struct_1(1i), Struct_1(u_input.b.x))) << (vec4<u32>(~(var_0.x ^ var_0.x), 9224u, countOneBits(var_0.x), 71978u) % vec4<u32>(32u)), countOneBits(select(_wgslsmith_div_vec4_i32(countOneBits(u_input.b), select(vec4<i32>(92172i, u_input.d, -1i, u_input.b.x), vec4<i32>(-21939i, 1i, u_input.b.x, -1i), vec4<bool>(false, false, false, false))), _wgslsmith_mod_vec4_i32(~u_input.b, vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, 1i)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)))));
    var var_2 = _wgslsmith_add_vec3_u32(arg_1.wwx, arg_1.yyz) >> (arg_1.xww % vec3<u32>(32u));
    var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(select(u_input.b, u_input.b, vec4<bool>(false, true, false, false)), vec4<i32>(-39305i, var_1.x, u_input.c.x, u_input.b.x)), u_input.b);
    let var_3 = Struct_4(Struct_3(countOneBits(select(arg_1.zwx & vec3<u32>(var_2.x, arg_1.x, var_2.x), vec3<u32>(33934u, var_0.x, u_input.a.x), vec3<bool>(false, true, true))), 0u, Struct_2(Struct_1(var_1.x), Struct_1(-var_1.x)), _wgslsmith_f_op_f32(sign(arg_2.x)), Struct_1(~(~u_input.b.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 437f, arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1417f, -1358f, -524f)))))), _wgslsmith_f_op_f32(select(-1011f, _wgslsmith_f_op_f32(-arg_0), all(vec2<bool>(true, true)))), u_input.a.x);
    return _wgslsmith_sub_vec2_i32(var_1.xy, -vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c, ~var_1.xx), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, var_1.x, var_1.x), abs(29535i))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_mult_u32(1u, 4294967295u);
    var var_1 = -1306f;
    var var_2 = !(true && (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.d - arg_1.d))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.d, -1036f)))));
    let var_3 = arg_2.x;
    var_0 = arg_1.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.d + -250f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -931f) - _wgslsmith_f_op_f32(-arg_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i ^ u_input.d;
    var_0 = u_input.d | _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b.zwy, _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -2147483647i, u_input.d), abs(u_input.b.yww))), u_input.d >> (_wgslsmith_mult_u32(69733u, u_input.a.x) % 32u));
    var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(-134f + 1825f), -376f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1413f, 1000f, -560f), vec3<f32>(658f, -128f, 387f)))), vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(), Struct_3(vec3<u32>(u_input.a.x, 4294967295u, 0u), u_input.a.x, Struct_2(Struct_1(-41636i), Struct_1(-1i)), 774f, Struct_1(-1i)), func_2(968f, vec4<u32>(u_input.a.x, 51073u, 1147u, 0u), vec3<f32>(1095f, 405f, -189f)), _wgslsmith_sub_u32(u_input.a.x, 13235u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f * -849f)), -463f)));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(966f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, Struct_3(vec3<u32>(26708u, 11666u, u_input.a.x), 4294967295u, Struct_2(Struct_1(-1i), Struct_1(u_input.d)), var_1.x, Struct_1(-13311i)), vec2<i32>(u_input.d, 35072i), 32714u)) - var_1.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.xx, _wgslsmith_f_op_vec2_f32(-var_1.yz), vec2<bool>(true, var_2))) + _wgslsmith_f_op_vec2_f32(floor(var_1.xx)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, max(u_input.b.x, 2147483647i), abs(33474i), u_input.b.x), vec4<i32>(u_input.b.x ^ u_input.d, -u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -10563i, -931i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), -40144i)), ~(i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -282f, 1184f) - vec3<f32>(var_1.x, var_1.x, -208f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-514f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(464f, -398f, var_1.x))))), abs(4294967295u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -1661f, var_1.x, -1026f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-234f, -1000f, var_1.x, -1000f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-549f, var_1.x, -506f, var_1.x))))), vec4<bool>(var_2, any(vec4<bool>(false, var_2, var_2, false)), false, var_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1202f, -381f, var_1.x, 854f))))));
}

