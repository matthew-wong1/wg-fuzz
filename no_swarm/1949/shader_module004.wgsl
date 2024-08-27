struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = firstLeadingBit(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-1i, 4745i)), ~vec2<i32>(-53790i, u_input.a.x)));
    var var_1 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(~2215u, ~arg_0.x, 50076u, arg_0.x | 89255u), select(max(vec4<u32>(arg_0.x, 0u, arg_0.x, arg_0.x), vec4<u32>(u_input.c, 0u, 7495u, u_input.c)), select(vec4<u32>(44899u, 30281u, 1u, 1u), vec4<u32>(arg_0.x, 0u, arg_0.x, 37987u), false), true)));
    var_1 = _wgslsmith_add_vec4_u32(~countOneBits(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_1.x, u_input.c, var_1.x, 47600u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, u_input.c), vec4<u32>(var_1.x, 19102u, 61543u, var_1.x), vec4<u32>(22907u, 1u, u_input.c, 25724u)))), reverseBits(~(~vec4<u32>(u_input.c, u_input.c, 0u, 40338u))));
    let var_2 = _wgslsmith_add_vec2_u32(var_1.xy, select(~arg_0.yz, vec2<u32>(~_wgslsmith_clamp_u32(arg_0.x, 4294967295u, u_input.c), abs(firstTrailingBit(arg_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(912f + 197f), _wgslsmith_f_op_f32(-arg_2), true)) != arg_2));
    var_1 = ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, arg_0.x, 4294967295u, var_1.x), ~vec4<u32>(22981u, arg_0.x, 1u, var_2.x)) | ~select(vec4<u32>(29433u, 0u, 31943u, 1u), vec4<u32>(var_2.x, 18335u, u_input.c, var_1.x), false), ~(~(~vec4<u32>(u_input.c, arg_0.x, u_input.c, var_2.x))));
    return 1595f;
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1485f), -1076f) + _wgslsmith_f_op_f32(f32(-1f) * -754f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1127f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(max(_wgslsmith_mod_vec3_u32(vec3<u32>(38180u, 46919u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), ~vec3<u32>(1u, 0u, u_input.c)), vec4<bool>(1u == u_input.c, false, false, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(660f)), _wgslsmith_div_f32(-539f, -1000f)), Struct_1(true, all(vec3<bool>(false, false, true))))) + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(930f - _wgslsmith_div_f32(949f, _wgslsmith_f_op_f32(floor(-988f)))));
    let var_1 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -868f), _wgslsmith_f_op_f32(-var_0.x)), Struct_1(true, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))), Struct_2(_wgslsmith_f_op_f32(-539f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f))))), vec3<bool>(true, true, true), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-121f - var_0.x), _wgslsmith_f_op_f32(max(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-614f, var_0.x)))))), !select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(493f - 659f)), var_1.b, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.c.x) + _wgslsmith_f_op_f32(-var_1.c.c.x))), var_1.c.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(301f, _wgslsmith_f_op_f32(abs(1143f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -343f))))), var_1.c.b.xx);
    var var_3 = var_2.c;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.a, -473f, var_2.c.a, -1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-777f, -243f, var_1.c.c.x, var_1.a)) - vec4<f32>(var_3.a, var_3.c.x, var_1.a, var_2.c.a))))) + vec4<f32>(var_0.x, var_1.a, _wgslsmith_f_op_f32(abs(var_3.a)), 1157f));
    return Struct_3(var_1.a, var_2.b, Struct_2(1468f, var_2.c.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_1.c.c)), _wgslsmith_f_op_vec2_f32(step(var_3.c, vec2<f32>(var_0.x, var_2.c.a))), select(var_3.b.xz, vec2<bool>(false, false), var_3.b.xx))))), var_2.c.b.xx);
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.a, var_0.c.c.x, -171f), vec3<f32>(var_0.a, 265f, 647f), false)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c.x, -1000f, var_0.a)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(step(var_0.a, var_0.a)), _wgslsmith_f_op_f32(var_0.c.c.x * 1618f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c.x, 118f, -649f)))) - vec3<f32>(_wgslsmith_div_f32(var_0.c.c.x, var_0.c.a), 940f, 162f));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(-545f + 1769f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-564f - var_0.a) * var_1.x), arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a * -152f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a - var_0.c.c.x) - var_1.x))), _wgslsmith_f_op_f32(sign(891f)));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, u_input.c, 15585u, 0u), vec4<u32>(0u, u_input.c, u_input.c, 4294967295u)), ~vec4<u32>(1u, u_input.c, u_input.c, 12228u)), vec4<u32>(~u_input.c, max(u_input.c, u_input.c), _wgslsmith_add_u32(u_input.c, 29592u), u_input.c)), _wgslsmith_sub_u32(0u, u_input.c), u_input.c, 13012u) & vec4<u32>(u_input.c, abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 5834u)), ~1u)), 1u, ~abs(4294967295u) << (max(select(22u, 84443u, arg_0.x), abs(1u)) % 32u));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(710f, var_0.c.a, -1242f) + vec3<f32>(var_0.a, var_0.c.c.x, var_1.x)), vec3<f32>(var_1.x, var_0.a, -1038f))))));
    return _wgslsmith_mod_u32(0u, 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(24980u >> (0u % 32u), abs(u_input.c), countOneBits(u_input.c)), _wgslsmith_add_u32(_wgslsmith_mod_u32(41792u, u_input.c), abs(93904u)), ~(~u_input.c), (u_input.c ^ u_input.c) >> (u_input.c % 32u)) | ~vec4<u32>(u_input.c | u_input.c, func_1(vec2<bool>(false, false)), firstTrailingBit(u_input.c), u_input.c | 6240u));
    var var_1 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(u_input.a.wy) << (vec2<u32>(countOneBits(u_input.c) << (~0u % 32u), _wgslsmith_mult_u32(~u_input.c, u_input.c)) % vec2<u32>(32u)), -_wgslsmith_clamp_vec2_i32(-vec2<i32>(1551i, 1i), vec2<i32>(~19974i, abs(-2147483647i)), u_input.b.zy), max(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), ~vec2<i32>(u_input.a.x, u_input.a.x)), select(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), u_input.b.x), -vec2<i32>(2147483647i, 2147483647i), true)));
    var var_2 = var_1.x;
    let var_3 = ~u_input.a;
    var_2 = -21189i;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1209f)))) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -844f)))), 888f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1684f - -1000f) * _wgslsmith_f_op_f32(func_3(var_0.wwz, vec4<bool>(true, true, false, false), -1773f, Struct_1(true, false))))))));
    let var_5 = func_2().c.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec2<i32>(13613i, u_input.a.x), _wgslsmith_f_op_vec3_f32(exp2(var_4.zxz)));
}

