struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(871f, vec4<f32>(1241f, 1409f, -282f, -1000f), true), Struct_1(-147f, vec4<f32>(-334f, 1154f, 889f, 736f), false), Struct_1(-566f, vec4<f32>(-2213f, 617f, 632f, -1082f), true), Struct_1(255f, vec4<f32>(1233f, 1027f, -608f, 536f), false), Struct_1(-1031f, vec4<f32>(450f, -1242f, -1116f, 3296f), true), Struct_1(1091f, vec4<f32>(907f, 1024f, 1000f, -446f), true), Struct_1(2068f, vec4<f32>(-1051f, -907f, 1000f, -1000f), false), Struct_1(-720f, vec4<f32>(2151f, 2275f, -148f, 1000f), false), Struct_1(-707f, vec4<f32>(1659f, 1000f, -886f, 1013f), true), Struct_1(202f, vec4<f32>(-137f, -501f, 519f, 842f), false), Struct_1(253f, vec4<f32>(-1865f, -1267f, 673f, 1322f), false), Struct_1(1207f, vec4<f32>(-623f, -641f, -159f, -104f), true), Struct_1(1768f, vec4<f32>(-307f, -1847f, 1512f, -166f), true), Struct_1(641f, vec4<f32>(186f, 250f, 1770f, -1830f), true), Struct_1(1354f, vec4<f32>(-704f, -1531f, 749f, 618f), false));

var<private> global1: f32 = -2132f;

