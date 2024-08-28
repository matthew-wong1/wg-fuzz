struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(18593u, arg_0) | ~vec2<u32>(1u, u_input.c.x), countOneBits(vec2<u32>(arg_0, u_input.c.x) | vec2<u32>(arg_0, arg_0))), (~min(arg_3, vec2<u32>(0u, arg_0)) ^ ~(arg_3 & arg_3)) | ~u_input.c);
    var_0 = ~vec2<u32>(abs(4294967295u) ^ ~arg_3.x, countOneBits(_wgslsmith_sub_u32(2671u, arg_0))) ^ arg_3;
    var_0 = _wgslsmith_div_vec2_u32(~arg_3, ~vec2<u32>(1u, 90882u));
    var_0 = _wgslsmith_clamp_vec2_u32(~(countOneBits(~vec2<u32>(84924u, 25787u)) << (min(~arg_3, arg_3) % vec2<u32>(32u))), u_input.c, arg_3);
    var_0 = u_input.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1573f, 683f)) * _wgslsmith_div_f32(-1000f, -677f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(782f * 1907f), -1768f))) - _wgslsmith_div_f32(-735f, -1000f)));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(20612u, vec2<bool>(true, true), vec4<i32>(36275i, u_input.b, u_input.d, u_input.b), u_input.c)) - _wgslsmith_f_op_f32(ceil(2514f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-961f)), _wgslsmith_f_op_f32(sign(-306f)), any(vec4<bool>(true, true, false, false)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(368f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 571f));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 835f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-509f, var_0.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(653f, -577f) + vec2<f32>(var_0.x, 1625f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(989f, -1133f) + vec2<f32>(var_0.x, -1534f))))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-171f, -110f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, 847f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1778f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, 1258f))))))) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x));
    var var_1 = all(vec2<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true))), !any(vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~15049u, min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 6578u, u_input.c.x), vec4<u32>(4294967295u, 18795u, 38980u, 4294967295u)), countOneBits(u_input.c.x))), vec2<u32>(u_input.c.x, ~u_input.c.x));
    return i32(-1i) * -29651i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = false;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(arg_0.d, -729f, arg_0.a))) * _wgslsmith_f_op_f32(-arg_1.d)))), _wgslsmith_div_f32(-604f, _wgslsmith_f_op_f32(floor(-1135f))));
    var_1 = -616f;
    var var_2 = ~(-(~arg_1.b.wxw));
    var var_3 = !(!(!select(vec4<bool>(true, true, true, true), !vec4<bool>(false, false, arg_0.a, false), arg_2.a || true)));
    return select(var_3.xzy, vec3<bool>(all(vec2<bool>(true, all(var_3.zy))), _wgslsmith_f_op_f32(f32(-1f) * -238f) >= arg_0.d, true), any(select(vec4<bool>(select(true, false, false), false, false, arg_0.a), vec4<bool>(true, true, -9376i != var_2.x, arg_0.a | false), vec4<bool>(select(true, var_0, var_0), arg_0.a, arg_1.a, true))));
}

fn func_1() -> u32 {
    var var_0 = func_4(Struct_1(true, vec4<i32>(u_input.a.x, u_input.a.x, abs(_wgslsmith_add_i32(u_input.d, u_input.a.x)), 2147483647i), func_2(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f - 444f))))), Struct_1(any(vec3<bool>(any(vec2<bool>(true, true)), true, true)), abs(-vec4<i32>(41375i, 39156i, 0i, 1i) & ~vec4<i32>(-30778i, 1i, u_input.b, -15590i)), _wgslsmith_sub_i32(u_input.d, u_input.a.x), 998f), Struct_1(false, ~(-vec4<i32>(-34966i, 1i, 1i, u_input.d)), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-508f * -1000f), -1000f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(sign(-1366f)), _wgslsmith_f_op_f32(abs(-981f)), _wgslsmith_f_op_f32(f32(-1f) * -1599f))))));
    let var_2 = Struct_1(func_4(Struct_1(select(true, false, true), vec4<i32>(u_input.b, i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.zx, vec2<i32>(u_input.d, u_input.d)), select(u_input.a.x, 2147483647i, true)), u_input.a.x, -424f), Struct_1(var_0.x, abs(vec4<i32>(u_input.b, 2147483647i, u_input.a.x, u_input.a.x) & vec4<i32>(19178i, u_input.b, u_input.a.x, -14459i)), countOneBits(abs(u_input.d)), var_1.x), Struct_1(all(vec2<bool>(true, true)), ~(vec4<i32>(-9819i, 2147483647i, u_input.a.x, -1i) & vec4<i32>(-2147483647i, 1i, u_input.b, u_input.a.x)), -2291i, -2036f)).x, ~vec4<i32>(u_input.a.x, u_input.d, (u_input.b >> (90019u % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 6994u, 36284u, 12602u), vec4<u32>(u_input.c.x, 4294967295u, 0u, u_input.c.x)) % 32u), ~(-21139i)), _wgslsmith_sub_i32(abs(-72259i), ~16853i), -1235f);
    var var_3 = vec4<bool>(true, any(select(!(!vec3<bool>(var_2.a, var_0.x, false)), select(vec3<bool>(var_2.a, var_0.x, var_2.a), !vec3<bool>(var_2.a, true, false), !vec3<bool>(var_2.a, true, true)), (var_0.x | false) & any(vec4<bool>(false, var_0.x, var_0.x, var_2.a)))), var_2.a, true);
    var var_4 = Struct_1(any(vec3<bool>(true, true, true)), -_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, 3633i, u_input.a.x, 2147483647i), var_2.b), -1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -1403f) - _wgslsmith_f_op_f32(-102f + _wgslsmith_f_op_f32(abs(485f)))), _wgslsmith_f_op_f32(abs(-587f))));
    return _wgslsmith_mod_u32(102779u, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-119f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1180f - -328f)))), ~vec4<i32>(_wgslsmith_add_i32(0i, max(-1i, u_input.d)), u_input.d, _wgslsmith_clamp_i32(-51901i, _wgslsmith_div_i32(-47313i, u_input.b), min(u_input.d, 33785i)), -2147483647i), -_wgslsmith_mod_i32(16563i, 10589i), 917f);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(var_0.c ^ u_input.b), ~vec3<u32>(func_1(), ~(u_input.c.x | u_input.c.x), u_input.c.x | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 45350u, u_input.c.x), vec4<u32>(19985u, u_input.c.x, 4294967295u, u_input.c.x))), ~(~(~(4294967295u ^ u_input.c.x))), countOneBits(u_input.a), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_0.b.x, -1i), u_input.b, -25338i, ~u_input.b), firstLeadingBit(var_0.b)));
}

