struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(3099u, 1u, 18275u, 21379u, 4294967295u, 1u, 4294967295u, 88u, 0u, 0u, 63707u, 10383u, 4294967295u, 42632u, 1u, 4294967295u, 6389u, 1u, 4294967295u, 37543u, 28272u, 1u, 64675u, 0u, 4294967295u, 70207u, 1u, 4294967295u, 4294967295u);

var<private> global1: u32;

var<private> global2: array<u32, 25>;

var<private> global3: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(665f, 717f), vec2<f32>(-271f, 1315f), vec2<f32>(-1160f, 900f), vec2<f32>(732f, -918f), vec2<f32>(729f, -578f));

var<private> global4: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(-2669f), Struct_3(1016f), Struct_3(-607f), Struct_3(-1389f), Struct_3(739f), Struct_3(-1378f), Struct_3(-737f), Struct_3(1433f), Struct_3(281f), Struct_3(225f), Struct_3(463f), Struct_3(-946f), Struct_3(-338f), Struct_3(-260f), Struct_3(1000f), Struct_3(-1000f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(-13316i, 0i, vec3<i32>(~(-1i) << (_wgslsmith_div_u32(1u, ~global0[_wgslsmith_index_u32(4294967295u, 29u)]) % 32u), -48844i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(-40985i, -1i) >> (u_input.b.xy % vec2<u32>(32u)), countOneBits(vec2<i32>(-18618i, -3057i))), reverseBits(vec2<i32>(-1i, -20299i)))), vec3<u32>(4294967295u, ~(~abs(24453u)), ~global2[_wgslsmith_index_u32(~u_input.b.x, 25u)]));
}

