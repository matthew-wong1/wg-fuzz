struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-644f, 613f, -971f, -220f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2422f, 761f, 463f, 182f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, 566f, -1389f, 1525f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-833f, -673f, 363f, 268f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-415f, -142f, 1112f, -1000f), vec4<f32>(271f, 589f, 179f, 2261f), false))))), vec4<bool>(true | (2147483647i > ~u_input.c), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), true))), true, !any(vec4<bool>(false, true, true, false)))));
    var var_1 = firstLeadingBit(1u);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(308f, _wgslsmith_f_op_f32(round(var_0.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 686f))) + 279f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -1000f)))), _wgslsmith_f_op_f32(sign(1f)), var_0.x);
    var var_2 = 1u;
    return 19009i;
}

fn func_2() -> Struct_1 {
    return Struct_1(u_input.a.x, _wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c), vec3<i32>(11472i, -25777i, 23573i)), ~select(vec3<i32>(u_input.c, 2147483647i, 0i), vec3<i32>(u_input.c, -32665i, u_input.c), false)) ^ (vec3<i32>(func_3(), _wgslsmith_add_i32(6694i, u_input.c), abs(-2147483647i)) >> (u_input.d % vec3<u32>(32u))), select(_wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-44998i, u_input.c)), _wgslsmith_mult_vec2_i32(~vec2<i32>(24172i, 2667i), vec2<i32>(u_input.c, u_input.c) | vec2<i32>(u_input.c, u_input.c))), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(32251i, u_input.c), ~vec2<i32>(u_input.c, -2147483647i))), !select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, arg_3.a) >> (arg_1.b.zx % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(arg_1.b.yx, vec2<u32>(arg_1.a.a, 1u)) ^ vec2<u32>(1u, arg_2.a))), max(-max(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.c.x, arg_3.b.x, 40215i), arg_1.d), vec3<i32>(2147483647i, arg_2.b.x, arg_2.c.x)), _wgslsmith_mod_vec3_i32(arg_3.b, -arg_3.b)), select(firstTrailingBit(arg_3.b.yy), vec2<i32>(-1i, -1i), select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false))));
    return i32(-1i) * -2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: i32) -> Struct_2 {
    var var_0 = ~arg_1;
    var_0 = vec2<i32>(arg_1.x, func_4(542f, Struct_2(Struct_1(1u ^ u_input.d.x, ~arg_0.b, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_2), arg_0.c)), _wgslsmith_add_vec3_u32(vec3<u32>(23097u, arg_0.a, 95372u), vec3<u32>(u_input.d.x, 40899u, 1u)) << (_wgslsmith_mult_vec3_u32(u_input.d, u_input.d) % vec3<u32>(32u)), func_2(), vec3<i32>(0i & arg_1.x, -4943i, max(2147483647i, arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1149f) * _wgslsmith_f_op_f32(floor(2172f)))), Struct_1(4294967295u, arg_0.b ^ vec3<i32>(var_0.x, -15739i, 5491i), _wgslsmith_add_vec2_i32(arg_0.b.zx, ~arg_0.b.zx)), Struct_1(~(~79260u), arg_0.b, ~(arg_0.c ^ arg_1))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(479f, 582f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(2176f, 1000f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1699f * -626f)))) - _wgslsmith_f_op_f32(max(-635f, -379f)));
    let var_2 = Struct_3(arg_0);
    let var_3 = Struct_2(arg_0, ~_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.a.a, var_2.a.a, arg_0.a) & ~vec3<u32>(arg_0.a, 0u, 42247u), _wgslsmith_mult_vec3_u32(~u_input.d, u_input.a.xwx)), Struct_1(arg_0.a, vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, u_input.c, -2147483647i, var_0.x), vec4<i32>(arg_1.x, 2147483647i, 0i, arg_1.x)), var_2.a.c.x, arg_3), -min(arg_0.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_2.a.c.x), var_2.a.b.yy, var_2.a.b.zy))), -(~arg_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_1))));
    return Struct_2(var_2.a, vec3<u32>(2572u ^ ~_wgslsmith_div_u32(var_2.a.a, var_3.c.a), ~var_2.a.a, func_2().a), arg_0, vec3<i32>(-var_3.c.b.x, ~(~(-1i)) | ~u_input.c, 44658i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(999f * var_1) - 521f), -1057f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_3.e, var_1))))));
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    var var_0 = Struct_4(Struct_3(Struct_1(0u, arg_2.a.b, arg_1.zx)), arg_2.a, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1184f, _wgslsmith_f_op_f32(arg_2.e - arg_0), true)), 152f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(483f, -238f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1326f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0)), arg_0))));
    let var_1 = Struct_3(Struct_1(~(~u_input.b.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(countOneBits(arg_2.d.x), -112271i, min(arg_2.a.c.x, 0i)), ~_wgslsmith_div_vec3_i32(arg_1, vec3<i32>(u_input.c, var_0.a.a.c.x, arg_1.x)), select(arg_1, vec3<i32>(-11712i, 2367i, 0i), true)), select(_wgslsmith_add_vec2_i32(vec2<i32>(53090i, 2147483647i) | var_0.a.a.c, min(vec2<i32>(u_input.c, arg_1.x), vec2<i32>(arg_2.d.x, 0i))), _wgslsmith_sub_vec2_i32(reverseBits(var_0.a.a.c), vec2<i32>(13245i, -24189i)), true)));
    var var_2 = Struct_4(Struct_3(Struct_1(firstTrailingBit(u_input.a.x << (4294967295u % 32u)), arg_1, -countOneBits(vec2<i32>(arg_2.c.b.x, arg_1.x)))), func_1(func_1(Struct_1(abs(arg_2.c.a), var_0.b.b, vec2<i32>(-8346i, 2147483647i)), ~abs(var_0.a.a.c), i32(-1i) * -34784i, var_1.a.b.x | -17214i).c, -func_1(func_1(var_1.a, vec2<i32>(-13815i, -2147483647i), -2147483647i, 24333i).c, vec2<i32>(19731i, arg_2.a.c.x), abs(u_input.c), arg_2.c.b.x).d.yz, reverseBits(-var_0.a.a.b.x), ~(-2071i)).c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1546f), _wgslsmith_f_op_f32(arg_2.e * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -855f), _wgslsmith_f_op_f32(-arg_2.e)))), arg_0));
    let var_3 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, ~var_0.a.a.a, _wgslsmith_mult_u32(select(arg_2.c.a, 0u, false), ~arg_2.b.x)), max(u_input.a, select(u_input.a, reverseBits(u_input.a), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)))));
    let var_4 = var_0.a;
    return Struct_3(var_2.a.a);
}

