struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec2<i32>) -> f32 {
    var var_0 = Struct_1(arg_2.a.c.a, arg_2.a.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -248f), -2674f)), 1189f) * _wgslsmith_f_op_f32(-1927f - arg_2.a.c.c)), arg_2.a.c.d);
    let var_1 = arg_2.a;
    var_0 = Struct_1(select(select(!select(arg_2.a.b.a, var_0.a, vec4<bool>(false, arg_2.a.c.a.x, false, var_0.a.x)), vec4<bool>(all(vec3<bool>(true, var_0.a.x, arg_2.a.c.a.x)), 84489u <= var_1.d, var_1.c.a.x, false), !(arg_1.x > arg_1.x)), arg_2.a.c.a, vec4<bool>(_wgslsmith_dot_vec2_i32(arg_3, vec2<i32>(2147483647i, -2147483647i)) > ~(-46259i), true, any(var_0.a), false)), _wgslsmith_f_op_f32(1601f - -1661f), _wgslsmith_f_op_f32(sign(841f)), _wgslsmith_f_op_vec3_f32(-var_1.c.d));
    var var_2 = ~(u_input.a & vec4<u32>(var_1.d, _wgslsmith_mod_u32(1u, var_1.a), _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_1.x, 1u), arg_2.a.a ^ 1u), 7312u));
    var_0 = var_1.b;
    return 243f;
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-477f, -1519f, 698f, 1f) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-456f)), _wgslsmith_f_op_f32(f32(-1f) * -464f), _wgslsmith_f_op_f32(f32(-1f) * -300f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-171f, _wgslsmith_f_op_f32(round(989f)), -354f, _wgslsmith_f_op_f32(ceil(801f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-468f, -1771f), _wgslsmith_f_op_f32(-954f * -1102f), _wgslsmith_f_op_f32(func_3(vec3<i32>(-1i, 2147483647i, 13291i), vec2<u32>(u_input.a.x, 0u), Struct_4(Struct_3(1u, Struct_1(vec4<bool>(true, false, true, true), -633f, -1000f, vec3<f32>(-581f, 196f, 284f)), Struct_1(vec4<bool>(true, true, false, false), -595f, -1012f, vec3<f32>(615f, 314f, -1199f)), u_input.c), Struct_2(vec3<i32>(1i, -1i, -1i))), vec2<i32>(-2147483647i, -41109i))), _wgslsmith_f_op_f32(round(-350f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1094f, 349f, 775f, 1602f), vec4<f32>(-1545f, -219f, 1001f, 1172f))))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -709f), 2801f, 338f, _wgslsmith_f_op_f32(-641f - 2362f))))));
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(~vec3<i32>(26462i, -2147483647i, -2147483647i), vec3<i32>(1i, 1i, 1i), true), -(~vec3<i32>(19735i, 32136i, 2147483647i))) | ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), min(vec3<i32>(1i, -2147483647i, -1i), vec3<i32>(1i, 24144i, -2147483647i)), reverseBits(vec3<i32>(-2147483647i, 2147483647i, 13122i))), max(vec3<i32>(~(-9304i), 1i, -69091i) << (abs(u_input.a.xzx) % vec3<u32>(32u)), ~vec3<i32>(i32(-1i) * -16238i, abs(-1i), _wgslsmith_div_i32(15449i, 2147483647i))));
    var_1 = abs(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(var_1.x, var_1.x, var_1.x), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(var_1.x, var_1.x, var_1.x))), vec3<i32>(-var_1.x, -16516i >> (u_input.b.x % 32u), ~7987i))) | vec3<i32>(-56853i, -9755i, _wgslsmith_mod_i32(var_1.x, var_1.x & countOneBits(var_1.x)));
    var_1 = vec3<i32>(~1i, _wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(0i, var_1.x, 3435i, var_1.x)), -vec4<i32>(var_1.x, -52046i, -43496i, 9309i) | min(vec4<i32>(var_1.x, -1i, -619i, var_1.x), vec4<i32>(var_1.x, var_1.x, 11870i, -15587i))) << (_wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(96700u, 0u, 16957u, u_input.c), u_input.a, u_input.a)), ~u_input.a) % 32u), -var_1.x);
    var_1 = abs(min(_wgslsmith_mod_vec3_i32(~vec3<i32>(20197i, -2147483647i, var_1.x), -(~vec3<i32>(var_1.x, 2147483647i, -10488i))), ~(-vec3<i32>(0i, -1i, 1i))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1714f, 166f, -1550f, 1122f) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) - vec4<f32>(_wgslsmith_f_op_f32(-224f - -996f), -1913f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(trunc(1340f)), _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0))))));
}

