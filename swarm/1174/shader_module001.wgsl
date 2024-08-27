struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    var var_0 = arg_0.a.c.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_1.e.yx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0.a.e.zz, _wgslsmith_f_op_vec2_f32(arg_0.a.e.zx * arg_1.e.yz))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1721f, arg_0.a.e.x), arg_1.e.xx, true)))));
    var var_2 = u_input.a.x ^ ~firstTrailingBit(_wgslsmith_mod_u32(~u_input.a.x, ~1u));
    var var_3 = Struct_4(Struct_1(arg_0.c, all(vec3<bool>(true, false, true)), !(!select(vec2<bool>(false, false), arg_0.a.c, false)), countOneBits(1i & ~arg_0.a.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.e - arg_1.e)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.e * vec3<f32>(arg_1.a, var_1.x, var_1.x)), vec3<f32>(212f, -159f, var_1.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-809f * var_1.x) + arg_1.e.x)), arg_0.a.b, arg_1.c, _wgslsmith_clamp_i32(arg_2.x ^ abs(1i), arg_1.d, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.d, arg_2.x, arg_0.a.d, 36869i), select(vec4<i32>(14534i, arg_0.a.d, -76318i, arg_0.a.d), vec4<i32>(arg_2.x, 9149i, 2147483647i, 42658i), vec4<bool>(false, arg_3, true, arg_0.a.b)))), vec3<f32>(2666f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-173f * arg_1.e.x), -924f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-774f)) * -1228f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1394f)))), false, vec2<bool>(select(false, !arg_1.c.x, arg_2.x == arg_2.x), 34307i == arg_2.x), ~reverseBits(arg_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.e))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1, vec2<f32>(-785f, 759f), vec2<bool>(arg_3, arg_0.a.b))) + vec2<f32>(arg_0.a.a, arg_0.c))))), u_input.a.x & u_input.a.x);
    let var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, var_1.x, 190f, -323f) * vec4<f32>(733f, var_1.x, var_3.b.a, -1060f)))) - vec4<f32>(_wgslsmith_f_op_f32(arg_1.e.x - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -995f), 174f, var_3.c.e.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_4.a.x))))));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(1330f + arg_0.a.x), _wgslsmith_f_op_f32(select(arg_0.a.x, arg_0.a.x, false)))))) + arg_0.a);
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(-306f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-529f, false, vec2<bool>(true, false), -976i, vec3<f32>(var_0.x, arg_0.a.x, arg_0.a.x)), 0i, 735f), Struct_1(var_0.x, false, vec2<bool>(false, false), -80941i, var_0.wwz), vec2<i32>(-27442i, 47109i), true))))), all(vec3<bool>(true, any(vec4<bool>(true, true, false, false)), true)) && false, vec2<bool>(true, true), ~firstLeadingBit(_wgslsmith_clamp_i32(1i, abs(-2147483647i), ~(-1i))), vec3<f32>(arg_0.a.x, -336f, 902f));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -600f), true, vec2<bool>(!any(vec3<bool>(true, true, true)), false), var_1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a.xxy, vec3<f32>(510f, 809f, 493f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -233f, 284f) + var_0.yxx)))));
    let var_3 = arg_0;
    var var_4 = var_2;
    return var_1.a;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = arg_1.b;
    var var_1 = arg_0;
    var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = firstLeadingBit(u_input.a.yxz);
    return Struct_2(arg_1.d, arg_1.c, _wgslsmith_f_op_f32(986f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.x + arg_0.a.x)))))));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-836f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(arg_0, func_4(Struct_5(vec4<f32>(arg_0.c, 332f, arg_0.c, arg_0.c)), Struct_3(-118f, vec3<bool>(arg_0.a.b, false, arg_0.a.c.x), 18052i, Struct_1(-832f, arg_0.a.c.x, vec2<bool>(arg_0.a.c.x, true), arg_0.b, arg_0.a.e), arg_0.b), vec4<f32>(arg_0.c, 1000f, -1115f, -1549f)).a, vec2<i32>(arg_0.b, arg_0.a.d) >> (vec2<u32>(49689u, 11490u) % vec2<u32>(32u)), false | arg_0.a.b)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.c)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.a.e.x, 252f))))))));
    var var_1 = reverseBits(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4557u, u_input.a.x, 4294967295u), firstTrailingBit(u_input.a))));
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-var_0));
    var_2 = Struct_5(var_2.a);
    var var_3 = 1u;
    return arg_0.a;
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_2(func_5(func_4(Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1966f, 2707f, 182f, -253f))), Struct_3(_wgslsmith_f_op_f32(func_2(Struct_5(vec4<f32>(-254f, 653f, 1190f, -611f)), vec2<u32>(u_input.a.x, 18370u))), vec3<bool>(true, true, true), max(-2193i, -7702i), Struct_1(-354f, true, vec2<bool>(true, true), -16968i, vec3<f32>(702f, 826f, -429f)), -2147483647i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, -304f, 538f, -1189f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, 1265f, 365f, 228f)), vec4<bool>(true, true, true, true))))), -9915i, func_4(Struct_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, 972f, 794f, 660f))))), Struct_3(472f, vec3<bool>(any(vec4<bool>(false, true, false, true)), true, any(vec2<bool>(true, false))), 1i, Struct_1(_wgslsmith_f_op_f32(161f * 582f), all(vec2<bool>(false, false)), vec2<bool>(true, true), i32(-1i) * -2147483647i, vec3<f32>(-1131f, 2150f, 1335f)), -27296i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), 703f, _wgslsmith_f_op_f32(2110f + 1000f), 1588f)))).c);
    let var_1 = var_0.c;
    let var_2 = var_0.b << (firstLeadingBit(arg_0.x) % 32u);
    let var_3 = arg_0.xx;
    let var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, var_1, var_0.a.e.x, var_0.c))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 2058f, -1000f, var_0.c)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, var_1, -1834f, var_1), vec4<f32>(var_1, 1336f, var_0.a.e.x, -285f)))))));
    return all(!select(!vec3<bool>(false, var_0.a.c.x, false), !(!vec3<bool>(var_0.a.c.x, var_0.a.b, false)), func_5(Struct_2(var_0.a, var_0.b, 157f)).b));
}

