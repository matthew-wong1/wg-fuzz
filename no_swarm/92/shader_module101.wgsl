struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-9390i, -2147483647i, 2147483647i, 58558i), vec4<i32>(global0.a.a, global0.a.a, arg_0.a, arg_0.a)), ~(vec4<i32>(2147483647i, global0.a.a, 5441i, arg_0.a) & vec4<i32>(arg_0.a, global0.a.a, 1i, -1i))), global0.d, abs(~(~global0.a.d.xy)), _wgslsmith_mult_vec3_u32(global0.a.d, _wgslsmith_add_vec3_u32(~arg_0.d, vec3<u32>(u_input.a.x, u_input.a.x, 1u))), any(arg_2.ywz)), global0.b, ~(1u & _wgslsmith_dot_vec2_u32(~vec2<u32>(39389u, arg_0.d.x), ~vec2<u32>(4294967295u, arg_0.d.x))), arg_0.e);
    let var_1 = arg_2.ywy;
    var var_2 = arg_2;
    global0 = Struct_2(var_0.a, vec3<u32>(global0.c, ~(~global0.b.x), countOneBits(abs(arg_0.c.x) ^ 42670u)), 3655u, true);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-602f + arg_1)) * _wgslsmith_f_op_f32(470f * -2290f)), 3008f, arg_1) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(arg_1 * -1802f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1))), -1115f, arg_1));
    return ~_wgslsmith_clamp_vec3_u32(global0.a.d, ~(select(var_0.a.d, vec3<u32>(4294967295u, u_input.a.x, 0u), false) >> (global0.b % vec3<u32>(32u))), global0.a.d);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    global0 = arg_2;
    let var_0 = arg_2;
    global0 = arg_2;
    global0 = Struct_2(Struct_1(arg_2.a.a, arg_1.x >= arg_1.x, arg_2.b.zz, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.b.x, global0.a.c.x, 1u), ~vec3<u32>(20327u, 4485u, 40594u) ^ var_0.b, vec3<u32>(_wgslsmith_add_u32(21457u, u_input.a.x), ~arg_2.b.x, ~4294967295u)), 47705i > (~var_0.a.a | select(1i, 48786i, false))), func_3(Struct_1(-_wgslsmith_sub_i32(global0.a.a, global0.a.a), all(select(vec4<bool>(false, true, true, arg_0.x), vec4<bool>(arg_0.x, global0.d, false, true), vec4<bool>(true, false, arg_2.a.e, global0.d))), _wgslsmith_mod_vec2_u32(abs(global0.a.d.xz), ~vec2<u32>(92554u, 115952u)), select(vec3<u32>(arg_2.c, var_0.c, 29617u), ~var_0.a.d, !vec3<bool>(arg_2.a.b, arg_2.a.b, false)), var_0.a.b), arg_1.x, select(!vec4<bool>(false, false, true, arg_2.a.e), !select(vec4<bool>(global0.d, false, arg_0.x, true), vec4<bool>(var_0.d, true, global0.d, false), true), vec4<bool>(true, arg_2.d, false, arg_0.x))), ~global0.b.x, false);
    global0 = arg_2;
    return ~abs(var_0.b.x);
}

