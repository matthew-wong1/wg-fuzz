struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_3, 3>;

var<private> global2: array<bool, 7> = array<bool, 7>(true, true, false, false, false, true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> f32 {
    global2 = array<bool, 7>();
    var var_0 = u_input.a.x;
    let var_1 = -61611i;
    global2 = array<bool, 7>();
    let var_2 = i32(-1i) * -5857i;
    return -1187f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 3>();
    global0 = all(vec4<bool>(true, true, all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 7u)], false, global2[_wgslsmith_index_u32(30822u, 7u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 7u)], true, global2[_wgslsmith_index_u32(u_input.b, 7u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)]))), !(!(!global2[_wgslsmith_index_u32(45185u, 7u)]))));
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(204f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(575f * 1012f), _wgslsmith_f_op_f32(func_1())))));
    var var_1 = ~u_input.a.x;
    var var_2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~select(select(vec2<u32>(19323u, 10308u), vec2<u32>(0u, u_input.b), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 7u)])), ~vec2<u32>(u_input.b, 0u), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], global2[_wgslsmith_index_u32(u_input.b, 7u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 7u)], true), false))), _wgslsmith_sub_i32(abs(~u_input.a.x), 1i), vec3<u32>(~max(1u, 1u), 1u, u_input.b), -44506i, _wgslsmith_f_op_f32(f32(-1f) * -813f));
}

