struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 25>;

var<private> global1: array<vec4<u32>, 2>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1416f) * 835f);
    global1 = array<vec4<u32>, 2>();
    let var_1 = 1u;
    var var_2 = -2147483647i;
    var var_3 = vec3<u32>(4294967295u, 4344u << (_wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_1, 30954u, var_1)), _wgslsmith_div_vec3_u32(vec3<u32>(var_1, 6251u, 3539u), vec3<u32>(8071u, 31915u, 5678u))) % 32u), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_add_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 18126i), _wgslsmith_mult_vec2_i32(vec2<i32>(-18942i, u_input.a), vec2<i32>(24134i, u_input.a))), _wgslsmith_clamp_vec2_i32(-(vec2<i32>(-2147483647i, u_input.a) | vec2<i32>(u_input.a, u_input.a)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, -49576i)), vec2<i32>(u_input.a, u_input.a), true), vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a))), var_1);
}

