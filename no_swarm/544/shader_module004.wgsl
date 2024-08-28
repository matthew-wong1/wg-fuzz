struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec3<i32>(1i, 0i, 0i), vec2<u32>(4294967295u, 0u))), Struct_2(Struct_1(vec3<i32>(-76571i, 2147483647i, 0i), vec2<u32>(43881u, 22219u))), Struct_2(Struct_1(vec3<i32>(40475i, -33812i, 605i), vec2<u32>(39193u, 17608u))), Struct_2(Struct_1(vec3<i32>(24101i, -14687i, -19185i), vec2<u32>(43013u, 57109u))), Struct_2(Struct_1(vec3<i32>(2659i, -2373i, -7329i), vec2<u32>(28858u, 0u))), Struct_2(Struct_1(vec3<i32>(1i, -3909i, 1i), vec2<u32>(1u, 0u))), Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, -1i), vec2<u32>(1u, 0u))), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -1i, -1i), vec2<u32>(2448u, 4294967295u))), Struct_2(Struct_1(vec3<i32>(18829i, 1i, 25383i), vec2<u32>(1u, 1u))), Struct_2(Struct_1(vec3<i32>(61946i, -5929i, -17338i), vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(vec3<i32>(-18769i, 2147483647i, -1i), vec2<u32>(4294967295u, 56162u))), Struct_2(Struct_1(vec3<i32>(-16874i, -1i, 699i), vec2<u32>(1u, 1u))), Struct_2(Struct_1(vec3<i32>(-8286i, -66299i, 0i), vec2<u32>(48242u, 66717u))), Struct_2(Struct_1(vec3<i32>(21039i, 0i, 43807i), vec2<u32>(64773u, 1u))), Struct_2(Struct_1(vec3<i32>(-34i, 50062i, -7508i), vec2<u32>(4294967295u, 0u))));

var<private> global2: array<bool, 10> = array<bool, 10>(false, true, false, false, false, false, true, true, false, true);

var<private> global3: array<f32, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> vec3<i32> {
    var var_0 = global0.a.x;
    var var_1 = select(0u, u_input.c ^ global0.b.x, arg_0);
    global3 = array<f32, 13>();
    global3 = array<f32, 13>();
    let var_2 = arg_1.a;
    return global0.a;
}

fn func_3(arg_0: Struct_3) -> bool {
    global2 = array<bool, 10>();
    var var_0 = select(~(~(countOneBits(vec4<u32>(631u, 10666u, 0u, 0u)) & ~vec4<u32>(13729u, u_input.a.x, arg_0.c.a.b.x, 4294967295u))), vec4<u32>(14361u, 1u, _wgslsmith_add_u32(15847u, firstLeadingBit(global0.b.x)), global0.b.x), vec4<bool>(!(0i < countOneBits(global0.a.x)), reverseBits(~4294967295u) >= _wgslsmith_add_u32(u_input.c, firstTrailingBit(1u)), arg_0.b.x, all(vec2<bool>(all(vec3<bool>(arg_0.b.x, true, global2[_wgslsmith_index_u32(1961u, 10u)])), all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(global0.b.x, 10u)], arg_0.b.x))))));
    var_0 = reverseBits(~countOneBits(vec4<u32>(~15788u, 10421u, var_0.x, 0u)));
    global1 = array<Struct_2, 15>();
    var var_1 = Struct_4(1000f, arg_0.b.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f * global3[_wgslsmith_index_u32(global0.b.x, 13u)])), _wgslsmith_f_op_f32(f32(-1f) * -830f)))));
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: f32) -> vec2<f32> {
    global0 = arg_0.a;
    global0 = arg_0.a;
    let var_0 = ~(-firstTrailingBit(abs(reverseBits(2147483647i))));
    let var_1 = !arg_2;
    let var_2 = ~vec2<i32>(_wgslsmith_add_i32(var_0, ~var_0) >> (~(~62515u) % 32u), global0.a.x | arg_0.a.a.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_3), 303f) * vec2<f32>(-951f, arg_3)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_5, arg_3: vec4<i32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, global0.b.x), u_input.c, global0.b.x), 29256u) & select(global0.b.x, firstLeadingBit(1u) | ~global0.b.x, !func_3(Struct_3(arg_2.a.a, vec2<bool>(false, true), Struct_2(Struct_1(vec3<i32>(u_input.b, global0.a.x, -1i), vec2<u32>(global0.b.x, global0.b.x)))))), 15u)], 98951u << (firstLeadingBit(u_input.c) % 32u), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))))));
}

