struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 25>;

var<private> global2: i32;

var<private> global3: array<vec2<i32>, 13>;

var<private> global4: u32 = 33108u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = ~46093u;
    global3 = array<vec2<i32>, 13>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1[_wgslsmith_index_u32(global0.a, 25u)])))) * vec2<f32>(arg_0, global1[_wgslsmith_index_u32(~13270u, 25u)])));
    var_0 = 4294967295u;
    global1 = array<f32, 25>();
    return -u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.a.x);
    var var_1 = -vec4<i32>(reverseBits(u_input.e), u_input.c.x, ~(-func_1(global1[_wgslsmith_index_u32(0u, 25u)])), u_input.d.x);
    global0 = Struct_1(_wgslsmith_add_u32(u_input.a.x ^ 0u, 16431u), abs(global0.b));
    global3 = array<vec2<i32>, 13>();
    var_1 = ~(~(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, 0i, -69071i), vec4<i32>(u_input.e, 9155i, u_input.d.x, -12460i)) | (vec4<i32>(u_input.d.x, 1i, var_1.x, -1i) & vec4<i32>(u_input.e, -2147483647i, var_1.x, -1i))) | _wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.d.x, i32(-1i) * -50428i, ~2147483647i, var_1.x << (10449u % 32u)), (vec4<i32>(var_1.x, -1i, u_input.e, u_input.d.x) & vec4<i32>(-59591i, var_1.x, u_input.d.x, 1i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, -11604i, var_1.x, -5791i), vec4<i32>(-1i, 2147483647i, 2147483647i, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global0.a ^ 163565u, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(32704u, 25u)])), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 25u)], _wgslsmith_f_op_f32(f32(-1f) * -480f)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1723f, 1000f, 886f))) * vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 25u)], global1[_wgslsmith_index_u32(6524u, 25u)], global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1[_wgslsmith_index_u32(global0.b.x, 25u)], 375f, -1109f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-636f, global1[_wgslsmith_index_u32(4294967295u, 25u)], -248f) - vec3<f32>(global1[_wgslsmith_index_u32(36122u, 25u)], 1002f, 339f))))))));
}

