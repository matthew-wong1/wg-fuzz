struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(-1783f, -582f, -195f, 1000f, 1879f, -1000f, 909f, 1000f, -2344f, 105f, 755f, 1810f, 646f, -276f, 497f, -300f, -1394f, 199f, -934f, 419f, 482f, -131f, 963f, 1722f, 1667f, -622f, -1136f, -1073f, 810f, -1531f, -1000f, 172f);

var<private> global1: i32 = 2147483647i;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 0i), -1000f), Struct_1(vec4<i32>(0i, 53611i, 1i, 42660i), -802f), Struct_1(vec4<i32>(0i, 16852i, 23600i, -20624i), -1095f), Struct_1(vec4<i32>(22668i, 0i, 13842i, i32(-2147483648)), -367f), Struct_1(vec4<i32>(-22344i, -10800i, 38923i, 33543i), 1680f), Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, -1i), -2286f), Struct_1(vec4<i32>(0i, -1i, -35260i, -30428i), -935f), Struct_1(vec4<i32>(9672i, 1i, 1i, 5193i), 292f), Struct_1(vec4<i32>(0i, 0i, 14451i, 1i), -591f), Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, -1i), 345f), Struct_1(vec4<i32>(-7129i, 2147483647i, i32(-2147483648), 1i), 1457f), Struct_1(vec4<i32>(-1i, -30901i, 0i, -1i), 631f), Struct_1(vec4<i32>(19555i, 0i, 1i, 0i), 581f), Struct_1(vec4<i32>(27488i, 29263i, -16154i, 37256i), -463f), Struct_1(vec4<i32>(-1i, 0i, 1i, 0i), -815f), Struct_1(vec4<i32>(6485i, -1i, 0i, 1i), 705f), Struct_1(vec4<i32>(-11205i, i32(-2147483648), 1i, 1i), -125f), Struct_1(vec4<i32>(-25061i, -50450i, i32(-2147483648), -31409i), 1511f), Struct_1(vec4<i32>(0i, 22161i, 3471i, -19206i), 1428f), Struct_1(vec4<i32>(21955i, -1i, 912i, i32(-2147483648)), -1198f), Struct_1(vec4<i32>(6378i, -1i, 13298i, 2714i), -474f), Struct_1(vec4<i32>(0i, 28486i, 2147483647i, 18814i), 2672f), Struct_1(vec4<i32>(-35966i, 1i, 0i, i32(-2147483648)), 2170f), Struct_1(vec4<i32>(1i, -18482i, -1i, 6922i), -1456f), Struct_1(vec4<i32>(-28492i, 2147483647i, 10942i, 20556i), 367f), Struct_1(vec4<i32>(1i, -29783i, 2147483647i, 9864i), 276f), Struct_1(vec4<i32>(2147483647i, 0i, i32(-2147483648), 0i), -524f), Struct_1(vec4<i32>(46376i, -41957i, 28060i, 12632i), -432f), Struct_1(vec4<i32>(-6760i, -1i, 2147483647i, 5123i), -956f), Struct_1(vec4<i32>(-35725i, -60878i, 1i, i32(-2147483648)), 583f));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global1 = ~(~u_input.a.x);
    let var_0 = select(vec4<bool>(global0[_wgslsmith_index_u32(countOneBits(1u), 32u)] >= _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(vec3<bool>(true, select(true, true, true), false)), true, true), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), vec4<bool>(any(vec2<bool>(true, true)), false, global0[_wgslsmith_index_u32(arg_0.x, 32u)] <= 491f, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true))), true, all(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), select(true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 32u)]) < 789f, false)), !all(vec4<bool>(true, true, true, true)));
    global0 = array<f32, 32>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -671f);
    var_1 = global0[_wgslsmith_index_u32(~37664u, 32u)];
    return 339f;
}

fn func_2() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), u_input.b), 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)])) * _wgslsmith_f_op_f32(func_3(reverseBits(vec2<u32>(27818u, u_input.b.x))))), 163f));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_4) -> f32 {
    global2 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_2())));
    let var_1 = select(all(select(select(select(vec2<bool>(true, true), vec2<bool>(true, arg_1), arg_0.b), select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), vec2<bool>(arg_0.b, arg_0.b)), vec2<bool>(true, arg_0.b)), select(!vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, false), vec2<bool>(false, false), vec2<bool>(false, false)), 0u <= arg_3.d), true)), arg_0.b, arg_2.x != u_input.b.x);
    let var_2 = arg_3.a;
    global1 = -(~32286i);
    return _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(377f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, true, !all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(false, true, false))), all(vec3<bool>(-2147483647i <= (u_input.a.x >> (u_input.b.x % 32u)), all(vec2<bool>(true, true)), true)));
    global0 = array<f32, 32>();
    let var_1 = any(vec2<bool>(false, false));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~u_input.b.x, 32u)], _wgslsmith_f_op_f32(func_1(Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true, global0[_wgslsmith_index_u32(1u, 32u)]), true, vec2<u32>(4294967295u, 0u), Struct_4(Struct_3(global2[_wgslsmith_index_u32(4294967295u, 30u)]), global0[_wgslsmith_index_u32(4294967295u, 32u)], vec3<u32>(u_input.b.x, 1u, u_input.b.x), 0u, Struct_1(vec4<i32>(-48850i, u_input.a.x, u_input.a.x, 71184i), 1016f))))), global0[_wgslsmith_index_u32(u_input.b.x, 32u)], -u_input.a.x != ~0i)))));
    var_0 = vec4<bool>(false, 45238i == u_input.a.x, true, var_0.x);
    global0 = array<f32, 32>();
    var var_3 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2)))));
    let var_4 = countOneBits(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(min(35695i, 27321i), u_input.a.x ^ var_3.a.x), vec2<i32>(1i, _wgslsmith_dot_vec4_i32(var_3.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, u_input.a.x, 1i);
}

