struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(-19087i), 1i, 1i & ~u_input.d.x), _wgslsmith_div_vec3_i32((abs(vec3<i32>(2147483647i, 0i, u_input.d.x)) | u_input.d) & -u_input.d, ~u_input.d));
    var_0 = _wgslsmith_div_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(abs(~u_input.d), -u_input.d)), select(u_input.d & vec3<i32>(_wgslsmith_div_i32(var_0.x, -1i), -12111i, ~u_input.d.x), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~u_input.d, vec3<i32>(var_0.x, var_0.x, u_input.d.x) ^ u_input.d), -vec3<i32>(29602i, u_input.d.x, -53725i)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), !all(vec2<bool>(false, false)))));
    let var_1 = select(vec2<bool>(!all(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, true))), vec2<bool>(true, true), !(!vec2<bool>(all(vec4<bool>(false, true, true, true)), true)));
    var var_2 = ~67741u;
    var var_3 = Struct_2(Struct_1(select(firstTrailingBit(select(var_0.x, 0i, var_1.x)), ~u_input.d.x, true), var_0.zz >> (~(~u_input.e.xx) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(756f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1000f - -1708f)))), select(~(u_input.e.zxx >> (u_input.e.zyz % vec3<u32>(32u))), select(u_input.e.zzz, u_input.e.zwz, !vec3<bool>(true, var_1.x, var_1.x)), vec3<bool>(any(var_1), true, all(vec3<bool>(true, var_1.x, var_1.x)))) << (countOneBits(_wgslsmith_div_vec3_u32(~u_input.e.yzy, ~u_input.e.yxy)) % vec3<u32>(32u)), Struct_1(1i, -reverseBits(-vec2<i32>(10184i, -29314i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1595f, 1331f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(937f, 1907f))))), -_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.d.x, var_0.x, 1i, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-38489i, 40085i, u_input.a.x, 33039i), vec4<i32>(u_input.a.x, var_0.x, 0i, var_0.x)), vec4<i32>(var_0.x, -21341i, u_input.d.x, 12500i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, ~(-64492i)), ~(~vec4<i32>(-2147483647i, 11205i, u_input.d.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(997f + _wgslsmith_f_op_f32(-301f * 2884f)) - 1f));
    return vec3<u32>(select(0u, firstLeadingBit(~19637u >> (1u % 32u)), !(!var_1.x)), ~1u, ~(~_wgslsmith_dot_vec2_u32(var_3.b.xz, vec2<u32>(var_3.b.x, 57208u)) | ~(~1u)));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.e.wyw, func_3()), ~((_wgslsmith_clamp_vec3_u32(u_input.e.wxw, vec3<u32>(u_input.b, u_input.e.x, 1u), u_input.e.xxx) >> (vec3<u32>(u_input.b, 1u, 1u) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 1u), u_input.e.wxw) % vec3<u32>(32u))));
    let var_1 = select(vec2<bool>(any(vec2<bool>(true, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)))), !select(vec2<bool>(true, all(vec4<bool>(true, false, true, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false), all(vec3<bool>(true, true, false))), vec2<bool>(true, true)), select(vec2<bool>(false, -298f < _wgslsmith_f_op_f32(trunc(1527f))), !select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(!all(vec4<bool>(true, true, false, false)), any(vec4<bool>(true, false, false, true)))));
    var var_2 = Struct_1(-28015i ^ (firstTrailingBit(40058i) << ((func_3().x & u_input.e.x) % 32u)), ~vec2<i32>(-1735i << (select(0u, 74476u, true) % 32u), min(-17254i, 0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-913f, -1880f, -1000f)) + vec3<f32>(_wgslsmith_f_op_f32(-1706f - -1000f), -550f, _wgslsmith_f_op_f32(min(1836f, 369f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1920f, 1804f, 809f) + vec3<f32>(-134f, -1000f, 961f))))));
    var_2 = Struct_1(-2147483647i, reverseBits(vec2<i32>(~select(var_2.b.x, u_input.d.x, false), u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(var_2.c.x - var_2.c.x), _wgslsmith_f_op_f32(floor(-1000f))))));
    var var_3 = Struct_1(var_2.a, vec2<i32>(var_2.a, ~var_2.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.c, var_2.c, var_1.x)))))));
    return !(!(!vec4<bool>(false, var_2.c.x > var_2.c.x, true, all(vec4<bool>(false, var_1.x, var_1.x, false)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * _wgslsmith_f_op_f32(round(arg_1.c.x))), arg_1.c.x, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1141f, _wgslsmith_f_op_f32(-arg_1.c.x)) + -353f))));
    let var_1 = !(!vec4<bool>(true, arg_3, !any(arg_2), all(vec2<bool>(false, arg_2.x))));
    let var_2 = 2147483647i;
    let var_3 = vec4<bool>(all(select(!(!vec4<bool>(true, arg_2.x, false, true)), func_2(), false)), true, all(func_2().wwy), any(var_1.zz));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_1.c.x)), _wgslsmith_f_op_f32(abs(903f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.c.x)) * -1578f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x)));
    return _wgslsmith_f_op_f32(-236f - _wgslsmith_f_op_f32(-arg_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-470f - -167f))) - _wgslsmith_f_op_f32(-2378f * _wgslsmith_f_op_f32(func_1(u_input.d, Struct_1(u_input.d.x, vec2<i32>(-25084i, -32076i), vec3<f32>(-1693f, 1140f, -551f)), vec2<bool>(true, false), u_input.d.x <= -2147483647i)))) - 293f);
    var var_1 = _wgslsmith_dot_vec3_i32(abs(abs(vec3<i32>(-2369i, u_input.d.x, 2147483647i))), -vec3<i32>(u_input.d.x, _wgslsmith_div_i32(u_input.a.x | 28998i, -1i), -abs(0i)));
    var_0 = _wgslsmith_f_op_f32(sign(1000f));
    var_1 = -24482i;
    let var_2 = Struct_2(Struct_1(min(u_input.a.x & u_input.a.x, ~(u_input.a.x << (u_input.c % 32u))), ~vec2<i32>(u_input.a.x ^ u_input.d.x, 29288i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(907f, -469f, -987f) - vec3<f32>(238f, 135f, -154f)) - vec3<f32>(-1000f, 462f, 506f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-544f, -205f, -1000f)))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.c, u_input.c), _wgslsmith_add_u32(78810u, u_input.b), u_input.e.x) ^ ~vec3<u32>(1582u, u_input.b, u_input.c), u_input.e.yyx), Struct_1(~(-1i) >> (_wgslsmith_div_u32(~u_input.c, 31u) % 32u), -vec2<i32>(u_input.d.x, i32(-1i) * -1i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.a.x, u_input.a.x, u_input.d.x), Struct_1(u_input.a.x, u_input.d.xx, vec3<f32>(-325f, -549f, -282f)), vec2<bool>(false, false), true)), 942f, -562f), vec3<bool>(any(vec2<bool>(true, false)), any(vec3<bool>(false, true, false)), any(vec3<bool>(false, true, false)))))), ~reverseBits(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, 1i, -2236i, u_input.a.x)), ~vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.d.x, 8651i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-188f, -1107f))) * 297f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1977f * 739f)))))));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.x);
}

