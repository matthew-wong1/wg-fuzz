struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: bool = true;

var<private> global3: array<vec4<bool>, 19>;

var<private> global4: array<i32, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    return global1[_wgslsmith_index_u32(~(1935u ^ _wgslsmith_sub_u32(30046u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 33050u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 30172u, 12550u)))), 27u)];
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = ~vec3<u32>(1u, 1u, 1u);
    let var_1 = _wgslsmith_div_u32(max(~var_0.x, var_0.x >> (3557u % 32u)), 0u);
    global3 = array<vec4<bool>, 19>();
    let var_2 = vec2<f32>(1382f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.b - -1000f)))), true)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -914f));
    return -1i;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec2<i32> {
    let var_0 = ~13850u;
    let var_1 = !select(vec2<bool>(true, !arg_0), select(vec2<bool>(arg_0, !arg_0), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(false, false)), arg_0), !(!vec2<bool>(false, arg_0)));
    global0 = array<vec4<u32>, 30>();
    let var_2 = _wgslsmith_clamp_u32(abs(_wgslsmith_mult_u32(abs(arg_1.x | var_0), 52353u & ~var_0)), arg_1.x, _wgslsmith_mult_u32(~arg_1.x, var_0));
    global3 = array<vec4<bool>, 19>();
    return vec2<i32>(_wgslsmith_add_i32(countOneBits(countOneBits(_wgslsmith_dot_vec2_i32(u_input.a.wz, u_input.a.xz))), -func_3(vec2<bool>(arg_0, false), vec3<f32>(-866f, 1645f, -718f), Struct_1(1000f, 109f), Struct_1(-938f, -1460f))), -9936i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    global3 = array<vec4<bool>, 19>();
    var var_0 = func_1(u_input.a.yw, !(-1062f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2341f, 496f, true)))));
    let var_1 = reverseBits(abs(30202u));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(~u_input.a.xx, func_2(false, vec3<u32>(var_1, 1u, 24270u)) << (~vec2<u32>(var_1, var_1) % vec2<u32>(32u)))), select(1i, ~(-1i), true));
    global1 = array<Struct_1, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~(~vec2<u32>(53228u, var_1))), vec2<u32>(var_1, var_1)));
}

