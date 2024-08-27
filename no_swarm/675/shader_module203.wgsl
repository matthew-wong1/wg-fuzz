struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    return 1171f;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: f32) -> vec4<bool> {
    global2 = Struct_1(-37819i, 3546i);
    global1 = !select(select(-765f < _wgslsmith_f_op_f32(arg_0.x * arg_0.x), !all(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), arg_1), true, any(!vec2<bool>(true, arg_1)));
    global1 = arg_1;
    var var_0 = Struct_1(firstLeadingBit(-(~global0.a)), ~(-_wgslsmith_div_i32(global2.a, max(-95420i, global0.a))));
    let var_1 = 693f;
    return select(select(!select(select(vec4<bool>(true, false, arg_1, false), vec4<bool>(true, arg_1, arg_1, false), false), vec4<bool>(true, false, arg_1, arg_1), true), select(vec4<bool>(21147i == global0.b, !arg_1, true, arg_1), !vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(17973u >= u_input.a, !arg_1, all(vec4<bool>(arg_1, arg_1, arg_1, false)), arg_1)), select(!(!vec4<bool>(true, true, arg_1, true)), vec4<bool>(select(arg_1, arg_1, false), any(vec4<bool>(arg_1, false, false, arg_1)), any(vec3<bool>(true, false, arg_1)), false || arg_1), arg_1 | (global0.b >= global0.b))), select(select(vec4<bool>(arg_1, true, any(vec2<bool>(arg_1, false)), all(vec3<bool>(arg_1, false, false))), vec4<bool>(any(vec2<bool>(arg_1, arg_1)), true, any(vec2<bool>(arg_1, arg_1)), false), vec4<bool>(false, false & arg_1, false, any(vec3<bool>(false, arg_1, true)))), !(!vec4<bool>(arg_1, true, false, arg_1)), select(vec4<bool>(global0.b > global2.a, u_input.a > 21207u, arg_1, u_input.a >= 4294967295u), vec4<bool>(all(vec2<bool>(arg_1, arg_1)), false, arg_1, true), vec4<bool>(!arg_1, true, u_input.a < 8565u, any(vec2<bool>(true, arg_1))))), 2147483647i == var_0.a);
}

fn func_2() -> vec4<bool> {
    var var_0 = !any(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), true));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(547f, _wgslsmith_f_op_f32(ceil(-554f)))), -1060f), 131f, 1476f);
    let var_2 = Struct_1(_wgslsmith_mod_i32(0i, global2.b), _wgslsmith_sub_i32(global0.a, 2147483647i));
    global0 = var_2;
    let var_3 = var_2.a;
    return !select(!vec4<bool>(all(vec2<bool>(false, false)), true, select(true, true, true), true), func_4(vec2<f32>(_wgslsmith_div_f32(var_1.x, -831f), _wgslsmith_f_op_f32(trunc(var_1.x))), true, _wgslsmith_f_op_f32(2129f + _wgslsmith_f_op_f32(func_3(vec4<i32>(24448i, -48036i, -18188i, 2147483647i))))), vec4<bool>(true, true, true, true));
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, ~(~u_input.a) ^ (max(u_input.a, u_input.a) >> (0u % 32u)), 1u, 4294967295u), ~vec4<u32>(18105u, 0u, 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(8766u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 12844u)), _wgslsmith_mod_vec3_u32(vec3<u32>(7419u, 1686u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u)))));
    let var_1 = !select(vec4<bool>(true, true, true, true), !select(func_2(), vec4<bool>(true, true, true, true), true), vec4<bool>(~var_0.x <= _wgslsmith_mult_u32(var_0.x, 6130u), false, select(false, true, true), true || (arg_0.x >= -545f)));
    global1 = -global2.b == ~(-(~global2.b));
    var var_2 = Struct_1(1i, global2.b);
    global2 = Struct_1(-2147483647i, 46277i);
    return Struct_2(Struct_1(global2.a, abs(3780i) | global2.b), Struct_1(max(var_2.b, var_2.b), -23545i), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(40176u, var_0.x, u_input.a, u_input.a)), ~firstTrailingBit(var_0 & var_0)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> i32 {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1270f, -1000f, 131f)) + vec3<f32>(-470f, 779f, 1080f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-660f, -1950f, 1585f) * vec3<f32>(-992f, 646f, 706f)))))));
    let var_1 = var_0;
    global2 = Struct_1(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(855f, 448f, 1283f))), vec3<f32>(-424f, 378f, -1266f))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(538f, -755f, -1000f), vec3<f32>(954f, 648f, -412f)))))).b.b, global2.a);
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1352f, 130f, 216f))))))).b;
    let var_3 = vec4<bool>(arg_2, _wgslsmith_div_u32(var_1.c, ~1u) != _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~1u, var_1.c | 2314u, 1u), ~func_1(vec3<f32>(-1415f, -493f, -893f)).c), false, false);
    return abs(select(abs(25666i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2.b, -29131i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, var_0.a.a, -1i), vec3<i32>(global2.b, 22999i, var_1.b.b))), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.a, 2147483647i, 0i, arg_3.b), vec4<i32>(-54673i, var_0.b.a, -1i, arg_1.a.a)))), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    global1 = true && !any(vec3<bool>(true, true, true));
    var var_0 = -52718i & func_5(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1156f, -2375f, -494f) * vec3<f32>(-153f, 1241f, -150f)))), Struct_2(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-794f, 1379f, -1283f))).a, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1136f, -2059f))).a, max(u_input.a, ~24530u)), u_input.a >= 4294967295u, func_1(vec3<f32>(-475f, _wgslsmith_f_op_f32(-622f - 1000f), -422f)).b);
    let var_1 = func_2().zz;
    global2 = Struct_1(32136i, -2147483647i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(625f * -2225f) - _wgslsmith_f_op_f32(trunc(-1531f)));
    var var_3 = Struct_1(firstTrailingBit(~func_5(func_1(vec3<f32>(var_2, -2005f, -1206f)), Struct_2(Struct_1(12912i, global0.a), Struct_1(global0.b, -1i), u_input.a), var_1.x, func_1(vec3<f32>(-128f, var_2, var_2)).a)), func_5(func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1000f, var_2), vec3<f32>(var_2, -316f, var_2))))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(374f, var_2, var_2) * vec3<f32>(var_2, 543f, -1240f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2, 1384f)))), !func_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1019f, var_2))), func_4(vec2<f32>(-289f, var_2), var_1.x, var_2).x, -1676f).x, Struct_1(global0.a, ~(-global2.b))));
    global2 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, 2451f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-660f, 1164f, var_2)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1109f, -339f, var_2) + vec3<f32>(var_2, -897f, var_2)), vec3<f32>(375f, 1371f, -1000f), vec3<bool>(var_1.x, false, true))))))).a;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) + vec2<f32>(_wgslsmith_f_op_f32(-1105f + 918f), _wgslsmith_f_op_f32(min(var_2, var_2)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(4294967295u & firstTrailingBit(0u)), vec3<i32>(var_3.a, var_3.a, abs(_wgslsmith_add_i32(1i, 28345i))), u_input.a, select(vec2<i32>(-global2.a ^ global2.a, reverseBits(global2.b)), countOneBits(vec2<i32>(_wgslsmith_div_i32(2147483647i, 30965i), global0.a & -2147483647i)), true));
}

