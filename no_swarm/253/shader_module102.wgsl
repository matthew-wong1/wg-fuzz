struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = false;
    var var_1 = Struct_1(vec3<f32>(204f, arg_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.x) * _wgslsmith_f_op_f32(-arg_2.a.x)), arg_2.a.x)));
    var var_2 = _wgslsmith_f_op_f32(-528f * _wgslsmith_f_op_f32(-1f));
    let var_3 = i32(-1i) * -2147483647i;
    let var_4 = ~vec3<u32>(firstLeadingBit(~_wgslsmith_mod_u32(1u, 28041u)), ~8875u, abs(~(~0u)));
    return global0[_wgslsmith_index_u32(5169u & _wgslsmith_sub_u32(_wgslsmith_add_u32(var_4.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, var_4.x, var_4.x)), var_4)), var_4.x), 18u)];
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<i32> {
    global0 = array<Struct_1, 18>();
    return (arg_1 << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) >> (vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 1u, abs(1u)), ~1u), firstTrailingBit(1u)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 47635u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4726u, 7304u, 1u, 36791u), vec4<u32>(1u, 1u, 1u, 6585u)), vec4<u32>(1u, 1u, 1u, 1u)), countOneBits(vec4<u32>(1u, 1u, 1u, 1u)) << ((vec4<u32>(1u, 1u, 1u, 1u) >> (firstTrailingBit(vec4<u32>(1u, 1u, 53384u, 77809u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_1 = func_1(true, any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)) | true, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(-1036f, -417f)), _wgslsmith_f_op_f32(1693f * 617f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1383f)), _wgslsmith_f_op_f32(f32(-1f) * -1500f))))));
    global0 = array<Struct_1, 18>();
    var var_2 = firstLeadingBit(vec3<i32>(-_wgslsmith_mod_i32(-22835i, -2147483647i << (var_0.x % 32u)), u_input.c, u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_mod_vec3_i32(u_input.a.www, -u_input.a.xzw), func_2(global0[_wgslsmith_index_u32(abs(var_0.x), 18u)], -u_input.a.wwy, func_1(false, true, Struct_1(vec3<f32>(var_1.a.x, 368f, 1677f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.x, var_1.a.x, 1414f, -756f))))) - vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) * _wgslsmith_f_op_f32(-var_1.a.x)), 299f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))), u_input.a);
}

