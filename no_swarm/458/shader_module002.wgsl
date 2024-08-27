struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(1u, vec3<bool>(false, true, true)), Struct_1(1073f));

var<private> global1: array<Struct_4, 13> = array<Struct_4, 13>(Struct_4(Struct_2(1u, vec3<bool>(false, false, true)), Struct_1(-1513f)), Struct_4(Struct_2(4294967295u, vec3<bool>(true, false, false)), Struct_1(-514f)), Struct_4(Struct_2(1u, vec3<bool>(false, true, false)), Struct_1(296f)), Struct_4(Struct_2(4294967295u, vec3<bool>(true, false, true)), Struct_1(-565f)), Struct_4(Struct_2(4350u, vec3<bool>(true, true, true)), Struct_1(168f)), Struct_4(Struct_2(28726u, vec3<bool>(true, false, false)), Struct_1(-1536f)), Struct_4(Struct_2(4294967295u, vec3<bool>(false, false, false)), Struct_1(572f)), Struct_4(Struct_2(4294967295u, vec3<bool>(true, true, false)), Struct_1(-905f)), Struct_4(Struct_2(0u, vec3<bool>(true, false, true)), Struct_1(1751f)), Struct_4(Struct_2(4294967295u, vec3<bool>(false, false, false)), Struct_1(1130f)), Struct_4(Struct_2(4294967295u, vec3<bool>(false, true, false)), Struct_1(-1000f)), Struct_4(Struct_2(25831u, vec3<bool>(true, false, true)), Struct_1(-755f)), Struct_4(Struct_2(4740u, vec3<bool>(false, false, false)), Struct_1(887f)));

var<private> global2: vec4<i32>;

var<private> global3: vec4<u32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 48904i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 49409u, global0.a.a), ~_wgslsmith_add_vec3_u32(global3.yzw, u_input.d)), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), global2.wy);
}

