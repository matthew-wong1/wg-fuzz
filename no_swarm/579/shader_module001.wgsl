struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<i32, 31>;

var<private> global2: array<i32, 4>;

var<private> global3: Struct_1 = Struct_1(-277f, vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 28753i), vec4<f32>(1062f, -2111f, -633f, -1529f), vec3<i32>(1i, 30171i, 0i));

var<private> global4: array<vec2<u32>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = -1000f;
    global1 = array<i32, 31>();
    global4 = array<vec2<u32>, 21>();
    let var_1 = false;
    let var_2 = arg_1.d.xw;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(0u, ~u_input.b)), global4[_wgslsmith_index_u32(func_1(0u, Struct_1(1833f, _wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 4u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.c, 4u)], -10481i)), vec2<i32>(-26527i, u_input.d), _wgslsmith_div_vec4_f32(vec4<f32>(global3.d.x, global3.d.x, global3.a, global3.d.x), global3.d), u_input.a)) & (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 44312u), global4[_wgslsmith_index_u32(u_input.e, 21u)]) << (41542u % 32u)), 21u)]), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(u_input.c, ~0u, 14555u, ~0u)), u_input.c);
}

