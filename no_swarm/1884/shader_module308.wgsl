struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(3908u, 1u, 4294967295u);

var<private> global1: vec2<i32> = vec2<i32>(1i, -31982i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = u_input.b.zy >> (~vec2<u32>(u_input.a.x, ~global0.x) % vec2<u32>(32u));
    let var_1 = Struct_3(!vec4<bool>(arg_3.b, true, true, any(vec2<bool>(arg_2.b, false))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, arg_0.a.a, -956f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-620f, arg_3.a, arg_3.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-369f, 915f, arg_3.a)), select(vec3<bool>(arg_3.b, true, arg_2.b), vec3<bool>(true, arg_2.b, arg_1.a.b), vec3<bool>(arg_0.a.b, false, arg_1.a.b))))))), arg_2);
    var var_2 = var_1.a.xx;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-519f, 681f), _wgslsmith_f_op_f32(step(arg_2.a, arg_1.a.a)), !arg_0.a.b))), arg_3.b));
    global1 = vec2<i32>(var_0.x, -firstTrailingBit(global1.x)) << (vec2<u32>(32815u, 17917u) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2457f - arg_2.a)))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = arg_2.a;
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 725f) + vec2<f32>(-1308f, arg_2.a.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(783f, -850f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1142f, -1000f) - vec2<f32>(arg_2.a.a, 334f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_3.a, arg_3.a))))))), !arg_0, max(abs(~vec3<u32>(3100u, 12486u, u_input.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, select(4294967295u, global0.x, true), global0.x), ~(~vec3<u32>(4294967295u, 0u, 20752u)))), Struct_2(var_0), Struct_1(-1000f, !arg_0.x));
    var var_2 = var_1;
    let var_3 = select(select(var_1.b, select(select(vec3<bool>(false, false, false), !arg_0, vec3<bool>(arg_0.x, false, arg_3.b)), select(vec3<bool>(true, var_0.b, var_1.d.a.b), select(arg_0, vec3<bool>(arg_2.a.b, false, arg_3.b), false), true), select(!var_2.b, vec3<bool>(true, var_2.e.b, arg_1), arg_2.a.b || arg_3.b)), vec3<bool>(false, var_2.b.x, arg_3.b)), var_1.b, arg_0);
    var var_4 = arg_2;
    return !all(vec3<bool>(!(-35546i <= global1.x), true, true));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    var var_0 = -24998i;
    let var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_0.a.a), all(arg_3))), Struct_2(arg_0.a), Struct_1(_wgslsmith_f_op_f32(abs(arg_0.a.a)), false), Struct_1(arg_0.a.a, all(select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_3.x), vec2<bool>(arg_3.x, false)), vec2<bool>(true, true), vec2<bool>(arg_0.a.b, false))))));
    var var_3 = ~vec3<u32>(~countOneBits(firstTrailingBit(arg_1)), 3507u << (u_input.a.x % 32u), u_input.a.x);
    global1 = -max(firstLeadingBit(select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1i, global1.x), vec2<bool>(false, arg_0.a.b)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, var_3.x), vec2<u32>(global0.x, arg_1)) % vec2<u32>(32u))), vec2<i32>(-1i) * -(u_input.b.yw & u_input.b.yy));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))) + _wgslsmith_f_op_f32(arg_0.a.a * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1803f)) + _wgslsmith_f_op_f32(exp2(arg_0.a.a)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    let var_0 = -188f;
    return _wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(534f, all(arg_1.a.zz))), 4294967295u, func_4(vec3<bool>(!(!arg_0.b), any(arg_1.a), arg_0.b), !(!arg_0.b) | arg_0.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(arg_0), Struct_2(arg_0), arg_1.c, arg_1.c)), any(vec2<bool>(arg_0.b, false)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a))), arg_1.c.b)), !arg_1.a));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_5 {
    global0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(~0u, select(4294967295u, u_input.a.x, true)), firstTrailingBit(4294967295u), u_input.a.x >> (u_input.a.x % 32u)), vec3<u32>(~(~global0.x) << (~_wgslsmith_dot_vec2_u32(u_input.a, global0.xx) % 32u), global0.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, ~global0.x), _wgslsmith_add_u32(min(35106u, 22023u), 1539u))), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global0.x), vec2<u32>(u_input.a.x, u_input.a.x)) ^ u_input.a.x, u_input.a.x, ~11568u));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, arg_0.a)), vec3<f32>(-2064f, arg_0.a, 1000f)))))));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    var var_2 = arg_0;
    let var_3 = Struct_5(~countOneBits(~u_input.a.x), arg_0);
    return var_3;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<i32> {
    let var_0 = func_6(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_1(-301f, arg_0.b), Struct_3(vec4<bool>(false, true, false, false), vec3<f32>(arg_0.a, -970f, arg_0.a), Struct_1(1271f, arg_0.b)))))) * -389f), false), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(-firstLeadingBit(u_input.b.xx), u_input.b.ww), select(u_input.b.zx, ~_wgslsmith_clamp_vec2_i32(u_input.b.yy, vec2<i32>(global1.x, global1.x), u_input.b.zx), !(!vec2<bool>(arg_0.b, arg_0.b)))));
    let var_1 = _wgslsmith_clamp_u32(~var_0.a, _wgslsmith_dot_vec3_u32(countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.a, var_0.a), vec3<u32>(u_input.a.x, 52310u, global0.x))), ~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(42802u, u_input.a.x, global0.x)), vec3<u32>(1u, 41169u, global0.x))), global0.x);
    global0 = select(vec3<u32>(4294967295u, ~(~u_input.a.x), var_0.a), vec3<u32>(_wgslsmith_add_u32(~(~var_0.a), ~39392u), select(~global0.x, 1u, true) & (~4294967295u ^ ~var_1), 23666u), func_6(Struct_1(1240f, all(select(vec2<bool>(true, var_0.b.b), vec2<bool>(false, false), vec2<bool>(true, arg_0.b)))), u_input.b.wy).b.b);
    var var_2 = func_6(var_0.b, reverseBits(u_input.b.wz) & u_input.b.wz).b;
    var var_3 = arg_0.b;
    return u_input.b.wy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(func_1(Struct_1(-2092f, true), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1804f + 2495f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2334f * 310f), _wgslsmith_f_op_f32(f32(-1f) * -1095f)))));
    let var_0 = vec4<u32>(4829u, ~(~firstLeadingBit(_wgslsmith_mult_u32(global0.x, global0.x))), global0.x, ~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(-vec2<i32>(-13871i, _wgslsmith_mult_i32(-1i, u_input.c)), u_input.b.yw));
}

