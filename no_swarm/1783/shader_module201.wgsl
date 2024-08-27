struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
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

var<private> global0: array<Struct_1, 16>;

var<private> global1: array<u32, 22>;

var<private> global2: array<vec3<f32>, 21>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> u32 {
    global1 = array<u32, 22>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yx, _wgslsmith_mod_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.zx, vec2<u32>(u_input.a.x, 1u)) >> (~vec2<u32>(global1[_wgslsmith_index_u32(76142u, 22u)], global1[_wgslsmith_index_u32(36838u, 22u)]) % vec2<u32>(32u)), vec2<u32>(max(u_input.a.x, 4294967295u), u_input.a.x << (u_input.b.x % 32u))))), 22u)];
    global1 = array<u32, 22>();
    global2 = array<vec3<f32>, 21>();
    global2 = array<vec3<f32>, 21>();
    return global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(u_input.a.x, ~1u) >> (~select(4294967295u, u_input.a.x, true) % 32u)), 22u)] & 1u;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    global1 = array<u32, 22>();
    var var_0 = Struct_1(~arg_0, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1104f, 238f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1556f) - vec2<f32>(869f, -1648f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-265f, 517f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1774f, 559f))))))))));
    return 18268u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a.x, 0u, global1[_wgslsmith_index_u32(22991u, 22u)]), u_input.b.xyx, true), u_input.b.yzz >> (u_input.b.zwz % vec3<u32>(32u))), abs(_wgslsmith_add_vec3_u32(u_input.b.xyw, u_input.b.wxy))), vec3<u32>(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], 22u)], 22u)]), func_1(), ~4466u)), func_2(vec4<i32>(u_input.d, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-19014i, u_input.d), -u_input.d), -1i, _wgslsmith_add_i32(-17686i, u_input.d) >> (37881u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e);
}

