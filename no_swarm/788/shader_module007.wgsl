struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(55548u, 17016u, 1u, 5545u, 56621u);

var<private> global1: Struct_2 = Struct_2(vec3<u32>(0u, 118299u, 15359u), vec3<f32>(-249f, -1000f, -202f));

var<private> global2: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(Struct_3(71052u), Struct_3(62437u), vec4<bool>(true, false, true, false), Struct_2(vec3<u32>(38837u, 59756u, 67249u), vec3<f32>(-868f, 492f, 352f)), 24175u), Struct_4(Struct_3(0u), Struct_3(24139u), vec4<bool>(true, true, true, true), Struct_2(vec3<u32>(1u, 46374u, 4294967295u), vec3<f32>(-1381f, -1269f, 311f)), 1u), Struct_4(Struct_3(52820u), Struct_3(40582u), vec4<bool>(true, true, false, false), Struct_2(vec3<u32>(73507u, 80155u, 9255u), vec3<f32>(548f, 1604f, -1649f)), 1u), Struct_4(Struct_3(15909u), Struct_3(6845u), vec4<bool>(false, true, true, false), Struct_2(vec3<u32>(30055u, 13562u, 62524u), vec3<f32>(-713f, -354f, 1893f)), 5368u), Struct_4(Struct_3(4294967295u), Struct_3(0u), vec4<bool>(false, false, false, true), Struct_2(vec3<u32>(1u, 27903u, 4294967295u), vec3<f32>(-1000f, -1969f, -296f)), 0u), Struct_4(Struct_3(4294967295u), Struct_3(4294967295u), vec4<bool>(false, false, false, false), Struct_2(vec3<u32>(0u, 7789u, 78163u), vec3<f32>(-1113f, -311f, -500f)), 16470u), Struct_4(Struct_3(109623u), Struct_3(0u), vec4<bool>(false, false, false, false), Struct_2(vec3<u32>(77995u, 24176u, 4294967295u), vec3<f32>(1974f, 299f, -1703f)), 0u), Struct_4(Struct_3(0u), Struct_3(17728u), vec4<bool>(false, false, false, false), Struct_2(vec3<u32>(41542u, 1u, 1u), vec3<f32>(-814f, 297f, 1000f)), 74842u), Struct_4(Struct_3(4294967295u), Struct_3(0u), vec4<bool>(true, false, true, true), Struct_2(vec3<u32>(51337u, 1u, 65564u), vec3<f32>(-1603f, 670f, 488f)), 7271u), Struct_4(Struct_3(4294967295u), Struct_3(22928u), vec4<bool>(false, false, true, true), Struct_2(vec3<u32>(55305u, 4294967295u, 4294967295u), vec3<f32>(-796f, -406f, 863f)), 23175u), Struct_4(Struct_3(3370u), Struct_3(4294967295u), vec4<bool>(true, false, false, false), Struct_2(vec3<u32>(4294967295u, 73519u, 31874u), vec3<f32>(771f, -763f, -456f)), 4294967295u), Struct_4(Struct_3(51579u), Struct_3(30091u), vec4<bool>(false, false, false, true), Struct_2(vec3<u32>(0u, 9899u, 32429u), vec3<f32>(-1346f, 382f, 2334f)), 20060u), Struct_4(Struct_3(69866u), Struct_3(46293u), vec4<bool>(true, false, false, true), Struct_2(vec3<u32>(12674u, 0u, 4294967295u), vec3<f32>(-1525f, -1869f, -448f)), 4294967295u), Struct_4(Struct_3(13453u), Struct_3(0u), vec4<bool>(false, true, false, false), Struct_2(vec3<u32>(24275u, 43019u, 22494u), vec3<f32>(537f, -1699f, -897f)), 0u), Struct_4(Struct_3(6776u), Struct_3(0u), vec4<bool>(false, true, true, false), Struct_2(vec3<u32>(16217u, 1u, 4294967295u), vec3<f32>(-1000f, 1200f, -2160f)), 1u), Struct_4(Struct_3(35099u), Struct_3(1u), vec4<bool>(false, false, true, true), Struct_2(vec3<u32>(65273u, 61433u, 4294967295u), vec3<f32>(802f, -497f, 460f)), 29884u), Struct_4(Struct_3(1u), Struct_3(0u), vec4<bool>(true, false, true, false), Struct_2(vec3<u32>(49050u, 6662u, 62435u), vec3<f32>(254f, 1193f, -1591f)), 0u), Struct_4(Struct_3(55818u), Struct_3(4294967295u), vec4<bool>(false, false, true, true), Struct_2(vec3<u32>(52390u, 86162u, 1u), vec3<f32>(1511f, 570f, 386f)), 8882u), Struct_4(Struct_3(67603u), Struct_3(0u), vec4<bool>(false, true, true, false), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(557f, -775f, 323f)), 1u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> Struct_3 {
    global1 = Struct_2(global1.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b), global1.b));
    let var_0 = arg_0;
    var var_1 = vec4<bool>(var_0 | false, !var_0, true, true);
    var_1 = vec4<bool>(true, true, true, !(!arg_0));
    global0 = array<u32, 5>();
    return Struct_3(_wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(4294967295u, 10442u), ~(~_wgslsmith_mult_u32(arg_1, 4294967295u))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    var var_0 = func_2(true, 14356u & arg_0.d.a.x, _wgslsmith_f_op_f32(-arg_2.e), select(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.a, arg_2.b.x, 4294967295u, arg_1.a.x), arg_2.c, vec4<u32>(arg_0.a.a, global0[_wgslsmith_index_u32(8983u, 5u)], 45775u, 30151u))) | u_input.d, vec4<u32>(_wgslsmith_clamp_u32(~0u, arg_0.b.a, 77995u), 0u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_0.b.a, 114550u, arg_2.c.x)), abs(arg_1.a)), ~_wgslsmith_clamp_u32(0u, 0u, 33218u)), arg_2.a.x));
    return vec2<u32>(arg_2.b.x, global1.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> bool {
    let var_0 = func_3(Struct_4(func_2(true || (-37382i != arg_1), global1.a.x, -1430f, u_input.d), Struct_3(1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true & (11605i >= u_input.a)), arg_0, ~0u), arg_0, Struct_1(vec2<bool>(true, true), (~vec2<u32>(u_input.d.x, global0[_wgslsmith_index_u32(arg_0.a.x, 5u)]) >> (~u_input.d.zx % vec2<u32>(32u))) ^ (_wgslsmith_sub_vec2_u32(global1.a.yy, global1.a.xx) ^ ~vec2<u32>(u_input.d.x, 0u)), vec4<u32>(~1u, 1u, ~global1.a.x ^ _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a.x, 5u)], 5u)], 5750u), 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1035f))), -985f), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1360f));
    let var_1 = Struct_1(select(vec2<bool>(any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true))), false), vec2<bool>(true, !(4283u <= global1.a.x)), all(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(var_0, var_0), min(vec2<u32>(global0[_wgslsmith_index_u32(33843u, 5u)], 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, global1.a.x), vec2<u32>(global0[_wgslsmith_index_u32(global1.a.x, 5u)], global1.a.x)))), vec4<u32>(u_input.d.x, ~reverseBits(~1u), 1u, ~73811u), _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * 1466f))), -910f)));
    var var_2 = vec3<f32>(686f, _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(-1156f - _wgslsmith_f_op_f32(f32(-1f) * -1917f))))), 926f);
    global0 = array<u32, 5>();
    var var_3 = var_1;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 19>();
    var var_0 = select(select(select(vec2<bool>(all(vec3<bool>(false, false, true)), func_1(Struct_2(vec3<u32>(global1.a.x, global0[_wgslsmith_index_u32(24420u, 5u)], 53737u), vec3<f32>(-808f, global1.b.x, 1000f)), u_input.a, 1102f)), vec2<bool>(global1.a.x == 73055u, all(vec4<bool>(false, false, false, true))), select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, false))), vec2<bool>(true, any(vec2<bool>(true, true))), false | (u_input.a <= -u_input.a)), select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.b, 5u)] > global0[_wgslsmith_index_u32(4294967295u, 5u)]), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), -454f == global1.b.x)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), vec2<bool>(true, false), true), select(vec2<bool>(true, any(vec4<bool>(false, true, true, true))), vec2<bool>(false, true), true)), true);
    var var_1 = Struct_2(~min(select(vec3<u32>(global1.a.x, 4294967295u, global1.a.x), vec3<u32>(u_input.b, 0u, 0u), vec3<bool>(var_0.x, true, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a.x, 5u)], 5u)], global1.a.x), vec3<u32>(global1.a.x, u_input.b, global0[_wgslsmith_index_u32(u_input.d.x, 5u)])) & reverseBits(global1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-719f * global1.b.x), _wgslsmith_div_f32(global1.b.x, global1.b.x), _wgslsmith_f_op_f32(-global1.b.x)), global1.b)) + global1.b));
    var var_2 = Struct_2(vec3<u32>(func_2(!(!var_0.x), _wgslsmith_add_u32(~31513u, var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x - global1.b.x) - _wgslsmith_f_op_f32(sign(var_1.b.x))), vec4<u32>(3620u, _wgslsmith_sub_u32(38128u, 14477u), _wgslsmith_div_u32(global1.a.x, 25862u), _wgslsmith_dot_vec2_u32(var_1.a.zz, u_input.d.yy))).a, ~global0[_wgslsmith_index_u32(~(~1u), 5u)], _wgslsmith_dot_vec2_u32(global1.a.zy, reverseBits(u_input.d.yw)) | ~global0[_wgslsmith_index_u32(var_1.a.x, 5u)]), _wgslsmith_f_op_vec3_f32(select(global1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.b))), true)));
    var var_3 = Struct_3(abs(4294967295u));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(197f, var_1.b.x, -1741f, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, 382f, -498f, -510f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, 503f, 277f, var_2.b.x), vec4<f32>(global1.b.x, global1.b.x, var_1.b.x, global1.b.x))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, 455f, var_2.b.x, 857f))))), !var_0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.b.x, -368f, global1.b.x, 999f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, var_2.b.x, global1.b.x, -318f)), vec4<f32>(2067f, -228f, var_1.b.x, -322f), !vec4<bool>(var_0.x, var_0.x, true, var_0.x))))));
    var_3 = func_2(true, var_1.a.x, _wgslsmith_f_op_f32(ceil(735f)), vec4<u32>(~_wgslsmith_div_u32(~var_3.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.a.x), vec2<u32>(4294967295u, var_3.a))), 0u, global1.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(global1.a.x, 5u)]), var_2.a)));
    var var_5 = Struct_1(select(vec2<bool>(all(vec2<bool>(var_0.x, var_0.x)), u_input.a != (u_input.a ^ u_input.a)), vec2<bool>(true, true), var_0.x), u_input.d.xw, countOneBits(reverseBits(reverseBits(u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - -804f)), _wgslsmith_f_op_f32(439f - var_1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(u_input.c.x, _wgslsmith_mod_i32(~u_input.c.x, _wgslsmith_add_i32(u_input.c.x, -2147483647i)), u_input.c.x), vec3<i32>(_wgslsmith_div_i32(u_input.a, 14115i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 25193i), vec2<i32>(u_input.a, u_input.a)), u_input.a) >> (vec3<u32>(global1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_5.b.x, u_input.b, global0[_wgslsmith_index_u32(0u, 5u)]), vec3<u32>(u_input.d.x, var_5.b.x, var_5.c.x)), ~35655u) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.d, var_1.b.x)) * var_4.yz)), vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(round(387f)))), var_5.e, _wgslsmith_div_f32(var_1.b.x, var_1.b.x), 463f), u_input.d.wzw << (min(vec3<u32>(_wgslsmith_div_u32(0u, var_1.a.x), 9352u, var_2.a.x), reverseBits(var_5.c.zzz)) % vec3<u32>(32u)), 4294967295u ^ (_wgslsmith_mult_u32(8204u << (var_2.a.x % 32u), 0u) << (73875u % 32u)));
}

