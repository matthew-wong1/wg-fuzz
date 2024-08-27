struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: vec4<bool>,
    e: u32,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> vec4<i32> {
    let var_0 = u_input.e.x;
    global0 = array<vec3<u32>, 15>();
    var var_1 = Struct_5(-_wgslsmith_add_i32(u_input.b.x, 1i), vec2<bool>(true, arg_0.x), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1851f)))))), Struct_3(arg_0.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(109f, 306f, 254f), vec3<f32>(1116f, 622f, 863f), arg_0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1810f, -1883f, -281f))))));
    let var_2 = _wgslsmith_div_vec2_f32(var_1.d.b.yz, _wgslsmith_f_op_vec2_f32(abs(var_1.c)));
    var var_3 = u_input.d.x | u_input.a.x;
    return select(u_input.b, _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_add_i32(~var_1.a, var_1.a), -54476i, u_input.c.x)), vec4<bool>(true, true, true, false));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> u32 {
    var var_0 = ~firstLeadingBit(vec4<u32>(u_input.d.x, ~firstLeadingBit(26235u), u_input.d.x, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(11821u, u_input.a.x), 15u)], global0[_wgslsmith_index_u32(19130u, 15u)])));
    var var_1 = arg_0.e;
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1835f), arg_0.c, select(!select(!arg_0.d, select(arg_0.d, vec4<bool>(arg_0.c.b.a, false, arg_0.c.b.a, arg_0.c.b.a), arg_0.d), vec4<bool>(arg_0.c.b.a, false, arg_0.c.b.a, arg_0.c.b.a)), vec4<bool>(any(vec4<bool>(arg_0.c.b.a, arg_0.d.x, false, arg_0.d.x)), false, any(vec4<bool>(true, false, false, arg_0.c.b.a)) || (true | arg_0.c.b.a), true), true), var_0.x);
    let var_3 = arg_0;
    let var_4 = arg_0.e >> (abs(_wgslsmith_mult_u32(var_3.e << (firstTrailingBit(var_2.e) % 32u), _wgslsmith_sub_u32(1u, var_2.e & 0u))) % 32u);
    return 4877u;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_5 {
    let var_0 = Struct_2(_wgslsmith_add_u32(15285u & func_4(Struct_4(-875f, 1642f, Struct_2(u_input.d.x, Struct_1(arg_0.a, vec4<i32>(-2147483647i, -24358i, 40269i, 63693i), u_input.e.wz, vec2<u32>(0u, 4294967295u))), vec4<bool>(arg_0.a, arg_0.a, true, true), u_input.a.x), func_3(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a))), ~u_input.a.x), Struct_1(any(vec4<bool>(true, -644f != arg_0.b.x, any(vec2<bool>(true, arg_0.a)), any(vec2<bool>(false, false)))), vec4<i32>(reverseBits(abs(u_input.c.x)), _wgslsmith_mod_i32(arg_1, -7135i), u_input.c.x, _wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(1i, arg_1))), u_input.a.zz, min(u_input.d, ~u_input.a.yz) & abs(vec2<u32>(0u, u_input.d.x))));
    global0 = array<vec3<u32>, 15>();
    let var_1 = Struct_1(all(select(!(!vec4<bool>(true, false, arg_0.a, true)), select(vec4<bool>(arg_0.a, arg_0.a, false, true), vec4<bool>(var_0.b.a, var_0.b.a, arg_0.a, arg_0.a), !vec4<bool>(true, true, false, arg_0.a)), true)), vec4<i32>(-1i, 1i, var_0.b.b.x, arg_1), vec2<u32>(~(13415u << (_wgslsmith_mod_u32(var_0.b.c.x, var_0.a) % 32u)), ~_wgslsmith_add_u32(~var_0.a, _wgslsmith_add_u32(u_input.d.x, var_0.a))), vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(119204u), _wgslsmith_sub_u32(36293u, var_0.b.d.x)) >> (~min(u_input.e.x, 110684u) % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.c.x, var_0.a), vec2<u32>(var_0.b.d.x, var_0.b.c.x))));
    var var_2 = !var_0.b.a || !(!(!all(vec4<bool>(var_0.b.a, false, false, false))));
    let var_3 = Struct_3(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)));
    return Struct_5(1i, select(select(vec2<bool>(0i == arg_1, false), select(vec2<bool>(var_1.a, true), vec2<bool>(var_0.b.a, arg_0.a), select(vec2<bool>(true, arg_0.a), vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_0.b.a))), select(true, !arg_0.a, any(vec3<bool>(var_3.a, var_3.a, arg_0.a)))), vec2<bool>(all(vec2<bool>(var_0.b.a, true)), true), false), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))), arg_0);
}

