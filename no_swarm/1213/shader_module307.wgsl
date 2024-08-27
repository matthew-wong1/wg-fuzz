struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: f32) -> vec4<bool> {
    let var_0 = Struct_4(abs(firstLeadingBit(u_input.c.xx) & vec2<i32>(u_input.c.x, 0i)) & u_input.c.ww);
    let var_1 = vec2<i32>(~62412i, -20414i & ~_wgslsmith_dot_vec3_i32(vec3<i32>(23316i, -2147483647i, var_0.a.x), vec3<i32>(48765i, var_0.a.x, -8116i) ^ vec3<i32>(var_0.a.x, -46191i, 2147483647i)));
    let var_2 = vec2<u32>(~u_input.a, select(~_wgslsmith_clamp_u32(0u, u_input.a, u_input.a), ~1u, any(vec3<bool>(true, true, true))) & u_input.a);
    var var_3 = vec2<f32>(arg_1, arg_0);
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_3.x, var_3.x)), -1427f, all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-1035f + _wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 628f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, -828f)))))));
    return vec4<bool>(_wgslsmith_f_op_f32(min(1019f, _wgslsmith_f_op_f32(select(-475f, _wgslsmith_div_f32(479f, arg_1), any(vec4<bool>(false, false, true, false)))))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(ceil(var_3.x)))), !(!(!any(vec2<bool>(true, true)))), ~var_2.x < var_2.x, !(_wgslsmith_add_i32(var_1.x, reverseBits(1i)) < _wgslsmith_dot_vec4_i32(u_input.c, firstLeadingBit(u_input.c))));
}

fn func_2() -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-952f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1063f * 668f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1347f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -777f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_div_f32(-634f, -2081f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1523f))));
    var var_1 = select(select(select(vec4<bool>(true, true, true, true), func_3(1010f, _wgslsmith_f_op_f32(-var_0.x)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, true, false), true)), !select(vec4<bool>(true, false, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), false), any(vec2<bool>(false, true))), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, !select(false, true, false), true)), vec4<bool>(false, false, true, min(-u_input.c.x, u_input.b) >= u_input.c.x), false);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(var_0.wz, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.zw))) + var_0.zw), _wgslsmith_f_op_vec2_f32(var_0.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.zy, var_0.wy)))))));
    var_1 = select(select(vec4<bool>(!(230f != var_0.x), var_1.x, var_1.x, var_2.x > 1000f), !func_3(_wgslsmith_f_op_f32(max(var_2.x, 587f)), _wgslsmith_f_op_f32(-var_2.x)), vec4<bool>(select(var_1.x, true, true), var_1.x, !var_1.x, any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)) || select(false, true, false))), !(!select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, false, true, false), false), vec4<bool>(false, var_1.x, false, var_1.x))), !all(vec3<bool>(var_1.x | true, true, all(vec2<bool>(var_1.x, false)))));
    let var_3 = Struct_1(var_0, reverseBits(u_input.c.xxx), vec4<bool>(!all(!vec4<bool>(var_1.x, var_1.x, var_1.x, false)), all(select(vec3<bool>(false, false, true), vec3<bool>(var_1.x, var_1.x, false), select(var_1.x, var_1.x, false))), true, var_1.x));
    return u_input.c.x;
}

