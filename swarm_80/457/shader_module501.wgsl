struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(1u, 19944u, 0u), vec3<u32>(4294967295u, 71885u, 0u), vec3<u32>(21371u, 1u, 4294967295u), vec3<u32>(4294967295u, 12849u, 62750u), vec3<u32>(0u, 48383u, 1u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(15527u, 0u, 1u), vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(88473u, 0u, 14909u), vec3<u32>(51618u, 18850u, 1u), vec3<u32>(4294967295u, 22016u, 33531u), vec3<u32>(24200u, 5991u, 0u), vec3<u32>(4294967295u, 36680u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(4294967295u, 0u, 22990u), vec3<u32>(1u, 1u, 9415u), vec3<u32>(20429u, 45089u, 1u), vec3<u32>(0u, 1u, 26802u), vec3<u32>(11638u, 14752u, 0u), vec3<u32>(39822u, 4294967295u, 4294967295u), vec3<u32>(23522u, 0u, 0u), vec3<u32>(1u, 69930u, 0u));

var<private> global1: array<Struct_3, 18>;

var<private> global2: array<vec3<u32>, 7>;

var<private> global3: array<bool, 28>;

var<private> global4: array<vec2<i32>, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_5) -> i32 {
    return arg_0.b.x;
}

fn func_2() -> vec2<bool> {
    var var_0 = u_input.a;
    global0 = array<vec3<u32>, 22>();
    global2 = array<vec3<u32>, 7>();
    var var_1 = Struct_3(!(!vec3<bool>(true, global3[_wgslsmith_index_u32(var_0.x << (0u % 32u), 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 28u)])));
    let var_2 = 27246u;
    return vec2<bool>(true, true);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = firstLeadingBit(~(u_input.a.x & u_input.a.x) | ~_wgslsmith_clamp_u32(13192u, u_input.a.x, u_input.a.x)) & ~firstLeadingBit(_wgslsmith_sub_u32(reverseBits(u_input.a.x), 21890u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a - _wgslsmith_f_op_f32(min(arg_0.a.a, _wgslsmith_div_f32(arg_0.a.a, -281f)))) + 836f));
    global0 = array<vec3<u32>, 22>();
    let var_2 = ~vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), ~(~min(67537u, u_input.a.x)), ~u_input.a.x, ~u_input.a.x);
    let var_3 = Struct_3(arg_0.a.b.xyx);
    return 4294967295u | _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_2, ~(~vec4<u32>(var_2.x, 4294967295u, 4294967295u, 1u))), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(64512u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), vec4<u32>(26539u, 15877u, u_input.a.x, u_input.a.x)) & _wgslsmith_div_vec4_u32(vec4<u32>(16707u, u_input.a.x, 4066u, u_input.a.x), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)));
    var_0 = vec4<u32>(~(~0u), var_0.x, ~firstLeadingBit(var_0.x), 1u);
    let var_1 = Struct_5(_wgslsmith_div_u32(u_input.a.x, abs(var_0.x)), min(vec4<i32>(-(~1i), 23753i, 1i, 1i), select(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-38033i, _wgslsmith_clamp_i32(2147483647i, 0i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, -1i), vec3<i32>(-8218i, 12289i, -1i)), func_1(Struct_5(53360u, vec4<i32>(-959i, 1i, 59908i, 64535i)))), false)));
    let var_2 = Struct_4(!(!(!func_2())), !vec3<bool>(true, global3[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(279f, vec4<bool>(global3[_wgslsmith_index_u32(33232u, 28u)], true, global3[_wgslsmith_index_u32(var_1.a, 28u)], false)))), 28u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_1.a, 1u), 28u)]));
    var var_3 = var_1;
    let var_4 = Struct_5(1294u, var_3.b);
    let var_5 = !select(select(!(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], global3[_wgslsmith_index_u32(var_3.a, 28u)], true, global3[_wgslsmith_index_u32(1u, 28u)])), select(select(vec4<bool>(false, var_2.b.x, true, false), vec4<bool>(var_2.b.x, var_2.b.x, var_2.a.x, true), false), vec4<bool>(true, false, false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 28u)], false, false)), !vec4<bool>(var_2.a.x, false, var_2.b.x, false)), !vec4<bool>(false, false, !var_2.a.x, select(true, false, true)), var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(25594i, _wgslsmith_f_op_f32(1370f * -2019f));
}

