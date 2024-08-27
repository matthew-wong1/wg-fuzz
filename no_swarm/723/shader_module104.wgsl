struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 32>;

var<private> global1: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(722f))));
    let var_0 = Struct_2(Struct_1(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1529f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(690f * -854f) + -679f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1219f, 835f, 399f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(966f, -1000f, -1026f))))))), select(all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)) != any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-990f, 258f)) + 910f) < 1f, true), 4250i, vec3<bool>(true, true, true));
    global0 = array<Struct_5, 32>();
    var var_1 = 2147483647i;
    global0 = array<Struct_5, 32>();
    return _wgslsmith_f_op_f32(-577f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c.x * var_0.a.c.x) - var_0.a.c.x)))));
}

fn func_2() -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(-380f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(173f))) - 1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(432f * 790f), _wgslsmith_div_f32(-1819f, 1000f)) + 1000f), any(vec4<bool>(true, true, true, true)))));
    global0 = array<Struct_5, 32>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3())))))), 418f, -574f);
    var var_1 = Struct_2(Struct_1((u_input.a.x == 1u) == true, any(vec3<bool>(true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), 2226f, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(var_0.x, var_0.x)))), true, _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, _wgslsmith_add_i32(13864i, 1i)), abs(select(vec2<i32>(1263i, 0i), vec2<i32>(-2147483647i, 12232i), true)), true), _wgslsmith_mult_vec2_i32(-vec2<i32>(0i, -26744i), select(vec2<i32>(0i, -2147483647i), vec2<i32>(-2147483647i, -2147483647i), true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec3<bool>(false, true, false)), true), true));
    var var_2 = Struct_2(var_1.a, !var_1.b, ~_wgslsmith_div_i32(~select(-1i, var_1.c, var_1.b), 9418i), !(!vec3<bool>(!var_1.b, true, false)));
    return Struct_3(Struct_2(var_2.a, any(!var_2.d), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-5535i, 45894i, var_2.c, var_1.c), vec4<i32>(var_1.c, var_1.c, 29943i, var_1.c)) << (~_wgslsmith_div_u32(1u, 4294967295u) % 32u), select(!(!var_1.d), select(select(vec3<bool>(true, var_1.a.b, var_2.d.x), var_2.d, true), var_1.d, var_1.d), !select(var_1.d, vec3<bool>(false, false, false), var_1.a.b))), vec2<u32>(u_input.a.x, _wgslsmith_add_u32(1174u, max(~u_input.a.x, ~u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1501f))), all(vec3<bool>(false, false, any(select(var_1.d, vec3<bool>(var_2.a.a, var_1.a.b, var_1.b), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -1254f) + _wgslsmith_f_op_f32(sign(211f))))) + 1000f));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(-731f, arg_1.x, false));
    var var_1 = func_2();
    global0 = array<Struct_5, 32>();
    global1 = var_0;
    let var_2 = false;
    return Struct_1(false, select(_wgslsmith_f_op_f32(1821f - arg_1.x) != _wgslsmith_f_op_f32(arg_1.x + 1538f), true, arg_0) & all(!vec4<bool>(arg_0, false, true, var_2)), arg_1);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    return func_1(any(!vec4<bool>(false, false, arg_1.b, true)) && arg_1.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_0.c), vec3<f32>(-272f, -1470f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_1(true, arg_1.a.c, arg_1.c, -2756f).b)), func_2().a.c, 217f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, !(1i < abs(-1i >> (u_input.a.x % 32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1053f - 908f)), _wgslsmith_f_op_f32(f32(-1f) * -1163f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f)))));
    global1 = 1676f;
    let var_1 = func_4(func_1(select(any(select(vec4<bool>(var_0.b, false, false, true), vec4<bool>(var_0.b, var_0.b, true, false), vec4<bool>(var_0.a, true, var_0.a, false))), var_0.a, var_0.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.c, vec3<f32>(-693f, var_0.c.x, var_0.c.x))) * _wgslsmith_f_op_vec3_f32(var_0.c * var_0.c)), var_0.c, true)), min(~(-5649i), _wgslsmith_sub_i32(_wgslsmith_div_i32(4041i, 1i), ~1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(371f)) + -508f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1007f * var_0.c.x)))), func_2().a);
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), 1056f, var_0.a));
    let var_2 = Struct_5(all(!select(vec3<bool>(var_0.a, var_0.a, false), select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_0.b, var_1.a, true), vec3<bool>(true, var_1.b, var_0.b)), true)), _wgslsmith_mult_u32(~max(u_input.a.x, 4294967295u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) & u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(-var_1.c.x);
    var var_4 = select(!select(select(vec4<bool>(true, var_0.a, false, var_0.a), !vec4<bool>(true, true, true, var_1.b), var_2.b > u_input.a.x), select(select(vec4<bool>(var_0.b, true, var_1.b, true), vec4<bool>(var_0.b, false, false, var_1.b), true), vec4<bool>(var_0.b, var_1.a, var_2.a, var_2.a), false), !var_0.a), select(vec4<bool>(false, true, !var_1.b | func_4(Struct_1(var_1.b, var_1.b, var_0.c), Struct_2(var_1, var_1.a, -9683i, vec3<bool>(true, false, var_0.b))).b, false), vec4<bool>(all(vec3<bool>(true, true, true)), any(!vec2<bool>(var_1.a, var_0.a)), _wgslsmith_f_op_f32(step(var_1.c.x, 811f)) > _wgslsmith_f_op_f32(f32(-1f) * -1557f), func_2().a.a.b), select(select(select(vec4<bool>(false, false, var_0.b, var_0.b), vec4<bool>(var_0.a, false, true, var_0.b), false), vec4<bool>(true, var_2.a, true, var_2.a), select(vec4<bool>(var_1.a, true, false, true), vec4<bool>(false, var_0.b, false, true), false)), select(vec4<bool>(var_1.b, var_1.a, var_1.a, var_0.a), select(vec4<bool>(var_2.a, true, true, true), vec4<bool>(false, var_0.b, true, false), vec4<bool>(var_2.a, true, false, false)), var_2.a | var_1.b), select(true, true, var_0.b))), select(vec4<bool>(true, any(!vec4<bool>(false, var_1.b, true, false)), !var_2.a, select(var_2.a, var_0.b, false) | all(vec2<bool>(true, false))), !vec4<bool>(var_2.a, !var_2.a, var_1.c.x < var_0.c.x, false), vec4<bool>(false, false, !(!var_1.a), var_0.b & var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec3_u32(u_input.a, ~u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(259f, _wgslsmith_f_op_f32(-591f + -207f), 148f, 583f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), func_1(any(vec4<bool>(true, false, false, true)), _wgslsmith_f_op_vec3_f32(-var_1.c), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -1i, 0i), vec4<i32>(-13807i, 1i, 0i, 1i)), var_3).c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -155f), var_0.c.x)), var_0.c.x)), -firstLeadingBit(vec2<i32>(2819i, -30004i)) >> (~(~vec2<u32>(73161u, 50683u) ^ ~vec2<u32>(0u, u_input.a.x)) % vec2<u32>(32u)), -1000f, _wgslsmith_clamp_i32(func_2().a.c, _wgslsmith_sub_i32(19117i, 1i) >> (0u % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(24569i, 61339i, 25167i), _wgslsmith_mod_vec3_i32(vec3<i32>(-47376i, -2147483647i, 1i), vec3<i32>(46229i, -12762i, -504i)))) & 2147483647i);
}

