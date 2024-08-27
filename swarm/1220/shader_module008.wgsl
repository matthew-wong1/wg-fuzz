struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<f32>;

var<private> global2: array<f32, 2> = array<f32, 2>(-301f, -486f);

var<private> global3: vec4<u32>;

var<private> global4: vec2<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> Struct_1 {
    global3 = vec4<u32>(~abs(global4.x), 0u, _wgslsmith_div_u32(global3.x, ~(0u << (1u % 32u))) ^ ~select(82937u << (global3.x % 32u), _wgslsmith_clamp_u32(global3.x, 3374u, global3.x), true), u_input.b.x);
    var var_0 = !(!(any(vec3<bool>(true, true, true)) & !any(vec3<bool>(false, false, false))));
    var var_1 = true;
    let var_2 = Struct_1(~(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, 4294967295u), global3.yx))), global2[_wgslsmith_index_u32(36307u, 2u)]);
    global2 = array<f32, 2>();
    return var_2;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec2<bool>(true, !(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global4.x, 2u)], -1163f) >= _wgslsmith_f_op_f32(-769f - 806f)) & true);
    return func_1();
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = func_2(func_2(arg_2, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1802f, 249f)) + _wgslsmith_f_op_f32(max(arg_1.b, arg_1.b))), global1.x, true)), arg_1, Struct_1(_wgslsmith_div_u32(19697u, 1u), 1229f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(303f)), -115f, true)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1514f, arg_2.b))))), arg_1, arg_2);
    var var_1 = func_1();
    global3 = _wgslsmith_div_vec4_u32(vec4<u32>(~(var_0.a ^ 47427u), 38091u, ~(~4294967295u), 56144u) >> (vec4<u32>(34785u ^ firstLeadingBit(var_1.a), 48751u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 54577u), global3.zzz), 1u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1542u, 1u, global4.x, 1u) >> (vec4<u32>(55317u, var_1.a, 1u, arg_1.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(0u, global3.x, 4294967295u, 76012u))), var_1.a, min(97220u, abs(1u))), ~vec4<u32>(11013u, global3.x, global4.x, global3.x) ^ ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, arg_1.a, 4294967295u, global3.x), vec4<u32>(arg_2.a, var_0.a, 4294967295u, global4.x), vec4<u32>(u_input.b.x, 87414u, 1u, 26519u))));
    global4 = min(firstTrailingBit(vec2<u32>(~global3.x, 4294967295u)), ~_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(1u, 40127u)), firstTrailingBit(vec2<u32>(0u, 4294967295u))) >> (global3.xw % vec2<u32>(32u)));
    var var_2 = global1.zx;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), func_2(var_0, arg_2.b, var_0, arg_1).b, -239f) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(318f, -1877f, 456f) * vec3<f32>(var_2.x, var_1.b, -160f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -511f), -1132f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(), global1.x, Struct_1(_wgslsmith_mult_u32(global3.x, ~_wgslsmith_sub_u32(global3.x, global4.x)), -568f), Struct_1(~_wgslsmith_div_u32(firstTrailingBit(100625u), _wgslsmith_mod_u32(u_input.b.x, 112483u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12330u, 0u, 56430u, 65783u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), 2u)] + -966f), -1000f))));
    var var_1 = 4294967295u & var_0.a;
    global0 = vec4<i32>(-abs(1i >> ((1u | global4.x) % 32u)), ~(-34216i), global0.x, global0.x);
    let var_2 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, (var_0.a & 1u) ^ ~4294967295u), u_input.b.x), 292f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(115f, _wgslsmith_f_op_f32(f32(-1f) * -1100f), -210f))), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(331f + _wgslsmith_f_op_f32(-var_0.b)) * _wgslsmith_f_op_f32(f32(-1f) * -1989f)), global1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1310f, var_0.b, var_2.b))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 833f, var_2.b))), vec3<f32>(global2[_wgslsmith_index_u32(~global3.x, 2u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(75751u, 2u)] - 959f), _wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(true, var_0, func_1())))), select(global3.wx, ~(~global3.xw) & (vec2<u32>(global4.x, 15221u) << (abs(vec2<u32>(global3.x, global4.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(973f - 188f)) < global2[_wgslsmith_index_u32(~global4.x, 2u)]));
}