fn func_6(arg_0: Struct_4) -> Struct_1 {
    let var_0 = arg_0.a.a.a;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-1f);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(762f, func_1(Struct_1(1u, vec3<i32>(var_1.a.a.b.x, -73293i, arg_0.b.c.x), vec2<i32>(22139i, -2147483647i)), var_1.a.a.b.xx, var_1.a.a.c.x, u_input.c).e, _wgslsmith_f_op_f32(ceil(-617f)), -3166f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-344f, var_2, -2554f, var_1.c.x))))));
    let var_4 = var_1;
    return var_4.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = -5681i;
    var var_2 = Struct_3(func_6(Struct_4(func_5(1f, ~vec3<i32>(u_input.c, -1i, u_input.c), func_1(Struct_1(u_input.d.x, vec3<i32>(0i, 1i, u_input.c), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, -14782i), u_input.c, u_input.c)), Struct_1(min(u_input.d.x, u_input.a.x), vec3<i32>(35352i, u_input.c, -29595i) & vec3<i32>(u_input.c, u_input.c, u_input.c), func_1(Struct_1(33049u, vec3<i32>(u_input.c, 35221i, u_input.c), vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, 33185i), u_input.c, 4662i).c.c), vec3<f32>(_wgslsmith_f_op_f32(floor(1494f)), _wgslsmith_f_op_f32(-1027f + 548f), _wgslsmith_f_op_f32(step(-812f, 2038f))))));
    var_0 = u_input.c;
    var_0 = -15509i;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a, ~87230u >> (u_input.b.x % 32u), u_input.d, ~select(select(vec2<u32>(u_input.a.x, var_2.a.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, u_input.a.x), vec2<u32>(1u, u_input.a.x)), true), abs(func_1(Struct_1(u_input.b.x, var_2.a.b, vec2<i32>(u_input.c, var_2.a.c.x)), vec2<i32>(2147483647i, 0i), var_2.a.c.x, u_input.c).b.zz), vec2<bool>(true, true)));
}

