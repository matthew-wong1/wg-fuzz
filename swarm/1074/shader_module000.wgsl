struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(4294967295u, 4294967295u, 85348u, 26472u, 1u, 14443u, 0u, 1u, 0u, 1u, 28819u, 0u, 0u, 1u, 4294967295u, 1u, 1u, 1u);

var<private> global1: array<bool, 31>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(15320u), Struct_1(103180u), Struct_1(0u), Struct_1(0u), Struct_1(33210u), Struct_1(42766u), Struct_1(4294967295u), Struct_1(16175u), Struct_1(49293u), Struct_1(1u), Struct_1(20325u), Struct_1(503u), Struct_1(39218u), Struct_1(1u), Struct_1(25333u), Struct_1(30994u), Struct_1(16133u), Struct_1(1099u), Struct_1(7305u), Struct_1(4294967295u), Struct_1(0u), Struct_1(4294967295u));

var<private> global3: array<i32, 19> = array<i32, 19>(-22795i, 35388i, 0i, i32(-2147483648), 0i, 39237i, -1i, 2147483647i, 17176i, 44023i, 16949i, -36000i, -23622i, -9780i, 1i, -1i, 2147483647i, -4563i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global3 = array<i32, 19>();
    global2 = array<Struct_1, 22>();
    global3 = array<i32, 19>();
    let var_0 = arg_0;
    let var_1 = -select(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(~arg_0.a, 18u)], _wgslsmith_dot_vec4_u32(vec4<u32>(42518u, global0[_wgslsmith_index_u32(79695u, 18u)], 1722u, 4294967295u), vec4<u32>(var_0.a, arg_0.a, 0u, arg_0.a))), 19u)], ~(global3[_wgslsmith_index_u32(1u, 19u)] | global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 19u)]), i32(-1i) * -2147483647i), countOneBits(-global3[_wgslsmith_index_u32(1u, 19u)]) | global3[_wgslsmith_index_u32(~var_0.a | u_input.c, 19u)], false || any(!vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.a, 31u)])));
    return ~0u;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> u32 {
    global1 = array<bool, 31>();
    global0 = array<u32, 18>();
    global1 = array<bool, 31>();
    global1 = array<bool, 31>();
    let var_0 = -987f;
    return ~(func_3(Struct_1(4294967295u)) << (14822u % 32u));
}

fn func_1() -> u32 {
    return select(12828u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~(~func_2(42722u, global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global2[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.d, 31u)])), 18u)], ~(~(u_input.d & u_input.d))), select(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.d, 19u)] << (1u % 32u), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 1u), 19u)]) != -14353i, !(!global1[_wgslsmith_index_u32(u_input.d, 31u)]), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(66759u, 29327u)), 18u)] ^ firstLeadingBit(global0[_wgslsmith_index_u32(u_input.d, 18u)]), 31u)] | true));
}

fn func_4(arg_0: vec4<bool>) -> vec3<bool> {
    return !vec3<bool>(false, !arg_0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 18>();
    global3 = array<i32, 19>();
    let var_0 = Struct_1(50290u);
    global1 = array<bool, 31>();
    var var_1 = !func_4(vec4<bool>(func_1() != ~global0[_wgslsmith_index_u32(var_0.a, 18u)], any(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(35284u, 31u)], true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(53506u, 31u)], false))), global1[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(0u, 18u)]), 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global3[_wgslsmith_index_u32(func_3(var_0), 19u)]), -1821i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -715f))), _wgslsmith_dot_vec2_i32(-(~abs(vec2<i32>(global3[_wgslsmith_index_u32(35654u, 19u)], -1i))), -abs(max(vec2<i32>(global3[_wgslsmith_index_u32(2705u, 19u)], global3[_wgslsmith_index_u32(980u, 19u)]), vec2<i32>(global3[_wgslsmith_index_u32(var_0.a, 19u)], global3[_wgslsmith_index_u32(u_input.c, 19u)])))), vec4<f32>(-326f, _wgslsmith_f_op_f32(ceil(1014f)), 176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(-2336f, 337f))) - -144f)));
}

