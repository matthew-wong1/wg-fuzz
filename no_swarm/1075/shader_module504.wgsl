struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-839f))), -322f)));
    var var_1 = vec2<bool>(true, all(!select(select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true)), !vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, true, false))));
    var var_2 = !vec2<bool>(arg_1 != (1i != -u_input.d.x), true || (abs(1i) < -u_input.d.x));
    var_2 = !(!select(select(!vec2<bool>(var_2.x, arg_1), !vec2<bool>(arg_1, false), select(vec2<bool>(var_2.x, var_1.x), vec2<bool>(arg_1, false), var_1.x)), vec2<bool>(!arg_1, arg_1), arg_1));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.x)))))) + var_0.x));
    return u_input.c.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<f32>) -> vec4<u32> {
    let var_0 = vec4<u32>(~(~(~(~11474u))), 48809u, _wgslsmith_mult_u32(~_wgslsmith_mult_u32(14873u, 116585u) >> (~(~u_input.e.x) % 32u), countOneBits(1u)), u_input.e.x);
    var var_1 = arg_2.x;
    let var_2 = ~vec4<u32>(_wgslsmith_mult_u32(79739u, func_3(38548i, false)), u_input.a.x, ~u_input.a.x, _wgslsmith_mod_u32(~0u, var_0.x));
    var_1 = arg_2.x;
    let var_3 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), min(u_input.a.yz, u_input.a.yz)), var_2.x, _wgslsmith_sub_u32(min(var_2.x, 31976u), 4294967295u), select(max(10854u << (var_0.x % 32u), var_2.x), var_2.x, true)), ~(~abs(_wgslsmith_add_vec2_u32(var_0.yw, var_0.wx))));
    return firstTrailingBit(_wgslsmith_mult_vec4_u32(var_3.a, firstLeadingBit(reverseBits(var_2))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_1(select(~(vec4<u32>(u_input.a.x, 17978u, u_input.c.x, 29108u) | abs(vec4<u32>(u_input.b, u_input.a.x, 7543u, u_input.e.x))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.e.x, u_input.b, 4035u), vec4<u32>(52247u, u_input.b, u_input.b, u_input.e.x), vec4<u32>(0u, 0u, u_input.c.x, u_input.e.x)) << (func_2(u_input.d, -29386i, vec2<f32>(-414f, -354f)) % vec4<u32>(32u))), !select(select(vec4<bool>(false, false, false, arg_0), vec4<bool>(arg_0, false, false, true), arg_0), !vec4<bool>(arg_0, arg_0, false, false), true)), ~u_input.a.zz);
    let var_1 = firstLeadingBit(select(_wgslsmith_dot_vec4_u32(var_0.a & vec4<u32>(7814u, var_0.b.x, u_input.b, u_input.a.x), vec4<u32>(4294967295u, u_input.e.x, 0u, var_0.a.x)), _wgslsmith_dot_vec3_u32(var_0.a.zxz ^ vec3<u32>(var_0.a.x, u_input.c.x, 4294967295u), ~u_input.a), arg_0 || (arg_0 | arg_0)) & 1u);
    var var_2 = Struct_2(u_input.d.x);
    let var_3 = vec2<u32>(~_wgslsmith_mult_u32(var_1, _wgslsmith_div_u32(var_0.a.x, u_input.e.x)), var_0.a.x);
    let var_4 = _wgslsmith_f_op_f32(sign(-1302f));
    return Struct_2(u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    var_0 = all(vec4<bool>(false, true, false, all(vec4<bool>(true, true, true, true))));
    var_0 = 71692u <= (105836u << (~_wgslsmith_dot_vec2_u32(abs(u_input.a.xy), max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a.x, u_input.a.x))) % 32u));
    let var_1 = func_1(true, abs(u_input.d));
    var_0 = !any(vec2<bool>(false, true));
    let var_2 = _wgslsmith_add_vec4_u32(countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(38483u, u_input.a.x, u_input.a.x, 41809u), vec4<u32>(u_input.e.x, u_input.e.x, 1u, 31081u), vec4<u32>(u_input.e.x, 38121u, 8432u, u_input.c.x)) ^ ~vec4<u32>(1u, u_input.e.x, 4294967295u, 30362u)), ~(~(min(vec4<u32>(u_input.e.x, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.e.x, 0u)) << (firstLeadingBit(vec4<u32>(u_input.e.x, 29482u, u_input.b, u_input.b)) % vec4<u32>(32u)))));
    var_0 = true;
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_sub_u32(var_2.x, u_input.a.x), max(max(var_2.x, var_2.x), 0u) & reverseBits(abs(var_2.x)), 4294967295u & _wgslsmith_sub_u32(~u_input.e.x, _wgslsmith_sub_u32(var_2.x, 4294967295u))));
}

