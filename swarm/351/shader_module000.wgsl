struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(~(-1i), max(arg_0.x, u_input.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(827i, -66829i, -2147483647i), vec3<i32>(12326i, 0i, arg_3))), arg_3), vec2<i32>(_wgslsmith_div_i32(arg_0.x, _wgslsmith_mult_i32(-33149i, 10605i)), -24413i)));
    return select(vec2<bool>(any(vec2<bool>(false || arg_1, !arg_1)), all(vec3<bool>(any(vec4<bool>(arg_1, arg_1, false, arg_1)), !arg_1, all(vec2<bool>(false, true))))), !(!vec2<bool>(true, arg_1 | false)), vec2<bool>(!(all(vec2<bool>(arg_1, false)) == (1i <= arg_0.x)), arg_1));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> f32 {
    var var_0 = Struct_1(!select(func_3(abs(vec3<i32>(1i, u_input.c.x, 15609i)), true, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a.x, 1i, arg_0.x), u_input.a), arg_1), vec2<bool>(any(vec4<bool>(false, true, true, false)), true), true));
    var_0 = Struct_1(vec2<bool>(false, any(select(select(vec3<bool>(true, false, var_0.a.x), vec3<bool>(var_0.a.x, true, var_0.a.x), var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(false, true, false)))));
    var var_1 = !select(vec3<bool>(false, var_0.a.x, true), select(select(select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), false), vec3<bool>(false, true, var_0.a.x), true), vec3<bool>(false, all(vec4<bool>(var_0.a.x, false, var_0.a.x, false)), var_0.a.x), var_0.a.x), var_0.a.x);
    var var_2 = abs(-51595i);
    let var_3 = !select(select(select(select(vec4<bool>(false, var_1.x, var_0.a.x, var_1.x), vec4<bool>(var_0.a.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, var_0.a.x)), select(vec4<bool>(var_0.a.x, false, true, var_1.x), vec4<bool>(false, var_0.a.x, true, var_1.x), false), var_1.x), !select(vec4<bool>(var_0.a.x, false, true, false), vec4<bool>(false, true, var_1.x, true), vec4<bool>(true, true, false, true)), select(!vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, var_1.x, false), !vec4<bool>(true, false, true, var_1.x))), !select(!vec4<bool>(var_0.a.x, false, var_1.x, var_0.a.x), !vec4<bool>(var_0.a.x, true, true, var_1.x), true), vec4<bool>(!var_1.x, false, var_0.a.x, any(var_0.a) & var_0.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(max(-103f, _wgslsmith_f_op_f32(abs(-790f))))))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> Struct_3 {
    var var_0 = !select(vec2<bool>(true, (arg_0 >= arg_0) & arg_2.x), arg_2.yx, !(!(!arg_2.x)));
    var_0 = arg_2.xy;
    var var_1 = func_3(~vec3<i32>(u_input.c.x, u_input.c.x, firstTrailingBit(-u_input.c.x)), any(select(!select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, arg_2.x)), vec4<bool>(arg_0 < 239f, !var_0.x, true, all(arg_2.xx)), var_0.x)), vec4<i32>(u_input.a.x, -u_input.b.x, max(_wgslsmith_clamp_i32(~(-42088i), _wgslsmith_mod_i32(u_input.c.x, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -7505i, u_input.c.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.c.x, -93652i, 1i))), u_input.a.x), u_input.a.x), ~(i32(-1i) * -2147483647i));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(~(u_input.b.x & u_input.b.x), _wgslsmith_dot_vec2_i32(~u_input.b, vec2<i32>(-2147483647i, u_input.a.x))) << (u_input.e % 32u), u_input.a.x, u_input.a.x);
    var var_3 = reverseBits(select(~17910u, countOneBits(_wgslsmith_sub_u32(~arg_1, arg_1)), var_0.x));
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(385f * -920f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(f32(-1f) * -220f)), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(exp2(arg_0)))))), Struct_1(arg_2.yz), u_input.a);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_1(vec2<bool>(arg_2.a.x, true));
    let var_1 = reverseBits(_wgslsmith_div_vec4_i32(max(~vec4<i32>(arg_0.c.x, u_input.a.x, arg_0.c.x, u_input.b.x), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(arg_0.c.x, 0i, -25655i, -2147483647i))) ^ abs(vec4<i32>(1i, arg_0.c.x, u_input.c.x, u_input.a.x)), arg_0.c));
    let var_2 = _wgslsmith_clamp_u32(u_input.d, _wgslsmith_clamp_u32(26908u, select(_wgslsmith_sub_u32(arg_1.x, 4294967295u), _wgslsmith_mod_u32(arg_1.x, arg_1.x), true), u_input.e), ~u_input.d) & 7875u;
    let var_3 = select(vec3<bool>(true, false, any(vec2<bool>(arg_0.b.a.x && var_0.a.x, any(vec4<bool>(arg_0.b.a.x, false, arg_0.b.a.x, false))))), vec3<bool>(false, arg_0.b.a.x, !arg_0.b.a.x), vec3<bool>(false, true, true));
    var var_4 = ~2147483647i > u_input.c.x;
    return vec3<u32>(arg_1.x, 0u >> (1u % 32u), countOneBits(_wgslsmith_mult_u32(u_input.d | var_2, _wgslsmith_add_u32(arg_1.x, u_input.e)))) ^ select(arg_1.yxz, ~vec3<u32>(var_2 >> (0u % 32u), ~84966u, abs(arg_1.x)), select(vec3<bool>(false, false, select(var_0.a.x, var_0.a.x, arg_2.a.x)), !(!vec3<bool>(arg_2.a.x, arg_2.a.x, false)), any(select(vec4<bool>(false, false, var_0.a.x, arg_2.a.x), vec4<bool>(arg_0.b.a.x, arg_0.b.a.x, var_0.a.x, false), true))));
}

