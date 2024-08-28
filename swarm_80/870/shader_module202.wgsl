struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -61434i;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(i32(-2147483648), vec3<i32>(-11833i, 70063i, 2147483647i), vec2<i32>(-7317i, 24458i), 2132i, -470f), Struct_1(-37137i, vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, i32(-2147483648)), 73290i, -1436f), Struct_1(-30058i, vec3<i32>(44278i, 11385i, 5186i), vec2<i32>(0i, 12573i), -1i, 499f), Struct_1(46014i, vec3<i32>(-11197i, 0i, 6532i), vec2<i32>(0i, -22032i), -1i, 930f), Struct_1(1i, vec3<i32>(-1i, 14208i, 2147483647i), vec2<i32>(-1i, -46530i), -1i, 850f), Struct_1(i32(-2147483648), vec3<i32>(0i, 0i, 2147483647i), vec2<i32>(-37196i, 0i), 2848i, -752f), Struct_1(2147483647i, vec3<i32>(-30131i, -40484i, 7971i), vec2<i32>(-1i, 22740i), -33689i, -635f), Struct_1(-1i, vec3<i32>(-12121i, i32(-2147483648), 18627i), vec2<i32>(2147483647i, 1i), -1i, -834f), Struct_1(-39008i, vec3<i32>(-1i, -514i, 41896i), vec2<i32>(0i, 2147483647i), 15618i, 653f), Struct_1(-2291i, vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), -15728i, -1018f), Struct_1(0i, vec3<i32>(2147483647i, -24860i, -13508i), vec2<i32>(0i, 1i), -1i, -438f), Struct_1(0i, vec3<i32>(57291i, 29490i, -41218i), vec2<i32>(28342i, -39381i), -1i, 692f), Struct_1(1i, vec3<i32>(21160i, -24439i, i32(-2147483648)), vec2<i32>(24915i, 2147483647i), 10958i, -218f), Struct_1(-1i, vec3<i32>(1i, 10414i, -1i), vec2<i32>(-51256i, -5056i), 5569i, 627f), Struct_1(49397i, vec3<i32>(i32(-2147483648), -1i, 10029i), vec2<i32>(-29961i, 36547i), -61817i, 1293f), Struct_1(2147483647i, vec3<i32>(i32(-2147483648), 0i, 87167i), vec2<i32>(2147483647i, i32(-2147483648)), -37038i, -350f), Struct_1(-1i, vec3<i32>(14396i, -15976i, -19795i), vec2<i32>(1i, -56357i), 1i, -864f), Struct_1(i32(-2147483648), vec3<i32>(0i, 2147483647i, 25708i), vec2<i32>(1i, -1i), 76073i, 1132f), Struct_1(11981i, vec3<i32>(35403i, 2147483647i, 2147483647i), vec2<i32>(10447i, -1i), -7260i, 1198f), Struct_1(53156i, vec3<i32>(-82398i, 0i, i32(-2147483648)), vec2<i32>(-32069i, 1i), 2147483647i, 1624f), Struct_1(35074i, vec3<i32>(-10580i, -33804i, -1i), vec2<i32>(680i, 40735i), i32(-2147483648), -1785f), Struct_1(-25050i, vec3<i32>(-9454i, 1i, 8204i), vec2<i32>(33266i, 2147483647i), 72235i, -789f), Struct_1(-1i, vec3<i32>(-11433i, -62060i, 32508i), vec2<i32>(-1454i, 2147483647i), 1i, 749f), Struct_1(55157i, vec3<i32>(63816i, 7972i, -1651i), vec2<i32>(49607i, 2147483647i), -23530i, 840f), Struct_1(0i, vec3<i32>(-6496i, i32(-2147483648), -52234i), vec2<i32>(38123i, 115189i), 70295i, 2448f), Struct_1(-31511i, vec3<i32>(1i, 22066i, 56642i), vec2<i32>(-37273i, 1i), i32(-2147483648), -1282f), Struct_1(84850i, vec3<i32>(0i, 2147483647i, 18559i), vec2<i32>(13055i, -1i), -32787i, -701f), Struct_1(4802i, vec3<i32>(-61483i, -1i, 2572i), vec2<i32>(i32(-2147483648), 0i), -4042i, 618f), Struct_1(0i, vec3<i32>(0i, -12968i, 2147483647i), vec2<i32>(-11994i, -37885i), 2993i, -508f), Struct_1(0i, vec3<i32>(-1i, 29416i, 49059i), vec2<i32>(-1i, -12411i), 37484i, -321f));

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(1i, vec3<i32>(-1i, 0i, 40981i), vec2<i32>(0i, -1i), -1i, -315f), Struct_1(21726i, vec3<i32>(1i, -1i, 1i), vec2<i32>(-23053i, 2147483647i), i32(-2147483648), 271f));

