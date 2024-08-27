struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec4<i32> {
    var var_0 = ~(~_wgslsmith_dot_vec2_u32(u_input.b, ~(~u_input.b)));
    let var_1 = ~(~vec3<i32>(-46245i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(10821i, u_input.c.x), u_input.c.x), 1i));
    var var_2 = Struct_1(!select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true), false), vec4<bool>(all(vec2<bool>(false, true)), true, select(false, false, true), any(vec2<bool>(false, false))), true), select(var_1.x, var_1.x, select(!any(vec3<bool>(false, false, false)), false, true)), _wgslsmith_clamp_vec4_i32((~vec4<i32>(-1i, u_input.c.x, var_1.x, u_input.a.x) & vec4<i32>(-2147483647i, u_input.c.x, var_1.x, u_input.c.x)) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 33282u, u_input.b.x, u_input.b.x), vec4<u32>(1u, 72137u, u_input.b.x, 0u)), firstTrailingBit(u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, 0u), select(62697u, 16622u, true)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(2147483647i), -2147483647i, u_input.c.x, i32(-1i) * -1i), countOneBits(firstTrailingBit(vec4<i32>(u_input.a.x, 17283i, -2147483647i, -35512i)))), ~countOneBits(-vec4<i32>(u_input.a.x, var_1.x, -1i, 1i))), 0i);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1619f, _wgslsmith_f_op_f32(2036f * 1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-788f))))));
    return ~(vec4<i32>(reverseBits(max(-4372i, -17885i)), abs(0i), -(~(-5113i)), -var_1.x) ^ select(max(reverseBits(var_2.c), -vec4<i32>(var_2.b, -1i, u_input.a.x, -1i)), ~vec4<i32>(u_input.a.x, var_1.x, -72291i, 2147483647i), !vec4<bool>(false, var_2.a.x, var_2.a.x, true)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>) -> i32 {
    var var_0 = u_input.b;
    var var_1 = Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), u_input.a.x > arg_1.x, true, any(vec4<bool>(false, true, true, false))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true)), _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(-44903i, arg_1.x), -arg_1.xy)), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(1i, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, 7452i)), arg_1.zy, vec2<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.c.x), arg_1.x))), func_3(), -2147483647i);
    var var_2 = countOneBits(3529i);
    let var_3 = reverseBits(u_input.c.x);
    var_2 = -12341i;
    return _wgslsmith_mult_i32(41398i | _wgslsmith_mod_i32(arg_1.x, var_1.b), _wgslsmith_mod_i32(-firstLeadingBit(-1i), 4763i));
}

fn func_1() -> bool {
    let var_0 = firstLeadingBit(-((vec2<i32>(u_input.c.x, u_input.c.x) << (u_input.b % vec2<u32>(32u))) ^ ~(~u_input.c)));
    var var_1 = 19218i;
    let var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(1430f * -193f), 188f), vec4<i32>(24948i & ~var_0.x, -2147483647i, 0i, 17583i)) <= -1519i;
    let var_3 = Struct_1(select(!select(select(vec4<bool>(false, true, var_2, false), vec4<bool>(var_2, var_2, var_2, true), vec4<bool>(var_2, var_2, false, false)), select(vec4<bool>(true, var_2, var_2, false), vec4<bool>(var_2, false, true, true), vec4<bool>(true, var_2, false, var_2)), vec4<bool>(true, false, var_2, true)), !vec4<bool>(var_2, true, var_0.x != u_input.c.x, true || var_2), (0i & u_input.c.x) != _wgslsmith_mult_i32(-var_0.x, ~(-4894i))), var_0.x, _wgslsmith_mod_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(-25869i, var_0.x, -13097i, -26571i)) >> (~select(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 16379u), vec4<u32>(30309u, 4294967295u, u_input.b.x, u_input.b.x), vec4<bool>(var_2, var_2, false, false)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(func_3().x, countOneBits(var_0.x)), i32(-1i) * -1295i, u_input.a.x, _wgslsmith_clamp_i32(func_2(vec2<f32>(643f, 1000f), vec4<i32>(u_input.c.x, 9703i, u_input.a.x, var_0.x)), _wgslsmith_mult_i32(var_0.x, u_input.a.x), u_input.a.x))), _wgslsmith_mult_i32(firstTrailingBit(var_0.x & _wgslsmith_dot_vec2_i32(vec2<i32>(-29530i, -2147483647i), vec2<i32>(-50796i, 2147483647i))), _wgslsmith_sub_i32(~(-var_0.x), abs(0i))));
    var_1 = -2147483647i;
    return _wgslsmith_f_op_f32(floor(1811f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(264f, 500f)) + _wgslsmith_f_op_f32(trunc(-541f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, vec3<u32>(max(0u, ~select(u_input.b.x, 4294967295u, true)), _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), ~1u), Struct_1(select(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, all(vec3<bool>(true, false, true))), vec4<bool>(func_1(), true, u_input.b.x > 54704u, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))), i32(-1i) * -1i, ~vec4<i32>(u_input.a.x, 1i, u_input.a.x, max(0i, 0i)), 1i), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, ~4294967295u), ~abs(~u_input.b.x), ~(_wgslsmith_add_u32(u_input.b.x, 1031u) >> (firstTrailingBit(u_input.b.x) % 32u)), _wgslsmith_sub_u32(reverseBits(countOneBits(u_input.b.x)), 1u)), select(~4294967295u, u_input.b.x, true));
    let var_1 = var_0.e;
    let var_2 = Struct_3(Struct_1(select(vec4<bool>(all(vec4<bool>(false, var_0.c.a.x, false, false)), false, false & var_0.c.a.x, !var_0.a), var_0.c.a, !vec4<bool>(var_0.a, false, true, var_0.a)), 1i, var_0.c.c, 38027i), Struct_2(var_0.a, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, ~var_0.b.x), ~var_0.b), var_0.c, countOneBits(vec4<u32>(u_input.b.x << (1u % 32u), u_input.b.x, ~u_input.b.x, 4294967295u)), var_0.e), _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(~var_0.d, firstTrailingBit(var_0.d)), select(select(~var_0.d, ~var_0.d, true), abs(var_0.d << (var_0.d % vec4<u32>(32u))), var_0.c.a.x)), _wgslsmith_sub_vec3_i32(abs(var_0.c.c.zwz), vec3<i32>(-u_input.c.x, reverseBits(12098i), 20024i) | _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(var_0.c.b, 2147483647i, 2147483647i)), vec3<i32>(-3040i, u_input.a.x, 0i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1680f * -1359f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-618f + 582f) - _wgslsmith_f_op_f32(f32(-1f) * -824f)), -197f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1993f - 1189f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(330f, -497f, 378f, 617f) - vec4<f32>(-603f, 385f, 1450f, -1614f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1010f, 1814f, -591f, -193f)), vec4<f32>(845f, 144f, 266f, 839f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-859f, _wgslsmith_f_op_f32(min(-1722f, _wgslsmith_f_op_f32(-var_2.e.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.e.x * _wgslsmith_f_op_f32(-2731f - -1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(step(-1302f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(max(142f, -591f)), true)))), -552f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(422f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1201f), _wgslsmith_f_op_f32(step(var_2.e.x, -178f))), 930f, -855f)));
    let var_4 = var_2;
    var_3 = var_4.e;
    let var_5 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.c.c.x ^ 2147483647i, var_1, _wgslsmith_div_vec3_u32(~(~var_2.b.b), ~_wgslsmith_div_vec3_u32(~var_0.b, firstTrailingBit(var_4.b.d.yxw))));
}

