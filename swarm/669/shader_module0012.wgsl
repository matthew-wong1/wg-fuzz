struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    global1 = array<vec4<bool>, 20>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.a.a * 743f)))))), ~(~(~(u_input.b << (u_input.b % vec4<u32>(32u))))), vec4<u32>(countOneBits(~u_input.c), ~firstTrailingBit(max(0u, u_input.c)), 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(59012u, firstLeadingBit(u_input.b.x)), 6248u, 1u)), select(!global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(1u, 20u)], false));
    var_0 = arg_2.a;
    var var_1 = arg_2.a;
    var_0 = arg_2.a;
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_1.a.a, -1258f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.x * arg_1.a.a) + _wgslsmith_f_op_f32(f32(-1f) * -1091f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-299f, _wgslsmith_f_op_f32(-arg_1.a.a))))), vec3<f32>(arg_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)) * _wgslsmith_f_op_f32(trunc(arg_3.x))), 1000f)));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, 391f)))), 542f), _wgslsmith_f_op_f32(-arg_1.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-448f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1020f) * _wgslsmith_f_op_f32(-arg_1.a.a)))));
    var_0 = arg_3;
    global0 = array<bool, 28>();
    return -2180f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-200f * -721f) + _wgslsmith_f_op_f32(1523f + 1171f)), _wgslsmith_f_op_f32(func_3(~1u, func_2(Struct_1(false, vec3<u32>(u_input.c, 54685u, 30322u)), 1i, Struct_3(Struct_2(-425f, vec4<u32>(u_input.b.x, 4294967295u, u_input.c, 36067u), vec4<u32>(u_input.e, 38819u, 71348u, u_input.b.x), global1[_wgslsmith_index_u32(0u, 20u)]))), _wgslsmith_mult_vec3_u32(vec3<u32>(51764u, u_input.c, 93137u), u_input.b.wzw), _wgslsmith_div_vec3_f32(vec3<f32>(-1907f, 1000f, -1266f), vec3<f32>(2147f, -640f, 839f)))))));
    global1 = array<vec4<bool>, 20>();
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(1000f, var_0.x)), _wgslsmith_f_op_f32(632f + -2404f)))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)))) * vec2<f32>(_wgslsmith_div_f32(var_0.x, -1628f), -729f)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1174f);
    var var_2 = func_2(Struct_1(global0[_wgslsmith_index_u32(~((u_input.a.x ^ u_input.b.x) & ~1u), 28u)], ~u_input.b.xzw), u_input.d, func_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], vec3<u32>(func_2(Struct_1(true, u_input.a), -29559i, Struct_3(Struct_2(var_0.x, vec4<u32>(u_input.b.x, 31324u, 1u, 237u), u_input.b, vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 28u)], true, global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)])))).a.b.x, 0u, u_input.b.x)), ~(-2178i), Struct_3(func_2(Struct_1(true, u_input.b.yyz), u_input.d | 0i, func_2(Struct_1(global0[_wgslsmith_index_u32(u_input.c, 28u)], vec3<u32>(0u, 1u, 1u)), u_input.d, Struct_3(Struct_2(-162f, u_input.b, vec4<u32>(u_input.e, u_input.e, 10056u, u_input.c), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)]))))).a))).a;
    return Struct_1(global0[_wgslsmith_index_u32(~firstLeadingBit(31529u), 28u)], ~var_2.c.wyy);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = arg_0 >= u_input.d;
    global0 = array<bool, 28>();
    var var_1 = Struct_3(func_2(arg_1, -2147483647i & _wgslsmith_clamp_i32(countOneBits(81385i), 1i, arg_0), func_2(func_1(), 29792i, Struct_3(func_2(arg_1, 1i, Struct_3(Struct_2(-1672f, vec4<u32>(u_input.a.x, 0u, 110573u, 19734u), vec4<u32>(63596u, 4294967295u, 51280u, 0u), vec4<bool>(arg_1.a, global0[_wgslsmith_index_u32(arg_1.b.x, 28u)], false, global0[_wgslsmith_index_u32(6378u, 28u)])))).a))).a);
    var var_2 = arg_1;
    var var_3 = true;
    return Struct_3(Struct_2(-1356f, select(_wgslsmith_mod_vec4_u32(u_input.b, ~var_1.a.c), var_1.a.c, !var_1.a.d), u_input.b, vec4<bool>(13797u > var_1.a.b.x, arg_1.a, !(global0[_wgslsmith_index_u32(3754u, 28u)] || global0[_wgslsmith_index_u32(4294967295u, 28u)]), true)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    var var_0 = vec2<bool>(arg_1.a, arg_3.d.x);
    var var_1 = 0i;
    let var_2 = arg_1;
    global0 = array<bool, 28>();
    var var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_3.a)))))), vec4<u32>(4294967295u, u_input.e, 0u, 84296u), u_input.b, vec4<bool>(any(arg_2.a.d), !(!func_4(u_input.d, Struct_1(false, arg_1.b)).a.d.x), !any(arg_2.a.d.zxx), false));
    return -65709i;
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> vec3<f32> {
    var var_0 = ~arg_1.a.c.zzy;
    var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(select(36936u, 1880u, global0[_wgslsmith_index_u32(67408u, 28u)]), 28682u >> (var_0.x % 32u)), ~func_4(0i, Struct_1(arg_1.a.d.x, arg_1.a.c.yww)).a.b.x, min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, arg_1.a.c.x), var_0.xy), arg_1.a.b.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(arg_1.a.c.x, 25830u), arg_2.a.c.x, arg_1.a.c.x), func_2(Struct_1(true, ~arg_1.a.b.zzx), arg_0.x, Struct_3(arg_1.a)).a.b.wyw));
    global1 = array<vec4<bool>, 20>();
    let var_1 = func_4(47816i, Struct_1(true, ~vec3<u32>(arg_2.a.c.x, ~var_0.x, var_0.x))).a;
    var_0 = var_1.b.zwy;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a - arg_1.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -891f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.a.a), 607f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a, 608f, arg_2.a.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2006f, 1135f, -1639f) - vec3<f32>(arg_1.a.a, 2548f, 2018f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1496f, 237f, -1010f) * vec3<f32>(-395f, 674f, var_1.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(179f, var_1.a, var_1.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(func_6(vec4<i32>(1i, func_5(~vec3<u32>(u_input.c, 4294967295u, u_input.c), Struct_1(u_input.d > u_input.d, ~vec3<u32>(16217u, u_input.c, 44899u)), func_4(~u_input.d, func_1()), func_2(func_1(), 1i, func_2(Struct_1(global0[_wgslsmith_index_u32(11547u, 28u)], u_input.b.wyy), u_input.d, Struct_3(Struct_2(409f, u_input.b, vec4<u32>(u_input.b.x, u_input.a.x, u_input.c, u_input.e), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 28u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], false))))).a), 1i, abs(-u_input.d)), func_4(u_input.d, Struct_1(true & (global0[_wgslsmith_index_u32(79608u, 28u)] && true), ~vec3<u32>(u_input.a.x, 37550u, 1u))), func_2(func_1(), _wgslsmith_sub_i32(_wgslsmith_sub_i32(select(0i, u_input.d, global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), u_input.d), min(u_input.d, u_input.d | 18308i)), Struct_3(func_4(-u_input.d, func_1()).a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1305f * -1000f), _wgslsmith_div_f32(1376f, 600f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-731f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1047f, -1817f))))));
    var var_2 = any(!vec3<bool>(true, global0[_wgslsmith_index_u32(~4294967295u, 28u)], !(global0[_wgslsmith_index_u32(u_input.e, 28u)] | global0[_wgslsmith_index_u32(u_input.c, 28u)])));
    global1 = array<vec4<bool>, 20>();
    let var_3 = ~vec2<i32>(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.d, 1i, -30796i, -4498i)), -firstTrailingBit(vec4<i32>(16349i, u_input.d, u_input.d, u_input.d))), -2147483647i);
    var var_4 = ~0u;
    let var_5 = select(!vec2<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 28u)], global0[_wgslsmith_index_u32(756u, 28u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), global0[_wgslsmith_index_u32(u_input.e, 28u)])), true), vec2<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(!global0[_wgslsmith_index_u32(u_input.c, 28u)], all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(6935u, 28u)])), select(false, global0[_wgslsmith_index_u32(0u, 28u)], true)))), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.ww, ~39652i, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_div_f32(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, 14937i), vec3<i32>(-29723i, u_input.d, u_input.d)), func_1()).a.a, -893f), -864f, _wgslsmith_f_op_f32(-var_1.x)), (reverseBits(vec4<i32>(var_3.x, var_3.x, u_input.d, 1i)) >> (vec4<u32>(4294967295u, u_input.a.x, ~24128u, u_input.a.x) % vec4<u32>(32u))) ^ -vec4<i32>(u_input.d, -2147483647i, ~u_input.d, -27759i), vec2<u32>(4294967295u, firstTrailingBit(3799u)));
}

