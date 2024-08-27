struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = arg_2;
    var var_1 = -1i;
    var_0 = arg_0;
    var_0 = ~min(arg_0 << (_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c, arg_2), ~52761u) % 32u), arg_2);
    var_0 = _wgslsmith_clamp_u32(firstTrailingBit(42184u), u_input.d, ~1u);
    return arg_1.b.c;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(arg_1, Struct_1(arg_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.c, arg_1.b.x), vec2<f32>(-423f, arg_2.b.x)))) - _wgslsmith_f_op_vec2_f32(-arg_1.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(1u, Struct_2(arg_1, Struct_1(true, vec2<f32>(-1615f, 587f), -1177f, vec2<i32>(-1049i, u_input.a.x), -54840i), vec4<i32>(7984i, -1i, -46040i, 14917i), arg_1.d.x, u_input.a), ~u_input.c)))), abs(arg_1.d), 58567i), vec4<i32>(countOneBits(5559i), -1440i, arg_2.d.x, -90287i), 1i, _wgslsmith_sub_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), u_input.a)), abs(select(u_input.a, vec3<i32>(arg_1.e, 0i, -878i), false)) | u_input.a));
    var_0 = Struct_2(Struct_1(arg_2.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(arg_1.b, arg_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.c)) + 2694f), vec2<i32>(select(min(1i, -2147483647i), u_input.a.x, var_0.a.a), min(_wgslsmith_mult_i32(arg_2.e, u_input.a.x), _wgslsmith_div_i32(2147483647i, arg_2.e))), _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_mod_i32(u_input.a.x, -2147483647i)), -_wgslsmith_div_i32(u_input.a.x, -14104i))), arg_1, var_0.c ^ _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(18281i, 53963i, 0i, arg_1.d.x)), var_0.c), ~firstTrailingBit((-65016i << (u_input.b % 32u)) >> (~71268u % 32u)), _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(var_0.c.yzz, var_0.c.zww, ~var_0.e), _wgslsmith_mult_vec3_i32(firstTrailingBit(var_0.e), select(u_input.a, vec3<i32>(1462i, 2147483647i, var_0.c.x), vec3<bool>(false, true, true)) | ~vec3<i32>(arg_1.e, 2147483647i, var_0.a.e))));
    var var_1 = _wgslsmith_dot_vec3_i32(~(-firstLeadingBit(u_input.a)) & max(u_input.a, _wgslsmith_mult_vec3_i32(vec3<i32>(-2638i, -79166i, 7258i) | vec3<i32>(arg_2.e, -1i, 1i), select(u_input.a, u_input.a, true))), vec3<i32>(countOneBits(2147483647i), _wgslsmith_clamp_i32(arg_2.d.x, 2147483647i, _wgslsmith_div_i32(-37451i, u_input.a.x)) >> (u_input.d % 32u), 1i >> (u_input.d % 32u)));
    var var_2 = vec3<bool>(arg_2.a, any(select(vec4<bool>(arg_2.d.x >= 5746i, arg_2.a && var_0.a.a, arg_1.a, arg_1.a), select(!vec4<bool>(arg_1.a, false, true, true), vec4<bool>(false, arg_2.a, false, var_0.b.a), !arg_2.a), true)), false);
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(arg_2.c)) >= _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(var_0.a.c * 584f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-322f, 1f), arg_2.b)), -2437f, u_input.a.zz, ~1i), var_0.b, firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-arg_1.d.x, abs(1i), _wgslsmith_mod_i32(90046i, arg_1.e), 75537i << (0u % 32u)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(54281i, arg_1.d.x, arg_2.d.x, -4639i), vec4<i32>(u_input.a.x, 14421i, 37337i, u_input.a.x)), var_0.c >> (vec4<u32>(u_input.c, u_input.d, u_input.c, u_input.b) % vec4<u32>(32u)), -var_0.c))), -1i, ~(-_wgslsmith_div_vec3_i32(var_0.e, u_input.a)) >> ((_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, 4294967295u, 0u), vec3<u32>(u_input.c, 37207u, u_input.d)) | ~vec3<u32>(u_input.b, 17915u, u_input.b)) % vec3<u32>(32u)));
    return !(!(!vec4<bool>(any(var_2.yz), arg_2.a, any(vec4<bool>(var_0.a.a, true, true, true)), arg_1.a & true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    var var_0 = ~(_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(19052i, arg_1.d.x, 1i, 1i), vec4<i32>(-8806i, u_input.a.x, 2915i, 77909i), vec4<bool>(true, arg_1.a, arg_1.a, false)), (vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.a.x) >> (vec4<u32>(u_input.d, 48753u, u_input.c, u_input.d) % vec4<u32>(32u))) | -vec4<i32>(-2147483647i, 705i, 6679i, -1511i), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -30652i, -75332i, -12032i), vec4<i32>(arg_2.x, u_input.a.x, 10316i, u_input.a.x)), reverseBits(vec4<i32>(47545i, 2147483647i, u_input.a.x, -2147483647i)))) | abs(~(-vec4<i32>(arg_1.e, u_input.a.x, arg_1.d.x, 34670i))));
    let var_1 = Struct_3(0u, all(!(!func_2(false, arg_1, Struct_1(true, arg_1.b, 679f, vec2<i32>(arg_2.x, arg_1.d.x), var_0.x)))), Struct_2(arg_1, arg_1, firstLeadingBit(abs(vec4<i32>(arg_1.e, 25742i, 59139i, u_input.a.x)) | ~vec4<i32>(u_input.a.x, var_0.x, 74579i, var_0.x)), ~(-_wgslsmith_sub_i32(var_0.x, 0i)), min(var_0.ywz, arg_2) >> (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.d, 0u), vec3<u32>(u_input.c, 8564u, u_input.b)), ~vec3<u32>(0u, u_input.d, 3862u)) % vec3<u32>(32u))), -491f, select(-arg_1.d, vec2<i32>(_wgslsmith_mult_i32(var_0.x, _wgslsmith_mod_i32(var_0.x, var_0.x)), -arg_1.d.x), arg_0.zy));
    var_0 = -var_1.c.c;
    var var_2 = u_input.b;
    var var_3 = var_1.c.a.b.x;
    return (_wgslsmith_f_op_f32(min(-687f, arg_1.c)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-636f)))) & (max(~18260i | u_input.a.x, i32(-1i) * -var_0.x) <= -14367i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(max(5096i, ~9676i) << (select(4294967295u, _wgslsmith_sub_u32(firstLeadingBit(0u), u_input.d), func_1(vec3<bool>(true, false, false), Struct_1(true, vec2<f32>(-554f, -1438f), -1000f, vec2<i32>(38844i, -2147483647i), u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) & any(vec3<bool>(false, false, true))) % 32u));
    let var_1 = vec2<i32>(firstTrailingBit(var_0), -countOneBits(1i) & (max(var_0 | -86898i, ~u_input.a.x) >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.d, u_input.b), reverseBits(u_input.b)) % 32u)));
    var var_2 = !vec4<bool>(!all(vec3<bool>(true, false, false)), true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), true);
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(~1981u, _wgslsmith_dot_vec2_u32(abs(select(vec2<u32>(1u, u_input.c), vec2<u32>(4294967295u, u_input.d), vec2<bool>(var_2.x, true))), ~vec2<u32>(u_input.c, u_input.c))), _wgslsmith_mult_u32(reverseBits(_wgslsmith_mod_u32(u_input.c ^ u_input.c, ~13459u)), u_input.b), 54823u | u_input.b, countOneBits(~_wgslsmith_mod_u32(1u, 26719u)));
    let var_4 = -11004i;
    var_2 = !vec4<bool>(var_2.x || var_2.x, !(_wgslsmith_f_op_f32(func_3(u_input.b, Struct_2(Struct_1(var_2.x, vec2<f32>(203f, 153f), -1694f, vec2<i32>(u_input.a.x, -64955i), 35631i), Struct_1(true, vec2<f32>(797f, 1547f), -1141f, vec2<i32>(var_0, -1i), var_0), vec4<i32>(var_4, 28653i, 2147483647i, var_1.x), var_4, vec3<i32>(2147483647i, 0i, u_input.a.x)), 12115u)) > _wgslsmith_f_op_f32(-1098f + 240f)), var_2.x, all(!var_2.zzy));
    var var_5 = ~_wgslsmith_add_vec3_u32(var_3.yxy, abs(min(vec3<u32>(var_3.x, u_input.d, var_3.x), ~var_3.wxx)));
    let var_6 = !func_2(false, Struct_1(any(select(vec4<bool>(var_2.x, true, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, true, var_2.x))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1773f, 359f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1856f, 1318f)))), _wgslsmith_div_f32(-576f, -1192f), -firstLeadingBit(vec2<i32>(var_0, var_1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-11524i, -1i), u_input.a.xy) >> (0u % 32u)), Struct_1(var_2.x, vec2<f32>(_wgslsmith_div_f32(-579f, 623f), -151f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-279f))), ~vec2<i32>(-54252i, u_input.a.x), firstTrailingBit(2147483647i))).yxz;
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_3.x, vec3<u32>(~min(var_5.x, 12573u), _wgslsmith_mod_u32(u_input.b, max(firstLeadingBit(u_input.c), 0u)), abs(firstTrailingBit(var_5.x))), 1u, _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_4, 0i), vec4<i32>(var_1.x, -6192i, var_0, var_4)) ^ (vec4<i32>(13900i, 16784i, 25125i, var_4) ^ vec4<i32>(2147483647i, -1i, var_0, var_1.x)), ~(~vec4<i32>(1i, -30586i, u_input.a.x, 2147483647i))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(1079u, 0u, var_3.x, var_5.x) | vec4<u32>(4294967295u, 4294967295u, var_3.x, 66584u), select(vec4<u32>(1u, 1u, var_3.x, 1u), vec4<u32>(1u, 7465u, 30615u, 4294967295u), vec4<bool>(true, var_2.x, false, true))) % vec4<u32>(32u)));
}

