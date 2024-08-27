struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, false, true)), -472f, 537i);

var<private> global2: i32 = -1i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1373f * global1.b);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~firstLeadingBit(~vec4<u32>(4294967295u, u_input.c, 57428u, 6741u)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 0u, 1u, u_input.c), ~vec4<u32>(10704u, u_input.c, 4294967295u, 4294967295u), ~vec4<u32>(u_input.c, 4294967295u, 5227u, u_input.c)), ~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) & abs(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u)))), ~(vec4<u32>(u_input.c, 4294967295u, _wgslsmith_mod_u32(4294967295u, 4294967295u), 1u) | ((vec4<u32>(23817u, 21985u, 9443u, u_input.c) ^ vec4<u32>(0u, 12916u, u_input.c, 4294967295u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.c, u_input.c), vec4<u32>(0u, u_input.c, 2358u, 0u), vec4<u32>(44646u, 74981u, u_input.c, 12711u))))), 24u)];
    var_0 = 104f;
    var var_2 = vec2<i32>(_wgslsmith_add_i32(~(2147483647i >> (1u % 32u)), ~_wgslsmith_dot_vec3_i32(u_input.a.xxx, u_input.b.yxy)) | global1.c, global1.c);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b)));
    var var_4 = ~0u;
    var_1 = global0[_wgslsmith_index_u32(99134u, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, var_1.b) - 448f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 466f), _wgslsmith_f_op_f32(max(1000f, -569f))) * var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -1730f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b)) + _wgslsmith_div_f32(915f, global1.b))))));
}

