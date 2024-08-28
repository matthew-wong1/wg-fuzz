struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 21>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<f32>(-887f, 800f, 656f, 1000f)), Struct_1(vec4<f32>(-491f, 937f, -1026f, -469f)), Struct_1(vec4<f32>(-1258f, 2000f, -705f, -772f)), Struct_1(vec4<f32>(-177f, 850f, -1686f, -1777f)), Struct_1(vec4<f32>(1358f, -447f, -1032f, -1872f)));

var<private> global3: array<u32, 2> = array<u32, 2>(0u, 6199u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global2 = array<Struct_1, 5>();
    return u_input.c.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(~1u, 5u)];
    global0 = vec3<bool>(all(vec2<bool>(global0.x, global0.x)), any(vec4<bool>(true, true, false, !global0.x)), (u_input.b <= u_input.b) && global0.x);
    global3 = array<u32, 2>();
    global3 = array<u32, 2>();
    let var_1 = -(~func_3(global2[_wgslsmith_index_u32(14939u, 5u)]));
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 2u)], 2u)], 2u)]), 5u)];
}

fn func_1() -> u32 {
    global2 = array<Struct_1, 5>();
    let var_0 = 20475i >> (u_input.d.x % 32u);
    let var_1 = func_2(global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, 48200u ^ u_input.d.x) | global3[_wgslsmith_index_u32(reverseBits(select(u_input.d.x, 47923u, false)), 2u)], 2u)], 2u)], 21u)]);
    var var_2 = select(!(!(!select(global0.xy, vec2<bool>(global0.x, global0.x), false))), vec2<bool>(false, any(select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true), global0.x))), true);
    let var_3 = !vec3<bool>(!(!var_2.x), true, true);
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~1u | func_1(), 5u)];
    let var_1 = global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(19900i);
}

