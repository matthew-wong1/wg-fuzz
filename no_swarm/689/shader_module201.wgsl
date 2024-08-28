struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: array<f32, 17>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> vec2<bool> {
    global0 = array<f32, 25>();
    var var_0 = firstTrailingBit(u_input.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(2454u >> (u_input.d % 32u), 0u), abs(countOneBits(u_input.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(65438u, u_input.d) | vec2<u32>(0u, 25218u), reverseBits(vec2<u32>(u_input.d, 7914u)))), 25u)] + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 17u)]), -582f))) - _wgslsmith_f_op_f32(-499f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2076f, global0[_wgslsmith_index_u32(20032u, 25u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(710f * 699f) + _wgslsmith_f_op_f32(max(-1124f, 1085f)))))));
    var var_2 = u_input.c;
    var var_3 = min(~(4294967295u >> (u_input.d % 32u)), u_input.d);
    return !(!select(arg_1, select(arg_1, !arg_1, arg_1.x | false), select(select(arg_1, vec2<bool>(arg_1.x, arg_1.x), arg_1), vec2<bool>(arg_1.x, arg_0), !arg_1)));
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = Struct_3(vec3<bool>(true, true, true));
    global1 = array<f32, 17>();
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(min(select(reverseBits(vec2<i32>(-18767i, u_input.c.x)), vec2<i32>(-15663i, u_input.b.x), func_3(false, var_0.a.zz)), abs(-u_input.b.zx)), -_wgslsmith_mod_vec2_i32(min(u_input.b.yz, vec2<i32>(u_input.c.x, arg_0)), ~vec2<i32>(arg_0, arg_0))), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(arg_0, arg_0)), i32(-1i) * -1i));
    var_1 = ~(-firstTrailingBit(arg_0));
    let var_2 = false;
    return Struct_4(u_input.d, Struct_3(var_0.a), vec4<i32>(u_input.a.x, 1i << (~u_input.d % 32u), max(_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, u_input.c.x, 1i, arg_0), -vec4<i32>(u_input.c.x, arg_0, arg_0, arg_0)), -_wgslsmith_mod_i32(u_input.a.x, 0i)), 18752i));
}

fn func_1() -> vec3<bool> {
    global1 = array<f32, 17>();
    var var_0 = vec2<i32>(~_wgslsmith_add_i32(_wgslsmith_sub_i32(1i, 0i), u_input.b.x), -1i);
    let var_1 = func_2(~var_0.x);
    let var_2 = Struct_1(var_1.b.a.x, reverseBits(1u));
    var var_3 = false;
    return var_1.b.a;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_2 {
    global0 = array<f32, 25>();
    var var_0 = reverseBits(-u_input.c.x ^ -max(countOneBits(u_input.c.x), ~(-40767i)));
    return arg_2;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_1(all(select(vec2<bool>(false, false), vec2<bool>(true, true), -339f >= _wgslsmith_f_op_f32(-1871f * arg_1.x))), ~(~(~u_input.d << (arg_0.e.x % 32u))));
    let var_1 = arg_0;
    var_0 = Struct_1(var_0.a && (var_0.a != any(select(vec4<bool>(var_0.a, true, var_0.a, false), vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(var_0.a, true, var_0.a, false)))), arg_0.e.x);
    let var_2 = all(!(!select(vec4<bool>(false, true, false, var_0.a), select(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, true, true)), vec4<bool>(var_0.a, false, var_0.a, true))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.e.xw, var_1.b), 17u)], _wgslsmith_f_op_f32(f32(-1f) * -101f), arg_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -472f, global1[_wgslsmith_index_u32(~arg_0.e.x, 17u)])))));
    return Struct_3(vec3<bool>(func_3(func_2(14289i).b.a.x, select(vec2<bool>(var_2, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(false, var_0.a))).x || false, !var_0.a, any(vec3<bool>(true, var_0.a, var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = 2147483647i;
    let var_2 = abs(u_input.b);
    var var_3 = func_5(func_4(var_0, !func_1(), Struct_2(var_2.x, _wgslsmith_mod_vec2_u32(~vec2<u32>(var_0, 4294967295u), vec2<u32>(u_input.d, 17500u)), vec4<i32>(max(u_input.c.x, 50448i), _wgslsmith_mod_i32(u_input.c.x, u_input.a.x), firstLeadingBit(-10094i), 4723i), 49422u, _wgslsmith_div_vec4_u32(select(vec4<u32>(16722u, var_0, 38440u, u_input.d), vec4<u32>(u_input.d, var_0, 4294967295u, 40861u), false), ~vec4<u32>(4294967295u, 4294967295u, 7166u, 4055u))), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1509f, -1142f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 25u)], global1[_wgslsmith_index_u32(var_0, 17u)]))))))));
    var_1 = _wgslsmith_mult_i32(firstTrailingBit(-34721i), u_input.b.x) & (~(~_wgslsmith_mod_i32(u_input.c.x, -3727i)) ^ (var_2.x >> (~_wgslsmith_mult_u32(u_input.d, 0u) % 32u)));
    let var_4 = Struct_2(-1i >> (_wgslsmith_add_u32(u_input.d, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19556u, 4623u), vec2<u32>(4294967295u, var_0)), u_input.d)) % 32u), abs(vec2<u32>(0u, 0u)), vec4<i32>(~(-2147483647i) ^ ~var_2.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(var_2.x ^ var_2.x, -u_input.b.x), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c.x, -87484i), var_2.x)), var_2.x, -(~_wgslsmith_div_i32(var_2.x, 9839i))), ~var_0, reverseBits(vec4<u32>(~_wgslsmith_mod_u32(u_input.d, var_0), ~(~var_0), var_0, u_input.d)));
    let var_5 = Struct_3(!var_3.a);
    var_3 = var_5;
    var var_6 = -_wgslsmith_dot_vec2_i32(~abs(_wgslsmith_div_vec2_i32(var_4.c.xx, var_2.yy)), abs(u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(select(_wgslsmith_div_u32(1u, 108282u), _wgslsmith_dot_vec2_u32(var_4.b, vec2<u32>(var_0, u_input.d)), true), 11565u, 0u, 4294967295u)), _wgslsmith_add_u32(min(var_4.b.x, ~(~var_4.d)), firstLeadingBit(var_4.e.x)), var_4.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1154f, global0[_wgslsmith_index_u32(12951u, 25u)], -1262f)) - vec3<f32>(761f, -369f, 1602f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-475f, global0[_wgslsmith_index_u32(u_input.d, 25u)], -225f) + vec3<f32>(global1[_wgslsmith_index_u32(26823u, 17u)], global0[_wgslsmith_index_u32(u_input.d, 25u)], 1592f))))), var_4.e.zyy);
}

