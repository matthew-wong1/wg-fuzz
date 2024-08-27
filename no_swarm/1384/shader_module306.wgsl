struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 17>;

var<private> global2: i32 = 0i;

var<private> global3: array<f32, 10>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec3_i32(~(vec3<i32>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(u_input.b.x, 17u)], u_input.d) << (u_input.b.yzz % vec3<u32>(32u))), vec3<i32>(_wgslsmith_div_i32(22092i, -9880i), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(1u, 17u)], 2147483647i), ~(-19086i)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(min(abs(u_input.a.x), u_input.a.x), 10u)], global3[_wgslsmith_index_u32(0u, 10u)], false)), global3[_wgslsmith_index_u32(32528u, 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-25141i, abs(vec4<i32>(74119i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]) << (vec3<u32>(u_input.c, u_input.b.x, 61890u) % vec3<u32>(32u)), ~var_0), u_input.d, -_wgslsmith_sub_i32(var_0.x, -28760i))), _wgslsmith_mod_u32(6360u, ~firstTrailingBit(abs(63122u))), _wgslsmith_add_vec3_u32(~u_input.b.wzw, ~u_input.b.xxy), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-746f, -679f))), _wgslsmith_f_op_f32(f32(-1f) * -693f))));
}

