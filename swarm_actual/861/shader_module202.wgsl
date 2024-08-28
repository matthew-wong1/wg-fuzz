struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

var<private> global2: array<u32, 10> = array<u32, 10>(12714u, 4294967295u, 19033u, 0u, 1u, 1740u, 4294967295u, 19876u, 0u, 4294967295u);

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-1740f, -1200f), -19913i, -385f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: f32) -> f32 {
    var var_0 = ~vec3<u32>((global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 10u)], 10u)] | global0[_wgslsmith_index_u32(16294u, 11u)]) ^ ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], 10u)], 10u)], 43369u, _wgslsmith_mult_u32(83713u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(108417u, 11u)], 11u)])) & ~(~vec3<u32>(firstLeadingBit(1u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31529u, 11u)], 11u)] >> (19747u % 32u), 26183u));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.x + global3.a.x), _wgslsmith_f_op_f32(-global3.c)) - global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(-431f)));
}

