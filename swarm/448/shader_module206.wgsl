struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, true, false, true, false, true, true, true, true, true, true, true, true, false, true, true, true, true, true, false, true, false, true, false);

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(68848u, true), Struct_1(1u, true), Struct_1(44018u, true), Struct_1(6739u, false), Struct_1(1u, false), Struct_1(4294967295u, true), Struct_1(0u, false), Struct_1(4294967295u, true), Struct_1(52090u, true), Struct_1(2336u, true));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_2(Struct_1(~select(87373u, arg_1.x, any(arg_0.zx)), u_input.a < u_input.a));
    var var_1 = u_input.d;
    global0 = array<bool, 25>();
    let var_2 = _wgslsmith_f_op_f32(round(-515f));
    global1 = array<Struct_1, 10>();
    return 4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(arg_0);
    var var_1 = select(-1i, reverseBits(firstTrailingBit(u_input.c)), arg_1.b);
    let var_2 = firstTrailingBit(u_input.b.xyy);
    let var_3 = _wgslsmith_mod_vec2_u32((firstTrailingBit(vec2<u32>(2739u, var_0.a.a)) & abs(vec2<u32>(17105u, 4294967295u) >> (vec2<u32>(1u, arg_1.a) % vec2<u32>(32u)))) >> (~vec2<u32>(~4294967295u, 100279u) % vec2<u32>(32u)), reverseBits(~vec2<u32>(0u, 0u) | vec2<u32>(17422u, arg_1.a)) & _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, arg_1.a), vec2<u32>(arg_1.a, var_0.a.a)));
    var var_4 = var_0;
    return _wgslsmith_clamp_vec4_u32(~vec4<u32>(firstLeadingBit(0u >> (arg_0.a % 32u)), 4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a, arg_1.a, arg_0.a, var_4.a.a), vec4<u32>(4294967295u, var_0.a.a, 1u, 0u)), ~4294967295u), countOneBits(firstTrailingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(32866u, var_3.x, 10943u, 1u), vec4<u32>(29761u, 9508u, u_input.d, var_4.a.a))))), vec4<u32>(var_3.x, arg_1.a, var_4.a.a, arg_0.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(555f - _wgslsmith_f_op_f32(sign(-1776f)))));
    var var_1 = Struct_1(27331u, true);
    var_1 = arg_0.a;
    global1 = array<Struct_1, 10>();
    var var_2 = -27166i;
    return var_0;
}

fn func_2(arg_0: vec2<u32>) -> vec3<u32> {
    global1 = array<Struct_1, 10>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(global1[_wgslsmith_index_u32(49004u, 10u)]), Struct_2(global1[_wgslsmith_index_u32(~72444u, 10u)]), Struct_2(global1[_wgslsmith_index_u32(60295u, 10u)]), ~func_3(Struct_1(4294967295u, true), Struct_1(4294967295u, global0[_wgslsmith_index_u32(1u, 25u)])))), -2356f);
    global1 = array<Struct_1, 10>();
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(~arg_0.x, 10u)]);
    let var_2 = 42779u;
    return vec3<u32>(var_2, u_input.d, var_1.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(func_2(vec2<u32>(1u, func_1(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 25u)], global0[_wgslsmith_index_u32(u_input.d, 25u)], true), vec4<u32>(0u, 4294967295u, u_input.d, u_input.d), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-278f, 167f), vec2<f32>(-135f, -624f), false))))), vec3<u32>(u_input.d, _wgslsmith_add_u32(_wgslsmith_div_u32(48333u, u_input.d), func_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d, 25u)], false, true, true), vec4<u32>(u_input.d, 4294967295u, u_input.d, 17413u), vec2<f32>(-612f, -549f))) | func_1(!vec4<bool>(global0[_wgslsmith_index_u32(58731u, 25u)], false, false, global0[_wgslsmith_index_u32(6889u, 25u)]), ~vec4<u32>(u_input.d, u_input.d, 24585u, 1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, 579f))), 4294967295u));
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_u32(~u_input.d, ~1u), global0[_wgslsmith_index_u32(u_input.d, 25u)]));
    var var_2 = 856f;
    global1 = array<Struct_1, 10>();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(select(~countOneBits(var_0), abs(vec3<u32>(4294967295u, 3909u, 24854u)) >> (_wgslsmith_sub_vec3_u32(var_0, var_0) % vec3<u32>(32u)), var_1.a.b), min(~vec3<u32>(u_input.d, 34128u, var_1.a.a), (var_0 | var_0) ^ abs(vec3<u32>(0u, 60999u, var_0.x)))), _wgslsmith_mod_vec3_u32(var_0, _wgslsmith_mult_vec3_u32(vec3<u32>(30802u, u_input.d, 4294967295u) ^ var_0, abs(var_0)))), 10u)];
    let var_4 = vec3<f32>(324f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(437f - -773f))))), -926f);
    let var_5 = Struct_1(3884u, false);
    var_2 = _wgslsmith_f_op_f32(-var_4.x);
    var var_6 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_4.x)), -952f, false))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1827f, 1487f)))))), _wgslsmith_f_op_f32(select(1301f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_4.x, 1427f)), -572f)), _wgslsmith_f_op_f32(f32(-1f) * -1073f)), !(any(vec2<bool>(false, var_5.b)) || var_1.a.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(30382u, var_0.x, var_1.a.a, max(~62486u, ~1u)), ~vec4<u32>(var_1.a.a, 4294967295u | var_1.a.a, ~0u, ~0u)), u_input.c, _wgslsmith_sub_i32(u_input.b.x, abs(u_input.c) & select(-1i, reverseBits(u_input.b.x), u_input.a >= u_input.a)), select(vec2<u32>(42960u, var_5.a), var_0.yz, vec2<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 25u)], false, var_5.b)), true)));
}

