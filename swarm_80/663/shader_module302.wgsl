struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1458f, -679f, -1670f), vec3<f32>(-762f, -1211f, 351f), vec3<f32>(716f, 881f, -740f), vec3<f32>(-753f, 671f, -867f), vec3<f32>(-383f, 631f, 894f), vec3<f32>(-454f, -855f, -729f), vec3<f32>(795f, -253f, -265f), vec3<f32>(-855f, -464f, 387f));

var<private> global1: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(2147483647i, 10413i, 20443i), vec3<i32>(50991i, 47497i, 2147483647i), vec3<i32>(-31744i, -1i, -36002i), vec3<i32>(1i, -18019i, -1i), vec3<i32>(0i, -1i, 46403i), vec3<i32>(-29039i, -639i, 3819i), vec3<i32>(31104i, -30050i, 1i), vec3<i32>(-11444i, -6716i, 10184i), vec3<i32>(42907i, 2147483647i, -13535i), vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(-1i, 0i, -1i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), -49206i, 19844i), vec3<i32>(-14642i, 29549i, -37559i), vec3<i32>(61487i, -13961i, 1i), vec3<i32>(52163i, 15087i, 0i), vec3<i32>(0i, 47295i, 40646i), vec3<i32>(0i, 0i, -12096i), vec3<i32>(i32(-2147483648), 0i, -8372i), vec3<i32>(0i, -1i, 31149i));

var<private> global2: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(1i, Struct_2(Struct_1(3394u, 4294967295u, vec4<u32>(46916u, 53593u, 26157u, 0u), 58680u), vec3<f32>(831f, 694f, 566f), false, Struct_1(1u, 4294967295u, vec4<u32>(4294967295u, 16773u, 14804u, 4294967295u), 0u), 185f), 1i, vec3<f32>(1098f, -465f, -1071f)), Struct_4(25550i, Struct_2(Struct_1(34533u, 4294967295u, vec4<u32>(0u, 58155u, 67410u, 1u), 37570u), vec3<f32>(-378f, -1021f, 545f), false, Struct_1(0u, 60342u, vec4<u32>(0u, 0u, 1u, 1u), 1u), 212f), i32(-2147483648), vec3<f32>(533f, -1430f, -136f)));

