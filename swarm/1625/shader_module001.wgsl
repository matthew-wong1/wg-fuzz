struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-228f, 127f))) <= _wgslsmith_f_op_f32(arg_1.x + -622f), _wgslsmith_add_u32(_wgslsmith_div_u32(~(63355u ^ global0.x), reverseBits(_wgslsmith_mod_u32(global0.x, 4294967295u))), ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, global0.x, global0.x, 49224u)), _wgslsmith_add_vec4_u32(vec4<u32>(21571u, 34413u, global0.x, 37000u), vec4<u32>(24844u, global0.x, 101286u, 7480u)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(max(-1504f, arg_1.x)))), -930f));
    let var_1 = Struct_1(var_0.a, ~1u & var_0.b, vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.c.x)))))));
    var var_2 = ~vec2<u32>(_wgslsmith_sub_u32(1345u, ~abs(var_1.b)), _wgslsmith_mult_u32(~1u, ~firstLeadingBit(global0.x)));
    var var_3 = var_1;
    let var_4 = Struct_1(all(select(!(!vec4<bool>(false, var_1.a, false, false)), select(select(vec4<bool>(var_3.a, false, true, var_3.a), vec4<bool>(true, var_3.a, true, var_1.a), true), vec4<bool>(var_1.a, arg_0.x, arg_0.x, false), all(vec4<bool>(false, var_1.a, true, false))), vec4<bool>(!var_3.a, true, var_3.a, true))), var_2.x, arg_1.zz);
    return min(~(~countOneBits(vec3<u32>(var_3.b, 21126u, 9755u))), _wgslsmith_div_vec3_u32(select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b, var_1.b, global0.x), vec3<u32>(var_4.b, 0u, 92646u)), ~vec3<u32>(11667u, var_1.b, 1u), true), countOneBits(abs(vec3<u32>(global0.x, var_2.x, 10884u))))) | _wgslsmith_mult_vec3_u32(select(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(0u, 0u, var_4.b)), vec3<u32>(14408u, var_3.b, var_4.b), vec3<u32>(global0.x, 1u, var_0.b) & vec3<u32>(var_3.b, var_4.b, var_2.x)), ~vec3<u32>(0u, global0.x, var_0.b), select(var_4.a, true, var_0.a)), vec3<u32>(_wgslsmith_mult_u32(1u, ~0u), 0u, 1u));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = ~max(global0.x, arg_0);
    global0 = _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(19691u, 0u, 27515u) << (vec3<u32>(global0.x, arg_0, 20371u) % vec3<u32>(32u))), (func_3(vec2<bool>(false, arg_1.a), arg_3) & abs(vec3<u32>(global0.x, 4294967295u, arg_1.b))) ^ vec3<u32>(4294967295u, 4294967295u, ~arg_0)) & (vec3<u32>(abs(_wgslsmith_sub_u32(4294967295u, var_0)), arg_0, _wgslsmith_sub_u32(global0.x, 98275u)) & vec3<u32>(arg_0, ~_wgslsmith_div_u32(arg_1.b, 0u), var_0));
    let var_1 = vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(arg_2, arg_2), u_input.b.x, ~2147483647i), vec3<i32>(1i, 1i, 1i))), _wgslsmith_dot_vec4_i32(vec4<i32>(2735i, min(arg_2.x, -arg_2.x), ~u_input.b.x, _wgslsmith_add_i32(1i, arg_2.x)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.a.x, arg_2.x, 2147483647i, 19188i)) | vec4<i32>(-1i, -58175i, arg_2.x, arg_2.x), vec4<i32>(1i, 1i, 1i, 1i) & arg_2)));
    let var_2 = Struct_1(false, arg_1.b, arg_1.c);
    let var_3 = Struct_1(0u == ~_wgslsmith_dot_vec4_u32(vec4<u32>(45955u, var_2.b, 13176u, arg_0), ~vec4<u32>(arg_1.b, 0u, 73959u, global0.x)), 4497u >> (max(var_0, var_2.b) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.c.x, _wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x))), _wgslsmith_f_op_f32(round(arg_3.x)))));
    return _wgslsmith_dot_vec2_u32(global0.xz, ~vec2<u32>(_wgslsmith_add_u32(~arg_0, func_3(vec2<bool>(arg_1.a, var_3.a), arg_3).x), _wgslsmith_add_u32(var_0, 4294967295u) | _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, 32938u, 1u), vec3<u32>(var_3.b, 137720u, 0u))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(true, 37972u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1041f, 1039f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1439f, -1152f) * vec2<f32>(731f, -125f))))));
    global0 = vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_mod_u32(27709u, var_0.b) | func_2(_wgslsmith_add_u32(11444u, 1u), var_0, vec4<i32>(u_input.a.x, 24019i, u_input.b.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 1709f, 703f))), ~var_0.b), ~global0.x, firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_clamp_u32(58895u, global0.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, var_0.b, 1u), vec3<u32>(32500u, 30186u, 8101u))) >> (abs(~var_0.b) % 32u)));
    global0 = ~vec3<u32>(0u, countOneBits(var_0.b), ~var_0.b);
    global0 = vec3<u32>(43502u, global0.x ^ var_0.b, 1u);
    var var_1 = -u_input.a;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = all(select(vec4<bool>(!(!var_0.a), var_0.c.x == 1365f, var_0.a, false), select(select(!vec4<bool>(false, true, var_0.a, false), !vec4<bool>(false, false, false, var_0.a), !var_0.a), !(!vec4<bool>(var_0.a, var_0.a, true, var_0.a)), vec4<bool>(!var_0.a, var_0.a, var_0.a, true)), var_0.a != all(vec3<bool>(false, false, var_0.a))));
    let var_2 = max(vec4<i32>(max(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.zy, u_input.a.yx), vec2<i32>(1i, 1i) << (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))), -26729i), u_input.b.x, ~u_input.a.x, u_input.b.x), min(firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -8128i) & vec4<i32>(u_input.a.x, -17012i, u_input.a.x, u_input.b.x)), firstLeadingBit(vec4<i32>(2147483647i, -13146i, -1i, -3051i))) << (~select(~vec4<u32>(var_0.b, 8530u, 0u, global0.x), ~vec4<u32>(global0.x, global0.x, global0.x, 11206u), !vec4<bool>(true, true, var_0.a, false)) % vec4<u32>(32u)));
    let var_3 = u_input.a.x;
    var var_4 = func_1().a;
    let var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1f, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(566f * var_0.c.x) * 1363f), var_0.c.x))), _wgslsmith_div_f32(var_0.c.x, 531f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1343f + 350f)), _wgslsmith_f_op_f32(-var_0.c.x)));
}