var<private> global2: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(352u, 40025u, 31150u, 0u), vec4<u32>(24449u, 7060u, 75241u, 1u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(step(-1100f, 314f)), -566f)))));
    let var_1 = _wgslsmith_add_i32(-15180i, 0i);
    let var_2 = all(vec2<bool>(u_input.b.x < u_input.a.x, true));
    var var_3 = -1159f;
    return _wgslsmith_mod_i32(69397i, 23209i) & _wgslsmith_dot_vec4_i32(-((vec4<i32>(var_1, 57937i, 26419i, var_1) | vec4<i32>(-45484i, 2147483647i, var_1, -2147483647i)) & vec4<i32>(var_1, var_1, var_1, 4976i)), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(var_1, -66502i, -2147483647i, var_1) ^ vec4<i32>(var_1, 2147483647i, var_1, var_1)), vec4<i32>(var_1, 1i, -2147483647i, ~22255i)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1082f + 491f)), -285f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1139f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-814f)) - 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-915f - -1000f))))));
    let var_1 = Struct_2(~vec3<i32>(~4322i, select(func_3(), ~2147483647i, any(vec3<bool>(true, arg_0.x, arg_0.x))), -10288i), vec4<u32>(firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 115726u, u_input.a.x)), 24729u, 0u & u_input.a.x, firstLeadingBit(1u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -619f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 1231f) - _wgslsmith_f_op_f32(1000f - var_0.x)), _wgslsmith_f_op_f32(-1798f + var_0.x), -446f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))), 218f >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), all(!(!vec2<bool>(false, arg_0.x))));
    global2 = array<vec4<u32>, 2>();
    let var_2 = Struct_2(var_1.a, firstTrailingBit(select(abs(max(var_1.b, u_input.b)), _wgslsmith_mult_vec4_u32(u_input.b, var_1.b & vec4<u32>(1u, var_1.b.x, u_input.b.x, var_1.b.x)), vec4<bool>(arg_0.x, false, false, true))), var_1.c, var_1.d);
    var var_3 = var_2;
    return Struct_2(var_2.a, global2[_wgslsmith_index_u32(var_1.b.x, 2u)], var_1.c, -28647i > (5777i >> (var_3.b.x % 32u)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    global2 = array<vec4<u32>, 2>();
    var var_0 = vec3<f32>(arg_1.x, arg_0, _wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(arg_0 - -1000f)));
    var var_1 = ~4294967295u;
    global0 = array<Struct_1, 15>();
    var var_2 = arg_2;
    return func_2(!select(vec4<bool>(arg_2.c.c || var_2.c.c, 25765u == var_2.b.x, arg_2.b.x != 1052u, 35251i != arg_3.x), !select(vec4<bool>(var_2.d, false, var_2.d, true), vec4<bool>(arg_2.d, true, true, arg_2.d), vec4<bool>(arg_2.d, false, var_2.d, var_2.c.c)), vec4<bool>(!arg_2.c.c, any(vec4<bool>(arg_2.c.c, arg_2.c.c, true, var_2.c.c)), arg_2.d == true, true)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<u32>) -> vec4<u32> {
    global1 = _wgslsmith_f_op_f32(abs(arg_0.c.a));
    let var_0 = arg_0.c.c || !(all(select(vec3<bool>(arg_1.c.c, false, arg_1.d), vec3<bool>(false, arg_0.d, true), arg_1.d)) | arg_1.c.c);
    let var_1 = -select(max(select(min(vec4<i32>(8296i, -30102i, -1i, arg_0.a.x), vec4<i32>(13458i, arg_1.a.x, 1i, 0i)), vec4<i32>(-2147483647i, 19689i, 2147483647i, 35634i), var_0 & arg_0.d), vec4<i32>(1i << (arg_3.x % 32u), arg_1.a.x, ~(-36624i), arg_1.a.x)), vec4<i32>(~(~arg_0.a.x), i32(-1i) * -arg_1.a.x, firstLeadingBit(select(-21441i, arg_0.a.x, arg_1.d)), (arg_0.a.x << (4294967295u % 32u)) << (arg_3.x % 32u)), false);
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b.x, 1128u) | arg_0.b.xx, _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(55593u, 25791u), vec2<u32>(arg_3.x, 4294967295u), arg_3.yy), ~arg_1.b.xy)), ~_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 20154u), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec2_u32(~arg_3.yx, _wgslsmith_sub_vec2_u32(arg_1.b.yz, reverseBits(vec2<u32>(arg_3.x, 1u))))));
    global1 = 197f;
    return arg_0.b;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = func_2(select(select(vec4<bool>(arg_3.a.x > arg_1.a.x, false & arg_1.d, arg_2.c.c, -258f > arg_2.c.a), select(!vec4<bool>(arg_1.c.c, arg_2.c.c, false, false), vec4<bool>(false, true, arg_1.c.c, arg_2.d), !arg_1.d), false), vec4<bool>(false, any(select(vec2<bool>(arg_3.d, true), vec2<bool>(arg_1.c.c, arg_3.c.c), vec2<bool>(false, arg_2.c.c))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_3.a.x, arg_0.x, -8498i), vec4<i32>(3675i, 9375i, 0i, -62129i)) < _wgslsmith_mult_i32(10674i, -16932i), arg_3.c.c), !select(select(vec4<bool>(arg_3.d, arg_2.c.c, false, true), vec4<bool>(arg_1.d, arg_3.d, true, arg_1.c.c), vec4<bool>(arg_1.c.c, arg_2.d, arg_3.c.c, arg_2.c.c)), vec4<bool>(true, arg_1.d, arg_2.c.c, true), arg_2.d))).c;
    var var_1 = func_2(!(!(!(!vec4<bool>(false, arg_2.d, true, false))))).c;
    var var_2 = func_1(_wgslsmith_f_op_f32(step(var_0.a, var_1.b.x)), var_1.b.xwx, arg_3, abs(arg_3.a));
    let var_3 = _wgslsmith_div_i32(arg_1.a.x, arg_3.a.x) | 2147483647i;
    var_0 = arg_1.c;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_2.c.b.xx), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c.a), _wgslsmith_f_op_f32(arg_3.c.b.x + -1235f)), -1482f))), _wgslsmith_f_op_vec2_f32(-var_2.c.b.zy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -865f);
    global0 = array<Struct_1, 15>();
    global2 = array<vec4<u32>, 2>();
    global2 = array<vec4<u32>, 2>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(~(~(-vec3<i32>(1i, 1i, 1i))), Struct_2(-abs(vec3<i32>(1i, 0i, 9675i)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, u_input.a.x), 2u)], Struct_1(_wgslsmith_f_op_f32(abs(-719f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1136f, 140f, -1320f, -1102f)) + vec4<f32>(-630f, 1345f, -1183f, 1361f)), true), true), Struct_2(vec3<i32>(~1i, 2147483647i, abs(-66061i)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(1u, 2u)] & global2[_wgslsmith_index_u32(4294967295u, 2u)], ~vec4<u32>(28341u, 1u, 18914u, 1u)), func_4(func_1(258f, vec3<f32>(-553f, -193f, -162f), Struct_2(vec3<i32>(-68799i, 7233i, 0i), vec4<u32>(u_input.a.x, u_input.b.x, 1u, 9265u), Struct_1(-423f, vec4<f32>(-401f, -101f, -203f, -1389f), true), false), vec3<i32>(-2147483647i, 0i, 1i)), Struct_2(vec3<i32>(4216i, 0i, 40i), u_input.b, Struct_1(-268f, vec4<f32>(1199f, 1000f, 943f, 179f), false), false), func_1(-926f, vec3<f32>(-1000f, 1667f, -450f), Struct_2(vec3<i32>(2147483647i, 9913i, -2147483647i), vec4<u32>(u_input.b.x, 4294967295u, 29041u, u_input.a.x), global0[_wgslsmith_index_u32(48479u, 15u)], false), vec3<i32>(-7199i, 2147483647i, -1i)).c.b.yz, ~vec3<u32>(4294967295u, u_input.a.x, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(2013f - 485f), _wgslsmith_f_op_vec4_f32(func_2(vec4<bool>(false, true, false, true)).c.b - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(501f, 722f, 494f, -1349f)))), true), false), func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1504f, 1348f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1167f, 858f)), _wgslsmith_f_op_f32(f32(-1f) * -2225f)), !all(vec4<bool>(false, false, true, false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(341f, -1000f, -710f) * vec3<f32>(967f, -917f, 2215f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(811f, -939f, -845f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1161f, 1000f, 994f))))), Struct_2(func_2(vec4<bool>(true, true, true, true)).a, global2[_wgslsmith_index_u32(1u, 2u)], Struct_1(_wgslsmith_f_op_f32(trunc(473f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-182f, 454f, -604f, -1000f))), true), false), vec3<i32>(firstLeadingBit(~(-25143i)), 2147483647i, ~1i))));
    global0 = array<Struct_1, 15>();
    var var_1 = var_0.x == var_0.x;
    global0 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_u32(select(44874u, ~u_input.a.x, true), ~u_input.b.x >> (~u_input.a.x % 32u))), u_input.a.x, select(-vec2<i32>(_wgslsmith_add_i32(-24914i, -13949i), countOneBits(0i)), vec2<i32>(1i, 51464i), true), vec4<i32>(~_wgslsmith_mult_i32(23896i, 26667i) >> (0u % 32u), ~(-2147483647i), countOneBits(2147483647i), -1i));
}

