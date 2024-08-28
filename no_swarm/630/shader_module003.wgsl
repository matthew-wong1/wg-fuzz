struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<Struct_3, 13>;

var<private> global2: f32;

var<private> global3: array<f32, 6> = array<f32, 6>(206f, 1109f, -204f, 1768f, 563f, -312f);

var<private> global4: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)));
    let var_1 = min(u_input.c, abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(32291i, u_input.c), abs(u_input.c))) >> (~u_input.d % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(299f, -245f), global3[_wgslsmith_index_u32(~u_input.d, 6u)])), _wgslsmith_f_op_f32(f32(-1f) * -486f), -354f))) * vec3<f32>(548f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 6u)]), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d, 6u)] * global3[_wgslsmith_index_u32(31428u, 6u)])) + _wgslsmith_f_op_f32(sign(1530f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(398f, 1053f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-917f)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(79272u, 0u, u_input.b.x), 6u)]))));
    var var_3 = 777f;
    var var_4 = _wgslsmith_f_op_f32(386f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1094f, 209f)))));
    return _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(firstLeadingBit(u_input.d), 17371u) >> (1u % 32u), 4294967295u), _wgslsmith_add_u32(7852u, u_input.d));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> vec4<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-419f, arg_1.a.x, arg_1.a.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 6u)], arg_1.a.x, 135f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x + arg_3), _wgslsmith_f_op_f32(arg_3 - 2918f)), _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(trunc(arg_1.a.x))), 421f))));
    var var_1 = select(vec4<i32>(~(-33455i), arg_0.x, -32925i, ~(~arg_0.x)), max(~(~vec4<i32>(-2147483647i, 0i, -1i, -2147483647i)), arg_0), _wgslsmith_f_op_f32(-var_0.a.x) >= 238f) | -(arg_0 << (~(~vec4<u32>(arg_2, 1250u, arg_2, arg_2)) % vec4<u32>(32u)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.d, 18u)];
    let var_3 = 29400i;
    var var_4 = Struct_4(Struct_3(min(vec4<u32>(func_3(), countOneBits(arg_2), ~20800u, _wgslsmith_div_u32(50241u, 3226u)), ~(~vec4<u32>(4294967295u, arg_2, arg_2, var_2.c)))));
    return vec4<u32>(arg_2, _wgslsmith_add_u32(~u_input.b.x, ~firstTrailingBit(4294967295u)), ~8159u, _wgslsmith_dot_vec3_u32(~var_4.a.a.xzw, _wgslsmith_add_vec3_u32(vec3<u32>(83112u, 11037u, var_4.a.a.x), vec3<u32>(arg_2, ~var_2.c, 1u))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: bool, arg_3: vec3<bool>) -> vec3<u32> {
    global3 = array<f32, 6>();
    let var_0 = Struct_3(min(arg_0.a.a, func_2(max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -2147483647i, 1i, 2147483647i), vec4<i32>(11517i, u_input.a, 8726i, 33528i)), vec4<i32>(-2147483647i, u_input.c, u_input.a, -2147483647i) ^ vec4<i32>(u_input.c, u_input.c, u_input.a, u_input.c)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_0.a.a.x, 6u)], global3[_wgslsmith_index_u32(arg_0.a.a.x, 6u)], 1000f) * vec3<f32>(-205f, -1395f, global3[_wgslsmith_index_u32(34248u, 6u)]))), _wgslsmith_dot_vec4_u32(~arg_0.a.a, vec4<u32>(1u, arg_0.a.a.x, u_input.d, u_input.b.x)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstTrailingBit(8724u), 6u)]))));
    var var_1 = abs(abs(min(abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.a.x, arg_0.a.a.x, arg_0.a.a.x), arg_0.a.a.zwx)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 83820u, arg_0.a.a.x), vec3<u32>(29507u, u_input.b.x, arg_0.a.a.x) << (var_0.a.xxy % vec3<u32>(32u)), firstTrailingBit(arg_0.a.a.xyz)))));
    var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(arg_0.a.a, countOneBits(vec4<u32>(arg_0.a.a.x, var_1.x, 23638u, var_1.x))) ^ ~(~0u), ~select(~var_0.a.x, ~arg_0.a.a.x, !arg_3.x)), _wgslsmith_mod_u32(45469u, ~firstLeadingBit(3114u)) | max((var_0.a.x ^ 70316u) >> (abs(var_1.x) % 32u), var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 0u, ~arg_0.a.a.x, ~0u), abs(~(~vec4<u32>(13824u, 85919u, arg_0.a.a.x, 1u)))));
    var_1 = ~vec3<u32>(arg_0.a.a.x, u_input.d, 4294967295u);
    return ~select(vec3<u32>(1u, ~min(var_0.a.x, var_1.x), firstTrailingBit(_wgslsmith_clamp_u32(var_1.x, var_0.a.x, 4294967295u))), vec3<u32>(abs(8073u), 32655u, firstTrailingBit(u_input.d >> (0u % 32u))), arg_2 | (arg_3.x || (arg_2 != true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global1[_wgslsmith_index_u32(29494u, 13u)]);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(func_1(var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(var_0.a.a.x, 6u)], global3[_wgslsmith_index_u32(0u, 6u)], -780f, global3[_wgslsmith_index_u32(0u, 6u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, global3[_wgslsmith_index_u32(16017u, 6u)], global3[_wgslsmith_index_u32(var_0.a.a.x, 6u)], 872f))), true, !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
}

