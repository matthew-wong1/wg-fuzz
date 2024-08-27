struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-10747i, vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = true && global0.b.x;
    global0 = Struct_2(abs(2147483647i & ~min(global0.a, -20842i)), vec2<bool>(true, var_0), global0.c);
    let var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, ~u_input.c, u_input.d ^ 0u, 34521u | u_input.c), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(0u, 30620u, u_input.d, u_input.d) >> (vec4<u32>(u_input.c, 0u, u_input.c, u_input.d) % vec4<u32>(32u))), min(select(vec4<u32>(1u, u_input.d, u_input.c, u_input.c), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<bool>(global0.b.x, global0.c.x, true, false)), reverseBits(vec4<u32>(1u, u_input.d, u_input.c, 32683u))), firstLeadingBit(~vec4<u32>(u_input.c, 13996u, 1u, u_input.d)))), true);
    global0 = Struct_2(select(_wgslsmith_mod_i32(~(~u_input.e), _wgslsmith_mult_i32(firstLeadingBit(global0.a), -global0.a)), ~13207i, true), select(global0.c, global0.c, any(!vec3<bool>(var_1.b, global0.c.x, var_0))), global0.b);
    var var_2 = 1990f;
    return global0.a;
}

fn func_2(arg_0: vec4<f32>) -> f32 {
    global0 = Struct_2(1i, !global0.c, select(global0.c, select(vec2<bool>(any(vec4<bool>(global0.b.x, global0.c.x, global0.b.x, global0.c.x)), false), global0.b, !global0.c), global0.b.x));
    global0 = Struct_2(func_3(), select(select(select(select(vec2<bool>(global0.c.x, global0.b.x), global0.b, global0.b.x), vec2<bool>(true, false), global0.c.x), vec2<bool>(false, !global0.b.x), any(vec4<bool>(global0.b.x, global0.c.x, global0.c.x, global0.b.x))), global0.c, global0.b.x), select(select(select(select(vec2<bool>(global0.c.x, true), global0.c, global0.c), !vec2<bool>(global0.c.x, false), global0.b), vec2<bool>(all(vec2<bool>(false, false)), true), !(!global0.b)), !global0.c, global0.b));
    let var_0 = countOneBits(_wgslsmith_mult_vec4_u32(countOneBits(countOneBits(vec4<u32>(u_input.d, 1u, 1u, 40506u)) | abs(vec4<u32>(7407u, u_input.d, 27480u, 4294967295u))), ~(max(vec4<u32>(0u, u_input.d, u_input.d, u_input.c), vec4<u32>(u_input.c, u_input.d, 3736u, u_input.d)) ^ vec4<u32>(u_input.c, u_input.c, u_input.d, 0u))));
    let var_1 = Struct_3(Struct_1(~(~108808u), select(false, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0.x)))))), vec4<u32>(35689u, u_input.d, ~(~var_0.x) >> (reverseBits(~1u) % 32u), 5387u));
    let var_2 = select(vec2<bool>(!global0.c.x, true), global0.c, true);
    return _wgslsmith_div_f32(-930f, _wgslsmith_f_op_f32(max(855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(var_1.b)))))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_1(1u, any(select(vec3<bool>(4294967295u < u_input.d, false, !global0.c.x), select(!vec3<bool>(global0.c.x, global0.c.x, false), select(vec3<bool>(true, arg_2.c.x, false), vec3<bool>(false, arg_2.b.x, arg_2.c.x), vec3<bool>(arg_2.c.x, arg_2.c.x, global0.b.x)), global0.b.x), !select(vec3<bool>(global0.c.x, global0.b.x, true), vec3<bool>(global0.b.x, false, arg_2.b.x), vec3<bool>(true, false, arg_2.c.x)))));
    var var_1 = _wgslsmith_f_op_f32(440f - 1520f);
    let var_2 = Struct_1(var_0.a, all(!vec3<bool>(global0.c.x, var_0.b, true)));
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(select(1u, 19647u, true), var_0.a), vec2<u32>(u_input.d << (var_2.a % 32u), ~6655u)), select(~vec2<u32>(var_2.a, 4294967295u), ~vec2<u32>(1u, u_input.c), global0.c)) >> (vec2<u32>(var_2.a, var_0.a) % vec2<u32>(32u));
    let var_4 = vec3<bool>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.a, 31293i), func_3()) < (1i << (~var_2.a % 32u)), false, true);
    return func_3();
}

