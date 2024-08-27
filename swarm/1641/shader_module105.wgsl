struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: i32,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
    c: Struct_3,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: f32) -> f32 {
    let var_0 = vec2<bool>(arg_1 >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) * arg_1), -2162f)), all(vec2<bool>(!all(vec2<bool>(arg_0, arg_0)), !arg_0)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-498f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(448f * -1384f)), arg_1)) * 1019f);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4, arg_3: u32) -> bool {
    let var_0 = arg_2.b.a.b.a.x;
    var var_1 = _wgslsmith_add_u32(22070u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 83529u, 46611u, u_input.c), vec4<u32>(arg_3, 4294967295u, u_input.c, u_input.c)), ~min(vec4<u32>(59300u, arg_3, u_input.c, 58634u), vec4<u32>(1u, u_input.c, u_input.c, u_input.c))));
    var var_2 = 230f;
    var var_3 = arg_2.d;
    let var_4 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.c, _wgslsmith_mod_u32(arg_3, 0u) ^ 13613u, _wgslsmith_clamp_u32(arg_3, 1u, arg_3), ~abs(4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_3, 23220u, arg_3, 17154u), ~vec4<u32>(arg_3, u_input.c, arg_3, 40350u)), vec4<u32>(130533u, u_input.c, u_input.c, ~arg_3));
    return arg_2.b.a.c;
}

fn func_2() -> vec2<bool> {
    var var_0 = func_4(false, Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -316f), _wgslsmith_f_op_f32(max(-989f, 458f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1295f, -566f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(288f, 1132f)))))), Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-265f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, -1090f))), true)), Struct_3(Struct_2(~(-32310i), Struct_1(vec2<f32>(2328f, 284f)), true, _wgslsmith_f_op_f32(-245f + 157f)), vec3<bool>(true, true, true)), u_input.b, !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), u_input.c);
    let var_1 = _wgslsmith_f_op_f32(-2017f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(329f, 580f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1342f, -1000f)) * _wgslsmith_f_op_f32(select(-148f, 985f, true))))))));
    var var_2 = Struct_3(Struct_2(25183i, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, 807f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1, var_1), vec2<f32>(var_1, 1000f))))), false & (_wgslsmith_f_op_f32(-212f * var_1) < _wgslsmith_f_op_f32(var_1 * var_1)), _wgslsmith_f_op_f32(func_3(true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_1))))), !(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))));
    var_0 = func_4(var_2.a.d > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a.b.a.x), _wgslsmith_f_op_f32(abs(var_2.a.b.a.x)))) * var_2.a.b.a.x), Struct_1(var_2.a.b.a), Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.a.d, 742f)), _wgslsmith_f_op_f32(var_1 - 1048f)), 474f), Struct_3(Struct_2(i32(-1i) * -23110i, Struct_1(vec2<f32>(var_1, var_1)), var_2.a.c, _wgslsmith_f_op_f32(floor(var_2.a.d))), !(!vec3<bool>(var_2.a.c, true, false))), u_input.a, !select(select(vec4<bool>(true, var_2.a.c, false, true), vec4<bool>(true, true, false, var_2.a.c), vec4<bool>(var_2.b.x, false, var_2.b.x, var_2.a.c)), vec4<bool>(var_2.a.c, true, var_2.b.x, var_2.a.c), select(vec4<bool>(false, false, var_2.a.c, true), vec4<bool>(var_2.a.c, var_2.b.x, var_2.b.x, var_2.b.x), vec4<bool>(false, false, false, var_2.a.c)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(u_input.c, u_input.c), countOneBits(_wgslsmith_mod_u32(31948u, 1u))), ~(~vec2<u32>(u_input.c, u_input.c) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 4294967295u)) % vec2<u32>(32u)))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.b.a - vec2<f32>(769f, var_1)) * _wgslsmith_f_op_vec2_f32(floor(var_2.a.b.a)))) + _wgslsmith_f_op_vec2_f32(var_2.a.b.a - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-938f, -1272f)), _wgslsmith_f_op_vec2_f32(max(var_2.a.b.a, var_2.a.b.a))))));
    return select(vec2<bool>(true, true), select(vec2<bool>(func_4(!var_2.a.c, var_2.a.b, Struct_4(570f, Struct_3(Struct_2(22393i, var_2.a.b, var_2.b.x, var_1), vec3<bool>(false, true, var_2.a.c)), u_input.a, vec4<bool>(var_2.b.x, true, var_2.a.c, true)), 1u), !(true || var_2.b.x)), vec2<bool>(any(!vec4<bool>(true, true, var_2.b.x, true)), var_2.a.c), select(any(select(vec2<bool>(var_2.b.x, true), vec2<bool>(false, var_2.a.c), var_2.b.zy)), _wgslsmith_div_f32(-1000f, var_2.a.b.a.x) <= _wgslsmith_f_op_f32(f32(-1f) * -293f), all(vec3<bool>(var_2.b.x, var_2.a.c, var_2.a.c)))), all(!(!vec4<bool>(true, var_2.a.c, var_2.a.c, var_2.b.x))));
}

fn func_1() -> bool {
    let var_0 = u_input.b;
    var var_1 = select(select(func_2(), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(!func_2(), vec2<bool>(true, true), select(vec2<bool>(all(vec3<bool>(false, false, false)), true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<bool>(!(all(vec4<bool>(true, true, true, false)) & false), true));
    let var_2 = var_1.x;
    var_1 = vec2<bool>(var_1.x, true);
    var var_3 = Struct_2(min(u_input.b, ~(-4499i) & -var_0), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(322f * 1223f)), 1f)), var_1.x, -1105f);
    return false;
}

fn func_5(arg_0: vec3<bool>) -> vec3<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(107f * -1047f) - -2064f), _wgslsmith_f_op_f32(-1129f * _wgslsmith_f_op_f32(f32(-1f) * -105f))) - _wgslsmith_f_op_f32(f32(-1f) * -2644f)), _wgslsmith_f_op_f32(f32(-1f) * -435f), _wgslsmith_f_op_f32(f32(-1f) * -927f), 1138f);
    return abs(vec3<u32>(select(u_input.c, 0u | u_input.c, false), _wgslsmith_dot_vec2_u32(vec2<u32>(32989u, 1u), ~vec2<u32>(4294967295u, u_input.c)), u_input.c)) << (~vec3<u32>(u_input.c, u_input.c, ~(u_input.c | 4294967295u)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), 6193u >= u_input.c));
    let var_1 = _wgslsmith_clamp_u32(4294967295u, ~abs(38278u), u_input.c) << (u_input.c % 32u);
    var var_2 = func_5(select(select(!select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(true, false, true)), vec3<bool>(var_0, var_0, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, var_0), vec3<bool>(false, true, false)), true), vec3<bool>(any(!vec3<bool>(var_0, var_0, false)), func_1(), any(select(vec3<bool>(var_0, false, var_0), vec3<bool>(false, false, true), vec3<bool>(var_0, var_0, var_0))))));
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-293f)) - _wgslsmith_f_op_f32(func_3(all(vec4<bool>(var_0, true, true, var_0)), _wgslsmith_f_op_f32(179f * 1284f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1424f - _wgslsmith_f_op_f32(f32(-1f) * -398f)) + -223f)));
    let var_4 = vec4<u32>(45915u, 0u, var_1 | 0u, 4294967295u);
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.b, ~_wgslsmith_div_i32(-13021i, ~(-2526i))), var_3.a);
}

