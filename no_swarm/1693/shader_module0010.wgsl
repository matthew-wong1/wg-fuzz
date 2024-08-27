struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(208f)), vec4<i32>(-reverseBits(1i), u_input.c << (reverseBits(~arg_3) % 32u), -select(-u_input.c, 32343i, true), countOneBits(u_input.e)), u_input.d.ywz, Struct_1(~1u));
    var var_1 = arg_1;
    var_0 = Struct_2(_wgslsmith_f_op_f32(trunc(-2115f)), firstTrailingBit(vec4<i32>(var_0.b.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-50219i, -1i), vec2<i32>(var_0.b.x, -1i)), _wgslsmith_mod_i32(u_input.c, -5196i)), 1i, u_input.c)), _wgslsmith_sub_vec3_u32((~arg_1.b ^ u_input.d.wxw) ^ select(~u_input.d.xyz, min(arg_1.b, var_1.b), true), vec3<u32>(u_input.a.x, abs(4294967295u) & u_input.b, _wgslsmith_dot_vec4_u32(countOneBits(u_input.d), ~vec4<u32>(u_input.d.x, 48912u, arg_1.b.x, u_input.a.x)))), Struct_1(var_1.b.x));
    var_0 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-480f, -238f)) - var_0.a), any(!(!vec4<bool>(false, arg_2.x, arg_0.x, var_1.a.x))))), var_0.b, (_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b.x, arg_1.b.x, 17126u), arg_1.b ^ vec3<u32>(2350u, var_0.d.a, var_0.c.x)) << (arg_1.b % vec3<u32>(32u))) | min(~countOneBits(vec3<u32>(var_1.b.x, 14184u, 145503u)), ~firstLeadingBit(vec3<u32>(45687u, arg_1.b.x, 4294967295u))), var_0.d);
    let var_2 = arg_1;
    return 44837u;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = u_input.d;
    let var_1 = Struct_1(func_3(!vec3<bool>(any(vec4<bool>(true, false, false, false)), true, -1i <= u_input.c), Struct_3(vec2<bool>(true, true), vec3<u32>(~u_input.b, firstTrailingBit(u_input.d.x), 68517u)), vec3<bool>(true, !all(vec3<bool>(false, false, false)), true), abs(12908u)));
    var var_2 = abs(u_input.e);
    let var_3 = vec3<bool>(!all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), true, select(all(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true))), true, select(false, true, 6531i >= _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 47716i, -24541i), vec3<i32>(1i, -36503i, -1i)))));
    var var_4 = Struct_1(9549u);
    return _wgslsmith_mod_u32(arg_0, _wgslsmith_div_u32(24029u, ~var_4.a) ^ reverseBits(~4294967295u));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = ~arg_0 & ~min(select(arg_0, vec2<u32>(arg_2.b.x, 0u), arg_2.a), arg_2.b.yz);
    var var_1 = func_2(1u);
    let var_2 = Struct_3(arg_2.a, vec3<u32>(0u, u_input.b, ~var_0.x));
    var_1 = 4294967295u;
    var_1 = _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 1u), _wgslsmith_clamp_u32(15653u, select(57578u, 4294967295u, false | arg_2.a.x), _wgslsmith_add_u32(u_input.b, 42213u << (arg_2.b.x % 32u)))) & (_wgslsmith_add_u32(0u, arg_0.x) | (75805u >> (~var_2.b.x % 32u)));
    return Struct_1(4294967295u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = arg_1.a;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * -747f))) * arg_1.a)));
    let var_1 = arg_3;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -220f, arg_1.a, -160f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, -527f, 713f, arg_1.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1997f, 396f, -1000f, arg_1.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1727f, arg_1.a, arg_1.a, -1230f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1682f, arg_1.a, arg_1.a, -708f)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_2.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(172f, -2045f)))));
    return 1073f;
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> vec4<bool> {
    var var_0 = Struct_2(736f, min(~(vec4<i32>(1i, u_input.c, 27484i, u_input.c) ^ vec4<i32>(38761i, u_input.e, 13905i, 2147483647i)), vec4<i32>(u_input.c, -33223i, select(u_input.e, 0i, true), ~2147483647i)) << (vec4<u32>(_wgslsmith_sub_u32(~62221u, min(u_input.d.x, 53159u)), u_input.b, u_input.a.x, 1u) % vec4<u32>(32u)), _wgslsmith_add_vec3_u32(u_input.d.www, vec3<u32>(func_2(36741u), u_input.b, ~9338u)), func_1(u_input.a, select(vec4<bool>(true, u_input.e > u_input.e, select(true, false, true), all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, arg_1 < arg_1), vec4<bool>(all(vec4<bool>(false, false, false, false)), select(false, false, true), any(vec4<bool>(false, true, false, true)), u_input.b > 62972u)), Struct_3(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), abs(u_input.d.wzw))));
    let var_1 = Struct_2(arg_2, vec4<i32>(-abs(min(var_0.b.x, u_input.c)), -2147483647i, var_0.b.x, -2147483647i), vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(3802u, u_input.d.x), 4294967295u, abs(var_0.c.x)), ~(19966u >> (_wgslsmith_clamp_u32(2163u, var_0.d.a, 4294967295u) % 32u)), ~(0u & select(72804u, arg_1, false))), var_0.d);
    var_0 = Struct_2(_wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec2_u32(u_input.a, reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.c.x, u_input.d.x), u_input.a))), Struct_2(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_div_vec4_i32(max(var_1.b, vec4<i32>(u_input.c, -2147483647i, -1i, u_input.e)), select(vec4<i32>(41585i, var_0.b.x, -5855i, var_1.b.x), var_1.b, vec4<bool>(true, true, true, false))), _wgslsmith_div_vec3_u32(vec3<u32>(29527u, u_input.b, u_input.d.x), min(var_1.c, var_1.c)), var_0.d), Struct_1(0u), Struct_1(firstLeadingBit(func_2(4294967295u))))), _wgslsmith_div_vec4_i32(vec4<i32>(~(~(-13697i)), -var_0.b.x, _wgslsmith_sub_i32(-2147483647i, ~var_1.b.x), ~_wgslsmith_add_i32(u_input.c, 0i)), countOneBits(var_0.b)), vec3<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(57392u, var_0.d.a, 4294967295u), vec3<u32>(13750u, 4294967295u, u_input.a.x)), ~countOneBits(var_1.d.a), u_input.b), func_1(_wgslsmith_sub_vec2_u32(u_input.d.yx, reverseBits(_wgslsmith_mod_vec2_u32(var_0.c.xz, var_0.c.xy))), vec4<bool>(true, true, all(vec2<bool>(true, true)), -1893f <= _wgslsmith_div_f32(var_0.a, -1000f)), Struct_3(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(false, false)), countOneBits(var_0.c & vec3<u32>(34537u, 36290u, u_input.b)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1565f))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_2)), var_1.a)));
    var var_3 = Struct_2(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) + _wgslsmith_f_op_f32(var_1.a + 258f))), abs(~(-abs(var_0.b))), vec3<u32>(var_1.c.x, var_0.c.x, (arg_1 ^ abs(8202u)) ^ 55950u), func_1(~reverseBits(var_0.c.xz), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), Struct_3(vec2<bool>(false, true), var_0.c)));
    return vec4<bool>(_wgslsmith_f_op_f32(arg_2 - -1096f) > _wgslsmith_f_op_f32(-1f), any(select(vec3<bool>(true, true, true), vec3<bool>(u_input.d.x < 0u, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(trunc(-1000f)), var_0.b.x >= -2147483647i)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - var_0.a), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~u_input.d.zy, Struct_2(810f, vec4<i32>(20447i, 0i, -1i, -2147483647i), u_input.d.wzw, Struct_1(1u)), func_1(vec2<u32>(u_input.b, 1u), vec4<bool>(false, false, false, false), Struct_3(vec2<bool>(false, true), u_input.d.wwx)), func_1(vec2<u32>(0u, u_input.b), vec4<bool>(false, true, true, true), Struct_3(vec2<bool>(false, false), vec3<u32>(u_input.b, u_input.d.x, u_input.a.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f))), _wgslsmith_f_op_f32(sign(279f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-759f - _wgslsmith_div_f32(-1252f, -1109f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(132f * 267f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1275f), _wgslsmith_f_op_f32(f32(-1f) * -622f))))), 29788u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2560f * 508f))) + _wgslsmith_div_f32(-1390f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-596f, 2187f, true))))));
    let var_1 = -1513f;
    var var_2 = func_1(u_input.d.yx, select(var_0, var_0, vec4<bool>(false, all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_0.x)), Struct_3(!(!var_0.zx), vec3<u32>(4294967295u, u_input.d.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.a))));
    var_2 = func_1(u_input.d.wx, !vec4<bool>(_wgslsmith_f_op_f32(max(var_1, 2058f)) < _wgslsmith_f_op_f32(min(var_1, -363f)), true, !func_5(vec4<f32>(var_1, var_1, var_1, var_1), 28926u, 1585f).x, func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 768f, 135f, -1000f), vec4<f32>(1000f, 140f, 1080f, 608f), vec4<bool>(var_0.x, false, var_0.x, false))), _wgslsmith_mult_u32(41605u, 1u), var_1).x), Struct_3(vec2<bool>(!var_0.x, !(var_0.x == var_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, ~84u, ~56206u), _wgslsmith_mult_vec3_u32(min(vec3<u32>(var_2.a, 0u, var_2.a), vec3<u32>(47279u, u_input.b, var_2.a)), u_input.d.ywy))));
    var_2 = func_1(_wgslsmith_div_vec2_u32(u_input.a, reverseBits(vec2<u32>(_wgslsmith_mult_u32(u_input.b, 0u), 66993u | var_2.a))), !var_0, Struct_3(select(func_5(vec4<f32>(-3080f, -1086f, 448f, -398f), var_2.a, -955f).xz, var_0.wx, false), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.b, var_2.a), _wgslsmith_mod_u32(0u, 4294967295u), 1u), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, 34918u), u_input.d.yzw)))));
    var_2 = Struct_1(1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(638f - -278f), var_1, 577f, var_1), _wgslsmith_f_op_f32(select(var_1, -1000f, false)), u_input.a, _wgslsmith_add_u32(~func_2(~21964u), ~(u_input.a.x & 40663u) << (~(~u_input.b) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -287f)));
}

