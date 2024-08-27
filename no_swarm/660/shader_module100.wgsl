struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 41726u;

var<private> global2: Struct_3;

var<private> global3: Struct_1;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2) -> i32 {
    global3 = Struct_1(global3.a);
    global3 = Struct_1(!vec4<bool>(!any(vec4<bool>(true, true, false, global3.a.x)), true, firstTrailingBit(arg_0.a.x) >= 0u, false));
    global4 = vec2<bool>(select(false, any(global3.a.wwy), !(!global4.x) || (true & any(global3.a))), !any(vec2<bool>(true, false && global4.x)));
    global1 = ~(~77863u);
    var var_0 = global2.b.a.yz;
    return global2.a.x;
}

fn func_2(arg_0: f32) -> Struct_3 {
    global0 = firstLeadingBit(func_3(Struct_5(_wgslsmith_div_vec3_u32(u_input.a | vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.b))), Struct_2(_wgslsmith_mult_vec3_i32(~vec3<i32>(11359i, 1i, global2.a.x), vec3<i32>(-10679i, global2.b.a.x, 36959i) << (vec3<u32>(0u, u_input.b, u_input.a.x) % vec3<u32>(32u))))));
    let var_0 = reverseBits(~(~global2.b.a.x));
    var var_1 = Struct_4(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, 78003u), _wgslsmith_sub_u32(u_input.b, ~2364u)), ~u_input.a.x, u_input.a.x >> (u_input.a.x % 32u), ~_wgslsmith_div_u32(4294967295u, 4294967295u)), Struct_1(global3.a), Struct_1(select(global3.a, vec4<bool>(true || global3.a.x, true, all(vec3<bool>(global3.a.x, global3.a.x, global4.x)), global3.a.x), global3.a)));
    let var_2 = ~vec4<u32>(1u, var_1.a.x, 1u, ~var_1.a.x);
    global0 = ~var_0;
    return Struct_3(abs(global2.a), global2.b);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> bool {
    let var_0 = vec4<f32>(arg_3, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3), -1000f)), arg_3))), 904f, _wgslsmith_f_op_f32(-1000f + -136f));
    let var_1 = arg_1.b;
    global1 = 1u;
    let var_2 = Struct_5(vec3<u32>(_wgslsmith_mod_u32(0u << (firstLeadingBit(u_input.b) % 32u), u_input.a.x), arg_0, ~u_input.a.x));
    global0 = -(i32(-1i) * -(~(~arg_2)));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1670f, var_0.x, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3))))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2033f, _wgslsmith_f_op_f32(arg_3 * var_0.x))) + _wgslsmith_f_op_f32(floor(arg_3))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_5 {
    global3 = Struct_1(vec4<bool>(!select(global4.x, false, global4.x || global4.x), global3.a.x && (~95276u > max(u_input.a.x, u_input.b)), !func_4(64288u, func_2(-369f), select(global2.a.x, -30760i, false), _wgslsmith_f_op_f32(trunc(774f))), false));
    let var_0 = u_input.a.x ^ 0u;
    var var_1 = select(vec4<bool>(false || !any(vec3<bool>(true, global4.x, true)), global4.x, global4.x, true), global3.a, !(!(false && all(vec4<bool>(false, global4.x, global3.a.x, true)))));
    let var_2 = global2.a;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-2167f)))), 917f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-445f)) + arg_0.x), _wgslsmith_f_op_f32(arg_0.x - -209f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.x, -676f)), _wgslsmith_f_op_f32(-1259f - -1458f)))));
    return Struct_5(u_input.a);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_5) -> vec3<f32> {
    global0 = _wgslsmith_div_i32(1i, reverseBits(arg_1.b.a.x));
    global4 = select(select(global3.a.xz, !(!global3.a.xw), all(global3.a)), vec2<bool>(false, true), !vec2<bool>(false, abs(global2.a.x) == min(-8262i, global2.b.a.x)));
    let var_0 = ~vec4<u32>(0u, ~(~_wgslsmith_add_u32(0u, 100191u)), 4294967295u, 13424u);
    let var_1 = _wgslsmith_f_op_f32(abs(arg_2.x));
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1, _wgslsmith_div_f32(1042f, 216f)), _wgslsmith_f_op_f32(select(1116f, _wgslsmith_f_op_f32(-arg_2.x), false))), -1405f, arg_2.x), vec3<f32>(var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x * arg_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-161f, var_2.x, global4.x)), _wgslsmith_div_f32(-1713f, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(round(1083f)))));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec3<f32>) -> Struct_3 {
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-360f, -417f)), 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -925f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!(!(!select(global3.a, vec4<bool>(global4.x, true, global3.a.x, false), true))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -155f), _wgslsmith_f_op_f32(select(-547f, -133f, false)), -403f, -1673f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(263f, 1706f, 1411f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1391f, 306f, 1665f), vec3<f32>(337f, 438f, 2408f))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-764f, 163f, 525f) * vec3<f32>(-361f, -912f, -841f))), Struct_3(global2.a ^ vec4<i32>(global2.b.a.x, 5821i, 16674i, global2.a.x), global2.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-355f, 714f, 271f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-421f, 1366f, -1533f), vec3<f32>(711f, 499f, -826f), global3.a.yww)), false & global3.a.x)), Struct_5(~vec3<u32>(u_input.b, u_input.a.x, u_input.b)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-170f, -776f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f + -1303f)))));
    var var_1 = max(u_input.a.x, _wgslsmith_add_u32(reverseBits(95384u << (u_input.a.x % 32u)), 5520u));
    var var_2 = global3.a;
    var var_3 = Struct_4(vec4<u32>(~35252u, 24720u << (_wgslsmith_dot_vec2_u32(abs(u_input.a.yy), countOneBits(u_input.a.xy)) % 32u), 0u, 1u), Struct_1(global3.a), Struct_1(select(global3.a, select(global3.a, global3.a, !global3.a), select(select(global3.a, vec4<bool>(global3.a.x, global3.a.x, var_2.x, true), global3.a), global3.a, true))));
    var var_4 = Struct_5(~vec3<u32>(var_3.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(66156u, 68483u, u_input.b, 4294967295u), ~vec4<u32>(33609u, 56309u, var_3.a.x, 4294967295u)), var_3.a.x));
    global4 = !global3.a.yz;
    var var_5 = Struct_5(min(abs(~var_4.a | _wgslsmith_div_vec3_u32(var_4.a, u_input.a)), vec3<u32>(~var_3.a.x, _wgslsmith_dot_vec4_u32(var_3.a, vec4<u32>(u_input.b, u_input.b, 4294967295u, var_3.a.x)), abs(~var_4.a.x))));
    let var_6 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1436f, 923f, 1000f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1699f, -1000f, 1000f) + vec3<f32>(-1372f, 330f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_dot_vec4_u32(var_3.a >> (vec4<u32>(var_4.a.x, 53679u, 4294967295u, 0u) % vec4<u32>(32u)), reverseBits(vec4<u32>(var_5.a.x, 41454u, var_5.a.x, 96007u))), func_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1143f, 705f, 810f)))).a.x), firstTrailingBit(~vec2<i32>(var_0.b.a.x, var_0.a.x)), ~var_0.b.a.x);
}

