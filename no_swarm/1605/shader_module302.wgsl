struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(2147483647i, 7744i, 30377i), vec3<i32>(-26030i, 0i, 28803i), vec3<i32>(52679i, 2147483647i, 0i), vec3<i32>(-38427i, -14588i, -34246i), vec3<i32>(85099i, -9594i, -1i), vec3<i32>(i32(-2147483648), -12632i, 25561i), vec3<i32>(0i, -1i, 0i), vec3<i32>(-42939i, i32(-2147483648), 16405i), vec3<i32>(0i, 21382i, -44943i), vec3<i32>(0i, -29135i, -1i), vec3<i32>(1i, -10222i, 0i), vec3<i32>(0i, 2858i, 0i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(1i, -11604i, 1i), vec3<i32>(1i, -1i, 0i), vec3<i32>(9092i, 0i, -26471i), vec3<i32>(0i, 0i, 1776i), vec3<i32>(2147483647i, -54543i, 49719i), vec3<i32>(1i, -24801i, -14314i), vec3<i32>(7667i, 6015i, 0i), vec3<i32>(15064i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 16814i, -1i), vec3<i32>(70476i, -18965i, -1i), vec3<i32>(0i, 1i, -26297i));

var<private> global1: array<u32, 13> = array<u32, 13>(4294967295u, 4294967295u, 1u, 54555u, 1u, 0u, 64059u, 0u, 49351u, 78555u, 53801u, 0u, 43124u);

var<private> global2: array<Struct_1, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-205f, -856f, _wgslsmith_f_op_f32(select(-2244f, -1067f, false)), 1f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(980f, -166f, 1000f, 1453f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1293f, -370f, 437f, -341f)))))))));
    var var_1 = -firstTrailingBit(2147483647i);
    var_1 = u_input.b.x;
    global1 = array<u32, 13>();
    global1 = array<u32, 13>();
    return 1728f;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-790f - 135f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1231f, 2125f))), _wgslsmith_f_op_f32(f32(-1f) * -265f)))), -1659f, 225f);
    let var_1 = ~arg_0.b.x;
    let var_2 = _wgslsmith_add_vec4_i32(-arg_0.b, -arg_0.b) >> (arg_0.a % vec4<u32>(32u));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1778f + 214f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(241f - var_0.x))))) - vec4<f32>(1762f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(round(652f)))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)) * var_0.x)));
    var var_3 = 2147483647i | ~reverseBits(~(-var_1));
    return !arg_2.x;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    return global2[_wgslsmith_index_u32(9037u, 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(Struct_1(vec4<u32>(1u >> (max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41185u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8697u, 13u)], 13u)], 13u)], 13u)], 13u)], 13u)]) % 32u), abs(global1[_wgslsmith_index_u32(max(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43212u, 13u)], 13u)], 13u)]), 13u)]), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 1u), ~4294967295u), 13u)], _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(16374u, 13u)], 47468u, 44848u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)]), vec4<u32>(10657u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23302u, 13u)], 13u)], 52600u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)])), ~14043u)), select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, -32789i, -2147483647i) ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), -vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(0i, u_input.b.x, -55496i, 17965i), vec4<i32>(u_input.a.x, -1i, 1i, 2147483647i)), firstTrailingBit(vec4<i32>(-2565i, 51796i, u_input.a.x, u_input.b.x))), vec4<bool>(global1[_wgslsmith_index_u32(28037u, 13u)] == 1u, true, true, func_1(Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45802u, 13u)], 13u)], 1u, global1[_wgslsmith_index_u32(4294967295u, 13u)], 4294967295u), vec4<i32>(u_input.a.x, -1i, 2147483647i, u_input.b.x)), 20088u, vec3<bool>(false, true, true))))));
    let var_1 = var_0;
    global0 = array<vec3<i32>, 24>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(449f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -563f))))), 416f);
    global0 = array<vec3<i32>, 24>();
    var var_3 = -157f;
    var var_4 = Struct_1(vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 5240u, 1u), vec3<u32>(72024u, 4294967295u, 1u))), ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(1u, 13u)], 13u)], 79025u), 1195u, func_3(Struct_1(var_1.a, select(vec4<i32>(var_1.b.x, -1i, 57972i, u_input.b.x), var_0.b, false))).a.x), var_1.b | var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(34657u, ~var_1.a.x >> (20731u % 32u), u_input.a.x);
}

