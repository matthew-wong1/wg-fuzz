struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 12>;

var<private> global2: array<bool, 5>;

var<private> global3: u32 = 0u;

var<private> global4: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(global4.x, _wgslsmith_f_op_f32(trunc(global4.x)));
    var var_1 = Struct_1(~_wgslsmith_mult_vec2_i32(u_input.a.xx, vec2<i32>(-2147483647i, u_input.a.x & u_input.a.x)));
    global0 = _wgslsmith_clamp_i32(~_wgslsmith_dot_vec3_i32(firstTrailingBit(-u_input.a.wzz), max(u_input.a.xxw, vec3<i32>(-1i, 1i, u_input.a.x))), ~u_input.a.x, -2147483647i);
    global3 = _wgslsmith_mult_u32(1u, ~(u_input.c >> ((_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) ^ 0u) % 32u)));
    global1 = array<Struct_3, 12>();
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-244f, global4.x, 849f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(808f, -1614f, -753f) * vec3<f32>(global4.x, -857f, 335f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1221f, global4.x, -561f)), _wgslsmith_div_vec3_f32(vec3<f32>(612f, 495f, 1332f), vec3<f32>(var_0.x, -1008f, 780f)), any(vec4<bool>(false, false, true, true))))))), reverseBits(u_input.a.xwz));
    global1 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_2.a.x, global4.x)), 248f, all(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 5u)], global2[_wgslsmith_index_u32(u_input.b.x, 5u)], true), select(vec3<bool>(false, global2[_wgslsmith_index_u32(76249u, 5u)], global2[_wgslsmith_index_u32(u_input.c, 5u)]), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 5u)], true, global2[_wgslsmith_index_u32(10374u, 5u)]), false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 5u)], global2[_wgslsmith_index_u32(u_input.b.x, 5u)], false))))), 1086f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(var_0.x * 311f), _wgslsmith_f_op_f32(step(var_2.a.x, 1549f))))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(19961u, u_input.c, u_input.b.x, u_input.b.x), vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), u_input.b.x, 35738u ^ u_input.b.x, _wgslsmith_mod_u32(u_input.c, 4294967295u))), max(~0u, 22123u));
}

