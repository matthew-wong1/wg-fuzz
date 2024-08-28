struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<vec2<u32>, 21>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    global0 = array<vec2<u32>, 21>();
    var var_1 = Struct_1(var_0, ~_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(20397u, 21u)] | ~global0[_wgslsmith_index_u32(arg_0.b, 21u)], _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(60539u, arg_0.b), vec2<u32>(arg_0.b, arg_0.b)), global0[_wgslsmith_index_u32(arg_0.b, 21u)] & vec2<u32>(arg_0.b, 32032u))), vec2<bool>(false, false));
    global0 = array<vec2<u32>, 21>();
    return _wgslsmith_f_op_f32(174f * arg_0.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<vec2<u32>, 21>();
    var var_0 = arg_1;
    var var_1 = arg_0;
    var_1 = Struct_1(arg_0.a, _wgslsmith_sub_u32(abs(arg_0.b), _wgslsmith_div_u32(15243u, var_1.b)), var_1.c);
    var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(arg_0.a + var_1.a)))), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -403f), 4294967295u, arg_0.c))))), 0u, var_1.c);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<u32>, 21>();
    var var_0 = u_input.c.wy;
    var_0 = vec2<i32>(_wgslsmith_mod_i32(min(max(15465i, var_0.x), abs(0i)), _wgslsmith_mult_i32(-71347i, u_input.b)), var_0.x ^ u_input.a) | u_input.c.zz;
    let var_1 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(~1u, arg_0.b, select(arg_0.b, arg_0.b, arg_1.c.x), _wgslsmith_add_u32(1u, 8947u))), select(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.b, arg_0.b, 55382u, 106584u), vec4<u32>(arg_0.b, arg_2.b, 46076u, arg_1.b)), ~vec4<u32>(arg_2.b, 4294967295u, arg_0.b, 36963u)), select(vec4<u32>(2565u, 4294967295u, arg_2.b, arg_2.b), _wgslsmith_mult_vec4_u32(vec4<u32>(2399u, arg_1.b, 5853u, 0u), vec4<u32>(arg_2.b, arg_1.b, arg_0.b, arg_1.b)), arg_0.a != arg_2.a), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, arg_0.c.x, true), vec4<bool>(arg_0.c.x, false, false, true))), _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(arg_0.b, 34456u, 1u, 30858u), vec4<u32>(arg_1.b, 4294967295u, 4294967295u, 34242u), false), ~select(vec4<u32>(0u, 4294967295u, 5819u, 4294967295u), vec4<u32>(arg_2.b, arg_2.b, 45191u, arg_1.b), vec4<bool>(arg_1.c.x, true, true, true)), firstTrailingBit(~vec4<u32>(arg_0.b, arg_2.b, arg_0.b, arg_0.b)))), vec4<u32>(_wgslsmith_div_u32(arg_2.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.b), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b, arg_1.b), global0[_wgslsmith_index_u32(arg_2.b, 21u)]))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.b, 4369u, 67350u), vec4<u32>(arg_2.b, arg_1.b, 1u, 4912u) ^ vec4<u32>(1u, 42464u, arg_1.b, 56830u)) << (66863u % 32u), 1u, 0u));
    let var_2 = select(true, arg_2.c.x, func_2(arg_0, u_input.c.yyz).c.x | true);
    return func_2(func_2(arg_0, ~(min(vec3<i32>(45590i, 9700i, var_0.x), u_input.c.yxx) ^ (vec3<i32>(16093i, var_0.x, var_0.x) ^ u_input.c.xxx))), vec3<i32>(~u_input.a, u_input.a, -(-10480i & _wgslsmith_mult_i32(var_0.x, -1i))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    global0 = array<vec2<u32>, 21>();
    let var_0 = ~vec3<u32>(arg_2, 0u, ~1u);
    let var_1 = func_4(Struct_1(-109f, 1u, arg_1.yx), func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -306f), var_0.x, arg_1.zz), ~_wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.x, -2147483647i, 2147483647i), ~u_input.c.ywx)), func_2(func_2(func_2(Struct_1(-1588f, 77511u, vec2<bool>(arg_1.x, arg_1.x)), ~u_input.c.xyy), vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), -30533i, ~(-38122i))), arg_3));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -232f);
    global0 = array<vec2<u32>, 21>();
    return 1814f;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global0 = array<vec2<u32>, 21>();
    let var_0 = Struct_1(-649f, _wgslsmith_clamp_u32(18380u, ~arg_1.b, countOneBits(select(abs(arg_2.b), arg_2.b, true))), arg_2.c);
    let var_1 = func_2(func_4(var_0, arg_1, func_2(Struct_1(arg_2.a, 41255u, !arg_1.c), -u_input.c.zwx << (select(vec3<u32>(6135u, 4294967295u, 32164u), vec3<u32>(var_0.b, var_0.b, 0u), arg_1.c.x) % vec3<u32>(32u)))), -u_input.c.xyz);
    let var_2 = _wgslsmith_add_i32(22180i, u_input.b >> (_wgslsmith_mod_u32(var_1.b, var_0.b >> (29530u % 32u)) % 32u));
    var var_3 = func_2(Struct_1(arg_1.a, 23703u, func_2(Struct_1(_wgslsmith_f_op_f32(func_1(vec2<i32>(var_2, var_2), vec3<bool>(true, true, false), 0u, vec3<i32>(u_input.c.x, 1i, u_input.b))), ~1u, !arg_1.c), _wgslsmith_div_vec3_i32(-u_input.c.zzw, min(u_input.c.ywy, u_input.c.wzy))).c), select(vec3<i32>(-var_2, _wgslsmith_sub_i32(u_input.c.x, 2147483647i), -2147483647i), vec3<i32>(-34294i, 16567i, 0i), all(var_0.c))).c.x;
    return min(48421u, arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 21>();
    global0 = array<vec2<u32>, 21>();
    let var_0 = u_input.a ^ ~select(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(23288i, 1i, u_input.b, -1i), vec4<i32>(0i, u_input.c.x, -8249i, -2147483647i)) | (u_input.a | u_input.a), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1124f, _wgslsmith_f_op_f32(trunc(-1000f)))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec2<i32>(-26181i, var_0), vec3<bool>(true, true, true), 0u, vec3<i32>(-549i, var_0, 0i)))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(186f, 0u, vec2<bool>(false, false))))), 61294u, vec2<bool>(select(false, false, false), any(vec3<bool>(true, true, false)))), func_4(Struct_1(_wgslsmith_f_op_f32(-377f * -1583f), _wgslsmith_div_u32(13022u, 4294967295u), select(vec2<bool>(false, false), vec2<bool>(true, false), true)), Struct_1(-1133f, ~16969u, vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_f32(func_3(Struct_1(-1184f, 83582u, vec2<bool>(false, true)))), 1u, vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(609f, 2166f, -798f, -575f)))), vec2<bool>(true, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1104f)), _wgslsmith_f_op_f32(f32(-1f) * -569f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(exp2(var_1.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))), var_1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.a, var_1.a, var_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-414f, 995f, var_1.a, var_1.a) - vec4<f32>(var_1.a, var_1.a, var_1.a, 2397f)), !var_1.c.x))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-288f - _wgslsmith_f_op_f32(floor(var_2.x))))), countOneBits(abs(firstLeadingBit(~9756u))), var_1.c);
    let var_3 = _wgslsmith_div_f32(-190f, var_1.a);
    var var_4 = 0u;
    var var_5 = abs(~vec4<u32>(select(var_1.b, var_1.b, var_1.c.x) >> (30985u % 32u), 84837u, ~1u, countOneBits(~var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_u32(abs(0u), var_1.b), select(var_1.b, min(26968u, ~2127u), _wgslsmith_div_u32(var_5.x, 53437u) >= 40992u)), vec2<i32>(~(-2147483647i), u_input.a), ~vec2<u32>(~(var_1.b << (0u % 32u)), var_1.b), var_5.zw, vec2<i32>(-23103i, u_input.c.x));
}

