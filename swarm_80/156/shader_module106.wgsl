struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-979f, 1385f), vec2<f32>(-1023f, -115f), vec2<f32>(-1310f, -1000f), vec2<f32>(359f, 286f), vec2<f32>(314f, 1422f), vec2<f32>(-1325f, 1178f), vec2<f32>(820f, 1693f), vec2<f32>(1442f, 1401f), vec2<f32>(373f, -1503f), vec2<f32>(893f, -1538f), vec2<f32>(-479f, -690f), vec2<f32>(806f, -1619f), vec2<f32>(-611f, 1444f), vec2<f32>(1201f, 1507f), vec2<f32>(2097f, 105f), vec2<f32>(198f, 560f));

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(1u), vec4<f32>(1456f, -154f, -952f, 1000f), vec3<bool>(true, false, false), vec4<u32>(0u, 1u, 22363u, 0u)), Struct_2(Struct_1(27691u), vec4<f32>(2283f, -503f, 2000f, -1633f), vec3<bool>(true, false, false), vec4<u32>(49572u, 0u, 4294967295u, 1u)), Struct_2(Struct_1(28955u), vec4<f32>(-1203f, -533f, -286f, 1324f), vec3<bool>(true, true, true), vec4<u32>(12744u, 1u, 9886u, 102085u)), Struct_2(Struct_1(58548u), vec4<f32>(-1447f, 1000f, -1000f, -569f), vec3<bool>(false, true, true), vec4<u32>(4294967295u, 117081u, 42824u, 62905u)), Struct_2(Struct_1(43377u), vec4<f32>(101f, 275f, 1000f, 484f), vec3<bool>(false, true, true), vec4<u32>(1u, 0u, 1u, 1u)), Struct_2(Struct_1(35275u), vec4<f32>(-335f, -178f, 1681f, -472f), vec3<bool>(false, false, false), vec4<u32>(1u, 1u, 135u, 26242u)), Struct_2(Struct_1(90311u), vec4<f32>(1000f, 421f, -892f, -882f), vec3<bool>(false, false, true), vec4<u32>(4294967295u, 1u, 1u, 1888u)), Struct_2(Struct_1(0u), vec4<f32>(1016f, 1830f, 1646f, -617f), vec3<bool>(true, true, false), vec4<u32>(28843u, 0u, 25558u, 0u)), Struct_2(Struct_1(2801u), vec4<f32>(124f, -240f, -1850f, 1073f), vec3<bool>(true, true, true), vec4<u32>(51075u, 0u, 38797u, 10929u)), Struct_2(Struct_1(20192u), vec4<f32>(435f, 1216f, 1928f, -859f), vec3<bool>(false, false, true), vec4<u32>(4294967295u, 15280u, 12698u, 96822u)), Struct_2(Struct_1(0u), vec4<f32>(-2740f, -436f, -1230f, 2073f), vec3<bool>(true, true, false), vec4<u32>(1u, 40925u, 1u, 1u)), Struct_2(Struct_1(16332u), vec4<f32>(111f, 1580f, -1288f, 132f), vec3<bool>(true, true, true), vec4<u32>(39985u, 0u, 13497u, 40218u)), Struct_2(Struct_1(0u), vec4<f32>(370f, 873f, 1000f, -1000f), vec3<bool>(true, false, true), vec4<u32>(50064u, 2902u, 1u, 0u)), Struct_2(Struct_1(5898u), vec4<f32>(1203f, -796f, -545f, 278f), vec3<bool>(false, true, true), vec4<u32>(58534u, 4294967295u, 18257u, 1u)), Struct_2(Struct_1(4294967295u), vec4<f32>(2816f, 973f, 191f, -1653f), vec3<bool>(false, true, true), vec4<u32>(1u, 16836u, 1u, 1u)), Struct_2(Struct_1(54791u), vec4<f32>(-557f, -1230f, 924f, 1216f), vec3<bool>(true, true, true), vec4<u32>(0u, 11732u, 1u, 75757u)), Struct_2(Struct_1(35515u), vec4<f32>(-923f, -210f, -609f, -803f), vec3<bool>(true, false, false), vec4<u32>(15412u, 4294967295u, 1u, 47605u)), Struct_2(Struct_1(6148u), vec4<f32>(-1842f, -804f, -1726f, 656f), vec3<bool>(true, true, true), vec4<u32>(68062u, 2778u, 74326u, 24789u)), Struct_2(Struct_1(4294967295u), vec4<f32>(-227f, 181f, -785f, -1696f), vec3<bool>(false, true, false), vec4<u32>(14784u, 4294967295u, 1u, 1u)), Struct_2(Struct_1(75061u), vec4<f32>(630f, -653f, -919f, -253f), vec3<bool>(false, false, true), vec4<u32>(0u, 62966u, 0u, 0u)), Struct_2(Struct_1(6276u), vec4<f32>(1354f, 340f, 1278f, 252f), vec3<bool>(true, false, false), vec4<u32>(0u, 56998u, 0u, 13615u)), Struct_2(Struct_1(1u), vec4<f32>(1381f, -1293f, 124f, -295f), vec3<bool>(true, false, false), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), Struct_2(Struct_1(39799u), vec4<f32>(1941f, 230f, 743f, -833f), vec3<bool>(true, false, false), vec4<u32>(4294967295u, 1u, 0u, 9804u)));

