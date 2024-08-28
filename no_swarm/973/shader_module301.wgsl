struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1039f, -1815f), vec2<i32>(-1i, 0i), vec4<f32>(-244f, 725f, -1477f, -806f), 81471u, -24157i);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(350f, -1615f), vec2<i32>(-23745i, i32(-2147483648)), vec4<f32>(1070f, 1853f, 190f, -982f), 31483u, -7064i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = ~abs(-1i);
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(315f)))))), vec2<i32>(-15786i, -1820i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(-557f, global1.a.x, -438f, global1.a.x)), global0.c, false)) - _wgslsmith_f_op_vec4_f32(global1.c * _wgslsmith_f_op_vec4_f32(step(global1.c, global0.c)))) * vec4<f32>(-1185f, -227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1370f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c.x, 228f))))), 5247u, global0.e);
    let var_1 = ~(reverseBits(reverseBits(~vec2<u32>(16894u, 57189u))) ^ vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, global1.d, 4294967295u), vec3<u32>(23782u, global0.d, 36809u)), 1u));
    let var_2 = all(!(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, arg_0, false, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0)), true)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c.yy)), vec2<i32>(_wgslsmith_add_i32(-1i, ~(-var_0)), i32(-1i) * -1i), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + -1000f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(732f, global0.c.x)))), 391f, _wgslsmith_f_op_f32(ceil(global1.c.x))), abs(1u), global1.e);
    return reverseBits(_wgslsmith_mult_i32(u_input.a.x, 47126i)) << (global0.d % 32u);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = vec4<bool>(false, select(!all(vec4<bool>(false, false, true, true)), u_input.a.x <= -u_input.a.x, true) != !(func_3(false) <= 1i), (_wgslsmith_f_op_f32(-arg_0.x) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(-1000f))))) && (select(any(vec3<bool>(true, true, false)), true, true) || false), true);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(-527f, 319f)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(2205f, arg_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, 276f) + _wgslsmith_f_op_vec2_f32(-arg_0.xz)), vec2<bool>(var_0.x, any(vec3<bool>(false, var_0.x, var_0.x)))))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.a.zz, ~u_input.a.xy, vec2<i32>(0i, 51100i) & vec2<i32>(global0.e, u_input.a.x)) ^ select(abs(global1.b), global1.b, select(vec2<bool>(true, false), var_0.yy, var_0.xy)), -global0.b), global0.c, global1.d, (u_input.a.x << (49344u % 32u)) | global0.b.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.c.x)), _wgslsmith_f_op_f32(-arg_0.x))))));
    let var_2 = ~vec4<i32>(i32(-1i) * -u_input.a.x, _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(global0.b.x, -47403i, global0.e, global0.b.x)), min(firstLeadingBit(vec4<i32>(-2147483647i, 30071i, -2147483647i, u_input.a.x)), vec4<i32>(global1.e, 23746i, 0i, global1.e))), -reverseBits(u_input.a.x & 26077i), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(min(-1i, 1i), min(4452i, global0.b.x))));
    var var_3 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(11108i, var_2.x), min(countOneBits(-u_input.a.xy), -vec2<i32>(-6223i, global1.b.x)), -(global1.b >> (_wgslsmith_clamp_vec2_u32(arg_1.yx, arg_1.yx, arg_1.yy) % vec2<u32>(32u))));
    return Struct_1(global1.c.wy, _wgslsmith_clamp_vec2_i32(max(vec2<i32>(-global0.b.x, 50138i), abs(-vec2<i32>(-31181i, var_2.x))), global0.b, firstLeadingBit(max(firstTrailingBit(vec2<i32>(var_2.x, -2147483647i)), vec2<i32>(global1.b.x, 46290i)))), global0.c, 21759u, u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> i32 {
    let var_0 = select(_wgslsmith_mult_i32(-1i << (func_2(vec3<f32>(global0.c.x, 454f, global0.c.x), ~vec3<u32>(1u, arg_1.d, 1u)).d % 32u), (arg_3.e ^ ~21950i) ^ -min(49824i, arg_1.b.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, global1.b.x), arg_3.b, true) << (vec2<u32>(global1.d, 4294967295u) % vec2<u32>(32u)), u_input.a.zy), ~1i ^ _wgslsmith_mult_i32(-9479i, global0.e), ~(arg_1.e >> (arg_1.d % 32u))), false);
    let var_1 = -(~countOneBits(-reverseBits(vec4<i32>(24275i, 2147483647i, 38682i, 30391i))));
    var var_2 = arg_3.e;
    global1 = func_2(vec3<f32>(-869f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-740f)) - global1.a.x)), arg_3.a.x), ~vec3<u32>(_wgslsmith_mult_u32(arg_3.d, arg_1.d), reverseBits(~52781u), arg_3.d));
    var var_3 = arg_1;
    return i32(-1i) * -23499i;
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global1.a.x > global1.a.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.x * arg_3.a.x))) != _wgslsmith_f_op_f32(-841f * _wgslsmith_f_op_f32(sign(-485f)));
    let var_2 = u_input.a.x;
    let var_3 = 1u;
    global1 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1101f - 628f))), -1000f, _wgslsmith_f_op_f32(-global1.c.x)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(arg_3.c.x, -521f), arg_3.c.x, _wgslsmith_f_op_f32(-global1.c.x))))), ~abs(~_wgslsmith_clamp_vec3_u32(vec3<u32>(22408u, global1.d, 4294967295u), vec3<u32>(arg_3.d, global1.d, 4294967295u), vec3<u32>(arg_3.d, arg_3.d, global1.d))));
    return arg_3;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>) -> vec3<i32> {
    global1 = func_5(~4294967295u, vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * -3097f) + global0.c.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x))), false), _wgslsmith_sub_i32(select(u_input.a.x, ~19329i, any(vec3<bool>(true, false, false)) == true), func_4(Struct_1(global0.c.zw, vec2<i32>(-1i, 1i), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1315f, global1.c.x, 1534f, global0.a.x), global0.c)), global0.d | 4294967295u, ~0i), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 440f)), max(arg_0, vec2<i32>(global1.b.x, -60544i)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c.x, 885f, 681f, -1486f), vec4<f32>(-761f, 1326f, 102f, -2115f))), firstTrailingBit(0u), u_input.a.x), ~global0.d < ~arg_1.x, func_2(_wgslsmith_f_op_vec3_f32(global0.c.yyy + global1.c.wyx), arg_1.zyz))), func_2(global0.c.wxx, ~arg_1.yzz));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-184f + global1.a.x));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a * _wgslsmith_f_op_vec2_f32(step(global1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(165f, var_0)))))), _wgslsmith_mod_vec2_i32(arg_0, reverseBits(vec2<i32>(1i, ~global0.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) + _wgslsmith_f_op_vec4_f32(-global1.c))))), 17298u, 10289i);
    global1 = Struct_1(vec2<f32>(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, var_0, 1822f) - global0.c.wyw)), ~_wgslsmith_add_vec3_u32(arg_1.ywx, vec3<u32>(39008u, 16399u, global0.d))).a.x, global0.a.x), ~(global0.b >> (~vec2<u32>(arg_1.x, arg_1.x) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-global0.c), _wgslsmith_dot_vec3_u32(~(~max(arg_1.yww, vec3<u32>(4294967295u, 4294967295u, 47459u))), vec3<u32>(~abs(0u), 21415u, global0.d)), -1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(global1.c + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), 1964f, _wgslsmith_f_op_f32(floor(831f)), _wgslsmith_f_op_f32(-global0.c.x))) + _wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1728f, -146f, var_0, 925f)))))));
    return firstTrailingBit(_wgslsmith_div_vec3_i32(select(vec3<i32>(global1.b.x, global1.b.x, -4094i), vec3<i32>(-54178i, -1043i, -11489i), true), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-26038i, u_input.a.x, -24431i)), max(vec3<i32>(2147483647i, arg_0.x, 22286i), u_input.a)))) << (select(countOneBits(vec3<u32>(2988u & global0.d, 34277u, 4294967295u)), vec3<u32>(global0.d, ~0u, _wgslsmith_add_u32(max(global1.d, 1u), _wgslsmith_dot_vec4_u32(arg_1, arg_1))), all(vec2<bool>(select(false, true, true), true))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.x;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.c.yy), vec2<i32>(-max(_wgslsmith_dot_vec4_i32(vec4<i32>(15109i, global0.b.x, 0i, -45356i), vec4<i32>(-13561i, global1.e, 2147483647i, global1.e)), ~2147483647i), _wgslsmith_div_i32(-2147483647i, u_input.a.x ^ _wgslsmith_clamp_i32(u_input.a.x, 17594i, -2147483647i))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(1766f - 207f), -379f, global0.c.x, -1500f), global1.c)), global0.c)), 2044u, firstTrailingBit(-global1.e));
    let var_2 = true || (global0.a.x >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-293f, global1.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -520f)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, _wgslsmith_div_f32(global0.c.x, var_1.c.x)))), u_input.a.xx, var_1.c, countOneBits(var_1.d), -8999i);
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d, vec3<i32>(1i, _wgslsmith_sub_i32(u_input.a.x, -(~var_4.e)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(func_1(var_3.b, vec4<u32>(var_3.d, 3150u, 35441u, var_3.d)), u_input.a), abs(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(0i, var_1.b.x, -47676i))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global1.c.zzx, var_4.c.wyw))) - var_4.c.yzy)), 560f, 937f);
}

