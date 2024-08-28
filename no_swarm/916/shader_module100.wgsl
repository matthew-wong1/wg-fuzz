struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: array<bool, 17> = array<bool, 17>(true, true, true, true, true, false, false, true, true, true, true, true, false, true, false, false, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = -1i;
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 17u)];
    global0 = array<Struct_1, 4>();
    return ~arg_1.e.x;
}

fn func_3(arg_0: vec4<u32>) -> Struct_1 {
    global1 = array<bool, 17>();
    let var_0 = !any(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], false))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-502f, -989f))))), -136f, -165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f + 1f))));
    global1 = array<bool, 17>();
    global1 = array<bool, 17>();
    return Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(min(arg_0, arg_0) | vec4<u32>(0u, arg_0.x, 1u, arg_0.x), arg_0), vec4<u32>(~(arg_0.x ^ 42807u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b, 2045u, u_input.b), arg_0.xwx), abs(arg_0.yyz)), 4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(83896u, u_input.a, 10824u, 15153u), vec4<u32>(4294967295u, u_input.a, arg_0.x, arg_0.x), arg_0), firstTrailingBit(vec4<u32>(4294967295u, arg_0.x, u_input.a, 35259u))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 4>();
    let var_0 = func_3(vec4<u32>(firstLeadingBit(select(1u, u_input.a, false)), ~abs(_wgslsmith_clamp_u32(arg_2.a, 28178u, arg_2.a)), _wgslsmith_div_u32(countOneBits(arg_2.a), ~0u >> (arg_2.a % 32u)), u_input.b ^ ~func_2(vec4<i32>(-1i, 1i, -5994i, 40308i), Struct_2(vec3<u32>(4294967295u, arg_2.a, arg_2.a), arg_1, Struct_1(u_input.a), vec4<i32>(-36735i, 0i, 2147483647i, -2147483647i), vec3<u32>(arg_2.a, 1u, 27072u)))));
    let var_1 = firstTrailingBit(firstLeadingBit(vec3<i32>(1i, 1i, 1i)));
    global0 = array<Struct_1, 4>();
    global1 = array<bool, 17>();
    return global1[_wgslsmith_index_u32(~arg_2.a, 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 17>();
    let var_0 = Struct_3(select(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 17u)] && global1[_wgslsmith_index_u32(~u_input.a, 17u)], !(!global1[_wgslsmith_index_u32(0u, 17u)])), !vec3<bool>(false, func_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 17u)], false, true, true), -357f, global0[_wgslsmith_index_u32(u_input.a, 4u)]), true), vec3<bool>(true != any(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(56545u, 17u)])), !global1[_wgslsmith_index_u32(select(u_input.a, 34679u, global1[_wgslsmith_index_u32(1u, 17u)]), 17u)], true)), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, 1u, 0u, 4114u), vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) & vec4<u32>(u_input.a, 81305u, 1u, u_input.b)), ~(vec4<u32>(u_input.a, 22886u, u_input.a, u_input.b) | vec4<u32>(29047u, u_input.b, 7681u, 52448u)) ^ vec4<u32>(4294967295u, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 0u), vec3<u32>(u_input.b, u_input.a, u_input.a)), 1u ^ u_input.a)));
    global0 = array<Struct_1, 4>();
    global1 = array<bool, 17>();
    global0 = array<Struct_1, 4>();
    global1 = array<bool, 17>();
    var var_1 = vec2<u32>(_wgslsmith_mult_u32(u_input.b, 50755u), _wgslsmith_mod_u32(max(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.b, 4083u), var_0.b), 20804u), ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 59054i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-13825i, 1i), vec2<i32>(-26247i, -48372i), vec2<i32>(-38405i, -1i))))), ~(~vec2<u32>(~var_1.x, ~0u)), -_wgslsmith_sub_i32(1i, _wgslsmith_add_i32(6626i, firstTrailingBit(7222i))), _wgslsmith_add_vec2_u32(vec2<u32>(1u << (var_1.x % 32u), _wgslsmith_sub_u32(var_1.x, 0u) ^ 1u), min(vec2<u32>(7794u, 4294967295u), reverseBits(vec2<u32>(4294967295u, var_0.b))) & vec2<u32>(_wgslsmith_clamp_u32(104234u, var_1.x, var_0.b), func_2(vec4<i32>(-2147483647i, 1i, 10653i, 3842i), Struct_2(vec3<u32>(1u, 5201u, 79025u), 203f, global0[_wgslsmith_index_u32(u_input.a, 4u)], vec4<i32>(-1i, -2147483647i, -26837i, 1i), vec3<u32>(46478u, u_input.b, 4294967295u))))), ~var_0.b);
}

