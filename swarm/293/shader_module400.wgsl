struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, true, true, true, true, true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = !(global0[_wgslsmith_index_u32(u_input.a, 7u)] | any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(35856u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec2<bool>(false, true), false), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 7u)]))));
    let var_1 = ~u_input.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(889f, _wgslsmith_f_op_f32(-801f - -157f))) + -408f))) * 531f);
    return ~25908u;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global0 = array<bool, 7>();
    let var_0 = Struct_3(~_wgslsmith_div_vec2_u32(vec2<u32>(func_3(), 0u), arg_0.yy));
    let var_1 = 4397u > (~func_3() | abs(~u_input.a));
    var var_2 = countOneBits(~(~u_input.a)) >= 0u;
    let var_3 = vec2<u32>(firstTrailingBit(max(var_0.a.x, 23604u)), u_input.a);
    return 0u;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<i32>) -> vec4<u32> {
    var var_0 = vec2<f32>(500f, 1000f);
    let var_1 = ~(vec3<u32>(~(~u_input.a), ~u_input.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(19233u, 43705u, 1u)), ~1u) ^ firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(9316u, 0u, 18205u), vec3<u32>(u_input.a, u_input.a, 87335u), vec3<u32>(0u, u_input.a, u_input.a)))));
    let var_2 = firstLeadingBit(vec4<u32>(23481u, 54084u, var_1.x, func_2(vec3<u32>(_wgslsmith_div_u32(var_1.x, 0u), var_1.x, 0u))));
    let var_3 = all(!select(vec2<bool>(arg_1, !global0[_wgslsmith_index_u32(34799u, 7u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(11845u, 7u)]), !vec2<bool>(global0[_wgslsmith_index_u32(20433u, 7u)], global0[_wgslsmith_index_u32(u_input.a, 7u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], arg_1), vec2<bool>(true, true), vec2<bool>(true, false))), arg_1));
    let var_4 = _wgslsmith_add_vec3_i32(reverseBits(max(-vec3<i32>(arg_3.x, 2147483647i, 49259i), arg_2 & arg_3.wyw)) << (~vec3<u32>(~u_input.a, _wgslsmith_mult_u32(0u, 4294967295u), 4294967295u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_3.x ^ u_input.b, -1i), -firstLeadingBit(arg_2.x), i32(-1i) * -arg_3.x), firstTrailingBit(1i), ~0i));
    return vec4<u32>(_wgslsmith_add_u32(45882u, var_1.x), 37634u, ~(var_2.x << (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_2, vec4<u32>(u_input.a, 11166u, u_input.a, var_2.x)), ~107157u) % 32u)), ~_wgslsmith_sub_u32(var_1.x, 16008u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!(-(2147483647i << (u_input.a % 32u)) <= -(u_input.b ^ 2147483647i)), ~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), func_1(748f, global0[_wgslsmith_index_u32(u_input.a, 7u)], vec3<i32>(u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, 48595i, u_input.b, 7068i)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-549f)))))), u_input.b, vec3<i32>(u_input.b, reverseBits(u_input.b), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c)))))), max(~select(var_0.e.x, reverseBits(-15809i), var_0.a), u_input.b), 45367i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-311f, var_0.c)), vec2<f32>(_wgslsmith_f_op_f32(floor(-225f)), _wgslsmith_f_op_f32(-var_0.c))))));
}

