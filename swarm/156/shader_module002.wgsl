struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 0i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(~(~64714u), _wgslsmith_div_u32(arg_1.x, arg_1.x)), arg_1, vec4<f32>(309f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -342f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(999f, 1616f)) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-500f * -654f)))), Struct_1(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), true), vec2<u32>(global0.x, ~reverseBits(global0.x)), vec2<u32>(0u, ~arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(630f, 156f, -1312f, -565f))))));
    global0 = vec2<u32>(global0.x, abs(_wgslsmith_add_u32(4294967295u >> (var_0.a.c.x % 32u), min(16020u, global0.x)))) >> (_wgslsmith_sub_vec2_u32(~countOneBits(countOneBits(vec2<u32>(arg_0, 1u))), reverseBits(vec2<u32>(4294967295u, arg_0)) & ~max(vec2<u32>(14623u, arg_1.x), arg_1)) % vec2<u32>(32u));
    var var_1 = Struct_2(var_0.b, var_0.a);
    var var_2 = 4294967295u;
    global0 = firstTrailingBit(select(~vec2<u32>(min(arg_0, var_0.b.c.x), 8486u), firstLeadingBit(vec2<u32>(0u, var_1.b.b.x)), all(var_1.a.a)));
    return -822f;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, any(vec2<bool>(true, false)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), false), true), vec2<u32>(_wgslsmith_sub_u32(4294967295u, ~countOneBits(global0.x)), 20014u), select(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 561u, 32705u, global0.x), max(vec4<u32>(1u, 105660u, 4294967295u, 10626u), vec4<u32>(0u, global0.x, global0.x, global0.x))), 1u), (abs(vec2<u32>(global0.x, global0.x)) | max(vec2<u32>(71300u, global0.x), vec2<u32>(global0.x, 1u))) | (max(vec2<u32>(global0.x, 1u), vec2<u32>(global0.x, 34719u)) << (select(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 22365u), false) % vec2<u32>(32u))), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(sign(289f)), arg_0, _wgslsmith_f_op_f32(select(arg_0, 631f, true)))))));
    let var_1 = u_input.a.x;
    var var_2 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(!var_0.a.x, var_0.d.x >= var_0.d.x, true), var_0.a), ~vec2<u32>(global0.x & 1u, _wgslsmith_mult_u32(var_0.b.x, global0.x)), vec2<u32>(21806u, ~(~1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-980f, 579f, 1046f, -469f)))))), Struct_1(var_0.a, ~(var_0.b | max(var_0.c, vec2<u32>(4294967295u, global0.x))), var_0.c | var_0.b, arg_1));
    let var_3 = var_2.a;
    var var_4 = reverseBits(vec4<u32>(select(1u, ~var_3.c.x, false), var_2.b.c.x, 40587u, 26496u));
    return -_wgslsmith_add_vec4_i32(vec4<i32>(select(~0i, min(0i, 1i), !var_0.a.x), 1i, global1.x, firstLeadingBit(global1.x)), vec4<i32>(2147483647i, 16338i, ~u_input.a.x, u_input.a.x));
}

fn func_2() -> f32 {
    global1 = _wgslsmith_mult_vec4_i32(~abs(firstTrailingBit(vec4<i32>(global1.x, global1.x, global1.x, u_input.a.x) & vec4<i32>(global1.x, 0i, -1i, -2147483647i))), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(0u & global0.x, select(vec2<u32>(global0.x, global0.x), vec2<u32>(1u, global0.x), vec2<bool>(true, true)))) * _wgslsmith_f_op_f32(f32(-1f) * -2120f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(345f, -151f, 1459f, 1196f) + vec4<f32>(1000f, -536f, -559f, -833f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 1562f, 1000f, -1000f)))))));
    global1 = min(vec4<i32>(global1.x, ~u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(~u_input.a.x | (-5310i >> (global0.x % 32u)), min(-2147483647i, u_input.a.x))), reverseBits(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, min(u_input.a.x, -2147483647i)), abs(firstLeadingBit(u_input.a.x)), u_input.a.x, global1.x)));
    global1 = (vec4<i32>(2147483647i, u_input.a.x, 1i, -2523i) & select(vec4<i32>(-2147483647i, -2147483647i, global1.x, 5118i) | vec4<i32>(1i, 2147483647i, -30745i, u_input.a.x), ~vec4<i32>(u_input.a.x, 19214i, -103883i, u_input.a.x) | -vec4<i32>(global1.x, global1.x, u_input.a.x, global1.x), vec4<bool>(true, true, false, true))) << (firstLeadingBit(vec4<u32>(max(~global0.x, global0.x ^ global0.x), 0u, 1u << (global0.x % 32u), 64567u)) % vec4<u32>(32u));
    var var_0 = -u_input.a.xz;
    var var_1 = Struct_1(select(!vec3<bool>(all(vec2<bool>(true, false)), true, any(vec2<bool>(true, true))), vec3<bool>(true, false, any(vec4<bool>(false, false, false, true))), global0.x >= ~global0.x), vec2<u32>(_wgslsmith_add_u32(global0.x, global0.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global0.x, 1u)), vec2<u32>(global0.x, _wgslsmith_mod_u32(global0.x, 4294967295u)))), vec2<u32>(firstTrailingBit(global0.x), 0u & ~global0.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-971f, 1023f), -1562f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1472f - 395f))), _wgslsmith_f_op_f32(func_3(global0.x, vec2<u32>(27756u, global0.x))), -450f))));
    return _wgslsmith_f_op_f32(-var_1.d.x);
}

