struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, false, false, false, true, false, true, true, true, true, true, true, true, false, true, true, true, true, false, false, false, false, false, true, false, true, false, false, true, true, false, true);

var<private> global1: array<u32, 23> = array<u32, 23>(1u, 0u, 55186u, 43117u, 0u, 63945u, 0u, 4294967295u, 17806u, 60348u, 15225u, 44422u, 0u, 0u, 0u, 4294967295u, 69198u, 0u, 45466u, 0u, 0u, 127822u, 4294967295u);

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(false, vec3<i32>(1i, -10301i, 2147483647i)), Struct_1(true, vec3<i32>(0i, 79978i, i32(-2147483648))), Struct_1(false, vec3<i32>(-1i, -29930i, 2147483647i)), Struct_1(true, vec3<i32>(16091i, 14971i, -1323i)), Struct_1(false, vec3<i32>(-10423i, -1i, 36365i)), Struct_1(true, vec3<i32>(30736i, -45761i, 3946i)), Struct_1(true, vec3<i32>(20495i, -1i, 0i)), Struct_1(true, vec3<i32>(1i, 0i, 36000i)), Struct_1(true, vec3<i32>(0i, i32(-2147483648), 6430i)), Struct_1(true, vec3<i32>(65665i, 58312i, -11269i)), Struct_1(false, vec3<i32>(-21185i, 29089i, -68670i)), Struct_1(false, vec3<i32>(i32(-2147483648), i32(-2147483648), 1i)), Struct_1(true, vec3<i32>(-1i, 13191i, -1i)), Struct_1(true, vec3<i32>(13581i, -105i, 28638i)), Struct_1(true, vec3<i32>(-71676i, -5331i, 1i)), Struct_1(false, vec3<i32>(34361i, 2147483647i, -9314i)), Struct_1(true, vec3<i32>(61836i, -62680i, 1i)), Struct_1(true, vec3<i32>(-19131i, 20210i, 2147483647i)), Struct_1(true, vec3<i32>(3046i, 2147483647i, 0i)), Struct_1(false, vec3<i32>(i32(-2147483648), -25244i, -32360i)), Struct_1(true, vec3<i32>(3403i, i32(-2147483648), 46625i)), Struct_1(true, vec3<i32>(-35601i, 49930i, 2147483647i)));

var<private> global3: array<u32, 3>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    var var_0 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(5079u, 22u)], Struct_1(_wgslsmith_sub_i32(-2147483647i, arg_0) == 1i, vec3<i32>(0i, u_input.c, arg_0) >> (vec3<u32>(4294967295u, 85226u, 0u) % vec3<u32>(32u)))), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(82773u, 7316u, global1[_wgslsmith_index_u32(0u, 23u)], 26830u), ~vec4<u32>(8856u, 47266u, global3[_wgslsmith_index_u32(34036u, 3u)], 0u))), 1u >> (1u % 32u)), 3u)], 22u)]);
    global0 = array<bool, 32>();
    global2 = array<Struct_1, 22>();
    var var_1 = Struct_1((true || (abs(arg_0) < arg_0)) || any(select(select(vec2<bool>(false, true), vec2<bool>(var_0.b.a, var_0.a.b.a), global0[_wgslsmith_index_u32(1u, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 3u)], 23u)], 32u)], global0[_wgslsmith_index_u32(2423u, 32u)]), false)), firstLeadingBit(u_input.a.xzz));
    var var_2 = _wgslsmith_f_op_f32(abs(arg_1.x));
    return countOneBits(-(~(-var_1.b.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_2(Struct_1(!(false & global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 32u)]), vec3<i32>(11674i, 2147483647i, func_3(u_input.d, vec3<f32>(-215f, 715f, 1377f)))), global2[_wgslsmith_index_u32(85399u, 22u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(55626u, 3u)]), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37332u, 23u)], 23u)], global3[_wgslsmith_index_u32(6317u, 3u)])), vec2<u32>(~4294967295u, global1[_wgslsmith_index_u32(7375u, 23u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51703u, 3u)], 23u)], 23u)])) & 0u, 22u)]);
    let var_1 = 1u;
    let var_2 = 89784u;
    let var_3 = true;
    return global2[_wgslsmith_index_u32(0u, 22u)];
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec4<u32>(select(_wgslsmith_mod_u32(37114u, ~(~global1[_wgslsmith_index_u32(66223u, 23u)])), _wgslsmith_div_u32(~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42117u, 3u)], 23u)] << (12142u % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(4294967295u, 3u)] ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80136u, 23u)], 3u)], 3u)], 3u)]), 23u)], 23u)]), true), 43836u, 1u, _wgslsmith_dot_vec2_u32(~reverseBits(abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)], 23u)], 23u)], 54275u))), vec2<u32>(~countOneBits(global3[_wgslsmith_index_u32(46724u, 3u)]), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 23u)], 4294967295u))));
    global2 = array<Struct_1, 22>();
    var var_1 = _wgslsmith_mult_u32(var_0.x, _wgslsmith_mod_u32(~select(5750u ^ global3[_wgslsmith_index_u32(73949u, 3u)], 81014u, true), ~var_0.x));
    var var_2 = vec4<i32>(arg_2.b.b.x, -arg_2.a.b.x, -(~arg_2.a.b.x), -1i);
    global0 = array<bool, 32>();
    return Struct_2(Struct_1(false, -u_input.a.xwy), Struct_1(select(global0[_wgslsmith_index_u32(~0u, 32u)], select(-95060i, -17288i, true) >= arg_2.a.b.x, any(select(vec3<bool>(arg_1, arg_1, global0[_wgslsmith_index_u32(var_0.x, 32u)]), vec3<bool>(false, arg_2.a.a, arg_1), vec3<bool>(true, arg_2.b.a, true)))), max(u_input.b, arg_2.a.b)));
}

