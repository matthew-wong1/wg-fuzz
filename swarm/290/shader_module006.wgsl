struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(true, -1175f, -1201f, true, i32(-2147483648)), i32(-2147483648), vec2<u32>(47864u, 1u), Struct_1(false, -334f, -240f, true, 7010i)), Struct_2(Struct_1(false, -1000f, 1329f, false, i32(-2147483648)), 0i, vec2<u32>(8989u, 4294967295u), Struct_1(true, -1000f, -615f, false, -29898i)), Struct_2(Struct_1(true, -1696f, -407f, true, -16734i), -2876i, vec2<u32>(24204u, 1u), Struct_1(false, -1390f, -1089f, false, -15335i)), Struct_2(Struct_1(false, -1000f, -1482f, true, i32(-2147483648)), 27065i, vec2<u32>(0u, 4294967295u), Struct_1(true, -2660f, -1134f, false, 2147483647i)), Struct_2(Struct_1(false, 959f, -664f, true, -45635i), -1i, vec2<u32>(15622u, 0u), Struct_1(true, -278f, 1000f, true, -13921i)), Struct_2(Struct_1(false, 113f, -209f, false, -8955i), 5437i, vec2<u32>(8649u, 41782u), Struct_1(true, -1000f, -1139f, false, -36841i)), Struct_2(Struct_1(true, -510f, 1651f, true, 2147483647i), -6170i, vec2<u32>(20106u, 12353u), Struct_1(true, -1264f, -574f, false, 37066i)), Struct_2(Struct_1(false, -850f, -1235f, false, 31149i), -23467i, vec2<u32>(56586u, 0u), Struct_1(true, 819f, 590f, false, 1i)), Struct_2(Struct_1(false, 665f, 1348f, false, 1i), -43715i, vec2<u32>(16640u, 1u), Struct_1(false, -1073f, -871f, false, -31083i)), Struct_2(Struct_1(false, 1026f, 1386f, false, -26844i), -31724i, vec2<u32>(24670u, 0u), Struct_1(true, 1110f, -167f, true, -1i)), Struct_2(Struct_1(false, -1262f, 552f, true, -1i), -947i, vec2<u32>(1u, 99140u), Struct_1(false, 612f, -1591f, true, i32(-2147483648))), Struct_2(Struct_1(false, 218f, -656f, false, 11074i), 1i, vec2<u32>(0u, 54481u), Struct_1(true, -1518f, -396f, false, -46114i)), Struct_2(Struct_1(true, -1008f, 570f, false, 75321i), 2147483647i, vec2<u32>(0u, 25902u), Struct_1(true, 696f, -1253f, false, 21876i)), Struct_2(Struct_1(true, -753f, -431f, false, 2147483647i), 28552i, vec2<u32>(1u, 4294967295u), Struct_1(false, 216f, 364f, true, -43031i)), Struct_2(Struct_1(true, 1000f, -1572f, true, i32(-2147483648)), -19130i, vec2<u32>(10286u, 37339u), Struct_1(false, 181f, -1000f, false, 2147483647i)), Struct_2(Struct_1(false, 453f, 1582f, true, i32(-2147483648)), -29976i, vec2<u32>(0u, 23540u), Struct_1(false, 1468f, -1133f, false, -1i)), Struct_2(Struct_1(true, -1311f, -2305f, false, i32(-2147483648)), 12939i, vec2<u32>(47342u, 53010u), Struct_1(true, 544f, 1000f, false, 28860i)), Struct_2(Struct_1(true, -1155f, 343f, false, -49611i), 8038i, vec2<u32>(1u, 1u), Struct_1(false, 274f, 223f, true, 0i)));

