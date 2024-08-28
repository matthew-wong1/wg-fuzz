struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: array<i32, 3>;

var<private> global2: bool = false;

var<private> global3: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 15>();
    let var_0 = !(!(!vec3<bool>(true, u_input.c < 25622u, false)));
    let var_1 = firstLeadingBit(76972u);
    var var_2 = 877f;
    global0 = array<Struct_3, 15>();
    var var_3 = vec4<i32>(_wgslsmith_sub_i32(-(~global1[_wgslsmith_index_u32(4294967295u, 3u)]), 1i), min(~global1[_wgslsmith_index_u32(abs(1u), 3u)], -72076i), -_wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(-23622i, -2147483647i, global1[_wgslsmith_index_u32(var_1, 3u)], global1[_wgslsmith_index_u32(0u, 3u)])), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 0i, -2147483647i, -35889i), abs(vec4<i32>(global1[_wgslsmith_index_u32(var_1, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], -24159i)))), -1i);
    var var_4 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~abs(firstLeadingBit(vec3<u32>(16494u, 1u, 107288u))), ~firstTrailingBit(~vec3<u32>(0u, u_input.b, var_1))), ~(~max(vec2<u32>(1u, 1u), ~vec2<u32>(39742u, 0u))));
}

