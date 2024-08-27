struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 6668u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_1(arg_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -163f), 330f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(292f, 489f, -1365f, 231f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(768f, _wgslsmith_f_op_f32(abs(-572f)), _wgslsmith_f_op_f32(-245f + -1684f), _wgslsmith_f_op_f32(-298f * 487f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -489f, -328f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 2786f, 1000f), vec3<f32>(-1000f, 1557f, 1000f))))))));
    var var_1 = vec3<u32>(min(_wgslsmith_sub_u32(~(~global0.x), ~1u), _wgslsmith_mod_u32(global0.x, global0.x)), global0.x, abs(~26391u));
    let var_2 = arg_0.x;
    var var_3 = all(!select(select(vec3<bool>(false, true, var_2), vec3<bool>(false, var_2, var_0.a), false || var_0.a), select(select(vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, false, var_0.a)), select(vec3<bool>(true, var_2, arg_0.x), vec3<bool>(true, arg_0.x, var_2), vec3<bool>(var_0.a, false, false)), any(vec2<bool>(false, false))), !(!vec3<bool>(arg_0.x, arg_0.x, false))));
    return var_0.b;
}

fn func_2() -> Struct_1 {
    global0 = vec2<u32>(firstTrailingBit(global0.x), 1u);
    global0 = vec2<u32>(~0u, global0.x);
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(335f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(826f, -617f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1574f, 471f) + -1221f)), !select(select(false, true, false), true, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(223f)))))), _wgslsmith_f_op_f32(round(862f)));
    let var_1 = u_input.a;
    var var_2 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<bool>(true, true)))) - var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-964f, -1919f, var_0.x, 1588f) + vec4<f32>(1862f, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -297f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(var_0.x + 1245f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2066f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_0.x), var_0.x), _wgslsmith_f_op_f32(min(-1765f, -1966f)))));
    return Struct_1(var_2.a, var_2.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.c, var_2.c)), var_2.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(815f + -1887f), _wgslsmith_f_op_f32(-2566f + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(453f, var_0.x)), _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_vec3_f32(-var_2.c.zwx)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<f32>, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = func_2();
    var_0 = Struct_1(arg_3.x, arg_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(select(var_0.c, vec4<f32>(arg_0, 608f, 141f, var_0.b), arg_3.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.wzw) - vec3<f32>(_wgslsmith_f_op_f32(1000f + 191f), var_0.d.x, _wgslsmith_f_op_f32(floor(arg_0))))));
    let var_1 = -2147483647i;
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(countOneBits(abs(global0.x)), 76748u), ~min(0u, min(4294967295u, global0.x))), _wgslsmith_add_vec2_u32(~vec2<u32>(~global0.x, ~global0.x), ~abs(select(vec2<u32>(4294967295u, global0.x), vec2<u32>(global0.x, global0.x), false))));
    return Struct_3(Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(func_3(arg_3.zz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(526f, var_0.c.x, var_0.b, var_0.d.x))))), _wgslsmith_f_op_vec3_f32(arg_2 - var_0.d)), Struct_2(func_2()));
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(~61101u, max(abs(global0.x) >> (global0.x % 32u), ~global0.x)), ~(~countOneBits(vec2<u32>(0u, global0.x))) ^ vec2<u32>(~global0.x, _wgslsmith_mult_u32(global0.x, global0.x) >> (86853u % 32u)));
    global0 = ~min(~(firstLeadingBit(vec2<u32>(global0.x, 18601u)) | ~vec2<u32>(global0.x, 16951u)), vec2<u32>(countOneBits(global0.x << (55984u % 32u)), 0u));
    global0 = abs(~firstLeadingBit(vec2<u32>(global0.x, global0.x)) ^ _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 35109u), vec2<u32>(1u, global0.x), vec2<u32>(global0.x, global0.x) << (vec2<u32>(42670u, global0.x) % vec2<u32>(32u)))) | _wgslsmith_add_vec2_u32(max(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, global0.x), vec3<u32>(43181u, 4294967295u, 1u)), _wgslsmith_mod_u32(4294967295u, 11042u)), vec2<u32>(global0.x, global0.x)), abs(firstLeadingBit(firstTrailingBit(vec2<u32>(global0.x, global0.x)))));
    global0 = ~vec2<u32>(~global0.x, ~0u << (global0.x % 32u)) << (firstLeadingBit(~vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u));
    global0 = ~vec2<u32>(reverseBits(_wgslsmith_clamp_u32(global0.x, 1u, global0.x)), global0.x) ^ vec2<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, 0u), vec2<u32>(global0.x, 1u)), ~_wgslsmith_clamp_u32(global0.x, 1u, 67138u));
    return arg_1;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = arg_3.b.a;
    global0 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(global0.x, global0.x)), ~(~(vec2<u32>(33111u, global0.x) & firstLeadingBit(vec2<u32>(12349u, global0.x)))));
    global0 = vec2<u32>(firstLeadingBit(global0.x) ^ global0.x, ~global0.x);
    var var_1 = select(vec2<i32>(u_input.a, u_input.a), firstTrailingBit(~vec2<i32>(i32(-1i) * -905i, 42314i)), select(vec2<bool>(all(vec2<bool>(arg_3.b.a.a, var_0.a)), ~150757u < global0.x), select(select(vec2<bool>(false, arg_0.b.a.a), select(vec2<bool>(false, true), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, false)), u_input.a < u_input.a), !select(vec2<bool>(false, var_0.a), vec2<bool>(false, true), var_0.a), var_0.a && true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.a, true, arg_0.b.a.a, arg_1.a), vec4<bool>(var_0.a, arg_3.a.a, arg_1.a, false)))));
    var var_2 = vec4<u32>(~global0.x, _wgslsmith_div_u32(global0.x, global0.x), 125345u >> ((1u >> (_wgslsmith_add_u32(global0.x, 87083u) % 32u)) % 32u), global0.x);
    return Struct_3(func_4(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-536f)))), func_4(var_0.c.x, func_4(284f, Struct_3(Struct_1(var_0.a, 1066f, arg_3.b.a.c, vec3<f32>(arg_0.a.c.x, 208f, 321f)), arg_0.b)))).a, arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-745f, _wgslsmith_f_op_f32(f32(-1f) * -464f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1253f * -719f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-672f, 460f, 570f, 598f), vec4<f32>(-206f, -1145f, -1000f, -2085f), true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(303f, 1000f, -959f, -870f))))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1581f))), 431f, -500f, 496f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1075f, -1278f, 322f)), vec3<f32>(398f, -984f, 436f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + var_0.b));
    var_1 = 1426f;
    let var_2 = var_0.c.xw;
    var_1 = 656f;
    var var_3 = func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1336f + var_0.b)), func_1(var_0.c.x, ~global0.x, vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x + var_2.x), _wgslsmith_f_op_f32(abs(var_2.x)), -963f), vec4<bool>(select(true, var_0.a, var_0.a), true, var_0.a & true, true))), func_4(_wgslsmith_f_op_f32(1f * var_0.c.x), func_4(-787f, func_1(_wgslsmith_f_op_f32(-1477f - 533f), abs(0u), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, 1151f, var_2.x), var_0.d), !vec4<bool>(var_0.a, false, var_0.a, true)))).b.a, u_input.a, Struct_3(Struct_1(true, 1082f, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, -112f, var_0.d.x, var_2.x))), _wgslsmith_div_vec3_f32(func_4(-792f, Struct_3(var_0, Struct_2(var_0))).a.d, var_0.c.yzw)), Struct_2(Struct_1(!var_0.a, var_0.c.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2027f, var_0.c.x, var_2.x, var_0.d.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, var_2.x, var_2.x) - var_0.d)))));
    let var_4 = 2147483647i;
    var_3 = Struct_3(func_4(449f, Struct_3(Struct_1(select(var_3.b.a.a, false, false), _wgslsmith_f_op_f32(abs(var_0.c.x)), _wgslsmith_f_op_vec4_f32(var_0.c + var_3.b.a.c), _wgslsmith_f_op_vec3_f32(exp2(var_0.d))), var_3.b)).a, func_1(func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.a.c.x - 793f))), Struct_3(Struct_1(var_0.a, 795f, var_0.c, vec3<f32>(var_3.b.a.c.x, var_3.a.b, var_3.b.a.d.x)), func_1(-170f, 4294967295u, vec3<f32>(var_3.a.d.x, -1440f, var_2.x), vec4<bool>(var_0.a, true, var_0.a, var_3.b.a.a)).b)).b.a.d.x, ~(~(global0.x >> (global0.x % 32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -383f, var_0.d.x))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), 346f, -1000f)), select(!select(vec4<bool>(var_3.a.a, var_3.b.a.a, var_3.a.a, true), vec4<bool>(var_0.a, false, false, var_3.a.a), var_3.a.a), select(!vec4<bool>(var_3.a.a, false, var_3.b.a.a, true), vec4<bool>(var_0.a, false, false, var_3.b.a.a), !vec4<bool>(var_0.a, var_0.a, var_3.b.a.a, var_3.a.a)), vec4<bool>(var_3.b.a.a, 4294967295u == global0.x, 1u < global0.x, any(vec2<bool>(var_0.a, var_3.b.a.a))))).b);
    let x = u_input.a;
    s_output = StorageBuffer(-(~min(~vec3<i32>(-1i, var_4, 0i), -vec3<i32>(u_input.a, -1i, 0i))));
}

