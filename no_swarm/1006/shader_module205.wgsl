struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 257f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(178f, -483f))));
    let var_1 = Struct_1(vec4<bool>((any(vec2<bool>(true, false)) || true) | (_wgslsmith_f_op_f32(round(-2830f)) >= _wgslsmith_f_op_f32(var_0 - -725f)), any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), any(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true))), -(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, 0i), vec3<i32>(u_input.b, u_input.b, u_input.b))));
    global0 = -1480f;
    global0 = -661f;
    var var_2 = var_1;
    return vec3<u32>(~u_input.c, 77948u, arg_0.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_3 {
    global0 = -613f;
    let var_0 = ~(~(~4294967295u));
    var var_1 = u_input.a << (func_3(vec4<u32>(~u_input.c, ~_wgslsmith_dot_vec3_u32(vec3<u32>(11218u, var_0, 4294967295u), u_input.a), arg_1.e, ~(var_0 ^ arg_1.e)), arg_1.a.x) % vec3<u32>(32u));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.x, -2528f, arg_1.d.a.x))) * _wgslsmith_div_f32(275f, _wgslsmith_div_f32(1081f, _wgslsmith_f_op_f32(-arg_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_div_f32(arg_1.a.x, arg_1.a.x)))));
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.x)) + _wgslsmith_f_op_f32(trunc(arg_1.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(-318f, arg_0.x))), 190f)), arg_1.a.yw);
    return arg_1;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    return arg_1.a.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    global0 = _wgslsmith_f_op_f32(abs(-1025f));
    global0 = -141f;
    let var_0 = false;
    let var_1 = -2147483647i;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(1i, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(157f, 1000f, -753f, 168f) * vec4<f32>(748f, -1201f, 317f, 1000f)), Struct_3(vec4<f32>(-1000f, 1036f, 717f, -191f), Struct_1(vec4<bool>(false, false, var_0, var_0), -4323i), var_1, Struct_1(vec4<bool>(var_0, false, false, var_0), var_1), 35705u)), select(vec4<bool>(var_0, var_0, var_0, false), !vec4<bool>(false, var_0, false, var_0), select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(var_0, false, true, var_0), var_0))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-377f, -1985f) - _wgslsmith_f_op_f32(423f - -1574f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(-1001f, -439f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)))) + -2341f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-892f)) + _wgslsmith_f_op_f32(func_1(u_input.a << (u_input.a % vec3<u32>(32u)), 42455u))), -192f, false)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f), 452f))) - 2101f);
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -865f) * _wgslsmith_f_op_f32(func_4(u_input.b, Struct_3(vec4<f32>(2083f, 593f, 1081f, 775f), Struct_1(vec4<bool>(true, false, false, true), 1i), 1i, func_2(vec4<f32>(1000f, 451f, 1107f, 845f), Struct_3(vec4<f32>(-818f, -1967f, 327f, -201f), Struct_1(vec4<bool>(true, true, false, false), u_input.b), u_input.b, Struct_1(vec4<bool>(false, true, false, true), -10010i), u_input.a.x)).b, 1u), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true)), false))))));
    global0 = 1000f;
    var var_0 = any(vec2<bool>(true, true));
    var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a, abs(0u))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -692f))))))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-447f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -215f))) - -2151f));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1290f, 842f)))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(448f, 217f, 127f, -1000f), vec4<f32>(213f, 161f, -1719f, 1059f), true)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-118f, 380f, 657f, -1000f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-575f, 379f, 129f, 173f), vec4<f32>(507f, 1807f, 966f, 350f))))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(938f, -1310f, -1000f, 1840f)), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1294f, -1149f, 1466f, -1190f) - vec4<f32>(-1442f, -257f, -276f, 344f)), Struct_1(vec4<bool>(true, false, false, true), 2147483647i), u_input.b, func_2(vec4<f32>(-1801f, 535f, -801f, 937f), Struct_3(vec4<f32>(-677f, 412f, -342f, 540f), Struct_1(vec4<bool>(false, false, true, true), u_input.b), -20313i, Struct_1(vec4<bool>(false, false, true, false), -7168i), u_input.c)).b, min(u_input.a.x, u_input.a.x)))).d, -9700i, Struct_1(vec4<bool>((u_input.b != u_input.b) != true, false, true, false), ~u_input.b), vec4<i32>(u_input.b, 2147483647i, u_input.b, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(839f, 1052f, 430f, -615f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-377f, -1293f, -262f, -1202f))), Struct_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(715f, 352f, 698f, -116f), vec4<f32>(359f, -839f, -134f, -484f))), func_2(vec4<f32>(-1000f, 355f, -231f, 1805f), Struct_3(vec4<f32>(-375f, 1000f, 794f, 488f), Struct_1(vec4<bool>(true, true, true, true), u_input.b), 28933i, Struct_1(vec4<bool>(true, true, false, false), 31920i), u_input.c)).d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)), Struct_1(vec4<bool>(false, true, true, false), u_input.b), func_2(vec4<f32>(895f, -645f, -223f, 1084f), Struct_3(vec4<f32>(534f, 905f, 739f, 298f), Struct_1(vec4<bool>(false, true, false, true), -17117i), 0i, Struct_1(vec4<bool>(false, false, true, false), u_input.b), 4294967295u)).e)).c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.x), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.c, u_input.c)), max(abs(u_input.a.yx), _wgslsmith_add_vec2_u32(u_input.a.zz, u_input.a.xy))));
}

