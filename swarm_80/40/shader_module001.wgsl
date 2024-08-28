struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c.x, 1000f) - -498f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(782f, arg_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -389f)), arg_0.c.x)));
    var var_1 = Struct_1(abs(arg_0.a ^ (vec3<u32>(4294967295u, 4294967295u, arg_1) >> (firstLeadingBit(arg_0.a) % vec3<u32>(32u)))), select(~_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(arg_0.d.x, -33258i, 0i)), u_input.a & u_input.a), vec3<i32>(arg_0.d.x, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, arg_0.b.x, u_input.a.x, arg_0.b.x)), vec4<i32>(1i, u_input.a.x, -12584i, u_input.a.x)), u_input.a.x), !((u_input.b.x | arg_1) == firstTrailingBit(0u))), var_0, vec2<i32>(-28021i, _wgslsmith_div_i32(66660i, -u_input.a.x)));
    var_1 = arg_0;
    let var_2 = false;
    let var_3 = abs(abs(-select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.d.x, 25736i, arg_0.b.x, arg_0.d.x), vec4<i32>(u_input.a.x, var_1.d.x, 0i, u_input.a.x)), vec4<i32>(var_1.b.x, -1i, arg_0.d.x, 25601i) ^ vec4<i32>(-2147483647i, -17983i, 2147483647i, u_input.a.x), true)));
    return 0u;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: f32) -> vec4<u32> {
    let var_0 = max(~select(_wgslsmith_div_u32(func_3(Struct_1(vec3<u32>(0u, 29541u, u_input.b.x), u_input.a, vec3<f32>(-298f, arg_2, arg_1.x), u_input.a.zy), 4294967295u, arg_0.x, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), u_input.b.x), u_input.b.x, arg_0.x), _wgslsmith_mod_u32(0u, u_input.b.x));
    var var_1 = ~_wgslsmith_div_vec2_u32(abs(max(vec2<u32>(var_0, 0u), u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 66508u) << (vec2<u32>(u_input.b.x, 69001u) % vec2<u32>(32u)), ~vec2<u32>(var_0, u_input.b.x))) << ((~(u_input.b << (vec2<u32>(var_0, 0u) % vec2<u32>(32u))) >> (max(firstLeadingBit(reverseBits(vec2<u32>(var_0, 1u))), max(vec2<u32>(0u, var_0), u_input.b >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x)))) - _wgslsmith_f_op_f32(trunc(arg_1.x))), arg_1.x);
    let var_3 = 22018u;
    var_1 = vec2<u32>(_wgslsmith_clamp_u32(var_3, select(~abs(u_input.b.x), 4294967295u, arg_0.x), ~_wgslsmith_sub_u32(select(var_3, var_3, arg_0.x), var_0)), abs(~firstLeadingBit(33929u) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, var_3, var_0, 4294967295u), countOneBits(vec4<u32>(var_1.x, 1u, var_0, 68933u))) % 32u)));
    return firstTrailingBit(vec4<u32>(var_1.x, 4294967295u, var_3, u_input.b.x));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = ~1u;
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(13157u, 18934u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 15400u, 42117u, 4294967295u) & vec4<u32>(32953u, u_input.b.x, u_input.b.x, 84054u), func_2(vec4<bool>(true, false, true, false), vec4<f32>(2043f, arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1.c.x)) ^ 34663u, 30478u), _wgslsmith_div_vec4_u32(min(~vec4<u32>(u_input.b.x, u_input.b.x, arg_0, arg_1.a.x), vec4<u32>(6094u, 76061u, 0u, 0u)) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 29464u, 0u, arg_0), vec4<u32>(0u, 34315u, u_input.b.x, arg_0)), u_input.b.x, u_input.b.x, 99524u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.b.x, u_input.b.x), select(vec4<u32>(30495u, u_input.b.x, 1u, u_input.b.x), vec4<u32>(12956u, arg_0, 23832u, u_input.b.x), false)) & firstLeadingBit(vec4<u32>(arg_0, u_input.b.x, 21100u, 26201u) >> (vec4<u32>(0u, arg_1.a.x, 0u, u_input.b.x) % vec4<u32>(32u)))));
    let var_1 = arg_1;
    var var_2 = vec4<u32>(~(1u | reverseBits(var_1.a.x)), 23605u, 1953u, 1u ^ _wgslsmith_mult_u32(func_2(vec4<bool>(false, true, true, false), vec4<f32>(-546f, 1000f, var_1.c.x, -1599f), _wgslsmith_f_op_f32(1884f - 1053f)).x, 1u));
    var_2 = min(vec4<u32>(~(~arg_1.a.x), min(~var_1.a.x, ~8734u), u_input.b.x, func_3(Struct_1(vec3<u32>(arg_0, 30720u, var_2.x), vec3<i32>(54416i, arg_1.b.x, 0i), vec3<f32>(-1056f, arg_1.c.x, 913f), vec2<i32>(0i, 1i)), _wgslsmith_mod_u32(1u, u_input.b.x), true, select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))) ^ select(abs(vec4<u32>(40296u, u_input.b.x, 0u, 4294967295u)), firstLeadingBit(vec4<u32>(var_2.x, 1u, arg_1.a.x, 60861u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_1.a.x, var_1.a.x, arg_1.a.x), vec4<u32>(24591u, arg_1.a.x, 4294967295u, var_1.a.x)), var_1.a.x, 4294967295u, _wgslsmith_mod_u32(65289u, u_input.b.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_2.x, var_2.x, 29698u), vec4<u32>(var_2.x, 70324u, 32665u, 1u))), firstLeadingBit(vec4<u32>(var_1.a.x, var_2.x, arg_0, var_2.x) << (vec4<u32>(20493u, var_2.x, arg_0, u_input.b.x) % vec4<u32>(32u))) | _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, u_input.b.x, arg_0), vec4<u32>(arg_1.a.x, 2333u, 23946u, arg_1.a.x))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + var_1.c.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.c.x + var_1.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1270f), _wgslsmith_f_op_f32(floor(1739f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-174f, 1324f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(906f + 587f) + _wgslsmith_f_op_f32(268f + -269f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f) - -2442f)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -410f);
    var var_2 = ~countOneBits(select(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) ^ -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), ~abs(vec4<i32>(2147483647i, 46275i, u_input.a.x, u_input.a.x)), false));
    var var_3 = _wgslsmith_add_i32(firstLeadingBit(-abs(u_input.a.x << (u_input.b.x % 32u))), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(var_2.xyw, -vec3<i32>(u_input.a.x, -1i, 2147483647i)), vec3<i32>(-abs(1i), ~(~94951i), ~(-u_input.a.x))));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(2130f, -113f, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-131f + -102f)), 176f))) * vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, 907f, true))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b.x, Struct_1(vec3<u32>(u_input.b.x, 7209u, 0u), var_2.xzx, vec3<f32>(var_0.x, 1323f, var_0.x), var_2.xx)))))));
    var_1 = _wgslsmith_f_op_f32(exp2(var_4.x));
    var var_5 = Struct_1(firstLeadingBit(~(vec3<u32>(u_input.b.x, u_input.b.x, 25251u) ^ ~vec3<u32>(u_input.b.x, 0u, u_input.b.x))), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(_wgslsmith_mod_i32(var_2.x, 1i), u_input.a.x, var_2.x)), firstLeadingBit(~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), var_2.yzx))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_4.xwy)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-2478f, var_4.x, 1125f), vec3<f32>(var_0.x, 768f, var_0.x))))), var_2.yx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -637f, var_0.x)))), _wgslsmith_mult_vec3_i32(-_wgslsmith_div_vec3_i32(var_5.b, -vec3<i32>(-2147483647i, 43884i, var_2.x)), min(max(min(vec3<i32>(u_input.a.x, var_2.x, u_input.a.x), vec3<i32>(-2147483647i, var_5.b.x, 2147483647i)), u_input.a), vec3<i32>(u_input.a.x, -42770i, var_5.d.x))), _wgslsmith_mod_u32(var_5.a.x, ~(~87822u)) & _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(var_5.a.x >> (1u % 32u), u_input.b.x ^ 133953u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(min(var_5.c.x, 825f)), _wgslsmith_f_op_f32(abs(2081f)))))));
}

