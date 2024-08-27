struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global2: array<vec4<u32>, 28>;

var<private> global3: array<u32, 16>;

var<private> global4: array<bool, 25> = array<bool, 25>(true, false, false, true, true, false, false, false, false, false, true, false, false, true, true, false, true, true, true, true, false, true, true, true, true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> bool {
    global3 = array<u32, 16>();
    global0 = array<Struct_1, 3>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1335f - 618f) + -763f) - _wgslsmith_f_op_f32(f32(-1f) * -491f))));
    global1 = vec4<bool>(false, global1.x, true, !(!(false | global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(94361u, 16u)], 24750u), 25u)])));
    var var_1 = ~u_input.b;
    return false;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_2 {
    let var_0 = !global1.zyx;
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(1u, 3u)], vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u >> (u_input.a % 32u), arg_1), 16u)] & ~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(arg_1, 16u)], u_input.a), 16u)], arg_1 << (~_wgslsmith_add_u32(4294967295u, u_input.a) % 32u)), var_0, global0[_wgslsmith_index_u32(1u, 3u)]);
    global0 = array<Struct_1, 3>();
    let var_2 = !(!select(!var_1.c, vec3<bool>(false, func_3(var_1, var_1.b), !var_0.x), true));
    var var_3 = var_1;
    return Struct_2(global0[_wgslsmith_index_u32(~(~u_input.a), 3u)], vec2<u32>(global3[_wgslsmith_index_u32(~(~1u), 16u)], _wgslsmith_dot_vec2_u32(firstTrailingBit(var_3.b << (vec2<u32>(arg_1, arg_1) % vec2<u32>(32u))), (var_3.b << (vec2<u32>(global3[_wgslsmith_index_u32(9855u, 16u)], arg_1) % vec2<u32>(32u))) ^ (var_3.b >> (vec2<u32>(var_1.b.x, global3[_wgslsmith_index_u32(0u, 16u)]) % vec2<u32>(32u))))), var_1.c, Struct_1(!vec3<bool>(arg_0, false, true), var_3.d.b, _wgslsmith_add_i32(31697i, _wgslsmith_sub_i32(firstTrailingBit(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(65902i, 1i), vec2<i32>(u_input.b, -36772i))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = u_input.b;
    let var_1 = func_2(true, 1u);
    return StorageBuffer(countOneBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-913f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-222f)))), -131f));
    global2 = array<vec4<u32>, 28>();
    var var_1 = !(!select(false, 4294967295u <= global3[_wgslsmith_index_u32(1u, 16u)], !(!global4[_wgslsmith_index_u32(4294967295u, 25u)])));
    var var_2 = !select(global1.yzw, vec3<bool>(any(global1.zz), true, true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 16u)], 25u)], false, global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 25u)]), global1.wzx), vec3<bool>(global1.x, global4[_wgslsmith_index_u32(u_input.a, 25u)], global1.x), true), global1.yzz, global1.xwx));
    let var_3 = var_0;
    let var_4 = 96200u;
    let x = u_input.a;
    s_output = func_1();
}

