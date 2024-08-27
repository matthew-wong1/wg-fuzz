struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<u32>) -> vec2<bool> {
    var var_0 = Struct_4(-786f, abs(1u));
    let var_1 = all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(any(vec2<bool>(false, false)), u_input.a.x < 2147483647i), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(true, true), !vec2<bool>(true, all(vec2<bool>(true, true)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-349f - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) * _wgslsmith_f_op_f32(-1000f + 777f)), var_0.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-975f, 304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(-var_0.a)), 509f)));
    var var_3 = !vec2<bool>(min(_wgslsmith_mod_u32(var_0.b, 4294967295u), 1u) < _wgslsmith_sub_u32(var_0.b, 1u | arg_0.x), !all(!vec4<bool>(false, true, var_1, var_1)));
    var_3 = select(vec2<bool>(var_3.x, min(arg_0.x, 1u) <= _wgslsmith_sub_u32(23u, ~arg_0.x)), !(!select(select(vec2<bool>(var_1, var_3.x), vec2<bool>(false, false), false), vec2<bool>(var_1, var_1), true)), !(!vec2<bool>(any(vec4<bool>(true, var_3.x, true, false)), true)));
    return select(vec2<bool>(var_1, ((u_input.a.x | -1i) << (_wgslsmith_sub_u32(1u, arg_0.x) % 32u)) != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 28028i, u_input.a.x), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)))), !vec2<bool>((u_input.a.x ^ u_input.a.x) > u_input.a.x, (var_3.x && var_1) == any(vec3<bool>(false, var_3.x, false))), var_1);
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(743f, -533f)))));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_1.a.c), ~vec2<u32>(0u, arg_0 | arg_1.a.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(718f, 1333f, -238f))), !func_3(reverseBits(vec4<u32>(arg_1.a.c, 46295u, arg_1.a.c, 65599u))), 1u);
    var_1 = Struct_1(~arg_1.a.c << (~arg_0 % 32u), _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1352f, var_1.b.x, var_1.b.x), var_1.b, vec3<bool>(true, var_1.c.x, false)))) * vec3<f32>(_wgslsmith_f_op_f32(round(var_1.b.x)), -1265f, _wgslsmith_f_op_f32(f32(-1f) * -623f)))), !var_1.c, ~(_wgslsmith_add_u32(var_1.a, var_1.d) ^ _wgslsmith_div_u32(min(arg_0, 4294967295u), _wgslsmith_mult_u32(arg_0, arg_0))));
    var_0 = -483f;
    return var_1.c;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<f32>) -> i32 {
    let var_0 = Struct_3(Struct_2(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), func_2(29393u, Struct_3(Struct_2(vec2<bool>(true, false), arg_1, 0u)))), !func_3(vec4<u32>(1u, arg_0.b, 47780u, 0u)), any(func_3(vec4<u32>(arg_0.b, 25554u, 4294967295u, 10170u)))), vec2<f32>(2210f, arg_0.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.b, arg_0.b, arg_0.b) & vec4<u32>(11158u, 0u, arg_0.b, 1u), ~vec4<u32>(38923u, 1u, arg_0.b, arg_0.b))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(243f, -795f, arg_1.x, arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(597f, -1365f, var_0.a.b.x, 1000f)), !vec4<bool>(false, false, var_0.a.a.x, true))))));
    var var_2 = u_input.a;
    let var_3 = Struct_2(var_0.a.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.b) * vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-var_1.x))))), ~max(var_0.a.c, min(64893u << (var_0.a.c % 32u), 22719u)));
    let var_4 = Struct_1(_wgslsmith_clamp_u32(firstLeadingBit(~arg_0.b), 0u | _wgslsmith_div_u32(reverseBits(1289u), max(arg_0.b, var_3.c)), _wgslsmith_div_u32(var_3.c, ~(~36024u))), _wgslsmith_f_op_vec3_f32(-var_1.zyy), vec2<bool>(false, any(var_0.a.a)), reverseBits(~max(var_3.c, var_3.c)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = ~_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, 0i, 2147483647i, func_1(Struct_4(332f, 4294967295u), vec2<f32>(1400f, -224f))), reverseBits(vec4<i32>(u_input.a.x, -21821i, -7381i, u_input.a.x)) << (vec4<u32>(32082u, 4294967295u, 81523u, 20182u) % vec4<u32>(32u)), var_0), _wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.a.x, abs(-81022i), ~2147483647i, -34893i), -(~vec4<i32>(2147483647i, -29185i, u_input.a.x, -37818i))));
    let var_2 = Struct_3(Struct_2(!(!(!vec2<bool>(false, var_0))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(366f, 1000f) * vec2<f32>(502f, 252f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2503f, 294f), vec2<f32>(-1136f, 1450f))), !vec2<bool>(true, var_0))))), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4682u, 4294967295u)))));
    var var_3 = !(!(!vec3<bool>(var_2.a.a.x, var_0, var_2.a.a.x)));
    let var_4 = select(select(vec4<bool>(true, !any(vec3<bool>(var_0, var_0, var_0)), var_3.x, true), vec4<bool>(var_0, var_3.x, var_2.a.b.x > -793f, all(vec3<bool>(true, true, true))), select(select(select(vec4<bool>(true, var_0, true, true), vec4<bool>(var_3.x, var_2.a.a.x, var_2.a.a.x, true), vec4<bool>(true, true, false, var_3.x)), !vec4<bool>(true, var_2.a.a.x, false, var_0), true), !vec4<bool>(var_0, var_0, true, true), select(!vec4<bool>(true, false, var_2.a.a.x, var_2.a.a.x), vec4<bool>(var_3.x, var_3.x, false, var_2.a.a.x), false))), select(vec4<bool>(select(false, var_0, var_0), u_input.a.x < var_1.x, true, var_2.a.a.x), vec4<bool>(var_1.x <= abs(-1i), _wgslsmith_f_op_f32(313f + var_2.a.b.x) == _wgslsmith_f_op_f32(select(var_2.a.b.x, -451f, var_2.a.a.x)), true, any(var_2.a.a)), select(vec4<bool>(var_2.a.a.x & var_3.x, var_3.x, any(vec2<bool>(var_0, false)), true), vec4<bool>(true, true, true, true), !(!var_3.x))), vec4<bool>(true, all(vec3<bool>(!var_0, all(vec4<bool>(var_0, var_2.a.a.x, false, var_0)), true)), all(select(vec4<bool>(false, false, var_0, var_3.x), select(vec4<bool>(var_3.x, var_0, true, false), vec4<bool>(var_3.x, var_0, var_0, var_3.x), vec4<bool>(true, var_2.a.a.x, true, var_2.a.a.x)), var_0)), false));
    var_1 = min(_wgslsmith_clamp_vec4_i32(vec4<i32>(~1i, 68331i, ~(i32(-1i) * -33760i), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.x, 2147483647i, u_input.a.x, var_1.x), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_1.x, u_input.a.x), vec4<i32>(var_1.x, u_input.a.x, -42382i, -12984i)))), -(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 7087i, u_input.a.x, -10593i), vec4<i32>(var_1.x, var_1.x, u_input.a.x, -2147483647i))), vec4<i32>(u_input.a.x, u_input.a.x, 16461i, u_input.a.x)), -max(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-83834i, var_1.x, var_1.x, -24592i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, 2147483647i))), ~(-vec4<i32>(72986i, u_input.a.x, -2147483647i, -31711i))));
    var var_5 = Struct_4(_wgslsmith_f_op_f32(var_2.a.b.x - 275f), 0u);
    var var_6 = Struct_1(~(~(var_5.b | var_2.a.c) & reverseBits(9063u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.b.x, var_2.a.b.x, var_5.a), vec3<f32>(1810f, var_5.a, var_5.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.a, var_2.a.b.x, var_2.a.b.x) * vec3<f32>(876f, var_2.a.b.x, -1000f))))), any(select(vec3<bool>(var_3.x, true, false), var_4.wxz, any(vec4<bool>(false, var_2.a.a.x, false, var_3.x)))))), func_2(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(16612u, 14599u, var_2.a.c), ~vec3<u32>(53519u, 18978u, 4294967295u))), var_2), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(70934u, var_2.a.c, 143121u, 4294967295u), vec4<u32>(1u, var_5.b, var_2.a.c, var_5.b)) >> (firstTrailingBit(~0u) % 32u), 25652u, 4294967295u));
    var var_7 = Struct_2(vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_5.a, var_5.a)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.b.x + var_2.a.b.x)), var_4.x), _wgslsmith_div_vec2_f32(vec2<f32>(var_5.a, _wgslsmith_f_op_f32(step(523f, _wgslsmith_f_op_f32(abs(876f))))), vec2<f32>(715f, _wgslsmith_f_op_f32(var_6.b.x * _wgslsmith_f_op_f32(1051f + var_5.a)))), 82345u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(min(vec4<u32>(_wgslsmith_clamp_u32(81778u, var_5.b, var_5.b), ~4294967295u, ~49141u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, var_5.b), vec4<u32>(var_6.a, 42205u, 1u, 0u) ^ vec4<u32>(0u, 6643u, var_7.c, 43598u), ~vec4<u32>(0u, var_6.a, 4294967295u, 1u))), vec4<u32>(~firstLeadingBit(0u), var_6.a, ~var_7.c, ~var_6.d)));
}

