struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<bool>, 17>;

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    global1 = array<vec3<bool>, 17>();
    var var_1 = Struct_3(Struct_1(firstTrailingBit(_wgslsmith_sub_i32(u_input.a.x, u_input.b.x)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, max(19823u, 36412u)) ^ _wgslsmith_mod_u32(1u, global0.x), 17u)]));
    global0 = vec3<u32>(44875u, ~(1u << (max(45774u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, global0.x, global0.x, global0.x))) % 32u)), select(~(42105u & (4294967295u >> (global0.x % 32u))), 0u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 32445u, 1u), vec3<u32>(global0.x, global0.x, 0u)), vec3<u32>(global0.x, global0.x, 0u)) < _wgslsmith_mod_u32(global0.x, global0.x | global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(10882u, 1u), max(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(42513u, 4294967295u, 1u)) ^ 5700u, global0.x), 0u), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1f)), -886f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -480f) + _wgslsmith_f_op_f32(round(628f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1022f, -585f, 1000f)))))));
}

