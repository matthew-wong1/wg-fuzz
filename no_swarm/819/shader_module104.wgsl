struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(751f, 180f, 1931f, false);

var<private> global1: vec2<i32> = vec2<i32>(1i, 55i);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1763f, 269f, -103f, true), Struct_1(-1247f, 1019f, 223f, true), Struct_1(-479f, 381f, -936f, true), Struct_1(-239f, -1186f, 162f, false), Struct_1(-423f, 1612f, -1870f, false), Struct_1(446f, -455f, -193f, false), Struct_1(-1426f, 1590f, -104f, false), Struct_1(-110f, -720f, -848f, false), Struct_1(-662f, 1293f, 852f, false), Struct_1(-177f, 2297f, 945f, true), Struct_1(-1000f, 2335f, -1849f, true), Struct_1(1570f, 647f, 265f, false), Struct_1(984f, 1949f, -655f, false), Struct_1(1245f, 933f, 412f, true), Struct_1(1663f, 1455f, -1050f, true), Struct_1(-1226f, -759f, 161f, true), Struct_1(-1266f, -1000f, -1000f, false), Struct_1(-293f, 175f, -1000f, false), Struct_1(-161f, -1514f, -1700f, false), Struct_1(415f, 1100f, -235f, true), Struct_1(296f, 218f, -2253f, true), Struct_1(-1902f, -1880f, 523f, true), Struct_1(-1000f, -373f, -855f, false), Struct_1(1076f, -1039f, -345f, true), Struct_1(998f, -786f, 789f, false), Struct_1(799f, 1234f, -147f, true), Struct_1(-1416f, 240f, -913f, false), Struct_1(-1000f, -1000f, 203f, false), Struct_1(1710f, -921f, 184f, false), Struct_1(-2310f, -753f, -763f, true));

var<private> global3: u32 = 0u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(-1441f, _wgslsmith_f_op_f32(sign(arg_1.c)), -1267f, false);
    let var_1 = arg_0;
    let var_2 = ~(-13838i);
    var var_3 = var_0.d;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f) - arg_1.c)), arg_1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1347f, -763f))), !(!(true && var_0.d)));
    return ~reverseBits(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(arg_1, arg_2) & _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 15126u, u_input.c.x), ~vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x))), u_input.c.x), 30u)];
    var_0 = Struct_1(-1657f, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - 284f))), true);
    let var_1 = !any(!vec3<bool>(arg_0.d, arg_2.a <= 637f, global0.d));
    var var_2 = true;
    let var_3 = global2[_wgslsmith_index_u32(select(4294967295u, ~abs(u_input.c.x) ^ 128101u, false), 30u)];
    return -206f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)]))), _wgslsmith_f_op_f32(856f - arg_1.x), ~u_input.c.x > _wgslsmith_sub_u32(32387u, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f * arg_0.a)) + _wgslsmith_f_op_f32(func_2(Struct_1(global0.a, 656f, arg_1.x, global0.d), Struct_1(global0.a, 263f, -2044f, false), Struct_1(-1000f, -1011f, 446f, global0.d))))), -353f, 1000f, (_wgslsmith_div_u32(~u_input.c.x, u_input.c.x) ^ _wgslsmith_mod_u32(min(34427u, 1u), min(4294967295u, u_input.c.x))) >= reverseBits(1u));
    return Struct_1(660f, global0.c, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-var_0.b)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), global0.b);
    global2 = array<Struct_1, 30>();
    global1 = -firstLeadingBit(u_input.b.zy);
    var var_1 = func_1(Struct_1(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - global0.b) - -1343f))), !global0.d), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, 1000f)) - -238f), global0.a, 154f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * global0.b)))))));
    let var_2 = false;
    global3 = u_input.c.x;
    let var_3 = func_1(Struct_1(_wgslsmith_f_op_f32(func_2(func_1(Struct_1(var_0.x, 1222f, 524f, global0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(281f, var_0.x, -136f, var_0.x))), Struct_1(global0.a, 1057f, var_1.c, true), func_1(func_1(Struct_1(-359f, 424f, 1598f, false), vec4<f32>(775f, global0.b, 1000f, 544f)), vec4<f32>(var_0.x, var_0.x, 674f, global0.a)))), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), 2107f), global0.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.a, -108f, 1000f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.c, global0.b, var_0.x, var_1.a), vec4<f32>(var_0.x, -671f, 1000f, var_0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, 1954f, var_0.x, var_1.b)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.a, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-176f, 665f, 109f, -441f))))));
    var var_4 = ~(vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.yw, u_input.c.zz), ~u_input.c.x, abs(u_input.c.x ^ u_input.c.x), func_3(global2[_wgslsmith_index_u32(169928u, 30u)], func_1(var_3, vec4<f32>(global0.a, 403f, var_0.x, -518f)))) ^ (u_input.c ^ u_input.c));
    var var_5 = global2[_wgslsmith_index_u32(26716u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(-select(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, 32656i), vec2<i32>(0i, 106836i)), _wgslsmith_add_vec2_i32(max(u_input.b.zw, vec2<i32>(12171i, global1.x)), -vec2<i32>(51012i, -2147483647i)), !(!var_3.d)), u_input.b.x);
}

