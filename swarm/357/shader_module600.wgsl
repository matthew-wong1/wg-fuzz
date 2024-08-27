struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: array<f32, 3> = array<f32, 3>(-1000f, -502f, 210f);

var<private> global2: f32 = 3210f;

var<private> global3: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(vec4<bool>(false, false, false, true), false, -1i), Struct_4(vec4<bool>(true, true, true, false), true, -1i), Struct_4(vec4<bool>(false, true, false, true), false, 2147483647i), Struct_4(vec4<bool>(true, true, true, false), true, -4033i), Struct_4(vec4<bool>(true, false, true, false), true, -34523i), Struct_4(vec4<bool>(true, false, false, true), false, -2388i), Struct_4(vec4<bool>(false, true, true, false), false, -27974i), Struct_4(vec4<bool>(false, false, true, true), true, -1i), Struct_4(vec4<bool>(false, false, true, true), false, -1i), Struct_4(vec4<bool>(false, false, true, false), true, i32(-2147483648)), Struct_4(vec4<bool>(true, false, false, true), true, 11567i), Struct_4(vec4<bool>(false, true, true, false), true, -43805i), Struct_4(vec4<bool>(true, true, true, true), false, 0i), Struct_4(vec4<bool>(true, false, false, true), false, 50281i), Struct_4(vec4<bool>(false, true, false, false), false, 1i), Struct_4(vec4<bool>(true, false, true, false), false, -1i), Struct_4(vec4<bool>(true, false, false, true), true, 1i), Struct_4(vec4<bool>(false, false, false, false), true, i32(-2147483648)), Struct_4(vec4<bool>(true, false, false, true), true, 2147483647i), Struct_4(vec4<bool>(false, false, false, false), false, 42067i), Struct_4(vec4<bool>(false, false, true, false), false, 0i), Struct_4(vec4<bool>(true, false, false, false), false, 3055i), Struct_4(vec4<bool>(true, false, true, false), false, 0i), Struct_4(vec4<bool>(false, false, false, true), true, 2147483647i), Struct_4(vec4<bool>(true, false, true, false), true, 0i), Struct_4(vec4<bool>(true, true, true, false), false, -17353i), Struct_4(vec4<bool>(true, true, true, true), false, 2341i), Struct_4(vec4<bool>(false, false, false, false), false, 17080i), Struct_4(vec4<bool>(true, true, false, true), false, 0i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    global3 = array<Struct_4, 29>();
    var var_0 = select(select(!(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(44614u, 2u)]), vec2<bool>(true, true), false)), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], all(vec3<bool>(false, global0[_wgslsmith_index_u32(5282u, 2u)], true))), 1u <= _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29572u, 1u, 13183u, 4294967295u), vec4<u32>(36866u, 4294967295u, 24739u, 1u)), reverseBits(27471u), 1u)), vec2<bool>(true == !(false | global0[_wgslsmith_index_u32(89238u, 2u)]), global0[_wgslsmith_index_u32(~1u, 2u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)]));
    var var_1 = Struct_3(Struct_1(min(u_input.a.xy, u_input.a.xx)));
    global1 = array<f32, 3>();
    global0 = array<bool, 2>();
    return 8994i;
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(vec2<i32>(firstTrailingBit(1i), u_input.a.x)));
    global3 = array<Struct_4, 29>();
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(747f))));
    let var_1 = 56177u;
    global3 = array<Struct_4, 29>();
    return Struct_2((var_1 <= 4294967295u) | all(select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 2u)], true), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 2u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(21562u, 2u)], false))), var_1 == _wgslsmith_mult_u32(12207u, 16065u), var_0.a.a.x ^ ~func_3(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(var_1), 1u), 3u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(var_1 >> (arg_0 % 32u)), 3u)]))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_4) -> i32 {
    var var_0 = vec4<u32>(arg_1 >> (1u % 32u), arg_1, firstTrailingBit(~(~4294967295u)), 1u);
    let var_1 = Struct_1(abs(~abs(select(vec2<i32>(16476i, 2147483647i), vec2<i32>(-58732i, -11606i), arg_3.a.ww))));
    let var_2 = vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - global1[_wgslsmith_index_u32(~1622u, 3u)])) > arg_0.d, all(arg_3.a), true);
    var var_3 = Struct_3(var_1);
    global3 = array<Struct_4, 29>();
    return 1i;
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> u32 {
    var var_0 = func_4(func_2(57585u), firstLeadingBit(~abs(~25207u)), ~_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 23974i, -33230i, arg_1.c), vec4<i32>(u_input.a.x, 27974i, u_input.a.x, -1i), vec4<i32>(37887i, u_input.a.x, arg_1.c, arg_1.c)), -vec4<i32>(1i, u_input.a.x, -6859i, 1i)) ^ min(vec4<i32>(arg_1.c, arg_1.c, 0i, u_input.a.x) & -vec4<i32>(arg_1.c, 1i, arg_1.c, 23520i), _wgslsmith_mult_vec4_i32(vec4<i32>(32861i, arg_1.c, 2147483647i, arg_1.c), vec4<i32>(arg_1.c, 48143i, arg_1.c, u_input.a.x)) & vec4<i32>(arg_1.c, -2147483647i, u_input.a.x, -25352i)), arg_1);
    var_0 = firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c, ~0i) >> (~(~vec2<u32>(80436u, 35012u)) % vec2<u32>(32u)), -vec2<i32>(~arg_1.c, -65906i)));
    global0 = array<bool, 2>();
    let var_1 = 1u;
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(142f, arg_0, 1443f)), ~(vec3<u32>(var_1 | 23111u, 4294967295u, var_1) << (vec3<u32>(~var_1, _wgslsmith_clamp_u32(var_1, 1u, var_1), 1u) % vec3<u32>(32u))), func_2(1u));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(ceil(-115f));
    var var_0 = firstTrailingBit(~(~_wgslsmith_div_u32(~54990u, _wgslsmith_dot_vec2_u32(vec2<u32>(43232u, 8027u), vec2<u32>(4294967295u, 47723u)))));
    let var_1 = select(select(!(!(!vec3<bool>(global0[_wgslsmith_index_u32(17699u, 2u)], false, true))), vec3<bool>(any(select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false, global0[_wgslsmith_index_u32(4294967295u, 2u)]))), any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true)), false), global0[_wgslsmith_index_u32(~func_1(_wgslsmith_f_op_f32(f32(-1f) * -316f), Struct_4(vec4<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true, true, global0[_wgslsmith_index_u32(0u, 2u)]), true, u_input.a.x)), 2u)]), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(60435u, 2u)]), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], true, false), true), vec3<bool>(all(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true, global0[_wgslsmith_index_u32(71026u, 2u)]), vec3<bool>(false, true, false))), global0[_wgslsmith_index_u32(49438u, 2u)], any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(66704u, 2u)], false, false))), select(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(6935u, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(46666u, 2u)], true, true), false), vec3<bool>(global1[_wgslsmith_index_u32(76232u, 3u)] <= -2156f, true, false), vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(33388u, 2u)], global0[_wgslsmith_index_u32(23825u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])), global0[_wgslsmith_index_u32(1u, 2u)] && true, true))), vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], false, func_2(4294967295u).a));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(978f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(108814u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)]))), -170f, 238f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(35746u, 3u)], -443f, global1[_wgslsmith_index_u32(33880u, 3u)], -587f)), vec4<f32>(1f, _wgslsmith_f_op_f32(floor(390f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 3u)]), global1[_wgslsmith_index_u32(43057u, 3u)])) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(543f, -1935f, global1[_wgslsmith_index_u32(6339u, 3u)], global1[_wgslsmith_index_u32(43696u, 3u)]), vec4<f32>(-559f, global1[_wgslsmith_index_u32(1046u, 3u)], 1000f, 912f))))))));
    var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global1[_wgslsmith_index_u32(1u, 3u)], 316f, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1307f, global1[_wgslsmith_index_u32(25699u, 3u)], -1000f) * vec4<f32>(-1936f, var_2.x, global1[_wgslsmith_index_u32(1u, 3u)], -1626f)), vec4<bool>(true, false, var_1.x, true))) + vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(12022u, 3u)] + -303f), _wgslsmith_f_op_f32(var_2.x - global1[_wgslsmith_index_u32(20453u, 3u)]), _wgslsmith_f_op_f32(var_2.x - global1[_wgslsmith_index_u32(7772u, 3u)]), 367f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -415f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 3u)])), -386f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1318f - var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(688f, global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(11136u, 3u)], 1261f)) + vec4<f32>(-1171f, global1[_wgslsmith_index_u32(4294967295u, 3u)], 1000f, -289f))))), !vec4<bool>((false & global0[_wgslsmith_index_u32(0u, 2u)]) & !var_1.x, !any(var_1.zy), select(692f == var_2.x, false, any(var_1)), global0[_wgslsmith_index_u32(4294967295u, 2u)])));
    var var_3 = global0[_wgslsmith_index_u32(~(~(~(~4294967295u))), 2u)] & (!var_1.x & true);
    var var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_2.x, global1[_wgslsmith_index_u32(21923u, 3u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~3238u), 3u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 309f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], 550f, var_2.x)))))), countOneBits(min(_wgslsmith_mult_u32(23973u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 14974u), vec2<u32>(4294967295u, 46274u))), abs(select(1u, 55788u, true)))), ~(_wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), u_input.a.x, u_input.a.x) & countOneBits(_wgslsmith_div_i32(u_input.a.x, u_input.a.x))));
}

