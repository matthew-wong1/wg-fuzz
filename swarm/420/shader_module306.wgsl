struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 63271u;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.e.yw >> (vec2<u32>(~1u, 33583u) % vec2<u32>(32u)), u_input.e.xy), firstLeadingBit(u_input.a));
    global0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.e.xyy, u_input.e.wxz), min(vec3<u32>(0u, 30661u, 0u), ~vec3<u32>(u_input.a, u_input.e.x, u_input.e.x)) | ~vec3<u32>(21702u, u_input.e.x, 4294967295u)) | ~(~(~(~u_input.e.x)));
    let var_0 = Struct_1(-23578i, any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(1u != u_input.e.x, any(vec2<bool>(false, true))), true)), false);
    let var_1 = ~u_input.c <= _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-8406i, 0i, 2147483647i) | vec3<i32>(u_input.c, var_0.a, 2147483647i), vec3<i32>(u_input.d, 0i, 33766i)), max(select(vec3<i32>(-2147483647i, -13446i, 0i), vec3<i32>(var_0.a, 2147483647i, var_0.a), vec3<bool>(true, false, false)), vec3<i32>(var_0.a, u_input.b, 36965i) << (vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(32u)))), firstLeadingBit(max(vec3<i32>(u_input.c, -34254i, var_0.a), vec3<i32>(-2147483647i, var_0.a, -42691i)) & -vec3<i32>(var_0.a, u_input.c, -7739i)));
    var var_2 = false;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, var_0.a, u_input.d, -46751i), vec4<i32>(var_0.a, 25337i, -24186i, 42749i)), reverseBits(vec4<i32>(u_input.c, var_0.a, u_input.c, -2147483647i) ^ vec4<i32>(-8002i, -2147483647i, var_0.a, 1i))) & ~(~(-vec4<i32>(var_0.a, 2147483647i, 0i, var_0.a))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(1i, var_0.a, u_input.d, var_0.a), countOneBits(vec4<i32>(var_0.a, u_input.c, -5627i, var_0.a))), ~vec4<i32>(-1i, var_0.a, 0i, var_0.a)) ^ vec4<i32>(0i, -(~(-14845i)), (u_input.b | 56512i) | u_input.d, 2824i));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool, arg_3: vec4<i32>) -> vec3<i32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, reverseBits(-2147483647i), u_input.d), firstTrailingBit(vec4<i32>(-31891i, 0i, arg_0.a.x, arg_0.a.x)) & firstLeadingBit(vec4<i32>(32203i, 0i, 43636i, 2147483647i))), ~vec4<i32>(1i, func_3(), 1i, arg_3.x)), arg_3.x >> ((firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(33431u, 0u, u_input.a), vec3<u32>(u_input.e.x, 1u, u_input.a))) | ~1u) % 32u), -arg_3.x);
    let var_1 = _wgslsmith_dot_vec2_u32(~u_input.e.wy, reverseBits(vec2<u32>(min(u_input.a, 15087u) << (~0u % 32u), u_input.e.x)));
    var var_2 = arg_0;
    return abs(~vec3<i32>(-var_2.a.x, var_2.a.x, _wgslsmith_sub_i32(1i, var_0.x) | 1i));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: bool) -> bool {
    var var_0 = any(!select(vec2<bool>(true, true), vec2<bool>(true, false), arg_2));
    var_0 = arg_2;
    let var_1 = Struct_2(min(select(select(arg_1.zxx, vec3<i32>(arg_1.x, -2147483647i, -20492i), vec3<bool>(arg_2, false, arg_2)), arg_1.xwz, select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, true, true))) & ~vec3<i32>(u_input.d, u_input.b, 0i), func_2(Struct_2(_wgslsmith_add_vec3_i32(arg_1.zzy, arg_1.zxw)), vec2<f32>(158f, _wgslsmith_f_op_f32(-157f - -784f)), arg_2, vec4<i32>(-1i, 35191i, u_input.d, 0i) << (~u_input.e % vec4<u32>(32u)))));
    var_0 = !(!(!(!arg_2))) || false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-484f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) - _wgslsmith_f_op_f32(min(1000f, -222f)))))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_u32(max(abs(u_input.e.zzx << (u_input.e.xwz % vec3<u32>(32u))) | ~reverseBits(vec3<u32>(u_input.a, u_input.e.x, 1u)), u_input.e.zyx), u_input.e.yww);
    let var_1 = false;
    let var_2 = Struct_1(1i, all(vec4<bool>(var_1, true, ~var_0.x <= u_input.a, var_1 | any(vec3<bool>(true, true, var_1)))), !all(select(!vec3<bool>(var_1, var_1, true), select(vec3<bool>(false, var_1, var_1), vec3<bool>(true, true, var_1), vec3<bool>(var_1, var_1, var_1)), !vec3<bool>(var_1, false, var_1))));
    var var_3 = vec3<bool>(var_2.a <= max(u_input.d, 50832i), 1u != abs(var_0.x >> (_wgslsmith_clamp_u32(var_0.x, 4193u, u_input.e.x) % 32u)), !(var_1 || (!var_1 & true)));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-684f)), -1449f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(465f - 670f), _wgslsmith_f_op_f32(f32(-1f) * -2852f))) * -1000f), _wgslsmith_f_op_f32(-879f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -547f)))));
    var_3 = !(!select(vec3<bool>(var_1, false, true), !vec3<bool>(var_3.x, false, var_3.x), func_1(~var_0.xx, select(vec4<i32>(2147483647i, var_2.a, -1i, -2147483647i), vec4<i32>(15600i, 10823i, var_2.a, 13723i), false), !var_2.b)));
    global0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(1u, 100146u), 1u, ~var_0.x), vec3<u32>(u_input.e.x, firstTrailingBit(var_0.x), u_input.e.x)), u_input.e.zxx << (~(~u_input.e.zyy) % vec3<u32>(32u)));
    let var_5 = Struct_2(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.a, -1i, var_2.a), vec3<i32>(u_input.c, 53593i, u_input.c)), var_2.a), var_2.a, ~27425i));
    let var_6 = abs(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

