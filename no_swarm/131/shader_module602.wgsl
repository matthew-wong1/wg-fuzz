struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    global0 = -(~firstTrailingBit(min(-2147483647i, -1i)) ^ -2147483647i);
    global0 = countOneBits(-countOneBits(-2147483647i));
    global0 = -5160i;
    let var_0 = arg_0.c;
    global0 = 1i;
    return !var_0.b.zx;
}

fn func_3(arg_0: vec4<u32>, arg_1: u32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1181f, 631f, -1183f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-866f, -949f, -1019f) - vec3<f32>(-515f, 166f, 830f))))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(157f, 809f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-468f)) + 1999f)), _wgslsmith_f_op_f32(f32(-1f) * -1206f))));
    global0 = _wgslsmith_mod_i32(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i << (arg_0.x % 32u), 23279i), countOneBits(vec2<i32>(31976i, 43864i) >> (u_input.b.zw % vec2<u32>(32u)))));
    global0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-firstTrailingBit(-34761i), _wgslsmith_dot_vec3_i32(vec3<i32>(19483i, -84346i, -19125i), abs(vec3<i32>(35025i, -1i, -1i)))), firstLeadingBit(countOneBits(vec2<i32>(-1i, -3695i))) << (~arg_0.wz % vec2<u32>(32u)));
    let var_1 = Struct_2(!select(func_2(Struct_2(vec2<bool>(false, false), vec2<u32>(u_input.a, 4294967295u), Struct_1(var_0.yy, vec3<bool>(false, true, false)))), vec2<bool>(true, true), vec2<bool>(false, true)), u_input.b.yz, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(min(1863f, _wgslsmith_div_f32(var_0.x, var_0.x))), _wgslsmith_f_op_f32(-1536f + _wgslsmith_f_op_f32(select(var_0.x, 716f, false)))), select(vec3<bool>(true, true, all(vec3<bool>(false, true, false))), vec3<bool>(false, true, 1u < u_input.c), any(vec3<bool>(true, true, true)))));
    var var_2 = vec3<u32>(0u, ~arg_0.x, _wgslsmith_add_u32(u_input.b.x, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(60u, 4294967295u), arg_0.yy))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1177f, 371f, var_1.c.a.x, var_0.x) * vec4<f32>(-1139f, -1689f, var_0.x, -205f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.a.x, 939f, -1817f, 163f) - vec4<f32>(var_1.c.a.x, var_1.c.a.x, -564f, var_0.x))) + vec4<f32>(-954f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-445f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1041f) - _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_f32(var_1.c.a.x * _wgslsmith_f_op_f32(1000f - -400f))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(select(vec2<bool>(all(vec4<bool>(true, false, false, false)) | all(vec2<bool>(true, true)), !select(false, true, false)), select(vec2<bool>(true, true), select(func_2(Struct_2(vec2<bool>(false, false), u_input.b.wx, Struct_1(vec2<f32>(-318f, 951f), vec3<bool>(false, true, false)))), vec2<bool>(true, true), true), vec2<bool>(true, true)), true), u_input.b.yw >> ((vec2<u32>(u_input.b.x, u_input.c) ^ ~reverseBits(vec2<u32>(0u, 0u))) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(363f, _wgslsmith_f_op_f32(select(-1068f, 1229f, false))))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, false, false)), true, func_2(Struct_2(vec2<bool>(false, true), u_input.b.yw, Struct_1(vec2<f32>(1000f, -900f), vec3<bool>(false, false, false)))).x), vec3<bool>(all(vec3<bool>(true, true, true)), false, all(vec4<bool>(false, false, true, false))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(394f, _wgslsmith_div_f32(-957f, var_0.c.a.x), var_0.c.a.x, _wgslsmith_div_f32(var_0.c.a.x, var_0.c.a.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-884f, -1012f, -1000f, -1000f) - vec4<f32>(2193f, var_0.c.a.x, 1988f, -513f)))))))), _wgslsmith_f_op_vec4_f32(func_3(~vec4<u32>(63350u, u_input.b.x, 0u, 4294967295u) << (~u_input.b % vec4<u32>(32u)), 1u))));
    let var_2 = vec2<bool>(true, true);
    var var_3 = Struct_2(vec2<bool>(~(~var_0.b.x) <= ~(~48270u), !(!var_2.x)), u_input.b.zz, Struct_1(vec2<f32>(-663f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-577f, var_0.c.a.x)) * -1000f)), !var_0.c.b));
    let var_4 = abs(1i);
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_2(vec2<bool>(!(~1u < countOneBits(u_input.a)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, false, false, true)))), u_input.b.xy ^ max(~vec2<u32>(64308u, u_input.a), vec2<u32>(1u, ~u_input.a)), func_1());
    global0 = 0i;
    var_0 = var_1.a.x;
    global0 = max(-((~(-5988i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(24204i, -52624i))) << (~u_input.b.x % 32u)), ~(-46544i));
    global0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(select(-2147483647i, -1107i, var_1.c.b.x), 1i, 1i, -2147483647i), vec4<i32>(35100i, 1i, abs(2147483647i), 2147483647i)), select(countOneBits(vec4<i32>(-22846i, -54657i, 8008i, 2147483647i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, -7077i, -2147483647i, 2147483647i), firstTrailingBit(vec4<i32>(-2147483647i, 0i, -2147483647i, -39226i)), abs(vec4<i32>(2147483647i, -1i, -2147483647i, -29619i))), select(vec4<bool>(false, false, false, var_1.a.x), select(vec4<bool>(var_1.a.x, false, var_1.a.x, true), vec4<bool>(var_1.a.x, true, true, var_1.c.b.x), true), vec4<bool>(var_1.c.b.x, true, true, var_1.c.b.x)))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-35561i, -1i, -67529i)) >> (u_input.b.x % 32u));
    var var_2 = Struct_2(!var_1.c.b.zy, ~var_1.b, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2.c.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.a.x, var_2.c.a.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1104f + 1425f)), 1078f)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(44425i, min(1i, i32(-1i) * -17117i), min(_wgslsmith_mult_i32(2147483647i, -1i), _wgslsmith_clamp_i32(0i, 3104i, 0i))), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -2147483647i), vec2<i32>(1i, 1i))));
}