var<private> global2: array<i32, 3> = array<i32, 3>(1i, 28329i, i32(-2147483648));

var<private> global3: array<Struct_3, 13>;

var<private> global4: array<bool, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = 1710f;
    var var_1 = !(!select(vec4<bool>(true, all(vec2<bool>(true, false)), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.d.x, 0u, 0u, arg_2.b.d.x), arg_2.b.d), 30u)], true), vec4<bool>(true, true, arg_2.e.b.x <= arg_2.a, true), false));
    global0 = array<vec2<f32>, 16>();
    let var_2 = Struct_1(arg_0.a.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(arg_0.b.xx, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1488f), -278f), !(!var_1.yz)))));
    return ~(~firstLeadingBit(countOneBits(vec2<u32>(var_2.a, arg_0.d.x))));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(1u);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1761f);
    var var_2 = Struct_4(~(~2147483647i));
    var var_3 = global3[_wgslsmith_index_u32(var_0.a, 13u)];
    var var_4 = abs(func_3(Struct_2(Struct_1(var_0.a), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_3.b.b.x)), _wgslsmith_f_op_f32(max(var_3.b.b.x, 441f)), _wgslsmith_div_f32(-1000f, var_3.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1201f)), !select(var_3.b.c, vec3<bool>(var_3.b.c.x, false, var_3.e.c.x), var_3.e.c.x), max(var_3.e.d | vec4<u32>(var_3.b.a.a, 4294967295u, 1u, var_3.b.d.x), ~var_3.e.d)), _wgslsmith_f_op_vec2_f32(trunc(var_3.b.b.yz)), Struct_3(var_3.e.b.x, global1[_wgslsmith_index_u32(firstLeadingBit(~1u), 23u)], Struct_1(4294967295u), -25928i, Struct_2(var_3.e.a, _wgslsmith_f_op_vec4_f32(var_3.b.b - var_3.e.b), vec3<bool>(global4[_wgslsmith_index_u32(1u, 30u)], false, global4[_wgslsmith_index_u32(var_0.a, 30u)]), ~var_3.b.d))));
    return Struct_4(0i & var_3.d);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> u32 {
    let var_0 = ~(-1i);
    global4 = array<bool, 30>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 16u)];
    let var_2 = vec4<u32>(~arg_0.x ^ ~_wgslsmith_mod_u32(min(arg_0.x, arg_0.x), 1u), ~(~45899u), _wgslsmith_sub_u32(arg_0.x, arg_0.x), max(~(~arg_0.x) >> (((arg_0.x | 1u) ^ firstLeadingBit(arg_0.x)) % 32u), firstTrailingBit(52902u)));
    var var_3 = Struct_1(abs(_wgslsmith_dot_vec4_u32(~arg_0, ~vec4<u32>(arg_0.x, arg_0.x, 21305u, var_2.x))));
    return _wgslsmith_sub_u32(~var_3.a, 23312u);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<u32>(40340u, 71684u, 21153u) | reverseBits(vec3<u32>(func_4(firstTrailingBit(vec4<u32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), func_2()), arg_0.a, _wgslsmith_sub_u32(arg_0.a, firstTrailingBit(arg_0.a))));
    global2 = array<i32, 3>();
    global1 = array<Struct_2, 23>();
    let var_1 = 1000f;
    var var_2 = true & global4[_wgslsmith_index_u32(4294967295u, 30u)];
    return _wgslsmith_f_op_f32(ceil(474f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(1u))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -316f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-895f, 1026f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1233f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-329f * _wgslsmith_f_op_f32(abs(-899f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-984f)))), global4[_wgslsmith_index_u32(abs(29957u), 30u)])), _wgslsmith_f_op_f32(floor(314f))));
    let var_1 = 1029f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(-_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(6917i, 0i), vec2<i32>(-33788i, global2[_wgslsmith_index_u32(45266u, 3u)])), -vec2<i32>(u_input.a, u_input.a)), -_wgslsmith_sub_vec2_i32(vec2<i32>(-7950i, u_input.a) << (vec2<u32>(8488u, 140062u) % vec2<u32>(32u)), -vec2<i32>(global2[_wgslsmith_index_u32(73220u, 3u)], u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, var_1, 1000f, var_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-584f, 634f, var_1, var_0.x) - vec4<f32>(-185f, 1450f, var_1, -1307f))), vec4<f32>(974f, -424f, var_1, _wgslsmith_f_op_f32(f32(-1f) * -2985f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, -1000f, var_1)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2799f, var_1, -792f, -691f), vec4<f32>(-1073f, var_1, var_1, 1584f))))), 1u, 0u);
}

