struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 20>;

var<private> global1: array<f32, 31> = array<f32, 31>(1000f, -184f, -1225f, -1516f, 272f, 2494f, -359f, 781f, -919f, 484f, -288f, 1000f, -1378f, 481f, 299f, 827f, -501f, 1206f, 136f, -1130f, -557f, -553f, -1342f, 813f, -738f, -134f, -1000f, -136f, -322f, -2009f, -202f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> vec4<bool> {
    global0 = array<vec3<bool>, 20>();
    var var_0 = _wgslsmith_div_vec3_i32(select(u_input.c.www, vec3<i32>(~(~u_input.b), 32978i, ~(~u_input.d)), arg_3.x), vec3<i32>(u_input.b, u_input.c.x, ~(~firstLeadingBit(u_input.c.x))));
    var_0 = u_input.c.zyw;
    var_0 = ~select(u_input.c.yxx, select(vec3<i32>(2147483647i, 2147483647i, u_input.d), u_input.c.zyy, arg_3.x), global0[_wgslsmith_index_u32(~(arg_2.d & 4294967295u), 20u)]) ^ vec3<i32>(-4574i, ~(~(-15044i ^ u_input.d)), var_0.x);
    let var_1 = Struct_1(arg_2.c.a);
    return !var_1.a;
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_2(true, global1[_wgslsmith_index_u32(~(~u_input.a.x), 31u)], Struct_1(!(!func_3(u_input.a.x, global1[_wgslsmith_index_u32(10800u, 31u)], Struct_2(false, 553f, Struct_1(vec4<bool>(false, false, true, true)), 38956u), vec2<bool>(true, true)))), 0u);
    let var_1 = _wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-7821i, -5025i, arg_0.x), firstLeadingBit(u_input.c.yzz), vec3<i32>(0i, arg_0.x, u_input.d) | vec3<i32>(-2147483647i, u_input.d, u_input.b))) ^ arg_0, vec3<i32>(2147483647i, i32(-1i) * -_wgslsmith_add_i32(u_input.c.x, 2147483647i), 1i));
    let var_2 = ~firstLeadingBit(_wgslsmith_mult_i32(48788i, -1i));
    global0 = array<vec3<bool>, 20>();
    var var_3 = var_0.a;
    return Struct_3(var_0, true, _wgslsmith_add_i32(-(~var_2), 6816i), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.c.x, abs(u_input.b), _wgslsmith_dot_vec3_i32(u_input.c.zzz, vec3<i32>(var_2, 2147483647i, arg_0.x)))), -arg_0));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = min(_wgslsmith_sub_u32(arg_1.a.d & 4294967295u, u_input.a.x), countOneBits(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_1.a.d), vec2<u32>(arg_1.a.d, arg_1.a.d)), ~3006u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b) - 613f)));
    let var_2 = all(vec2<bool>(true, arg_0.x));
    global1 = array<f32, 31>();
    let var_3 = arg_1.a;
    return arg_1.a.d;
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> bool {
    global1 = array<f32, 31>();
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, 6517u, 1u), vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x))), u_input.a.x), 48312u, func_4(select(!(!vec4<bool>(arg_1.c.a.x, arg_1.a, arg_1.a, arg_1.a)), vec4<bool>(false, any(arg_1.c.a), false, false), arg_1.c.a), func_2(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, 2147483647i, u_input.d), vec3<i32>(u_input.c.x, u_input.d, 2147483647i)), u_input.c.xzx)), func_2(select(u_input.c.xzx, u_input.c.xyx, arg_1.c.a.zwx)).b, abs(~u_input.c.x) & max(0i, _wgslsmith_add_i32(u_input.c.x, u_input.b))), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(max(u_input.a.xx, vec2<u32>(u_input.a.x, arg_1.d)), countOneBits(vec2<u32>(1u, 0u)) | u_input.a.xz)));
    let var_1 = u_input.c.x <= _wgslsmith_dot_vec2_i32(u_input.c.wz, vec2<i32>(-1i) * -select(u_input.c.xz, u_input.c.zx, arg_1.c.a.x));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)) * _wgslsmith_f_op_f32(arg_1.b - _wgslsmith_div_f32(arg_0, 539f))) + -555f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1329f, arg_1.b, global1[_wgslsmith_index_u32(4294967295u, 31u)], 1782f) * vec4<f32>(112f, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(24235u, 31u)], arg_1.b)) + vec4<f32>(490f, global1[_wgslsmith_index_u32(0u, 31u)], arg_1.b, global1[_wgslsmith_index_u32(arg_1.d, 31u)])) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, global1[_wgslsmith_index_u32(32851u, 31u)], arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(405f, global1[_wgslsmith_index_u32(u_input.a.x, 31u)], -167f, arg_1.b), vec4<f32>(-1883f, 115f, arg_1.b, -390f)))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-297f)) - 1894f)))));
    return all(vec3<bool>(_wgslsmith_clamp_u32(max(1u, 1u), _wgslsmith_div_u32(5589u, arg_1.d), ~var_0.x) != 9975u, any(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d, 20870u, 32329u), vec3<u32>(1u, var_0.x, 0u)), arg_0, Struct_2(true, -357f, arg_1.c, 40852u), !vec2<bool>(var_1, true)).yz), (arg_1.d == ~u_input.a.x) == !(!var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(658f, Struct_2(~4896u > ~u_input.a.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 44853u) << (~0u % 32u), 31u)], Struct_1(vec4<bool>(true, true, true, true)), ~(~4294967295u)));
    var var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(u_input.a.x, -1000f, Struct_2(true, global1[_wgslsmith_index_u32(0u, 31u)], Struct_1(vec4<bool>(false, true, true, false)), u_input.a.x), vec2<bool>(true, true)).x));
    let var_2 = u_input.d;
    var_1 = select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(var_1.x, false))), !(!(!func_2(u_input.c.xyy).a.c.a.yw)), !vec2<bool>(func_3(0u, 1274f, Struct_2(var_1.x, global1[_wgslsmith_index_u32(4294967295u, 31u)], Struct_1(vec4<bool>(true, true, false, var_1.x)), 34673u), select(vec2<bool>(false, false), vec2<bool>(true, var_1.x), var_1.x)).x, !(var_1.x & var_1.x)));
    global1 = array<f32, 31>();
    let var_3 = -(~(~u_input.c));
    let var_4 = reverseBits(7573i);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(0u, u_input.a.x, 79649u)), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<u32>((u_input.a.x ^ 7667u) >> (4294967295u % 32u), firstTrailingBit(abs(u_input.a.x)), u_input.a.x << (_wgslsmith_add_u32(1u, 16025u) % 32u)), _wgslsmith_div_u32(firstLeadingBit(u_input.a.x), ~u_input.a.x) >= 56727u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(u_input.a.x, 4294967295u), 31u)]) - 613f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(656f - -422f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(814f, -732f)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a.x, 31u)])))))), _wgslsmith_f_op_f32(round(1305f)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(76415u, 0u) << (u_input.a.xy % vec2<u32>(32u))), u_input.a.xx), _wgslsmith_add_u32((u_input.a.x & 4294967295u) >> (abs(u_input.a.x) % 32u), reverseBits(~0u))));
}

