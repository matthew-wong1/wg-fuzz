struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec4<f32>(-952f, 600f, 1086f, 419f), i32(-2147483648), Struct_1(vec4<f32>(-184f, -483f, 277f, -1000f), 0u, true, false), Struct_1(vec4<f32>(203f, -751f, 1561f, -269f), 27121u, true, false), 68284u), Struct_2(vec4<f32>(-639f, 1000f, 1845f, -974f), -1i, Struct_1(vec4<f32>(207f, 1293f, 2084f, 499f), 6737u, true, true), Struct_1(vec4<f32>(-125f, -682f, -100f, -397f), 13060u, false, true), 4294967295u), Struct_2(vec4<f32>(-739f, -1000f, -653f, 1945f), 2531i, Struct_1(vec4<f32>(186f, -886f, -1782f, 255f), 5721u, false, true), Struct_1(vec4<f32>(-1138f, 1064f, -138f, -599f), 0u, false, false), 4294967295u), Struct_2(vec4<f32>(2229f, 1170f, 942f, 275f), 0i, Struct_1(vec4<f32>(-732f, -404f, -805f, -133f), 6310u, true, false), Struct_1(vec4<f32>(-1221f, -487f, 1000f, -957f), 64972u, true, false), 4294967295u), Struct_2(vec4<f32>(349f, 471f, 727f, -558f), 1i, Struct_1(vec4<f32>(-845f, 419f, -179f, -595f), 1u, false, true), Struct_1(vec4<f32>(-2494f, 1031f, -481f, -1167f), 0u, false, false), 58656u), Struct_2(vec4<f32>(115f, 781f, 467f, 1527f), 1i, Struct_1(vec4<f32>(-415f, 703f, -1387f, 1179f), 0u, false, true), Struct_1(vec4<f32>(1308f, 1091f, 384f, -851f), 81626u, false, true), 1u), Struct_2(vec4<f32>(1000f, 1000f, -1178f, 385f), 2147483647i, Struct_1(vec4<f32>(-775f, 969f, -1471f, 1017f), 71045u, false, false), Struct_1(vec4<f32>(-276f, -460f, 448f, 771f), 20421u, true, false), 4294967295u), Struct_2(vec4<f32>(1000f, 1106f, -1198f, 1000f), 606i, Struct_1(vec4<f32>(-1099f, 267f, -1763f, -1842f), 18000u, false, false), Struct_1(vec4<f32>(1469f, 1000f, 308f, -1373f), 7963u, true, false), 36237u));

var<private> global2: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(58057u, 9323u), vec2<u32>(4294967295u, 83781u), vec2<u32>(1u, 30043u), vec2<u32>(64961u, 30269u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(67785u, 0u), vec2<u32>(0u, 1u), vec2<u32>(69963u, 27106u), vec2<u32>(1u, 1u), vec2<u32>(88840u, 4692u), vec2<u32>(64938u, 47813u), vec2<u32>(51861u, 62611u), vec2<u32>(4294967295u, 34474u), vec2<u32>(99912u, 0u), vec2<u32>(31280u, 1u), vec2<u32>(34957u, 56522u), vec2<u32>(37357u, 22210u), vec2<u32>(1u, 0u), vec2<u32>(11850u, 31801u), vec2<u32>(0u, 45420u), vec2<u32>(42162u, 4294967295u), vec2<u32>(17293u, 103023u), vec2<u32>(4294967295u, 0u), vec2<u32>(67450u, 4294967295u), vec2<u32>(1u, 12266u), vec2<u32>(0u, 42547u), vec2<u32>(48955u, 4294967295u), vec2<u32>(4294967295u, 60180u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec3<i32>) -> u32 {
    global0 = ~vec2<u32>(arg_0.e, arg_1.c.b);
    let var_0 = arg_1.c;
    var var_1 = ~_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b ^ arg_1.b, arg_3.x) >> (u_input.a % vec2<u32>(32u)), -arg_3.yy);
    global1 = array<Struct_2, 8>();
    var var_2 = ~reverseBits(~_wgslsmith_sub_i32(var_1.x, select(var_1.x, arg_0.b, var_0.d)));
    return abs(_wgslsmith_mult_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_0.b, 4294967295u, 0u), vec4<u32>(arg_1.d.b, arg_0.d.b, arg_2.x, 4294967295u))) | firstLeadingBit(23120u), firstLeadingBit(0u)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_2) -> f32 {
    global2 = array<vec2<u32>, 29>();
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(arg_0.d.b, 29868u, arg_0.e), func_3(Struct_2(vec4<f32>(arg_3.c.a.x, 612f, arg_3.d.a.x, 270f), arg_0.b, arg_3.d, Struct_1(arg_0.d.a, 47570u, false, arg_1), u_input.a.x), Struct_2(vec4<f32>(516f, -727f, -297f, -702f), 2147483647i, Struct_1(arg_0.a, arg_0.e, false, arg_3.c.c), arg_3.d, global0.x), vec4<u32>(global0.x, arg_3.c.b, 7257u, 4294967295u), vec3<i32>(u_input.c, u_input.c, 17501i)), _wgslsmith_sub_u32(arg_3.c.b, 4294967295u), 1u), ~(~vec4<u32>(0u, 871u, u_input.a.x, global0.x))), ~(vec4<u32>(33745u, 12869u, u_input.a.x, 1u) ^ ~vec4<u32>(arg_3.d.b, 1322u, 1u, 1u))), abs(u_input.a.x));
    var_0 = _wgslsmith_add_u32(reverseBits(~arg_0.c.b), func_3(Struct_2(vec4<f32>(arg_3.c.a.x, -1118f, arg_2.x, _wgslsmith_f_op_f32(round(arg_0.a.x))), _wgslsmith_sub_i32(u_input.b.x, -2147483647i) << (~arg_3.c.b % 32u), arg_3.d, Struct_1(vec4<f32>(arg_3.c.a.x, arg_2.x, 795f, -618f), global0.x, select(true, true, false), any(vec4<bool>(arg_0.c.d, false, arg_3.d.d, arg_0.d.d))), 4294967295u), global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(u_input.a << (u_input.a % vec2<u32>(32u)), u_input.a)), 8u)], ~vec4<u32>(4294967295u, ~33762u, _wgslsmith_add_u32(arg_3.d.b, arg_3.e), min(u_input.d, arg_0.d.b)), vec3<i32>(~arg_0.b, ~_wgslsmith_clamp_i32(-5250i, arg_0.b, -9974i), -3672i)));
    var var_1 = _wgslsmith_add_u32(~u_input.a.x, u_input.d << (_wgslsmith_add_u32(min(global0.x, u_input.a.x), ~global0.x) % 32u)) & ~4014u;
    var_0 = min(_wgslsmith_mod_u32(~global0.x, u_input.a.x), ~_wgslsmith_mod_u32(countOneBits(u_input.d), 39265u));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.a.x))), -744f);
}

