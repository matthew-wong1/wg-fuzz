struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<Struct_4, 11>;

var<private> global3: array<i32, 5> = array<i32, 5>(-47801i, 8322i, 52254i, 0i, 0i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-766f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(637f - 401f), _wgslsmith_f_op_f32(f32(-1f) * -335f), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-716f * 167f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-805f, 1000f, true)) - 716f)), -135f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-501f, -1092f, -365f, 1897f), vec4<f32>(-129f, 1012f, -149f, -1727f)))))));
    var var_1 = !all(!(!select(arg_1.b, vec4<bool>(false, arg_3.a.a, true, true), arg_1.a.a)));
    let var_2 = _wgslsmith_div_u32(60527u, firstTrailingBit(~(~select(u_input.b, u_input.b, arg_1.a.a))));
    return ~var_2;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: u32) -> bool {
    global3 = array<i32, 5>();
    let var_0 = ~(~select(arg_2.a, _wgslsmith_div_vec4_u32(arg_2.a, vec4<u32>(1u, arg_2.a.x, 0u, arg_3)), vec4<bool>(arg_2.b.a, true, false, false)) >> (((vec4<u32>(arg_2.a.x, 16219u, 4294967295u, 56014u) | vec4<u32>(1u, 0u, u_input.b, arg_2.a.x)) & vec4<u32>(9499u, 85313u, 29696u, _wgslsmith_dot_vec2_u32(arg_0, arg_2.a.zy))) % vec4<u32>(32u)));
    global1 = array<Struct_1, 8>();
    global1 = array<Struct_1, 8>();
    let var_1 = global3[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(countOneBits(~(~arg_0)), vec2<u32>(1u, max(~30770u, 47865u))), func_3(-vec4<i32>(u_input.a, u_input.a, reverseBits(global3[_wgslsmith_index_u32(47387u, 5u)]), 1926i), Struct_2(Struct_1(true), vec4<bool>(!arg_1.x, true, true, any(vec4<bool>(false, true, arg_1.x, arg_1.x)))), Struct_1(false), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 27u)], vec4<bool>(arg_2.a.x < 0u, true, arg_1.x, arg_1.x)))), 5u)];
    return false;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: i32) -> vec2<bool> {
    let var_0 = select(!any(vec2<bool>(any(vec4<bool>(false, false, true, true)), false)), !(select(true, func_2(vec2<u32>(u_input.b, 4294967295u), vec2<bool>(false, false), Struct_3(vec4<u32>(1u, arg_1, arg_1, arg_1), Struct_1(false)), 4294967295u), all(vec3<bool>(true, true, true))) || !func_2(vec2<u32>(u_input.b, 0u), vec2<bool>(true, false), Struct_3(vec4<u32>(u_input.b, 16730u, u_input.b, 20612u), global1[_wgslsmith_index_u32(1u, 8u)]), 1u)), false);
    let var_1 = var_0;
    var var_2 = vec3<u32>(1u & (16440u & u_input.b), 22917u, 4294967295u);
    global1 = array<Struct_1, 8>();
    var var_3 = var_0;
    return select(select(!vec2<bool>(var_0, false), vec2<bool>(true, true), any(vec3<bool>(func_2(var_2.zz, vec2<bool>(var_0, var_1), Struct_3(vec4<u32>(1u, 0u, arg_1, 1u), global1[_wgslsmith_index_u32(68813u, 8u)]), 39560u), all(vec2<bool>(var_1, var_1)), true))), vec2<bool>(any(vec4<bool>(true, true, var_1 || true, var_1)), var_1), vec2<bool>(var_1, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(select(!func_1(9339i, u_input.b, u_input.a), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 0i), vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(59130u, 5u)])), u_input.b, -global3[_wgslsmith_index_u32(60752u, 5u)])));
    global3 = array<i32, 5>();
    global1 = array<Struct_1, 8>();
    var var_1 = Struct_3(vec4<u32>(~2592u, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b) >> (vec3<u32>(1u, u_input.b, 4294967295u) % vec3<u32>(32u)), select(vec3<u32>(25791u, 1u, u_input.b), vec3<u32>(4294967295u, u_input.b, u_input.b), var_0)) >> ((17100u | (u_input.b | 64454u)) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 43050u) ^ vec3<u32>(u_input.b, u_input.b, u_input.b), ~vec3<u32>(83991u, 1u, 2373u)) & 34212u), global1[_wgslsmith_index_u32(0u, 8u)]);
    let var_2 = Struct_3(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(var_1.a, var_1.a), ~var_1.a), global0[_wgslsmith_index_u32(34592u, 27u)]);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(floor(-251f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1277f))), 459f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1125f, 583f), 967f)), -1348f))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec2<u32>(u_input.b, 0u), ~(~var_2.a.zz << (var_2.a.yx % vec2<u32>(32u)))), firstLeadingBit(i32(-1i) * -_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(1u, 5u)], -1i)));
}

