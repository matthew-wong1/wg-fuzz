struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(arg_0, Struct_1(!vec4<bool>(!arg_0.a.x, arg_0.e.x > arg_0.e.x, all(vec4<bool>(false, true, arg_0.a.x, false)), any(vec3<bool>(arg_0.a.x, false, false))), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(28071u, u_input.b.x, 39397u, arg_0.b), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4304u))), vec3<u32>(abs(u_input.b.x), 27296u, 1u), vec2<i32>(arg_0.d.x & min(u_input.c.x, 2147483647i), u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - _wgslsmith_f_op_f32(-1903f - 657f)), arg_0.e.x)), u_input.b.wzz, u_input.b.x, arg_0);
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32((arg_0.d.x ^ u_input.c.x) << (_wgslsmith_mod_u32(1u, 9838u) % 32u), 2147483647i), 63922i & _wgslsmith_clamp_i32(~1i, ~var_0.b.d.x, -arg_0.d.x), -firstTrailingBit(_wgslsmith_add_i32(-17631i, u_input.c.x)), ~u_input.c.x), vec4<i32>(firstTrailingBit(var_0.a.d.x), arg_0.d.x, -max(var_0.a.d.x, arg_0.d.x), i32(-1i) * -6031i), -u_input.a);
    let var_2 = var_0;
    return ~(~_wgslsmith_mult_u32(~firstLeadingBit(4294967295u), var_0.e.b | ~u_input.b.x));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    return Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x != u_input.a.x, true, true, reverseBits(2147483647i) < u_input.c.x), !vec4<bool>(true, true, true, select(true, false, true))), func_3(Struct_1(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), 832u, _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x) >> (u_input.b.yxw % vec3<u32>(32u)), ~u_input.b.wyy), select(~vec2<i32>(u_input.c.x, 0i), -u_input.a.ww, any(vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(157f * -1000f), _wgslsmith_f_op_f32(418f - 161f)))), ~u_input.b.xzw, var_0.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1457f, 929f), vec2<f32>(-1160f, 219f))))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(103f, -323f) * vec2<f32>(785f, -373f)), vec2<f32>(546f, 826f))))));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1256f * 1306f)));
    var var_2 = -2147483647i;
    var_2 = -27922i;
    let var_3 = firstTrailingBit(max(-firstLeadingBit(u_input.a), u_input.a));
    return arg_1.e;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    var var_0 = Struct_2(func_4(u_input.b.x, Struct_2(func_2(), arg_0.e, select(_wgslsmith_sub_vec3_u32(u_input.b.xxy, arg_0.a.c), ~vec3<u32>(118985u, arg_0.c.x, 53301u), select(arg_0.b.a.zzy, vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x), false)), 4294967295u, Struct_1(func_2().a, u_input.b.x & arg_0.e.b, abs(vec3<u32>(66220u, arg_0.d, arg_0.a.c.x)), u_input.c, _wgslsmith_f_op_vec2_f32(arg_0.a.e - vec2<f32>(arg_0.a.e.x, -863f))))), Struct_1(vec4<bool>(true, true, !arg_0.e.a.x, true), ~_wgslsmith_mult_u32(4294967295u, min(arg_0.a.b, 0u)), ~(~_wgslsmith_add_vec3_u32(u_input.b.www, vec3<u32>(1u, u_input.b.x, 9344u))), -min(arg_0.b.d, arg_0.a.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(462f, _wgslsmith_f_op_f32(-arg_0.a.e.x)))), ~(~vec3<u32>(~arg_0.a.c.x, _wgslsmith_add_u32(u_input.b.x, arg_0.e.b), func_4(23420u, Struct_2(Struct_1(vec4<bool>(arg_0.e.a.x, arg_0.e.a.x, false, arg_0.a.a.x), u_input.b.x, vec3<u32>(1u, 1u, arg_0.c.x), u_input.a.ww, vec2<f32>(arg_0.b.e.x, arg_0.a.e.x)), arg_0.b, vec3<u32>(0u, u_input.b.x, arg_0.a.b), 13754u, arg_0.a)).b)), 0u, arg_0.b);
    var var_1 = min(arg_0.b.d.x >> (0u % 32u), ~0i);
    var var_2 = func_4(var_0.b.c.x, Struct_2(arg_0.b, func_2(), vec3<u32>(5664u, 0u, ~func_2().c.x), countOneBits(~arg_0.c.x & 16434u), func_4(arg_0.e.c.x, arg_0))).b;
    let var_3 = arg_0.a.a;
    let var_4 = vec3<u32>(var_0.a.b, 1u, ~u_input.b.x);
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yx, vec3<u32>(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(4294967295u, u_input.b.x)), firstLeadingBit(~func_1(Struct_2(Struct_1(vec4<bool>(false, true, false, true), u_input.b.x, vec3<u32>(1u, u_input.b.x, u_input.b.x), u_input.c, vec2<f32>(965f, -1000f)), Struct_1(vec4<bool>(false, true, true, false), 4294967295u, vec3<u32>(u_input.b.x, 61845u, 1u), u_input.c, vec2<f32>(-1000f, -186f)), vec3<u32>(19718u, 46392u, 62528u), 46637u, Struct_1(vec4<bool>(false, true, true, false), 21613u, vec3<u32>(44954u, 1u, u_input.b.x), u_input.a.ww, vec2<f32>(-1399f, -1000f))), 21878i)), u_input.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(1u), 0u), ~(vec2<u32>(u_input.b.x, u_input.b.x) ^ vec2<u32>(u_input.b.x, 102868u))) & u_input.b.wx);
}

