struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1954f) - _wgslsmith_f_op_f32(f32(-1f) * -322f)), _wgslsmith_div_f32(-1996f, _wgslsmith_div_f32(1270f, -1848f)), _wgslsmith_f_op_f32(f32(-1f) * -1711f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(590f * -115f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(-532f)), _wgslsmith_f_op_f32(step(-1121f, 1699f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-551f)) * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 2183f), _wgslsmith_f_op_f32(f32(-1f) * -1035f))))));
    var var_1 = Struct_2(_wgslsmith_mult_u32(firstLeadingBit(min(~0u, 4294967295u)), u_input.a.x), u_input.a.x, reverseBits(min(~max(-16591i, u_input.b.x), arg_0.x)), Struct_1(vec4<bool>(u_input.d != u_input.d, all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), !any(vec2<bool>(false, true)), true), select(vec3<bool>(true, true, u_input.c < arg_0.x), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_0.zwz, var_0.wyx))) * var_0.zyx), _wgslsmith_f_op_vec3_f32(max(var_0.xxx, _wgslsmith_div_vec3_f32(var_0.xww, var_0.xwy))))));
    let var_2 = _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-firstLeadingBit(var_1.c), -2147483647i, _wgslsmith_mod_i32(-2147483647i, -2147483647i) << (1u % 32u), ~(-407i))), max(firstTrailingBit(vec4<i32>(select(20308i, arg_0.x, false), -arg_0.x, u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(-29761i, arg_0.x), arg_0))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, u_input.d, arg_0.x, 0i), vec4<i32>(19033i, 2147483647i, var_1.c, 2147483647i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, var_1.c, arg_0.x), vec4<i32>(1i, 2147483647i, var_1.c, 6191i)))));
    return var_1.d.b.yy;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_1(vec4<bool>(any(vec3<bool>(true, false, false)) || false, all(func_3(vec2<i32>(-1i, 1i))), false, _wgslsmith_f_op_f32(floor(-144f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-705f)))), !vec3<bool>(_wgslsmith_f_op_f32(sign(648f)) >= _wgslsmith_f_op_f32(491f + 176f), arg_0.x > -arg_0.x, u_input.a.x == _wgslsmith_div_u32(arg_1.x, 4294967295u)));
    var var_1 = 1i;
    var_1 = -23480i;
    var_1 = -23023i;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -970f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - -512f)))) - _wgslsmith_f_op_f32(f32(-1f) * -468f)));
    return Struct_2(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 15963u, 11542u, 4294967295u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 1863u)) & reverseBits(31342u), u_input.a.x << (_wgslsmith_add_u32(arg_1.x, 53210u) % 32u), 13505u), 1u, min(2147483647i, _wgslsmith_add_i32(u_input.c, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, arg_0.x), vec3<i32>(1i, arg_0.x, arg_0.x)))), var_0, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(890f, 154f, -613f), vec3<f32>(-2092f, 1000f, 443f)) - vec3<f32>(2263f, -1079f, -2987f))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = arg_1.a.x;
    let var_1 = func_2(vec3<i32>(u_input.c, abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 15795i, -1i), vec3<i32>(u_input.b.x, 2147483647i, u_input.c)), -1i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.d), vec2<i32>(u_input.d, 0i)), _wgslsmith_add_i32(2147483647i, u_input.d)) | -1i), vec2<u32>(firstLeadingBit(~(~arg_0.x)), u_input.a.x));
    var_0 = !(-22180i <= min(-_wgslsmith_add_i32(-46936i, u_input.b.x), ~(~(-1i))));
    var var_2 = select(select(vec2<bool>(var_1.d.b.x, any(var_1.d.b) == true), !select(vec2<bool>(true, false), vec2<bool>(true, true), var_1.d.b.zy), !var_1.d.b.xz), vec2<bool>(false, !arg_1.b.x), arg_1.b.x);
    let var_3 = arg_0.x;
    return vec3<f32>(-1206f, var_1.e.x, 1000f);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = Struct_1(select(select(func_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.c, -2147483647i), vec3<i32>(7603i, u_input.b.x, 7018i)), u_input.a.xz).d.a, vec4<bool>(false, arg_0.x, arg_0.x, true), arg_0), select(arg_0, arg_0, ~u_input.a.x < u_input.a.x), vec4<bool>(true, arg_0.x | arg_0.x, 1440f <= _wgslsmith_div_f32(arg_1.x, arg_2.x), true)), select(vec3<bool>(arg_0.x, !func_2(vec3<i32>(0i, -41142i, u_input.d), vec2<u32>(u_input.a.x, 47844u)).d.a.x, (arg_1.x == arg_1.x) || all(vec4<bool>(true, false, true, false))), arg_0.xxw, all(func_3(u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(min(2276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(vec3<i32>(u_input.b.x, 2147483647i, -2147483647i), firstLeadingBit(vec2<u32>(17583u, 4297u))).e.x))));
    let var_2 = func_2(_wgslsmith_sub_vec3_i32(vec3<i32>(abs(u_input.c), u_input.d, -1i), vec3<i32>(min(-u_input.b.x, 6715i << (1u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 25782i, u_input.b.x), vec3<i32>(8861i, u_input.d, 1i)), -45823i, abs(u_input.d)), ~u_input.b.x)), abs(countOneBits(~u_input.a.xz))).d;
    return 351f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1031f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(553f, 300f, -940f)), _wgslsmith_f_op_vec3_f32(func_1(vec4<u32>(17669u, u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, false)))))) * _wgslsmith_f_op_f32(1071f * 415f)))));
    let var_1 = func_2(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(52706i, u_input.c, u_input.b.x, u_input.c), vec4<i32>(0i, u_input.b.x, u_input.c, 1i)), u_input.c, u_input.c), reverseBits(~vec3<i32>(u_input.d, u_input.c, u_input.d)))), _wgslsmith_div_vec2_u32(u_input.a.yz, _wgslsmith_mult_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy)), ~u_input.a.xy))).d;
    let var_2 = func_2(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b.x, u_input.c), reverseBits(vec3<i32>(-1i, 1i, -1i) & vec3<i32>(u_input.d, u_input.c, -2147483647i))), select(-(vec3<i32>(1i, u_input.d, -37461i) << (u_input.a % vec3<u32>(32u))), vec3<i32>(-9527i, -7532i, u_input.b.x), false)), vec2<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(19228u, 1u, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 29935u), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u))), abs(select(45444u, ~u_input.a.x, func_2(vec3<i32>(21557i, 0i, 41280i), u_input.a.zx).d.a.x)))).d;
    var var_3 = func_2(reverseBits(min(_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.d, u_input.b.x, u_input.d), vec3<i32>(-2147483647i, u_input.c, -2147483647i)), select(firstLeadingBit(vec3<i32>(9169i, -1i, u_input.b.x)), vec3<i32>(-1i, u_input.b.x, u_input.d), vec3<bool>(true, var_1.a.x, false)))), countOneBits(~(_wgslsmith_mult_vec2_u32(vec2<u32>(12349u, 19077u), vec2<u32>(0u, u_input.a.x)) & (u_input.a.zy ^ u_input.a.zy))));
    var var_4 = vec4<bool>(func_2(vec3<i32>(var_3.c >> (1u % 32u), u_input.b.x, -52902i) | vec3<i32>(~2147483647i, var_3.c, u_input.b.x), abs(countOneBits(u_input.a.xy))).d.b.x, any(vec4<bool>(func_2(abs(vec3<i32>(0i, -24994i, u_input.b.x)), u_input.a.xx).d.a.x, var_1.a.x, true, var_2.b.x)), any(var_2.a), var_3.c != -38407i);
    var_3 = Struct_2(4294967295u, ~_wgslsmith_div_u32(1u, ~1u), var_3.c, func_2(abs(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -8330i, 1i)), select(vec3<i32>(var_3.c, u_input.b.x, -2147483647i), vec3<i32>(u_input.c, -1i, var_3.c), var_3.d.b))), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a.x, 3712u)), u_input.a.yz)).d, _wgslsmith_f_op_vec3_f32(var_3.e + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -666f)), _wgslsmith_f_op_f32(f32(-1f) * -1567f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(262f * -1000f), _wgslsmith_f_op_f32(-var_3.e.x)))));
    var_3 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.a.yz, abs(select(~vec2<u32>(var_3.b, u_input.a.x), _wgslsmith_add_vec2_u32(u_input.a.xy, u_input.a.zz), false))), u_input.a.x, u_input.c, var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_3.e))));
    var var_5 = func_2(~firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 1i, 2147483647i), vec3<i32>(u_input.c, var_3.c, 9451i)) >> (min(u_input.a, u_input.a) % vec3<u32>(32u))), u_input.a.yy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1203f, var_3.e.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1521f, -557f)), var_5.d.a.x))), u_input.b.x);
}