fn func_4(arg_0: u32) -> Struct_2 {
    var var_0 = 40906u;
    var var_1 = func_3(global0.a, -1160f, vec4<bool>(all(vec2<bool>(!global0.a.b, any(vec2<bool>(true, global0.a.e)))), all(!select(vec2<bool>(false, global0.a.b), vec2<bool>(global0.d, global0.a.b), vec2<bool>(true, true))), global0.d, !global0.a.e)).x;
    var var_2 = firstLeadingBit(1i);
    var var_3 = ~vec4<u32>(abs(45945u), u_input.a.x, u_input.a.x, ~arg_0);
    let var_4 = 0u;
    return Struct_2(global0.a, _wgslsmith_div_vec3_u32(vec3<u32>(global0.c, abs(var_4), _wgslsmith_dot_vec3_u32(global0.b, global0.b)), ~(~vec3<u32>(53906u, global0.b.x, var_3.x)) | var_3.xyx), arg_0, global0.a.a >= global0.a.a);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = -10322i >> (~global0.b.x % 32u);
    let var_1 = Struct_2(arg_0.a, firstLeadingBit(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.a.x, global0.a.c.x, 1476u)), global0.b)), ~_wgslsmith_div_u32(11803u, (global0.c << (global0.b.x % 32u)) >> (~u_input.a.x % 32u)), false);
    global0 = func_4(min(_wgslsmith_sub_u32(max(~u_input.a.x, func_2(vec2<bool>(arg_0.a.e, false), vec4<f32>(-267f, 1000f, -163f, 125f), Struct_2(global0.a, arg_0.b, 46846u, arg_0.a.e))), 4294967295u), reverseBits(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(global0.b.zz, var_1.a.c)))));
    global0 = func_4(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_1.c, 53734u) | vec2<u32>(var_1.b.x, u_input.a.x)), ~firstTrailingBit(vec2<u32>(14667u, 12914u)) ^ _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(arg_0.b.x, 4294967295u)))));
    global0 = Struct_2(func_4(~abs(arg_0.b.x | 1u)).a, arg_0.b, ~_wgslsmith_mult_u32(70938u, 0u << (~global0.a.d.x % 32u)), global0.d);
    return Struct_2(var_1.a, global0.a.d & ~global0.a.d, var_1.c, true);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~u_input.a;
    global0 = arg_0;
    let var_1 = true;
    let var_2 = func_2(!vec2<bool>(true, (4294967295u <= arg_0.b.x) && func_1(arg_0).d), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(207f, 1f, _wgslsmith_f_op_f32(select(-1840f, 274f, false)), _wgslsmith_f_op_f32(-989f - 1493f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-971f, -512f, 427f, 1372f))))))), Struct_2(func_4(4294967295u).a, _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 1u), _wgslsmith_sub_vec3_u32(reverseBits(arg_0.a.d), ~vec3<u32>(global0.b.x, 37821u, arg_0.b.x))), abs(var_0.x), var_1));
    global0 = Struct_2(Struct_1(firstTrailingBit(global0.a.a), !all(!vec2<bool>(true, global0.a.b)), var_0, _wgslsmith_add_vec3_u32((vec3<u32>(var_2, global0.c, global0.a.d.x) & vec3<u32>(4294967295u, 1u, var_0.x)) | (arg_0.b | global0.a.d), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, global0.a.d.x, var_2), global0.b), vec3<u32>(24612u, 32865u, 1u))), true), vec3<u32>(~(~0u), ~global0.a.c.x, countOneBits(~4294967295u)) | ~(~select(vec3<u32>(44314u, arg_0.c, var_0.x), global0.b, vec3<bool>(true, true, global0.a.e))), 86919u, func_4(~4294967295u).d);
    return arg_0.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = ~(~vec4<u32>(~func_1(Struct_2(arg_0, vec3<u32>(global0.b.x, 6019u, 0u), 0u, global0.a.e)).a.d.x, 54125u, 0u, _wgslsmith_mod_u32(global0.b.x | 0u, 3338u)));
    let var_1 = Struct_2(global0.a, vec3<u32>(func_1(func_4(~48235u)).c, select(~firstTrailingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(63777u, 4294967295u, global0.b.x), ~vec3<u32>(u_input.a.x, 0u, 4933u)), false), ~17055u), func_2(select(arg_2, arg_2, arg_2.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, 508f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -425f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1203f, 830f, arg_1.x, arg_1.x)))), true)), Struct_2(Struct_1(_wgslsmith_sub_i32(9845i, -24113i), arg_1.x == arg_1.x, ~vec2<u32>(49605u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(19158u, u_input.a.x, global0.a.d.x), vec3<u32>(arg_0.c.x, 8928u, 48055u)), global0.a.b & true), ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c.x, 7098u, 0u), var_0.www), func_3(func_1(Struct_2(arg_0, var_0.wxx, 0u, arg_0.e)).a, _wgslsmith_f_op_f32(-470f - arg_1.x), vec4<bool>(arg_0.b, true, arg_2.x, arg_2.x)).x, 44132i != arg_3.x)), all(select(!(!vec4<bool>(global0.a.b, global0.d, arg_2.x, arg_2.x)), vec4<bool>(arg_1.x < arg_1.x, !arg_2.x, false, arg_2.x), vec4<bool>(true, func_1(Struct_2(arg_0, vec3<u32>(var_0.x, 32676u, global0.c), 92551u, arg_2.x)).d, true, all(arg_2)))));
    let var_2 = ~min(0u, 0u);
    var var_3 = var_1;
    let var_4 = select(vec4<u32>(~(~global0.c), var_3.c, countOneBits(var_2) & select(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, 64861u, arg_0.c.x, global0.b.x), vec4<u32>(1u, 1u, var_3.b.x, var_0.x)), func_5(Struct_2(arg_0, vec3<u32>(var_1.c, u_input.a.x, 0u), var_0.x, true)).d.x, select(var_1.d, true, global0.d)), ~(~37254u)), ~(~vec4<u32>(69893u, u_input.a.x, 36825u, u_input.a.x)) & ~select(~vec4<u32>(var_1.b.x, var_0.x, var_2, 0u), vec4<u32>(59532u, 0u, arg_0.c.x, var_0.x), false), vec4<bool>(true, var_3.a.e, !select(true, true, !var_1.a.e), true));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, !any(select(select(vec3<bool>(true, global0.a.b, global0.d), vec3<bool>(global0.a.e, true, true), false), vec3<bool>(global0.a.b, global0.a.e, global0.a.b), u_input.a.x >= 7655u)), (countOneBits(global0.a.a >> (global0.c % 32u)) & global0.a.a) == global0.a.a);
    let var_1 = true;
    global0 = func_6(func_5(func_1(Struct_2(Struct_1(0i, var_1, vec2<u32>(1u, 4294967295u), vec3<u32>(0u, u_input.a.x, 4294967295u), true), global0.a.d, 36119u, any(vec2<bool>(var_0.x, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 1350f, -605f)))))), select(var_0.zy, select(vec2<bool>(var_1, true), !select(var_0.xx, vec2<bool>(var_0.x, true), var_0.x), vec2<bool>(false, var_0.x == false)), var_0.yx), countOneBits(min(vec3<i32>(-5431i, -45686i, -15303i), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.a, global0.a.a, global0.a.a), vec3<i32>(global0.a.a, 0i, 0i))) >> (~select(global0.b, global0.b, var_0.x) % vec3<u32>(32u))));
    global0 = func_6(func_6(func_6(func_5(Struct_2(Struct_1(1i, true, vec2<u32>(u_input.a.x, u_input.a.x), global0.b, false), global0.b, u_input.a.x, global0.d)), vec3<f32>(648f, -1139f, _wgslsmith_f_op_f32(trunc(-980f))), !(!var_0.yz), vec3<i32>(min(global0.a.a, global0.a.a), -global0.a.a, 0i)).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1360f, -1000f, -1623f)))), select(select(!var_0.xx, !vec2<bool>(true, global0.d), select(var_0.yy, var_0.zz, vec2<bool>(true, false))), select(select(vec2<bool>(false, true), var_0.yy, vec2<bool>(var_0.x, true)), !var_0.zx, all(vec2<bool>(false, true))), var_0.zz), vec3<i32>(func_5(Struct_2(global0.a, global0.b, global0.a.c.x, false)).a, ~(~653i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.a, global0.a.a, global0.a.a), vec3<i32>(20301i, -12818i, global0.a.a)))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1184f, 852f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1750f, 693f, 197f) + vec3<f32>(993f, 1088f, 1037f)), false))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1648f)), 316f, -931f)), var_0.xz, _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(select(countOneBits(vec3<i32>(-24929i, -1i, 9081i)), vec3<i32>(global0.a.a, global0.a.a, global0.a.a) & vec3<i32>(global0.a.a, global0.a.a, -49105i), 0u <= u_input.a.x), vec3<i32>(-33455i, -23790i, ~9979i)), ~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(9429i, 1i, 22291i), vec3<i32>(-626i, 0i, 1i), vec3<i32>(1i, global0.a.a, global0.a.a)), ~vec3<i32>(1i, 31878i, -1i))));
    let var_2 = func_4(global0.a.d.x).a;
    var var_3 = false;
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(440f, _wgslsmith_f_op_f32(ceil(1000f)))));
    global0 = func_6(var_2, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-136f, 185f))))), vec2<bool>(false, var_0.x), countOneBits(~vec3<i32>(global0.a.a, i32(-1i) * -48501i, global0.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~global0.a.d.zy), vec2<i32>(_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(var_2.a, global0.a.a), -30170i, abs(~6385i)), func_6(Struct_1(global0.a.a, global0.d, vec2<u32>(global0.b.x, global0.c), var_2.d, var_1), vec3<f32>(var_4.x, var_4.x, 678f), var_0.xx, _wgslsmith_add_vec3_i32(vec3<i32>(4117i, var_2.a, 21792i), vec3<i32>(global0.a.a, 1i, global0.a.a))).a.a | _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, var_2.a, -4110i), vec4<i32>(var_2.a, -48228i, var_2.a, -1i)), abs(vec4<i32>(global0.a.a, global0.a.a, var_2.a, var_2.a)))), 1u, ~global0.a.a);
}

