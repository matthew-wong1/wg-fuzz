struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32>;

var<private> global1: Struct_2;

var<private> global2: i32;

var<private> global3: array<bool, 19> = array<bool, 19>(false, true, false, true, true, false, false, true, false, true, false, false, true, true, true, true, true, false, true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = -1442f;
    global3 = array<bool, 19>();
    global3 = array<bool, 19>();
    global3 = array<bool, 19>();
    var var_1 = -626f;
    return StorageBuffer(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs((global1.a.x << (29522u % 32u)) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global1.a.x, global1.a.x), global1.a.zww)) ^ global1.a.x;
    let x = u_input.a;
    s_output = func_1(all(vec2<bool>(all(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 19u)], global1.c.a.x, false)), false)), Struct_2(~select(_wgslsmith_mult_vec4_i32(global1.a, vec4<i32>(34415i, global1.a.x, 67857i, global1.a.x)), global1.a << (vec4<u32>(global1.b, 608u, global1.b, 38751u) % vec4<u32>(32u)), select(vec4<bool>(global3[_wgslsmith_index_u32(51739u, 19u)], global1.c.a.x, global1.c.a.x, global1.c.a.x), vec4<bool>(true, false, true, global1.c.a.x), false)), 0u, Struct_1(vec3<bool>(global1.c.a.x, all(vec3<bool>(true, global3[_wgslsmith_index_u32(29198u, 19u)], global3[_wgslsmith_index_u32(global1.b, 19u)])), global1.c.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.b.x, 496f, global1.c.b.x)))), Struct_2(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(65971i, 70569i, 0i, global1.a.x), vec4<i32>(2147483647i, global1.a.x, global1.a.x, 0i)), _wgslsmith_mult_i32(global1.a.x, -32713i), -38653i >> (u_input.a.x % 32u)) << (~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.b, 4294967295u, 63877u), vec4<u32>(u_input.b, 3495u, global1.b, 4294967295u)) % vec4<u32>(32u)), 69837u, Struct_1(select(!vec3<bool>(true, global1.c.a.x, true), vec3<bool>(global1.c.a.x, false, global1.c.a.x), !global3[_wgslsmith_index_u32(23514u, 19u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.c.b, vec3<f32>(-668f, -1362f, global1.c.b.x)) * global1.c.b))));
}

