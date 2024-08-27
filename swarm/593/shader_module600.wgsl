struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: array<bool, 28> = array<bool, 28>(true, false, true, true, true, true, false, false, true, true, true, true, false, true, false, false, false, true, true, true, true, true, false, false, false, false, false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<f32, 20>();
    var var_0 = true;
    let var_1 = arg_0.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-834f, -910f, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(arg_0.a, 20u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-393f, global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(18806u, 20u)], -471f), vec4<f32>(1678f, -1390f, 614f, global0[_wgslsmith_index_u32(arg_0.a, 20u)]))) + vec4<f32>(791f, global0[_wgslsmith_index_u32(92224u, 20u)], global0[_wgslsmith_index_u32(88456u, 20u)], global0[_wgslsmith_index_u32(19716u, 20u)]))))));
    var var_3 = vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.a, ~(~82954u)), 28u)], true);
    return Struct_1(~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(28881u, u_input.a.x, arg_0.a)), ~u_input.c) & 4294967295u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(u_input.b.x);
    let var_1 = var_0;
    global1 = array<bool, 28>();
    let var_2 = arg_0;
    var var_3 = !(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], true, global1[_wgslsmith_index_u32(arg_1.a, 28u)]))));
    return var_1.a;
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = reverseBits(max(1i, 2147483647i));
    global0 = array<f32, 20>();
    let var_1 = ~arg_0.a;
    global1 = array<bool, 28>();
    var var_2 = arg_0;
    return _wgslsmith_mult_u32(func_1(Struct_1(u_input.c.x & arg_0.a)).a | ~var_2.a, ~(1u | ~u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 28>();
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    global1 = array<bool, 28>();
    let var_0 = 2147483647i;
    var var_1 = ~_wgslsmith_mod_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(29731u, 0u, u_input.b.x, 149106u), vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, u_input.c.x))), vec4<u32>(~(u_input.b.x & u_input.b.x), 0u, func_2(Struct_1(4294967295u), func_1(Struct_1(u_input.c.x)), func_1(Struct_1(u_input.b.x))), func_3(Struct_1(u_input.b.x))));
    var_1 = ~(~(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, var_1.x, var_1.x, 1u), firstTrailingBit(vec4<u32>(18487u, 23061u, u_input.a.x, var_1.x))) | vec4<u32>(max(var_1.x, 47558u), u_input.c.x << (u_input.b.x % 32u), ~var_1.x, ~var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, -1i) & vec2<i32>(var_0, 2147483647i), vec2<i32>(1i, var_0))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0, var_0), vec3<i32>(var_0, 56153i, -67085i)), var_0 ^ 0i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, 86978i, var_0), -vec4<i32>(13167i, var_0, var_0, 2147483647i)), var_0)), _wgslsmith_div_vec3_i32(abs(~(~vec3<i32>(11852i, var_0, var_0))), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_0 | 1i, var_0), ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(4815i, var_0, 25450i)))), _wgslsmith_f_op_f32(1553f - 181f), select(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, var_0, 2147483647i), -2147483647i, ~2147483647i, -22461i), firstTrailingBit(select(vec4<i32>(var_0, var_0, -44523i, -1i), vec4<i32>(var_0, -1792i, 2147483647i, var_0), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(53776u, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)]))), !select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], false, global1[_wgslsmith_index_u32(var_1.x, 28u)]), vec4<bool>(global1[_wgslsmith_index_u32(42055u, 28u)], global1[_wgslsmith_index_u32(21364u, 28u)], true, global1[_wgslsmith_index_u32(1u, 28u)]), global1[_wgslsmith_index_u32(32384u, 28u)])) | -vec4<i32>(_wgslsmith_div_i32(1i, var_0), var_0, 1i, var_0));
}

