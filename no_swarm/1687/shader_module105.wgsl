struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(4294967295u, 0u, 26525u, 31729u, 15691u, 76228u, 55614u, 70528u, 46689u, 73351u, 4294967295u, 9397u, 0u, 44407u, 26853u, 0u, 17415u, 20958u, 4294967295u, 23883u, 8854u, 22505u, 1u, 4294967295u);

var<private> global1: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    global1 = Struct_1(select(vec2<bool>(select(!global1.b, global1.b | false, any(vec4<bool>(true, global1.b, true, false))), false), vec2<bool>(true, false), global1.a), global1.b);
    let var_0 = ~vec3<i32>(-1i, abs(~u_input.c), -_wgslsmith_clamp_i32(1i, u_input.c, _wgslsmith_mod_i32(1i, -1i)));
    global1 = Struct_1(global1.a, (!global1.b | any(vec3<bool>(false, false, true))) & !select(false || global1.b, false, !global1.b));
    let var_1 = global1.b & any(vec4<bool>(!global1.a.x, !global1.a.x, true, all(select(vec3<bool>(false, global1.b, true), vec3<bool>(false, false, global1.a.x), true))));
    let var_2 = Struct_1(vec2<bool>(var_1, var_1), false);
    return ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.b), _wgslsmith_mult_u32(u_input.a.x, firstLeadingBit(~global0[_wgslsmith_index_u32(22884u, 24u)])));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    global0 = array<u32, 24>();
    global1 = Struct_1(global1.a, ~reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 24u)], 24u)]) == _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 24u)], u_input.a.x)), _wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, u_input.b, u_input.a.x), vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.b, 24u)], u_input.a.x), arg_0), ~vec3<u32>(global0[_wgslsmith_index_u32(5430u, 24u)], 4294967295u, 4294967295u))));
    let var_0 = Struct_1(vec2<bool>(arg_0, false), !global1.a.x);
    global1 = Struct_1(vec2<bool>(global1.a.x, true), true & all(vec2<bool>(var_0.b, true)));
    var var_1 = Struct_1(!vec2<bool>(31754u >= func_3(), arg_1), any(!(!select(vec3<bool>(arg_0, arg_1, false), vec3<bool>(true, arg_0, false), global1.b))));
    return var_0;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = 4636i >> (global0[_wgslsmith_index_u32(1u | firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], u_input.b), u_input.a.x)), 24u)] % 32u);
    var var_1 = func_2(true, false);
    var var_2 = arg_1;
    var var_3 = _wgslsmith_clamp_vec2_i32((vec2<i32>(-30842i, var_0) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a.x, 75519u), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], 18217u)), 1u) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(39591u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 3944u, 70928u, u_input.b), vec4<u32>(51972u, 37632u, 3405u, u_input.b))), u_input.a << (_wgslsmith_mod_vec2_u32(u_input.a, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(arg_0, countOneBits(~u_input.c)) & abs(-(vec2<i32>(u_input.c, 2147483647i) ^ vec2<i32>(-2147483647i, arg_0))), -firstLeadingBit(firstLeadingBit(select(vec2<i32>(arg_0, arg_0), vec2<i32>(-6109i, -2147483647i), vec2<bool>(global1.a.x, global1.a.x)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(483f, -708f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2235f, -546f) - vec2<f32>(333f, 784f))))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-268f)), _wgslsmith_f_op_f32(max(359f, -308f)), !global1.b)), -1474f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-963f, 323f))))), select(arg_1.a, !arg_1.a, false)));
    return -1109f;
}

fn func_4(arg_0: vec4<f32>) -> Struct_1 {
    global1 = Struct_1(!vec2<bool>(false, global1.a.x), all(!(!select(vec3<bool>(global1.b, global1.b, true), vec3<bool>(false, false, global1.a.x), false))));
    global1 = Struct_1(vec2<bool>(global1.a.x, true), global1.a.x);
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    global1 = func_2(~(_wgslsmith_clamp_i32(57727i, -13979i, u_input.c) & ~2147483647i) != u_input.c, all(!select(select(vec4<bool>(false, true, global1.a.x, global1.a.x), vec4<bool>(global1.b, true, false, false), vec4<bool>(global1.a.x, global1.a.x, global1.b, true)), select(vec4<bool>(global1.a.x, true, true, false), vec4<bool>(true, true, global1.a.x, true), vec4<bool>(false, global1.b, global1.b, true)), arg_0.x >= arg_0.x)));
    return func_2(true, -(min(u_input.c, -2147483647i) ^ u_input.c) != min(u_input.c, u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global1.a;
    global0 = array<u32, 24>();
    var var_1 = u_input.c >= ~u_input.c;
    global1 = func_4(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -281f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c, Struct_1(var_0, false)))), _wgslsmith_f_op_f32(sign(-459f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_i32(reverseBits(u_input.c), 6603i), Struct_1(vec2<bool>(global1.b, true), true)))));
    var var_2 = func_2(!func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(699f, 231f, -1376f, 1358f) + vec4<f32>(-470f, -1337f, -1140f, 1638f)))).a.x, global1.b);
    var var_3 = vec3<u32>(firstLeadingBit(~u_input.b), 75530u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1757f, 3162f), vec2<f32>(-1000f, 208f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -176f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-820f, 834f)))))), 35299i, countOneBits(vec4<i32>(_wgslsmith_mod_i32(-1i, -2147483647i), u_input.c, ~u_input.c, ~0i)) | -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, 8029i, u_input.c), firstLeadingBit(vec4<i32>(u_input.c, 1i, u_input.c, u_input.c))), vec2<u32>(~(reverseBits(var_3.x) << (_wgslsmith_add_u32(4294967295u, u_input.b) % 32u)), global0[_wgslsmith_index_u32(max(4294967295u, 1564u), 24u)]));
}

