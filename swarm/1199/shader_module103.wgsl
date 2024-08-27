struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = !select(!vec3<bool>(true, global0.x & true, true), select(vec3<bool>(all(vec4<bool>(global0.x, global0.x, true, global0.x)), true, false), select(!vec3<bool>(true, global0.x, true), !vec3<bool>(true, false, global0.x), global0.x), all(global0.zz)), !select(true, true, true));
    var var_0 = !(!(!select(!vec3<bool>(false, true, global0.x), !vec3<bool>(true, global0.x, true), 1i < u_input.b)));
    let var_1 = true;
    var var_2 = 2202u;
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(474f - 567f) + _wgslsmith_f_op_f32(372f - 1871f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1854f)))))), _wgslsmith_f_op_f32(-110f + 431f)));
    return !(!any(!(!vec2<bool>(false, var_0.x))));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: f32) -> bool {
    global0 = vec3<bool>(func_3(), any(!select(select(vec4<bool>(true, global0.x, global0.x, arg_0), vec4<bool>(false, true, false, true), false), !vec4<bool>(true, false, arg_0, global0.x), u_input.a >= 17175u)), !(func_3() || func_3()) && true);
    global0 = !(!select(vec3<bool>(false, -32710i >= u_input.d, true), vec3<bool>(false, true && global0.x, func_3()), global0.x));
    global0 = !select(vec3<bool>(~u_input.a <= ~u_input.a, any(vec4<bool>(false, false, true, arg_0)), any(vec4<bool>(true, true, global0.x, true))), select(select(select(vec3<bool>(arg_0, global0.x, global0.x), vec3<bool>(arg_0, global0.x, global0.x), vec3<bool>(arg_0, false, true)), vec3<bool>(global0.x, arg_0, global0.x), true), !select(vec3<bool>(true, arg_0, true), vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_0, false)), vec3<bool>(!arg_0, true, global0.x)), vec3<bool>(arg_0, func_3(), any(select(vec4<bool>(false, global0.x, arg_0, true), vec4<bool>(false, false, global0.x, arg_0), false))));
    var var_0 = Struct_1(arg_1.xz);
    global0 = select(select(vec3<bool>(true, !(!global0.x), global0.x), select(vec3<bool>(global0.x, any(global0.yz), true), !vec3<bool>(global0.x, global0.x, global0.x), false), true), vec3<bool>(arg_0 && arg_0, arg_0, arg_0), select(select(vec3<bool>(!global0.x, global0.x, true), select(!vec3<bool>(arg_0, true, false), select(vec3<bool>(global0.x, arg_0, false), vec3<bool>(global0.x, arg_0, arg_0), vec3<bool>(arg_0, false, false)), !vec3<bool>(false, false, arg_0)), select(select(vec3<bool>(false, false, global0.x), vec3<bool>(arg_0, false, true), true), vec3<bool>(arg_0, false, arg_0), global0.x)), !(!vec3<bool>(arg_0, arg_0, false)), all(vec3<bool>(true, false, false)) || !any(vec4<bool>(global0.x, global0.x, false, false))));
    return global0.x;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = select(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(global0.x, true, true), vec3<bool>(false, true, true), false), true), vec3<bool>(global0.x, select(true, false, global0.x) && global0.x, true), true), select(select(vec3<bool>(all(vec2<bool>(true, global0.x)), all(vec4<bool>(false, true, true, false)), false), vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, global0.x, global0.x)), u_input.d >= u_input.b), vec3<bool>(global0.x, true, global0.x)), vec3<bool>(true, global0.x, global0.x), !(!select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, true, true), vec3<bool>(true, global0.x, global0.x)))), !select(vec3<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)), func_2(false, vec3<f32>(-239f, 438f, 151f), 1922f, 1000f), arg_0.x >= 4294967295u), select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), true), !vec3<bool>(true, global0.x, global0.x), -4319i != u_input.d), true));
    var_0 = select(select(!(!(!vec3<bool>(true, var_0.x, global0.x))), !vec3<bool>(false, u_input.c.x == 2147483647i, var_0.x), select(select(select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, global0.x, var_0.x), var_0.x), select(vec3<bool>(false, true, global0.x), vec3<bool>(true, false, global0.x), vec3<bool>(var_0.x, true, var_0.x)), select(vec3<bool>(var_0.x, var_0.x, global0.x), vec3<bool>(var_0.x, var_0.x, global0.x), vec3<bool>(var_0.x, global0.x, global0.x))), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, false, global0.x), var_0.x), vec3<bool>(true, var_0.x, false), var_0.x), true)), !vec3<bool>(var_0.x, true, any(vec3<bool>(true, true, false))), select(select(select(select(vec3<bool>(global0.x, var_0.x, var_0.x), vec3<bool>(false, var_0.x, global0.x), vec3<bool>(true, var_0.x, global0.x)), !vec3<bool>(global0.x, var_0.x, true), !var_0.x), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, true), var_0.x), vec3<bool>(true, false, false), vec3<bool>(true, true, var_0.x)), select(!vec3<bool>(var_0.x, global0.x, true), vec3<bool>(var_0.x, false, global0.x), global0.x)), select(vec3<bool>(var_0.x | true, global0.x, true), vec3<bool>(!global0.x, false, any(vec3<bool>(var_0.x, global0.x, global0.x))), false), select(vec3<bool>(var_0.x, var_0.x, global0.x), !(!vec3<bool>(true, var_0.x, true)), select(vec3<bool>(true, false, global0.x), !vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)))));
    let var_1 = !any(select(vec4<bool>(u_input.d > u_input.b, false, !global0.x, true), vec4<bool>(any(vec3<bool>(var_0.x, true, false)), true, !global0.x, any(vec4<bool>(false, global0.x, true, false))), select(vec4<bool>(false, var_0.x, global0.x, var_0.x), !vec4<bool>(var_0.x, global0.x, true, false), vec4<bool>(global0.x, global0.x, false, true))));
    var var_2 = u_input.c.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(666f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(555f, 811f))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f * 1733f) + -818f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-358f, -576f)) * _wgslsmith_f_op_f32(f32(-1f) * -1269f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    return Struct_2(2147483647i, select(_wgslsmith_mult_vec3_u32(~arg_1.b, arg_1.b), arg_1.b, !(!(!vec3<bool>(global0.x, false, global0.x)))), arg_2.x, u_input.c.yzw);
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: bool) -> u32 {
    let var_0 = arg_0;
    global0 = select(vec3<bool>(select(any(vec2<bool>(arg_0, arg_0)), any(vec3<bool>(true, arg_0, arg_0)), any(vec4<bool>(arg_3, false, true, true))) == (!arg_0 && func_3()), true, arg_3), vec3<bool>(false, true, (~0u << (func_4(Struct_1(vec2<f32>(2240f, -1473f)), Struct_2(0i, arg_2.b, u_input.b, arg_2.d), u_input.c.wx).b.x % 32u)) != ~min(1510u, arg_2.b.x)), var_0);
    let var_1 = 447i;
    return ~_wgslsmith_div_u32(~arg_2.b.x, _wgslsmith_dot_vec3_u32(~arg_2.b, _wgslsmith_mult_vec3_u32(arg_2.b, vec3<u32>(arg_2.b.x, u_input.a, 4294967295u))) >> (u_input.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~func_5(true, u_input.c.yz, func_4(func_1(vec2<u32>(0u, u_input.a)), Struct_2(-2147483647i, vec3<u32>(38082u, u_input.a, u_input.a), 36441i, u_input.c.xyy), _wgslsmith_sub_vec2_i32(u_input.c.yz, vec2<i32>(1i, -1i))), true || (u_input.b >= u_input.b)), countOneBits(~countOneBits(64760u ^ u_input.a)), u_input.a, _wgslsmith_dot_vec2_u32(~(~countOneBits(vec2<u32>(4294967295u, 18071u))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_u32(~vec2<u32>(11972u, u_input.a), vec2<u32>(u_input.a, 0u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1296f * _wgslsmith_f_op_f32(-1941f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1795f)))))));
    global0 = vec3<bool>(!global0.x, !global0.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.d, u_input.b >> (255u % 32u), func_4(Struct_1(vec2<f32>(-1022f, var_1)), Struct_2(u_input.c.x, var_0.zwx, -39716i, vec3<i32>(u_input.d, u_input.b, 24653i)), vec2<i32>(-31603i, 2147483647i)).d.x), -u_input.b) <= -1i);
    var var_2 = u_input.c.xz ^ -firstLeadingBit(abs(-u_input.c.yy));
    global0 = select(select(!vec3<bool>(true, u_input.b >= 15034i, global0.x), vec3<bool>(global0.x, !global0.x, false), select(select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, true, true), true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x)), vec3<bool>(u_input.a > 4294967295u, global0.x, true), !(!global0.x))), select(!select(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, global0.x), true), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, false, false), vec3<bool>(global0.x, true, false)), !vec3<bool>(false, false, global0.x)), !select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, true, true), false), vec3<bool>(true, true & !global0.x, false)), select(select(!select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, false, false), vec3<bool>(false, true, global0.x)), !(!vec3<bool>(global0.x, true, false)), var_2.x <= (u_input.c.x | var_2.x)), !select(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, true), false), select(vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, false, global0.x), global0.x), global0.x), !any(select(global0.zx, vec2<bool>(false, true), global0.x))));
    let var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(42965u, 1u), vec2<u32>(77258u, 25864u));
    let var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1714f, var_1))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1064f, var_1)))))));
    var var_5 = func_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, var_0.x, u_input.a, 4294967295u), firstLeadingBit(var_0)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.x, var_0.x), vec3<u32>(44582u, var_3.x, u_input.a)), ~var_3.x)) ^ ~abs(var_3)).a.x;
    let var_6 = global0.yz;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_3.x, _wgslsmith_mod_u32(~u_input.a, max(40979u, var_0.x)), 55308u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(2381u, var_3.x, func_5(true, vec2<i32>(u_input.c.x, u_input.d), Struct_2(10064i, var_0.xyx, -25611i, vec3<i32>(42886i, u_input.b, 1i)), global0.x)), select(var_3.x, select(u_input.a, 3414u, false), true)), 907u));
}

