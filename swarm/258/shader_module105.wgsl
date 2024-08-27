struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-1i), Struct_1(1i), Struct_1(11915i), Struct_1(19843i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(2147483647i), Struct_1(-39798i), Struct_1(-32840i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(-10945i), Struct_1(-1i), Struct_1(-1i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(-2247i));

var<private> global1: array<Struct_1, 6>;

var<private> global2: array<f32, 19> = array<f32, 19>(895f, -1237f, -1000f, 1000f, 1000f, 863f, -148f, 859f, 628f, 334f, -1285f, 515f, -237f, -440f, 996f, -728f, -478f, -916f, -639f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, 1000f > global2[_wgslsmith_index_u32(~u_input.a, 19u)], true || select(false, all(vec4<bool>(false, false, true, true)), false && (global2[_wgslsmith_index_u32(u_input.a, 19u)] != global2[_wgslsmith_index_u32(u_input.a, 19u)])));
    global0 = array<Struct_1, 18>();
    var var_1 = u_input.b;
    let var_2 = !vec2<bool>(!(u_input.b >= 0i) || all(select(vec2<bool>(true, var_0.x), var_0.xx, vec2<bool>(true, false))), all(select(!var_0.xy, vec2<bool>(var_0.x, false), var_0.yx)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(~u_input.a, 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(~0u, 76591u | u_input.a, 2639f > global2[_wgslsmith_index_u32(329u, 19u)])), global2[_wgslsmith_index_u32(u_input.a, 19u)]);
}