fn func_6(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_5, arg_3: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_vec3_u32(reverseBits(u_input.a.zww) >> (vec3<u32>(firstLeadingBit(4294967295u & arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_sub_u32(~1u, ~1u)) % vec3<u32>(32u)), vec3<u32>(22867u, 9868u, arg_1.x));
    var var_1 = func_4(arg_2, Struct_3(-1484f, !vec3<bool>(true, all(arg_3.a.c), true), 2147483647i | min(arg_3.b ^ 13454i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_3.b), vec2<i32>(0i, 1i))), func_5(Struct_2(Struct_1(arg_3.a.e.x, arg_0, vec2<bool>(arg_3.a.b, arg_3.a.c.x), arg_3.a.d, vec3<f32>(1097f, 461f, -953f)), -2147483647i, 1960f)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, arg_3.b), arg_3.a.d, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b, arg_3.b, arg_3.a.d), vec3<i32>(2147483647i, arg_3.a.d, arg_3.a.d))), ~(vec3<i32>(-1i, 7531i, arg_3.b) >> (vec3<u32>(4294967295u, 0u, 51951u) % vec3<u32>(32u))))), _wgslsmith_f_op_vec4_f32(arg_2.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, arg_3.c, arg_3.c, -1636f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(679f, arg_3.a.e.x, -795f, 1617f))))).a.d;
    var var_2 = _wgslsmith_add_vec3_u32(u_input.a.zzx, arg_1.zwy);
    var_1 = countOneBits(_wgslsmith_dot_vec3_i32((firstTrailingBit(vec3<i32>(-1i, arg_3.b, arg_3.b)) << (firstLeadingBit(u_input.a.wwy) % vec3<u32>(32u))) >> (select(vec3<u32>(var_0.x, var_2.x, u_input.a.x), arg_1.xyw & u_input.a.zzw, true) % vec3<u32>(32u)), ~select(vec3<i32>(arg_3.b, -2147483647i, 0i), vec3<i32>(arg_3.a.d, -26346i, arg_3.b), arg_0) >> (u_input.a.wwx % vec3<u32>(32u))));
    var var_3 = !(!vec4<bool>(all(vec4<bool>(arg_0, false, true, false)), firstLeadingBit(-22976i) != firstLeadingBit(arg_3.b), arg_2.a.x < 351f, arg_3.a.b && (4294967295u > var_2.x)));
    return StorageBuffer(arg_1.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(max(arg_1.x, arg_1.x), u_input.a.x) | 10304u, ~arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))) - 969f), _wgslsmith_div_vec3_i32(vec3<i32>(~arg_3.a.d, arg_3.b, arg_3.b), select(vec3<i32>(0i, -1i, arg_3.b), vec3<i32>(-30821i, arg_3.b, 2147483647i), !var_3.xxz)) | max(firstLeadingBit(vec3<i32>(arg_3.b, -2147483647i, arg_3.a.d)), -vec3<i32>(arg_3.a.d, -2147483647i, arg_3.a.d)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(0u, var_0.x), countOneBits(24037u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 45235u), ~var_0.zy)) << (select(vec2<u32>(var_2.x, 4294967295u), u_input.a.xw, arg_3.a.c) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_1(vec4<u32>(u_input.a.x, ~(~u_input.a.x), min(~u_input.a.x, u_input.a.x), 66942u)), _wgslsmith_div_vec4_u32(~(~select(vec4<u32>(1540u, u_input.a.x, 41139u, u_input.a.x), u_input.a, vec4<bool>(false, false, false, true))), abs(firstTrailingBit(vec4<u32>(1u, 53183u, u_input.a.x, 35579u)))), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1215f, 1481f, -2067f, 729f))))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1986f * 222f)), !any(vec3<bool>(false, false, false)), func_5(Struct_2(Struct_1(1518f, true, vec2<bool>(true, true), 1i, vec3<f32>(-771f, -1000f, -257f)), -1i, 390f)).c, -_wgslsmith_dot_vec2_i32(vec2<i32>(-25288i, -43454i), vec2<i32>(2147483647i, 0i)), vec3<f32>(-139f, _wgslsmith_f_op_f32(598f * -1712f), -1169f)), max(_wgslsmith_mult_i32(i32(-1i) * -1i, i32(-1i) * -4265i), -(i32(-1i) * -37737i)), 1602f));
}

