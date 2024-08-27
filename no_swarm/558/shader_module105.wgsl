struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 3>;

var<private> global3: Struct_1 = Struct_1(60462u, 592f, vec4<f32>(-1000f, 151f, -1016f, 1000f));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> u32 {
    global2 = array<u32, 3>();
    var var_0 = vec3<bool>(any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false))), true)), select(false, true, true), true);
    var var_1 = Struct_2(u_input.a, true);
    let var_2 = Struct_2(min(39681u, 33942u), !all(vec2<bool>(select(false, true, var_1.b), var_1.b)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(527f - _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -2215f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1371f)))) * _wgslsmith_f_op_f32(round(global1.b))), 1558f, _wgslsmith_div_f32(772f, _wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(1016f * _wgslsmith_div_f32(-501f, global3.c.x)), any(!vec4<bool>(var_1.b, true, var_1.b, false))))));
    return global2[_wgslsmith_index_u32(~1u, 3u)];
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(reverseBits(_wgslsmith_clamp_u32(arg_1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 89878u), arg_1.zz), global1.a >> (global1.a % 32u))), false);
    let var_1 = vec2<u32>(func_3(), u_input.a);
    global2 = array<u32, 3>();
    var var_2 = ~(~(~_wgslsmith_div_vec2_i32(vec2<i32>(6945i, -23128i), firstTrailingBit(vec2<i32>(arg_0, 27010i)))));
    var var_3 = !(!select(!select(vec4<bool>(var_0.b, var_0.b, var_0.b, true), vec4<bool>(var_0.b, false, false, var_0.b), vec4<bool>(true, var_0.b, false, false)), vec4<bool>(arg_0 >= var_2.x, var_2.x > var_2.x, true, arg_1.x <= 4294967295u), 1i <= _wgslsmith_mult_i32(arg_0, 1906i)));
    return Struct_2(var_1.x, false);
}

