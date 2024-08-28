struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    var var_0 = select(select(vec2<bool>(any(vec4<bool>(arg_1, true, true, false)), select(u_input.b, u_input.b, true) > firstLeadingBit(global0.b.c.b)), select(select(global0.c.xx, !global0.c.xz, !global0.c.yz), !select(global0.c.zz, vec2<bool>(false, arg_1), global0.c.yy), select(!arg_1, arg_3.x < global0.a.a.x, true)), !select(!global0.c.zz, !vec2<bool>(false, global0.b.d), select(global0.c.xx, global0.c.zy, vec2<bool>(arg_2, arg_2)))), !global0.c.yy, true);
    var_0 = select(vec2<bool>(false, arg_1), !select(global0.c.zz, vec2<bool>(true && var_0.x, true), all(!vec4<bool>(arg_2, false, true, arg_2))), false);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b.c.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-679f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1424f, arg_0))))));
    var var_2 = global0.a;
    let var_3 = !(!(!arg_2));
    return arg_0;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * global0.a.a.x)))));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global0.a.a), _wgslsmith_f_op_vec2_f32(sign(global0.a.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.a)), global0.c.xz)), global0.b.c.b), Struct_2(_wgslsmith_mult_vec3_u32(~(~u_input.a), vec3<u32>(1u << (global0.b.a.x % 32u), u_input.a.x, ~arg_0)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1086f) * vec2<f32>(381f, 1000f))), vec2<f32>(294f, _wgslsmith_f_op_f32(func_3(1255f, global0.b.d, global0.c.x, vec2<f32>(-767f, -148f)))))), global0.a, global0.b.d), global0.c);
    var var_1 = _wgslsmith_clamp_i32(66834i, _wgslsmith_mod_i32(min(0i, 0i), global0.a.b), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.b & (i32(-1i) * -4955i), _wgslsmith_clamp_i32(abs(35787i), global0.a.b, global0.b.c.b), global0.a.b, 21135i), -(vec4<i32>(global0.a.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(0u, arg_2.x, global0.b.a.x, 4294967295u) % vec4<u32>(32u))) ^ countOneBits(~vec4<i32>(1i, 2147483647i, 1i, -1721i))));
    let var_2 = ~(~abs(~_wgslsmith_div_u32(arg_2.x, global0.b.a.x)));
    var_1 = u_input.b;
    return _wgslsmith_clamp_u32(~var_2, var_2, abs(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(4294967295u, arg_0), 1u, 31795u))) ^ 0u;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    var var_0 = 3236i;
    let var_1 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(func_2(0u, global0.a.a.x, u_input.a), ~global0.b.a.x)), ~0u), 1u, 0u, 0u);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global0.b.c.a.x, global0.b.d, arg_0.x, global0.b.b)), _wgslsmith_div_f32(global0.a.a.x, global0.a.a.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(917f)) * -324f))), -1798f)));
    var_0 = 2147483647i;
    let var_3 = global0.c.yz;
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!(!(!global0.c)));
    var_0 = _wgslsmith_clamp_u32(firstTrailingBit(countOneBits(_wgslsmith_mod_u32(u_input.c, 31103u))), ~(~11769u) & ~_wgslsmith_mod_u32(57265u, u_input.c), ~_wgslsmith_div_u32(~global0.b.a.x, firstTrailingBit(u_input.c))) < ~0u;
    var var_1 = vec4<u32>(~global0.b.a.x, 4294967295u, ~_wgslsmith_dot_vec2_u32(~(~u_input.a.zy), firstTrailingBit(vec2<u32>(64782u, 61777u))), ~(~_wgslsmith_mult_u32(1u, 28346u)) ^ _wgslsmith_add_u32(global0.b.a.x, u_input.a.x));
    let var_2 = ~select(firstLeadingBit(-vec4<i32>(-66011i, 0i, 20353i, 17050i)), reverseBits(vec4<i32>(u_input.b, ~(-50256i), abs(global0.b.c.b), global0.b.c.b)), vec4<bool>(global0.c.x == global0.b.d, !(!global0.c.x), func_1(select(vec4<bool>(global0.b.d, global0.b.d, global0.c.x, true), vec4<bool>(global0.c.x, global0.b.d, false, true), global0.b.d)), global0.b.d));
    var_1 = ~max(~vec4<u32>(~global0.b.a.x, var_1.x, 0u & var_1.x, u_input.c), firstTrailingBit(~vec4<u32>(var_1.x, var_1.x, u_input.a.x, 22461u)));
    global0 = Struct_3(Struct_1(global0.a.a, u_input.b), global0.b, vec3<bool>(true || global0.b.d, !(!(-402f <= global0.b.b.x)), global0.b.d));
    var var_3 = select(!(!vec3<bool>(global0.c.x, global0.b.d, !global0.b.d)), vec3<bool>(global0.c.x, all(!(!vec4<bool>(global0.c.x, true, false, global0.b.d))), true), true);
    var_3 = vec3<bool>(true, var_3.x, any(global0.c.xy) | !func_1(vec4<bool>(var_3.x, true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(7590i, var_2.x, vec4<f32>(global0.a.a.x, _wgslsmith_f_op_f32(max(global0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(797f - global0.b.c.a.x) * -2076f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(273f, -706f), _wgslsmith_f_op_f32(463f - global0.b.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f * global0.b.b.x))), global0.a.a.x));
}