fn func_5(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = select(!select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), all(vec2<bool>(true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), 1u != global0.x), vec3<bool>(true, true, true)), !vec3<bool>(any(vec4<bool>(false, true, true, true)), true, false), !(any(vec2<bool>(true, true)) || true));
    global1 = vec4<i32>(_wgslsmith_dot_vec4_i32(func_4(-418f, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -402f, 2818f, -1418f)))), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 73094i), _wgslsmith_mult_i32(u_input.a.x, global1.x), abs(u_input.a.x), global1.x)), ~_wgslsmith_mod_i32(_wgslsmith_div_i32(0i, u_input.a.x), 12818i | global1.x), abs(-94754i), global1.x) | ~_wgslsmith_sub_vec4_i32(~(-vec4<i32>(2147483647i, -2147483647i, 1i, 0i)), ~vec4<i32>(global1.x, u_input.a.x, u_input.a.x, global1.x) & abs(vec4<i32>(-22794i, 0i, 60272i, global1.x)));
    var var_1 = Struct_1(!(!vec3<bool>(false, var_0.x, var_0.x | false)), reverseBits(vec2<u32>(global0.x | global0.x, 1u)), _wgslsmith_clamp_vec2_u32(~firstLeadingBit(firstLeadingBit(vec2<u32>(global0.x, 4294967295u))), vec2<u32>(77865u, ~4294967295u), ~vec2<u32>(global0.x, 65235u)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, -1518f, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, 856f, arg_0.x, arg_0.x))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(140f, arg_0.x, 822f, 153f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(633f, -2196f, -2119f, -582f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -869f))))))))));
    var var_2 = ~firstTrailingBit(~var_1.b.x);
    var var_3 = Struct_1(vec3<bool>(false, var_0.x, !var_1.a.x && select(!var_0.x, var_0.x | var_1.a.x, true)), vec2<u32>(16249u, select(_wgslsmith_dot_vec2_u32(var_1.c, vec2<u32>(26903u, var_1.c.x)) ^ _wgslsmith_dot_vec2_u32(var_1.b, var_1.c), reverseBits(38447u), var_1.a.x)), ((_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, 64331u), vec2<u32>(var_1.b.x, 1u)) & (var_1.c ^ var_1.c)) >> (reverseBits(vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u))) << ((_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_1.c, vec2<u32>(global0.x, global0.x)), ~var_1.c) | max(var_1.b, _wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, var_1.c.x), vec2<u32>(var_1.c.x, 22449u)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(step(var_1.d, var_1.d)));
    return reverseBits(~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, global1.x, 55340i, u_input.a.x) ^ vec4<i32>(global1.x, 2147483647i, 2147483647i, u_input.a.x), vec4<i32>(32054i, global1.x, u_input.a.x, 0i) | vec4<i32>(global1.x, 9665i, global1.x, 1i)), vec4<i32>(~global1.x, -global1.x, 2147483647i >> (var_1.b.x % 32u), -global1.x)));
}

