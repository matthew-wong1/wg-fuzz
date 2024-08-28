struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
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

var<private> global0: vec4<u32> = vec4<u32>(0u, 0u, 4294967295u, 4294967295u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    global0 = ~(~(min(vec4<u32>(arg_1.c, arg_1.c, arg_1.c, global0.x) ^ vec4<u32>(1u, arg_1.c, global0.x, 1u), select(vec4<u32>(4294967295u, 80704u, arg_1.c, arg_1.c), vec4<u32>(arg_1.c, arg_1.c, 61555u, arg_1.c), false)) ^ abs(vec4<u32>(global0.x, 6152u, 4294967295u, 0u) >> (vec4<u32>(global0.x, 54651u, arg_1.c, global0.x) % vec4<u32>(32u)))));
    let var_0 = arg_1.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(arg_1.e))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global0 = reverseBits(~vec4<u32>(_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(arg_1.c, global0.x)), 63181u, ~arg_1.c, 1u));
    return _wgslsmith_div_u32(~(~(_wgslsmith_add_u32(1u, 32872u) & global0.x)), 25520u);
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(165f, firstLeadingBit(_wgslsmith_add_vec3_i32(~firstLeadingBit(u_input.b), _wgslsmith_add_vec3_i32(u_input.a.xxz, u_input.b) << (~global0.zyw % vec3<u32>(32u)))), ~(0u >> (_wgslsmith_clamp_u32(func_3(vec2<f32>(766f, 893f), Struct_1(1068f, vec3<i32>(-1i, u_input.c, 43663i), global0.x, vec4<i32>(-3794i, 1i, 6301i, u_input.a.x), vec3<f32>(478f, 1250f, 243f))), 69757u, global0.x) % 32u)), u_input.a >> (firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 62746u, global0.x, global0.x), vec4<u32>(4294967295u, 55709u, 4294967295u, 0u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1631f, 776f), 542f)), 199f))));
    global0 = ~vec4<u32>(var_0.c, select(~var_0.c, global0.x, true), global0.x, ~(~var_0.c));
    global0 = ~vec4<u32>(global0.x, ~4294967295u, 1u, ~var_0.c);
    return select(select(vec4<bool>(true, any(vec3<bool>(false, true, false)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), true)), var_0.a >= _wgslsmith_f_op_f32(-var_0.e.x)), !vec4<bool>(true, true, global0.x < 10106u, any(vec2<bool>(true, false))), !all(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), select(any(vec2<bool>(true, true)), any(vec4<bool>(true, false, false, true)), var_0.a == var_0.e.x)), select(vec4<bool>(var_0.a >= -216f, true, all(vec3<bool>(true, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), all(vec2<bool>(false, var_0.c < 0u))), select(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), true)), !vec4<bool>(false, true, all(vec3<bool>(false, false, false)), true), !all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false))));
}

