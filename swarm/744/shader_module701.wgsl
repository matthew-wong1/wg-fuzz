struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -513f)), _wgslsmith_f_op_f32(-global0.e.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.e.a)))));
    let var_1 = Struct_4(Struct_2(u_input.b.x, global0.b, global0.e, vec3<u32>(~16190u, ~reverseBits(u_input.a.x), ~0u), global0.c), ~1i, Struct_2(11157u, u_input.a, global0.e, firstLeadingBit(vec3<u32>(~4294967295u, _wgslsmith_div_u32(1u, 4294967295u), 89966u)), global0.c));
    global0 = Struct_2(_wgslsmith_sub_u32(~global0.a, firstLeadingBit(abs(u_input.b.x) | _wgslsmith_add_u32(var_1.c.a, 1u))), min(~(~(global0.b ^ var_1.c.b)), u_input.a), var_1.a.c, global0.b.zzx, Struct_1(635f, countOneBits(vec2<i32>(-86251i, global0.c.b.x) << (~global0.d.xy % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(var_1.a.c.c.x - global0.c.c.x), -2280f), select(global0.c.d, var_1.a.e.d, !vec3<bool>(global0.e.d.x, global0.c.d.x, arg_1.x))));
    let var_2 = var_1;
    global0 = Struct_2(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 24238u, global0.d.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.c.a, u_input.a.x, 0u), var_1.a.d)), u_input.a << (vec4<u32>(global0.a, var_1.a.b.x, 1u, _wgslsmith_div_u32(global0.b.x, 11558u)) % vec4<u32>(32u)), global0.c, reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a.x, 49558u), vec3<u32>(20985u, 0u, global0.a))), var_2.a.c);
    return Struct_2(1u, var_2.a.b, Struct_1(_wgslsmith_f_op_f32(-global0.e.c.x), ~_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.b, global0.e.b.x) ^ vec2<i32>(0i, var_2.b), -var_2.c.e.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1144f)))))), var_1.c.e.d), u_input.a.yyw, var_2.c.e);
}

