struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(1u, 34410u, 0u, 90042u, 17732u, 19141u, 4294967295u, 13866u, 79595u, 4294967295u, 0u, 14048u, 4294967295u, 72971u, 4294967295u, 72323u, 4294967295u, 41358u);

var<private> global1: array<i32, 3> = array<i32, 3>(0i, -4160i, -1433i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: bool, arg_3: vec4<u32>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(firstLeadingBit(0u)), ~arg_3.x), 18u)];
    let var_1 = -1i;
    let var_2 = Struct_1(vec3<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(arg_1.a, var_1) & (var_1 | -26536i), 12976i), reverseBits(~(~var_1))));
    let var_3 = -163f;
    let var_4 = _wgslsmith_mult_u32(~(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(34907u, 18u)], 18u)]) >> (~min(countOneBits(50857u), abs(global0[_wgslsmith_index_u32(40215u, 18u)])) % 32u), _wgslsmith_mod_u32(53181u ^ _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(arg_3.x, 18u)]), firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(75772u, 18u)], 18u)])), countOneBits(~(~global0[_wgslsmith_index_u32(4294967295u, 18u)]))));
    return -716f;
}

fn func_4(arg_0: f32, arg_1: Struct_5, arg_2: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_1(vec3<i32>(~1i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, global1[_wgslsmith_index_u32(22730u, 3u)], arg_1.b.a.a.a.x) & -(~u_input.a.x), 2147483647i));
    global0 = array<u32, 18>();
    global1 = array<i32, 3>();
    var var_1 = select(select(vec4<bool>(false, false, arg_1.a.x, arg_1.a.x), vec4<bool>(true, !any(vec2<bool>(arg_1.a.x, arg_1.a.x)), -41501i > u_input.a.x, arg_1.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), 148f)) <= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-163f, arg_0), 309f))), vec4<bool>(!(!select(arg_1.a.x, false, false)), false, true, true), ~(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(24078u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]) | 0u) != global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~select(global0[_wgslsmith_index_u32(7626u, 18u)], 66236u, true), 18u)], 18u)], _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 41023u)), vec2<u32>(12204u, global0[_wgslsmith_index_u32(11796u, 18u)]))), 18u)]);
    var_1 = vec4<bool>(var_1.x, any(!(!vec4<bool>(arg_1.a.x, true, var_1.x, var_1.x))), all(!(!var_1.yxw)) || var_1.x, true);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-804f, arg_0, arg_0))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(445f, arg_2.x, -1505f), vec3<f32>(arg_0, -393f, arg_0))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(2884f, 366f, arg_0), vec3<f32>(127f, arg_2.x, -2099f)), vec3<f32>(arg_2.x, -842f, arg_0), all(vec4<bool>(var_1.x, false, false, false)))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: bool) -> vec4<i32> {
    var var_0 = abs(7363u);
    var var_1 = vec2<i32>(-1i) * -(~_wgslsmith_mult_vec2_i32(arg_0.wy, arg_1.b.a.zz) | ~abs(vec2<i32>(arg_1.a.a.x, arg_1.c.a.x)));
    var var_2 = -698f;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(543f, Struct_5(vec3<bool>(!arg_2.x, all(vec2<bool>(arg_2.x, true)), all(vec3<bool>(true, true, true))), Struct_3(arg_1, Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 3u)], -42777i, var_1.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<bool>(arg_2.x, false, arg_3, false), Struct_4(2147483647i, Struct_1(arg_1.d.a), -197f), false, vec4<u32>(48518u, global0[_wgslsmith_index_u32(4294967295u, 18u)], 1u, 1u))), -1416f) - vec2<f32>(_wgslsmith_f_op_f32(floor(259f)), _wgslsmith_f_op_f32(ceil(681f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1740f) - _wgslsmith_f_op_f32(f32(-1f) * -942f))), _wgslsmith_div_f32(740f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1019f, -640f), _wgslsmith_f_op_f32(f32(-1f) * -313f)))), _wgslsmith_f_op_f32(select(527f, 1f, !any(vec4<bool>(true, false, false, arg_2.x))))));
    var var_4 = Struct_5(select(select(vec3<bool>(true, arg_1.d.a.x > u_input.a.x, arg_1.a.a.x < -6042i), select(select(vec3<bool>(arg_3, arg_2.x, arg_2.x), vec3<bool>(arg_3, true, false), vec3<bool>(arg_3, false, arg_2.x)), !vec3<bool>(arg_2.x, arg_2.x, true), !arg_2.x), vec3<bool>(arg_3, arg_3, var_3.x >= var_3.x)), vec3<bool>(arg_3, firstLeadingBit(1u) > global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], false), true), Struct_3(arg_1, Struct_1(abs(_wgslsmith_div_vec3_i32(arg_0.zyw, vec3<i32>(22799i, -2147483647i, -1i))))));
    return arg_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_4) -> vec3<bool> {
    global1 = array<i32, 3>();
    let var_0 = _wgslsmith_sub_vec4_i32(~abs(func_2(vec4<i32>(-1i, 1i, -45441i, arg_1.b.a.x), Struct_2(arg_1.b, Struct_1(vec3<i32>(u_input.a.x, -1i, u_input.a.x)), arg_1.b, Struct_1(vec3<i32>(29175i, 38354i, arg_1.a))), vec2<bool>(true, false), false)), vec4<i32>(-_wgslsmith_add_i32(arg_1.b.a.x, global1[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1.b.a.x, global1[_wgslsmith_index_u32(69500u, 3u)]), arg_1.a), arg_1.a, -u_input.a.x)) << (~(~vec4<u32>(0u, 17078u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], select(49704u, 77318u, true))) % vec4<u32>(32u));
    var var_1 = arg_1;
    global0 = array<u32, 18>();
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(131337u, 18u)], 18u)], 18u)], 1u, 31259u, 48034u), vec4<u32>(global0[_wgslsmith_index_u32(70016u, 18u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3394u, 18u)], 18u)], 0u)), 0u), 18u)], 44240u) ^ 29663u, ~countOneBits(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)])));
    return !vec3<bool>(true, false, !(!(global0[_wgslsmith_index_u32(0u, 18u)] >= 35513u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, 44967u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(143447u, 18u)], 18u)], 18u)]) >> (~vec3<u32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 20107u)), select(~vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], 18u)]), ~vec3<u32>(26954u, 28539u, 77113u), false));
    var var_1 = ~(~76935u);
    let var_2 = vec2<bool>(all(!select(vec3<bool>(true, true, false), func_1(vec3<f32>(-2887f, -1332f, -532f), Struct_4(global1[_wgslsmith_index_u32(var_0.x, 3u)], Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(0u, 3u)], -1i, global1[_wgslsmith_index_u32(1u, 3u)])), 1210f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), true);
    var var_3 = Struct_3(Struct_2(Struct_1(reverseBits(func_2(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), Struct_2(Struct_1(vec3<i32>(4745i, u_input.a.x, -2147483647i)), Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(var_0.x, 3u)], 35879i, -1i)), Struct_1(vec3<i32>(19350i, -1i, -2147483647i)), Struct_1(u_input.a)), vec2<bool>(true, true), false).xzw)), Struct_1(-u_input.a), Struct_1(u_input.a), Struct_1(~vec3<i32>(-42525i, -39919i, u_input.a.x))), Struct_1(~firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    var var_4 = var_3.a;
    var var_5 = _wgslsmith_f_op_f32(sign(972f));
    var var_6 = !vec4<bool>(var_2.x, false, any(vec4<bool>(true, var_2.x & false, func_1(vec3<f32>(-110f, -795f, 225f), Struct_4(var_3.a.b.a.x, var_4.a, -704f)).x, var_4.c.a.x < global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 18u)], 3u)])), var_2.x);
    let var_7 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], ~0u), var_3.b.a.yx, ~var_4.d.a.x, ~countOneBits(reverseBits(~vec4<u32>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56119u, 18u)], 18u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2304f, _wgslsmith_f_op_f32(select(549f, 435f, false))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(284f, 864f))))));
}

