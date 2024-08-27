struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = vec4<f32>(-1661f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.x - global0.x))) - arg_1.x), global0.x), arg_1.x, -473f);
    let var_1 = vec2<bool>(false | arg_2.x, arg_2.x == arg_2.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(max(global0.x, arg_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(260f)) - -981f), 103f))));
    var var_3 = firstLeadingBit(~((~arg_0.a ^ arg_0.a) >> (~abs(vec4<u32>(15526u, arg_0.b, 38419u, u_input.b)) % vec4<u32>(32u))));
    var var_4 = Struct_2(arg_0);
    return _wgslsmith_f_op_f32(var_2.x - -270f);
}

fn func_2() -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(809f, global0.x, global0.x, -1079f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2127f, global0.x, global0.x, 948f) * vec4<f32>(global0.x, global0.x, global0.x, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1223f), -1041f, _wgslsmith_f_op_f32(global0.x * 1531f), 138f))));
    global0 = vec4<f32>(-612f, global0.x, -1623f, global0.x);
    let var_0 = select(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + -136f), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(u_input.c.x, 10012u, 0u, u_input.c.x), u_input.c.x, vec4<bool>(false, false, true, false), global0.x, global0.zyy), vec3<f32>(973f, 425f, global0.x), vec2<bool>(true, true)))))) == -668f, !(false && select(false, any(vec3<bool>(true, false, true)), select(false, false, false))), !(!all(vec3<bool>(true, true, true))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, -1902f) * vec4<f32>(-405f, -907f, global0.x, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.x, -1110f, -184f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1194f, 2880f, -260f))))) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(global0.x - 310f), all(vec3<bool>(var_0, var_0, false)))))), _wgslsmith_f_op_f32(sign(global0.x)), 192f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 776f, false)) + global0.x))));
    var var_1 = Struct_3(Struct_2(Struct_1(vec4<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), ~16304u, 12585u, u_input.b), ~abs(u_input.c.x), select(select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(var_0, var_0, var_0, false), true), select(vec4<bool>(false, var_0, true, true), vec4<bool>(var_0, var_0, false, var_0), true), select(vec4<bool>(false, var_0, false, true), vec4<bool>(var_0, false, true, var_0), var_0)), -1135f, _wgslsmith_div_vec3_f32(global0.zwx, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, 429f, 1121f)))))), select(select(vec3<bool>(true, var_0, any(vec4<bool>(var_0, var_0, true, var_0))), vec3<bool>(all(vec3<bool>(var_0, true, true)), !var_0, var_0), !select(vec3<bool>(false, var_0, true), vec3<bool>(false, var_0, false), vec3<bool>(var_0, false, var_0))), !(!select(vec3<bool>(var_0, true, true), vec3<bool>(var_0, true, false), vec3<bool>(false, var_0, false))), true), -283f, ~(~u_input.c.x));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -997f), global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1182f, -1881f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1236f + 1283f))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, 499f, -1118f, global0.x))))));
}

fn func_1() -> Struct_3 {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2())));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, 1u, u_input.c.x, u_input.b), vec4<u32>(1u, 0u, 27107u, 643u)), vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, u_input.c.x)), 73787u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(u_input.c.x, u_input.b, 0u, u_input.c.x), u_input.c.x, vec4<bool>(false, true, false, true), 351f, global0.zzx), global0.ywy, vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -1209f, global0.x))))))), !vec3<bool>(select(true, false, true), !all(vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true))), 870f, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_2(func_1().a.a);
    let var_2 = var_0.a.a.c;
    var var_3 = !(var_1.a.b <= 11995u);
    var var_4 = func_1().a.a.c.x;
    var var_5 = select(var_2.yw, var_0.b.xy, vec2<bool>(func_1().a.a.c.x, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-u_input.d.x | _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a, -33155i, u_input.a), 1i), select(-31013i, u_input.a, true), 17003i));
}

