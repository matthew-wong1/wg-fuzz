struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: vec3<i32> = vec3<i32>(1i, 44423i, 1i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_2.x, arg_0.x, arg_0.x, false), !vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, true, arg_0.x, arg_0.x), false)), !select(vec4<bool>(true, arg_0.x, false, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, false))), vec4<bool>(!all(vec4<bool>(arg_2.x, arg_0.x, arg_0.x, arg_2.x)), !(!arg_2.x), arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x))), arg_2.x), select(vec4<bool>(!any(vec2<bool>(false, true)), arg_0.x, true, false), !select(!vec4<bool>(arg_0.x, false, false, arg_2.x), !vec4<bool>(arg_0.x, arg_2.x, false, false), !arg_2.x), false), true);
    let var_1 = _wgslsmith_f_op_f32(trunc(853f));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(var_1 * var_1))), var_1, !all(select(arg_0, var_0.zyy, var_0.x)))) + -1405f);
    global0 = array<Struct_2, 13>();
    let var_3 = Struct_4(Struct_3(select(~vec4<u32>(45901u, 15890u, 76390u, 0u), vec4<u32>(countOneBits(10004u), _wgslsmith_clamp_u32(1u, 78146u, 34905u), 1u, ~21653u), select(select(var_0, vec4<bool>(var_0.x, arg_0.x, true, true), var_0), vec4<bool>(false, arg_2.x, false, arg_2.x), all(vec3<bool>(false, true, true)))), !vec4<bool>(!arg_0.x, true, any(arg_2.yy), -8389i == global1.x), _wgslsmith_div_i32(arg_1, abs(i32(-1i) * -12315i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1992f, var_1, 1000f, var_1) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1476f, var_1, 449f) * vec4<f32>(420f, var_1, 714f, var_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 789f, -800f, 250f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1360f, var_1, 731f, 447f)))))), global0[_wgslsmith_index_u32(~83273u, 13u)], vec2<u32>(29027u & (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 118934u), vec3<u32>(4294967295u, 27078u, 4294967295u)) | 0u), 74125u), ~firstTrailingBit(_wgslsmith_clamp_u32(select(1u, 4294967295u, true), 1u, 4294967295u)), true);
    return countOneBits(~(_wgslsmith_div_vec3_u32(max(vec3<u32>(var_3.c.x, var_3.a.a.x, var_3.d), var_3.a.a.wyy), abs(vec3<u32>(var_3.a.a.x, var_3.c.x, 0u))) | var_3.a.a.wwx));
}

fn func_2() -> vec4<u32> {
    var var_0 = -1i;
    let var_1 = countOneBits(func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), u_input.a, vec3<bool>(true, true, select(true, true, true))));
    var_0 = u_input.b.x;
    let var_2 = Struct_3(vec4<u32>(~var_1.x, ~_wgslsmith_dot_vec3_u32(~var_1, var_1 ^ var_1), 17372u, ~4294967295u), vec4<bool>(true, false, any(vec3<bool>(true, true, true)) | all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), true), -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(1f, 1f, 1f, 1f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(848f, 653f, -445f, -1050f) + vec4<f32>(442f, 1000f, 928f, 265f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-228f, 1738f, -377f, 1126f)))))));
    var var_3 = Struct_1(select(~(~vec2<u32>(0u, var_1.x)), ~var_2.a.zz, vec2<bool>(~5735u < _wgslsmith_clamp_u32(var_1.x, 0u, 1u), ~var_2.a.x >= 4294967295u)), vec3<bool>(var_2.b.x, var_2.b.x, any(var_2.b)));
    return vec4<u32>(var_3.a.x, var_2.a.x | max(~(~var_3.a.x), var_2.a.x), var_3.a.x, ~var_2.a.x);
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_4(Struct_3(~_wgslsmith_mult_vec4_u32(func_2(), vec4<u32>(1u, 1u, 1u, 1u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(true, false, false)), all(vec2<bool>(true, false)))), 1i | global1.x, vec4<f32>(1180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1297f, 457f, true))), -1316f, 1f)), global0[_wgslsmith_index_u32(4294967295u, 13u)], vec2<u32>(1u, 1u), abs(1u), true);
    var_0 = Struct_4(Struct_3(func_2(), vec4<bool>(!select(var_0.a.b.x, var_0.b.a, false), var_0.b.a, var_0.b.a, var_0.a.b.x), -abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -16671i), u_input.b)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.d.x + var_0.a.d.x), 317f, -719f, _wgslsmith_f_op_f32(min(527f, var_0.a.d.x)))))), global0[_wgslsmith_index_u32(var_0.c.x, 13u)], var_0.a.a.xw, _wgslsmith_clamp_u32(abs(var_0.a.a.x), ~((var_0.c.x | var_0.d) | func_2().x), ~var_0.d), var_0.b.a);
    var var_1 = Struct_1(var_0.a.a.zz & ~min(~var_0.a.a.zw, var_0.a.a.xx ^ vec2<u32>(1u, 1u)), var_0.a.b.xzw);
    let var_2 = vec2<u32>(var_1.a.x, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_mod_u32(1u, 111486u)), var_0.a.a.x ^ ~14636u));
    var var_3 = var_0.a;
    return vec3<i32>(firstLeadingBit(-countOneBits(u_input.a)) ^ ~global1.x, -_wgslsmith_dot_vec3_i32(min(vec3<i32>(var_3.c, u_input.b.x, var_3.c) << (vec3<u32>(33811u, var_1.a.x, 4294967295u) % vec3<u32>(32u)), vec3<i32>(var_3.c, var_0.b.b, var_0.a.c) << (vec3<u32>(4294967295u, var_2.x, var_2.x) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, -5374i, u_input.b.x), vec3<i32>(var_3.c, var_3.c, var_0.b.b) ^ vec3<i32>(2147483647i, 3128i, u_input.b.x), vec3<i32>(var_3.c, -21347i, -1i))), -10361i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -(select(~(~vec3<i32>(-2147483647i, u_input.a, -21i)), select(vec3<i32>(global1.x, 8139i, u_input.a), func_1(), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))) >> ((func_3(vec3<bool>(true, false, false), -2147483647i, select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)) & vec3<u32>(countOneBits(24733u), 18791u, max(0u, 19284u))) % vec3<u32>(32u)));
    global1 = vec3<i32>(1i, global1.x, 1i);
    global1 = abs(reverseBits(vec3<i32>(-(i32(-1i) * -26812i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(35269i, u_input.b.x, 13162i, -35950i), vec4<i32>(-3941i, global1.x, u_input.b.x, u_input.a)), vec4<i32>(0i, global1.x, -38541i, -33358i)), i32(-1i) * -1i)));
    global0 = array<Struct_2, 13>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1655f, _wgslsmith_f_op_f32(f32(-1f) * -1369f), true && any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-936f - 503f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)) - _wgslsmith_f_op_f32(ceil(-1000f)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(334f, -1216f, 445f), vec3<f32>(455f, 1246f, 291f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, 1u), func_3(vec3<bool>(true, false, true), u_input.b.x, vec3<bool>(true, false, true)))));
}

