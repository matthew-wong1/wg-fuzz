struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global1: vec2<i32>;

var<private> global2: array<u32, 31>;

var<private> global3: array<vec2<i32>, 4>;

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(23209i, global1.x) << (firstLeadingBit(vec2<u32>(global0.x, global2[_wgslsmith_index_u32(1u, 31u)])) % vec2<u32>(32u)), vec2<i32>(-1i, -34660i))), max(_wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, global1.x, global1.x, 35216i), -vec4<i32>(0i, -1i, global1.x, global1.x)), firstLeadingBit(-vec4<i32>(29760i, u_input.a, global1.x, global1.x))) >> (select(~vec4<u32>(global0.x, 65244u, global0.x, 9906u), select(~vec4<u32>(global2[_wgslsmith_index_u32(24775u, 31u)], 45669u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 31u)], 31u)], 0u), ~vec4<u32>(1u, 67240u, 0u, global0.x), any(vec2<bool>(true, true))), vec4<bool>(global0.x != 65532u, any(vec2<bool>(false, false)), true, true)) % vec4<u32>(32u)));
}