fn func_5(arg_0: i32, arg_1: Struct_5, arg_2: Struct_5) -> Struct_2 {
    global0 = array<vec3<u32>, 15>();
    let var_0 = !(!(arg_1.b.x & true));
    let var_1 = Struct_2(func_4(Struct_4(_wgslsmith_f_op_f32(-152f - -1169f), _wgslsmith_f_op_f32(arg_2.d.b.x + arg_2.c.x), Struct_2(_wgslsmith_clamp_u32(1u, 0u, 1u), Struct_1(false, vec4<i32>(arg_0, arg_0, 1i, 1i), u_input.d, u_input.e.yz)), vec4<bool>(true, true, true, true), 1u), vec4<i32>(arg_2.a, 1i, _wgslsmith_mod_i32(func_2(Struct_3(var_0, arg_2.d.b), 0i).a, -2147483647i), arg_1.a)), Struct_1(arg_2.b.x, ~(-(~vec4<i32>(-20272i, arg_0, arg_1.a, arg_0))), min(vec2<u32>(1u, _wgslsmith_div_u32(4294967295u, 40327u)), ~(u_input.e.xy | u_input.d)), vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, 39236u) ^ 4294967295u, ~u_input.d.x)));
    global0 = array<vec3<u32>, 15>();
    let var_2 = var_1.b;
    return Struct_2(~var_1.a, Struct_1(var_0, abs(reverseBits(var_2.b)) ^ (vec4<i32>(-1i) * -u_input.b), max(_wgslsmith_mod_vec2_u32(u_input.a.xz, ~vec2<u32>(u_input.e.x, 0u)), u_input.a.zy), _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a.x, ~8731u), min(~var_1.b.d, vec2<u32>(var_1.b.c.x, var_1.a)))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = false;
    global0 = array<vec3<u32>, 15>();
    global0 = array<vec3<u32>, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, arg_0, arg_0, 161f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(-580f + -1689f), -175f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(951f, -591f, 1768f, arg_0))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-759f, arg_0, arg_0, -430f)))));
    global0 = array<vec3<u32>, 15>();
    return func_5(-min(i32(-1i) * -1i, -40168i), func_2(Struct_3(var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.www - var_1.xww) - _wgslsmith_f_op_vec3_f32(var_1.xwz - var_1.wzz))), u_input.b.x), func_2(Struct_3(!(!var_0), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1.xwy)))), u_input.b.x | _wgslsmith_add_i32(0i, -25997i)));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool, arg_3: vec2<i32>) -> Struct_3 {
    global0 = array<vec3<u32>, 15>();
    global0 = array<vec3<u32>, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(func_2(func_2(Struct_3(arg_2, vec3<f32>(767f, 224f, 670f)), arg_3.x).d, -arg_3.x).d.b.x - _wgslsmith_f_op_f32(trunc(1110f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(280f, -767f)) * func_2(Struct_3(false, vec3<f32>(-638f, -2944f, 548f)), 38561i).d.b.x) + 755f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(289f, -480f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) * _wgslsmith_f_op_f32(round(-832f))))));
    var var_1 = Struct_2(1u, Struct_1(!func_5(-1i, Struct_5(2147483647i, vec2<bool>(false, true), var_0.xw, Struct_3(false, vec3<f32>(1318f, 797f, var_0.x))), Struct_5(-26265i, vec2<bool>(true, false), vec2<f32>(var_0.x, var_0.x), Struct_3(arg_0.b.a, var_0.zxz))).b.a, u_input.b, abs(arg_1.xy), vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), func_1(495f).a), u_input.e.x)));
    global0 = array<vec3<u32>, 15>();
    return Struct_3(4294967295u > ~_wgslsmith_dot_vec4_u32(max(u_input.e, vec4<u32>(arg_0.b.c.x, arg_1.x, 0u, 12103u)), arg_1), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-160f)) * 1000f), _wgslsmith_f_op_f32(var_0.x + var_0.x))), -726f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = false;
    var var_2 = func_6(func_1(-1398f), ~(u_input.e ^ ~(~vec4<u32>(0u, 1u, u_input.d.x, u_input.a.x))), var_1, func_3(!vec4<bool>(!var_0, var_1, false, 1u == u_input.e.x)).zx);
    let var_3 = func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-776f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_2.b.x, var_2.b.x)))), true)), -169f)));
    var var_4 = var_3.b;
    let var_5 = vec2<u32>(u_input.e.x, 19352u);
    var var_6 = 0u;
    var_2 = Struct_3(var_1, _wgslsmith_f_op_vec3_f32(select(func_2(func_2(func_6(Struct_2(0u, Struct_1(false, vec4<i32>(u_input.c.x, 1i, -13192i, 58045i), var_5, u_input.a.zy)), u_input.e, false, var_4.b.yz), func_1(var_2.b.x).b.b.x).d, ~_wgslsmith_dot_vec2_i32(vec2<i32>(9738i, u_input.c.x), var_4.b.zy)).d.b, _wgslsmith_f_op_vec3_f32(sign(var_2.b)), (-841f <= _wgslsmith_f_op_f32(floor(649f))) && true)));
    var_2 = func_2(func_6(func_1(var_2.b.x), vec4<u32>(1u, var_5.x, firstLeadingBit(~42865u), var_4.d.x), var_1, vec2<i32>(_wgslsmith_mod_i32(var_4.b.x, _wgslsmith_add_i32(u_input.b.x, var_4.b.x)), _wgslsmith_clamp_i32(0i >> (var_5.x % 32u), abs(var_3.b.b.x), u_input.c.x))), -2147483647i).d;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -452f), -3283f));
}