var<private> global3: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = u_input.d.x;
    let var_0 = 49124i;
    var var_1 = true;
    var var_2 = vec4<i32>(2147483647i | _wgslsmith_add_i32(39692i, var_0), _wgslsmith_clamp_i32(firstTrailingBit(1i), -3602i, 1i), var_0, ~(-u_input.d.x | 1i));
    var var_3 = Struct_1(var_0, -vec3<i32>(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, -1i), u_input.d)), select(_wgslsmith_dot_vec2_i32(u_input.d, var_2.wz), var_0, true), var_0), select(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, countOneBits(-1i)), ~u_input.d), vec2<i32>(var_2.x, var_2.x), select(global3[_wgslsmith_index_u32(u_input.b, 10u)], global3[_wgslsmith_index_u32(32614u >> (~4294967295u % 32u), 10u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(32752u), ~u_input.c), 10u)])), reverseBits(38579i), _wgslsmith_div_f32(_wgslsmith_div_f32(527f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(-1205f + 720f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1512f, -1358f, true))))));
    return 11860i & countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(max(51353i, 0i), reverseBits(var_2.x)), select(min(vec2<i32>(u_input.d.x, var_0), vec2<i32>(31994i, var_2.x)), var_2.yy >> (vec2<u32>(2114u, u_input.b) % vec2<u32>(32u)), true)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = false;
    var var_1 = arg_1;
    global0 = ~(_wgslsmith_dot_vec4_i32(vec4<i32>(func_3(), i32(-1i) * -11163i, -1i, arg_1.a << (u_input.b % 32u)), vec4<i32>(2147483647i, var_1.d, ~var_1.d, firstLeadingBit(10984i))) << (u_input.c % 32u));
    global3 = array<vec2<bool>, 10>();
    let var_2 = Struct_1((-8365i & var_1.c.x) >> (68026u % 32u), vec3<i32>(-abs(-arg_1.a), abs(_wgslsmith_dot_vec3_i32(-var_1.b, -vec3<i32>(-2147483647i, 1i, arg_1.d))), u_input.d.x ^ countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 2147483647i, -11866i, var_1.c.x), vec4<i32>(-1i, arg_1.b.x, -38591i, u_input.d.x)))), firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 2147483647i ^ u_input.d.x), u_input.d)), 0i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-872f * 314f), _wgslsmith_f_op_f32(-arg_0.x))) * -464f))));
    return i32(-1i) * -5691i;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    var var_0 = !(!any(!global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2.x, 10216u, 1u), vec4<u32>(arg_1, 0u, 63585u, 0u)), 10u)]));
    let var_1 = Struct_1(-_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, -52050i), abs(reverseBits(countOneBits(select(vec3<i32>(1i, u_input.d.x, u_input.d.x), vec3<i32>(0i, -1i, u_input.d.x), false)))), ~u_input.d, min(-func_2(vec3<f32>(-930f, 1555f, 874f), global2[_wgslsmith_index_u32(5714u, 2u)]), 38300i), _wgslsmith_f_op_f32(round(509f)));
    let var_2 = !global3[_wgslsmith_index_u32(arg_2.x, 10u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(510f)), _wgslsmith_f_op_f32(1704f - -649f), var_1.e, var_1.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_1.e, -383f, var_2.x)), _wgslsmith_div_f32(285f, -856f), _wgslsmith_f_op_f32(var_1.e + -1000f), var_1.e))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.e, var_1.e, var_1.e, -846f))))));
    global3 = array<vec2<bool>, 10>();
    return _wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(15648i, -237i))), _wgslsmith_sub_vec2_i32(var_1.b.xy | -vec2<i32>(u_input.d.x, u_input.d.x), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), firstLeadingBit(var_1.c))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>) -> StorageBuffer {
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), false)), vec4<bool>(true, true, true, true), !vec4<bool>(true, any(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, false)), true)), select(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), false), select(select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true)), vec4<bool>(true, true, true, arg_1.x < arg_1.x), vec4<bool>(select(true, true, false), all(vec2<bool>(false, true)), true, true)), select(_wgslsmith_f_op_f32(-arg_1.x) >= _wgslsmith_f_op_f32(f32(-1f) * -885f), true, all(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), 10u)]))), !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false))));
    let var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = vec2<u32>(76038u, reverseBits(_wgslsmith_clamp_u32(~52678u ^ u_input.a.x, 1u, ~max(32637u, 4294967295u))));
    global3 = array<vec2<bool>, 10>();
    let var_3 = global2[_wgslsmith_index_u32(828u, 2u)];
    return StorageBuffer(-_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.x, -1i, 2147483647i), var_3.b) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_3.b.x, var_3.a), vec3<i32>(u_input.d.x, u_input.d.x, var_3.c.x)), arg_0.xzx, (vec3<i32>(var_3.d, -1i, var_3.b.x) ^ vec3<i32>(arg_0.x, -1i, 1i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 90156u, 1u), u_input.a) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(exp2(arg_1)), vec3<u32>(~104407u, abs(~countOneBits(4294967295u)), 1u), var_2.x, var_3.b & arg_0.wyx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 30>();
    var var_0 = vec4<i32>(-1i) * -(~select(~vec4<i32>(u_input.d.x, u_input.d.x, 0i, -10680i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, 0i, 2147483647i, u_input.d.x), vec4<i32>(-14547i, u_input.d.x, u_input.d.x, u_input.d.x)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false))));
    global0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(trunc(994f)) == 687f;
    global0 = var_0.x;
    let var_2 = Struct_1(u_input.d.x, var_0.wyy, u_input.d, ~var_0.x, 1f);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.d.x, -2147483647i, var_2.a, 1i)) >> (vec4<u32>(firstLeadingBit(u_input.a.x), u_input.a.x, firstTrailingBit(40415u), u_input.a.x) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_clamp_i32(1i, max(u_input.d.x, var_2.b.x), 14444i << (u_input.b % 32u)), var_2.d, 1i, func_1(firstLeadingBit(u_input.b), 1u, reverseBits(vec2<u32>(u_input.a.x, u_input.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e, var_2.e, var_2.e, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(714f, -484f, 507f, var_2.e) + vec4<f32>(-2542f, var_2.e, 813f, 875f))) * vec4<f32>(-206f, -393f, _wgslsmith_f_op_f32(floor(var_2.e)), _wgslsmith_f_op_f32(var_2.e + -612f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1140f, var_2.e, var_2.e, var_2.e) * vec4<f32>(-1869f, var_2.e, var_2.e, var_2.e)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.e, var_2.e, -759f, -284f)))))));
}

