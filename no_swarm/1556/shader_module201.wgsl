struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
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

var<private> global0: Struct_3 = Struct_3(Struct_2(false), Struct_2(false), 1u, vec4<i32>(-9691i, 45587i, -1i, 0i), vec4<f32>(691f, 494f, 272f, 1371f));

var<private> global1: bool = false;

var<private> global2: Struct_3;

var<private> global3: array<i32, 22>;

fn func_1(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: u32) -> Struct_1 {
    var var_0 = 1i;
    var var_1 = -global0.d.wxy | firstTrailingBit(vec3<i32>(1i, -global2.d.x, 39835i) << (abs(vec3<u32>(global0.c, 0u, 0u) << (vec3<u32>(global2.c, global2.c, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return Struct_1(countOneBits(17415u), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global0.e.x, global0.a.a != !(any(vec3<bool>(true, false, global0.a.a)) | all(vec2<bool>(false, global0.b.a))), any(select(vec3<bool>(true, global0.a.a, !global0.a.a), !select(vec3<bool>(global2.b.a, global0.a.a, global0.b.a), vec3<bool>(false, global0.a.a, global0.a.a), vec3<bool>(global2.b.a, global0.b.a, global0.b.a)), vec3<bool>(any(vec4<bool>(global2.b.a, true, false, global2.a.a)), !global2.b.a, global2.a.a))), ~select(global0.c, 74898u, all(vec4<bool>(global0.b.a, global0.b.a, false, true))) | (~u_input.c | firstTrailingBit(u_input.c >> (global0.c % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-541f);
}

