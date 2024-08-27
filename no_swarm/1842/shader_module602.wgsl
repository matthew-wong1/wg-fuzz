struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> vec2<u32> {
    var var_0 = u_input.b.x;
    let var_1 = vec4<u32>(~10068u, u_input.b.x, ~(~0u), u_input.b.x) << (~firstTrailingBit(~abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) % vec4<u32>(32u));
    var var_2 = Struct_1(arg_0, var_1.yw);
    global0 = array<Struct_1, 28>();
    var_0 = _wgslsmith_dot_vec4_u32(select(reverseBits(~var_1), ~firstTrailingBit(vec4<u32>(var_1.x, var_2.b.x, var_1.x, var_1.x)) ^ var_1, select(vec4<bool>(false, any(vec3<bool>(true, arg_0.x, true)), true, !arg_0.x), select(!vec4<bool>(var_2.a.x, true, var_2.a.x, false), select(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<bool>(false, arg_0.x, false, false), vec4<bool>(true, false, var_2.a.x, true)), vec4<bool>(arg_0.x, true, var_2.a.x, var_2.a.x)), !(!vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)))), ~(~var_1));
    return var_1.zz;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 28u)];
    var_0 = Struct_1(vec2<bool>(var_0.a.x, arg_0), ~var_0.b);
    var var_1 = _wgslsmith_dot_vec2_u32(select(func_3(select(var_0.a, vec2<bool>(arg_0, true), var_0.a)), u_input.b.zz, var_0.a.x), u_input.b.wx | (_wgslsmith_clamp_vec2_u32(~vec2<u32>(17636u, var_0.b.x), abs(var_0.b), vec2<u32>(var_0.b.x, var_0.b.x)) ^ vec2<u32>(~4294967295u, _wgslsmith_mod_u32(15254u, var_0.b.x))));
    return global0[_wgslsmith_index_u32(var_0.b.x, 28u)];
}

fn func_1() -> vec2<bool> {
    global0 = array<Struct_1, 28>();
    var var_0 = func_2(true);
    var var_1 = -(~u_input.a >> (~select(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, u_input.b.x, 8501u, 73092u), true) % vec4<u32>(32u)));
    global0 = array<Struct_1, 28>();
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!func_1(), u_input.b.yz);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(func_2(false).b.x, 28u)]);
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(countOneBits(15194u), reverseBits(select(1u, 29979u, false))), 1u), 28u)]);
    global0 = array<Struct_1, 28>();
    let var_3 = Struct_2(Struct_1(!select(vec2<bool>(var_2.a.a.x, var_1.a.a.x), vec2<bool>(var_0.a.x, false), !var_1.a.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.zxy, vec3<u32>(var_1.a.b.x, 1496u, var_2.a.b.x)), func_2(var_0.a.x).b.x), ~vec2<u32>(u_input.b.x, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<u32>(var_2.a.b.x, 1u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(617f, -100f)), _wgslsmith_f_op_f32(round(-1241f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f)))), vec4<u32>(_wgslsmith_add_u32(var_1.a.b.x, _wgslsmith_mult_u32(func_3(vec2<bool>(var_1.a.a.x, var_1.a.a.x)).x, 4294967295u)), 0u, ~u_input.b.x, var_0.b.x), 0u);
}