fn func_1(arg_0: bool, arg_1: i32) -> u32 {
    let var_0 = func_2(arg_1, (vec4<u32>(1u, ~u_input.a, ~4294967295u, ~global1.a) & _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1.a, 0u, global3.a, global1.a), vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], global3.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 3u)], 3u)], 3u)], 0u)), vec4<u32>(15270u, global3.a, u_input.a, global1.a))) & min(vec4<u32>(reverseBits(92206u), 1u, ~global1.a, max(12850u, 24418u)), ~vec4<u32>(global2[_wgslsmith_index_u32(25759u, 3u)], 1u, u_input.a, global1.a)));
    global2 = array<u32, 3>();
    var var_1 = Struct_3(Struct_2(func_2(-_wgslsmith_sub_i32(arg_1, -2147483647i), firstLeadingBit(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(var_0.a, 3u)], 1u, global1.a)) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 24534u, 0u, 1u), vec4<u32>(global1.a, 60307u, 18058u, 22927u))).a, arg_0), Struct_1(global2[_wgslsmith_index_u32(firstLeadingBit(abs(abs(global1.a))), 3u)], global1.c.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(551f, -1184f, 192f, -119f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, -1088f, global1.b, -864f) + vec4<f32>(global1.b, -173f, -646f, global3.b)), all(vec3<bool>(var_0.b, var_0.b, false)))))), Struct_2(_wgslsmith_mod_u32(121u, u_input.a), arg_0), Struct_2(~_wgslsmith_mult_u32(countOneBits(4294967295u), 1u), arg_0), Struct_2(var_0.a, !any(!vec3<bool>(false, arg_0, true))));
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(944f, -1374f)) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(-var_1.b.c.x), _wgslsmith_f_op_f32(exp2(var_1.b.b)), 658f)) - vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.b.c.x)), global1.c.x)), 1000f, var_1.b.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1491f))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2239f, var_1.b.c.x)) * -2387f) - _wgslsmith_f_op_f32(ceil(-135f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(698f, global3.b))))), global3.c.xw));
    return ~u_input.a;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: i32) -> vec3<u32> {
    var var_0 = -(~(vec4<i32>(~(-15224i), countOneBits(arg_2), abs(40451i), -arg_2) | _wgslsmith_mod_vec4_i32(max(vec4<i32>(arg_2, -21879i, -17905i, -2147483647i), vec4<i32>(2112i, arg_2, arg_2, arg_2)), firstTrailingBit(vec4<i32>(arg_2, arg_2, 1i, arg_2)))));
    var var_1 = Struct_3(func_2(var_0.x, ~vec4<u32>(global2[_wgslsmith_index_u32(4444u, 3u)] | global1.a, ~1u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(u_input.a, 3u)], 125945u), 23999u)), Struct_1(0u, 145f, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(global1.b)))), 833f, global0.x, global3.b)), func_2(-1i, abs(vec4<u32>(arg_1, _wgslsmith_div_u32(u_input.a, 10455u), func_2(3540i, vec4<u32>(arg_1, 19285u, global1.a, global1.a)).a, 5759u))), func_2(-28409i, _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_1, global1.a & arg_1, ~u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(33958u, 1u, global2[_wgslsmith_index_u32(global1.a, 3u)]), vec3<u32>(global3.a, arg_0, 0u)), 3u)]), vec4<u32>(firstLeadingBit(4294967295u), firstLeadingBit(49132u), arg_0, ~23675u))), func_2(arg_2, ~(~vec4<u32>(global1.a, arg_1, global3.a, global3.a))));
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(-5175i, -7100i), arg_2 ^ (-_wgslsmith_div_i32(arg_2, arg_2) & arg_2), -55563i, var_0.x);
    global1 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(arg_1, global1.a, global2[_wgslsmith_index_u32(4294967295u, 3u)])), vec3<u32>(8316u, firstLeadingBit(1u), ~54858u)), vec3<u32>(~global1.a | _wgslsmith_add_u32(arg_1, 4294967295u), arg_0, arg_0)), var_1.b.c.x, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-253f + _wgslsmith_f_op_f32(-global3.c.x)), global0.x, _wgslsmith_f_op_f32(floor(var_1.b.c.x)), _wgslsmith_f_op_f32(step(-566f, _wgslsmith_f_op_f32(f32(-1f) * -386f)))), global1.c)));
    var var_3 = _wgslsmith_sub_vec4_u32((vec4<u32>(~5058u, 11006u, func_2(var_2.x, vec4<u32>(u_input.a, arg_0, 0u, global3.a)).a, ~19092u) | vec4<u32>(32640u, _wgslsmith_dot_vec4_u32(vec4<u32>(1849u, u_input.a, 21233u, 1u), vec4<u32>(0u, global3.a, u_input.a, arg_1)), global2[_wgslsmith_index_u32(u_input.a, 3u)], 1u)) & select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 1572u, 4294967295u, 11877u) & vec4<u32>(u_input.a, 43545u, global1.a, 0u), select(vec4<u32>(8703u, 4294967295u, u_input.a, global2[_wgslsmith_index_u32(arg_1, 3u)]), vec4<u32>(1u, global2[_wgslsmith_index_u32(global3.a, 3u)], var_1.d.a, arg_0), false)), ~firstTrailingBit(vec4<u32>(arg_0, 25322u, global1.a, 0u)), var_0.x >= -2147483647i), min(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d.a, 12026u, 1u, 0u), abs(vec4<u32>(global3.a, 1u, arg_0, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 81749u, global2[_wgslsmith_index_u32(8296u, 3u)], global1.a), vec4<u32>(24086u, 4294967295u, global3.a, 12362u)))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(10762u, arg_0, arg_0, var_1.a.a), vec4<u32>(57995u, arg_1, u_input.a, 30042u)), ~vec4<u32>(global2[_wgslsmith_index_u32(0u, 3u)], global1.a, arg_0, 57820u), vec4<u32>(global2[_wgslsmith_index_u32(0u, 3u)], global3.a, global1.a, global1.a))));
    return _wgslsmith_sub_vec3_u32(vec3<u32>(~(_wgslsmith_dot_vec3_u32(vec3<u32>(2954u, 4294967295u, var_1.e.a), var_3.ywz) & firstLeadingBit(u_input.a)), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 51028u), ~arg_1), max(countOneBits(global3.a), ~(1u ^ global2[_wgslsmith_index_u32(0u, 3u)]))), (vec3<u32>(~u_input.a, _wgslsmith_mod_u32(1u, arg_1), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(9467u, global2[_wgslsmith_index_u32(0u, 3u)]), 3u)]) | firstTrailingBit(var_3.zyw)) | ~abs(~vec3<u32>(0u, 468u, global3.a)));
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    var var_1 = vec3<bool>(select(true, var_0, global3.a <= abs(~arg_2.a)), true, false & (27848u > countOneBits(global3.a)));
    var var_2 = Struct_3(Struct_2(1u, false), Struct_1(firstTrailingBit(~global2[_wgslsmith_index_u32(0u, 3u)]) | (1u >> ((arg_2.a >> (1u % 32u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1573f - -2288f) * _wgslsmith_div_f32(global0.x, global1.c.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1.c)))))), Struct_2(45383u, false), func_2(-(~(-2147483647i)), vec4<u32>(func_3(), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4212u, 3u)], 3u)], 29539u, 62321u >> (0u % 32u)) | vec4<u32>(abs(global1.a), global2[_wgslsmith_index_u32(37893u, 3u)] ^ 15713u, 60120u | u_input.a, func_1(false, -57192i))), Struct_2(~u_input.a, var_0));
    global1 = var_2.b;
    var var_3 = arg_2;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(30575u, _wgslsmith_mod_u32(func_1(true, max(2147483647i, 2147483647i)), global1.a), 16729i), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-491f, _wgslsmith_f_op_f32(-355f - _wgslsmith_f_op_f32(min(1825f, global0.x)))))), Struct_2(~_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(49798u, 3u)], 3u)], global2[_wgslsmith_index_u32(global1.a, 3u)], 0u), vec4<u32>(7168u, global1.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], global3.a))), all(vec2<bool>(false, false)) & true));
    var var_0 = -(~(-(~countOneBits(vec3<i32>(-8745i, -1i, 1i)))));
    var var_1 = func_2(var_0.x, ~vec4<u32>(_wgslsmith_mod_u32(~1u, ~u_input.a), global1.a, ~global2[_wgslsmith_index_u32(global3.a, 3u)] & _wgslsmith_mult_u32(48405u, 23137u), u_input.a));
    var var_2 = 46394i;
    global2 = array<u32, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(26638i, _wgslsmith_div_i32(~_wgslsmith_mod_i32(2147483647i, 2147483647i), _wgslsmith_dot_vec2_i32(var_0.xy, var_0.yy)), -3753i), -177f, 115442u, vec3<f32>(_wgslsmith_f_op_f32(-598f * _wgslsmith_f_op_f32(floor(-201f))), -233f, global0.x), select(~reverseBits(vec4<u32>(var_1.a, 4294967295u, 4294967295u, 1u)), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29440u, 3u)] << (global1.a % 32u), 3u)], global1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(13316u, 0u, 1u, global2[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<u32>(1u, u_input.a, 46626u, 41304u)), u_input.a) | vec4<u32>(u_input.a, 35518u, ~u_input.a, func_1(false, var_0.x)), var_1.b));
}

