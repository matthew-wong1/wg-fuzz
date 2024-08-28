struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: f32;

var<private> global2: array<Struct_4, 13>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>) -> bool {
    return any(global0.yy);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5, arg_3: vec4<bool>) -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
    var var_0 = vec2<f32>(arg_1, arg_0.b);
    global2 = array<Struct_4, 13>();
    let var_1 = Struct_1(1u, !vec2<bool>(arg_0.a.x, !arg_3.x), _wgslsmith_div_u32(~(~4122u), _wgslsmith_clamp_u32(0u, 1u, 22236u)) >> (~1u % 32u), func_3(u_input.b.yxx, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-302f, -320f)), _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -693f)))));
    var var_2 = Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, 838f)), -497f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * arg_1)) + vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-arg_0.b))), vec3<f32>(-485f, _wgslsmith_f_op_f32(f32(-1f) * -1529f), _wgslsmith_f_op_f32(abs(arg_1))), countOneBits(abs(u_input.b)));
    return ~_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a, 59142u, 54970u), vec3<u32>(1u, 4294967295u, var_1.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c, var_1.c, var_1.a), vec3<u32>(0u, var_1.c, 4294967295u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(35132u, var_1.a, var_1.a), vec3<u32>(1u, 1u, var_1.c)), vec3<u32>(_wgslsmith_mod_u32(1u, var_1.a), 3970u, 7780u), ~(~vec3<u32>(var_1.a, 36494u, 2820u))));
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -829f);
    var var_2 = vec4<u32>(~28313u, firstLeadingBit(abs(0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(1u, 0u, 1u) >> (func_2(Struct_2(vec2<bool>(global0.x, global0.x), arg_0.x), arg_0.x, Struct_5(Struct_4(true, global0.zx), global0.x, true), vec4<bool>(true, false, global0.x, global0.x)) % vec3<u32>(32u)))), _wgslsmith_dot_vec3_u32(~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 50082u, 1u), vec3<u32>(2757u, 11423u, 4084u))), max(~abs(vec3<u32>(17055u, 1u, 51011u)), vec3<u32>(select(6215u, 4294967295u, true), 1u, ~17584u))));
    let var_3 = global0.x;
    let var_4 = true;
    return ~firstTrailingBit(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!select(select(!vec3<bool>(true, global0.x, true), vec3<bool>(true, true, global0.x), global0.x), select(!vec3<bool>(false, global0.x, false), vec3<bool>(false, global0.x, false), global0.x), false));
    global2 = array<Struct_4, 13>();
    global1 = -2127f;
    let var_0 = global2[_wgslsmith_index_u32(1u, 13u)];
    var var_1 = ~firstLeadingBit(abs(firstTrailingBit(vec2<u32>(1u, 1u))));
    var_1 = abs(countOneBits(vec2<u32>(1u, func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-706f, -1000f, 1000f, -1651f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1155f, 985f, 1171f, 1000f)))))), vec4<f32>(-456f, -931f, _wgslsmith_f_op_f32(step(1118f, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -1139f)));
    global2 = array<Struct_4, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1614f + 906f) + var_2.x)));
}

