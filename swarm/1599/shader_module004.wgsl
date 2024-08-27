struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    global0 = Struct_1(global0.a, abs(global0.b), max(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), -u_input.b), -u_input.b.x));
    var var_0 = Struct_2(_wgslsmith_div_u32(arg_0, global0.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global0.a, global0.a)) + _wgslsmith_f_op_vec2_f32(max(global0.a, vec2<f32>(global0.a.x, 179f)))))));
    var var_2 = abs(~vec3<i32>(global0.c, _wgslsmith_clamp_i32(0i >> (global0.b % 32u), ~(-4348i), 41067i << (var_0.a % 32u)), abs(global0.c)));
    var var_3 = var_1.x;
    return var_1.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_2) -> bool {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c.x, arg_1.x), arg_1.zx, vec2<bool>(arg_0.a, arg_0.a))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.yx, arg_1.yy, false)) * global0.a))), 3936u, u_input.b.x);
    var var_0 = reverseBits(u_input.c.x);
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c.zyx, u_input.c.zzx, select(vec3<u32>(4294967295u, 1u, u_input.a), u_input.c.wyw, vec3<bool>(true, true, arg_0.a))), abs(~vec3<u32>(global0.b, 10215u, 1u))), _wgslsmith_mod_u32(u_input.c.x, 1u), _wgslsmith_clamp_u32(countOneBits(firstLeadingBit(27085u)), _wgslsmith_sub_u32(1u ^ u_input.a, arg_3.a & 0u), 59129u), reverseBits(max(_wgslsmith_clamp_u32(94323u, u_input.a, arg_0.b.a), countOneBits(0u))));
    var var_2 = arg_2.a | _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_3.a, 31120u, global0.b, 38057u)), vec4<u32>(firstLeadingBit(~1u), ~0u, 4294967295u >> (var_1.x % 32u), _wgslsmith_add_u32(_wgslsmith_add_u32(55994u, 169497u), ~u_input.d)));
    let var_3 = arg_0;
    return ~_wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(u_input.b.x, global0.c, 14224i)), ~(~vec3<i32>(-5474i, u_input.b.x, global0.c))) == countOneBits(u_input.b.x);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_3(func_4(Struct_3(firstTrailingBit(arg_2.x) <= abs(-2147483647i), Struct_2(1u), vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x, -764f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1071f * 505f), _wgslsmith_f_op_f32(func_3(50091u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(785f, -1000f, global0.a.x) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(459f, -619f, 1177f), vec3<f32>(global0.a.x, 110f, arg_0)))))), Struct_2(~(4294967295u << (arg_1 % 32u))), Struct_2(_wgslsmith_mult_u32(~u_input.d, u_input.d))), Struct_2(4294967295u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(348f, arg_0, global0.a.x), vec3<f32>(arg_0, arg_0, arg_0))))), vec3<f32>(1231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.x))), _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(trunc(956f))))));
    var_0 = Struct_3(false, var_0.b, _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(191f, 297f, arg_0), var_0.c, !var_0.a)))));
    var_0 = Struct_3(false, var_0.b, var_0.c);
    var var_1 = 2147483647i;
    let var_2 = ~vec3<u32>(u_input.d, var_0.b.a, ~abs(global0.b & 0u));
    return var_0.b;
}

