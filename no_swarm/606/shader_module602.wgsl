struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(69141i, -1i, 0i, -69423i, -1i, 257i, 2147483647i, 1i, -610i, 25823i, -46833i, 1i, -8792i, -11758i, 0i, i32(-2147483648), i32(-2147483648), -7303i);

var<private> global1: array<u32, 6>;

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-1019f), Struct_1(1460f), Struct_1(168f), Struct_1(-2593f), Struct_1(-486f), Struct_1(1734f), Struct_1(283f), Struct_1(-766f), Struct_1(-1469f), Struct_1(-1744f), Struct_1(1075f), Struct_1(-834f), Struct_1(525f), Struct_1(1423f), Struct_1(-1315f), Struct_1(-174f), Struct_1(536f), Struct_1(259f), Struct_1(-356f), Struct_1(-1758f), Struct_1(1457f), Struct_1(-1570f), Struct_1(-305f), Struct_1(1000f), Struct_1(1925f), Struct_1(-420f), Struct_1(-408f), Struct_1(880f), Struct_1(2018f), Struct_1(1000f), Struct_1(1000f), Struct_1(319f));

var<private> global3: array<u32, 31>;

var<private> global4: vec4<f32> = vec4<f32>(-200f, 428f, 232f, 1160f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~0u), 31u)], 31u)] & 1u, 32u)];
    let var_1 = Struct_1(208f);
    var var_2 = var_1;
    global2 = array<Struct_1, 32>();
    var var_3 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 18u)] ^ u_input.a, global0[_wgslsmith_index_u32(12529u, 18u)], -18591i), abs(-25941i)), -(~vec4<i32>(-7385i, u_input.a, u_input.a, 7278i) ^ vec4<i32>(1i, -2147483647i, 5729i, 0i))));
    return global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(32831u, 1u), 31u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    global1 = array<u32, 6>();
    var var_0 = arg_0.a;
    global4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-301f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1958f, arg_1.x))), arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1763f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), global4.x, global4.x, -1000f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(arg_1.x, -1437f), _wgslsmith_f_op_f32(select(884f, 1518f, true)), global4.x, 377f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a, 647f, -964f, global4.x), vec4<f32>(arg_0.a, -1572f, -517f, arg_0.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(460f, arg_0.a, 766f, global4.x) - vec4<f32>(arg_1.x, 1864f, 389f, 1566f))), all(vec4<bool>(true, true, true, true))))));
    let var_1 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(arg_2) << (func_2() % 32u), 6u)] & global1[_wgslsmith_index_u32(4294967295u, 6u)], 18u)];
    var var_2 = Struct_1(global4.x);
    return Struct_1(_wgslsmith_f_op_f32(-global4.x));
}

fn func_1() -> Struct_1 {
    var var_0 = ~_wgslsmith_dot_vec2_u32(~(~min(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 31u)], 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<u32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30342u, 31u)], 6u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28980u, 6u)], 31u)]))), vec2<u32>(~global3[_wgslsmith_index_u32(abs(1u), 31u)], global1[_wgslsmith_index_u32(~reverseBits(global1[_wgslsmith_index_u32(39106u, 6u)]), 6u)]));
    global2 = array<Struct_1, 32>();
    global3 = array<u32, 31>();
    var var_1 = global2[_wgslsmith_index_u32(70316u, 32u)];
    let var_2 = func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(-global4.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global4.wz - global4.xx))), vec2<f32>(global4.x, var_1.a)), ~func_2());
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return func_1();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> StorageBuffer {
    let var_0 = arg_3;
    global1 = array<u32, 6>();
    var var_1 = global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~0u, 6u)] | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 31u)], 31u)], max(global3[_wgslsmith_index_u32(0u, 31u)], 26706u))), 32u)];
    global2 = array<Struct_1, 32>();
    global0 = array<i32, 18>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - arg_1.a), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f * global4.x)), 980f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1688f, arg_3, arg_2.a, arg_0.a))) + vec4<f32>(736f, 135f, _wgslsmith_div_f32(2247f, var_0), _wgslsmith_f_op_f32(f32(-1f) * -900f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~abs(vec3<u32>(~global3[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(9363u, 6u)], ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(65504u, 6u)], 6u)], 6u)])));
    global0 = array<i32, 18>();
    let var_1 = Struct_1(-393f);
    var var_2 = ~u_input.a >= u_input.a;
    let x = u_input.a;
    s_output = func_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(213f, -1078f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.x))))), func_4(func_1(), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(469f * -240f)))), func_4(Struct_1(var_1.a), Struct_1(global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-480f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1387f, var_1.a, false)) - 906f))));
}

