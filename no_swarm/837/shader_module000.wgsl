struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(4167i, -1i, 0i))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(0i, 34032i, -32309i))), Struct_2(Struct_1(vec2<bool>(true, false), vec3<i32>(-1i, -1i, -1i))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(2147483647i, 34841i, -24580i))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(1i, 0i, -84736i))), Struct_2(Struct_1(vec2<bool>(false, false), vec3<i32>(1i, 39219i, 0i))), Struct_2(Struct_1(vec2<bool>(false, true), vec3<i32>(-1i, -1i, 0i))));

var<private> global2: array<u32, 17>;

var<private> global3: array<vec3<f32>, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1076i;
    global0 = array<Struct_3, 25>();
    let var_1 = Struct_1(vec2<bool>(select(any(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, true)), true), 0u < ~global2[_wgslsmith_index_u32(3060u, 17u)]), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-58437i, 0i, u_input.c), ~vec3<i32>(u_input.c, 1i, 2147483647i) & (vec3<i32>(u_input.b, u_input.c, u_input.b) ^ vec3<i32>(u_input.c, 1i, u_input.b))));
    global1 = array<Struct_2, 7>();
    var var_2 = countOneBits(~reverseBits(~(~global2[_wgslsmith_index_u32(u_input.a.x, 17u)])));
    let x = u_input.a;
    s_output = StorageBuffer(24634u);
}

