struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: u32,
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

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(i32(-2147483648), vec2<u32>(54127u, 17743u), 1105u, 43430u, false), Struct_1(-1i, vec2<u32>(4294967295u, 51451u), 4294967295u, 1u, false), Struct_1(3959i, vec2<u32>(1u, 1u), 0u, 0u, false), Struct_1(i32(-2147483648), vec2<u32>(34270u, 42860u), 1u, 0u, false), Struct_1(-10794i, vec2<u32>(4330u, 12912u), 1u, 36317u, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = reverseBits(vec3<u32>(arg_1 | u_input.e, max(arg_2.d, ~u_input.e), ~arg_0.x));
    return arg_2.c;
}

fn func_2() -> i32 {
    let var_0 = Struct_1(-2965i, _wgslsmith_add_vec2_u32(u_input.d.xy, vec2<u32>(u_input.e, func_3(u_input.d | vec3<u32>(4294967295u, 3137u, 1u), 1u, Struct_1(u_input.a, vec2<u32>(100490u, u_input.d.x), 2565u, 4294967295u, false)))), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(0u, u_input.d.x, 60891u, u_input.e)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e, u_input.d.x, u_input.e, 6914u), select(vec4<u32>(u_input.e, u_input.d.x, u_input.d.x, 4294967295u), vec4<u32>(1u, 0u, 4294967295u, u_input.e), vec4<bool>(false, true, false, true)))), _wgslsmith_clamp_u32(min(u_input.d.x, 26426u), u_input.e, u_input.d.x)), ~(~_wgslsmith_mult_u32(~85787u, select(8960u, 4294967295u, false))), any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(round(-832f)) == _wgslsmith_f_op_f32(f32(-1f) * -488f))));
    global0 = array<Struct_1, 5>();
    return var_0.a;
}

fn func_1() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(70149u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d, u_input.d), vec3<u32>(1u, u_input.d.x, u_input.e), u_input.d ^ vec3<u32>(4294967295u, u_input.e, 14689u)), reverseBits(u_input.d)), u_input.d.x), 5u)];
    let var_1 = global0[_wgslsmith_index_u32(u_input.e | 0u, 5u)];
    global0 = array<Struct_1, 5>();
    var_0 = Struct_1(firstTrailingBit(func_2()), _wgslsmith_sub_vec2_u32(max(select(vec2<u32>(56516u, u_input.d.x), vec2<u32>(29340u, var_1.b.x), var_1.e), _wgslsmith_add_vec2_u32(var_1.b, var_1.b)) ^ ~_wgslsmith_clamp_vec2_u32(vec2<u32>(21149u, u_input.e), var_1.b, var_0.b), ~(~(~vec2<u32>(var_1.c, u_input.e)))), 0u, _wgslsmith_clamp_u32(func_3(vec3<u32>(_wgslsmith_mult_u32(0u, var_1.b.x), var_1.d, ~20284u), var_0.d, Struct_1(34760i, countOneBits(var_0.b), _wgslsmith_add_u32(var_1.c, var_1.d), 42489u, true)), ~0u, 0u), true);
    let var_2 = Struct_1(func_2(), var_1.b, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(var_1.c, ~u_input.e), 4294967295u, var_1.b.x), _wgslsmith_div_u32(u_input.d.x, min(~firstTrailingBit(var_1.c), min(var_1.b.x, 4294967295u) & 12148u)), var_0.e);
    return abs(~abs(0u) | u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a, vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(select(0u, u_input.e, false)), (23444u << (u_input.d.x % 32u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), u_input.d.xx)), u_input.d.x), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(func_1(), func_3(u_input.d, u_input.e, Struct_1(u_input.b.x, vec2<u32>(u_input.e, u_input.e), 30959u, 0u, true))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.d.x, u_input.d.x), 0u ^ u_input.d.x), ~vec2<u32>(14880u, 9596u))), ~(~1u), (59109u < ~(~u_input.e)) || (u_input.b.x <= 40636i));
    let var_1 = !(!(!vec4<bool>(true, var_0.e, var_0.e && false, var_0.e && var_0.e)));
    let var_2 = !vec4<bool>(true, !select(var_0.e | true, true, var_1.x), var_1.x, var_0.e);
    global0 = array<Struct_1, 5>();
    let var_3 = vec2<u32>(4294967295u, u_input.e) ^ reverseBits(~var_0.b);
    var var_4 = abs(firstTrailingBit(_wgslsmith_clamp_vec3_u32(firstLeadingBit(u_input.d), _wgslsmith_mod_vec3_u32(u_input.d & u_input.d, abs(u_input.d)), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.e), u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(~reverseBits(56234u), firstTrailingBit(firstTrailingBit(var_4.x)))));
}

