struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 630f, -259f), vec3<f32>(arg_0, 133f, 440f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-909f, arg_0, arg_0)))))));
    var_0 = Struct_2(-(~2147483647i), var_0.b);
    var var_1 = -_wgslsmith_add_vec2_i32(-(~(-u_input.a.yx)), ~(-u_input.a.zy) & (u_input.a.zz << (_wgslsmith_sub_vec2_u32(vec2<u32>(20547u, 1u), vec2<u32>(8485u, 0u)) % vec2<u32>(32u))));
    var_0 = Struct_2(~(-26270i), var_0.b);
    var_0 = Struct_2(1i, var_0.b);
    return ~(~(~(~firstLeadingBit(1u))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(2330f, arg_0, arg_0));
    let var_1 = !vec3<bool>(true, any(vec3<bool>(false, any(vec3<bool>(false, false, false)), true)), true);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(arg_0, arg_0, true)))), _wgslsmith_f_op_f32(-var_0.a.x)))), -1000f);
    var var_3 = ~func_3(-206f) > arg_1.x;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(var_2.x, -906f, arg_0)))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1579f * -1801f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_0.a;
    var_0 = arg_1.x;
    var_0 = _wgslsmith_div_i32(2147483647i | countOneBits(firstTrailingBit(~arg_1.x)), arg_1.x);
    var var_1 = Struct_3(arg_0.b, arg_2, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1339f, 844f, 1000f, 150f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b.a.x, -465f, -2009f, -1319f)))))))), vec4<i32>(-1i) * -(~firstLeadingBit(vec4<i32>(arg_2.a, arg_1.x, 2147483647i, arg_1.x))));
    var_1 = Struct_3(func_2(_wgslsmith_f_op_f32(arg_0.b.a.x * _wgslsmith_f_op_f32(1f * 491f)), vec3<u32>(~1u, ~0u, ~1u), ~_wgslsmith_sub_u32(~35819u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(9268u, 1u)))), arg_2, var_1.c, ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.d.x, -59820i, u_input.a.x, arg_2.a), var_1.d) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 191u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))));
    return func_2(arg_2.b.a.x, select(~select(~vec3<u32>(52557u, 0u, 1u), vec3<u32>(0u, 2956u, 4294967295u), true), ~reverseBits(firstTrailingBit(vec3<u32>(24618u, 40176u, 68051u))), select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(true, true)), true), true)), ~(_wgslsmith_add_u32(~32887u, firstTrailingBit(16932u)) ^ 48165u));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_3(func_4(Struct_2(~34646i, func_4(Struct_2(-1i, Struct_1(vec3<f32>(-495f, arg_0.a.x, 114f))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.xx), Struct_2(1i, arg_0))), vec2<i32>(abs(-25081i), 1i | u_input.a.x), Struct_2(26662i, arg_0)), Struct_2(_wgslsmith_clamp_i32(-u_input.a.x, -_wgslsmith_sub_i32(-2147483647i, u_input.a.x), -(~(-2147483647i))), func_2(arg_0.a.x, vec3<u32>(countOneBits(120932u), ~42597u, 1u), _wgslsmith_clamp_u32(~1u, firstLeadingBit(15875u), 1u))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(451f, 1455f, _wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(select(717f, -1469f, true))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.a.x, 283f, 235f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(632f, 441f, -577f, arg_0.a.x))), false))))), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(2147483647i), _wgslsmith_clamp_i32(u_input.a.x, -23992i, 0i), -u_input.a.x, ~33726i), select(vec4<i32>(-20625i, u_input.a.x, -2147483647i, 23792i) | vec4<i32>(-37965i, u_input.a.x, -5218i, 28010i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 21364i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), true))));
    let var_1 = Struct_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.a.x * arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x) - _wgslsmith_f_op_f32(var_0.c.x + -633f)), _wgslsmith_f_op_f32(-arg_0.a.x))), var_0.b, var_0.c, vec4<i32>(-_wgslsmith_add_i32(25922i, var_0.d.x) | -u_input.a.x, 5575i ^ u_input.a.x, _wgslsmith_add_i32(-1i, _wgslsmith_div_i32(var_0.d.x, var_0.d.x) & ~var_0.d.x), var_0.b.a));
    let var_2 = all(select(vec3<bool>(false, true, any(vec3<bool>(false, false, false))), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), vec3<bool>(!any(vec3<bool>(false, false, true)), any(vec2<bool>(true, true)), true)));
    let var_3 = _wgslsmith_div_i32(u_input.a.x, abs(3114i)) & -1i;
    var_0 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.a.x))) * _wgslsmith_f_op_f32(-var_0.c.x))) < 1130f;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<i32>) -> f32 {
    let var_0 = 2147483647i;
    var var_1 = func_5(func_4(Struct_2(-u_input.a.x, func_2(1708f, vec3<u32>(78847u, 61672u, 0u), 2961u)), ~vec2<i32>(1i, 2147483647i) ^ (arg_2.ww ^ vec2<i32>(19741i, u_input.a.x)), Struct_2(_wgslsmith_div_i32(arg_1, arg_3.x), Struct_1(vec3<f32>(480f, -520f, -483f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(463f, 395f) * vec2<f32>(437f, 552f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-132f, -133f) * vec2<f32>(-116f, 605f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-839f, 1019f), vec2<f32>(-166f, -2137f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-688f, -903f)))), vec2<bool>(true, true)))) & !func_5(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(410f, -700f, 999f), vec3<f32>(1646f, 486f, -1133f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -341f), -581f));
    var var_2 = 2147483647i;
    let var_3 = false;
    var var_4 = ~1u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1272f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(1403f + _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true), _wgslsmith_add_i32(u_input.a.x, 1i), vec4<i32>(u_input.a.x, -28308i, 3725i, 15961i), ~vec4<i32>(-2147483647i, 0i, u_input.a.x, u_input.a.x)))), _wgslsmith_div_f32(-1023f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -983f))))));
    let var_1 = func_4(Struct_2(0i, Struct_1(_wgslsmith_f_op_vec3_f32(func_2(1129f, vec3<u32>(1u, 31055u, 1u), 1u).a + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, var_0.x)))))), -max(select(vec2<i32>(u_input.a.x, u_input.a.x) << (vec2<u32>(0u, 35361u) % vec2<u32>(32u)), vec2<i32>(-24340i, 1i), vec2<bool>(true, true)), vec2<i32>(-19538i, max(u_input.a.x, u_input.a.x))), Struct_2(1520i, func_4(Struct_2(u_input.a.x, Struct_1(vec3<f32>(var_0.x, -1370f, var_0.x))), vec2<i32>(u_input.a.x, -2147483647i), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(11679i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), func_4(Struct_2(-33167i, Struct_1(vec3<f32>(var_0.x, var_0.x, -653f))), vec2<i32>(u_input.a.x, u_input.a.x), Struct_2(u_input.a.x, Struct_1(vec3<f32>(var_0.x, -738f, var_0.x))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.a - vec3<f32>(var_0.x, -1164f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.a.x, 474f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 1504f, 457f), vec3<f32>(-1000f, var_1.a.x, var_1.a.x), vec3<bool>(false, false, true)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1181f, func_4(Struct_2(-8907i, var_1), u_input.a.yx, Struct_2(-2147483647i, var_1)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.x))))));
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.x))));
    let var_4 = vec4<u32>(126705u, 0u, 0u, 0u);
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(-2142f - _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-521f + 400f), 1000f, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1175f, _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_4.x, min(firstLeadingBit(4294967295u), _wgslsmith_mult_u32(var_4.x, var_4.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(38738u, 1u), vec2<u32>(0u, var_4.x)), vec2<u32>(31346u, 2405u)), _wgslsmith_dot_vec2_u32(var_4.zx, vec2<u32>(4294967295u, 6114u))), vec4<u32>(var_4.x, max(9095u, _wgslsmith_add_u32(var_4.x, var_4.x)), _wgslsmith_sub_u32(~var_4.x, var_4.x), min(_wgslsmith_dot_vec2_u32(var_4.ww, var_4.yx), ~var_4.x))));
}

