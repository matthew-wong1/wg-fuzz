struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: u32,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec4<u32> {
    var var_0 = Struct_3(0i, abs(-vec2<i32>(_wgslsmith_div_i32(u_input.c.x, 25232i), 1i)), 4800u, Struct_1(vec4<u32>(abs(_wgslsmith_mult_u32(arg_1, 4294967295u)), u_input.b, _wgslsmith_div_u32(_wgslsmith_clamp_u32(19230u, arg_0.x, arg_0.x), abs(u_input.b)), _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1, 0u, arg_0.x), u_input.a)), vec2<u32>(~1u, u_input.b), select(vec3<bool>(false, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), true), arg_0.yy, 1i));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -449f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1032f - -1591f)), _wgslsmith_f_op_f32(sign(351f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(132f + 360f) + -121f), 1898f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(344f)), _wgslsmith_div_f32(-629f, -1605f), var_0.d.c.x & true)))));
    let var_2 = vec2<u32>(~(~(var_0.d.b.x << (u_input.a.x % 32u))) >> (arg_0.x % 32u), arg_1);
    var_0 = Struct_3(-_wgslsmith_mod_i32(~u_input.c.x, 50438i), firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, var_0.d.e), var_0.b), ~(~vec2<i32>(3004i, 2147483647i)))), 4294967295u, var_0.d);
    let var_3 = var_0.d.c.x;
    return (vec4<u32>(4294967295u, ~0u, 1u, 1u) ^ (_wgslsmith_mod_vec4_u32(var_0.d.a, vec4<u32>(5680u, 2282u, 62042u, u_input.a.x)) & ~(~var_0.d.a))) << (countOneBits(vec4<u32>(firstTrailingBit(4294967295u), reverseBits(49963u) & countOneBits(arg_0.x), var_0.d.d.x | var_2.x, 1u)) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(countOneBits(0u), u_input.a.x), u_input.b);
    let var_1 = arg_1.x;
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(35590u, var_0), 1u >> (reverseBits(8076u ^ u_input.b) % 32u), u_input.a.x, 4294967295u);
    var var_3 = Struct_2(_wgslsmith_sub_u32(~(~var_2.x), _wgslsmith_dot_vec3_u32(u_input.a, var_2.yyx)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), var_1, _wgslsmith_div_f32(-1035f, var_1), _wgslsmith_f_op_f32(241f + -963f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1464f, 1371f, -266f, var_1)))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(508f - var_1), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1.x, 1523f)))), _wgslsmith_f_op_f32(f32(-1f) * -1121f)), true)));
    var var_4 = arg_0.c.x;
    return arg_0.c.yy;
}

fn func_2() -> Struct_4 {
    var var_0 = any(vec4<bool>(any(vec3<bool>(false, false, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), true, select(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, true, true)), all(vec4<bool>(false, true, true, true))))) || !all(vec3<bool>(true, true, any(vec3<bool>(true, false, true))));
    var_0 = any(vec4<bool>(all(vec3<bool>(true, true, false)), true, true, -516f == _wgslsmith_f_op_f32(trunc(141f))));
    var var_1 = select(select(func_4(Struct_1(func_3(u_input.a, u_input.a.x), u_input.a.zy, vec3<bool>(false, true, false), vec2<u32>(u_input.a.x, u_input.b) ^ u_input.a.xy, -u_input.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(839f, 786f))), ~(-1i) >> (u_input.a.x % 32u)), vec2<bool>(true, true), select(func_4(Struct_1(vec4<u32>(0u, u_input.b, 21572u, 0u), u_input.a.zy, vec3<bool>(true, true, false), vec2<u32>(u_input.a.x, u_input.b), u_input.c.x), vec2<f32>(346f, -1033f), 0i), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(!any(vec2<bool>(true, true)), !(0u > _wgslsmith_clamp_u32(33794u, 14503u, u_input.b))), all(vec3<bool>(true, true, true)));
    var var_2 = !(all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))) & any(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, true))));
    var var_3 = Struct_4(vec4<u32>(~54251u, abs(~select(33736u, 1u, true)), 0u, countOneBits(1u)), func_4(Struct_1(firstLeadingBit(vec4<u32>(0u, 97829u, u_input.a.x, u_input.a.x)), ~min(u_input.a.zx, u_input.a.xx), !(!vec3<bool>(var_1.x, var_1.x, true)), _wgslsmith_sub_vec2_u32(u_input.a.zy, vec2<u32>(u_input.b, u_input.a.x)) >> (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), 0i >> (~u_input.a.x % 32u)), vec2<f32>(_wgslsmith_f_op_f32(sign(1001f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1597f + -908f), _wgslsmith_f_op_f32(floor(2226f)))), -u_input.c.x).x, _wgslsmith_f_op_f32(727f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -317f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(372f * -189f))) + _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-400f, 114f))), min(u_input.c.x, -1i), true);
    return Struct_4(_wgslsmith_sub_vec4_u32(~(~var_3.a), ~var_3.a), !(((34533u << (0u % 32u)) >> (firstTrailingBit(u_input.b) % 32u)) != func_3(vec3<u32>(4294967295u, 20702u, u_input.a.x), ~4294967295u).x), var_3.e, abs(1i), var_1.x);
}