fn func_5(arg_0: Struct_2) -> vec2<bool> {
    global0 = Struct_1(global0.a, ~(~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(u_input.c.yzz, vec3<u32>(59044u, 4294967295u, u_input.a)))), -global0.c);
    let var_0 = !(!vec4<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), true, -u_input.b.x <= (u_input.b.x | global0.c)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global0.a.x, -1873f)), 187f), global0.a)), global0.b, -1i);
    let var_1 = -1210f;
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.x - -344f), _wgslsmith_f_op_f32(559f + global0.a.x), -1787f == global0.a.x)))), ~arg_0.a | (u_input.c.x | (~u_input.a & 1u)), -2147483647i & global0.c);
    return select(!vec2<bool>(true, var_0.x), !select(vec2<bool>(true, global0.a.x > global0.a.x), !select(vec2<bool>(false, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false)), false), var_0.xz);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = !vec3<bool>(true, true, all(vec3<bool>(true, true, true)));
    let var_1 = Struct_3(all(!func_5(func_2(-766f, arg_3.a, vec3<i32>(u_input.b.x, u_input.b.x, 51150i)))), arg_3, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + arg_0.c.x), -2157f, arg_0.c.x) - arg_0.c));
    let var_2 = var_1.b.a;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(281f + var_1.c.x), -737f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, 134f) + _wgslsmith_div_vec2_f32(vec2<f32>(216f, 205f), vec2<f32>(569f, 1075f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(arg_0.c.zz)) - var_1.c.yy)), ~1u, -(~reverseBits(~u_input.b.x)));
    var var_3 = !select(vec4<bool>(true || arg_1, any(select(var_0.yx, vec2<bool>(false, false), var_1.a)), var_1.a, true), vec4<bool>(select(true, select(arg_0.a, arg_0.a, var_1.a), var_0.x), !arg_2, u_input.b.x >= -26835i, (arg_0.a && true) && var_1.a), !select(vec4<bool>(false, arg_0.a, arg_1, var_0.x), vec4<bool>(false, false, arg_1, arg_0.a), select(vec4<bool>(arg_2, arg_0.a, true, arg_0.a), vec4<bool>(arg_2, var_1.a, arg_1, false), vec4<bool>(arg_1, var_1.a, arg_2, var_0.x))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a.x, 130f), global0.a)) + _wgslsmith_f_op_vec2_f32(-global0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -147f) * global0.a)))), ~reverseBits(121046u), u_input.b.x);
    var var_0 = true;
    let var_1 = func_1(Struct_3(false, Struct_2(u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, -976f, global0.a.x), vec3<f32>(956f, global0.a.x, global0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - global0.a.x))) > global0.a.x, true, Struct_2(1605u));
    var var_2 = _wgslsmith_mod_u32(~(u_input.c.x ^ firstLeadingBit(~var_1.b.a)), var_1.b.a);
    var var_3 = select(select(select(!vec4<bool>(true, true, var_1.a, var_1.a), !vec4<bool>(true, false, true, var_1.a), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(var_1.a, true, var_1.a, var_1.a))), select(!vec4<bool>(var_1.a, var_1.a, true, var_1.a), !select(vec4<bool>(false, false, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), false), vec4<bool>(true || var_1.a, var_1.a, false, false)), any(func_5(Struct_2(u_input.a)))), !select(vec4<bool>(var_1.a, u_input.b.x >= u_input.b.x, false, var_1.a), vec4<bool>(var_1.a, global0.a.x != -1120f, !var_1.a, var_1.a), vec4<bool>(!var_1.a, false, !var_1.a, var_1.a)), select(!select(vec4<bool>(var_1.a, false, var_1.a, false), select(vec4<bool>(false, var_1.a, var_1.a, true), vec4<bool>(false, true, true, var_1.a), var_1.a), true), vec4<bool>(true, true, true, var_1.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, global0.b, 41342u), vec4<u32>(global0.b, u_input.a, 4294967295u, var_1.b.a)) >= _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.d, 14455u), _wgslsmith_add_u32(var_1.b.a, global0.b))));
    var var_4 = ~_wgslsmith_dot_vec3_u32(min(~countOneBits(vec3<u32>(131757u, 11605u, u_input.a)), vec3<u32>(~4294967295u, 0u, ~0u)), u_input.c.xzy);
    var_4 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-(i32(-1i) * -15145i), ~2147483647i), firstTrailingBit(vec3<u32>(~0u, 51698u, ~func_2(global0.a.x, 31441u, vec3<i32>(-59406i, global0.c, -1i)).a)), 73868u, -_wgslsmith_div_i32(-_wgslsmith_div_i32(u_input.b.x, -1i), ~_wgslsmith_clamp_i32(u_input.b.x, global0.c, global0.c)));
}

