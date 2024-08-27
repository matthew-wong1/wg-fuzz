struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<f32, 7> = array<f32, 7>(-1000f, -1000f, 1611f, 512f, 1027f, 144f, -1429f);

var<private> global2: Struct_1 = Struct_1(1395f, vec2<bool>(true, false), vec4<i32>(i32(-2147483648), i32(-2147483648), 38695i, -3976i), false);

var<private> global3: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2910f, _wgslsmith_f_op_f32(select(-352f, _wgslsmith_f_op_f32(exp2(arg_3.a)), any(arg_3.b))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, -255f)) - _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 7u)], 356f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 7u)], global2.a))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global1[_wgslsmith_index_u32(1u, 7u)]) + vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], arg_0.a.a))))))));
    var var_1 = _wgslsmith_sub_u32(u_input.d, _wgslsmith_mult_u32(firstTrailingBit(reverseBits(0u) << (firstLeadingBit(59647u) % 32u)), 1u));
    global0 = u_input.a;
    global0 = ~countOneBits(~u_input.a);
    global0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(39314u, ~u_input.d << (select(u_input.d, 25739u, arg_2.a.d) % 32u), ~u_input.a), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(95006u, u_input.a, 23357u), vec3<u32>(~20799u, _wgslsmith_mod_u32(u_input.a, u_input.d), firstLeadingBit(1u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - -319f))) - -1263f));
}

