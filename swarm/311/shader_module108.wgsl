struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: i32 = -49166i;

var<private> global2: vec3<f32> = vec3<f32>(-241f, -857f, -406f);

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, 2147483647i), Struct_1(true, 0i), Struct_1(true, 0i), Struct_1(false, 2147483647i), Struct_1(true, 0i), Struct_1(true, 33717i), Struct_1(false, -10162i), Struct_1(false, 0i), Struct_1(true, 1i), Struct_1(true, 33854i), Struct_1(false, -12007i), Struct_1(false, -21441i), Struct_1(false, 39527i));

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global4.b | global4.b, _wgslsmith_mod_i32(-5730i, global4.b), -(1i ^ global0[_wgslsmith_index_u32(~50813u, 27u)])), firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 40800i, 1i), vec3<i32>(27303i, global0[_wgslsmith_index_u32(4294967295u, 27u)], -56844i)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), -1314f);
}

