struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -637f;

var<private> global1: f32 = 1929f;

var<private> global2: array<vec2<u32>, 4>;

var<private> global3: array<vec4<i32>, 24>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(239f * 264f), -896f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_div_f32(-416f, 938f)))));
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1474f, -1000f) - 211f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1426f, -367f)) - -287f)), ~(~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2119f)) * _wgslsmith_f_op_f32(sign(-627f))))));
    let var_1 = Struct_2(Struct_1(var_0.a.a, ~u_input.c.x, _wgslsmith_f_op_f32(abs(-1534f))));
    let var_2 = var_1;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a))))), _wgslsmith_f_op_f32(max(1002f, _wgslsmith_div_f32(var_1.a.c, -1015f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a, 878f)) - -1042f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-582f, var_1.a.c)));
    return 35124u;
}

fn func_2() -> Struct_3 {
    var var_0 = u_input.c.x >> (~func_3() % 32u);
    var var_1 = _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(-920f, _wgslsmith_f_op_f32(f32(-1f) * -1650f))));
    global3 = array<vec4<i32>, 24>();
    var_1 = -1048f;
    let var_2 = Struct_3(true, all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), all(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1706f + 1027f)) + _wgslsmith_f_op_f32(max(-206f, 682f))), 54988u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1492f - 480f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-232f, 697f), vec2<f32>(864f, -2329f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1109f, -832f))))), vec2<f32>(_wgslsmith_div_f32(746f, 943f), _wgslsmith_f_op_f32(1000f - -677f)))));
    return Struct_3(true, !var_2.b, Struct_1(_wgslsmith_f_op_f32(round(var_2.d.x)), firstLeadingBit(var_2.c.b), -722f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1525f, var_2.d.x))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-205f, var_2.d.x) + var_2.d)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1934f, -247f)), vec2<f32>(var_2.d.x, var_2.d.x))))));
}

fn func_1() -> vec3<f32> {
    var var_0 = func_2();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -116f), countOneBits(~u_input.c.x), _wgslsmith_f_op_f32(-var_0.d.x)));
    var var_2 = (var_1.a.b ^ _wgslsmith_dot_vec3_u32(u_input.c ^ abs(vec3<u32>(var_0.c.b, 1u, 10562u)), ~(vec3<u32>(u_input.c.x, 0u, 1u) << (vec3<u32>(92513u, 47365u, u_input.c.x) % vec3<u32>(32u))))) > (27821u >> ((75122u & var_0.c.b) % 32u));
    global3 = array<vec4<i32>, 24>();
    var var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.c.c - 138f))), _wgslsmith_div_u32(0u, var_0.c.b), var_0.d.x);
    return vec3<f32>(_wgslsmith_f_op_f32(-1163f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.d.x, -237f))))), _wgslsmith_div_f32(-126f, _wgslsmith_f_op_f32(f32(-1f) * -559f)), var_1.a.c);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    global2 = array<vec2<u32>, 4>();
    let var_0 = vec2<bool>(true, any(select(vec4<bool>(true, func_2().a, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true)), all(vec2<bool>(false, true)) != true)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - 2129f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + 630f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.x, -1201f, false)), -1000f))));
    let var_2 = 42462u;
    let var_3 = Struct_3(true, var_0.x, Struct_1(arg_1.x, arg_0.x, arg_2.x), _wgslsmith_f_op_vec2_f32(abs(arg_1.yy)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f) * arg_2.x), ~arg_3, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-470f, arg_2.x))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1()).x)), _wgslsmith_f_op_f32(floor(-272f)), arg_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f) * arg_1.a.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c, -1359f, 1374f, -658f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(169f, arg_1.a.a, arg_0.c, arg_1.a.a))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -408f), -1000f, arg_1.a.a, _wgslsmith_f_op_f32(-arg_1.a.c))));
    let var_1 = arg_1.a;
    var var_2 = !vec3<bool>(true, (arg_0.a == var_0.x) || all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), !(1u < arg_1.a.b) && (var_1.c >= arg_1.a.c));
    var var_3 = vec2<bool>(var_2.x, false);
    let var_4 = ~_wgslsmith_add_u32(~(~(~arg_0.b)), abs(var_1.b));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(473f, -310f)), -296f)), 12958u, -1660f), Struct_2(func_4(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 1u), global2[_wgslsmith_index_u32(0u, 4u)], vec2<u32>(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1()))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(877f, 1000f, -585f), vec3<f32>(341f, 173f, 1498f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, 159f, 1648f))), u_input.c.x)));
    global2 = array<vec2<u32>, 4>();
    global0 = -1706f;
    var var_1 = func_2().c;
    global0 = _wgslsmith_f_op_f32(step(537f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-292f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-170f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0.c)), var_1.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(926f, var_1.a, abs(1i | _wgslsmith_sub_i32(select(u_input.d.x, -4417i, true), _wgslsmith_div_i32(2147483647i, -2147483647i))));
}

