struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: array<i32, 15>;

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(137f, 417f), vec2<f32>(488f, 302f), vec2<f32>(1117f, -224f), vec2<f32>(435f, -150f), vec2<f32>(486f, 2676f), vec2<f32>(1604f, -736f), vec2<f32>(381f, 1000f), vec2<f32>(1000f, 1731f), vec2<f32>(-1883f, 777f), vec2<f32>(2207f, -296f), vec2<f32>(1095f, 227f), vec2<f32>(-620f, -1700f), vec2<f32>(514f, 488f), vec2<f32>(-1016f, -173f), vec2<f32>(451f, 2030f), vec2<f32>(-2358f, -1794f), vec2<f32>(1062f, -1939f), vec2<f32>(985f, 1230f), vec2<f32>(-790f, 322f), vec2<f32>(-1608f, 2271f), vec2<f32>(-1681f, -857f), vec2<f32>(-190f, 865f), vec2<f32>(431f, 291f), vec2<f32>(-673f, 347f), vec2<f32>(-833f, 253f), vec2<f32>(125f, 515f), vec2<f32>(478f, -663f), vec2<f32>(-1066f, -972f), vec2<f32>(238f, -848f), vec2<f32>(116f, 459f));

var<private> global4: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<f32>(-647f, 273f), Struct_2(Struct_1(true, 35384u), Struct_1(true, 48660u))), Struct_3(vec2<f32>(-2023f, 1000f), Struct_2(Struct_1(false, 1u), Struct_1(false, 0u))), Struct_3(vec2<f32>(-687f, 1000f), Struct_2(Struct_1(true, 33993u), Struct_1(true, 4294967295u))), Struct_3(vec2<f32>(1509f, -640f), Struct_2(Struct_1(true, 0u), Struct_1(true, 0u))), Struct_3(vec2<f32>(191f, -2011f), Struct_2(Struct_1(false, 0u), Struct_1(false, 4294967295u))), Struct_3(vec2<f32>(1284f, -1000f), Struct_2(Struct_1(false, 59660u), Struct_1(true, 36010u))), Struct_3(vec2<f32>(632f, 514f), Struct_2(Struct_1(false, 4538u), Struct_1(true, 30572u))), Struct_3(vec2<f32>(287f, 461f), Struct_2(Struct_1(true, 1u), Struct_1(false, 4294967295u))), Struct_3(vec2<f32>(343f, 973f), Struct_2(Struct_1(true, 1u), Struct_1(false, 63962u))), Struct_3(vec2<f32>(1257f, 733f), Struct_2(Struct_1(false, 1u), Struct_1(false, 4294967295u))), Struct_3(vec2<f32>(-1000f, 1000f), Struct_2(Struct_1(true, 22536u), Struct_1(true, 1u))), Struct_3(vec2<f32>(1084f, 317f), Struct_2(Struct_1(false, 4294967295u), Struct_1(false, 1u))), Struct_3(vec2<f32>(-505f, 1505f), Struct_2(Struct_1(false, 5767u), Struct_1(false, 1u))), Struct_3(vec2<f32>(363f, 1340f), Struct_2(Struct_1(true, 66923u), Struct_1(false, 0u))), Struct_3(vec2<f32>(625f, 1465f), Struct_2(Struct_1(false, 22870u), Struct_1(true, 4294967295u))), Struct_3(vec2<f32>(-1720f, 181f), Struct_2(Struct_1(true, 1u), Struct_1(false, 2228u))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> u32 {
    global3 = array<vec2<f32>, 30>();
    global4 = array<Struct_3, 16>();
    global0 = array<vec4<bool>, 23>();
    global3 = array<vec2<f32>, 30>();
    global2 = array<Struct_1, 11>();
    return 38816u;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_3, arg_3: vec3<bool>) -> vec4<bool> {
    global4 = array<Struct_3, 16>();
    let var_0 = arg_2.b;
    let var_1 = true;
    global4 = array<Struct_3, 16>();
    let var_2 = vec4<bool>(false, any(select(!arg_3, select(arg_3, select(arg_3, vec3<bool>(true, false, arg_2.b.a.a), arg_3), arg_3), vec3<bool>(arg_2.b.a.a, var_1, true))), any(!arg_3.xz) && var_1, !all(vec4<bool>(arg_2.a.x > arg_2.a.x, all(arg_3.xz), all(vec3<bool>(false, false, var_0.b.a)), false || var_1)));
    return select(select(vec4<bool>(var_0.b.a, arg_2.b.a.a, true, any(vec4<bool>(var_1, false, false, var_2.x))), vec4<bool>(!any(global0[_wgslsmith_index_u32(var_0.b.b, 23u)]), all(global0[_wgslsmith_index_u32(max(var_0.a.b, u_input.a), 23u)]), true, var_1 | arg_2.b.a.a), !vec4<bool>(arg_3.x, false, all(vec2<bool>(false, true)), select(false, false, var_1))), vec4<bool>(!(17619u > (u_input.a & 28713u)), any(vec2<bool>(true, arg_2.b.b.a)), all(!select(vec3<bool>(true, true, var_2.x), vec3<bool>(false, var_2.x, arg_2.b.b.a), true)), arg_0 == (u_input.b | _wgslsmith_mult_i32(-1i, arg_1))), any(arg_3.xz));
}

fn func_2(arg_0: vec2<u32>) -> StorageBuffer {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(1000f, -1930f)), -1000f)), -1159f, _wgslsmith_f_op_f32(select(1000f, 1f, !all(vec3<bool>(true, true, true)))));
    global2 = array<Struct_1, 11>();
    var var_1 = !any(!func_3(-1i, 23393i, global4[_wgslsmith_index_u32(~59062u, 16u)], vec3<bool>(true, true, true)));
    var var_2 = Struct_2(Struct_1(true, ~select(countOneBits(0u), 31092u, false)), Struct_1(false, _wgslsmith_mult_u32(1u & arg_0.x, ~_wgslsmith_div_u32(u_input.a, 4294967295u))));
    global3 = array<vec2<f32>, 30>();
    return StorageBuffer(_wgslsmith_f_op_f32(1525f - _wgslsmith_f_op_f32(var_0.x - 352f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global3[_wgslsmith_index_u32(7592u, 30u)], var_0.zy)) + _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(u_input.a, 30u)])))), _wgslsmith_f_op_vec2_f32(-var_0.zz))), var_0.x, func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a, func_1()), 30u)];
    var var_1 = 0i;
    global4 = array<Struct_3, 16>();
    let x = u_input.a;
    s_output = func_2(vec2<u32>(u_input.a, u_input.a));
}

