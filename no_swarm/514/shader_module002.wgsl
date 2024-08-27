struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(5665u, 0i), Struct_1(1u, i32(-2147483648)), Struct_1(1u, 2147483647i), Struct_1(1u, 0i), Struct_1(0u, i32(-2147483648)), Struct_1(15693u, -1i), Struct_1(1u, 28017i), Struct_1(9632u, -1i), Struct_1(49912u, i32(-2147483648)), Struct_1(0u, 6012i), Struct_1(1u, -12552i), Struct_1(0u, -28384i), Struct_1(13584u, 8376i), Struct_1(4294967295u, -4044i), Struct_1(43541u, -7167i), Struct_1(57186u, 0i), Struct_1(24054u, 0i), Struct_1(45317u, 2147483647i), Struct_1(48172u, 0i), Struct_1(4294967295u, 10816i), Struct_1(0u, -43875i), Struct_1(1u, 1i), Struct_1(1u, -1i), Struct_1(4294967295u, 2147483647i), Struct_1(4294967295u, 17295i), Struct_1(1u, i32(-2147483648)), Struct_1(4294967295u, -17738i), Struct_1(4294967295u, 1i), Struct_1(4294967295u, 1i), Struct_1(44153u, 17654i), Struct_1(34839u, 0i), Struct_1(58563u, i32(-2147483648)));

var<private> global2: i32 = 30649i;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(0u >= u_input.b.x, true, false);
    let var_1 = var_0.yx;
    let var_2 = false;
    let var_3 = Struct_1(_wgslsmith_sub_u32(1u, ~firstTrailingBit(u_input.a)), 0i);
    let var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_3.b & (0i << (1u % 32u)), -(~(-25650i)), ~firstTrailingBit(11540i)));
}

