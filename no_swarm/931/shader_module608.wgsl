struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
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

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<u32>(4294967295u, 4294967295u), 1075f, true), Struct_1(vec2<u32>(2890u, 40191u), 1324f, false), Struct_1(vec2<u32>(4294967295u, 21248u), 915f, false), Struct_1(vec2<u32>(4294967295u, 0u), -1029f, true), Struct_1(vec2<u32>(4294967295u, 65069u), -163f, false), Struct_1(vec2<u32>(34047u, 59578u), -595f, false), Struct_1(vec2<u32>(1u, 1u), 155f, false), Struct_1(vec2<u32>(1u, 4294967295u), 1667f, false), Struct_1(vec2<u32>(50551u, 71091u), 661f, false), Struct_1(vec2<u32>(4294967295u, 0u), -1000f, false), Struct_1(vec2<u32>(53210u, 1u), 1000f, false), Struct_1(vec2<u32>(59317u, 14832u), 699f, false), Struct_1(vec2<u32>(6299u, 1u), -826f, false), Struct_1(vec2<u32>(71431u, 1u), 452f, false), Struct_1(vec2<u32>(0u, 13388u), 318f, false), Struct_1(vec2<u32>(4294967295u, 3678u), 839f, true), Struct_1(vec2<u32>(4294967295u, 55592u), -1192f, true), Struct_1(vec2<u32>(26243u, 4294967295u), -408f, true));

var<private> global1: u32;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global3: vec3<u32>;

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.yxw;
    global1 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(-746f);
}

