struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = arg_1;
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, -1233f, true)) + 1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0)))))), 754f);
    var_1 = arg_1;
    let var_3 = vec4<bool>(false, firstLeadingBit(_wgslsmith_clamp_u32(~u_input.a, 57642u << (1u % 32u), u_input.d)) >= (~_wgslsmith_div_u32(u_input.a, u_input.d) | 1u), _wgslsmith_mult_u32(1u, u_input.d << ((u_input.a >> (4294967295u % 32u)) % 32u)) < ~(~(u_input.a >> (4403u % 32u))), true);
    return !var_3.x;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = select(~abs(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.a), vec3<u32>(u_input.d, u_input.a, 31556u))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.b.x, 0u), ~u_input.d, _wgslsmith_div_u32(u_input.a, u_input.b.x)) & vec3<u32>(0u, firstLeadingBit(1u), _wgslsmith_sub_u32(u_input.a, u_input.d)), countOneBits(vec3<u32>(u_input.b.x, 2167u, u_input.a)) & (reverseBits(vec3<u32>(u_input.a, 110310u, 5281u)) | vec3<u32>(u_input.d, u_input.a, 0u))), select(vec3<bool>(true, false, any(vec2<bool>(arg_0.x, arg_0.x))), arg_1.yww, arg_1.zzy));
    var var_1 = -(18572i << (var_0.x % 32u));
    let var_2 = u_input.c.x;
    var_1 = -835i;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1349f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1170f)), _wgslsmith_f_op_f32(round(213f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(956f, 507f), vec2<f32>(517f, -912f))))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f)))));
    return Struct_1(u_input.c.zy);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = func_3(!(!vec4<bool>(func_2(-845f, Struct_1(arg_2.zy)), true, false, true)), vec4<bool>(((u_input.d >> (arg_1 % 32u)) == countOneBits(1u)) & all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true)), true, true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))));
    var_0 = func_3(select(!vec4<bool>(true, true, func_2(-522f, Struct_1(vec2<i32>(-2147483647i, 285i))), true), select(vec4<bool>(true, true, arg_0 != 2147483647i, true), vec4<bool>(true, true, true, true), true), true), select(vec4<bool>(false, _wgslsmith_dot_vec3_i32(vec3<i32>(49429i, arg_0, arg_2.x), vec3<i32>(-12928i, 2147483647i, var_0.a.x)) <= -arg_2.x, true, false), vec4<bool>(true, func_2(-392f, Struct_1(u_input.c.yy)) | all(vec2<bool>(true, false)), false, any(vec3<bool>(true, false, true)) | any(vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), true), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))))));
    var_0 = func_3(!select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(select(false, false, true), all(vec2<bool>(false, true)), all(vec3<bool>(true, true, true)), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false)), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true)))));
    var_0 = Struct_1(vec2<i32>(max(u_input.e, -_wgslsmith_mod_i32(u_input.e, -15891i)), ~select(~arg_2.x, _wgslsmith_dot_vec3_i32(u_input.c, arg_2), true)));
    return Struct_1(~vec2<i32>(-1i, i32(-1i) * -30088i));
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = false;
    let var_1 = arg_2;
    let var_2 = -450f;
    let var_3 = func_3(select(vec4<bool>(!(arg_2.a.x <= u_input.e), any(vec3<bool>(var_0, arg_0.x, false)) == (false || var_0), var_0, select(arg_2.a.x >= 2147483647i, true, all(vec4<bool>(true, true, arg_0.x, true)))), select(vec4<bool>(false, true, var_0, select(var_0, false, arg_0.x)), !select(vec4<bool>(false, var_0, var_0, true), vec4<bool>(arg_0.x, true, false, true), vec4<bool>(false, true, false, arg_0.x)), var_0), vec4<bool>(0u == countOneBits(u_input.b.x), all(select(vec3<bool>(var_0, var_0, false), vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, true, var_0))), u_input.b.x >= firstLeadingBit(u_input.b.x), all(!arg_0))), vec4<bool>(!var_0, (-1893f <= var_2) & var_0, firstTrailingBit(max(arg_2.a.x, var_1.a.x)) <= _wgslsmith_mult_i32(~u_input.c.x, i32(-1i) * -2147483647i), true)).a.x;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: bool) -> vec3<u32> {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f * -233f), _wgslsmith_f_op_f32(f32(-1f) * -1344f), -735f))));
    var var_2 = _wgslsmith_dot_vec4_i32(-(~vec4<i32>(arg_2.a.x, -43683i, -28504i, arg_0.a.x)) >> (arg_1 % vec4<u32>(32u)), ~(-(vec4<i32>(u_input.c.x, 1i, arg_0.a.x, var_0.a.x) | vec4<i32>(-14547i, arg_0.a.x, u_input.e, 29572i)))) | arg_0.a.x;
    let var_3 = true;
    let var_4 = !var_3;
    return ~abs((reverseBits(vec3<u32>(41166u, arg_1.x, u_input.b.x)) & ~vec3<u32>(arg_1.x, 1u, arg_1.x)) ^ _wgslsmith_mod_vec3_u32(abs(arg_1.zyx), arg_1.xww));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = u_input.d;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1759f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(2215f, -996f, false))))))), _wgslsmith_f_op_f32(f32(-1f) * -336f));
    var var_3 = select(func_5(func_4(vec2<bool>(-31188i == u_input.c.x, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, 726f)), func_1(u_input.e >> (u_input.d % 32u), var_0, u_input.c)), ~(~(vec4<u32>(var_0, var_0, u_input.a, 0u) ^ vec4<u32>(1u, 59779u, var_0, u_input.a))), Struct_1(vec2<i32>(u_input.c.x, u_input.e ^ u_input.e)), false), select(abs(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0, 27692u), vec3<u32>(4294967295u, var_0, 37808u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, var_0, u_input.a), vec3<u32>(36988u, var_0, u_input.b.x)))), vec3<u32>(~0u, u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(8308u, u_input.a, 4294967295u), vec3<u32>(16497u, 2424u, 1u)) | var_0), false), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(-1192f, Struct_1(vec2<i32>(u_input.c.x, 53721i))))) | true);
    var_1 = _wgslsmith_sub_u32(var_3.x, abs(var_3.x));
    let var_4 = ~_wgslsmith_add_vec3_u32(vec3<u32>(func_5(func_1(u_input.e, 1u, vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), vec4<u32>(var_0, var_3.x, 0u, var_0), func_4(vec2<bool>(true, true), 1000f, Struct_1(vec2<i32>(u_input.e, u_input.c.x))), all(vec3<bool>(false, true, true))).x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.x, u_input.b.x, var_0), vec3<u32>(11889u, u_input.a, 24820u) | vec3<u32>(62597u, 0u, 20006u)), var_0), abs((vec3<u32>(u_input.d, u_input.b.x, 2101u) << (vec3<u32>(0u, u_input.d, 1u) % vec3<u32>(32u))) >> ((vec3<u32>(var_3.x, 32552u, u_input.a) & vec3<u32>(54922u, 4976u, 4294967295u)) % vec3<u32>(32u))));
    var var_5 = func_4(vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-745f + var_2) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * var_2)), func_1(reverseBits(select(~14964i, -5458i, any(vec3<bool>(true, true, false)))), max(39874u, _wgslsmith_add_u32(var_3.x, func_5(Struct_1(u_input.c.zy), vec4<u32>(u_input.a, 1u, var_4.x, u_input.a), Struct_1(u_input.c.zx), false).x)), abs(firstLeadingBit(u_input.c))));
    var var_6 = func_4(select(vec2<bool>(_wgslsmith_dot_vec3_u32(var_4, vec3<u32>(4294967295u, var_3.x, var_3.x)) <= _wgslsmith_dot_vec3_u32(var_4, var_4), all(vec2<bool>(false, false))), vec2<bool>(true, true), 44508i > ((-29571i & u_input.c.x) | -u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(-var_2)))))), func_4(!vec2<bool>(true, any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(exp2(var_2)), Struct_1(_wgslsmith_mult_vec2_i32(var_5.a, _wgslsmith_mod_vec2_i32(u_input.c.yy, var_5.a)))));
    let var_7 = (vec3<i32>(-1i) * -u_input.c) ^ u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, -324f) * 804f), ~(~(~65300u) << (((var_4.x | var_0) >> (~4294967295u % 32u)) % 32u)));
}

