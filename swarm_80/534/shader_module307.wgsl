struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: Struct_2) -> f32 {
    global0 = Struct_5(!vec4<bool>(u_input.a.x > -9994i, true, global0.a.x, 37752i < (48375i >> (arg_2.b.a % 32u))));
    global0 = Struct_5(global0.a);
    global0 = Struct_5(select(!vec4<bool>(global0.a.x, any(global0.a), global0.a.x, global0.a.x == arg_2.e), select(select(!global0.a, select(global0.a, global0.a, vec4<bool>(false, false, global0.a.x, true)), !arg_2.d.x), global0.a, vec4<bool>(true, true, all(vec4<bool>(arg_0.x, global0.a.x, arg_0.x, true)), true)), !all(global0.a)));
    let var_0 = Struct_5(!global0.a);
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(max(countOneBits(arg_2.a.x), -18393i), i32(-1i) * -6901i, 19981i) << (1u % 32u), u_input.a.x, ~(-_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_2.b.c.x, 2147483647i), u_input.a.x)), _wgslsmith_mult_i32(-33228i, firstTrailingBit(u_input.a.x)));
    return -1000f;
}

fn func_3() -> vec2<bool> {
    return !select(select(global0.a.zw, select(!vec2<bool>(false, global0.a.x), select(global0.a.yz, global0.a.zy, global0.a.zx), global0.a.x), vec2<bool>(false, !global0.a.x)), vec2<bool>(true, false), global0.a.xx);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(select(arg_1, vec3<bool>(arg_1.x, global0.a.x, true), vec3<bool>(arg_1.x, false, global0.a.x)), vec3<u32>(0u, 7829u, 1u), Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), Struct_1(12524u, vec4<u32>(18734u, arg_0.x, 4294967295u, arg_0.x), u_input.a, u_input.a.yz), vec3<u32>(37600u, 10826u, arg_0.x), vec2<bool>(false, arg_1.x), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(275f - 104f) + _wgslsmith_f_op_f32(round(325f)))) * vec2<f32>(-716f, _wgslsmith_f_op_f32(round(-175f))))));
    let var_1 = Struct_3(Struct_2(max(select(~vec2<i32>(u_input.a.x, -21212i), firstLeadingBit(u_input.a.yw), true), -max(vec2<i32>(11645i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x))), Struct_1(~abs(9522u), vec4<u32>(arg_0.x, 0u, arg_0.x, arg_0.x) ^ max(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(5122u, 0u, 3378u, arg_0.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), u_input.a.wx), ~vec3<u32>(4294967295u >> (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 32861u, 0u), vec4<u32>(17715u, arg_0.x, 1u, arg_0.x)), 1u | arg_0.x), select(select(arg_1.yy, arg_1.xy, !global0.a.zx), select(arg_1.yy, select(vec2<bool>(arg_1.x, false), vec2<bool>(false, true), global0.a.x), select(vec2<bool>(false, global0.a.x), arg_1.yx, global0.a.x)), !func_3()), false), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f) - _wgslsmith_f_op_f32(1911f + 1071f))))));
    global0 = Struct_5(select(!global0.a, !global0.a, true));
    var var_2 = Struct_2(-vec2<i32>(var_1.a.a.x & max(var_1.a.a.x, var_1.a.a.x), var_1.a.b.d.x), Struct_1(arg_0.x, vec4<u32>(~76455u, ~min(var_1.a.c.x, var_1.a.c.x), _wgslsmith_mod_u32(1u, arg_0.x), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(16229u, 1u, arg_0.x, arg_0.x), var_1.a.b.b), _wgslsmith_add_u32(arg_0.x, 11683u))), u_input.a, vec2<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.a.a.x, var_1.a.a.x), u_input.a.zyx)), _wgslsmith_mult_i32(firstTrailingBit(var_1.a.b.c.x), ~var_1.a.b.d.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(~(~16355u), 22508u, 46375u), arg_0), arg_1.xx, arg_1.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(-503f, -109f)), _wgslsmith_f_op_f32(-841f * 667f)))))));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-2070f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -647f), _wgslsmith_f_op_f32(step(-674f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(vec3<u32>(63126u, 34639u, 4294967295u), vec3<bool>(global0.a.x, global0.a.x, true))), -2072f)) - -516f))));
    var var_2 = Struct_3(Struct_2(abs(u_input.a.wz), Struct_1(countOneBits(4294967295u), vec4<u32>(~20476u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 107268u), vec2<u32>(4294967295u, 1u)), 1u, max(38408u, 13054u)), u_input.a, vec2<i32>(~(-2147483647i), u_input.a.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(4294967295u, 17825u, 1u))), _wgslsmith_add_vec3_u32(~vec3<u32>(41161u, 0u, 0u), firstTrailingBit(vec3<u32>(16901u, 8826u, 0u)))), select(global0.a.xw, global0.a.yx, true), any(!select(vec3<bool>(true, false, false), vec3<bool>(global0.a.x, global0.a.x, true), vec3<bool>(false, false, false)))), 762f);
    let var_3 = Struct_5(!global0.a);
    var_2 = Struct_3(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!vec3<bool>(true, var_3.a.x, var_3.a.x), ~var_2.a.c, var_2.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<u32>(73242u, var_2.a.b.a, var_2.a.c.x) & vec3<u32>(var_2.a.c.x, 41954u, var_2.a.b.a), vec3<bool>(var_2.a.d.x, global0.a.x, global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -950f) + -720f)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-107f, var_2.b, 842f)))))));
    global0 = Struct_5(global0.a);
    var_2 = Struct_3(Struct_2(u_input.a.xx, var_2.a.b, var_2.a.b.b.xyw & var_2.a.c, var_3.a.wy, false), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(var_2.b + var_1.x)))), var_1.x)), abs(_wgslsmith_clamp_vec3_u32(var_2.a.b.b.xzy, vec3<u32>(~var_2.a.b.b.x, ~var_2.a.b.a, var_2.a.b.b.x << (var_2.a.c.x % 32u)), select(var_2.a.c, max(var_2.a.c, var_2.a.b.b.wxw), select(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), vec3<bool>(true, global0.a.x, true), vec3<bool>(true, var_3.a.x, global0.a.x))))), abs(var_2.a.b.b), var_2.a.b.b);
}

