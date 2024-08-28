struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: Struct_1 = Struct_1(true, true);

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: i32) -> Struct_4 {
    global1 = global2[_wgslsmith_index_u32(firstTrailingBit(1u) << (_wgslsmith_sub_u32(u_input.b.x, ~_wgslsmith_clamp_u32(~u_input.a, ~u_input.b.x, 0u ^ u_input.b.x)) % 32u), 16u)];
    let var_0 = vec3<u32>(10604u, u_input.a, u_input.a);
    var var_1 = Struct_5(arg_0.a);
    global1 = Struct_1(true, !(((arg_2 | u_input.c.x) ^ -2147483647i) < _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.x, -2147483647i, 27034i), arg_1 | vec3<i32>(u_input.c.x, u_input.c.x, 73734i))));
    var var_2 = vec4<f32>(714f, 351f, arg_0.a.a.x, -1342f);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = 0u;
    var var_2 = Struct_5(func_1(Struct_5(Struct_4(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)]))), _wgslsmith_mod_vec3_i32(vec3<i32>(-15582i, ~u_input.c.x, u_input.c.x), ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.c.x, 2147483647i), vec3<i32>(u_input.c.x, u_input.c.x, 33478i))), 1i));
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(-754f, var_2.a.a.x, global0[_wgslsmith_index_u32(7312u, 10u)]), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.x, 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f)), 111f));
    global0 = array<f32, 10>();
    let var_4 = 1731i;
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