fn func_1(arg_0: vec4<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(330f, 435f, 387f, -650f) + vec4<f32>(445f, 2347f, -662f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-670f, -831f, -687f, 425f) + vec4<f32>(-645f, 1037f, -1786f, -227f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1646f, 665f, 666f, -956f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))));
    var var_1 = Struct_4(Struct_3(arg_0.x, Struct_1(vec4<bool>(true, any(vec2<bool>(false, false)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f * var_0.x)), var_0.x, vec3<f32>(_wgslsmith_f_op_f32(-1000f - var_0.x), -1000f, _wgslsmith_f_op_f32(ceil(-1000f)))), Struct_1(vec4<bool>(true, false, true, true), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -2084f) + var_0.x), var_0.wxw), arg_0.x), Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-60285i, 39293i, 2147483647i) << (firstTrailingBit(vec3<u32>(u_input.c, u_input.b.x, u_input.c)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mult_i32(-33327i, -51813i), select(-29743i, -30031i, true), 0i))));
    let var_2 = Struct_3(select(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_1.a.a, 64176u, 46129u), vec4<u32>(0u, 1u, u_input.c, 0u))), 0u, true), var_1.a.c, Struct_1(select(select(!var_1.a.c.a, select(var_1.a.c.a, vec4<bool>(var_1.a.b.a.x, var_1.a.c.a.x, false, false), var_1.a.b.a), vec4<bool>(false, var_1.a.b.a.x, true, var_1.a.b.a.x)), var_1.a.c.a, var_1.a.b.a.x & false), var_1.a.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(151f, 578f, -1441f), _wgslsmith_f_op_vec3_f32(var_1.a.b.d + vec3<f32>(var_1.a.b.c, var_1.a.c.b, var_1.a.b.b)))))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~u_input.a.wyy, arg_0.wwz >> (vec3<u32>(0u, arg_0.x, u_input.c) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(arg_0.yxx, vec3<u32>(1u, arg_0.x, 49108u))), vec3<u32>(abs(var_1.a.a), select(var_1.a.a, arg_0.x, true), 45458u)), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(10505u, 1899u, 33100u, var_1.a.a)), ~abs(u_input.c), _wgslsmith_dot_vec3_u32(u_input.a.zzx, arg_0.xzz))));
    var_1 = Struct_4(var_2, Struct_2(select(vec3<i32>(-34171i, _wgslsmith_sub_i32(var_1.b.a.x, var_1.b.a.x), var_1.b.a.x), select(vec3<i32>(var_1.b.a.x, 53198i, var_1.b.a.x), ~var_1.b.a, var_2.c.a.xyw), var_1.a.c.a.x)));
    var_1 = Struct_4(Struct_3(var_1.a.a, var_1.a.b, Struct_1(!(!vec4<bool>(var_2.b.a.x, true, var_1.a.c.a.x, var_2.b.a.x)), var_2.c.b, _wgslsmith_f_op_f32(func_3(vec3<i32>(-22263i, var_1.b.a.x, var_1.b.a.x), ~u_input.b, Struct_4(Struct_3(0u, Struct_1(var_2.b.a, 448f, -1605f, vec3<f32>(-376f, -1479f, var_1.a.b.c)), var_2.b, 22570u), var_1.b), vec2<i32>(-8688i, var_1.b.a.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(var_0.zxx + vec3<f32>(-1966f, 1578f, var_0.x))))), countOneBits(var_1.a.a)), var_1.b);
    return _wgslsmith_div_vec3_i32(~vec3<i32>(1i, abs(var_1.b.a.x), ~2147483647i), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(var_1.b.a.x, var_1.b.a.x, var_1.b.a.x), var_1.b.a), var_1.b.a)) >> (vec3<u32>(abs(_wgslsmith_add_u32(~4981u, 0u)), 1u, ~1u) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -34757i;
    var_0 = _wgslsmith_sub_i32(abs(-5705i), ~reverseBits(-1i));
    let var_1 = Struct_2(_wgslsmith_add_vec3_i32(func_1(_wgslsmith_div_vec4_u32(~u_input.a, vec4<u32>(u_input.a.x, u_input.b.x, 59150u, 4142u))), select(~(vec3<i32>(-62260i, 42487i, 26107i) << (vec3<u32>(u_input.b.x, u_input.a.x, u_input.c) % vec3<u32>(32u))), ~vec3<i32>(0i, 7226i, 0i), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))));
    var var_2 = var_1;
    let var_3 = _wgslsmith_mod_vec2_i32(-var_1.a.xx, var_2.a.xy & -var_2.a.xx) ^ -(_wgslsmith_clamp_vec2_i32(var_2.a.zy, vec2<i32>(var_1.a.x, 2147483647i) >> (vec2<u32>(21636u, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(0i, var_1.a.x)) >> (vec2<u32>(_wgslsmith_mult_u32(55442u, u_input.c), u_input.a.x) % vec2<u32>(32u)));
    let var_4 = ~vec4<i32>(var_2.a.x, -var_2.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, var_1.a.x) ^ var_1.a.zx, vec2<i32>(-588i, 5622i)) & select(_wgslsmith_sub_i32(var_3.x, var_2.a.x), var_3.x, all(vec4<bool>(false, true, false, false))), 1i);
    let var_5 = var_3.x;
    let var_6 = Struct_4(Struct_3(_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.a.zwz | vec3<u32>(u_input.b.x, u_input.c, u_input.a.x), vec3<u32>(62625u, 32875u, u_input.a.x))), Struct_1(vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(301f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -563f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(490f, 1644f, 816f)) * vec3<f32>(-1000f, -132f, -358f))), Struct_1(vec4<bool>(1u <= u_input.c, u_input.a.x <= u_input.b.x, true, all(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-342f + 1000f) * 1f), 759f, vec3<f32>(_wgslsmith_div_f32(-452f, 271f), 933f, _wgslsmith_div_f32(176f, 415f))), ~7421u), var_1);
    var_0 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.yyy | u_input.a.zyy, vec3<u32>(u_input.b.x, 88901u, 67310u), min(vec3<u32>(4294967295u, var_6.a.d, 27006u), vec3<u32>(0u, 32998u, u_input.b.x))), ~_wgslsmith_mod_vec3_u32(u_input.a.xxw, u_input.a.wzx)), u_input.a.wyy, u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_6.a.c.c + -1080f), -1533f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-166f, var_6.a.b.c)), var_6.a.b.b), countOneBits(~vec3<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.b.x), select(0u, 0u, var_6.a.b.a.x), ~u_input.c)));
}