fn func_5(arg_0: f32, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = select(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], true, global2[_wgslsmith_index_u32(48930u, 10u)], global2[_wgslsmith_index_u32(global0.b.x, 10u)] == true)), !select(select(!vec4<bool>(true, global2[_wgslsmith_index_u32(global0.b.x, 10u)], true, global2[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<bool>(false, false, false, false), !vec4<bool>(global2[_wgslsmith_index_u32(13784u, 10u)], false, false, global2[_wgslsmith_index_u32(global0.b.x, 10u)])), vec4<bool>(true, true && global2[_wgslsmith_index_u32(global0.b.x, 10u)], true, global2[_wgslsmith_index_u32(u_input.c, 10u)] && global2[_wgslsmith_index_u32(25403u, 10u)]), global2[_wgslsmith_index_u32(66857u, 10u)]), all(vec2<bool>(!global2[_wgslsmith_index_u32(0u, 10u)], any(select(vec2<bool>(global2[_wgslsmith_index_u32(7165u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<bool>(false, true))))));
    let var_1 = (_wgslsmith_add_i32(1i, ~(~u_input.b)) ^ _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global0.a.x, u_input.b, 6455i), vec4<i32>(9707i, 46527i, -15004i, u_input.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 17342i, global0.a.x, global0.a.x), vec4<i32>(u_input.b, global0.a.x, global0.a.x, 2147483647i))), ~(-27300i))) >> (~1u % 32u);
    let var_2 = _wgslsmith_mod_u32(1u, ~((global0.b.x >> (0u % 32u)) << (~global0.b.x % 32u)));
    var var_3 = reverseBits(vec3<u32>(~20297u, 1u, select(7201u, min(~global0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, global0.b.x, var_2, 1u), vec4<u32>(17358u, var_2, 0u, global0.b.x))), global2[_wgslsmith_index_u32(4294967295u, 10u)])));
    global2 = array<bool, 10>();
    return Struct_2(Struct_1(global0.a, vec2<u32>(countOneBits(var_2), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.b.x, u_input.a.x) ^ vec3<u32>(var_2, u_input.a.x, u_input.a.x), select(vec3<u32>(4294967295u, global0.b.x, var_2), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(-(-global0.a & func_1(global2[_wgslsmith_index_u32(u_input.a.x, 10u)], Struct_4(-206f, true, vec2<f32>(global3[_wgslsmith_index_u32(28461u, 13u)], global3[_wgslsmith_index_u32(0u, 13u)])))), vec2<u32>(global0.b.x, ~(~global0.b.x))), !select(vec2<bool>(true, true), vec2<bool>(!global2[_wgslsmith_index_u32(global0.b.x, 10u)], !global2[_wgslsmith_index_u32(50865u, 10u)]), !select(vec2<bool>(global2[_wgslsmith_index_u32(14556u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)]), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 10u)]), global2[_wgslsmith_index_u32(1u, 10u)])), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.b.x, 13u)])) + -246f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(Struct_4(global3[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(1u, 10u)], vec2<f32>(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(global0.b.x, 13u)])), Struct_4(global3[_wgslsmith_index_u32(global0.b.x, 13u)], global2[_wgslsmith_index_u32(global0.b.x, 10u)], vec2<f32>(global3[_wgslsmith_index_u32(u_input.c, 13u)], -1211f)), Struct_5(Struct_2(Struct_1(vec3<i32>(global0.a.x, -30944i, global0.a.x), global0.b))), vec4<i32>(-2147483647i, 1i, global0.a.x, -2147483647i))))) - vec2<f32>(1f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 13u)])))));
    global3 = array<f32, 13>();
    var var_1 = Struct_3(var_0.a, vec2<bool>(!any(select(vec2<bool>(true, var_0.b.x), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 10u)]), global2[_wgslsmith_index_u32(0u, 10u)])), var_0.b.x), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.b.x, 13u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-464f, _wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(u_input.a.x, 13u)]))))));
    global1 = array<Struct_2, 15>();
    global2 = array<bool, 10>();
    var_1 = Struct_3(Struct_1(-global0.a, abs(vec2<u32>(59915u, var_0.a.b.x) ^ select(vec2<u32>(31278u, 4294967295u), var_0.c.a.b, vec2<bool>(true, true)))), vec2<bool>(15125u > u_input.a.x, global2[_wgslsmith_index_u32(countOneBits(~var_1.c.a.b.x), 10u)]), func_5(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global0.b.x), 13u)], _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3[_wgslsmith_index_u32(u_input.c, 13u)], global3[_wgslsmith_index_u32(u_input.c, 13u)]), vec2<f32>(-634f, 586f))))))));
    var_0 = Struct_3(var_1.c.a, vec2<bool>(func_3(Struct_3(Struct_1(global0.a, vec2<u32>(u_input.a.x, 50162u)), !var_1.b, var_1.c)), var_1.a.b.x < _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.b.x, 4294967295u, var_1.c.a.b.x, var_0.c.a.b.x), ~vec4<u32>(global0.b.x, var_1.c.a.b.x, 12899u, 0u))), func_5(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32((0u << (var_0.a.b.x % 32u)) & ~91091u, 13u)])), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(abs(722f)), _wgslsmith_f_op_f32(-1113f - -300f))))));
    var_1 = Struct_3(var_1.c.a, var_1.b, Struct_2(var_1.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(1u, 15u)], var_1.c.a.b.x, var_0.b.x || (any(vec3<bool>(false, true, false)) & (global2[_wgslsmith_index_u32(var_0.a.b.x, 10u)] & false)), -698f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-966f, global3[_wgslsmith_index_u32(20963u, 13u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_4(var_1.c, 0u, var_0.b.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.b.x, 13u)]))).x)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(abs(global0.a.zz), var_0.a.a.xz)), -352f, -(vec2<i32>(var_0.c.a.a.x, -1i) >> (global0.b % vec2<u32>(32u))), 1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_1.c.a.b.x, u_input.a.x, var_0.a.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 31761u), vec3<u32>(global0.b.x, u_input.a.x, var_1.c.a.b.x))), 13u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(35835u, 13u)]) - -1000f))));
}

