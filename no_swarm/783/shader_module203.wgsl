struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(42349i, -11088i, 2147483647i, 0i), vec4<i32>(42781i, 11138i, -3880i, i32(-2147483648)), vec4<i32>(-1i, 41567i, -1i, 47152i), vec4<i32>(-32820i, 8025i, 2007i, 0i), vec4<i32>(1i, 17305i, 1i, -10794i), vec4<i32>(-35091i, -534i, 71558i, i32(-2147483648)), vec4<i32>(0i, 0i, -1084i, -1i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -29934i), vec4<i32>(2147483647i, -41152i, i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 21426i, 2718i, -12126i), vec4<i32>(-18919i, 0i, 2147483647i, 0i), vec4<i32>(-63305i, -51311i, 2147483647i, -1i), vec4<i32>(-1i, -19543i, 2147483647i, -1i), vec4<i32>(14795i, i32(-2147483648), -35952i, 0i), vec4<i32>(-1i, 11507i, -1i, 1i), vec4<i32>(-45267i, -22956i, -887i, -1i), vec4<i32>(-1995i, -1i, i32(-2147483648), 6335i), vec4<i32>(2147483647i, 12173i, 2147483647i, i32(-2147483648)), vec4<i32>(-1i, 1i, 19534i, -43105i), vec4<i32>(-51318i, 0i, -5228i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(-33599i, -38597i, 0i, -2161i), vec4<i32>(-536i, -38378i, 11815i, 7764i), vec4<i32>(53630i, -38935i, -58251i, -1i), vec4<i32>(-27246i, 39490i, 20297i, -27254i), vec4<i32>(25604i, i32(-2147483648), 0i, 2147483647i), vec4<i32>(-39768i, 0i, 2147483647i, 2073i), vec4<i32>(16589i, 1i, 0i, -1i));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<i32>(-1i, i32(-2147483648), 9031i, -43424i), vec4<f32>(-181f, 748f, 417f, -265f), vec4<u32>(3248u, 0u, 1u, 0u), vec4<f32>(1464f, -159f, 572f, -240f)), Struct_1(vec4<i32>(-36955i, -28219i, -55495i, 4784i), vec4<f32>(410f, -1287f, -813f, 720f), vec4<u32>(46673u, 0u, 1u, 27698u), vec4<f32>(-105f, -561f, -1144f, 2127f)), Struct_1(vec4<i32>(0i, 27975i, 47195i, 0i), vec4<f32>(219f, 965f, -100f, 1148f), vec4<u32>(1u, 44333u, 6078u, 8760u), vec4<f32>(1000f, -502f, 464f, 1565f)), Struct_1(vec4<i32>(2147483647i, -15823i, -32879i, 0i), vec4<f32>(1000f, 273f, 158f, -251f), vec4<u32>(17889u, 22316u, 76341u, 4294967295u), vec4<f32>(737f, 424f, 498f, -1356f)), Struct_1(vec4<i32>(11836i, 0i, -20387i, 21499i), vec4<f32>(211f, -1000f, 1000f, -1162f), vec4<u32>(23957u, 1u, 34417u, 29975u), vec4<f32>(-683f, 109f, 761f, 2172f)), Struct_1(vec4<i32>(2366i, 5011i, 24233i, 2147483647i), vec4<f32>(726f, 1256f, 558f, 751f), vec4<u32>(29039u, 43965u, 6361u, 43277u), vec4<f32>(1020f, -268f, -267f, -1109f)), Struct_1(vec4<i32>(10188i, 1i, 9846i, 0i), vec4<f32>(-1482f, 311f, -167f, -1062f), vec4<u32>(27977u, 51918u, 4294967295u, 4294967295u), vec4<f32>(-601f, 642f, 1223f, -561f)), Struct_1(vec4<i32>(-16228i, 1i, -18053i, -1i), vec4<f32>(1108f, -1186f, -708f, 232f), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), vec4<f32>(186f, 507f, -328f, -157f)), Struct_1(vec4<i32>(2147483647i, 4321i, -42999i, 10961i), vec4<f32>(-1334f, -849f, -341f, 1862f), vec4<u32>(10766u, 4294967295u, 35507u, 10381u), vec4<f32>(576f, 653f, 1234f, -461f)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 2147483647i), vec4<f32>(412f, -169f, -1258f, 491f), vec4<u32>(1u, 1u, 6327u, 51919u), vec4<f32>(295f, -222f, -814f, 1031f)));