fn func_1() -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(-119f, -435f, -1119f, -693f), -1178i, Struct_1(vec4<f32>(-1021f, -2519f, -1000f, -1242f), u_input.a.x, false, true), Struct_1(vec4<f32>(-592f, 290f, 1266f, 498f), u_input.d, false, true), global0.x), true, vec2<f32>(-1919f, -1071f), global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), _wgslsmith_f_op_f32(round(-2063f)), true))))), _wgslsmith_f_op_f32(abs(1f)));
    global2 = array<vec2<u32>, 29>();
    global0 = _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, ~u_input.a.x), vec2<u32>(_wgslsmith_sub_u32(max(u_input.a.x, abs(56404u)), _wgslsmith_sub_u32(22019u, global0.x)), ~global0.x));
    global1 = array<Struct_2, 8>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 29>();
    let var_0 = 23133i;
    global1 = array<Struct_2, 8>();
    let var_1 = Struct_1(vec4<f32>(-1959f, 112f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2360f - _wgslsmith_f_op_f32(f32(-1f) * -1742f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(525f * -1006f) + _wgslsmith_f_op_f32(-224f + -1719f)))), u_input.a.x, !(min(u_input.d & global0.x, ~global0.x) <= _wgslsmith_div_u32(29468u, u_input.d)), true);
    var var_2 = vec3<bool>(false, false, any(!vec4<bool>(var_1.c, var_1.c, true, var_1.a.x <= 2058f)));
    global1 = array<Struct_2, 8>();
    var_2 = !(!(!(!select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, var_2.x, var_2.x), var_2.x))));
    let var_3 = select(select(vec3<bool>(any(!vec4<bool>(var_2.x, false, var_2.x, false)), all(vec3<bool>(false, false, var_1.c)), !all(vec2<bool>(var_2.x, var_1.c))), !(!(!vec3<bool>(false, var_2.x, var_1.d))), func_1()), select(!select(!vec3<bool>(var_1.d, var_1.c, var_1.d), select(vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_1.c, true, false), vec3<bool>(true, var_1.c, true)), false), !(!select(vec3<bool>(var_1.d, var_2.x, false), vec3<bool>(false, true, var_1.d), vec3<bool>(var_2.x, true, false))), false), all(var_2.yy));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-728f, var_1.a.x, var_1.a.x, var_1.a.x))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(var_1.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1104f, -985f, 1270f, var_1.a.x) - var_1.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, 933f, var_1.a.x, var_1.a.x), vec4<f32>(var_1.a.x, 326f, 102f, -277f), vec4<bool>(true, false, var_1.d, var_2.x)))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x - 1000f), _wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x)), var_1.a.x, _wgslsmith_f_op_f32(abs(var_1.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(var_1.a, _wgslsmith_div_vec4_f32(var_1.a, vec4<f32>(-945f, -1298f, _wgslsmith_f_op_f32(max(-438f, var_4.x)), _wgslsmith_f_op_f32(-var_1.a.x))))), u_input.b.x, var_1.b);
}

