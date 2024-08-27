struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(-95178i, -15334i), vec2<i32>(44254i, 28555i), vec2<i32>(-1i, 32915i), vec2<i32>(-45437i, i32(-2147483648)), vec2<i32>(-28292i, 2147483647i), vec2<i32>(24159i, 39320i), vec2<i32>(2306i, 88637i));

var<private> global2: u32 = 59194u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(!select(select(vec4<bool>(global0.x, false, true, false), vec4<bool>(false, true, false, global0.x), vec4<bool>(true, global0.x, true, global0.x)), vec4<bool>(global0.x, global0.x, true, global0.x), true != global0.x), ~(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) << (vec4<u32>(1053u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u))) >> (vec4<u32>(~2046u, u_input.a.x ^ u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 12108u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 41010u, 33510u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 6235u, 2094u, u_input.a.x), vec4<u32>(22537u, 6918u, 36578u, u_input.a.x))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1054f, _wgslsmith_f_op_f32(select(-715f, 306f, global0.x)))))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-107f, -917f, global0.x || global0.x))), 8735u), Struct_1(vec4<bool>(global0.x, any(vec4<bool>(false, true, true, true)) || any(vec4<bool>(global0.x, global0.x, true, false)), global0.x, false), ~(~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1013f, _wgslsmith_f_op_f32(f32(-1f) * -109f))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-878f))))), firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(8680u, u_input.a.x, 1u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 2098u)))), u_input.a.x, -1i);
    let var_1 = select(select(select(!(!vec4<bool>(false, false, false, global0.x)), var_0.a.a, select(!vec4<bool>(global0.x, var_0.b.a.x, global0.x, false), select(vec4<bool>(var_0.b.a.x, var_0.a.a.x, true, var_0.b.a.x), var_0.a.a, vec4<bool>(global0.x, var_0.b.a.x, false, var_0.a.a.x)), !var_0.a.a.x)), vec4<bool>(false, global0.x, false, _wgslsmith_f_op_f32(f32(-1f) * -367f) <= _wgslsmith_f_op_f32(1000f + var_0.b.c)), select(select(select(var_0.b.a, vec4<bool>(global0.x, var_0.b.a.x, false, var_0.b.a.x), true), select(vec4<bool>(global0.x, var_0.b.a.x, false, var_0.b.a.x), var_0.b.a, global0.x), var_0.a.a), !select(var_0.b.a, vec4<bool>(true, global0.x, true, global0.x), var_0.b.a), any(vec3<bool>(true, var_0.a.a.x, global0.x)))), !vec4<bool>(all(vec3<bool>(true, var_0.a.a.x, var_0.b.a.x)), global0.x, all(select(vec2<bool>(global0.x, false), vec2<bool>(var_0.b.a.x, false), true)), true), true);
    global1 = array<vec2<i32>, 7>();
    global0 = var_1;
    global1 = array<vec2<i32>, 7>();
    return var_1.x;
}

