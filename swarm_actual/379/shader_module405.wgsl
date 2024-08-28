struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<f32>(-441f, -547f), i32(-2147483648)), Struct_1(vec2<f32>(-432f, -1074f), i32(-2147483648)), Struct_1(vec2<f32>(1000f, 152f), 30926i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f + 855f)), 805f, -432f, _wgslsmith_f_op_f32(-1700f * 1000f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, 1173f, 455f, 160f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2308f, -157f, 467f, 1205f))))))));
    let var_1 = ~arg_0.b;
    return -u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = vec3<u32>(~_wgslsmith_mod_u32(arg_1.x, _wgslsmith_sub_u32(arg_1.x, arg_1.x) | abs(0u)), arg_0.a, ~62243u);
    var var_1 = all(vec3<bool>(!arg_2.x, arg_2.x, 5611i > func_3(Struct_2(32743u, vec2<u32>(29570u, 24692u)), !vec4<bool>(false, arg_2.x, false, arg_2.x))));
    var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(abs(~(~vec3<u32>(1u, var_0.x, var_0.x))), ~vec3<u32>(arg_1.x, arg_0.b.x >> (3043u % 32u), _wgslsmith_add_u32(82959u, arg_0.a))), abs(~vec3<u32>(arg_1.x, 28474u, arg_1.x >> (70770u % 32u))));
    global0 = false;
    global2 = array<Struct_1, 3>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(449f - 1f)))));
}

fn func_1() -> vec3<u32> {
    global0 = -214f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(511f - -907f))))) * -188f);
    let var_0 = Struct_2(0u, ~vec2<u32>(max(max(2999u, 4294967295u), 37011u), ~abs(36148u)));
    global2 = array<Struct_1, 3>();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(var_0, var_0.b, vec4<bool>(true, true, false, false))), _wgslsmith_f_op_f32(f32(-1f) * -955f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1090f)) - _wgslsmith_f_op_f32(f32(-1f) * -632f))), _wgslsmith_mod_i32(-48780i, max(func_3(var_0, vec4<bool>(false, false, false, true)), min(2147483647i, -31174i >> (var_0.a % 32u)))));
    global1 = array<Struct_1, 28>();
    return _wgslsmith_div_vec3_u32(vec3<u32>(1u, max(firstLeadingBit(min(10289u, var_0.b.x)), _wgslsmith_sub_u32(var_0.a, var_0.b.x) >> (var_0.b.x % 32u)), ~35196u), firstTrailingBit(~firstLeadingBit(reverseBits(vec3<u32>(520u, 1u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 3>();
    global1 = array<Struct_1, 28>();
    global2 = array<Struct_1, 3>();
    var var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), func_1(), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), ~(vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))))), 3u)];
    global2 = array<Struct_1, 3>();
    var var_1 = global2[_wgslsmith_index_u32(1686u, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~1u, 1u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(22528u, 24432u, 4294967295u, 31016u), vec4<u32>(1u, 4294967295u, 48358u, 4294967295u)) ^ _wgslsmith_mod_u32(4294967295u, 19778u), 3253u, 1u | firstTrailingBit(1u))), _wgslsmith_div_i32(u_input.a, u_input.a));
}

