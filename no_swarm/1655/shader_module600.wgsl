struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: i32) -> f32 {
    return -2056f;
}

fn func_3(arg_0: vec2<bool>) -> vec3<f32> {
    let var_0 = Struct_1(firstLeadingBit(~(-(vec2<i32>(u_input.b.x, 2291i) | vec2<i32>(u_input.b.x, -15123i)))), all(select(!vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, true, any(vec2<bool>(true, false))), true)), _wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_mod_vec4_i32(u_input.b, u_input.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1527f, -441f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-727f, -2190f)))), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-877f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = Struct_2(!(-271f != _wgslsmith_f_op_f32(func_1(reverseBits(-2147483647i), countOneBits(u_input.b.xzz), ~(-26236i)))), var_0, _wgslsmith_mod_vec4_i32(var_0.d | ~_wgslsmith_clamp_vec4_i32(var_0.d, var_0.d, u_input.b), u_input.b), vec4<u32>(u_input.a ^ u_input.a, ~_wgslsmith_dot_vec3_u32(u_input.c.ywy, ~u_input.c.zyx), 41004u, 4294967295u), Struct_1(var_0.d.wz, false & var_0.b, -655f, vec4<i32>(-23392i, ~_wgslsmith_clamp_i32(5031i, u_input.d, u_input.b.x), -(~0i), 0i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(370f, 392f), var_0.e)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.e.x), var_0.e.x))));
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_div_i32(0i, _wgslsmith_sub_i32(u_input.d, -5370i) ^ _wgslsmith_dot_vec2_i32(u_input.b.ww, vec2<i32>(0i, 41453i))), ~var_1.e.d.x), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(656f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2304f * 1368f)))), ~(~var_0.d), _wgslsmith_f_op_vec2_f32(-var_0.e));
    let var_3 = Struct_2(!(_wgslsmith_f_op_f32(-var_2.c) != var_0.c), Struct_1(_wgslsmith_mult_vec2_i32(var_2.d.zy, -countOneBits(var_1.e.d.wy)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.e.x))), -(vec4<i32>(var_0.d.x, var_0.a.x, var_1.e.d.x, 2147483647i) >> (~vec4<u32>(var_1.d.x, 1u, var_1.d.x, var_1.d.x) % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-var_2.e.x), -203f)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, var_0.d.x) >> (var_1.d % vec4<u32>(32u))), vec4<i32>(u_input.d, var_2.a.x | 17806i, var_0.d.x, 2147483647i)), ~vec4<i32>(_wgslsmith_mod_i32(-2147483647i, 2147483647i), var_1.b.d.x | 13070i, -u_input.b.x, firstLeadingBit(var_1.c.x))), u_input.c, Struct_1(-(~var_1.e.a), (-2147f <= _wgslsmith_f_op_f32(-986f * var_1.b.e.x)) && all(arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1094f), u_input.b ^ (-vec4<i32>(2147483647i, 2147483647i, u_input.d, -1i) | vec4<i32>(var_1.c.x, u_input.d, -1i, -39321i)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(var_0.e, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-387f, -424f), vec2<f32>(var_0.e.x, var_1.b.e.x))))))));
    var_1 = Struct_2(select(false, true, var_0.b), Struct_1(-vec2<i32>(firstLeadingBit(20310i), -25434i), var_3.b.b & any(!vec3<bool>(true, var_0.b, true)), _wgslsmith_f_op_f32(-var_2.c), vec4<i32>(0i, min(~var_1.e.a.x, u_input.d), -87303i, _wgslsmith_sub_i32(-22734i, 1i) ^ -var_2.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.e.x - var_1.e.c), -452f))), vec4<i32>(~_wgslsmith_sub_i32(countOneBits(32769i), -12691i), _wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.d.x, abs(1i)), var_1.b.d.x), -_wgslsmith_mult_i32(var_3.c.x, ~1i), countOneBits(min(var_2.a.x, -1i))), vec4<u32>(~4294967295u, ~reverseBits(reverseBits(0u)), select(1u, _wgslsmith_dot_vec3_u32(u_input.c.yxx, vec3<u32>(0u, u_input.c.x, 26339u)) & ~var_3.d.x, var_1.e.b), ~var_3.d.x), var_0);
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1208f, _wgslsmith_f_op_f32(f32(-1f) * -1728f), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(max(312f, _wgslsmith_f_op_f32(-var_0.e.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.c, 529f, var_3.b.c) - vec3<f32>(var_0.c, var_3.b.c, var_1.e.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(942f, -291f, var_3.e.c) + vec3<f32>(var_1.b.c, -541f, var_2.c)))) + vec3<f32>(-1196f, _wgslsmith_f_op_f32(sign(var_3.b.e.x)), var_2.c))), !(!var_3.e.b)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> vec4<u32> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(!(!vec2<bool>(var_0.b, true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, 797f, -722f)))));
    let var_2 = Struct_1(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, select(arg_0.a.x, u_input.d, true)), var_0.a), arg_0.b, -686f, _wgslsmith_div_vec4_i32(~(arg_1.c << (u_input.c % vec4<u32>(32u))), vec4<i32>(-51381i, abs(min(-22080i, -2147483647i)), _wgslsmith_mult_i32(16605i, arg_1.b.a.x) << (~4294967295u % 32u), var_0.d.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1.yy * var_0.e))))));
    var var_3 = _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(max(681f, 268f)));
    var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c))) - var_1.x) - _wgslsmith_f_op_f32(-arg_0.c))));
    return arg_1.d;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    var var_0 = !(~(~4294967295u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, 0u, arg_1.x), vec4<u32>(4294967295u, u_input.c.x, 52340u, arg_1.x))) >= ~arg_1.x);
    var var_1 = Struct_1(u_input.b.yx, true, -193f, -u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(-809f * -1934f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-387f, -1352f)))) - vec2<f32>(-730f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1923f, -1329f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.e - _wgslsmith_f_op_vec3_f32(func_3(select(vec2<bool>(arg_0, true), vec2<bool>(var_1.b, arg_0), var_1.b))).xx) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, var_1.e.x) * var_1.e) - _wgslsmith_f_op_vec2_f32(min(var_1.e, vec2<f32>(var_1.e.x, var_1.e.x)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_1.e.x))));
    var var_3 = Struct_1(abs(-vec2<i32>(1i, u_input.b.x)), true, _wgslsmith_f_op_f32(floor(1000f)), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -984f), var_1.e) * vec2<f32>(var_1.c, -1000f)) - _wgslsmith_f_op_vec2_f32(exp2(var_1.e))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3(select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(false, true), false))).zz)));
    let var_4 = Struct_1(firstLeadingBit(u_input.b.ww), var_3.b, _wgslsmith_f_op_f32(-var_2.x), vec4<i32>(reverseBits(_wgslsmith_sub_i32(var_3.a.x, u_input.d)), select(arg_2, 14426i, true), 1525i, ~(-arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.e)) - vec2<f32>(var_2.x, var_3.e.x)) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(var_1.a.x, vec3<i32>(41193i, 0i, -58431i), u_input.b.x)), var_3.c)), var_1.e.x)));
    return Struct_1(countOneBits(~var_1.a), var_1.b, _wgslsmith_f_op_f32(-var_4.e.x), countOneBits(vec4<i32>(var_3.d.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.d.x, var_3.d.x, 22158i), vec3<i32>(0i, 2147483647i, var_3.a.x))), var_3.d.x, 1i)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.e)))), _wgslsmith_f_op_vec2_f32(var_2 - _wgslsmith_div_vec2_f32(var_3.e, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c, -455f) + vec2<f32>(523f, -924f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2((~_wgslsmith_dot_vec3_u32(u_input.c.zwx, vec3<u32>(0u, u_input.c.x, u_input.a)) <= ~(~1u)) && (1190f != _wgslsmith_f_op_f32(func_1(-u_input.d, countOneBits(vec3<i32>(u_input.b.x, -3069i, 1i)), -30605i))), func_4(any(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), _wgslsmith_div_vec4_u32(~func_2(Struct_1(vec2<i32>(u_input.d, u_input.b.x), false, -1240f, u_input.b, vec2<f32>(-1248f, 492f)), Struct_2(false, Struct_1(vec2<i32>(u_input.b.x, -13176i), false, 1453f, u_input.b, vec2<f32>(-1884f, 1336f)), u_input.b, vec4<u32>(1u, 0u, 4294967295u, u_input.a), Struct_1(u_input.b.yy, true, 462f, vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, u_input.d), vec2<f32>(-1357f, 573f))), 1u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, 0u, u_input.a), vec4<u32>(u_input.a, 53410u, 13467u, 4294967295u))), _wgslsmith_clamp_i32(u_input.b.x, firstLeadingBit(-48567i) << (~u_input.a % 32u), -1i)), (vec4<i32>(-1i) * -abs(u_input.b)) ^ vec4<i32>(-u_input.b.x, abs(1i), 1i | _wgslsmith_mod_i32(u_input.d, -31688i), u_input.d), firstLeadingBit(~firstLeadingBit(vec4<u32>(11569u, 1u, 13524u, u_input.c.x))) ^ abs(u_input.c), Struct_1(func_4(false, _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.a, 8697u, 4294967295u) >> (u_input.c % vec4<u32>(32u))), 618i).d.yx, select(false, true, true), -431f, ~vec4<i32>(_wgslsmith_sub_i32(23193i, u_input.d), u_input.b.x << (44918u % 32u), _wgslsmith_mult_i32(1i, -1i), 33025i), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), 694f) - vec2<f32>(1f, 1f))));
    let var_1 = !(!(!select(vec3<bool>(true, false, false), vec3<bool>(var_0.a, false, false), vec3<bool>(var_0.b.b, false, var_0.e.b))));
    var_0 = Struct_2(any(select(!(!var_1), vec3<bool>(true, true, u_input.a < u_input.a), var_1)), Struct_1(~u_input.b.yy, true, -1122f, -(~firstLeadingBit(vec4<i32>(-1i, u_input.b.x, 1i, -5738i))), var_0.b.e), var_0.c >> ((~(u_input.c << (vec4<u32>(58938u, u_input.a, 1u, 0u) % vec4<u32>(32u))) ^ vec4<u32>(max(u_input.c.x, u_input.a), 1u, u_input.c.x << (var_0.d.x % 32u), u_input.c.x | 33108u)) % vec4<u32>(32u)), abs(firstTrailingBit(abs(select(vec4<u32>(97379u, 4294967295u, 0u, var_0.d.x), vec4<u32>(0u, 0u, var_0.d.x, var_0.d.x), vec4<bool>(var_1.x, var_1.x, true, false))))), Struct_1(reverseBits(var_0.e.d.zz), var_0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-372f * 1258f) - _wgslsmith_f_op_f32(-var_0.b.c)), _wgslsmith_f_op_f32(-var_0.e.e.x))), min(vec4<i32>(~var_0.c.x, -52932i << (u_input.c.x % 32u), ~0i, 2147483647i), vec4<i32>(i32(-1i) * -1i, 1i, var_0.c.x | 25093i, _wgslsmith_clamp_i32(29447i, var_0.e.a.x, u_input.d))), func_4(all(select(vec4<bool>(var_1.x, false, false, true), vec4<bool>(var_0.e.b, true, var_1.x, false), false)), countOneBits(_wgslsmith_sub_vec4_u32(var_0.d, vec4<u32>(29013u, var_0.d.x, var_0.d.x, var_0.d.x))), 2147483647i).e));
    var var_2 = Struct_2(var_0.a, var_0.e, _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-27520i, -abs(14940i), -(~(-1i)), ~(-26102i))), ~_wgslsmith_add_vec4_u32(vec4<u32>(abs(var_0.d.x), var_0.d.x >> (u_input.c.x % 32u), 0u, firstLeadingBit(4294967295u)), u_input.c), var_0.e);
    var var_3 = Struct_2(!(!var_1.x == true), func_4(!(!any(var_1.xz)), vec4<u32>(var_2.d.x, ~1u, var_2.d.x, max(~1u, 27852u)), -(~(-u_input.d))), vec4<i32>(-_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.d, 4326i), ~var_0.b.d.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(countOneBits(u_input.d), _wgslsmith_add_i32(var_0.b.a.x, -16728i)), max(select(0i, -2147483647i, var_0.b.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1615i, var_2.b.d.x), vec2<i32>(u_input.d, var_2.c.x)))), _wgslsmith_div_i32(1i, var_2.e.a.x), i32(-1i) * -2049i), vec4<u32>(firstTrailingBit(~_wgslsmith_mod_u32(var_2.d.x, 41267u)), func_2(func_4(all(var_1.xy), var_2.d, 1i), Struct_2(true, var_0.b, -vec4<i32>(-46858i, 63127i, var_2.c.x, 0i), firstTrailingBit(u_input.c), Struct_1(vec2<i32>(0i, -33652i), var_1.x, var_0.e.c, vec4<i32>(-1i, -1i, var_2.e.d.x, 16556i), var_2.b.e)), u_input.c.x).x, 1124u, select(var_2.d.x | u_input.a, _wgslsmith_div_u32(var_0.d.x, var_0.d.x), func_4(var_0.a, ~var_2.d, ~var_0.c.x).b)), func_4(var_2.e.b, vec4<u32>(1u, var_0.d.x, _wgslsmith_mod_u32(37414u & var_0.d.x, 1u), func_2(Struct_1(var_0.e.a, true, var_0.b.c, vec4<i32>(u_input.b.x, 552i, 1i, -1i), var_0.b.e), Struct_2(var_2.b.b, Struct_1(vec2<i32>(u_input.b.x, 2147483647i), false, var_0.e.c, var_2.e.d, var_0.b.e), vec4<i32>(-1i, u_input.d, 1i, 2147483647i), vec4<u32>(var_0.d.x, 0u, var_0.d.x, 0u), var_2.e), ~1u).x), -func_4(false, var_2.d, firstTrailingBit(-23198i)).d.x));
    let var_4 = ~(~(~(~var_3.d.x))) ^ _wgslsmith_div_u32(~max(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(58442u, var_0.d.x, 0u, 1u), var_2.d)), ~(~(~u_input.a)));
    var_3 = Struct_2(true, var_0.b, _wgslsmith_div_vec4_i32(-var_0.e.d >> (abs(var_2.d) % vec4<u32>(32u)), var_0.c), select(vec4<u32>(52568u, ~_wgslsmith_mod_u32(13231u, 28547u), 65823u, 1u), ~vec4<u32>(firstTrailingBit(80913u), select(var_0.d.x, var_0.d.x, true), u_input.c.x, 70627u), true), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(-var_0.c.wwx, vec3<i32>(2147483647i, var_0.e.d.x, 1i)), _wgslsmith_mod_i32(-39819i, ~var_3.e.d.x)), false, _wgslsmith_f_op_f32(var_2.b.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e.e.x * var_0.e.c) * -1373f)), ~(-vec4<i32>(var_3.b.a.x, u_input.b.x, 1i, u_input.b.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1148f, -1391f), _wgslsmith_f_op_vec2_f32(vec2<f32>(472f, -1931f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1258f, 559f) * vec2<f32>(237f, -316f)))))));
    let var_5 = var_0.b;
    var var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.d.x);
}