fn func_1(arg_0: vec3<bool>) -> bool {
    var var_0 = func_2();
    let var_1 = u_input.c;
    var var_2 = Struct_2(~_wgslsmith_mult_u32(func_3(~u_input.a, 60830u | var_0.a.x).x, ~(u_input.b ^ 4294967295u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -355f, 358f, 147f) - vec4<f32>(242f, -575f, -404f, -1435f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -2030f, -441f, 221f))))));
    let var_3 = func_2();
    let var_4 = vec2<i32>(_wgslsmith_sub_i32(0i, 0i), 0i);
    return !all(vec4<bool>(false || arg_0.x, arg_0.x, !var_3.b, !var_0.c)) || arg_0.x;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec2<u32>, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_3(-firstLeadingBit(arg_1), max(vec2<i32>(-32281i, -3683i) & vec2<i32>(-arg_1, 1i), _wgslsmith_mult_vec2_i32(u_input.c.zx, -u_input.c.yz)), ~((~1u << (_wgslsmith_mod_u32(5295u, arg_2.x) % 32u)) | arg_3), Struct_1(countOneBits(func_2().a), vec2<u32>(~abs(arg_2.x), ~arg_3), !select(vec3<bool>(arg_0, false, false), !vec3<bool>(arg_0, true, true), !vec3<bool>(arg_0, arg_0, arg_0)), select(~vec2<u32>(u_input.b, arg_2.x), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_2, u_input.a.zz), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u))), arg_0 & all(vec4<bool>(arg_0, arg_0, arg_0, false))), _wgslsmith_mod_i32(arg_1, select(arg_1, -3277i, func_2().c))));
    var_0 = Struct_3(-_wgslsmith_mod_i32(1i, -1i), ~firstLeadingBit(select(var_0.b, -vec2<i32>(0i, var_0.a), !var_0.d.c.zz)), 48595u, var_0.d);
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(abs(10578i), firstLeadingBit(~var_0.d.e)), min(var_0.b.x, ~firstTrailingBit(u_input.c.x)) & arg_1);
    var var_2 = !(!vec4<bool>(true, any(!vec4<bool>(arg_0, var_0.d.c.x, false, true)), true, all(select(vec4<bool>(var_0.d.c.x, true, arg_0, var_0.d.c.x), vec4<bool>(true, true, true, var_0.d.c.x), var_0.d.c.x))));
    var var_3 = _wgslsmith_dot_vec4_i32(max(_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_1, var_1, -30843i, u_input.c.x)) >> (~vec4<u32>(var_0.c, 9987u, u_input.a.x, 52433u) % vec4<u32>(32u)), vec4<i32>(var_1, -10670i, abs(arg_1), abs(u_input.c.x))), vec4<i32>(-8127i, -2147483647i, var_0.b.x, ~var_0.d.e)), firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.a, 25804i), 2147483647i), 1i, max(_wgslsmith_add_i32(arg_1, u_input.c.x), firstTrailingBit(arg_1)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, u_input.c.x, -10821i, -1i)), max(vec4<i32>(2147483647i, u_input.c.x, 2147483647i, var_0.a), vec4<i32>(u_input.c.x, 0i, 1i, 2147483647i))))));
    return Struct_3(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(min(u_input.c, vec3<i32>(var_1, arg_1, var_0.d.e)), select(abs(u_input.c), max(vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(0i, arg_1, 0i)), var_0.d.c)), arg_1), u_input.c.xx, ~_wgslsmith_sub_u32(~(arg_3 & u_input.a.x), ~firstTrailingBit(var_0.c)), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(true && select(func_1(vec3<bool>(false, false, true)), func_1(vec3<bool>(true, true, true)), true), u_input.c.x, _wgslsmith_mult_vec2_u32(~u_input.a.yz, u_input.a.zx), u_input.b);
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(u_input.c.x ^ 3452i, _wgslsmith_mult_i32(2147483647i, -(~u_input.c.x))), -1i, func_5(!var_0.d.c.x, -3814i, _wgslsmith_add_vec2_u32(var_0.d.a.zw, _wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(var_0.d.b.x, 67162u)) & u_input.a.xz), 1u).a, _wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, -69001i), var_0.b), vec2<i32>(u_input.c.x, var_0.d.e) ^ u_input.c.yx), -abs(~var_0.b)));
    let var_2 = vec3<i32>(-(~(~_wgslsmith_div_i32(u_input.c.x, var_1.x))), func_2().d, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(~u_input.c, var_1.xxx), var_1.xzw, ~(-u_input.c)), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 43760i, -2147483647i)), vec3<i32>(-2147483647i << (0u % 32u), var_1.x ^ var_0.a, -1i))));
    var var_3 = vec4<bool>(any(vec3<bool>(!var_0.d.c.x, var_0.d.c.x, var_0.d.c.x)) == var_0.d.c.x, false, false, var_0.d.c.x);
    var var_4 = vec4<bool>(var_3.x, any(vec3<bool>(abs(1u) >= u_input.b, !var_0.d.c.x && func_2().e, any(var_0.d.c.zx) || true)), func_4(Struct_1(var_0.d.a, func_2().a.yz, vec3<bool>(true, true, true), ~(~vec2<u32>(4294967295u, 4294967295u)), 1i << (var_0.c % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-477f, 207f)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, 677f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1364f, -851f)))))), 1i).x, true);
    var var_5 = Struct_2(~(~var_0.c | countOneBits(_wgslsmith_mod_u32(72536u, var_0.d.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-748f)))), -1683f, -2363f, 638f)));
    let var_6 = _wgslsmith_clamp_vec4_i32(firstTrailingBit(-(_wgslsmith_mult_vec4_i32(vec4<i32>(-238i, var_0.a, u_input.c.x, var_0.d.e), vec4<i32>(-8160i, var_2.x, u_input.c.x, var_1.x)) >> (vec4<u32>(1u, var_0.c, 1u, var_0.d.a.x) % vec4<u32>(32u)))), vec4<i32>(abs(-var_0.b.x), ~41183i, 1i, u_input.c.x | -var_2.x) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, var_0.d.a.x, u_input.a.x, 4747u), ~(~vec4<u32>(16174u, 1u, 44788u, 60311u))) % vec4<u32>(32u)), ~firstTrailingBit(vec4<i32>(1i | var_1.x, i32(-1i) * -12857i, var_0.a, _wgslsmith_sub_i32(2147483647i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.b.x, _wgslsmith_f_op_f32(f32(-1f) * -253f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.b.x), _wgslsmith_f_op_f32(exp2(var_5.b.x)), var_4.x)))), _wgslsmith_f_op_f32(select(var_5.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b.x)), var_3.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(abs(-var_6.xyx), u_input.c), -5922i, -u_input.c.x, abs(-1i ^ var_2.x)), 2563f, max(u_input.c.x, _wgslsmith_add_i32(~(~var_0.d.e), 7601i)), _wgslsmith_mult_u32(abs(~u_input.b), firstLeadingBit(var_0.d.a.x) ^ ~u_input.a.x) << (countOneBits(min(var_5.a, 4294967295u) & (var_0.c ^ u_input.b)) % 32u));
}