fn func_1(arg_0: f32, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_clamp_i32(~arg_1, 111058i, _wgslsmith_add_i32(-1i, u_input.b)) ^ _wgslsmith_div_i32(firstLeadingBit(abs(u_input.c.x)), func_2());
    let var_1 = 12716i;
    var var_2 = vec3<bool>(true, any(vec3<bool>(all(vec4<bool>(true, true, true, true)), false, _wgslsmith_f_op_f32(arg_0 - arg_0) >= arg_0)), all(!(!func_3(arg_0, -268f).zy)));
    let var_3 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 15229u)), ~u_input.a), vec3<i32>(2147483647i, 1i, -1i));
    var var_4 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-523f, -1727f, false)), -125f, _wgslsmith_f_op_f32(min(-1000f, arg_0)), _wgslsmith_f_op_f32(-arg_0)) + vec4<f32>(arg_0, -489f, _wgslsmith_f_op_f32(max(-1118f, arg_0)), _wgslsmith_f_op_f32(step(122f, 301f)))), vec3<i32>(arg_1, -u_input.b, u_input.c.x), select(vec4<bool>(true || var_2.x, var_2.x, !var_2.x, var_2.x), !(!vec4<bool>(false, false, var_2.x, true)), select(!vec4<bool>(false, var_2.x, var_2.x, true), select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(true, var_2.x, var_2.x, var_2.x)), all(vec2<bool>(false, var_2.x))))), Struct_2(~(~_wgslsmith_mod_u32(4294967295u, u_input.a)), min(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(var_1, u_input.b, -1i)), -vec3<i32>(var_3.b.x, var_1, -16534i), var_3.b ^ vec3<i32>(var_1, var_3.b.x, 0i)), abs(vec3<i32>(40478i, -1i, -5064i) & u_input.c.yxy))), 0u, reverseBits(_wgslsmith_div_vec3_i32(u_input.c.zyw, -(vec3<i32>(1i, arg_1, var_1) << (vec3<u32>(var_3.a, var_3.a, 31017u) % vec3<u32>(32u))))), Struct_2(21460u, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.b, arg_1 ^ u_input.b), max(~var_3.b, u_input.c.xxz & u_input.c.wxy), u_input.c.zyx)));
    return _wgslsmith_div_i32(-min(4663i, 44195i), -(~_wgslsmith_dot_vec3_i32(var_3.b, countOneBits(vec3<i32>(0i, var_3.b.x, var_4.e.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = -vec2<i32>(1i, _wgslsmith_div_i32(i32(-1i) * -u_input.c.x, _wgslsmith_add_i32(abs(-10932i), _wgslsmith_mod_i32(52090i, 4095i))));
    let var_2 = ~_wgslsmith_add_i32(_wgslsmith_mod_i32(0i, abs(1i)), 1i);
    var var_3 = vec2<i32>(_wgslsmith_mod_i32(24760i, ~(-17117i)), ~func_1(720f, _wgslsmith_div_i32(~(-12956i), var_2)));
    var var_4 = 4505i ^ var_3.x;
    var_4 = ~(-(~1047i));
    let var_5 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-442f, 611f, 212f, 2101f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-604f, -2001f, -843f, 2303f)))) + vec4<f32>(_wgslsmith_f_op_f32(-1243f - 857f), _wgslsmith_f_op_f32(trunc(323f)), -263f, _wgslsmith_f_op_f32(max(-173f, -1559f)))), min(firstLeadingBit(min(u_input.c.zwz, vec3<i32>(28872i, u_input.b, 2147483647i))), select(vec3<i32>(-2147483647i, var_2, u_input.c.x) >> (vec3<u32>(u_input.a, 4294967295u, 1u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(u_input.c.ywx, var_0.zxz), vec3<bool>(true, true, true))), vec4<bool>(true, !select(false, true, false), all(vec2<bool>(false, false)), true)), Struct_2(u_input.a, -_wgslsmith_sub_vec3_i32(reverseBits(u_input.c.xyw), _wgslsmith_sub_vec3_i32(var_0.www, u_input.c.wxy))), u_input.a, abs(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(-1i, 1i, 25953i, -1i)), 1i, u_input.b), ~(var_1.x & var_0.x), firstLeadingBit(abs(var_1.x)))), Struct_2(u_input.a, var_0.yyz));
    let var_6 = var_0;
    var var_7 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_7.a.x, select(countOneBits(reverseBits(~vec2<u32>(u_input.a, u_input.a))), ~(~vec2<u32>(u_input.a, 0u)), func_3(111f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_7.a.x) - _wgslsmith_f_op_f32(max(-608f, var_5.a.a.x)))).zx), vec2<u32>(~var_5.b.a & 80871u, var_5.c));
}

