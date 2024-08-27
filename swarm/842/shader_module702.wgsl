struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(4294967295u, 1u, 63058u, 29046u, 4294967295u, 4294967295u, 4294967295u, 1u, 0u, 14620u, 0u, 0u, 4294967295u, 67858u, 0u, 1u, 79394u, 0u, 19086u, 48916u, 4294967295u, 56254u, 0u, 1u, 0u, 57309u, 46888u, 90542u, 59028u, 4294967295u, 38539u, 1u);

var<private> global1: vec4<u32>;

var<private> global2: array<f32, 27>;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<i32>(i32(-2147483648), 46350i), vec2<u32>(1u, 20061u), vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec2<i32>(-13449i, 2147483647i), vec2<u32>(16756u, 4294967295u), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<i32>(1762i, -16577i), vec2<u32>(18522u, 4294967295u), vec2<i32>(8258i, 0i)), Struct_1(vec2<i32>(-1i, 15097i), vec2<u32>(30291u, 484u), vec2<i32>(-32289i, 3378i)), Struct_1(vec2<i32>(0i, 1i), vec2<u32>(14503u, 0u), vec2<i32>(-1i, 1i)), Struct_1(vec2<i32>(-19189i, 1i), vec2<u32>(0u, 4294967295u), vec2<i32>(i32(-2147483648), -61667i)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<u32>(22779u, 67216u), vec2<i32>(2147483647i, -20760i)), Struct_1(vec2<i32>(0i, -1i), vec2<u32>(108095u, 13212u), vec2<i32>(-1i, 33850i)), Struct_1(vec2<i32>(-15871i, 2147483647i), vec2<u32>(0u, 1u), vec2<i32>(-23708i, -71670i)), Struct_1(vec2<i32>(-45963i, 2147483647i), vec2<u32>(0u, 0u), vec2<i32>(42074i, -4823i)), Struct_1(vec2<i32>(-1i, 2147483647i), vec2<u32>(4294967295u, 19627u), vec2<i32>(-36746i, -2563i)), Struct_1(vec2<i32>(1i, 21591i), vec2<u32>(108650u, 20779u), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<i32>(0i, -28761i), vec2<u32>(32280u, 11148u), vec2<i32>(-6532i, -19372i)));

var<private> global4: array<u32, 19> = array<u32, 19>(1u, 26368u, 49175u, 37914u, 4294967295u, 1u, 4294967295u, 64290u, 37258u, 80180u, 24458u, 36498u, 99971u, 59004u, 1u, 29777u, 1u, 4294967295u, 71168u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = 26496i;
    var var_1 = -1745f;
    global0 = array<u32, 32>();
    global1 = ~max(vec4<u32>(u_input.c.x, reverseBits(u_input.c.x) << ((43764u | global1.x) % 32u), global1.x, ~(global4[_wgslsmith_index_u32(11844u, 19u)] << (global4[_wgslsmith_index_u32(u_input.c.x, 19u)] % 32u))), select(vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(31985u, 32u)], 40352u), 1u, u_input.c.x, min(global0[_wgslsmith_index_u32(global1.x, 32u)], 0u)), vec4<u32>(42079u, 1u, select(52511u, 115917u, true), 0u), global0[_wgslsmith_index_u32(75802u, 32u)] > ~global4[_wgslsmith_index_u32(global1.x, 19u)]));
    let var_2 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(~19585u), abs(0u), _wgslsmith_sub_u32(12620u, u_input.c.x) | global1.x), vec3<u32>(min(max(global4[_wgslsmith_index_u32(4042u, 19u)], global4[_wgslsmith_index_u32(120721u, 19u)]), global0[_wgslsmith_index_u32(~55639u, 32u)]), ~0u, u_input.c.x))), 13u)];
    return max(min(var_2.b.x, _wgslsmith_div_u32(firstTrailingBit(u_input.c.x), u_input.c.x)) << (reverseBits(global1.x) % 32u), global4[_wgslsmith_index_u32(~var_2.b.x, 19u)]);
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = vec4<i32>(u_input.a, -arg_0.a.x, -u_input.e, 0i);
    global4 = array<u32, 19>();
    global0 = array<u32, 32>();
    global4 = array<u32, 19>();
    global1 = vec4<u32>(arg_0.b.x << (arg_0.b.x % 32u), reverseBits(global4[_wgslsmith_index_u32(~4294967295u, 19u)]), 43413u, 4294967295u);
    return func_3() == ~_wgslsmith_dot_vec3_u32(global1.zyx, global1.wwy);
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(3991u, global0[_wgslsmith_index_u32(1u, 32u)], 7357u, 4294967295u), vec4<u32>(1u, 47249u, 4294967295u, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(5319u, 19u)], 32u)])) | 1u) & 2096u, 13u)];
    global3 = array<Struct_1, 13>();
    let var_1 = true;
    global0 = array<u32, 32>();
    let var_2 = vec2<bool>(false, !any(select(vec4<bool>(arg_1, true, true, true), vec4<bool>(arg_1, true, arg_1, true), true)));
    return global3[_wgslsmith_index_u32(31532u, 13u)];
}

