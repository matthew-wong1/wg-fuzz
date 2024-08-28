struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32) -> i32 {
    global2 = Struct_1(-1106f, 29560u);
    return (_wgslsmith_clamp_i32(-28923i, -(~57098i), arg_0) >> (_wgslsmith_clamp_u32(~(~0u), 40729u, _wgslsmith_clamp_u32(global3.b, u_input.a.x, u_input.a.x) & _wgslsmith_mult_u32(global3.b, 31907u)) % 32u)) & _wgslsmith_add_i32(35962i, arg_0);
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = -2147483647i;
    let var_1 = 35816u;
    var var_2 = vec2<bool>(global1.x, false);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, 163f, -448f, global2.a), vec4<f32>(global3.a, arg_0.a, -1209f, -827f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, 1386f, global2.a, 889f) - vec4<f32>(global3.a, 310f, global2.a, -301f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -339f, -1462f, arg_0.a) - vec4<f32>(arg_0.a, 693f, 255f, global3.a))))));
    let var_4 = select(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(var_0, -9062i, var_0), -vec3<i32>(-3661i, var_0, var_0))), (vec3<i32>(22567i, func_2(var_0), ~var_0) ^ vec3<i32>(17575i, ~var_0, min(var_0, var_0))) & _wgslsmith_mod_vec3_i32(vec3<i32>(0i, ~var_0, -1i), abs(vec3<i32>(31804i, var_0, 2147483647i))), !var_2.x);
    return max(var_4.x, countOneBits(var_4.x) | ~_wgslsmith_clamp_i32(var_4.x, var_0, -9352i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b;
    global0 = array<Struct_1, 1>();
    var var_1 = vec3<i32>(-((-1i ^ func_1(global0[_wgslsmith_index_u32(0u, 1u)])) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), global3.b >> (global2.b % 32u)) % 32u)), 0i, -49063i);
    global3 = Struct_1(global2.a, ~(~(~firstTrailingBit(57565u))));
    global0 = array<Struct_1, 1>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u << (~global2.b % 32u), 0u) ^ firstLeadingBit(global2.b), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec4<u32>(~global3.b, _wgslsmith_mod_u32(var_2.b, var_2.b), _wgslsmith_mult_u32(u_input.a.x, global2.b), ~1u), _wgslsmith_mod_vec4_u32(vec4<u32>(25487u, 75623u, global2.b, u_input.a.x), vec4<u32>(global2.b, 1u, global3.b, u_input.a.x) ^ u_input.a)), var_2.a);
}

