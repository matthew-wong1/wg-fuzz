struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(816f, vec3<f32>(1055f, 338f, 127f), vec4<u32>(13703u, 1u, 21324u, 1u), vec3<f32>(-458f, -1139f, -494f), -475f);

var<private> global1: Struct_1;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-358f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1749f, arg_0.a.x, global0.e), global0.b) + _wgslsmith_div_vec3_f32(vec3<f32>(global1.e, global0.a, global1.e), vec3<f32>(arg_0.b, -809f, 1447f)))))), _wgslsmith_mult_vec4_u32(abs(global0.c), _wgslsmith_add_vec4_u32(vec4<u32>(global0.c.x, 36240u, 1u, global0.c.x), vec4<u32>(global0.c.x, 44238u, global1.c.x, 1u)) ^ ~vec4<u32>(64183u, 79354u, global1.c.x, global1.c.x)) >> (~_wgslsmith_mod_vec4_u32(global1.c, global0.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-173f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - global1.a)))), 276f);
    let var_0 = -_wgslsmith_div_vec4_i32(~(countOneBits(vec4<i32>(-2147483647i, u_input.c, u_input.c, 2147483647i)) ^ vec4<i32>(62695i, u_input.c, 2147483647i, u_input.c)), vec4<i32>(u_input.c, -(~u_input.c), -1i, (u_input.c << (global1.c.x % 32u)) ^ ~u_input.c));
    global1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.e), arg_0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2163f)), 1323f, _wgslsmith_f_op_f32(sign(-701f))), firstLeadingBit(global1.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(global0.d)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(979f + _wgslsmith_f_op_f32(step(arg_0.b, -2646f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.b), global0.d, false));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_vec3_f32(global0.d, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.e, _wgslsmith_f_op_f32(floor(arg_0.a.x)), global0.a)))), vec4<u32>(global0.c.x, global1.c.x, ~_wgslsmith_add_u32(~global0.c.x, ~82986u), _wgslsmith_sub_u32(global0.c.x, global1.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * arg_0.b), var_1.x, _wgslsmith_f_op_f32(-global0.e))))), _wgslsmith_f_op_f32(trunc(-464f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-551f)));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.b.zx);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b.x)) - _wgslsmith_div_f32(global1.e, _wgslsmith_f_op_f32(func_3(Struct_2(global0.b.xy, -1000f), vec2<bool>(false, false))))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1935f + _wgslsmith_f_op_f32(step(379f, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(754f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x))), global1.e), global1.c, vec3<f32>(var_0.x, global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2016f)) * var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1000f - -770f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec2<f32>(arg_1, var_0.x), global0.d.x), vec2<bool>(true, true)))))));
    var var_1 = Struct_1(-1000f, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(520f, arg_1, global1.d.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.d * _wgslsmith_f_op_vec3_f32(-vec3<f32>(319f, var_0.x, -634f))), global0.d, select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))))), ~(~(abs(vec4<u32>(0u, 1u, 49889u, global0.c.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(90456u, global0.c.x, u_input.b.x, global1.c.x), vec4<u32>(27718u, 29292u, global0.c.x, 51138u)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))))), _wgslsmith_f_op_f32(-var_0.x));
    global0 = Struct_1(global1.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, var_0.x, var_1.a) + var_1.b), var_1.d)))), select(vec4<u32>(1865u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(36967u, 4457u, 1u, global1.c.x), var_1.c), u_input.a, global1.c.x), ~var_1.c, !any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false))), global1.d, 1565f);
    return Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)), _wgslsmith_f_op_f32(f32(-1f) * -177f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.b.x, var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(179f, var_0.x)))))), -401f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = !select(select(vec4<bool>(any(vec2<bool>(true, false)), true, all(vec3<bool>(true, true, false)), any(vec2<bool>(true, false))), vec4<bool>(false, false, true, all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), true)), !vec4<bool>(select(true, true, true), true, true, true), true);
    let var_1 = ~78114u;
    global0 = Struct_1(337f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e, global1.d.x, _wgslsmith_f_op_f32(func_3(func_2(0i, global0.b.x), select(var_0.xy, var_0.xz, var_0.x))))), vec4<u32>(_wgslsmith_mod_u32(~global1.c.x, 1u), 1u, min(~global0.c.x, max(global0.c.x, 4294967295u)), 22046u) & _wgslsmith_clamp_vec4_u32(max(vec4<u32>(0u, global0.c.x, global1.c.x, global1.c.x), vec4<u32>(u_input.b.x, global1.c.x, 4294967295u, u_input.b.x)), vec4<u32>(firstTrailingBit(1u), min(104824u, 19937u), global1.c.x << (1u % 32u), 57177u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.c.x, 0u, var_1, var_1), global1.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-173f, global1.e, arg_0.a.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, -299f, -409f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(round(global1.b))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_div_f32(arg_1.b, arg_1.b), func_2(14601i, arg_0.b).a.x)))), _wgslsmith_f_op_f32(ceil(arg_0.b)));
    global0 = Struct_1(global0.e, global0.d, vec4<u32>(countOneBits(~1u), var_1, 41766u, 37818u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1932f, 1861f)), 1f, 306f), -1826f);
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b))) + arg_0.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1132f, arg_0.b, -1327f) - vec3<f32>(-1091f, 1000f, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1382f, 1000f))))), global1.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-global0.b))), arg_0.a.x);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.d))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2079f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - global1.b.x)), -861f)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, _wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(floor(-1405f)), global1.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(593f, arg_0)) - _wgslsmith_f_op_f32(step(-2026f, -447f))), 1030f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1433f)) * -995f), _wgslsmith_f_op_f32(826f + _wgslsmith_f_op_f32(-arg_0))))));
    var var_1 = 2955u;
    var_1 = abs(~firstLeadingBit(0u));
    global1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-117f, global1.b.x)), -283f)))), _wgslsmith_f_op_vec3_f32(round(global1.d)), global0.c, _wgslsmith_f_op_vec3_f32(func_4(func_2(select(countOneBits(1i), -12543i, arg_2.x), _wgslsmith_f_op_f32(sign(var_0.x))), func_2(arg_1.x, -1089f))), _wgslsmith_f_op_f32(798f * _wgslsmith_f_op_f32(max(var_0.x, -427f))));
    var_1 = 82811u;
    return select(arg_2.zzx, !vec3<bool>(arg_2.x, true, true), any(vec3<bool>(select(true, arg_2.x, arg_2.x) | false, all(arg_2.ywy), select(select(false, arg_2.x, arg_2.x), arg_2.x == arg_2.x, all(vec3<bool>(true, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_2(global0.d.yy, -343f);
    var var_2 = global0.d.x;
    let var_3 = func_1(global0.e, vec4<i32>(_wgslsmith_add_i32(-2147483647i, abs(u_input.c)), 1i, ~24690i, 6843i), vec4<bool>(true & !(!var_0.x), all(select(var_0, var_0, var_0)) || (all(vec2<bool>(var_0.x, false)) != !var_0.x), (global0.e < -1464f) && false, select(any(vec3<bool>(var_0.x, true, false)), !(!var_0.x), !(!var_0.x))));
    var var_4 = var_3.x;
    global1 = Struct_1(_wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_vec3_f32(global0.d - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -499f)), _wgslsmith_div_f32(global1.e, _wgslsmith_f_op_f32(-global0.b.x)))), global0.c, vec3<f32>(588f, func_2(~u_input.c << (1u % 32u), 877f).a.x, global1.d.x), _wgslsmith_f_op_f32(global0.b.x + 1142f));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(step(global1.d.yz, func_2(-32493i, 604f).a)), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec2<f32>(-748f, -118f), global0.d.x), Struct_2(global0.d.yz, 764f))).x), Struct_2(vec2<f32>(-215f, _wgslsmith_f_op_f32(floor(global1.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.x)) + -200f)))).x, var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-global0.e), global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + global1.e) + _wgslsmith_f_op_f32(global1.e + var_1.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - -180f))), 689f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f) + global0.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global1.d, global1.d)) - global0.d), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(167f - global1.a) + var_1.b)), 512f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_2(global1.d.yy, var_1.a.x), var_3.zy)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e)))));
}