fn func_1() -> f32 {
    global0 = ~((reverseBits(vec4<u32>(global0.x, global0.x, global0.x, 1332u)) >> (~vec4<u32>(76557u, 40463u, global0.x, 14258u) % vec4<u32>(32u))) & vec4<u32>(33875u, 1u, _wgslsmith_div_u32(49101u, global0.x), global0.x << (global0.x % 32u))) ^ _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(1u, global0.x, 0u, 0u)), vec4<u32>(0u, ~global0.x, global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 1u)))), _wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, 13257u, 67092u, global0.x), firstTrailingBit(vec4<u32>(global0.x, global0.x, global0.x, global0.x)), func_2()), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 3454u, global0.x, global0.x), vec4<u32>(global0.x, 28004u, 15869u, global0.x))));
    global0 = vec4<u32>(_wgslsmith_clamp_u32(global0.x ^ 4294967295u, _wgslsmith_div_u32(firstTrailingBit(~global0.x), ~global0.x), ~(~global0.x)), 0u, 4294967295u, _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(4294967295u, 16132u, global0.x)), ~vec3<u32>(global0.x, global0.x, 50550u)) << (firstLeadingBit(_wgslsmith_clamp_u32(1u, min(78536u, 0u), global0.x)) % 32u));
    let var_0 = u_input.b.yx;
    global0 = firstLeadingBit(_wgslsmith_mult_vec4_u32(select(vec4<u32>(global0.x, global0.x, 86204u, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 1u), true) ^ vec4<u32>(24356u, 41501u, 59725u, 4583u), countOneBits(vec4<u32>(global0.x, 1u, 6208u, global0.x)) << (~vec4<u32>(global0.x, 46161u, 0u, 34394u) % vec4<u32>(32u))) ^ vec4<u32>(~_wgslsmith_dot_vec2_u32(global0.ww, global0.xw), 1u << (_wgslsmith_dot_vec3_u32(global0.wwy, vec3<u32>(global0.x, 1u, global0.x)) % 32u), 4294967295u, 4294967295u));
    global0 = vec4<u32>(~(~_wgslsmith_clamp_u32(global0.x, global0.x, 42486u)), _wgslsmith_mult_u32(global0.x, 15409u), global0.x, abs(20275u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(max(~global0.x, ~global0.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(38336u, global0.x, global0.x, 4294967295u), ~vec4<u32>(10115u, global0.x, global0.x, global0.x)), ~_wgslsmith_sub_u32(global0.x, global0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global0.x, 1u) >> (vec4<u32>(global0.x, 57201u, 4294967295u, 10022u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(73399u, 2619u, 4294967295u, 58406u), vec4<u32>(global0.x, global0.x, global0.x, global0.x)))), vec4<u32>(1u, 52816u, global0.x, ~global0.x << (50175u % 32u)), ~(~vec4<u32>(1u, global0.x, 35095u, global0.x))) % vec4<u32>(32u));
    return -1557f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(278f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1508f, _wgslsmith_f_op_f32(sign(1301f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(f32(-1f) * -248f));
    var var_1 = global0.yy;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1995f - -417f), vec3<i32>(-_wgslsmith_mult_i32(17907i, u_input.b.x), _wgslsmith_mod_i32(u_input.b.x, 30045i), countOneBits(u_input.a.x)) & _wgslsmith_sub_vec3_i32(-u_input.b, u_input.b), (74455u << (var_1.x % 32u)) >> (0u % 32u), ~select(-vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, 13452i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b.x), vec4<i32>(-41661i, u_input.c, -1i, u_input.b.x)), vec4<bool>(true, true, true, true)) & -_wgslsmith_mult_vec4_i32(u_input.a ^ u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.wxz, vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(971f, -380f, var_0.x), vec3<f32>(var_0.x, -510f, var_0.x), vec3<bool>(false, true, true))), vec3<f32>(var_0.x, var_0.x, -796f), func_2().xwz))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-977f, _wgslsmith_f_op_f32(max(var_0.x, 2380f)), _wgslsmith_f_op_f32(-888f * -905f)) * var_0.wwy)));
    let var_3 = vec4<bool>(!(firstTrailingBit(firstLeadingBit(var_1.x)) > min(0u, var_2.c)), true, false, _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(global0.x), firstTrailingBit(var_2.c), var_1.x & var_1.x), global0.www) <= min(abs(3858u), 0u));
    var var_4 = ~(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(18942u, var_1.x, var_2.c, global0.x) >> (vec4<u32>(var_2.c, var_2.c, 4294967295u, global0.x) % vec4<u32>(32u)), select(vec4<u32>(var_2.c, 27327u, 3892u, global0.x), vec4<u32>(33885u, 8256u, var_2.c, global0.x), vec4<bool>(var_3.x, true, true, false))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.x, var_2.c, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_2.c, 75971u, global0.x), vec4<u32>(var_2.c, var_2.c, 29273u, var_1.x)))) | _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_1.x, 4294967295u, 21922u), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, var_1.x, var_2.c), reverseBits(0u), global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, global0.x), global0.ww)), firstTrailingBit(vec4<u32>(var_2.c, 6134u, 1u, 91297u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

