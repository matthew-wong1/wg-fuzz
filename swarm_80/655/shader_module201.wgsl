struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -14332i;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    return true || arg_0.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1508f + -453f))) + _wgslsmith_f_op_f32(sign(-1423f)))));
    var_0 = -469f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2360f, _wgslsmith_f_op_f32(-834f - _wgslsmith_div_f32(1980f, 677f)), any(!arg_0.c.zx))), -640f) - 1277f);
    var var_1 = vec4<bool>(func_3(arg_0, abs((vec2<i32>(u_input.b, -2147483647i) >> (arg_1.yz % vec2<u32>(32u))) << (~vec2<u32>(3751u, arg_0.a.x) % vec2<u32>(32u)))), arg_1.x <= 1u, false, true | !arg_3);
    let var_2 = arg_0;
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    let var_0 = vec2<i32>(-2147483647i, u_input.b << (0u % 32u));
    var var_1 = arg_1.a.zx;
    var_1 = ((~vec2<u32>(1u, arg_1.a.x) | vec2<u32>(_wgslsmith_mod_u32(742u, 49801u), 46573u)) << (_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.e.xx, u_input.e.xz), vec2<u32>(u_input.e.x, _wgslsmith_clamp_u32(0u, 90887u, 1u))) % vec2<u32>(32u))) | vec2<u32>(~0u, arg_2);
    global0 = ~(-4167i);
    let var_2 = 572f;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2))), _wgslsmith_f_op_f32(exp2(arg_3.x)))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(arg_1.a.x, func_2(arg_1, u_input.e, !arg_0.x, arg_1.c.x), _wgslsmith_dot_vec2_u32(u_input.e.ww, select(u_input.e.wz, vec2<u32>(4294967295u, u_input.e.x), arg_1.c.zy)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-380f, 2033f, -1052f, 210f), vec4<f32>(-438f, -902f, -1356f, -1504f))))))), -1196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + _wgslsmith_f_op_f32(842f * -622f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -278f) * _wgslsmith_f_op_f32(-969f + 1000f)) + _wgslsmith_f_op_f32(-811f - _wgslsmith_div_f32(114f, -445f)))));
    let var_1 = func_2(arg_1, ~(((u_input.e ^ u_input.e) & u_input.e) ^ u_input.e), all(!(!select(vec3<bool>(true, false, arg_0.x), arg_0, true))), -2147483647i > u_input.b);
    var var_2 = u_input.e.xx;
    global0 = reverseBits(-2147483647i);
    let var_3 = select(u_input.d < 11714i, var_1.c.x, !all(select(select(vec3<bool>(arg_1.c.x, var_1.c.x, arg_1.c.x), vec3<bool>(var_1.c.x, arg_0.x, false), arg_1.c), arg_1.c, all(vec3<bool>(var_1.c.x, arg_1.c.x, false)))));
    return u_input.c;
}

fn func_5(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = func_2(Struct_1(vec3<u32>(arg_2.a.x, _wgslsmith_mult_u32(arg_2.b, 0u), u_input.e.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(39267u, 42230u, 4294967295u), vec3<u32>(u_input.e.x, arg_2.b, 12979u) | vec3<u32>(u_input.e.x, arg_2.b, u_input.a)) % vec3<u32>(32u)), func_2(func_2(func_2(Struct_1(vec3<u32>(95886u, u_input.e.x, 19201u), 3105u, arg_3), vec4<u32>(11877u, 1u, 28161u, 4294967295u), arg_3.x, false), vec4<u32>(100299u, u_input.e.x, 1u, 22496u), all(vec2<bool>(true, arg_2.c.x)), true), _wgslsmith_div_vec4_u32(select(u_input.e, u_input.e, vec4<bool>(arg_3.x, arg_2.c.x, true, true)), ~u_input.e), func_2(arg_2, min(u_input.e, u_input.e), true, true).c.x, func_2(func_2(Struct_1(vec3<u32>(95843u, u_input.e.x, 0u), arg_2.b, vec3<bool>(true, false, true)), u_input.e, false, arg_3.x), u_input.e, any(vec3<bool>(false, true, true)), arg_2.c.x).c.x).a.x, !func_2(func_2(arg_2, u_input.e, true, false), u_input.e, true, false).c), max(~vec4<u32>(reverseBits(u_input.e.x), u_input.a, 25473u, ~arg_2.b), _wgslsmith_sub_vec4_u32(u_input.e, vec4<u32>(min(u_input.a, u_input.e.x), u_input.a << (1u % 32u), abs(37967u), 1u))), (any(select(vec2<bool>(true, arg_2.c.x), arg_3.xx, arg_2.c.zx)) && !arg_2.c.x) && !arg_2.c.x, true);
    global0 = arg_0.x;
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(-_wgslsmith_sub_i32(arg_0.x, arg_0.x)), arg_0.x), reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(33110i, arg_0.x), 21200i), firstLeadingBit(arg_0.yz & arg_0.yy))));
    var var_1 = -(u_input.c >> (~4294967295u % 32u));
    var_1 = u_input.c;
    return ~(~(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.e.x, 4294967295u, 1u), max(var_0.a.x, 30447u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~abs(~(u_input.b ^ ~(-1i)));
    let var_0 = Struct_1(~(~vec3<u32>(_wgslsmith_mult_u32(u_input.a, 80285u), abs(u_input.a), u_input.a)), _wgslsmith_dot_vec2_u32(~(u_input.e.xw << (u_input.e.yy % vec2<u32>(32u))) | u_input.e.wx, u_input.e.wy), !vec3<bool>(all(vec4<bool>(true, true, true, true)), true, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(70242u, 1348u)) > 1u));
    global0 = u_input.d;
    var var_1 = min(-20267i, ~(29007i >> (~var_0.b % 32u)));
    var var_2 = var_0;
    let var_3 = var_0;
    var var_4 = select(u_input.e.yw, vec2<u32>(firstTrailingBit(firstLeadingBit(var_2.a.x)), func_5(vec3<i32>(1i >> (u_input.a % 32u), -84775i, func_1(vec3<bool>(var_3.c.x, var_2.c.x, var_3.c.x), var_0, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-506f)) - -937f), var_3, var_2.c)), true);
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-174f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(717f + -1000f), 1000f, all(var_3.c.xy))))), max(-1i, u_input.c) & _wgslsmith_mult_i32(u_input.b, -40404i), reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(var_2.a.zx, vec2<u32>(var_0.b, var_0.a.x)) ^ vec2<u32>(var_4.x, 1u), countOneBits(vec2<u32>(var_3.a.x, var_0.b) | vec2<u32>(0u, u_input.a)))));
}

