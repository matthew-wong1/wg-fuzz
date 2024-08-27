struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
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

var<private> global0: f32 = 449f;

var<private> global1: Struct_1;

var<private> global2: array<u32, 19>;

var<private> global3: Struct_3 = Struct_3(2147483647i, 79999u, vec4<bool>(true, true, true, false));

var<private> global4: i32 = 34369i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<i32>(select(global3.a, ~0i, global3.c.x), firstTrailingBit(countOneBits(-5755i)), ~(i32(-1i) * -31126i)) >> (~_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.zwz, vec3<u32>(global3.b, global2[_wgslsmith_index_u32(global3.b, 19u)], 0u)), vec3<u32>(~1u, global3.b, global3.b)) % vec3<u32>(32u));
    var var_1 = vec3<i32>(var_0.x << (60160u % 32u), _wgslsmith_dot_vec3_i32(-vec3<i32>(global3.a, -1259i, global3.a), vec3<i32>(i32(-1i) * -1629i, 33708i & u_input.a, _wgslsmith_clamp_i32(global3.a, -1i, -1i))) & global3.a, -2147483647i);
    global2 = array<u32, 19>();
    let var_2 = false;
    let var_3 = var_0.x;
    var var_4 = 55769u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

