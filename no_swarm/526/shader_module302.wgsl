struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    var var_0 = vec4<f32>(1160f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(411f)), _wgslsmith_div_f32(global0.b.b.x, global0.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - global0.a)), 1f, -762f);
    let var_1 = abs(~1u);
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.ywx))), _wgslsmith_f_op_vec3_f32(max(var_0.zyz, global0.b.b))))), Struct_2(-796f, Struct_1(~global0.b.a, vec3<f32>(var_0.x, _wgslsmith_f_op_f32(1618f + var_0.x), _wgslsmith_f_op_f32(2276f * var_0.x)), global0.b.c, false), select(all(vec2<bool>(true, global0.c)), !(!global0.b.c.x), false), all(global0.b.c.zx), _wgslsmith_mod_u32(~(~23205u), countOneBits(_wgslsmith_add_u32(var_1, var_1)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, -135f))) - vec4<f32>(global0.a, global0.a, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -2003f, 107f, var_0.x), vec4<f32>(global0.b.b.x, -1533f, var_0.x, 457f), true)) - vec4<f32>(441f, -2075f, 2427f, -604f))))), global0.b.b, var_0.x);
    let var_3 = vec4<u32>(var_2.b.b.a, 4294967295u, 46462u, firstLeadingBit(_wgslsmith_clamp_u32(global0.b.a, ~(~0u), ~abs(60999u))));
    var var_4 = -(~(~firstTrailingBit(_wgslsmith_mod_i32(2147483647i, u_input.c.x))));
    return 746f;
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global0.b, false, true, _wgslsmith_clamp_u32(global0.b.a, global0.e, ~_wgslsmith_mult_u32(19155u, _wgslsmith_clamp_u32(92624u, global0.e, global0.b.a))));
    global0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1066f) - _wgslsmith_f_op_f32(f32(-1f) * -785f)))))), Struct_1(firstLeadingBit(~global0.e), global0.b.b, vec3<bool>(true, !global0.b.c.x, false), any(select(vec2<bool>(global0.d, global0.c), !global0.b.c.xy, any(global0.b.c.xx)))), global0.b.c.x, true, abs(_wgslsmith_add_u32(global0.b.a, global0.e ^ _wgslsmith_sub_u32(global0.b.a, 1u))));
    let var_0 = 2147483647i;
    global0 = Struct_2(3692f, global0.b, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2317f * -548f) * global0.a) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-3097f, global0.b.b.x, true)))), false, _wgslsmith_div_u32(1u, 1u));
    var var_1 = !global0.b.c.zy;
    return Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1732f), Struct_1(global0.e, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.b.x), global0.a), _wgslsmith_f_op_f32(-298f + -661f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, global0.a, var_1.x)))), !(!(!vec3<bool>(true, true, global0.c))), global0.c), global0.b.c.x, true, global0.b.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_3 {
    return Struct_3(global0.b.b, func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-932f, 859f, true)), _wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(-748f - -352f), _wgslsmith_f_op_f32(-arg_1.b.x))) * vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-1353f - _wgslsmith_f_op_f32(arg_0.x + arg_1.b.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(136f + 1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-294f * 197f), arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-132f - -276f) + _wgslsmith_f_op_f32(-arg_1.b.x)), -298f) - vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 246f)), _wgslsmith_div_f32(arg_1.b.x, arg_0.x))), _wgslsmith_f_op_f32(-arg_1.b.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = -u_input.c.x;
    let var_1 = arg_0;
    var var_2 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(func_1(arg_1.b.b.zy, var_1.b.b).b.e, 0u), arg_1.e), arg_1.e, max(~(~var_1.b.e), ~(var_1.b.e | global0.e)), ~(var_1.b.b.a & 1u));
    var var_3 = var_2.xz;
    let var_4 = func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b.b.yx) * var_1.c.wy)))), Struct_1(~select(arg_1.b.a, global0.e, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b.b)), !global0.b.c, any(select(select(vec4<bool>(true, true, arg_1.d, false), vec4<bool>(true, var_1.b.c, arg_1.c, true), vec4<bool>(arg_1.b.d, false, arg_0.b.d, false)), !vec4<bool>(arg_1.c, true, false, var_1.b.c), all(vec2<bool>(var_1.b.c, false)))))).b.b;
    return var_1.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(512f - global0.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a + global0.b.b.x)))), Struct_1(~43961u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.x, -1074f, global0.b.b.x)))), select(!vec3<bool>(global0.c, false, true), vec3<bool>(true, global0.b.d, true), false), u_input.b != min(-42956i, u_input.a.x))), func_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.b.b.xx), _wgslsmith_f_op_vec2_f32(global0.b.b.yz * global0.b.b.xz), select(vec2<bool>(global0.d, global0.c), vec2<bool>(false, false), global0.b.c.yz))))), Struct_1(_wgslsmith_dot_vec2_u32(max(vec2<u32>(44025u, global0.b.a), vec2<u32>(global0.b.a, global0.b.a)), ~vec2<u32>(global0.b.a, global0.b.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -443f, -397f) * vec3<f32>(global0.b.b.x, global0.a, global0.a)) * _wgslsmith_f_op_vec3_f32(-global0.b.b)), !global0.b.c, true)).b, 28437u);
    let var_1 = (-_wgslsmith_div_i32(1i, u_input.c.x) | u_input.b) & ~select(u_input.a.x, -(1i >> (0u % 32u)), func_1(_wgslsmith_f_op_vec2_f32(select(var_0.b.zx, var_0.b.yx, var_0.c.x)), Struct_1(1u, vec3<f32>(451f, var_0.b.x, 796f), global0.b.c, false)).b.d);
    let x = u_input.a;
    s_output = StorageBuffer(611u);
}

