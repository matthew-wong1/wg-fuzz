struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(-335f), Struct_4(-682f), Struct_4(2322f), Struct_4(-157f), Struct_4(1173f), Struct_4(-1253f), Struct_4(-547f), Struct_4(-771f));

var<private> global2: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(385f, 1000f, 372f, -130f), vec4<f32>(1406f, -640f, 462f, -670f), vec4<f32>(-132f, -504f, -635f, 207f), vec4<f32>(-580f, -732f, -2234f, -143f), vec4<f32>(612f, 215f, 165f, 1000f), vec4<f32>(1000f, 1000f, -562f, 647f), vec4<f32>(750f, -140f, 495f, -1113f), vec4<f32>(-405f, -861f, -184f, 714f), vec4<f32>(278f, -715f, -350f, 425f), vec4<f32>(-154f, -1721f, 841f, 478f), vec4<f32>(728f, -2104f, -477f, -792f), vec4<f32>(1004f, -1306f, 372f, 414f), vec4<f32>(1822f, 1000f, 1439f, -689f), vec4<f32>(-133f, 765f, 766f, -1000f), vec4<f32>(-1131f, -541f, 496f, -105f), vec4<f32>(154f, -2137f, 281f, 220f), vec4<f32>(-581f, 303f, -1272f, -1047f), vec4<f32>(451f, 801f, -1168f, 698f), vec4<f32>(-296f, 1047f, -3044f, 1425f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var_0 = -68464i;
    var_0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~countOneBits(~vec4<u32>(global0[_wgslsmith_index_u32(31935u, 22u)], 56003u, global0[_wgslsmith_index_u32(62693u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)])), min(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)], 22u)] << (1u % 32u), 22u)], 22u)], _wgslsmith_clamp_u32(0u, 89513u, 84648u), ~9315u, ~10768u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], 22u)], 22u)], 22u)], 22u)], 1u, 11703u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 22u)]) | vec4<u32>(global0[_wgslsmith_index_u32(13096u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], 4294967295u, global0[_wgslsmith_index_u32(14354u, 22u)]), ~vec4<u32>(global0[_wgslsmith_index_u32(27927u, 22u)], 0u, global0[_wgslsmith_index_u32(16636u, 22u)], 29659u), _wgslsmith_div_vec4_u32(vec4<u32>(73428u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20426u, 22u)], 22u)], global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55553u, 22u)], 22u)]), vec4<u32>(global0[_wgslsmith_index_u32(21373u, 22u)], 50088u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)], 4294967295u))))), ~global0[_wgslsmith_index_u32(1u, 22u)], vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.b, -23369i, u_input.b)), 1u, max(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]) >> (vec3<u32>(11681u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33307u, 22u)], 22u)]) % vec3<u32>(32u)), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 22u)], 22u)], 3670u, 4294967295u)), vec3<u32>(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19632u, 22u)], 22u)], 22u)]), ~88703u, abs(~0u))));
}