fn func_3(arg_0: Struct_2) -> Struct_3 {
    let var_0 = firstLeadingBit(global0.c.b.x);
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 0i, -51744i), vec3<i32>(46409i, 1949i, global0.e.b.x)), abs(vec3<i32>(arg_0.c.b.x, var_0, 0i))), select(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, global0.c.b.x, -1i), vec3<i32>(arg_0.c.b.x, global0.c.b.x, global0.e.b.x)), vec3<i32>(var_0, arg_0.e.b.x, -1i), any(vec2<bool>(global0.c.d.x, arg_0.c.d.x)))), ~(~_wgslsmith_div_vec3_i32(vec3<i32>(396i, arg_0.e.b.x, var_0), vec3<i32>(global0.e.b.x, 1i, -43246i)))) < _wgslsmith_add_i32(-67925i, ~_wgslsmith_add_i32(~(-2147483647i), _wgslsmith_clamp_i32(arg_0.c.b.x, arg_0.e.b.x, -12096i)));
    global0 = func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.c.c.x)))), vec3<bool>(false, true, func_2(649f, func_2(300f, vec3<bool>(false, false, global0.e.d.x)).e.d).d.x <= ~0u));
    var var_2 = 18361u;
    var var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(~reverseBits(1u)), 1u, ~firstLeadingBit(62306u) >> (0u % 32u)), reverseBits(arg_0.b.wzy));
    return Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(~41598i, abs(arg_0.c.b.x), _wgslsmith_mod_i32(global0.e.b.x, _wgslsmith_sub_i32(4416i, var_0)), max(-2147483647i, select(arg_0.c.b.x, 6024i, false))), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.e.b.x, -10056i, var_0, 16973i) | (vec4<i32>(-2008i, arg_0.e.b.x, global0.e.b.x, var_0) << (vec4<u32>(u_input.b.x, arg_0.d.x, 31231u, arg_0.d.x) % vec4<u32>(32u))), vec4<i32>(-1i, 1i, -14205i, var_0) << (vec4<u32>(global0.a, u_input.a.x, global0.b.x, arg_0.b.x) % vec4<u32>(32u)))), ~u_input.a.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = u_input.a;
    global0 = func_2(_wgslsmith_f_op_f32(-arg_3.x), !select(select(global0.e.d, select(global0.e.d, global0.e.d, global0.e.d.x), false), global0.c.d, func_2(arg_3.x, vec3<bool>(false, global0.c.d.x, global0.c.d.x)).e.d));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))))), vec2<i32>(_wgslsmith_sub_i32(~0i, global0.e.b.x) & arg_1.a.x, 14857i), vec2<f32>(_wgslsmith_f_op_f32(arg_2 + -643f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1078f * _wgslsmith_f_op_f32(arg_2 + 1235f)))), vec3<bool>(false, global0.c.d.x, true));
    global0 = Struct_2(u_input.b.x, vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(20660u), 17572u), ~u_input.a.x, arg_1.b, ~reverseBits(0u)), func_2(-371f, !(!(!global0.e.d))).c, ~select(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 4294967295u), _wgslsmith_dot_vec3_u32(global0.d, global0.b.ywx), ~var_0.x), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(global0.b.wyx, vec3<u32>(4294967295u, arg_1.b, global0.a)), vec3<u32>(u_input.b.x, global0.a, u_input.a.x)), vec3<bool>(global0.c.d.x, var_1.d.x && global0.c.d.x, !var_1.d.x)), global0.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(arg_3 * _wgslsmith_div_vec4_f32(arg_3, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.x, 163f, 1000f, arg_3.x)))))));
    return Struct_2(_wgslsmith_mult_u32(u_input.b.x, 1774u), ~_wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(arg_1.b, arg_1.b, 73237u, 4294967295u)), _wgslsmith_clamp_vec4_u32(global0.b >> (vec4<u32>(26830u, 25359u, 1u, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(26798u, var_0.x, 79228u, arg_1.b) & global0.b, ~u_input.a)), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(365f)), -709f), vec3<bool>(global0.c.d.x, true, false)).e, ~u_input.a.xxy, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1033f + -215f) - 1000f)), var_1.d).c);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: u32) -> vec4<f32> {
    global0 = func_4(reverseBits(vec2<i32>(~global0.e.b.x | -41070i, -22128i)), func_3(func_2(_wgslsmith_f_op_f32(abs(-896f)), !arg_1)), 565f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.a, -1351f, global0.e.c.x, 995f), vec4<f32>(-1087f, arg_0, global0.c.a, arg_0)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1987f, global0.c.a, -983f, global0.e.a)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, 1000f, arg_0, -1000f), vec4<f32>(global0.e.c.x, -1649f, -1000f, global0.c.c.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a, arg_0, arg_0, -914f) + vec4<f32>(arg_0, arg_0, arg_0, 1932f)), vec4<bool>(true, global0.e.d.x, true, global0.e.d.x))))), vec4<bool>(!global0.c.d.x, false, _wgslsmith_f_op_f32(-global0.e.a) > arg_0, func_2(arg_0, !arg_1).c.d.x))));
    let var_0 = Struct_1(global0.c.c.x, ~_wgslsmith_clamp_vec2_i32(global0.c.b, ~vec2<i32>(2147483647i, 314i), ~vec2<i32>(global0.e.b.x, 40608i)) >> (global0.d.zz % vec2<u32>(32u)), global0.c.c, func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.e.a))))), select(select(global0.c.d, vec3<bool>(global0.e.d.x, true, arg_1.x), func_4(global0.e.b, Struct_3(vec4<i32>(1i, global0.c.b.x, global0.e.b.x, 0i), u_input.b.x), arg_0, vec4<f32>(-1313f, global0.e.c.x, arg_0, 832f)).c.d.x), select(arg_1, !vec3<bool>(arg_1.x, arg_1.x, global0.e.d.x), vec3<bool>(global0.c.d.x, global0.e.d.x, false)), global0.e.d)).c.d);
    let var_1 = func_3(func_2(_wgslsmith_f_op_f32(-2955f - _wgslsmith_f_op_f32(-func_4(vec2<i32>(-56820i, var_0.b.x), Struct_3(vec4<i32>(-16687i, -3978i, var_0.b.x, global0.e.b.x), 4294967295u), -143f, vec4<f32>(global0.e.c.x, -1417f, 547f, global0.c.c.x)).e.c.x)), var_0.d));
    var var_2 = min(abs(var_0.b.x), var_1.a.x);
    let var_3 = u_input.b;
    return vec4<f32>(global0.c.a, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 880f) + var_0.c.x) + 1621f)), func_4(var_0.b, func_3(Struct_2(arg_2, global0.b, global0.c, _wgslsmith_mod_vec3_u32(u_input.a.zyz, vec3<u32>(4294967295u, var_1.b, 0u)), func_2(arg_0, vec3<bool>(false, true, true)).e)), var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1578f, global0.e.a, -256f, 1f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-307f, 1146f, arg_0, 342f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.c.x, -1438f, var_0.c.x, -2057f))))).c.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(global0.e.b.x == global0.c.b.x, any(!vec4<bool>(true, global0.e.d.x || false, true, !global0.c.d.x)), global0.d.x > _wgslsmith_div_u32(_wgslsmith_mult_u32(~0u, ~global0.d.x), _wgslsmith_dot_vec3_u32(u_input.a.wyz, _wgslsmith_mod_vec3_u32(global0.b.wyw, vec3<u32>(global0.b.x, 3622u, u_input.b.x)))), global0.c.d.x);
    var var_1 = firstTrailingBit(_wgslsmith_clamp_u32(abs(u_input.b.x & 48117u), _wgslsmith_dot_vec4_u32(reverseBits(global0.b), global0.b) ^ ~1u, global0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a, 1495f, global0.c.a, -257f) * vec4<f32>(global0.e.c.x, -322f, global0.e.a, 916f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-515f, global0.e.c.x, global0.e.c.x, -1286f) + vec4<f32>(global0.c.a, global0.c.c.x, global0.e.c.x, global0.c.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.a, -874f, global0.c.a, -311f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(global0.c.a, global0.c.d, global0.d.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c.c.x, global0.c.a, 2536f, global0.c.a))), vec4<bool>(false, true, var_0.x, var_0.x))) + vec4<f32>(669f, global0.e.c.x, _wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_div_f32(global0.c.c.x, global0.c.c.x)))), reverseBits(func_2(-863f, global0.e.d).e.b.x << (0u % 32u)));
}

