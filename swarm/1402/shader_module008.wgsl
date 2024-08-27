struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 27>;

var<private> global3: i32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<bool> {
    let var_0 = abs(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 0u, 4294967295u), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(36858u, u_input.a, 4294967295u)))));
    return vec2<bool>(true, false);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: i32) -> f32 {
    var var_0 = !vec4<bool>(true, !any(func_3()), true, any(vec2<bool>(true, true)));
    var var_1 = ~(_wgslsmith_add_u32(min(~u_input.a, 0u << (u_input.a % 32u)), ~30547u) >> (~min(4294967295u, max(1u, u_input.a)) % 32u));
    var var_2 = false;
    let var_3 = _wgslsmith_f_op_f32(arg_1 - -1016f);
    var var_4 = vec2<i32>(-(-47153i | (-u_input.b | 6650i)), arg_2);
    return _wgslsmith_f_op_f32(sign(var_3));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(-349f, _wgslsmith_f_op_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1250f - global1.b) - global1.b), _wgslsmith_f_op_f32(-739f + global1.a), 702f, global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f)), 62915i)));
    global1 = Struct_1(var_0.a, 777f);
    let var_1 = -18295i;
    var var_2 = 4294967295u;
    let var_3 = 30148u;
    return global2[_wgslsmith_index_u32(23006u, 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = (0u >> (u_input.a % 32u)) != ~firstLeadingBit(_wgslsmith_mult_u32(50360u, ~u_input.a));
    global0 = _wgslsmith_div_u32(u_input.a, u_input.a);
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a & 103636u, ~firstTrailingBit(u_input.a)), abs(vec2<u32>(max(28798u, u_input.a), u_input.a))), ~reverseBits(vec4<u32>(35721u, u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.a)));
}