fn func_1(arg_0: i32) -> vec3<f32> {
    var var_0 = func_5(vec3<f32>(1207f, _wgslsmith_f_op_f32(func_2()), 1f)) ^ (func_4(-1506f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -808f, 722f, -698f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2128f, 716f, 3729f, -2040f)))) ^ _wgslsmith_sub_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 21670i, arg_0, arg_0), vec4<i32>(51117i, u_input.a.x, arg_0, arg_0), vec4<i32>(0i, global1.x, 40017i, global1.x)), ~vec4<i32>(global1.x, -16141i, global1.x, -38980i), false), ~vec4<i32>(35255i, u_input.a.x, arg_0, u_input.a.x) & ~vec4<i32>(global1.x, arg_0, arg_0, -801i)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1656f, 1171f, -1605f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-837f, 120f, 1000f), vec3<f32>(1160f, 248f, -465f))))), select(select(true, true, true), any(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, true))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-689f * _wgslsmith_f_op_f32(abs(-1031f))), -673f))));
    let var_2 = _wgslsmith_f_op_f32(min(1449f, var_1.x)) == 1177f;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(297f - -2062f) - _wgslsmith_f_op_f32(f32(-1f) * -169f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -2107f))) + var_1.x), _wgslsmith_f_op_f32(ceil(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    let var_4 = Struct_1(select(vec3<bool>(!var_2, true, true || select(false, var_2, false)), vec3<bool>(all(!vec4<bool>(var_2, false, var_2, var_2)), true, var_2), true), vec2<u32>(global0.x, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(50755u, ~global0.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 0u), vec2<u32>(1u, 38511u)) >> (select(firstTrailingBit(vec2<u32>(global0.x, global0.x)), vec2<u32>(global0.x, global0.x), !var_2) % vec2<u32>(32u)), abs(abs(~vec2<u32>(1u, 1u)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(795f, var_3.x)), _wgslsmith_div_f32(var_1.x, -592f), 2217f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2384f) + _wgslsmith_f_op_f32(-var_3.x))), vec4<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - -196f), _wgslsmith_f_op_f32(min(var_3.x, var_1.x))), 745f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(967f * var_1.x))))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_4.d.x + -1329f), _wgslsmith_f_op_f32(-var_1.x)))) - -442f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1845f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(776f * var_4.d.x))))), -419f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(44003i));
    var var_1 = ~firstLeadingBit(global0.x);
    var_1 = 0u;
    global1 = vec4<i32>(2147483647i, i32(-1i) * -(_wgslsmith_add_i32(global1.x, 1i) >> (_wgslsmith_clamp_u32(75063u, global0.x, global0.x) % 32u)), global1.x, 50245i);
    let var_2 = max(~(((vec4<i32>(global1.x, u_input.a.x, global1.x, -1i) | vec4<i32>(u_input.a.x, global1.x, global1.x, global1.x)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 56973i, -16486i, 0i), vec4<i32>(global1.x, -43720i, u_input.a.x, global1.x))) ^ vec4<i32>(~u_input.a.x, -20740i, min(1i, 0i), ~(-5300i))), select(vec4<i32>(-14162i, global1.x, global1.x, -2147483647i), vec4<i32>(46027i, func_5(var_0).x, 2147483647i << (global0.x % 32u), -22512i), true));
    let var_3 = select(vec2<bool>(true, true), vec2<bool>(select(select(false, true, true), true, true), all(vec2<bool>(true, true))), vec2<bool>(true, !(false || (global0.x == 95640u))));
    var var_4 = Struct_2(Struct_1(vec3<bool>(false, var_3.x == false, var_3.x), _wgslsmith_div_vec2_u32(~(~vec2<u32>(global0.x, global0.x)), firstLeadingBit(~vec2<u32>(global0.x, 7514u))), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(global0.x, 37498u) & vec2<u32>(24848u, global0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(10960u, 66241u), vec2<u32>(global0.x, 64775u), vec2<u32>(1u, global0.x)) | vec2<u32>(global0.x, 116401u)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))), var_0.x, var_0.x)), Struct_1(select(vec3<bool>(true, !var_3.x, !var_3.x), !select(vec3<bool>(false, var_3.x, var_3.x), vec3<bool>(false, false, false), true), var_3.x), select(~(~vec2<u32>(71641u, 47518u)), ~vec2<u32>(global0.x, global0.x), select(select(vec2<bool>(var_3.x, true), var_3, var_3.x), !var_3, vec2<bool>(var_3.x, var_3.x))), vec2<u32>(44u, _wgslsmith_mod_u32(~27366u, select(4294967295u, 0u, var_3.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, -1330f, -1359f, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 1031f, var_0.x, -366f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_2), ~19288u, ~select(-var_2 >> (reverseBits(vec4<u32>(global0.x, var_4.a.b.x, 4294967295u, 1u)) % vec4<u32>(32u)), ~(var_2 & var_2), (var_2.x << (98790u % 32u)) <= _wgslsmith_clamp_i32(17388i, u_input.a.x, 0i)));
}

