struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<i32>(11799i, 0i), vec3<u32>(54844u, 16797u, 26723u), -123f, vec2<i32>(2147483647i, -45768i)), Struct_1(vec2<i32>(185i, 6810i), vec3<u32>(0u, 79939u, 1u), 544f, vec2<i32>(0i, 3216i)), Struct_1(vec2<i32>(0i, -26283i), vec3<u32>(1u, 28152u, 0u), -1538f, vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<i32>(33641i, 56864i), vec3<u32>(1u, 4294967295u, 1u), 607f, vec2<i32>(2147483647i, 37250i)), Struct_1(vec2<i32>(-20687i, 1i), vec3<u32>(1u, 1u, 4294967295u), -365f, vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<i32>(i32(-2147483648), 23310i), vec3<u32>(1387u, 0u, 1u), 1082f, vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<i32>(0i, 1i), vec3<u32>(54539u, 4294967295u, 4294967295u), -984f, vec2<i32>(52492i, -1i)), Struct_1(vec2<i32>(-6549i, 2147483647i), vec3<u32>(37963u, 77411u, 1u), 209f, vec2<i32>(-27016i, -24099i)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<u32>(46932u, 70004u, 23931u), -164f, vec2<i32>(24984i, 30688i)), Struct_1(vec2<i32>(-1i, 32336i), vec3<u32>(0u, 53972u, 12125u), 488f, vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(13398i, 1i), vec3<u32>(4294967295u, 1u, 34965u), -878f, vec2<i32>(42113i, 16153i)), Struct_1(vec2<i32>(24266i, -27109i), vec3<u32>(52955u, 82965u, 0u), 339f, vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<i32>(2147483647i, 32647i), vec3<u32>(9153u, 0u, 63284u), -110f, vec2<i32>(20483i, i32(-2147483648))), Struct_1(vec2<i32>(0i, 27709i), vec3<u32>(50702u, 56865u, 90553u), 542f, vec2<i32>(1i, -24453i)), Struct_1(vec2<i32>(1i, 0i), vec3<u32>(58816u, 5860u, 1u), -489f, vec2<i32>(64908i, 5395i)), Struct_1(vec2<i32>(71322i, 0i), vec3<u32>(0u, 49615u, 46255u), 483f, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(33481i, i32(-2147483648)), vec3<u32>(0u, 33457u, 0u), 1859f, vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<i32>(-14282i, 1233i), vec3<u32>(0u, 4294967295u, 0u), 695f, vec2<i32>(1i, 0i)), Struct_1(vec2<i32>(-1i, 11213i), vec3<u32>(43840u, 1u, 1u), 1196f, vec2<i32>(-1i, -56488i)), Struct_1(vec2<i32>(1i, 48960i), vec3<u32>(101675u, 4294967295u, 6672u), -493f, vec2<i32>(i32(-2147483648), -20037i)), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec3<u32>(1u, 27760u, 4294967295u), -2331f, vec2<i32>(32540i, -38235i)), Struct_1(vec2<i32>(2147483647i, 4750i), vec3<u32>(4294967295u, 1u, 47324u), 412f, vec2<i32>(2147483647i, 21371i)), Struct_1(vec2<i32>(-26447i, 19522i), vec3<u32>(63688u, 56636u, 67456u), 189f, vec2<i32>(32362i, 42637i)), Struct_1(vec2<i32>(4931i, 1i), vec3<u32>(4294967295u, 1u, 1u), 626f, vec2<i32>(-33459i, -13774i)));

