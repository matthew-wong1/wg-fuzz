struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 686f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(652f - 618f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(397f, -279f))) * -929f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(287f))) * _wgslsmith_f_op_f32(1154f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1184f))))));
    let var_2 = (reverseBits(vec4<u32>(~u_input.d, firstLeadingBit(u_input.c), ~1u, 4294967295u)) & max(select(~vec4<u32>(u_input.d, u_input.d, u_input.c, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.c, 93845u), vec4<u32>(u_input.c, u_input.d, u_input.d, 4294967295u)), vec4<bool>(true, true, true, true)), vec4<u32>(u_input.d, u_input.c, u_input.d, u_input.d) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 37173u, 0u, 2109u), vec4<u32>(1u, u_input.d, 3207u, u_input.d), vec4<u32>(u_input.d, 0u, u_input.c, 4294967295u)))) | select(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(88619u, 24726u), ~u_input.d, 15361u, u_input.c), ~firstLeadingBit(vec4<u32>(u_input.c, 26761u, 0u, 4294967295u))), ~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(947u, 0u, 4294967295u, 107950u), vec4<u32>(u_input.c, u_input.c, 68279u, u_input.d))), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true))));
    return all(vec3<bool>(true, true, true));
}

fn func_3() -> bool {
    let var_0 = -508f;
    let var_1 = 2370u;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1474f, var_0));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(var_0 - var_0)), _wgslsmith_f_op_f32(ceil(-1024f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -440f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) - _wgslsmith_f_op_f32(612f + 962f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, var_0), -116f), _wgslsmith_f_op_f32(-var_0) != _wgslsmith_f_op_f32(min(149f, 208f)))))));
    let var_2 = vec4<i32>(1i, ~u_input.a, u_input.b, u_input.b);
    return false;
}

