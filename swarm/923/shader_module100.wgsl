struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 17>;

var<private> global2: array<vec3<u32>, 27>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 17>();
    var var_0 = ~u_input.a.x;
    let var_1 = u_input.a.x;
    var var_2 = select(global0.zz, vec2<bool>(true, false), true);
    var_2 = !vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, var_2.x, var_2.x), var_2.x)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(26847u, 17u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1208f, global1[_wgslsmith_index_u32(4294967295u, 17u)])) + _wgslsmith_f_op_f32(-1000f * global1[_wgslsmith_index_u32(var_1, 17u)]))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_1, 17u)]))))), ~abs(vec4<i32>(_wgslsmith_sub_i32(-48112i, -16152i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 14494i, -2147483647i), vec3<i32>(2147483647i, 7980i, 2147483647i)), _wgslsmith_mod_i32(0i, 27154i), ~(-1i))), -(~vec2<i32>(min(-48030i, 0i), 2503i)), 4294967295u ^ u_input.a.x, vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(3706i, -1i, 28361i), vec3<i32>(16964i, -2147483647i, -22045i), vec3<bool>(global0.x, global0.x, var_2.x)), -vec3<i32>(1i, 1i, -2147483647i)), _wgslsmith_add_i32(-1i, ~(-38535i)), -11880i) ^ ~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-29540i, 1i, -39350i)));
}

