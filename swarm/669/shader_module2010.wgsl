struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<bool>,
    e: f32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<vec3<i32>, 19>;

var<private> global2: array<i32, 22>;

var<private> global3: array<bool, 23>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1) -> u32 {
    global1 = array<vec3<i32>, 19>();
    global3 = array<bool, 23>();
    let var_0 = arg_2;
    global0 = array<bool, 17>();
    let var_1 = !global0[_wgslsmith_index_u32(4294967295u, 17u)] & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, 36210u), u_input.c), max(~vec3<u32>(u_input.c, 44819u, u_input.c), vec3<u32>(u_input.c, 1u, u_input.c) | vec3<u32>(4294967295u, 4214u, u_input.c))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(0u, u_input.c, u_input.c)), vec3<u32>(0u, u_input.c, u_input.c), firstTrailingBit(vec3<u32>(54437u, u_input.c, u_input.c))) & vec3<u32>(0u, u_input.c, ~15762u)), 17u)];
    return countOneBits(_wgslsmith_clamp_u32(1u, ~17871u, 30529u));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<f32>) -> f32 {
    let var_0 = Struct_5(vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 23u)], !(global3[_wgslsmith_index_u32(u_input.c >> (4620u % 32u), 23u)] && true), any(vec4<bool>(true, any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 17u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(6915u, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)])), false & global3[_wgslsmith_index_u32(0u, 23u)])), true));
    var var_1 = Struct_2(var_0.a.x && global3[_wgslsmith_index_u32(~(~func_3(var_0.a.wxy, -830f, Struct_1(2147483647i))), 23u)], Struct_1(-15616i), vec2<u32>(60963u, ~u_input.c), Struct_1(2147483647i));
    let var_2 = all(!(!select(!var_0.a.xww, !var_0.a.zzw, select(var_0.a.wzx, var_0.a.zzx, global0[_wgslsmith_index_u32(89488u, 17u)]))));
    global1 = array<vec3<i32>, 19>();
    let var_3 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_3, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec3_u32(arg_3.zxx, arg_3.xwz);
    var_0 = select(firstLeadingBit(_wgslsmith_div_vec3_u32(arg_3.zyw, arg_3.xxz)), ~max(arg_3.zzw, vec3<u32>(var_0.x, 48596u, ~arg_3.x)), vec3<bool>(true, (1i << (~4294967295u % 32u)) == global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(var_0.x), _wgslsmith_clamp_u32(arg_3.x, arg_2.c.c.x, arg_3.x)), 22u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, var_0.x, firstLeadingBit(31652u & arg_3.x)), 17u)]));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-191f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-316f, _wgslsmith_f_op_f32(func_2(313f, vec4<f32>(-1000f, 1502f, -1964f, -961f), -446f, vec4<f32>(-2025f, -1000f, -1009f, -1000f))), all(vec3<bool>(false, false, global3[_wgslsmith_index_u32(14930u, 23u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) - -924f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1034f)), _wgslsmith_f_op_f32(-1554f + -1374f)), -212f)));
    global1 = array<vec3<i32>, 19>();
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), var_1.x)));
    return arg_2;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: i32) -> bool {
    let var_0 = u_input.c | u_input.c;
    global2 = array<i32, 22>();
    let var_1 = all(arg_1.d);
    var var_2 = 17331u;
    var_2 = var_0;
    return global3[_wgslsmith_index_u32(arg_0.d.c.x, 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 22>();
    var var_0 = true;
    var var_1 = vec4<bool>(true, !select(func_4(func_1(vec3<u32>(4294967295u, u_input.c, 1u), u_input.e.x, Struct_3(Struct_1(global2[_wgslsmith_index_u32(1u, 22u)]), global2[_wgslsmith_index_u32(u_input.c, 22u)], Struct_2(global0[_wgslsmith_index_u32(0u, 17u)], Struct_1(-50820i), vec2<u32>(63595u, 4294967295u), Struct_1(global2[_wgslsmith_index_u32(u_input.c, 22u)])), Struct_2(global0[_wgslsmith_index_u32(u_input.c, 17u)], Struct_1(0i), vec2<u32>(58843u, u_input.c), Struct_1(-18878i))), vec4<u32>(23580u, u_input.c, 0u, u_input.c)), Struct_4(530f, vec3<u32>(u_input.c, 32317u, 22704u), Struct_2(true, Struct_1(u_input.a.x), vec2<u32>(u_input.c, 1u), Struct_1(u_input.a.x)), vec2<bool>(false, false), 778f), 1u, max(global2[_wgslsmith_index_u32(49551u, 22u)], -1i)), global0[_wgslsmith_index_u32(67276u, 17u)], global0[_wgslsmith_index_u32(u_input.c, 17u)]), global0[_wgslsmith_index_u32(109779u, 17u)], false);
    let var_2 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(~(19816u ^ u_input.c), _wgslsmith_add_u32(u_input.c, u_input.c), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(601u, u_input.c), vec2<u32>(82412u, 42081u))), ~(~1u)), _wgslsmith_mod_vec4_u32(abs(select(vec4<u32>(4294967295u, 46288u, u_input.c, u_input.c), vec4<u32>(u_input.c, 30987u, u_input.c, u_input.c), vec4<bool>(var_1.x, global3[_wgslsmith_index_u32(4294967295u, 23u)], true, global3[_wgslsmith_index_u32(7039u, 23u)]))), vec4<u32>(~12844u, select(43692u, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 17u)]), ~10578u, _wgslsmith_mult_u32(u_input.c, u_input.c))))), 23u)];
    let var_3 = -1096f;
    var_0 = -(i32(-1i) * -abs(global2[_wgslsmith_index_u32(1u, 22u)])) >= -(i32(-1i) * -2147483647i);
    var var_4 = Struct_2(true, Struct_1(-13716i), reverseBits(~(~vec2<u32>(4294967295u, 23471u))), func_1(~firstTrailingBit(select(vec3<u32>(19967u, u_input.c, 0u), vec3<u32>(0u, u_input.c, u_input.c), true)), max(global2[_wgslsmith_index_u32(u_input.c, 22u)], -u_input.e.x) << (~u_input.c % 32u), func_1(vec3<u32>(66379u, abs(u_input.c), firstTrailingBit(4294967295u)), global2[_wgslsmith_index_u32(~57790u, 22u)], Struct_3(Struct_1(global2[_wgslsmith_index_u32(35410u, 22u)]), u_input.e.x, func_1(vec3<u32>(u_input.c, 47489u, 40724u), -60669i, Struct_3(Struct_1(-2147483647i), 31502i, Struct_2(var_1.x, Struct_1(-16600i), vec2<u32>(4294967295u, u_input.c), Struct_1(u_input.e.x)), Struct_2(true, Struct_1(28551i), vec2<u32>(u_input.c, 4294967295u), Struct_1(-64731i))), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)).c, func_1(vec3<u32>(u_input.c, 1u, 46015u), u_input.d, Struct_3(Struct_1(25030i), -1i, Struct_2(global0[_wgslsmith_index_u32(u_input.c, 17u)], Struct_1(global2[_wgslsmith_index_u32(u_input.c, 22u)]), vec2<u32>(u_input.c, 0u), Struct_1(11260i)), Struct_2(global0[_wgslsmith_index_u32(47017u, 17u)], Struct_1(9976i), vec2<u32>(u_input.c, u_input.c), Struct_1(global2[_wgslsmith_index_u32(u_input.c, 22u)]))), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)).c), vec4<u32>(~1u, u_input.c, _wgslsmith_sub_u32(u_input.c, 69166u), u_input.c & u_input.c)), vec4<u32>(u_input.c, 4294967295u, 59743u, 65045u)).d.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3), var_3, !var_4.a)), var_3)));
}