fn func_1() -> vec2<u32> {
    global4 = array<u32, 19>();
    global2 = array<f32, 27>();
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 27u)] * -2415f), -597f, _wgslsmith_f_op_f32(max(-989f, 1001f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(1u, 27u)], global2[_wgslsmith_index_u32(global1.x, 27u)], -492f, -583f)))), func_2(Struct_1(_wgslsmith_clamp_vec2_i32(u_input.d.yz, u_input.d.xx, u_input.d.xy), vec2<u32>(22204u, global1.x), reverseBits(vec2<i32>(u_input.e, 14721i)))))), all(vec2<bool>(true, true)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.x, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(14265u, 32u)]), 19u)], 32u)]), 27u)]);
    global0 = array<u32, 32>();
    return global1.ww;
}

fn func_5(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = Struct_1(u_input.d.zx, global1.wz, _wgslsmith_mult_vec2_i32(abs(_wgslsmith_mult_vec2_i32(~vec2<i32>(25871i, u_input.d.x), arg_0.c)), firstTrailingBit(u_input.d.yz)));
    let var_1 = true;
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, 1000f, global2[_wgslsmith_index_u32(203u, 27u)], 1871f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(var_0.b.x, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], -132f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(71166u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], 173f, global2[_wgslsmith_index_u32(var_0.b.x, 27u)]) * vec4<f32>(-1669f, 122f, global2[_wgslsmith_index_u32(global1.x, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]))), func_2(var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(491f, -1172f, global2[_wgslsmith_index_u32(global1.x, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 27u)], global2[_wgslsmith_index_u32(1u, 27u)])))), select(!vec4<bool>(var_1, var_1, true, true), select(select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, false), vec4<bool>(var_1, true, true, false)), vec4<bool>(var_1, var_1, var_1, var_1), true), !vec4<bool>(false, var_1, var_1, var_1)))), var_1, global2[_wgslsmith_index_u32(~(~0u), 27u)]);
    var var_3 = countOneBits(vec4<u32>(~var_2.b.x, ~global1.x, var_0.b.x, var_2.b.x));
    let var_4 = ~43563u;
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_4, 27u)]), _wgslsmith_f_op_f32(trunc(648f)), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_2.b.x, 27u)], global2[_wgslsmith_index_u32(30717u, 27u)], false))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1304f, global2[_wgslsmith_index_u32(81183u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]), vec3<f32>(global2[_wgslsmith_index_u32(5768u, 27u)], global2[_wgslsmith_index_u32(21921u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1766f, global2[_wgslsmith_index_u32(24793u, 27u)], global2[_wgslsmith_index_u32(global1.x, 27u)])) * vec3<f32>(global2[_wgslsmith_index_u32(18549u, 27u)], global2[_wgslsmith_index_u32(9575u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<u32, 19>();
    global3 = array<Struct_1, 13>();
    global0 = array<u32, 32>();
    var var_0 = _wgslsmith_f_op_vec3_f32(func_5(Struct_1(abs(select(vec2<i32>(-17621i, u_input.a), vec2<i32>(u_input.e, 0i), false) >> (~global1.xx % vec2<u32>(32u))), func_1(), -u_input.d.xy)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(365f, var_0.x)) + 578f)), global2[_wgslsmith_index_u32(~min(1u, _wgslsmith_mod_u32(global1.x, 0u)), 27u)], global2[_wgslsmith_index_u32(abs(select(1u, ~4294967295u, all(vec2<bool>(false, true)))), 27u)], _wgslsmith_f_op_f32(var_0.x + global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1.x, 1u), 27u)])));
    global4 = array<u32, 19>();
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x ^ u_input.c.x, 32u)], 32u)], 20330u, 41055u), 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 27u)])), _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f), global2[_wgslsmith_index_u32(1u, 27u)])) + var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(~(0u >> (min(0u, 23030u) % 32u)) | global1.x, _wgslsmith_f_op_vec3_f32(-var_2.zxx), abs(u_input.c.x), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(global1.x, 32u)], _wgslsmith_div_u32(1u, global4[_wgslsmith_index_u32(u_input.c.x, 19u)])), 27025u), 32u)], 0u, global4[_wgslsmith_index_u32(reverseBits(u_input.c.x), 19u)], 4294967295u));
}