var<private> global3: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f));
    let var_1 = !(!vec2<bool>(all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, global3.x, false, true), vec4<bool>(global3.x, global3.x, false, global3.x))), ~7947u <= _wgslsmith_clamp_u32(23444u, 4294967295u, 4294967295u)));
    var var_2 = Struct_3(Struct_1(4294967295u, ~_wgslsmith_add_u32(26532u, firstLeadingBit(1u)), ~vec4<u32>(1u, 1u, ~1u, 1u), firstLeadingBit(~select(26091u, 1u, global3.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -639f)))), (select(15835i, countOneBits(u_input.a.x), false) >> (~countOneBits(74367u) % 32u)) << (~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4794u, 69238u)), ~vec2<u32>(597u, 93u)) % 32u));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0))));
    let var_4 = Struct_1(var_2.a.b, ~0u, ~var_2.a.c, 4294967295u | var_2.a.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) + 1213f) - -496f));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(~abs(~5556u), 45882u, vec4<u32>(~1u, max(1u, 0u), 1u, ~55500u >> (select(10272u, 17394u, global3.x) % 32u)), firstTrailingBit(abs(~40421u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 2764f), _wgslsmith_f_op_f32(max(568f, _wgslsmith_f_op_f32(-1203f + _wgslsmith_f_op_f32(select(-1000f, -213f, true))))), _wgslsmith_f_op_f32(max(-1413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-784f + 169f) + 1300f)))), true, Struct_1(select(~(~24057u), 0u, firstLeadingBit(u_input.a.x) >= u_input.a.x), 1u, ~vec4<u32>(1u, 1u, _wgslsmith_mult_u32(4294967295u, 0u), 15712u), max(countOneBits(select(1u, 0u, false)), _wgslsmith_dot_vec4_u32(~vec4<u32>(64401u, 41345u, 4294967295u, 24915u), vec4<u32>(1u, 1u, 1u, 1u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1323f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-760f * -249f))));
    let var_1 = Struct_3(Struct_1(var_0.a.b, firstLeadingBit(~var_0.d.a), vec4<u32>(var_0.d.b, ~41316u, ~(~var_0.d.d), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.d.c.yy, vec2<u32>(var_0.a.a, var_0.d.a)), vec2<u32>(0u, var_0.d.a))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.a.b, 1082u, 0u), vec4<u32>(1u, 13947u, var_0.d.b, 39415u)), var_0.a.c), 4294967295u)), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -621f)), u_input.a.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1535f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b, var_1.b)) - 1142f)))));
    global3 = !(!select(!(!vec3<bool>(var_0.c, var_0.c, var_0.c)), select(!vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(false, var_0.c, true), !global3.x), !(!var_0.c)));
    var var_3 = var_1;
    return var_3.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: i32) -> vec3<bool> {
    global3 = select(select(vec3<bool>(any(vec4<bool>(true, false, global3.x, true)), arg_0.c, arg_0.c), !(!vec3<bool>(arg_0.c, global3.x, arg_1)), !(!select(global3.x, arg_0.c, global3.x))), select(vec3<bool>(true, true, false), !(!vec3<bool>(true, arg_1, arg_0.c)), !vec3<bool>(arg_0.b.x != -672f, !global3.x, true)), vec3<bool>(true, !(arg_0.e < _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true));
    var var_0 = select(!(!vec2<bool>(arg_1, arg_0.c)), select(!(!vec2<bool>(global3.x, true)), vec2<bool>(firstTrailingBit(-1i) < (arg_3 ^ arg_3), true), vec2<bool>(any(vec3<bool>(true, true, true)), true)), vec2<bool>(false, all(vec4<bool>(false, !arg_1, false | global3.x, arg_1))));
    let var_1 = any(select(global3.yy, select(global3.xz, vec2<bool>(arg_1, var_0.x || true), select(global3.yz, select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(global3.yz, vec2<bool>(false, var_0.x), false))), !global3.zz));
    var var_2 = -26647i;
    var var_3 = Struct_5(false && var_0.x, global1[_wgslsmith_index_u32(~(arg_0.a.c.x >> (~(~0u) % 32u)), 20u)], arg_0.a.c.x);
    return select(!vec3<bool>(true, false, any(!vec2<bool>(arg_0.c, arg_1))), vec3<bool>((true | (arg_2 > var_3.b.x)) && true, true && !arg_0.c, arg_1), vec3<bool>(false, var_3.c != 61956u, true));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = global3.x;
    global3 = vec3<bool>(all(func_4(Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(771f, arg_0.x, -1031f), vec3<f32>(arg_0.x, -237f, -669f))), !global3.x, func_2(), arg_0.x), global3.x, _wgslsmith_add_i32(-32285i, arg_2 >> (0u % 32u)), -1i)), global3.x, firstLeadingBit(arg_2) > -17818i);
    var var_1 = select(!func_4(Struct_2(func_2(), arg_0.yzz, true, Struct_1(arg_3.x, 19946u, vec4<u32>(21713u, 0u, 4294967295u, arg_3.x), arg_3.x), 215f), false, arg_2, firstTrailingBit(arg_2 >> (0u % 32u))), func_4(Struct_2(func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(763f, arg_0.x, arg_1.x)), any(vec4<bool>(true, true, global3.x, true)), Struct_1(32741u, _wgslsmith_mod_u32(arg_3.x, arg_3.x), vec4<u32>(arg_3.x, 4598u, arg_3.x, arg_3.x), ~0u), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_0.x + -925f))), global3.x, u_input.a.x, _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(arg_2, u_input.a.x))), arg_2)), global3.x);
    var var_2 = Struct_5(global3.x, firstLeadingBit(_wgslsmith_clamp_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(-38676i, arg_2, 0i), global1[_wgslsmith_index_u32(arg_3.x, 20u)]), vec3<i32>(1i, _wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.yy), arg_2), vec3<i32>(arg_2 & 1i, arg_2, i32(-1i) * -1i))), ~_wgslsmith_clamp_u32(0u | countOneBits(arg_3.x), ~firstLeadingBit(arg_3.x), 71244u));
    let var_3 = Struct_3(Struct_1(arg_3.x, _wgslsmith_add_u32(arg_3.x | arg_3.x, 26307u), vec4<u32>(abs(arg_3.x), abs(arg_3.x ^ 1u), var_2.c, 1u), var_2.c), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), 21448i);
    return Struct_3(var_3.a, -1000f, 1i);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> vec3<bool> {
    var var_0 = arg_1.c;
    let var_1 = select(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 15162u, 0u, 0u) & vec4<u32>(arg_1.a.a, 0u, arg_2.a.b, 84432u), arg_2.a.c | vec4<u32>(1u, arg_0, arg_3, 1u)), ~0u, arg_2.a.d, 81687u), vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.a, ~1u, arg_0 << (4294u % 32u)), reverseBits(vec3<u32>(arg_0, arg_1.a.d, arg_0))), arg_1.a.a | arg_2.a.d, max(arg_0, _wgslsmith_div_u32(~arg_2.a.b, arg_1.a.a))), !vec4<bool>(!any(vec3<bool>(true, global3.x, true)), true, select(true, true, !global3.x), global3.x & (0i < u_input.a.x)));
    var var_2 = _wgslsmith_f_op_f32(abs(801f));
    var_2 = 1431f;
    let var_3 = -83106i;
    return vec3<bool>(global3.x, all(global3.xy), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2853f - -1325f))));
    global2 = array<Struct_4, 2>();
    global3 = select(select(!select(!vec3<bool>(true, global3.x, global3.x), !vec3<bool>(false, true, global3.x), !vec3<bool>(true, global3.x, global3.x)), !vec3<bool>(any(vec3<bool>(false, global3.x, global3.x)), select(global3.x, false, global3.x), global3.x && false), all(vec3<bool>(!global3.x, false | global3.x, global3.x))), func_5(_wgslsmith_add_u32(~107873u, 1u), func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(139f, 875f, 750f, -465f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-487f, -589f, 347f, -1000f))))), vec4<f32>(-1746f, _wgslsmith_f_op_f32(-248f + 1570f), _wgslsmith_f_op_f32(-799f - 1044f), _wgslsmith_f_op_f32(f32(-1f) * -203f)), _wgslsmith_mult_i32(1i, ~u_input.a.x), vec3<u32>(~0u, ~1u, ~1u)), Struct_3(Struct_1(~0u, 1u, vec4<u32>(21457u, 5975u, 0u, 0u), 4294967295u), -1659f, -1i), _wgslsmith_mult_u32(select(15761u >> (1u % 32u), abs(0u), any(vec3<bool>(global3.x, global3.x, false))), ~60743u)), true);
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(1u, ~34500u, _wgslsmith_sub_u32(50011u, 0u)), vec3<u32>(1u, 1u, 1u)), func_1(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, 1f)), 1350f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1776f * -419f) + -753f), 1278f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1647f, _wgslsmith_f_op_f32(floor(-1169f)), -187f, _wgslsmith_f_op_f32(ceil(-1107f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-358f, 913f, -2011f, -796f), vec4<f32>(-1226f, 176f, -821f, 1766f), vec4<bool>(false, global3.x, global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 453f, 950f, -1000f), vec4<f32>(-1000f, -2502f, 1296f, -517f))), select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, false, global3.x, false), true))), false)), u_input.a.x, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(1u, 25027u, 43815u), vec3<u32>(42207u, 4294967295u, 30204u))), ~_wgslsmith_add_u32(1u, 88814u), 21828u)).a.c.wxw);
    let var_2 = Struct_5(true, countOneBits(vec3<i32>(~u_input.a.x, -u_input.a.x, _wgslsmith_dot_vec4_i32(u_input.a, firstLeadingBit(vec4<i32>(-24460i, -42936i, u_input.a.x, u_input.a.x))))), 4294967295u);
    global3 = !vec3<bool>(var_2.a, var_2.a, select(true, all(vec3<bool>(global3.x, true, true)), all(vec2<bool>(false, var_2.a))) | all(select(vec2<bool>(global3.x, false), global3.xx, global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(u_input.a.xxy, min(vec3<i32>(var_2.b.x, 1i, -1i), -vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x))), vec4<u32>(_wgslsmith_sub_u32(var_2.c, 59273u), ~4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c, 1u, 51703u, 42218u), vec4<u32>(4294967295u, 48820u, 0u, 4294967295u)), 69125u) & abs(vec4<u32>(var_2.c, ~var_2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.c, 0u), vec3<u32>(21258u, var_2.c, var_2.c)), var_2.c ^ 2714u)), -vec2<i32>(~_wgslsmith_add_i32(var_2.b.x, 1i), var_2.b.x));
}