fn func_2(arg_0: bool) -> bool {
    global2 = Struct_1(global2.a, !vec2<bool>(global2.b.x, _wgslsmith_div_f32(394f, global2.a) > _wgslsmith_f_op_f32(f32(-1f) * -299f)), global2.c, !(!((u_input.d ^ 4294967295u) == 35861u)));
    var var_0 = !(!(arg_0 && all(!vec3<bool>(true, arg_0, false))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -351f), global2.a)), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(-1000f, vec2<bool>(arg_0, true), vec4<i32>(-2147483647i, global2.c.x, global2.c.x, -6150i), arg_0), Struct_1(-833f, vec2<bool>(false, global2.b.x), vec4<i32>(u_input.c, 0i, u_input.b, 0i), false)), !arg_0, Struct_2(Struct_1(-2192f, global2.b, global2.c, false), Struct_1(global1[_wgslsmith_index_u32(u_input.d, 7u)], vec2<bool>(false, false), global2.c, global2.d)), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 7u)], vec2<bool>(arg_0, true), vec4<i32>(u_input.e, 32119i, u_input.e, 0i), arg_0)))) - global2.a));
    var var_2 = vec2<u32>(1u, ~(~firstLeadingBit(u_input.a >> (u_input.d % 32u))));
    var var_3 = global2.c.xw;
    return all(select(vec4<bool>(true, true, 2147483647i > _wgslsmith_mod_i32(global2.c.x, 2147483647i), arg_0), vec4<bool>(true, !(var_3.x < u_input.c), true, all(!vec4<bool>(global2.b.x, arg_0, false, global2.b.x))), ((global2.c.x ^ 13737i) ^ countOneBits(global2.c.x)) <= -48160i));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_3) -> f32 {
    let var_0 = arg_3;
    let var_1 = !(!(!vec2<bool>(true, !arg_1.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(1839f)), arg_2, 418f), arg_0)));
    var var_3 = arg_3.a.wx;
    global3 = abs(11445i);
    return _wgslsmith_f_op_f32(round(949f));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: i32) -> f32 {
    global2 = Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1000f, -866f) - vec3<f32>(-653f, 1139f, -1272f)) + vec3<f32>(global1[_wgslsmith_index_u32(32469u, 7u)], 743f, global1[_wgslsmith_index_u32(u_input.d, 7u)])))), select(!global2.b, !vec2<bool>(arg_1, global2.d), func_2(global2.d) == arg_1), arg_0.x, Struct_3(abs(vec4<u32>(0u, 95607u, u_input.d, u_input.a))))), vec2<bool>(true, true), global2.c, global2.b.x);
    let var_0 = Struct_2(Struct_1(-1458f, select(select(!global2.b, !global2.b, arg_1 || true), select(select(vec2<bool>(global2.b.x, global2.d), vec2<bool>(true, global2.b.x), global2.b), !vec2<bool>(true, global2.d), global2.b.x), global2.b), global2.c, true), Struct_1(global1[_wgslsmith_index_u32(max(42343u, _wgslsmith_mult_u32(~30459u, u_input.a)), 7u)], select(vec2<bool>(arg_1, global1[_wgslsmith_index_u32(54754u, 7u)] != -906f), !global2.b, !(!global2.b.x)), global2.c, global2.b.x));
    let var_1 = !(any(global2.b) & (global1[_wgslsmith_index_u32(~(u_input.a >> (u_input.d % 32u)), 7u)] == _wgslsmith_f_op_f32(var_0.b.a - global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.d, 0u), 7u)])));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a), 207f));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = arg_2;
    global0 = 1u;
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_div_u32(0u, arg_1.a.x)), 1u, 35153u), ~arg_1.a.yzw);
    var var_1 = true & func_2(arg_2.d);
    let var_2 = vec4<i32>((_wgslsmith_sub_i32(u_input.b, firstTrailingBit(arg_3)) ^ max(var_0.c.x, ~6485i)) << (arg_1.a.x % 32u), global2.c.x, -1i, ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.c, -2147483647i), arg_2.c.x));
    return firstTrailingBit(0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.d, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)])), 760f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-595f, global1[_wgslsmith_index_u32(u_input.d, 7u)])))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(206f, 1201f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, -735f))), select(global2.b, global2.b, any(vec4<bool>(true, true, false, true)))))), Struct_3(vec4<u32>(u_input.a, u_input.a >> (u_input.a % 32u), u_input.d, u_input.a)), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<f32>(1000f, global1[_wgslsmith_index_u32(u_input.a, 7u)]), global2.d, global2.c.x)) * 415f), _wgslsmith_f_op_f32(step(1066f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(78124u, 7u)])))), select(vec2<bool>(true, false), !select(global2.b, global2.b, global2.b.x), select(vec2<bool>(global2.d, global2.b.x), global2.b, !global2.b)), abs(abs(_wgslsmith_clamp_vec4_i32(global2.c, global2.c, global2.c))), !all(global2.b) == global2.b.x), countOneBits(abs(firstLeadingBit(-u_input.e))));
    var var_0 = vec2<f32>(-261f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + global2.a) - global2.a));
    global1 = array<f32, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.d), vec4<u32>(2797u, 4294967295u, 1u, u_input.d))), 7u)]), 445f, _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(func_1(vec2<f32>(-897f, -691f), global2.d, u_input.c | -48994i))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(30310u, u_input.a, 1997u, 77022u), vec4<u32>(u_input.a, u_input.a, 1u, 23307u)), 7u)])), vec4<f32>(-1029f, global1[_wgslsmith_index_u32(u_input.d, 7u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 7u)] * 1046f) + _wgslsmith_f_op_f32(floor(-1388f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 7u)]), global1[_wgslsmith_index_u32(u_input.a | u_input.a, 7u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(vec3<f32>(-959f, var_0.x, 795f), select(global2.b, global2.b, global2.d), _wgslsmith_f_op_f32(-var_0.x), Struct_3(vec4<u32>(u_input.a, 6408u, u_input.a, u_input.d)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_0.x, global2.a))))))), global2.b.x));
    global2 = Struct_1(-250f, select(select(global2.b, vec2<bool>(func_2(global2.d), global2.b.x), !(!global2.d)), select(global2.b, select(!global2.b, !vec2<bool>(true, global2.d), vec2<bool>(global2.d, global2.d)), !(134f >= global2.a)), !select(select(vec2<bool>(true, global2.d), global2.b, global2.b), global2.b, vec2<bool>(global2.d, global2.d))), firstTrailingBit(vec4<i32>(abs(1i), ~firstLeadingBit(u_input.c), select(_wgslsmith_mod_i32(global2.c.x, global2.c.x), u_input.c, false), -2147483647i)), true);
    var var_2 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(~(~u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a)), vec2<u32>(u_input.a, u_input.a >> (19347u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(global2.c.x)) << (_wgslsmith_div_u32(var_2.x, 0u) % 32u), _wgslsmith_mult_i32(~u_input.b | u_input.b, -global2.c.x), global2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1011f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, -137f))), any(vec3<bool>(false, false, global2.d)), u_input.e))) - -495f));
}

