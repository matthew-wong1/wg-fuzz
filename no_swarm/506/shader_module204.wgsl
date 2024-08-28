struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = -4074i;
    var var_1 = arg_0.zw;
    let var_2 = !(select(true | (false & arg_2.d.b), (true && arg_2.b.b) || true, true) && any(vec2<bool>(true, true)));
    var var_3 = -165f;
    var_1 = arg_2.b.c.zy;
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(-1000f * var_1.x))))))), 212f, 292f, -248f);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(518f, 670f, 951f, 1000f))) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(442f, -703f, -1129f, -2013f) - vec4<f32>(-332f, 1000f, -1000f, 901f)), vec2<u32>(1u, 1u), Struct_3(1315f, Struct_1(vec4<f32>(911f, -3341f, -1836f, -282f), false, vec4<f32>(461f, 2234f, -1000f, 297f), vec4<i32>(-5920i, 4825i, u_input.a.x, u_input.a.x)), -875f, Struct_2(-146f, false)), Struct_2(-696f, false))))));
    let var_1 = Struct_3(557f, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -997f, -418f, 2596f))))), any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec4<f32>(var_0.x, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), var_0.x), 277f), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(-1237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(595f, -1025f))), all(vec3<bool>(true, false, false)) & true))), Struct_2(_wgslsmith_f_op_f32(sign(1247f)), true));
    var var_2 = u_input.a.xx;
    let var_3 = ~(~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(58270u, 10271u), vec2<u32>(893u, 1u)))));
    let var_4 = u_input.a.xz;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(round(1320f)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: bool) -> Struct_5 {
    var var_0 = Struct_5(-414f);
    let var_1 = select(!select(select(select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(false, true, arg_0.x, arg_0.x), arg_0), vec4<bool>(arg_2, false, true, true), arg_2 | true), select(vec4<bool>(arg_0.x, true, true, arg_0.x), !vec4<bool>(arg_2, false, arg_0.x, arg_2), true), arg_0), vec4<bool>(!any(select(vec2<bool>(arg_2, false), arg_0.yw, vec2<bool>(false, true))), true, _wgslsmith_f_op_f32(-1f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1740f, var_0.a, true)) + -597f), true), select(arg_0, select(select(arg_0, select(vec4<bool>(arg_0.x, arg_0.x, false, true), arg_0, true), arg_0), vec4<bool>(false, arg_2, true, arg_0.x), select(vec4<bool>(true, arg_2, false, arg_2), !vec4<bool>(arg_0.x, false, false, false), true)), !arg_0));
    var var_2 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(57198u, 1u), vec2<u32>(1879u, 0u) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)))), vec2<u32>(~reverseBits(4294967295u), max(1u, ~27322u))) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 1u), vec2<u32>(41906u, 0u)), vec2<u32>(_wgslsmith_add_u32(40159u, 2996u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 69759u, 4294967295u), vec3<u32>(25027u, 1u, 4285u)))), ~(firstTrailingBit(8082u) & ~67472u)) % vec2<u32>(32u));
    var_2 = vec2<u32>(1u, 1579u) ^ max(vec2<u32>(~(var_2.x & var_2.x), ~var_2.x), select(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(var_2.x, 35160u) >> (vec2<u32>(81300u, var_2.x) % vec2<u32>(32u))), select(arg_0.xx, vec2<bool>(false, true), select(vec2<bool>(arg_0.x, false), var_1.ww, true))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2()), var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(520f, var_0.a)))));
    return Struct_5(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(var_3.x, 945f)), _wgslsmith_f_op_f32(var_0.a * var_3.x), _wgslsmith_f_op_f32(step(var_0.a, var_3.x)), var_0.a) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.a, var_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_3.x, var_0.a, var_0.a))))), select(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, var_2.x)), firstLeadingBit(vec2<u32>(24679u, var_2.x))), min(~vec2<u32>(var_2.x, var_2.x), vec2<u32>(1u, var_2.x)), select(!vec2<bool>(arg_2, arg_2), arg_0.zw, true)), Struct_3(-2007f, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-250f, 518f, var_0.a, 700f)), u_input.a.x > 1i, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, var_3.x, var_3.x, var_0.a))), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) ^ arg_1), _wgslsmith_f_op_f32(sign(492f)), Struct_2(_wgslsmith_f_op_f32(step(var_0.a, 758f)), true)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2280f), arg_0.x))).x);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_5) -> f32 {
    var var_0 = Struct_2(1052f, true);
    let var_1 = func_4(!vec4<bool>(false, false, var_0.a > _wgslsmith_f_op_f32(func_2()), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) > firstLeadingBit(79004i)), firstLeadingBit(countOneBits(_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, -2147483647i, 2029i, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 1500i, -20741i), vec4<i32>(1i, u_input.a.x, -2147483647i, -3203i))))), any(select(!(!arg_0.xz), select(arg_0.yy, arg_0.zy, true), true)));
    let var_2 = true;
    var_0 = Struct_2(var_1.a, select(any(arg_2), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-72611i, u_input.a.x, -39289i, u_input.a.x), vec4<i32>(u_input.a.x, 26158i, u_input.a.x, u_input.a.x))) != 2147483647i, any(vec3<bool>(!arg_0.x, true, u_input.a.x >= u_input.a.x))));
    var_0 = Struct_2(-1461f, 2147483647i <= -u_input.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + _wgslsmith_f_op_f32(var_1.a * _wgslsmith_div_f32(arg_3.a, 343f))), 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-959f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1663f + 332f))))), 805f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1419f + 1000f)))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-401f + _wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, false), 1172f, vec2<bool>(false, true), Struct_5(352f))))))));
    let var_1 = vec2<i32>(u_input.a.x, abs(~u_input.a.x));
    let var_2 = u_input.a.yz;
    var var_3 = ~15630u;
    let var_4 = ~(select(~1u, _wgslsmith_mod_u32(1u, 4294967295u), all(vec3<bool>(false, false, false))) << (4294967295u % 32u)) | 7328u;
    let var_5 = Struct_5(var_0.x);
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(18546i, select(u_input.a.x, 2147483647i, all(vec3<bool>(false, false, false))), _wgslsmith_div_i32(reverseBits(u_input.a.x), var_1.x), var_2.x), _wgslsmith_mult_vec4_i32(select(countOneBits(vec4<i32>(var_1.x, -31039i, var_2.x, var_2.x)), firstLeadingBit(vec4<i32>(u_input.a.x, 1i, 0i, -24612i)), true), -firstLeadingBit(vec4<i32>(var_1.x, var_2.x, var_2.x, 0i)))), abs(~(vec4<u32>(0u, 1u, var_4, var_4) ^ vec4<u32>(var_4, 8414u, 17651u, 1u)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(34350u, var_4, var_4, 0u), vec4<u32>(var_4, var_4, 35874u, 54462u))), var_5.a, ~countOneBits(~(19085i << (var_4 % 32u))), vec2<u32>(var_4, abs(var_4) | (var_4 ^ 24040u)));
}