var<private> global3: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(2147483647i, 1i, -38591i, 10784i), vec4<i32>(-1i, -31437i, -1i, 0i), vec4<i32>(0i, 13326i, -8965i, i32(-2147483648)), vec4<i32>(-22116i, i32(-2147483648), -47965i, -58817i), vec4<i32>(48072i, -26469i, 2147483647i, 24072i), vec4<i32>(0i, 1i, 2147483647i, 1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<u32>) -> vec2<u32> {
    global3 = array<vec4<i32>, 6>();
    global1 = arg_0;
    global3 = array<vec4<i32>, 6>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2442f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-889f, _wgslsmith_f_op_f32(f32(-1f) * -1955f))));
    var var_1 = 0u;
    return ~vec2<u32>(_wgslsmith_clamp_u32(0u, ~42858u, _wgslsmith_div_u32(56860u, 1u)), arg_0.x) >> (arg_0 % vec2<u32>(32u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = Struct_3(abs(u_input.a) | abs(min(vec4<i32>(1i, arg_3.x, arg_1.b, -2147483647i), vec4<i32>(arg_1.b, arg_3.x, -52881i, -13996i))), -21540i, arg_1.c);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c.c - arg_1.c.c)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-arg_1.c.a))), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), var_0.c.a)), Struct_1(arg_1.a.xx, _wgslsmith_div_vec3_u32(arg_2.zwy, vec3<u32>(global1.x, ~var_0.c.b.b.x, func_2(vec2<u32>(var_0.c.b.b.x, 4294967295u)).x)), 108f, select(u_input.a.yy, vec2<i32>(i32(-1i) * -6065i, firstLeadingBit(1i)), true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-666f, var_0.c.b.c)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.x)), var_0.c.c.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.c) + _wgslsmith_div_f32(1933f, 1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(623f - var_1.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-601f)))))));
    let var_3 = -1i;
    global0 = all(!vec3<bool>(true, any(vec3<bool>(true, true, true)), true)) && false;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.c.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.c.b.c + 495f), _wgslsmith_f_op_f32(f32(-1f) * -1727f)))) - _wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(323f + arg_1.c.a.x)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    global1 = ~func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(42203u, reverseBits(u_input.b)), ~(~vec2<u32>(4294967295u, 4294967295u))));
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1257f * arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(-arg_0.x)), global2[_wgslsmith_index_u32(global1.x, 24u)], arg_0.xz);
    var var_1 = true;
    let var_2 = vec3<bool>(true, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true)), ~15336u >= (0u ^ (_wgslsmith_clamp_u32(52861u, u_input.b, 64625u) << (global1.x % 32u))));
    var var_3 = Struct_4(Struct_3(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.a.x, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, var_0.b.d.x, 2147483647i, -2147483647i))) & global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec3_u32(var_0.b.b, var_0.b.b)), 6u)], u_input.a.x, Struct_2(arg_0.zx, var_0.b, var_0.c)), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.x, arg_0.x), vec2<f32>(var_0.b.c, -1000f))), vec2<f32>(arg_0.x, -365f))), Struct_1(~var_0.b.d, ~(vec3<u32>(u_input.c, u_input.c, u_input.c) >> (var_0.b.b % vec3<u32>(32u))), _wgslsmith_f_op_f32(func_3(~vec2<i32>(14714i, u_input.a.x), Struct_3(vec4<i32>(16756i, var_0.b.a.x, 0i, 1i), 2147483647i, Struct_2(vec2<f32>(var_0.b.c, var_0.a.x), Struct_1(u_input.a.xx, var_0.b.b, var_0.c.x, var_0.b.d), arg_0.yz)), ~vec4<u32>(22558u, global1.x, 1u, 37387u), reverseBits(vec4<i32>(var_0.b.d.x, -7143i, u_input.a.x, 821i)))), firstLeadingBit(vec2<i32>(var_0.b.d.x, var_0.b.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.x, arg_0.x))), vec2<f32>(arg_0.x, var_0.a.x)))), select(vec4<bool>((var_0.b.a.x >> (global1.x % 32u)) < _wgslsmith_add_i32(u_input.a.x, var_0.b.d.x), var_2.x, !var_2.x, all(select(vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))), !vec4<bool>(true, var_0.a.x <= -917f, true, false), true), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a)), arg_0.yx), var_0.b, vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(max(-1594f, 104f)))));
    return var_3.a.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = true;
    global3 = array<vec4<i32>, 6>();
    var var_0 = vec2<i32>(0i, u_input.a.x);
    let var_1 = true;
    let var_2 = Struct_4(Struct_3(-vec4<i32>(-arg_0.c.b.a.x, u_input.a.x, 61490i, reverseBits(0i)), 62814i, func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, -647f, 1041f)))))), arg_0.c, select(select(select(select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, false, false), vec4<bool>(false, var_1, var_1, false)), vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_1, true, true, var_1)), !(!vec4<bool>(true, var_1, var_1, true)), vec4<bool>(false, !var_1, all(vec3<bool>(var_1, false, false)), var_1)), !(!vec4<bool>(true, false, var_1, true)), vec4<bool>((arg_0.a.x >> (19082u % 32u)) > 17553i, var_1, !all(vec3<bool>(var_1, false, var_1)), true)), arg_0.c);
    return select(arg_0.b, arg_2.d.x, !(!any(var_2.c.xyx))) < max(arg_1.d.x, ~abs(var_2.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(9671u, u_input.b);
    var var_0 = -2659f;
    var var_1 = (-68813i & u_input.a.x) != _wgslsmith_clamp_i32(~(-1356i), _wgslsmith_mod_i32(u_input.a.x, 4280i ^ u_input.a.x), -(~u_input.a.x) | u_input.a.x);
    let var_2 = func_4(Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(42973u, u_input.b), ~vec2<u32>(u_input.c, global1.x)), 6u)] >> (vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 24540u, global1.x, 1u), vec4<u32>(4294967295u, 1u, u_input.c, 32290u)), 0u, ~8885u) % vec4<u32>(32u)), _wgslsmith_dot_vec3_i32(u_input.a.zzy, _wgslsmith_sub_vec3_i32(~u_input.a.ywz, -u_input.a.wzy)), func_1(vec3<f32>(_wgslsmith_f_op_f32(-645f * -509f), -1599f, -253f))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(60372u, max(u_input.b, ~countOneBits(22191u))), 24u)], func_1(vec3<f32>(_wgslsmith_f_op_f32(-func_1(vec3<f32>(197f, -1569f, -435f)).b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-621f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f) + _wgslsmith_f_op_f32(f32(-1f) * -353f)))).b);
    global1 = vec2<u32>(select(~(~4294967295u), abs(u_input.b) | 0u, (27862u & u_input.b) <= u_input.c) >> ((global1.x | firstLeadingBit(_wgslsmith_add_u32(0u, global1.x))) % 32u), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(23369i, vec2<i32>(~(-func_1(vec3<f32>(1654f, 2115f, 555f)).b.a.x), i32(-1i) * -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, _wgslsmith_sub_i32(-3187i, u_input.a.x), u_input.a.x) & vec4<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.wzx, vec3<i32>(u_input.a.x, u_input.a.x, 2593i)), -15936i, select(u_input.a.x, 1i, true)), u_input.a));
}