var<private> global2: array<u32, 5> = array<u32, 5>(70725u, 101957u, 44207u, 4294967295u, 4294967295u);

var<private> global3: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(84699u, 64668u), vec2<u32>(1u, 1u), vec2<u32>(47000u, 0u), vec2<u32>(1u, 40783u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(1u, 1u), vec2<u32>(1u, 42901u), vec2<u32>(0u, 1u), vec2<u32>(0u, 21905u), vec2<u32>(65753u, 4294967295u), vec2<u32>(5200u, 61331u), vec2<u32>(12662u, 22707u), vec2<u32>(118091u, 40952u), vec2<u32>(55184u, 24092u), vec2<u32>(15081u, 4471u), vec2<u32>(0u, 44929u), vec2<u32>(23757u, 4294967295u), vec2<u32>(16300u, 0u), vec2<u32>(575u, 63480u), vec2<u32>(0u, 70160u), vec2<u32>(0u, 42520u), vec2<u32>(11350u, 52853u));

var<private> global4: array<u32, 11> = array<u32, 11>(23525u, 4294967295u, 4294967295u, 64517u, 4294967295u, 4294967295u, 4294967295u, 1u, 4294967295u, 43373u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = vec4<u32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7096u, 5u)], 11u)], _wgslsmith_dot_vec3_u32(min(~_wgslsmith_div_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(76290u, 11u)], global2[_wgslsmith_index_u32(32406u, 5u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82972u, 5u)], 11u)]), vec3<u32>(5602u, 4294967295u, global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(27821u, 11u)], 5u)])), ~min(vec3<u32>(global2[_wgslsmith_index_u32(46535u, 5u)], global2[_wgslsmith_index_u32(35463u, 5u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 11u)], 5u)]), vec3<u32>(48790u, global2[_wgslsmith_index_u32(103501u, 5u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 11u)], 5u)]))), ~(~vec3<u32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18143u, 5u)], 11u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)]) & _wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 5u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 11u)], 5u)], 1u), vec3<u32>(global2[_wgslsmith_index_u32(14811u, 5u)], 0u, 2209u), vec3<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31036u, 5u)], 11u)], 11u)], 144913u)))), min(1u, ~global2[_wgslsmith_index_u32(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3317u, 11u)], 5u)], 5u)], 1u, true), 5u)] | 23899u), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(max(27889u, countOneBits(4294967295u)) >> (1u % 32u)), 11u)], 5u)]);
    var var_1 = true;
    global2 = array<u32, 5>();
    global1 = array<Struct_1, 10>();
    let var_2 = vec2<u32>(var_0.x, global4[_wgslsmith_index_u32(1u, 11u)]);
    return vec3<bool>(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true))), true, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
}

