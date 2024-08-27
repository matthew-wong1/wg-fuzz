struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    return arg_3.c;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.d.x)) + arg_1.d.x), 794f, _wgslsmith_div_f32(-715f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_3.d.x)), _wgslsmith_f_op_f32(max(1737f, 581f))))));
    var var_1 = Struct_1(select(!(!(!vec3<bool>(arg_3.b, arg_0.a.x, arg_0.b))), vec3<bool>(true, true, any(!arg_3.a)), vec3<bool>(true, true, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.c, 0i, arg_1.c, 11688i), vec4<i32>(-66682i, 2147483647i, arg_0.c, -1i)) <= 2147483647i)), select(arg_2.a.x, true, any(!vec3<bool>(true, true, arg_0.b)) && (any(arg_2.a) && true)), countOneBits(arg_2.c), _wgslsmith_f_op_vec4_f32(arg_3.d * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(571f)), _wgslsmith_f_op_f32(abs(arg_3.d.x)), -625f, _wgslsmith_f_op_f32(max(arg_2.d.x, -1000f))))));
    let var_2 = Struct_1(!arg_1.a, false, ~1i, vec4<f32>(1267f, arg_1.d.x, var_1.d.x, arg_1.d.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.d.zyz));
    let var_4 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b ^ vec4<u32>(4294967295u, u_input.b.x, abs(0u), u_input.d), ~_wgslsmith_mod_vec4_u32(firstTrailingBit(u_input.b), vec4<u32>(60283u, u_input.a, 0u, u_input.d))), u_input.b, vec4<u32>(~(~_wgslsmith_sub_u32(u_input.a, 9268u)), _wgslsmith_dot_vec3_u32(vec3<u32>(~50748u, ~u_input.d, ~0u), (u_input.b.wzw & vec3<u32>(u_input.b.x, 14871u, u_input.a)) | _wgslsmith_sub_vec3_u32(vec3<u32>(11500u, u_input.a, u_input.b.x), u_input.b.wwy)), _wgslsmith_dot_vec3_u32(u_input.b.zwz, ~(~u_input.b.wxw)), _wgslsmith_mod_u32(~45718u, ~u_input.d)));
    return var_1.a.zy;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, any(vec3<bool>(arg_0.a.x, arg_0.b, func_2(vec3<f32>(arg_1, 1648f, arg_0.d.x), Struct_1(vec3<bool>(arg_0.a.x, false, arg_0.b), arg_0.a.x, 2147483647i, arg_0.d), vec3<u32>(u_input.d, u_input.a, u_input.b.x), Struct_1(vec3<bool>(arg_0.b, false, arg_0.b), false, -13165i, arg_0.d)) > -67382i)), 46397i, arg_0.d);
    let var_1 = select(var_0.a.zz, var_0.a.zz, !(!func_3(Struct_1(vec3<bool>(arg_0.a.x, false, arg_0.b), false, 1i, vec4<f32>(var_0.d.x, 334f, arg_1, -679f)), arg_0, Struct_1(vec3<bool>(true, arg_0.b, true), false, -1i, vec4<f32>(-601f, -763f, 1144f, -2326f)), Struct_1(arg_0.a, var_0.b, 61060i, var_0.d))));
    let var_2 = arg_0.c;
    let var_3 = !any(arg_0.a);
    let var_4 = 48503i;
    return Struct_1(vec3<bool>(any(select(!vec4<bool>(var_3, false, true, false), select(vec4<bool>(var_0.a.x, false, var_0.a.x, true), vec4<bool>(var_3, true, arg_0.b, var_1.x), vec4<bool>(arg_0.b, false, var_0.a.x, false)), !arg_0.a.x)), false, firstTrailingBit(_wgslsmith_sub_u32(42513u, u_input.d)) >= u_input.a), all(select(!(!vec4<bool>(true, arg_0.b, var_3, false)), select(select(vec4<bool>(arg_0.a.x, true, var_0.a.x, true), vec4<bool>(false, var_0.b, var_3, true), vec4<bool>(false, var_3, var_1.x, var_0.b)), vec4<bool>(var_3, false, var_3, false), vec4<bool>(true, true, arg_0.b, true)), true)), 11423i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.d.x, arg_0.d.x, arg_0.d.x, -1563f))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(arg_0.d.xyz, _wgslsmith_f_op_vec3_f32(arg_0.d.zwy * _wgslsmith_div_vec3_f32(vec3<f32>(1071f, 1651f, -654f), arg_0.d.zzy))))));
    var_0 = select(vec4<u32>(~select(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(var_0.x, 22970u)), ~var_0.x, any(vec3<bool>(false, false, arg_0.b))), ~_wgslsmith_mult_u32(var_0.x, 1u), _wgslsmith_sub_u32(~min(var_0.x, u_input.b.x), u_input.d), arg_2), select(vec4<u32>(~1u, firstLeadingBit(abs(var_0.x)), ~1u, _wgslsmith_mod_u32(~0u, 13533u)), u_input.b, true), select(!vec4<bool>(true, 48949u < u_input.b.x, arg_1.x, 2222i <= arg_0.c), !(!vec4<bool>(false, arg_0.b, false, false)), arg_0.b));
    var_0 = vec4<u32>(40265u, ~arg_2, arg_2, 0u);
    var var_2 = _wgslsmith_clamp_u32(~(~u_input.b.x), ~1u, 4294967295u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-704f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_1.x, -226f)), _wgslsmith_f_op_f32(-arg_0.d.x)))))));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = ~(-reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, -19886i), vec4<i32>(2147483647i, 15858i, 31632i, 1i), vec4<i32>(-2147483647i, -1i, u_input.c.x, -39160i)) ^ vec4<i32>(-1i, -1i, 2147483647i, 1i)));
    let var_1 = Struct_1(func_1(func_1(func_1(Struct_1(vec3<bool>(true, true, true), true, 2147483647i, arg_1), _wgslsmith_f_op_f32(max(397f, 867f))), -267f), 1f).a, _wgslsmith_add_i32(~(-1i), 19109i) >= var_0.x, ~u_input.c.x, arg_1);
    var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(reverseBits(var_0.x), _wgslsmith_dot_vec3_i32(var_0.zzy, var_0.xzw)), _wgslsmith_sub_i32(0i, -2147483647i) & _wgslsmith_sub_i32(36391i, var_0.x), _wgslsmith_add_i32(0i, u_input.c.x), ~u_input.c.x), ~(~firstLeadingBit(vec4<i32>(var_1.c, var_0.x, -2147483647i, -9584i))), _wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, var_0.x, u_input.c.x, -1i), vec4<i32>(var_0.x, -2147483647i, var_0.x, var_1.c))), countOneBits(~vec4<i32>(-62333i, -16232i, u_input.c.x, u_input.c.x)))), vec4<i32>(-select(-1i, 0i, var_1.b) & (_wgslsmith_dot_vec2_i32(vec2<i32>(20830i, var_1.c), var_0.xz) | -3953i), reverseBits(max(-44374i, _wgslsmith_mod_i32(var_0.x, var_0.x))), _wgslsmith_mod_i32(-1i, var_1.c ^ -1i), var_0.x));
    var_0 = ~firstLeadingBit((select(vec4<i32>(-1i, var_0.x, u_input.c.x, var_1.c), vec4<i32>(-2147483647i, u_input.c.x, 1i, -2147483647i), true) | (vec4<i32>(46840i, u_input.c.x, var_0.x, var_1.c) << (u_input.b % vec4<u32>(32u)))) >> (abs(select(vec4<u32>(u_input.b.x, u_input.d, 27946u, u_input.a), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.d), var_1.b)) % vec4<u32>(32u)));
    var var_2 = var_1;
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> Struct_1 {
    var var_0 = -318f;
    var_0 = -891f;
    var var_1 = ~(u_input.b.xwx ^ (u_input.b.wzw << (vec3<u32>(firstTrailingBit(arg_2), reverseBits(0u), max(arg_2, u_input.d)) % vec3<u32>(32u))));
    var var_2 = !vec4<bool>(arg_0.a.x, (-423f <= _wgslsmith_f_op_f32(sign(-802f))) | any(vec2<bool>(true, true)), !any(arg_0.a), any(arg_0.a.zy));
    let var_3 = max(countOneBits(u_input.b) ^ u_input.b, _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(var_1.x, var_1.x, arg_2, 28751u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, u_input.d, var_1.x), vec4<u32>(var_1.x, 0u, 28471u, 4294967295u)), vec4<u32>(0u, 80063u, 4294967295u, 78996u))) | vec4<u32>(18114u, ~_wgslsmith_clamp_u32(u_input.b.x << (1u % 32u), 43404u, ~u_input.a), _wgslsmith_sub_u32(u_input.a, 46561u) << (_wgslsmith_clamp_u32(4294967295u >> (arg_2 % 32u), _wgslsmith_sub_u32(40579u, 2290u), select(u_input.a, 3421u, var_2.x)) % 32u), var_1.x);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, u_input.a, 4294967295u), u_input.b)), _wgslsmith_sub_vec4_u32(firstLeadingBit(u_input.b), vec4<u32>(u_input.a, u_input.d, 0u, 4294967295u))) | ~_wgslsmith_add_u32(~0u, u_input.a));
    let var_1 = func_6(func_5(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(663f)), _wgslsmith_f_op_f32(floor(659f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1542f + -244f), -1706f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -520f), 1415f, _wgslsmith_f_op_f32(func_4(func_1(Struct_1(vec3<bool>(false, false, false), false, -25940i, vec4<f32>(-2150f, -923f, 293f, -1441f)), 1224f), vec2<bool>(true, true), var_0 | 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f * -1000f)))), _wgslsmith_div_vec2_i32(min(u_input.c, abs(u_input.c)), vec2<i32>(u_input.c.x, -1i) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 1i), vec2<i32>(u_input.c.x, u_input.c.x))) | ~max(_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(-2147483647i, 0i), u_input.c), _wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, 13250i))), reverseBits(u_input.d));
    var var_2 = ~u_input.c;
    var var_3 = var_1;
    let var_4 = Struct_1(select(!vec3<bool>(!var_1.b, -31724i != var_2.x, var_3.b), !(!var_3.a), any(select(var_1.a.zz, var_3.a.yx, var_3.a.yx))), true, 4090i, func_6(var_1, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(var_1.c, 2147483647i), max(vec2<i32>(-1i, 0i), u_input.c)), vec2<i32>(~var_1.c, -2147483647i)), var_0).d);
    let var_5 = var_1;
    let var_6 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(871f, var_3.d.x))), _wgslsmith_f_op_f32(func_4(var_4, !vec2<bool>(var_5.b, var_4.a.x), var_0)))))), _wgslsmith_f_op_f32(select(var_4.d.x, var_3.d.x, any(var_1.a.xy))), var_5.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.d.x))) - _wgslsmith_f_op_f32(var_1.d.x * -181f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_5.d.zyx - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.d.x, 156f, var_5.d.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1529f, var_4.d.x, -1000f))))))), _wgslsmith_mod_u32(~(~5735u), _wgslsmith_clamp_u32(u_input.b.x | 0u, ~20637u, 0u)) >> (~(_wgslsmith_dot_vec2_u32(u_input.b.wy, u_input.b.yx) & _wgslsmith_div_u32(var_0, u_input.a)) % 32u));
}

