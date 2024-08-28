struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<f32>(-1000f, -464f, 572f), -33265i, -1i, vec2<u32>(9447u, 11673u)), Struct_1(vec3<f32>(-1272f, -1000f, 179f), 33764i, -16499i, vec2<u32>(4294967295u, 49194u)), Struct_1(vec3<f32>(-870f, 894f, 522f), 8972i, 2147483647i, vec2<u32>(15217u, 5825u)), Struct_1(vec3<f32>(-1254f, 1000f, 496f), 4513i, 2147483647i, vec2<u32>(1u, 16243u)), Struct_1(vec3<f32>(1000f, 120f, 1867f), 2147483647i, -8923i, vec2<u32>(0u, 62667u)), Struct_1(vec3<f32>(-342f, 534f, 1000f), 15627i, 12760i, vec2<u32>(627u, 4294967295u)), Struct_1(vec3<f32>(727f, 2015f, -546f), 15857i, 31459i, vec2<u32>(43043u, 0u)));

var<private> global1: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(-1i, 1i, -21343i, 1i), vec4<i32>(38866i, 0i, -34491i, -31403i), vec4<i32>(i32(-2147483648), 1i, -46749i, 0i), vec4<i32>(-1i, -1i, -55252i, -5578i), vec4<i32>(19013i, -53718i, 0i, -13542i), vec4<i32>(2147483647i, 1i, -24517i, 12537i), vec4<i32>(2147483647i, -9238i, -1i, 1556i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, i32(-2147483648)), vec4<i32>(37149i, 2147483647i, 52257i, 1i), vec4<i32>(13656i, -1i, 0i, i32(-2147483648)));

var<private> global2: array<vec3<u32>, 19> = array<vec3<u32>, 19>(vec3<u32>(35939u, 1u, 1u), vec3<u32>(4294967295u, 1u, 72634u), vec3<u32>(23924u, 4294967295u, 40042u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 40842u, 0u), vec3<u32>(1u, 11672u, 19355u), vec3<u32>(14775u, 48015u, 1u), vec3<u32>(1u, 21749u, 1u), vec3<u32>(4294967295u, 4294967295u, 7749u), vec3<u32>(4294967295u, 22302u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 14509u), vec3<u32>(31629u, 1u, 2662u), vec3<u32>(46000u, 1u, 27378u), vec3<u32>(86166u, 39908u, 22942u), vec3<u32>(24796u, 13064u, 48166u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 42921u, 4294967295u), vec3<u32>(0u, 1u, 72206u), vec3<u32>(1u, 4294967295u, 27273u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    global2 = array<vec3<u32>, 19>();
    let var_0 = Struct_2(-firstLeadingBit(vec4<i32>(-8869i, 0i, firstTrailingBit(0i), 41717i)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(285f, _wgslsmith_f_op_f32(sign(-162f)), _wgslsmith_f_op_f32(-1268f + -524f))), firstLeadingBit(_wgslsmith_clamp_i32(-1835i, 1i, -3201i) >> (1u % 32u)), -2147483647i, reverseBits(firstLeadingBit(u_input.a.xy))), vec3<u32>(~abs(~22861u), select(_wgslsmith_sub_u32(~u_input.b, abs(u_input.b)), firstLeadingBit(max(13869u, u_input.c)), true), 49980u), 545f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, 2381f, -611f, -919f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-710f, -299f, -1043f, 1719f))))))));
    global1 = array<vec4<i32>, 10>();
    let var_1 = var_0.a.x;
    return _wgslsmith_clamp_i32((i32(-1i) * -1i) | ~(var_1 ^ -37069i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, abs(var_1), var_1 << (0u % 32u)), -vec3<i32>(var_1, 2147483647i, var_1)), abs(var_1)) & var_1;
}