var<private> global2: array<vec4<f32>, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = !(!vec4<bool>(!(!arg_1.x), arg_1.x, !arg_1.x, arg_1.x));
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(0u, 11687u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, 30626u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1165u, 24564u), vec3<u32>(u_input.b, u_input.b, u_input.b))), u_input.b), 4294967295u, _wgslsmith_sub_u32(u_input.b, 70598u)));
    global2 = array<vec4<f32>, 17>();
    var var_2 = vec4<i32>(15502i, u_input.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a ^ -1i, 2707i, u_input.a | 1i, _wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.d.x))), ~select(select(vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, u_input.c), vec4<i32>(-1i, 0i, 2147483647i, 2147483647i), false), vec4<i32>(u_input.c, -10129i, 58412i, u_input.a), var_0)), 12629i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 3u)], arg_3.x)));
    return Struct_1(arg_1.x, _wgslsmith_f_op_f32(-2026f - arg_2), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 3u)] + var_3), arg_1.x, reverseBits(var_2.x) | (firstLeadingBit(u_input.d.x) & abs(_wgslsmith_mult_i32(u_input.d.x, u_input.c))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: u32) -> f32 {
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.c), -623f))), select(vec2<bool>(false, any(vec2<bool>(false, false))), vec2<bool>(-2147483647i >= arg_1.e, arg_1.a), arg_1.a), arg_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-390f, arg_2.x, arg_1.c) - vec3<f32>(488f, arg_1.c, -1341f))))), 30915i, ~select(abs(~vec2<u32>(arg_3, arg_3)), _wgslsmith_add_vec2_u32(vec2<u32>(45098u, arg_3), vec2<u32>(arg_3, arg_3)) ^ (vec2<u32>(u_input.b, arg_3) & vec2<u32>(arg_3, arg_3)), select(!vec2<bool>(true, arg_1.a), vec2<bool>(arg_1.d, false), vec2<bool>(true, false))), arg_1);
    let var_1 = global1[_wgslsmith_index_u32(~(~2688u), 18u)];
    global0 = array<f32, 3>();
    global2 = array<vec4<f32>, 17>();
    global1 = array<Struct_2, 18>();
    return _wgslsmith_f_op_f32(-func_2(arg_1.c, vec2<bool>(arg_1.d, true), var_1.a.b, vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(76630u, 3u)] * -848f)), _wgslsmith_f_op_f32(313f + _wgslsmith_f_op_f32(813f - -1370f)))).b);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    return func_2(global0[_wgslsmith_index_u32(109047u, 3u)], vec2<bool>(!var_0.d, _wgslsmith_f_op_f32(select(-1000f, var_0.b, var_0.a)) == global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(19890u, u_input.b), ~15571u), 3u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b, -120f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-287f, var_0.b, global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec3<f32>(1629f, var_0.c, var_0.c), arg_0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-483f, 1737f, global0[_wgslsmith_index_u32(u_input.b, 3u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 3>();
    let var_0 = true;
    global2 = array<vec4<f32>, 17>();
    global0 = array<f32, 3>();
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1687f, 729f, -1739f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(22345u, _wgslsmith_add_u32(countOneBits(u_input.b), u_input.b)), 3u)]), vec4<f32>(283f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-168f + -684f)))), 602f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 3u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(u_input.a, Struct_1(true, global0[_wgslsmith_index_u32(u_input.b, 3u)], -961f, false, 12597i), vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], 782f, global0[_wgslsmith_index_u32(u_input.b, 3u)]), 4294967295u)))), true)))));
    let var_2 = Struct_2(func_3(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 3u)] - -796f)), select(select(vec2<bool>(var_0, false), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0)), vec2<bool>(true, true), false), -1481f, vec3<f32>(1003f, -588f, func_2(global0[_wgslsmith_index_u32(29511u, 3u)], vec2<bool>(false, false), -887f, vec3<f32>(-508f, var_1.x, 371f)).c))), u_input.a, ~(~(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, u_input.b))) >> (vec2<u32>(~1u, ~_wgslsmith_add_u32(u_input.b, 21193u)) % vec2<u32>(32u)), func_3(Struct_1(!var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2296f + 973f)), func_3(func_3(Struct_1(false, -1552f, -572f, var_0, -1i))).c, all(vec2<bool>(false, var_0)), ~(u_input.c & 1i))));
    global1 = array<Struct_2, 18>();
    let var_3 = Struct_2(var_2.d, 0i, var_2.c, func_3(var_2.a));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(min(var_3.a.e, _wgslsmith_dot_vec4_i32(u_input.d, _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_2.b, 2147483647i), vec4<i32>(-51269i, var_2.b, u_input.a, 1132i)))), var_3.a, vec3<f32>(-1383f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(623f + 1131f))), func_2(-1000f, !vec2<bool>(true, var_2.a.a), _wgslsmith_f_op_f32(abs(1142f)), _wgslsmith_f_op_vec3_f32(-var_1.zwz)).c), ~4294967295u)) + _wgslsmith_f_op_f32(-var_2.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1412f, -1182f), 10934u, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.b, ~var_3.b, ~var_2.a.e, -var_3.d.e), vec4<i32>(var_2.a.e, _wgslsmith_sub_i32(1i, ~var_2.d.e), select(-1i, 0i, !var_2.d.d), _wgslsmith_mult_i32(-2147483647i, var_3.d.e))));
}

