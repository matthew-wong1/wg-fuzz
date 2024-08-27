struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<f32, 13> = array<f32, 13>(-1724f, -512f, 1425f, 677f, -1000f, -949f, -449f, -560f, 257f, -1620f, 949f, -323f, 703f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> f32 {
    var var_0 = -_wgslsmith_mod_i32(-((arg_2 | -13315i) | arg_2), abs(arg_2));
    global1 = array<f32, 13>();
    global0 = ~(~select(_wgslsmith_add_u32(1u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(16388u, 69506u, 4294967295u, 1u)), true));
    global1 = array<f32, 13>();
    global1 = array<f32, 13>();
    return -1000f;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> vec3<f32> {
    var var_0 = -641f;
    var var_1 = ~arg_1.x;
    let var_2 = Struct_2(-1137f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-305f, _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_1.x, 13u)])), _wgslsmith_f_op_f32(sign(2139f)))))));
    var_1 = min(~arg_1.x, _wgslsmith_mod_u32(arg_1.x, 3663u));
    var var_3 = vec2<bool>(!any(vec3<bool>(global1[_wgslsmith_index_u32(51503u, 13u)] <= 1912f, !arg_0.a, all(vec2<bool>(arg_0.a, arg_0.a)))), arg_0.a);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(58243u, 13u)] * -2367f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.x + global1[_wgslsmith_index_u32(4294967295u, 13u)])))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-335f, var_2.a)) + var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(147f - 1021f) - _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(f32(-1f) * -130f)))));
}

fn func_1() -> bool {
    let var_0 = ~60321u;
    let var_1 = vec3<f32>(507f, -116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-156f, _wgslsmith_f_op_f32(f32(-1f) * -531f)))));
    global1 = array<f32, 13>();
    var var_2 = vec4<bool>(!(_wgslsmith_f_op_f32(func_2(Struct_2(271f, var_1), Struct_2(global1[_wgslsmith_index_u32(var_0, 13u)], vec3<f32>(340f, var_1.x, global1[_wgslsmith_index_u32(1925u, 13u)])), _wgslsmith_mod_i32(-670i, u_input.a.x))) <= 292f), false, true, abs(u_input.a.x) > ~(~1i));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(var_1.x - global1[_wgslsmith_index_u32(21044u, 13u)]), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(any(select(vec4<bool>(true, var_2.x, var_2.x, false), vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(true, var_2.x, true, var_2.x)))), vec2<u32>(~22851u, min(58961u, ~var_0)))));
    return all(vec4<bool>(any(vec4<bool>(true, true, var_2.x, true)), var_2.x, any(vec2<bool>(false, any(var_2.yw))), !var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(firstTrailingBit(53816u), 13u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1039f, 856f, -331f)) + vec3<f32>(1382f, -370f, global1[_wgslsmith_index_u32(4294967295u, 13u)])))));
    global0 = 0u;
    var var_1 = vec3<bool>(true & any(vec2<bool>(-771f <= var_0.a, var_0.a >= global1[_wgslsmith_index_u32(20986u, 13u)])), func_1(), func_1());
    global0 = 63562u;
    var var_2 = ~vec4<u32>(46903u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 40669u, countOneBits(100442u)), vec3<u32>(1u, 1u, 1u)), 1u, ~reverseBits(~35512u));
    var_2 = vec4<u32>(1646u, 9691u, 4294967295u, var_2.x) >> (~(~vec4<u32>(var_2.x, var_2.x, var_2.x, 0u) & firstLeadingBit(min(vec4<u32>(1u, 4294967295u, 10927u, 4294967295u), vec4<u32>(var_2.x, 1u, var_2.x, var_2.x)))) % vec4<u32>(32u));
    let var_3 = Struct_1(u_input.a.zx, ~u_input.a.x < u_input.a.x);
    var var_4 = vec2<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(0i, -var_3.a.x), _wgslsmith_sub_vec2_i32(countOneBits(var_3.a), abs(var_3.a))), u_input.a.zy), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, var_2.x, var_2.x, abs(0i << (var_2.x % 32u)));
}