fn func_1() -> vec4<f32> {
    global0 = Struct_2(func_4(global0.a, vec4<f32>(_wgslsmith_f_op_f32(-454f + 313f), 2386f, _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-457f, 1140f, 1033f, 911f), vec4<f32>(1212f, -967f, -606f, -532f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1804f, -2069f) + -1122f)), Struct_2(u_input.b, !vec2<bool>(true, global0.b.x), select(!global0.c, vec2<bool>(global0.b.x, global0.b.x), select(global0.c, global0.b, global0.c)))), vec2<bool>(true, !global0.c.x), !(!vec2<bool>(global0.b.x, false)));
    let var_0 = func_4(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-259f, _wgslsmith_f_op_f32(func_2(vec4<f32>(898f, -1514f, 1521f, 1000f))), _wgslsmith_f_op_f32(-164f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -679f))))), Struct_2(-func_4(global0.a, vec4<f32>(-1176f, -201f, -784f, 1050f), Struct_2(-9819i, global0.c, global0.c)) & u_input.b, select(select(global0.b, select(vec2<bool>(global0.b.x, true), vec2<bool>(true, false), global0.c), vec2<bool>(global0.b.x, true)), vec2<bool>(global0.b.x && global0.b.x, global0.c.x), true), select(!global0.b, global0.c, global0.c.x)));
    global0 = Struct_2(-2147483647i, select(vec2<bool>(all(!vec4<bool>(true, global0.c.x, global0.b.x, global0.c.x)), false), vec2<bool>(!all(vec4<bool>(global0.c.x, false, false, true)), true), all(!vec4<bool>(true, global0.c.x, true, true))), !(!select(select(global0.c, vec2<bool>(global0.c.x, true), global0.c), vec2<bool>(false, true), vec2<bool>(false, global0.b.x))));
    var var_1 = Struct_3(Struct_1(u_input.c, true), -1664f, abs(vec4<u32>(abs(min(45411u, u_input.d)), abs(4294967295u), select(~u_input.c, ~37487u, global0.c.x), ~_wgslsmith_clamp_u32(4294967295u, u_input.c, u_input.c))));
    let var_2 = -1i | _wgslsmith_add_i32(-16225i, _wgslsmith_div_i32(firstLeadingBit(~42310i), abs(func_3())));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1040f)) - var_1.b), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * 833f) + _wgslsmith_f_op_f32(step(-1000f, 324f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, 152f, var_1.b)), vec4<f32>(var_1.b, 588f, 135f, -1757f))))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, _wgslsmith_f_op_f32(var_1.b - -1000f), _wgslsmith_f_op_f32(var_1.b + -722f), var_1.b), vec4<f32>(var_1.b, -689f, 982f, _wgslsmith_f_op_f32(min(var_1.b, -797f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-590f, -923f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-862f + 1f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1888f + 1000f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f * -225f), -106f, _wgslsmith_f_op_f32(abs(847f)), -833f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1102f, -569f, 452f, -453f) * vec4<f32>(369f, -2336f, -329f, 687f)))));
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(842f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1275f, var_0.x, true)), var_0.x, !global0.b.x))), var_0.x), var_0.wyy);
    let var_2 = !select(select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global0.c.x, global0.c.x, global0.b.x, global0.b.x), global0.c.x), !vec4<bool>(true, global0.c.x, global0.c.x, global0.b.x), any(!vec2<bool>(global0.c.x, true))), !vec4<bool>(global0.b.x || global0.b.x, var_1.x > var_1.x, any(vec4<bool>(false, global0.b.x, false, global0.b.x)), true), any(select(vec4<bool>(global0.b.x, true, global0.c.x, global0.b.x), select(vec4<bool>(false, false, false, global0.c.x), vec4<bool>(global0.b.x, true, global0.c.x, false), true), true)));
    var_1 = var_0.xzx;
    let var_3 = Struct_1(_wgslsmith_add_u32(min(~31360u, u_input.d), _wgslsmith_sub_u32(abs(1u), ~_wgslsmith_div_u32(4294967295u, u_input.c))), global0.b.x);
    var var_4 = Struct_1(((min(0u, 53124u) & u_input.c) << ((~u_input.c ^ ~u_input.c) % 32u)) | _wgslsmith_add_u32(abs(69122u), ~(~1u)), true);
    global0 = Struct_2(u_input.b, var_2.yz, var_2.xx);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(var_1.x * 1f), -452f), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(~(vec2<i32>(u_input.a, 35826i) & vec2<i32>(-1i, 0i)), vec2<i32>(global0.a, 0i) << (~vec2<u32>(1u, u_input.c) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, global0.a), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.e, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(60945i, 0i), vec2<i32>(-11677i, u_input.a))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), var_0.x)))), _wgslsmith_mult_u32(_wgslsmith_add_u32(~99669u, var_3.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a, 4294967295u, var_4.a, 47727u), vec4<u32>(46063u, var_3.a, var_4.a, var_4.a)) >> (var_4.a % 32u)) >> (_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(var_3.a, var_4.a, 4294967295u, var_3.a)), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(10523u, var_3.a, 12239u, 21453u)), max(vec4<u32>(var_3.a, 29921u, 47230u, var_3.a), vec4<u32>(19130u, u_input.d, 4294967295u, 4294967295u)))) % 32u), ~(-(~vec3<i32>(u_input.b, u_input.e, -2147483647i))));
}

