struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = !all(!vec2<bool>(select(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.b.x != arg_0.b.x));
    var_0 = !all(vec3<bool>(true, true, true));
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(max(-(~34612i), countOneBits(u_input.b.x ^ u_input.b.x)), u_input.b.x), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.b.x), -1i, u_input.b.x), firstTrailingBit(vec3<i32>(0i, 15633i, -25881i)) & arg_0.d), select(~(~arg_0.a.x), countOneBits(27438i), select(true, arg_0.b.x, all(vec3<bool>(false, arg_0.b.x, true))))), _wgslsmith_dot_vec3_i32(-arg_0.a.zwz, arg_0.d));
    let var_2 = -18788i;
    var_1 = vec3<i32>(~(-1i), firstLeadingBit(2147483647i), ~2147483647i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -106f) - -429f))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>((u_input.b.x ^ -1i) ^ u_input.b.x, -1i, firstTrailingBit(reverseBits(u_input.b.x)), u_input.b.x), !arg_0, 1u, _wgslsmith_mult_vec3_i32(min(~vec3<i32>(2147483647i, -2147483647i, -2147483647i), ~vec3<i32>(u_input.b.x, -2147483647i, -33738i)) & vec3<i32>(2147483647i, ~10167i, firstTrailingBit(2147483647i)), ~vec3<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -8363i, 1i, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)), ~u_input.b.x)));
    var var_1 = _wgslsmith_f_op_f32(func_3(var_0));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-255f, _wgslsmith_f_op_f32(ceil(-1349f))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(2147483647i, 49858i, 24621i, -1i), vec2<bool>(true, arg_0.x), 1u, vec3<i32>(2147483647i, var_0.d.x, var_0.d.x)))) + -1555f))));
    var var_2 = ~select(~(u_input.a | 28514u), 0u, false) << (_wgslsmith_add_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.c) & vec2<u32>(4294967295u, 15481u), countOneBits(vec2<u32>(8049u, 29115u)))), ~4294967295u) % 32u);
    var_2 = var_0.c;
    return Struct_1(reverseBits(_wgslsmith_div_vec4_i32(var_0.a, _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 17990i, u_input.b.x, var_0.d.x), vec4<i32>(45794i, var_0.d.x, var_0.d.x, 77092i)), var_0.a))), !arg_0, countOneBits(11243u), var_0.d);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = -1317f;
    var var_1 = false;
    let var_2 = Struct_1(-vec4<i32>(-46289i, arg_1.d.x, _wgslsmith_sub_i32(0i, 1i), -8214i) << ((min(~vec4<u32>(arg_1.c, 5418u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, arg_1.c, u_input.a) ^ vec4<u32>(arg_1.c, arg_1.c, arg_1.c, u_input.a)) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 0u, u_input.a), vec4<u32>(arg_1.c, 0u, arg_1.c, 0u))) % vec4<u32>(32u)), vec2<bool>(false, any(!select(vec3<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x), vec3<bool>(arg_1.b.x, true, true), vec3<bool>(false, true, true)))), 4294967295u, _wgslsmith_add_vec3_i32(-vec3<i32>(4407i ^ u_input.b.x, -19035i, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, 2147483647i)), arg_1.a.yyz));
    var var_3 = vec2<u32>(u_input.a, 110758u);
    let var_4 = Struct_2(firstLeadingBit(~vec3<u32>(33709u, ~var_2.c, var_3.x)), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 40746u), arg_1.c), var_2.c), var_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 2684u), vec3<u32>(var_2.c, var_3.x, 0u)) & ~_wgslsmith_div_u32(var_2.c, var_2.c), u_input.a), func_2(!func_2(var_2.b).b));
    return u_input.a;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-343f)))) * -176f))));
    var var_1 = Struct_2(~abs(vec3<u32>(u_input.a, 4294967295u, 5751u & u_input.a)), vec4<u32>(arg_2.b.x, u_input.a >> (u_input.a % 32u), func_4(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(var_0 + var_0)), func_2(select(vec2<bool>(false, true), arg_2.c.b, arg_1))), 20600u), arg_2.c);
    let var_2 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(arg_2.b, ~arg_2.b) >> (reverseBits(~arg_2.b) % vec4<u32>(32u)), var_1.b >> (arg_2.b % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.b.wz, select(arg_2.b.yz, vec2<u32>(var_1.c.c, 1u), vec2<bool>(var_1.c.b.x, arg_1))), 48949u, var_1.b.x, 32435u)));
    var var_3 = Struct_2(~(_wgslsmith_mult_vec3_u32(vec3<u32>(8571u, 4294967295u, arg_2.b.x), select(vec3<u32>(10406u, var_1.c.c, 0u), vec3<u32>(28480u, 6251u, 44724u), arg_2.c.b.x)) | var_2.zxy), var_2, var_1.c);
    var_3 = Struct_2(arg_2.b.zwx, _wgslsmith_mult_vec4_u32(vec4<u32>(~abs(1u), var_1.c.c, 4294967295u, 37249u), var_1.b), func_2(vec2<bool>(var_1.c.b.x, arg_2.c.b.x)));
    return firstLeadingBit(~max(arg_2.b.xzy, vec3<u32>(firstLeadingBit(0u), ~1u, firstTrailingBit(33364u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(21901i, true, Struct_2(_wgslsmith_div_vec3_u32(max(vec3<u32>(19418u, 71037u, u_input.a), vec3<u32>(u_input.a, 7663u, u_input.a)), vec3<u32>(u_input.a, 49312u, u_input.a) | vec3<u32>(40490u, u_input.a, u_input.a)), ~_wgslsmith_div_vec4_u32(vec4<u32>(22204u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 95344u, u_input.a, u_input.a)), Struct_1(select(vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), vec4<i32>(u_input.b.x, 0i, -51525i, u_input.b.x), true), vec2<bool>(true, true), u_input.a, -vec3<i32>(0i, 52537i, u_input.b.x)))), ~(~abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 75012u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u)))), Struct_1(countOneBits(vec4<i32>(min(u_input.b.x, 0i), u_input.b.x | u_input.b.x, abs(-33443i), _wgslsmith_add_i32(u_input.b.x, -1i))), vec2<bool>(true, !all(vec2<bool>(false, false))), select(u_input.a, u_input.a, true) | _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 90215u), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, abs(1i), -16832i), select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, 0i, 1586i)), -vec3<i32>(u_input.b.x, u_input.b.x, 1i), false))));
    var var_1 = func_2(var_0.c.b);
    var_1 = Struct_1((var_1.a | abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 18298i, var_1.a.x, 13732i), vec4<i32>(1i, var_0.c.a.x, 2147483647i, var_0.c.a.x)))) | ~(var_1.a & -vec4<i32>(u_input.b.x, 1i, 32625i, u_input.b.x)), vec2<bool>(!any(vec2<bool>(true, true)), var_1.b.x), ~(12607u ^ var_1.c), -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c.a.x, 2147483647i, var_0.c.a.x) & vec3<i32>(-14401i, -25336i, u_input.b.x), vec3<i32>(26054i, var_0.c.d.x, var_1.a.x) | var_0.c.d, _wgslsmith_mod_vec3_i32(var_1.a.wxy, vec3<i32>(var_1.d.x, -1i, var_0.c.d.x))) | -(select(vec3<i32>(u_input.b.x, var_0.c.d.x, -1i), vec3<i32>(var_1.d.x, -1i, var_0.c.d.x), vec3<bool>(false, true, var_1.b.x)) | abs(var_1.a.wyw)));
    let var_2 = Struct_2(vec3<u32>(~var_1.c, max(114294u, u_input.a) << ((28462u | (var_0.b.x << (4294967295u % 32u))) % 32u), _wgslsmith_div_u32(max(~56932u, 20631u), 69776u)), vec4<u32>(firstLeadingBit(var_1.c), min(var_0.b.x, 52356u), ~var_0.b.x, _wgslsmith_add_u32(~(var_0.c.c >> (95872u % 32u)), var_0.b.x)), func_2(select(var_1.b, !(!var_0.c.b), any(vec3<bool>(var_1.b.x, var_0.c.b.x, false)))));
    var_0 = Struct_2(var_2.b.yzx, vec4<u32>(_wgslsmith_sub_u32(1u >> (~var_0.b.x % 32u), ~var_1.c >> (select(4294967295u, 4294967295u, var_1.b.x) % 32u)), _wgslsmith_div_u32(var_2.b.x, ~11511u), firstTrailingBit(~var_2.b.x) << (var_0.c.c % 32u), ~var_0.b.x), var_0.c);
    let var_3 = var_2;
    var_1 = func_2(var_3.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, var_0.a.xx, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f - _wgslsmith_f_op_f32(-100f * 109f)))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(73391i, -45059i, -2147483647i, -4177i)) & -var_3.c.a, firstLeadingBit(vec4<i32>(var_1.a.x, -39677i, -27810i, 1i))), var_1.a), func_2(select(vec2<bool>(true, !var_0.c.b.x), vec2<bool>(var_0.c.b.x, all(vec3<bool>(true, var_3.c.b.x, var_3.c.b.x))), any(select(vec4<bool>(var_0.c.b.x, true, var_1.b.x, false), vec4<bool>(true, var_1.b.x, var_1.b.x, false), true)))).d.xx);
}