fn func_2(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> Struct_5 {
    let var_0 = Struct_4(any(vec3<bool>(func_3(), true, -59185i == _wgslsmith_mult_i32(12773i, u_input.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(1118f, 190f, arg_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -2157f, arg_0.x) - vec3<f32>(358f, arg_0.x, arg_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), arg_0.x, _wgslsmith_f_op_f32(782f - arg_0.x))), Struct_1(firstTrailingBit(~1i >> (abs(u_input.c) % 32u)), -(55476i << ((u_input.d & u_input.c) % 32u)), all(vec4<bool>(all(vec4<bool>(arg_1, arg_1, false, true)), true | arg_1, arg_1 | false, all(vec2<bool>(true, arg_1))))), Struct_1(_wgslsmith_add_i32(-(35200i & u_input.b), -53933i), abs(_wgslsmith_dot_vec4_i32(max(vec4<i32>(46069i, 36065i, arg_2, arg_2), vec4<i32>(26142i, -29175i, 2147483647i, arg_2)), vec4<i32>(u_input.b, -2147483647i, arg_2, -2147483647i))), arg_1), ~vec3<u32>(1u, reverseBits(4294967295u << (u_input.d % 32u)), max(u_input.c, u_input.c) ^ u_input.d));
    let var_1 = Struct_1(firstTrailingBit(~firstTrailingBit(_wgslsmith_mult_i32(arg_2, u_input.a))), 1i, any(!(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false), false))));
    global0 = -1059f;
    var var_2 = var_1;
    let var_3 = _wgslsmith_clamp_u32(0u & u_input.c, reverseBits(~_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_0.e.x, 1u), 1u)), var_0.e.x);
    return Struct_5(any(select(select(select(vec4<bool>(false, var_2.c, arg_1, false), vec4<bool>(var_0.a, true, var_2.c, arg_1), true), select(vec4<bool>(var_2.c, true, false, arg_1), vec4<bool>(false, false, false, true), vec4<bool>(false, arg_1, var_0.c.c, var_2.c)), var_0.c.c), !(!vec4<bool>(var_0.a, true, var_1.c, arg_1)), false)), false, u_input.d, Struct_3(var_3, max(~(~u_input.b), i32(-1i) * -23230i), true, 2147483647i));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: vec2<u32>, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = vec2<bool>(true, false);
    var var_1 = firstLeadingBit(~(~0u));
    var var_2 = arg_1.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-651f, 175f), -316f, any(arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1603f)), 772f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1971f, -464f)), _wgslsmith_f_op_f32(step(-326f, -241f))))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(1198f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1023f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -588f))))));
    var var_4 = select(arg_3, vec2<bool>(all(!vec4<bool>(var_0.x, true, var_0.x, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, 4294967295u), vec2<u32>(arg_1.c, u_input.d)) <= abs(firstTrailingBit(arg_1.d.a))), true);
    return arg_1.d;
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: vec2<bool>) -> i32 {
    let var_0 = ~((((vec2<u32>(arg_1.a, arg_1.a) | vec2<u32>(17115u, u_input.d)) << (~vec2<u32>(61116u, arg_1.a) % vec2<u32>(32u))) >> (vec2<u32>(1u ^ u_input.d, arg_1.a) % vec2<u32>(32u))) & (select(vec2<u32>(80786u, u_input.d), ~vec2<u32>(4294967295u, 0u), arg_3) & ~reverseBits(vec2<u32>(arg_1.a, 1u))));
    global0 = -1173f;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -424f), 1f, true)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 151f))))), -vec3<i32>(~arg_2.x, 1i, min(0i, arg_1.b) | 1i), Struct_1(arg_1.b, abs(reverseBits(-arg_1.d)), arg_3.x), arg_1.a, abs(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(arg_1.b, arg_0, -1i) | vec3<i32>(arg_0, 1753i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, arg_0), vec3<i32>(u_input.a, arg_0, -1i)), !arg_3.x), ~(-vec3<i32>(1479i, arg_1.b, arg_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-32603i, u_input.a, 2147483647i) << (vec3<u32>(arg_1.a, arg_1.a, var_0.x) % vec3<u32>(32u)), vec3<i32>(39877i, arg_0, arg_1.d), vec3<i32>(arg_1.b, -1i, arg_1.d)))));
    var var_2 = Struct_4(true, vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-303f)) - 1098f)), Struct_1(-1i, -_wgslsmith_mod_i32(~var_1.b.x, -var_1.b.x), true), var_1.c, ~vec3<u32>(var_1.d, 1u << (func_2(vec3<f32>(var_1.a, -1000f, var_1.a), arg_1.c, var_1.b.x).c % 32u), firstTrailingBit(var_0.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-355f, -1000f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.xy), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a, var_1.a), var_2.b.yx)), true)) - var_2.b.yx) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-428f, var_1.a) + vec2<f32>(-221f, -1020f)) - _wgslsmith_f_op_vec2_f32(round(var_2.b.yz))) + var_2.b.xy))));
    return _wgslsmith_clamp_i32(0i, select(arg_2.x, ~min(-var_2.c.b, u_input.b), any(vec4<bool>(!arg_3.x, true, !arg_3.x, true))), 44629i);
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = countOneBits(arg_2.b);
    let var_1 = abs(abs(~vec3<u32>(u_input.d, 20808u, u_input.d))) ^ select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.d, 18456u, 4294967295u), vec4<u32>(u_input.d, u_input.c, 37318u, u_input.c)) << (95265u % 32u), u_input.c, 7752u), _wgslsmith_div_vec3_u32((vec3<u32>(11477u, u_input.d, 4294967295u) & vec3<u32>(42505u, u_input.c, u_input.c)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(61852u, 1u, u_input.c), vec3<u32>(68491u, u_input.c, 24534u)) % vec3<u32>(32u)), vec3<u32>(~u_input.d, u_input.d, u_input.d)), arg_0.x);
    var var_2 = vec4<f32>(1076f, _wgslsmith_f_op_f32(-2091f + _wgslsmith_f_op_f32(f32(-1f) * -525f)), _wgslsmith_div_f32(-1220f, -846f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1598f), var_2.x));
    var var_3 = Struct_3(min(0u, 1u), arg_2.a, arg_0.x == false, _wgslsmith_add_i32(firstTrailingBit(func_5(~arg_1.b, func_4(-904i, Struct_5(false, false, var_1.x, Struct_3(u_input.c, -12564i, arg_1.c, arg_1.b)), vec2<u32>(var_1.x, 1u), vec2<bool>(false, arg_2.c)), vec2<i32>(0i, -15855i) << (var_1.yy % vec2<u32>(32u)), arg_0.yy)), ~func_5(countOneBits(2147483647i), Struct_3(0u, arg_1.a, arg_2.c, -7734i), max(vec2<i32>(0i, arg_1.b), vec2<i32>(0i, 51512i)), arg_0.xx)));
    return var_2.xww;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global0 = 225f;
    global0 = 101f;
    let var_1 = firstLeadingBit(u_input.d);
    var var_2 = _wgslsmith_f_op_vec3_f32(func_6(vec3<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true, select(true, any(vec4<bool>(true, true, true, true)), func_1())), Struct_1(func_5(u_input.a, func_4(-2214i | u_input.b, func_2(vec3<f32>(355f, 449f, 1110f), true, u_input.b), abs(vec2<u32>(4294967295u, u_input.d)), vec2<bool>(true, true)), _wgslsmith_mult_vec2_i32(~vec2<i32>(-894i, -54562i), -vec2<i32>(-2147483647i, u_input.a)), vec2<bool>(true, true)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, _wgslsmith_mod_i32(-31955i, -29378i)), abs(0i)), !select(true, func_2(vec3<f32>(307f, -309f, 1062f), false, -42070i).d.c, var_1 > 1u)), Struct_1(u_input.b, -countOneBits(func_2(vec3<f32>(-322f, -1000f, -336f), true, u_input.b).d.d), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.c, _wgslsmith_add_u32(0u, _wgslsmith_div_u32(1u, ~1u))));
}

