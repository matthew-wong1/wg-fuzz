struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(1u, vec2<u32>(33612u, 55607u), true), Struct_1(0u, vec2<u32>(18431u, 126093u), true), Struct_1(0u, vec2<u32>(35617u, 1u), true), Struct_1(38428u, vec2<u32>(4294967295u, 1u), true), Struct_1(38520u, vec2<u32>(19540u, 29262u), false), Struct_1(4294967295u, vec2<u32>(31042u, 16305u), true), Struct_1(10085u, vec2<u32>(27770u, 63585u), false), Struct_1(15896u, vec2<u32>(1u, 0u), true), Struct_1(501u, vec2<u32>(28239u, 44061u), false), Struct_1(0u, vec2<u32>(0u, 62571u), true), Struct_1(0u, vec2<u32>(29481u, 1u), false), Struct_1(1u, vec2<u32>(19049u, 4294967295u), true), Struct_1(4294967295u, vec2<u32>(0u, 0u), true), Struct_1(59842u, vec2<u32>(0u, 11925u), true), Struct_1(87276u, vec2<u32>(0u, 1u), false), Struct_1(55053u, vec2<u32>(1u, 56907u), false), Struct_1(1u, vec2<u32>(3092u, 4294967295u), false), Struct_1(5183u, vec2<u32>(0u, 0u), true), Struct_1(0u, vec2<u32>(96037u, 4294967295u), false), Struct_1(1664u, vec2<u32>(1u, 1u), false), Struct_1(0u, vec2<u32>(2997u, 1u), false), Struct_1(4294967295u, vec2<u32>(1u, 3131u), true), Struct_1(35890u, vec2<u32>(1u, 0u), false), Struct_1(57338u, vec2<u32>(19582u, 4168u), false), Struct_1(1874u, vec2<u32>(70u, 1013u), false), Struct_1(45599u, vec2<u32>(36332u, 87810u), false));

var<private> global2: array<vec3<i32>, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> u32 {
    global1 = array<Struct_1, 26>();
    global2 = array<vec3<i32>, 20>();
    var var_0 = -226f;
    let var_1 = !select(true, true, true);
    var var_2 = u_input.a.x;
    return u_input.c.x | 18652u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(768f)), _wgslsmith_f_op_f32(f32(-1f) * -663f)))));
    global0 = array<Struct_1, 7>();
    global1 = array<Struct_1, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, max(min(select(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c & vec3<u32>(0u, u_input.c.x, 4294967295u), true), vec3<u32>(4294967295u, ~u_input.c.x, func_1())), max(min(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), ~vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)), countOneBits(~u_input.c))));
}