fn func_1(arg_0: u32, arg_1: u32) -> vec3<bool> {
    let var_0 = vec2<bool>(true, true);
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(249f)))))) * -1000f), global0[_wgslsmith_index_u32(0u, 32u)], Struct_2(func_2(), func_2()));
    let var_2 = var_1.b;
    let var_3 = Struct_2(var_1.b, Struct_1(!(!(49063u != arg_0)), var_1.a.b));
    global2 = array<Struct_1, 22>();
    return select(!(!select(vec3<bool>(var_3.a.a, false, true), vec3<bool>(false, var_1.b.a, var_3.a.a), !vec3<bool>(var_2.a, false, var_0.x))), !vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 3u)] <= global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 6796u), 3u)], any(vec3<bool>(true, false, var_2.a))), vec3<bool>(var_0.x, true, true));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: i32) -> Struct_3 {
    global2 = array<Struct_1, 22>();
    var var_0 = func_1(global1[_wgslsmith_index_u32(~abs(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16766u, 23u)], 23u)])), 23u)] & 29978u, 1u).x;
    let var_1 = vec4<i32>(max(1i, ~_wgslsmith_dot_vec3_i32(u_input.b, _wgslsmith_clamp_vec3_i32(u_input.a.wxy, u_input.a.zzz, vec3<i32>(1i, 24523i, -65649i)))), arg_0.x, -7208i, arg_3);
    global1 = array<u32, 23>();
    var_0 = arg_2.x & arg_1.x;
    return Struct_3(Struct_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(67289u, 23u)] ^ global1[_wgslsmith_index_u32(2119u, 23u)], 22u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(1640u, 23u)], global3[_wgslsmith_index_u32(108712u, 3u)]) & vec3<u32>(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 23u)], 3u)], 35416u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(27619u, 23u)], global3[_wgslsmith_index_u32(1u, 3u)]), vec3<u32>(45465u, 1u, global3[_wgslsmith_index_u32(45795u, 3u)]) | vec3<u32>(20718u, global3[_wgslsmith_index_u32(1u, 3u)], 4294967295u)), ~reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15745u, 23u)], 23u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43220u, 23u)], 3u)], 3u)], 4294967295u))), 22u)]), Struct_1(true, ~vec3<i32>(19232i, arg_0.x, u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.b.xz, select(func_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)], global1[_wgslsmith_index_u32(0u, 23u)]) << (4294967295u % 32u), 3u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47831u, 3u)], 3u)], 3u)], 23u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 3u)], 3u)], 3u)]), ~vec4<u32>(23225u, 48883u, global1[_wgslsmith_index_u32(0u, 23u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 3u)])), 23u)], 3u)]), !select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10503u, 3u)], 32u)]), !vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50580u, 23u)], 23u)], 3u)], 3u)], 32u)], false, true), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 3u)], 3u)], 23u)], 23u)], 32u)]), select(false, any(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 32u)], false, true, false)), false)), select(!vec3<bool>(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 32u)], true, global0[_wgslsmith_index_u32(1u, 32u)]), !(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 23u)], 32u)])), vec3<bool>(true, false || global0[_wgslsmith_index_u32(0u, 32u)], func_2().a)), u_input.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(929f, 654f, -2559f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(920f)), _wgslsmith_f_op_f32(f32(-1f) * -328f), _wgslsmith_div_f32(1315f, -2053f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-594f, -342f, -828f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(616f, -1000f, -1000f) - vec3<f32>(-375f, 1138f, 1182f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1009f, -723f, 1565f), vec3<f32>(911f, 1331f, 1000f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-317f, -508f, -199f), vec3<f32>(-244f, 2349f, -1000f), true))), vec3<f32>(-501f, _wgslsmith_f_op_f32(-547f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -557f)), func_5(vec2<i32>(var_0.b.b.x, u_input.d), func_1(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50300u, 3u)], 23u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6042u, 3u)], 23u)]), select(vec3<bool>(var_0.b.a, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(31580u, 32u)], false), var_0.a.a.a), var_0.b.b.x).b.a))));
    global1 = array<u32, 23>();
    var var_2 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-546f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 1619f))))));
    let var_3 = select(vec2<bool>(!(2147483647i != u_input.c) == false, !select(true || global0[_wgslsmith_index_u32(1u, 32u)], false, !global0[_wgslsmith_index_u32(1u, 32u)])), !select(vec2<bool>(-1i == u_input.b.x, select(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30908u, 3u)], 3u)], 32u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43078u, 3u)], 23u)], 32u)], false)), func_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~96495u, 23u)], 23u)], ~global1[_wgslsmith_index_u32(4294967295u, 23u)]).zx, var_1.x != _wgslsmith_f_op_f32(trunc(182f))), !vec2<bool>(global0[_wgslsmith_index_u32(37262u, 32u)], !var_0.b.a));
    var var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(81721u, 8436u >> (global3[_wgslsmith_index_u32(0u, 3u)] % 32u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 4294967295u, 1u, 0u)), vec4<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 23u)], 0u), ~global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(68516u, 23u)], 3u)], 23u)], 3u)], 3u)], 3u)], 23u)], _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 4294967295u), ~global1[_wgslsmith_index_u32(0u, 23u)])), 23u)]), ~firstTrailingBit(~(vec3<u32>(82190u, 17555u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28398u, 23u)], 23u)], 23u)]) >> (vec3<u32>(56266u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10635u, 3u)], 3u)], 20252u) % vec3<u32>(32u)))));
    let var_5 = Struct_1(var_0.b.a, var_0.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(var_4.yz, _wgslsmith_add_vec2_u32(var_4.xz, var_4.xx)), 1i);
}

