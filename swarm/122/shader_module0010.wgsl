struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(4001u);

var<private> global1: vec4<i32>;

var<private> global2: f32 = -754f;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global3 = Struct_1(~global3.a, 0u, _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(global1.yxz, vec3<i32>(-9174i, global3.c, -2147483647i)) << ((global3.a.wwx << ((vec3<u32>(global0[_wgslsmith_index_u32(139778u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], 61658u) >> (vec3<u32>(global3.a.x, 11065u, u_input.e) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-max(vec3<i32>(global3.c, global3.c, global3.c), u_input.d.xyz), ~vec3<i32>(global1.x, 1i, 0i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.d), vec4<f32>(global3.d.x, global3.d.x, global3.d.x, 735f)), vec4<f32>(global3.d.x, -594f, _wgslsmith_f_op_f32(757f * 296f), 387f)))));
    let var_0 = abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.b, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(19633u, 1u)], 75448u), 1u) ^ global3.a.xxz, global3.a.xzw));
    var var_1 = global3.d.x;
    var var_2 = firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global3.c, u_input.b, -global1.x), 86567i, reverseBits(_wgslsmith_mod_i32(max(u_input.c, -2147483647i), firstLeadingBit(u_input.d.x)))));
    let var_3 = -(~_wgslsmith_mult_i32(15330i, -1i));
    return 0u;
}

fn func_2() -> Struct_1 {
    return Struct_1(vec4<u32>(abs(u_input.e | _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(117395u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], u_input.a)), ~74898u, global3.b, global0[_wgslsmith_index_u32(max(_wgslsmith_div_u32(abs(global3.b), 1u), _wgslsmith_add_u32(abs(u_input.a), func_3())), 1u)]), u_input.e, -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(reverseBits(-45907i), 60940i), abs(global1.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), global3.a.yz) % 32u), _wgslsmith_add_i32(global1.x, _wgslsmith_mult_i32(-2147483647i, global3.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global3.d))) * _wgslsmith_f_op_vec4_f32(exp2(global3.d))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    global1 = abs(-(~(-u_input.d | ~u_input.d)));
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(78849u, 1u >> (_wgslsmith_div_u32(global3.b, global3.a.x) % 32u)), arg_0.a.x, func_2().a.x, ~global3.b << (4294967295u % 32u)), countOneBits(65081u), 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.d)));
    global3 = Struct_1(~var_0.a, (_wgslsmith_sub_u32(~102214u, 21782u) ^ _wgslsmith_dot_vec3_u32(global3.a.xzz, vec3<u32>(var_0.a.x, u_input.a, 68323u))) << (~firstTrailingBit(1u) % 32u), ~firstLeadingBit(-(41034i | var_1.c)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_1.d))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(var_1.d * vec4<f32>(var_0.d.x, var_0.d.x, arg_0.d.x, -237f))))))));
    let var_2 = _wgslsmith_f_op_f32(-global3.d.x);
    return Struct_1(_wgslsmith_sub_vec4_u32(arg_0.a, select(abs(select(vec4<u32>(global3.b, global0[_wgslsmith_index_u32(0u, 1u)], 0u, u_input.a), global3.a, true)), ~(arg_0.a << (var_0.a % vec4<u32>(32u))), vec4<bool>(var_1.d.x > var_0.d.x, any(vec4<bool>(true, false, false, true)), true, true))), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(global3.a.x, 1u), abs(var_0.a.x)), ~abs(1u)) | _wgslsmith_sub_u32(20809u, _wgslsmith_mod_u32(1u, arg_0.a.x)), var_1.c, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.b, 1670i);
    global2 = _wgslsmith_div_f32(global3.d.x, global3.d.x);
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(80029u) >> (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(2295u, 1u)]) % 32u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(36857u, global0[_wgslsmith_index_u32(29758u, 1u)], 4294967295u), 1u)] & global3.b, ~(~0u), _wgslsmith_dot_vec4_u32(~global3.a, vec4<u32>(1u, u_input.e, 1u, u_input.a) ^ vec4<u32>(u_input.a, 17126u, 0u, u_input.e))), global3.a) ^ ~select(~global3.a, select(global3.a, _wgslsmith_mod_vec4_u32(global3.a, vec4<u32>(u_input.a, u_input.e, u_input.a, 39738u)), 600f < global3.d.x), vec4<bool>(true, true, true, true));
    var var_2 = vec2<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)) == any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), all(vec3<bool>(true, _wgslsmith_f_op_f32(-global3.d.x) <= -683f, true)));
    let var_3 = global3.d.x;
    var var_4 = global0[_wgslsmith_index_u32(~u_input.e, 1u)];
    var var_5 = max(~_wgslsmith_sub_u32(var_1.x, global3.b), ~86568u);
    var var_6 = u_input.a;
    var var_7 = func_1(Struct_1(vec4<u32>(_wgslsmith_mult_u32(0u, ~1u), select(_wgslsmith_div_u32(52844u, 2279u), 51896u, var_2.x), ~firstLeadingBit(global0[_wgslsmith_index_u32(88005u, 1u)]), ~(~37842u)), 1u, 12726i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global3.d), global3.d)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1086f, -853f, 505f, 1350f), global3.d)), _wgslsmith_div_vec4_f32(vec4<f32>(global3.d.x, 348f, global3.d.x, global3.d.x), global3.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_7.a.yzz, _wgslsmith_mod_u32(func_3() | _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(u_input.a, 1u)]), ~u_input.e), global0[_wgslsmith_index_u32(~select(_wgslsmith_mult_u32(4294967295u, 1u), global3.b, true), 1u)]), var_7.a);
}

