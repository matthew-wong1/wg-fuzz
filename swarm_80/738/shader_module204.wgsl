struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(581f, -1000f) * vec2<f32>(1573f, 2058f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-142f, 801f)))))))));
    var_0 = vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -933f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x + -332f)))), var_0.x));
    var var_2 = u_input.d.x;
    var_0 = vec2<f32>(1000f, -990f);
    return -u_input.c;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(true, vec3<u32>(4294967295u, 4294967295u, _wgslsmith_mult_u32(u_input.a & ~1u, u_input.a << (14697u % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(-336f, -986f)), 1130f)))));
    let var_1 = select(!vec3<bool>(var_0.a, var_0.a, var_0.a), !select(vec3<bool>(all(vec2<bool>(var_0.a, false)), true, true), !select(vec3<bool>(var_0.a, true, false), vec3<bool>(false, true, var_0.a), true), any(select(vec4<bool>(var_0.a, true, true, var_0.a), vec4<bool>(true, var_0.a, var_0.a, var_0.a), var_0.a))), vec3<bool>(var_0.a, !all(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)) && var_0.a, true));
    let var_2 = var_0.a;
    let var_3 = ~(-func_3((428f > var_0.c.x) | var_1.x));
    let var_4 = vec3<i32>(~var_3.x, u_input.b, var_3.x);
    return Struct_2(550f, var_1);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = vec4<i32>(func_3(!all(vec3<bool>(false, arg_2.b.x, false))).x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(i32(-1i) * -1i, u_input.d.x), u_input.c.x), -66536i, u_input.d.x);
    var var_1 = arg_3.b.x;
    var_1 = u_input.a;
    var_1 = u_input.a;
    let var_2 = select(!vec4<bool>(all(!vec2<bool>(arg_2.b.x, false)), true, true, true), !(!(!select(vec4<bool>(true, false, arg_2.b.x, true), vec4<bool>(false, arg_2.b.x, arg_1.b.x, arg_2.b.x), vec4<bool>(arg_3.a, true, arg_3.a, arg_1.b.x)))), !(!select(vec4<bool>(arg_2.b.x, true, arg_3.a, arg_1.b.x), select(vec4<bool>(false, arg_1.b.x, true, arg_3.a), vec4<bool>(false, arg_1.b.x, arg_2.b.x, arg_1.b.x), vec4<bool>(false, arg_2.b.x, arg_1.b.x, arg_1.b.x)), select(vec4<bool>(false, arg_1.b.x, true, arg_2.b.x), vec4<bool>(arg_3.a, false, arg_1.b.x, arg_3.a), vec4<bool>(true, true, arg_3.a, arg_1.b.x)))));
    return arg_1.b.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    let var_0 = ~u_input.b;
    let var_1 = vec2<bool>(true, !func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(222f, arg_2, 585f))), Struct_2(-1025f, vec3<bool>(true, true, true)), func_2(), Struct_1(all(vec2<bool>(true, false)), ~vec3<u32>(30549u, 0u, u_input.a), vec2<f32>(arg_2, -1400f))));
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(56677u, arg_1), countOneBits(u_input.a)), ~_wgslsmith_div_u32(1u, arg_1), arg_1) >> (~(select(vec3<u32>(4294967295u, 13219u, 32221u), vec3<u32>(0u, u_input.a, 41165u), false) | vec3<u32>(u_input.a, 54100u, arg_1)) % vec3<u32>(32u)), ~(~countOneBits(vec3<u32>(0u, 1u, u_input.a)) ^ countOneBits(max(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(arg_1, arg_1, 0u)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, 1080f, -506f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1498f, -122f, -376f))) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2))), arg_2, _wgslsmith_f_op_f32(-func_2().a))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-112f))), 922f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1092f + arg_0.x) * arg_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -471f)))));
    var var_4 = arg_1;
    return Struct_1(_wgslsmith_f_op_f32(-1677f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_2))))) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_3.x, 527f)), _wgslsmith_div_f32(667f, arg_0.x), !any(vec3<bool>(true, var_1.x, var_1.x)))), vec3<u32>(70272u, ~1u | _wgslsmith_add_u32(arg_1, 1u), ~arg_1), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(188f, var_3.x)) + var_3.zy), vec2<f32>(1743f, arg_0.x), select(var_1, !var_1, !var_1))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(561f, 303f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1158f, -1051f) * vec2<f32>(718f, 436f)))))), 11221u, 1f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - var_0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1477f)), var_0.c.x), 1397f);
    var var_2 = func_2();
    let var_3 = func_2();
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1723f - _wgslsmith_f_op_f32(-func_1(var_1.wy, u_input.a, var_3.a).c.x))))));
    let var_5 = min(~vec4<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -17979i, 2672i), ~u_input.c), (u_input.c.x & -2147483647i) >> (1u % 32u), u_input.c.x), vec4<i32>(_wgslsmith_sub_i32(-7794i, -2147483647i) & _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d.x, 12868i), firstTrailingBit(u_input.c.xx)), ~min(u_input.d.x, ~u_input.d.x), (u_input.b & 0i) & abs(_wgslsmith_clamp_i32(u_input.c.x, 1i, 66172i)), ~abs(25826i)));
    var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -844f))), !(!vec3<bool>(var_3.b.x, var_2.b.x, var_0.a & var_3.b.x)));
    var_0 = func_1(var_0.c, var_0.b.x, 907f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(588f - func_2().a), var_0.c, var_5.x, 4294967295u);
}