fn func_2() -> vec2<f32> {
    let var_0 = 0u;
    let var_1 = vec3<bool>(func_3(), global0.x && true, !any(vec4<bool>(var_0 <= u_input.a.x, global0.x, false && global0.x, any(vec2<bool>(false, global0.x)))));
    global1 = array<vec2<i32>, 7>();
    let var_2 = _wgslsmith_sub_i32(12631i, -u_input.b.x);
    global0 = vec4<bool>(any(vec3<bool>(true | var_1.x, !var_1.x, u_input.a.x > ~14433u)), select(!(!(34232u == var_0)), any(!vec4<bool>(false, global0.x, false, true)), true), !global0.x, global0.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-390f, 931f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-833f, -1000f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-397f, -606f)))), all(select(vec4<bool>(true, global0.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, global0.x), vec4<bool>(false, global0.x, var_1.x, true)))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 1359f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1, _wgslsmith_f_op_vec2_f32(func_2()), global0.zy)) - _wgslsmith_f_op_vec2_f32(select(arg_1, arg_0, false || arg_2))));
    global0 = !select(select(vec4<bool>(true, true, arg_3, true & global0.x), !vec4<bool>(true, true, global0.x, false), select(select(vec4<bool>(false, true, false, arg_2), vec4<bool>(arg_2, false, global0.x, false), vec4<bool>(arg_2, true, arg_2, global0.x)), !vec4<bool>(arg_2, false, arg_3, arg_3), arg_3)), !select(!vec4<bool>(arg_3, arg_2, arg_2, global0.x), select(vec4<bool>(arg_3, global0.x, true, true), vec4<bool>(false, arg_3, arg_2, arg_3), vec4<bool>(arg_2, arg_3, false, false)), !vec4<bool>(true, global0.x, global0.x, true)), false);
    let var_1 = Struct_1(select(vec4<bool>(arg_3, !(561f <= var_0.x), true, false), !vec4<bool>(arg_2, !arg_3, true, global0.x), !(!(!vec4<bool>(arg_3, arg_2, arg_2, false)))), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, 28859u), 344f, _wgslsmith_f_op_f32(arg_0.x * -1259f), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.a.x, 102418u, u_input.a.x)), ~vec4<u32>(4294967295u, u_input.a.x, 78123u, u_input.a.x) ^ vec4<u32>(7425u, 58424u, u_input.a.x, 40590u)) >> (_wgslsmith_dot_vec2_u32(~(vec2<u32>(47984u, 4294967295u) ^ vec2<u32>(22823u, u_input.a.x)), vec2<u32>(u_input.a.x, 23000u)) % 32u));
    var var_2 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_0.x) - var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(998f * -393f) + _wgslsmith_f_op_f32(abs(arg_0.x)))))));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -710f);
    return Struct_1(var_1.a, var_1.b, 1567f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.d, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), global0.x))))), ~(~(~var_1.e)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = array<vec2<i32>, 7>();
    var var_0 = Struct_2(arg_1, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, 1049f)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-722f, arg_1.c), vec2<f32>(arg_1.c, -443f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c, -825f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.d, arg_2.d), vec2<f32>(1060f, -104f), arg_1.a.wy))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.c, 780f))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(594f, 561f), vec2<f32>(arg_1.d, arg_1.c))))), all(!select(arg_2.a, vec4<bool>(false, true, arg_1.a.x, global0.x), true)), true), 42178u, 0i);
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1205f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.c) - 1473f)), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -914f))), 1f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1502f, -744f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(arg_2.c))))))), true || func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1334f, arg_2.c), vec2<f32>(858f, arg_1.d)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a.d, var_0.b.c))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(460f, -1343f) * vec2<f32>(var_0.a.c, var_0.a.d))), any(vec4<bool>(true, arg_2.a.x, false, true)), true).a.x, true);
    var var_2 = arg_1.d;
    var_0 = Struct_2(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d, arg_2.d) * vec2<f32>(-1000f, 855f)) + vec2<f32>(-483f, -866f)), vec2<f32>(arg_1.d, _wgslsmith_f_op_f32(f32(-1f) * -1211f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-491f)), var_0.a.c), all(!func_4(vec2<f32>(1180f, 962f), vec2<f32>(-1000f, var_0.a.d), arg_1.a.x, arg_2.a.x).a.xy), false), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_4(vec2<f32>(-1246f, 723f), vec2<f32>(-695f, var_0.a.c), var_0.b.a.x, false).c, _wgslsmith_div_f32(arg_2.c, -146f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c, -279f)), vec2<f32>(arg_1.d, arg_1.d)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.d, arg_1.d), vec2<f32>(arg_1.c, arg_1.d))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d, var_0.a.d)))), !(!var_0.a.a.x), all(select(vec2<bool>(false, true), select(global0.yz, vec2<bool>(true, true), arg_2.a.xy), select(global0.x, arg_1.a.x, arg_2.a.x)))), abs((~arg_1.e << (~var_1.b.x % 32u)) & 75776u), var_0.d & min(2147483647i, var_0.d));
    return ~_wgslsmith_mod_u32(abs(_wgslsmith_add_u32(~arg_2.b.x, _wgslsmith_mod_u32(0u, arg_2.b.x))), _wgslsmith_mult_u32(29609u, var_0.b.e));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> i32 {
    global2 = func_5(u_input.a, Struct_1(vec4<bool>(global0.x, global0.x, max(-23798i, 2147483647i) > abs(u_input.b.x), (arg_1.x | u_input.a.x) != ~u_input.a.x), max(vec4<u32>(max(u_input.a.x, 33462u), 1u, ~arg_1.x, u_input.a.x), (vec4<u32>(14688u, 1u, 26814u, 0u) ^ vec4<u32>(0u, 37301u, 43952u, arg_1.x)) ^ vec4<u32>(arg_1.x, 68019u, arg_1.x, u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(abs(arg_0)), arg_1.x & 68054u), func_4(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-944f, 1370f)))), true, any(vec2<bool>(!global0.x, false))));
    var var_0 = vec2<u32>(~_wgslsmith_clamp_u32(arg_1.x, ~(~1u), arg_1.x ^ 1u), 4294967295u);
    let var_1 = arg_0;
    global1 = array<vec2<i32>, 7>();
    let var_2 = ~(select(func_4(vec2<f32>(-854f, 216f), vec2<f32>(var_1, -959f), any(vec4<bool>(global0.x, global0.x, true, global0.x)), true).b, _wgslsmith_add_vec4_u32(vec4<u32>(1u, 74929u, arg_1.x, arg_1.x), ~vec4<u32>(u_input.a.x, 0u, var_0.x, arg_1.x)), vec4<bool>(u_input.b.x > 2147483647i, !global0.x, global0.x, false)) & reverseBits(~(vec4<u32>(arg_1.x, 32577u, arg_1.x, 4294967295u) | vec4<u32>(u_input.a.x, 0u, u_input.a.x, var_0.x))));
    return abs(-21379i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-vec3<i32>(~28158i >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u), ~(~u_input.b.x), ~u_input.c.x));
    var_0 = vec3<i32>(u_input.c.x, reverseBits(min(~0i, _wgslsmith_clamp_i32(25225i, u_input.b.x, var_0.x))) << ((abs(1u) << (1u % 32u)) % 32u), -var_0.x);
    var_0 = ~(-(~vec3<i32>(func_1(-201f, vec2<u32>(33495u, u_input.a.x)), -17704i >> (u_input.a.x % 32u), var_0.x)));
    var_0 = vec3<i32>(-2147483647i, -2147483647i, var_0.x);
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, -291f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-231f, 1000f) + vec2<f32>(-128f, 1271f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-795f, -306f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-1f))), all(global0.yyy), all(!vec2<bool>(all(vec2<bool>(true, false)), !global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-542f, 1301f), vec2<f32>(var_1.d, 127f)), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.d, 746f), vec2<f32>(var_1.d, var_1.c))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-409f, var_1.d) - vec2<f32>(156f, 284f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.d, -189f), vec2<f32>(-436f, var_1.d))))))), var_1.b, var_1.b, var_1.d);
}

