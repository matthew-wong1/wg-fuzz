struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<u32>, 15>;

var<private> global2: array<bool, 30>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 30>();
    global2 = array<bool, 30>();
    let var_0 = (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1404f, 1000f)) - _wgslsmith_f_op_f32(sign(-335f))), _wgslsmith_f_op_f32(f32(-1f) * -2334f), all(select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e, 30u)], global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(238u, 30u)], global2[_wgslsmith_index_u32(25077u, 30u)]), vec3<bool>(global2[_wgslsmith_index_u32(52893u, 30u)], false, global2[_wgslsmith_index_u32(0u, 30u)]))))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-106f, -767f))))) || global2[_wgslsmith_index_u32(u_input.b.x & u_input.b.x, 30u)];
    global2 = array<bool, 30>();
    global2 = array<bool, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(-1155f, _wgslsmith_div_vec3_i32(abs(vec3<i32>(~1i, u_input.a.x, -u_input.c.x)), _wgslsmith_mult_vec3_i32(u_input.a.xww, max(max(vec3<i32>(u_input.a.x, u_input.c.x, u_input.c.x), u_input.c.yww), u_input.a.wyx << (vec3<u32>(0u, u_input.e, u_input.e) % vec3<u32>(32u))))), ~(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, -2147483647i) & u_input.a, u_input.c)), _wgslsmith_mult_vec4_i32(u_input.c, ~vec4<i32>(-u_input.a.x, u_input.d >> (1u % 32u), 30705i, abs(u_input.c.x))));
}