fn func_2() -> Struct_1 {
    var var_0 = select(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-731f, 322f, 284f, -376f))))), vec3<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, select(u_input.a, u_input.a, false)), u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-962f, -848f, 274f)), vec3<f32>(-594f, 1011f, -1664f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-786f, -1163f, 729f), vec3<f32>(289f, 620f, 353f))))), abs(vec2<i32>(~u_input.a, -2147483647i))), vec3<bool>(true, true, true), vec3<bool>(false, any(vec3<bool>(func_3(vec4<f32>(346f, 1413f, 592f, -1023f), vec3<i32>(2147483647i, u_input.a, -1i), vec3<f32>(975f, 1630f, 817f), vec2<i32>(25027i, u_input.a)).x, false, true)), true));
    global1 = array<Struct_1, 10>();
    global2 = array<u32, 5>();
    var var_1 = _wgslsmith_f_op_f32(step(687f, _wgslsmith_f_op_f32(min(841f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1660f, _wgslsmith_f_op_f32(-811f + 1317f))))))));
    var var_2 = _wgslsmith_f_op_f32(max(361f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -620f) + _wgslsmith_f_op_f32(f32(-1f) * -430f))));
    return global1[_wgslsmith_index_u32(select(firstTrailingBit(0u), select(~(1u << (_wgslsmith_add_u32(global4[_wgslsmith_index_u32(78328u, 11u)], 30080u) % 32u)), 1u, var_0.x), true), 10u)];
}

fn func_1(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_div_vec3_u32(~(~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(13432u, global2[_wgslsmith_index_u32(4294967295u, 5u)], 20381u), vec3<u32>(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(49877u, 5u)], global4[_wgslsmith_index_u32(4294967295u, 11u)])), firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(55721u, 5u)], global4[_wgslsmith_index_u32(11208u, 11u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)])))), countOneBits(vec3<u32>(12749u, ~select(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21701u, 5u)], 11u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(46494u, 11u)], 5u)], arg_0), abs(_wgslsmith_mult_u32(61914u, 22172u)))));
    var var_1 = func_2();
    var var_2 = vec3<bool>(true, !(~(6876u >> (global4[_wgslsmith_index_u32(1u, 11u)] % 32u)) == abs(4294967295u)), arg_0);
    var_1 = func_2();
    let var_3 = var_2.x;
    return -43565i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global4[_wgslsmith_index_u32(42946u, 11u)], global2[_wgslsmith_index_u32(52773u, 5u)], 49711u)), ~abs(vec3<u32>(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 11u)], 5u)]))), 5u)]);
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(-12035i, u_input.a)), vec2<i32>(func_1(true, -2147483647i), -13924i)), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(-22140i, u_input.a), reverseBits(vec2<i32>(18478i, u_input.a))), vec2<i32>(1i, u_input.a))), 0i, -14924i, _wgslsmith_clamp_i32(18370i, -19607i, u_input.a));
    let var_2 = Struct_1(countOneBits(vec4<i32>(-_wgslsmith_mod_i32(0i, u_input.a), ~(~(-10774i)), u_input.a, _wgslsmith_sub_i32(-66245i, u_input.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -387f, 264f, -1698f)), reverseBits(abs(vec4<u32>(var_0, 1u, ~global2[_wgslsmith_index_u32(4294967295u, 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(21276u, 11u)], 11u)] & 57614u))), vec4<f32>(1f, 1f, 1f, 1f));
    global3 = array<vec2<u32>, 25>();
    var var_3 = countOneBits(reverseBits(~vec3<i32>(1i, i32(-1i) * -2147483647i, 9049i)));
    var var_4 = vec4<bool>(!all(vec2<bool>(true, true)), true && !(!select(false, true, true)), !(select(var_0, var_0 ^ 39049u, 1i == var_3.x) >= abs(~global4[_wgslsmith_index_u32(var_0, 11u)])), var_2.d.x < _wgslsmith_f_op_f32(f32(-1f) * -506f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(var_2.c, vec4<u32>(_wgslsmith_sub_u32(39857u, 1u), var_2.c.x, _wgslsmith_div_u32(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)], 11u)], 1u), ~54519u)) & var_2.c, -_wgslsmith_div_i32(2147483647i, -(~1i)), vec3<u32>(_wgslsmith_add_u32(13428u, var_0), _wgslsmith_mod_u32(~global4[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(abs(~global4[_wgslsmith_index_u32(73738u, 11u)]), 5u)]), ~firstLeadingBit(var_2.c.x)), abs(var_2.c | (vec4<u32>(1u, 1u, 1u, 4294967295u) | ~var_2.c)));
}