fn func_1() -> vec2<bool> {
    var var_0 = func_5(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(342f + 219f), _wgslsmith_f_op_f32(func_2(u_input.c.yz, 19156i))), u_input.d, vec3<bool>(true, true, true)), vec4<u32>(46949u, u_input.e, 47072u, u_input.d), func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(833f + 439f), -733f)), max(u_input.e, countOneBits(4294967295u)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))).b) & vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(1u), (4294967295u ^ u_input.d) >> (~1u % 32u), u_input.e), ~u_input.d, u_input.d);
    let var_1 = func_4(-239f, ~var_0.x, !vec3<bool>(false, !func_4(-1000f, u_input.e, vec3<bool>(true, false, false)).b.a.x, false)).b;
    let var_2 = ~_wgslsmith_add_vec2_u32(reverseBits(~vec2<u32>(u_input.d, var_0.x)), min(var_0.xy, func_5(func_4(-281f, var_0.x, vec3<bool>(false, var_1.a.x, var_1.a.x)), vec4<u32>(1u, var_0.x, var_0.x, u_input.e), var_1).zy));
    var_0 = select(_wgslsmith_div_vec3_u32(select(select(vec3<u32>(var_0.x, var_2.x, 4294967295u), vec3<u32>(47829u, u_input.d, 1u), vec3<bool>(var_1.a.x, false, var_1.a.x)), ~vec3<u32>(u_input.e, u_input.e, 4294967295u), true), vec3<u32>(abs(u_input.e), ~u_input.e, 13462u)) ^ ~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.e, u_input.e, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_2.x, 1u), vec3<u32>(var_0.x, u_input.e, 5146u))), ~func_5(Struct_3(vec2<f32>(-1258f, 314f), var_1, vec4<i32>(2147483647i, u_input.a.x, -2265i, -1i)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, var_2.x, var_0.x), vec4<u32>(14234u, 38180u, 16574u, var_0.x)), var_1) & vec3<u32>(~var_0.x, ~(~12711u), var_2.x), !(!vec3<bool>(!var_1.a.x, true, true)));
    var_0 = select(~firstLeadingBit(firstLeadingBit(vec3<u32>(81549u, var_2.x, 0u)) | vec3<u32>(0u, var_0.x, 4294967295u)), vec3<u32>(144u, ~18092u, _wgslsmith_clamp_u32(u_input.e, var_0.x, 29926u)), any(!select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, true, var_1.a.x), var_1.a.x)) & any(select(func_3(u_input.a.xxz, true, u_input.a, 0i), var_1.a, !vec2<bool>(var_1.a.x, var_1.a.x))));
    return !vec2<bool>(true, var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(-_wgslsmith_div_i32(0i, 1i), -u_input.a.x), countOneBits(-1i)), 1i, u_input.c.x);
    var var_1 = 762f;
    let var_2 = Struct_4(Struct_2(Struct_1(vec2<bool>(true, false))), !select(func_1(), vec2<bool>(true, true), select(vec2<bool>(false, true), func_4(-539f, 42858u, vec3<bool>(true, true, false)).b.a, true)), max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_0.x, 1284i, -20487i, var_0.x))), var_0.yx), u_input.b), 1263f);
    var var_3 = var_2.a;
    var var_4 = Struct_1(vec2<bool>(var_2.a.a.a.x, any(!(!var_2.a.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(2588i, func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(692f, -214f)))), ~reverseBits(u_input.e), select(vec3<bool>(true, true, true), !vec3<bool>(var_4.a.x, var_3.a.a.x, var_3.a.a.x), var_3.a.a.x)).c.x), vec2<u32>(u_input.e ^ 0u, _wgslsmith_mult_u32(abs(u_input.e), u_input.d)) | reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(u_input.d, 4294967295u)) >> (vec2<u32>(u_input.d, 4294967295u) % vec2<u32>(32u))), -(~(~firstLeadingBit(vec4<i32>(u_input.a.x, var_2.c.x, var_2.c.x, var_0.x)))));
}

