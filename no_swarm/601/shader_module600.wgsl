struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: bool = true;

var<private> global2: array<vec2<bool>, 23>;

var<private> global3: f32 = -2458f;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_1(-1339f);
    global2 = array<vec2<bool>, 23>();
    global0 = array<u32, 9>();
    global3 = arg_1.a;
    global4 = vec3<f32>(arg_2.a.a, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.a, global4.x))), arg_2.a.a);
    return -7083i;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(-888f)));
    let var_1 = ~vec4<i32>(-1i, ~(~0i), i32(-1i) * -arg_0.x, func_3(vec3<bool>(global4.x >= 1605f, !arg_1, arg_1), Struct_1(var_0.a), Struct_2(var_0, min(u_input.a, vec4<u32>(u_input.c, 82705u, 61080u, 74401u)))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f) - 2471f))), u_input.a);
    var var_3 = Struct_2(var_2.a, ~var_2.b);
    let var_4 = var_2.a;
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(553f, -222f)) + 719f), 1426f), _wgslsmith_f_op_f32(1436f + var_4.a), global4.x);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_i32(-vec2<i32>(arg_1, _wgslsmith_mod_i32(max(arg_1, arg_1), 1i)), select(~vec2<i32>(arg_1, arg_1 & arg_1), vec2<i32>(-arg_1 | arg_1, reverseBits(arg_1)), arg_2));
    var var_1 = u_input.a.x != _wgslsmith_mult_u32(u_input.e, abs(min(global0[_wgslsmith_index_u32(9228u, 9u)], 4294967295u)) | (select(1u, u_input.e, false) << (23888u % 32u)));
    global1 = false;
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-466f)))), _wgslsmith_f_op_f32(select(394f, 118f, abs(0u) <= (u_input.b.x & 40701u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1614f, _wgslsmith_f_op_f32(-global4.x))) * _wgslsmith_f_op_f32(floor(-981f)))));
    let var_2 = vec4<u32>(102186u, global0[_wgslsmith_index_u32(1u & _wgslsmith_dot_vec3_u32(vec3<u32>(14219u, u_input.b.x, global0[_wgslsmith_index_u32(16232u, 9u)]), reverseBits(u_input.a.yxz)), 9u)] << (u_input.d.x % 32u), ~(~global0[_wgslsmith_index_u32(~1u, 9u)]), ~(~u_input.a.x));
    return Struct_1(636f);
}

fn func_1() -> i32 {
    var var_0 = ~u_input.d.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global4.x)), _wgslsmith_f_op_f32(496f + global4.x)), _wgslsmith_f_op_f32(-467f - global4.x)))));
    var var_2 = ~firstLeadingBit(8157u);
    let var_3 = func_4(true, _wgslsmith_add_i32(select(~(~1i), ~firstLeadingBit(-1i), true && any(global2[_wgslsmith_index_u32(43805u, 23u)])), _wgslsmith_dot_vec4_i32(-vec4<i32>(-46154i, -2147483647i, -1i, 14777i), firstTrailingBit(vec4<i32>(1i, 0i, -2147483647i, -1i))) & ~1097i), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_f_op_f32(max(-532f, -593f))), 125f) - _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-30224i, -15299i)), ~vec2<i32>(-2147483647i, 0i)), false, ~_wgslsmith_mult_vec3_u32(u_input.a.wwz, u_input.a.xyx), u_input.d))));
    global3 = _wgslsmith_f_op_f32(select(-316f, _wgslsmith_f_op_f32(sign(-316f)), any(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), true))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true && any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    var var_1 = reverseBits(max(min(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-33953i, 64494i, 0i, 12545i), vec4<i32>(34488i, 1i, -2147483647i, 32133i), false), countOneBits(vec4<i32>(0i, -33917i, 0i, -2147483647i))), i32(-1i) * -44584i), _wgslsmith_dot_vec4_i32(max(firstTrailingBit(vec4<i32>(78777i, -2147483647i, -2147483647i, 8511i)), -vec4<i32>(52588i, -1227i, 2147483647i, 2147483647i)), vec4<i32>(1i, 1i, 1i, 1i))));
    var_0 = any(vec2<bool>(true, true)) && true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b.x, 98714u), ~1u), ~u_input.d.x), ~(vec2<i32>(1i, func_1()) >> (vec2<u32>(~global0[_wgslsmith_index_u32(18443u, 9u)], u_input.c) % vec2<u32>(32u))), vec2<u32>(select(~firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 9u)]), u_input.e, select(true, true, true)), _wgslsmith_sub_u32(32552u, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 29517u, 4294967295u, global0[_wgslsmith_index_u32(u_input.d.x, 9u)]), u_input.a), 9u)])), _wgslsmith_f_op_f32(f32(-1f) * -268f));
}

