struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 31>;

var<private> global1: array<Struct_1, 5>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global0 = array<vec4<i32>, 31>();
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_f_op_f32(1017f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1023f))))) + _wgslsmith_f_op_f32(-1000f - 219f)));
    let var_2 = u_input.a;
    global0 = array<vec4<i32>, 31>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1301f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1100f, var_1, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1000f, var_1))))))));
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(484f, 1000f, 781f) - vec3<f32>(771f, 848f, -1329f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-252f, -1257f, -698f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1206f, -756f, -609f))))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(264f + -724f), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1389f * -236f) + _wgslsmith_f_op_f32(select(-523f, 1279f, false)))))));
    global1 = array<Struct_1, 5>();
    var var_1 = Struct_3(global1[_wgslsmith_index_u32(25688u, 5u)], ~(~reverseBits(vec4<u32>(u_input.c, 4294967295u, u_input.c, 89684u))), (abs(u_input.b) | (abs(u_input.c) << (120093u % 32u))) << (u_input.b % 32u), select(_wgslsmith_clamp_i32(-u_input.a, 104967i, abs(u_input.a)), reverseBits(arg_0), (_wgslsmith_f_op_f32(-var_0.x) >= -1000f) || all(vec3<bool>(true, true, true))), vec2<bool>(all(vec4<bool>(any(vec4<bool>(false, false, true, false)), true, true, any(vec3<bool>(true, true, false)))), true));
    let var_2 = Struct_4(~(~_wgslsmith_dot_vec2_u32(var_1.b.xw, reverseBits(var_1.b.zw))));
    let var_3 = Struct_4(~1301u);
    return Struct_4(var_3.a);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = func_2(arg_0.b.a | u_input.a);
    let var_1 = Struct_3(arg_0.b, _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(~u_input.b, var_0.a, countOneBits(u_input.c), _wgslsmith_clamp_u32(10973u, 1u, 0u))), countOneBits(~(~vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a)))), abs(2116u), arg_1, vec2<bool>(!(_wgslsmith_f_op_f32(ceil(812f)) > _wgslsmith_f_op_f32(trunc(-129f))), false));
    var_0 = func_2(-max(arg_1, _wgslsmith_div_i32(arg_1, _wgslsmith_mult_i32(arg_1, arg_0.b.a))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_mod_i32(max(-2147483647i, i32(-1i) * -6215i), 3195i)), global1[_wgslsmith_index_u32(var_1.b.x, 5u)]);
    global1 = array<Struct_1, 5>();
    return 0u;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: bool) -> Struct_4 {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(~(17845u & (~u_input.c << (50558u % 32u))), 5u)], global1[_wgslsmith_index_u32(~func_1(Struct_2(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(~4294967295u, 5u)]), ~u_input.a | (i32(-1i) * -5012i)), 5u)]);
    var var_1 = global1[_wgslsmith_index_u32(~1u, 5u)];
    let var_2 = func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, arg_0.x, -25668i), countOneBits(vec3<i32>(_wgslsmith_add_i32(0i, -1i), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(57014u, 31u)], vec4<i32>(var_1.a, var_0.b.a, arg_0.x, arg_0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, var_0.a.a), vec3<i32>(u_input.a, var_1.a, u_input.a))))));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_1, 1u, 46787u) >> (~vec3<u32>(var_2.a, 4294967295u, var_2.a) % vec3<u32>(32u))), ~(~(~vec3<u32>(7527u, 0u, 4294967295u)))), countOneBits(u_input.c), u_input.b, _wgslsmith_add_u32(4294967295u, ~(arg_1 << (~u_input.c % 32u))));
    global0 = array<vec4<i32>, 31>();
    return func_2(u_input.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    global0 = array<vec4<i32>, 31>();
    global0 = array<vec4<i32>, 31>();
    let var_0 = func_2(~firstLeadingBit(u_input.a));
    global0 = array<vec4<i32>, 31>();
    var var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, false)), true), true));
    return Struct_2(Struct_1(abs((u_input.a >> (0u % 32u)) | u_input.a)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_2, ~14866u) >> (~arg_2 % 32u), 5u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 5>();
    global0 = array<vec4<i32>, 31>();
    var var_0 = func_5(vec2<u32>(u_input.b, u_input.b), func_4(abs(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), func_1(Struct_2(Struct_1(u_input.a), global1[_wgslsmith_index_u32(~4294967295u, 5u)]), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -47161i), vec2<i32>(u_input.a, 0i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(110f, -1504f))), _wgslsmith_div_vec2_f32(vec2<f32>(-460f, 858f), vec2<f32>(-575f, 632f)), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 381f) + vec2<f32>(-927f, 358f)))), !(_wgslsmith_f_op_f32(select(168f, -1964f, false)) == -1957f)), ~10991u);
    global0 = array<vec4<i32>, 31>();
    global0 = array<vec4<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-1i)), vec3<i32>(countOneBits(var_0.a.a), var_0.b.a << (u_input.c % 32u), 57056i), 0i, _wgslsmith_f_op_f32(-378f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(241f, 542f)) - 1f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1885f))), -603f))));
}

