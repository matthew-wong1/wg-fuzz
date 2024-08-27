struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 637f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = ~_wgslsmith_mod_u32(1u, firstTrailingBit(arg_0.b.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a))), arg_0.a)), arg_0.b, arg_0.a, arg_0.b);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.c + var_1.a)));
    var var_2 = arg_0;
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(117f)) * _wgslsmith_f_op_f32(-arg_0.c)))), var_1.a))));
    return vec3<bool>(true, true || (all(vec2<bool>(true, true)) & true), select(true, any(vec3<bool>(true, true, true)), reverseBits(_wgslsmith_div_u32(arg_0.b.x, 28542u)) < var_2.b.x));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec2<bool> {
    let var_0 = 816f;
    var var_1 = ~_wgslsmith_clamp_vec4_u32(arg_1.b, _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, arg_1.d.x, arg_1.b.x, 30001u), _wgslsmith_mult_vec4_u32(~arg_1.b, ~vec4<u32>(arg_1.b.x, 828u, 20344u, u_input.b))), ~arg_1.b);
    let var_2 = Struct_1(var_0, arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(165f * _wgslsmith_f_op_f32(f32(-1f) * -437f)), -396f)), select(select(arg_1.d, ~arg_1.b, select(vec4<bool>(false, false, arg_0.x, true), vec4<bool>(false, arg_2.x, arg_0.x, arg_2.x), vec4<bool>(arg_0.x, arg_2.x, false, false))), vec4<u32>(arg_1.b.x, min(33938u, u_input.e), 55087u, 0u), !(!vec4<bool>(arg_0.x, false, false, false))) << (arg_1.b % vec4<u32>(32u)));
    var var_3 = var_2.d.yx;
    var_1 = vec4<u32>(var_3.x, 1u, 0u, ~(~(var_3.x & var_3.x)));
    return func_3(Struct_1(575f, _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.xx, vec2<u32>(var_2.b.x, arg_1.d.x)), u_input.b, 0u, 26768u), vec4<u32>(0u, _wgslsmith_mult_u32(u_input.b, 4294967295u), _wgslsmith_mod_u32(var_1.x, var_3.x), 0u << (var_3.x % 32u))), 1000f, arg_1.d)).zz;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global0 = 378f;
    global0 = _wgslsmith_f_op_f32(abs(arg_1.a));
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(832f * arg_0.a), _wgslsmith_f_op_f32(-var_0.a))) - -1751f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1362f - 3389f), -587f, !any(vec2<bool>(true, true)))))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-564f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c - -1636f), -706f))))));
    return select(func_4(select(func_3(arg_0), vec3<bool>(func_3(var_0).x, all(vec2<bool>(true, false)), false), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, arg_0.c))), var_0.d, arg_1.a, _wgslsmith_mult_vec4_u32(vec4<u32>(10237u, 0u, var_0.b.x, 107073u), arg_0.d ^ var_0.b)), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), func_3(arg_0))), !func_3(Struct_1(-1000f, firstLeadingBit(vec4<u32>(arg_1.d.x, 1u, 53455u, arg_1.d.x)), var_0.a, var_0.d & arg_1.d)).yy, vec2<bool>(true, true));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = select(func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-415f + -675f) + arg_1.c), arg_1.b, -1000f, ~(~arg_0.b)), Struct_1(741f, ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.b.x, u_input.e, 4294967295u, u_input.b), arg_1.b), _wgslsmith_f_op_f32(-arg_0.a), vec4<u32>(abs(arg_0.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.x, 66328u), vec2<u32>(u_input.e, 1u)), arg_1.b.x, u_input.b))), vec2<bool>(true, func_3(arg_0).x), true);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a)) - arg_0.a);
    global0 = _wgslsmith_f_op_f32(-arg_1.a);
    let var_1 = _wgslsmith_f_op_f32(-arg_1.c);
    global0 = _wgslsmith_f_op_f32(select(arg_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1, arg_1.c))))), var_1)), true && (u_input.b == arg_0.b.x)));
    return !(var_0.x == all(!func_3(Struct_1(1000f, arg_0.d, 210f, vec4<u32>(u_input.e, 12108u, 27355u, arg_0.d.x))).yy));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(sign(-1250f));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -1193f)))), _wgslsmith_f_op_f32(trunc(-810f)), -481f, -626f);
    var var_1 = arg_2.xy;
    var_1 = !vec2<bool>(var_1.x, true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(var_0.x + var_0.x), firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(max(1u, 0u), 1u, ~0u), ~(1u >> (arg_0 % 32u)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, arg_0, u_input.e, u_input.b), vec4<u32>(17086u, 16288u, u_input.e, 1u)), vec4<u32>(21728u, 0u, 16511u, 0u)), reverseBits(_wgslsmith_clamp_u32(20847u, 27638u, 4294967295u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-764f, -1360f))), 1115f))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(8786u, 1u, 55864u, 31685u)), ~vec4<u32>(~u_input.b, arg_0, reverseBits(arg_0), abs(u_input.e))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.b | u_input.b, !vec2<bool>(all(vec2<bool>(true, false)), false), !vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), func_1(Struct_1(902f, vec4<u32>(u_input.b, 33076u, u_input.e, 22349u), 103f, vec4<u32>(77u, 4294967295u, u_input.e, u_input.e)), Struct_1(-604f, vec4<u32>(u_input.e, u_input.e, u_input.e, 0u), -1000f, vec4<u32>(47350u, u_input.e, 1u, 4294967295u))) == any(vec2<bool>(false, false)), all(vec2<bool>(true, true))), func_3(Struct_1(-1363f, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 84557u, u_input.b, u_input.e), vec4<u32>(u_input.e, u_input.b, 3018u, u_input.b)), -306f, min(vec4<u32>(1u, u_input.e, u_input.b, 1513u), vec4<u32>(u_input.e, 1u, u_input.b, 17601u)))).x && (~(~0u) >= ~u_input.e));
    var_0 = Struct_1(var_0.a, vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.d.x, var_0.b.x), var_0.b.wyz) ^ 21570u, ~_wgslsmith_sub_u32(~u_input.b, 21839u), ~(~reverseBits(4294967295u)), _wgslsmith_div_u32(~(u_input.e >> (var_0.d.x % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, u_input.b, u_input.b), var_0.b.wxx) >> (40585u % 32u))), var_0.c, vec4<u32>(_wgslsmith_add_u32(~var_0.b.x, u_input.b), 4050u, var_0.b.x, 4294967295u));
    var_0 = func_5(u_input.e, vec2<bool>(false, !(!func_4(vec3<bool>(true, false, true), Struct_1(-332f, var_0.d, var_0.a, var_0.d), vec3<bool>(false, true, false)).x)), !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), var_0.c != _wgslsmith_f_op_f32(-1545f + 702f)), true);
    let var_1 = countOneBits(vec4<u32>(_wgslsmith_mod_u32(~u_input.b & _wgslsmith_div_u32(4294967295u, 4294967295u), 4294967295u), firstLeadingBit(0u), ~(~var_0.d.x | var_0.d.x), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.d.xww, vec3<u32>(var_0.b.x, 1u, 47655u)), 25771u)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(698f, _wgslsmith_f_op_f32(1f + var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(0u, 72658u)), vec2<u32>(151943u, 88026u), var_0.b.yz), vec2<u32>(var_1.x, max(93668u, 0u))) << (firstTrailingBit(var_0.b.wz) % vec2<u32>(32u)), _wgslsmith_sub_vec3_i32(~u_input.d, u_input.c));
}