fn func_2() -> u32 {
    global0 = array<Struct_1, 7>();
    let var_0 = Struct_1(vec3<f32>(1f, 1f, 1f), 2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 2147483647i, 1i), vec4<i32>(51105i, -2147483647i, 51123i, -44399i)) | -41705i, ~(~(-2147483647i))), select(func_3(), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 1932i, -5070i), vec4<i32>(-2147483647i, -31405i, 5995i, 0i)), ~1i), true)), _wgslsmith_mod_vec2_u32(u_input.a.zz, ~select(u_input.a.xx, ~vec2<u32>(u_input.c, 0u), true)));
    global0 = array<Struct_1, 7>();
    var var_1 = vec4<f32>(-257f, _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-199f)), _wgslsmith_f_op_f32(f32(-1f) * -1483f)))))), var_0.a.x, -896f);
    var var_2 = min(_wgslsmith_add_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, var_0.b, 2147483647i), vec3<i32>(var_0.b, 1i, var_0.c), vec3<i32>(var_0.c, var_0.b, var_0.b)), max(vec3<i32>(2147483647i, var_0.b, 19548i), vec3<i32>(-2147483647i, var_0.c, -66359i)), vec3<bool>(true, true, true)) & select(reverseBits(vec3<i32>(43824i, 2147483647i, var_0.b)), -vec3<i32>(1i, var_0.b, -751i), vec3<bool>(true, true, true)), min(-(~vec3<i32>(-13510i, 5958i, -8948i)), countOneBits(vec3<i32>(0i, 1i, 2147483647i)) & vec3<i32>(2147483647i, var_0.c, -2147483647i))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_0.b, var_0.b), var_0.b, var_0.b), vec3<i32>(-_wgslsmith_sub_i32(0i, -12542i), var_0.b, -10565i)));
    return ~var_0.d.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_add_u32(~u_input.a.x, ~37222u)), func_2()), 7u)];
    global1 = array<vec4<i32>, 10>();
    var var_1 = Struct_3(select(var_0.b, ~var_0.c, !((-1i ^ var_0.c) > ~(-2147483647i))), var_0.c >> (~var_0.d.x % 32u), ~countOneBits(1u), select(!vec2<bool>(false, all(vec2<bool>(arg_2.x, arg_2.x))), !(!arg_2.zx), select(vec2<bool>(false, any(arg_2.zz)), !arg_2.yx, vec2<bool>(true, true))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(select(_wgslsmith_mod_u32(var_1.c, 38070u), var_1.c ^ var_0.d.x, all(vec4<bool>(false, true, arg_2.x, true))), ~4294967295u, 0u), 0u, ~var_0.d.x), 7u)];
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(202f, arg_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(var_0.a.x, 1000f)), -1054f)), min(var_0.b, _wgslsmith_mult_i32(var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, var_0.b), vec2<i32>(0i, -1i)))) & -(~(~var_0.c)), -30144i, vec2<u32>(~(~var_1.c), firstTrailingBit(0u) & u_input.b));
    return Struct_2(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(0u, 7230u)), 10u)], global0[_wgslsmith_index_u32(15898u, 7u)], max(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.d.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(24793u, var_0.d.x), ~var_3.d.x)), 19u)], ~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.c, var_1.c, var_2.d.x), vec3<u32>(var_1.c, 4294967295u, var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1710f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1115f)))) - 1f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, 450f, arg_0.x, var_2.a.x) * arg_0)))), _wgslsmith_f_op_vec4_f32(arg_0 - arg_0))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, false)), vec3<bool>(false, all(vec4<bool>(false, false, false, false)), false), vec3<bool>(true, true, any(vec4<bool>(false, true, true, false)))));
    var var_1 = arg_1.d.d;
    return arg_1.b.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1136f, 846f), _wgslsmith_f_op_f32(f32(-1f) * -1265f), _wgslsmith_f_op_f32(1424f + 789f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-748f, _wgslsmith_f_op_f32(220f - -1528f), _wgslsmith_f_op_f32(floor(1252f))))), abs(max(firstLeadingBit(max(-43789i, 51793i)), reverseBits(4212i))), 2147483647i, u_input.a.xx);
    var var_1 = Struct_3(-37606i, max(~firstTrailingBit(1i), _wgslsmith_div_i32(abs(reverseBits(-2147483647i)), -45793i)), _wgslsmith_clamp_u32(var_0.d.x, 4294967295u, ~_wgslsmith_dot_vec2_u32(~u_input.a.xz, select(u_input.a.zz, var_0.d, vec2<bool>(true, false)))), select(vec2<bool>(!all(vec3<bool>(false, true, false)), true), vec2<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true))), false), vec2<bool>(all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(680f - 1000f) <= var_0.a.x)));
    let var_2 = countOneBits(_wgslsmith_div_vec2_i32(-(~vec2<i32>(var_1.a, var_1.a)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.a, var_0.b), vec3<i32>(var_0.c, var_1.b, var_0.b)), _wgslsmith_div_i32(19573i, var_1.b)))) & (func_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.x, 1220f))), Struct_4(Struct_1(vec3<f32>(-617f, var_0.a.x, -920f), var_1.b, var_1.b, vec2<u32>(u_input.a.x, 124495u)), func_1(vec4<f32>(var_0.a.x, -1965f, 484f, 1464f), var_0.a.xy, vec3<bool>(false, var_1.d.x, false)), _wgslsmith_f_op_vec3_f32(-var_0.a), Struct_2(vec4<i32>(-2147483647i, -38775i, 2147483647i, 0i), global0[_wgslsmith_index_u32(66543u, 7u)], u_input.a, -1545f, vec4<f32>(2133f, 528f, 1152f, var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))) << (abs(_wgslsmith_div_vec2_u32(var_0.d, u_input.a.zx) | var_0.d) % vec2<u32>(32u)));
    var var_3 = ~(~(vec3<i32>(var_1.b, ~var_2.x, 0i) << (max(firstTrailingBit(global2[_wgslsmith_index_u32(var_0.d.x, 19u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_1.c, 4294967295u), u_input.a, global2[_wgslsmith_index_u32(u_input.b, 19u)])) % vec3<u32>(32u))));
    let var_4 = _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, select(var_1.c, 0u, true), _wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.yx), var_1.c >> (u_input.b % 32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 23493u, 15731u, 45286u), vec4<u32>(var_1.c, 39743u, 19247u, 4294967295u))), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(93904u, abs(5699u), var_1.c, var_1.c)), ~firstTrailingBit(vec4<u32>(1u, 81666u, 1u, 0u)) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, u_input.a.x, 4294967295u, 76353u), vec4<u32>(13814u, 4294967295u, 21555u, 4294967295u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1231f, var_0.a.x, var_0.a.x, 118f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-521f, var_0.a.x, var_0.a.x, 1728f), vec4<f32>(var_0.a.x, 301f, var_0.a.x, var_0.a.x))))))));
}

