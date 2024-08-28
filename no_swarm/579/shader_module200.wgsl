struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(i32(-2147483648), 2147483647i, 7070i), vec3<i32>(57336i, 0i, 1i), vec3<i32>(-1i, 9747i, 4308i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: i32) -> vec2<bool> {
    return select(!(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), vec2<bool>(false, -1i > _wgslsmith_div_i32(u_input.d.x, arg_2)), !vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)), true));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(~u_input.a, ~vec4<u32>(110597u, 48514u, u_input.c, 4800u), vec4<u32>(~u_input.c, ~u_input.c, u_input.b.x, ~1u))) | ~(~34393u);
    let var_1 = -(i32(-1i) * -2147483647i);
    let var_2 = select(select(vec2<bool>(!select(false, false, false), false), func_3(~vec4<u32>(32159u, u_input.c, u_input.b.x, 47300u) & select(vec4<u32>(u_input.a.x, 4294967295u, 24287u, 1u), u_input.a, false), vec2<f32>(_wgslsmith_f_op_f32(abs(-246f)), _wgslsmith_f_op_f32(f32(-1f) * -1089f)), ~u_input.d.x), all(func_3(vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u), vec2<f32>(-1000f, -392f), ~u_input.d.x))), vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2620f)), _wgslsmith_div_f32(1265f, 2226f)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1156f)), -1319f)), true == any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<bool>(!all(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, true, true, true))));
    let var_3 = Struct_3(Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(1000f + 180f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1139f))))), Struct_2(Struct_1(vec2<f32>(629f, _wgslsmith_f_op_f32(round(-501f))))), _wgslsmith_f_op_f32(f32(-1f) * -324f));
    var_0 = u_input.c;
    return ~_wgslsmith_add_u32(~_wgslsmith_add_u32(~100635u, _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(u_input.c, 0u))), _wgslsmith_div_u32(~min(1u, 496u), u_input.a.x));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    global1 = array<vec3<i32>, 3>();
    let var_0 = func_2();
    var var_1 = !select(vec3<bool>(true, true, all(vec3<bool>(true, true, true))), vec3<bool>(true, arg_0.x == _wgslsmith_f_op_f32(-arg_0.x), any(vec3<bool>(false, true, true))), any(vec3<bool>(false, true, false)));
    global1 = array<vec3<i32>, 3>();
    global1 = array<vec3<i32>, 3>();
    return global0[_wgslsmith_index_u32(var_0, 27u)];
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    global1 = array<vec3<i32>, 3>();
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), 1094f, 270f, -809f))));
    var var_1 = any(select(vec2<bool>(true, select(false, false, false)), vec2<bool>(true, true), true && (u_input.d.x < 14986i))) && (!any(vec3<bool>(true, true, true)) || any(vec4<bool>(true, true, true, true)));
    var var_2 = vec4<bool>(true, !func_3(vec4<u32>(4294967295u, 43971u, _wgslsmith_div_u32(u_input.c, 1u), firstLeadingBit(u_input.a.x)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)))), u_input.d.x).x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~u_input.b.x), 29081u) < 1u, true);
    let var_3 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_2.a.x)), _wgslsmith_f_op_f32(-1232f * _wgslsmith_f_op_f32(arg_2.a.x - -2235f)), arg_2.a.x, arg_1.x)));
    return 4244i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~53223u | u_input.a.x, 27u)];
    var var_1 = func_4(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, -985f, 152f, 879f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.a.x, 648f, 1299f, var_0.c.a.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b.a.a.x, 507f, -2895f, -1261f))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, 177f, var_0.b.a.a.x, var_0.c.a.a.x) + vec4<f32>(-1832f, -920f, 1010f, 1820f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-268f, var_0.d, var_0.c.a.a.x, var_0.a.a.a.x))))), var_0.b.a) >> (_wgslsmith_dot_vec2_u32(u_input.a.zz, abs(u_input.b & _wgslsmith_mod_vec2_u32(u_input.a.xw, vec2<u32>(u_input.c, u_input.a.x)))) % 32u);
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, var_0.d, true)), var_0.b.a.a.x, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.a.x, -101f, -347f, 361f) - vec4<f32>(var_0.a.a.a.x, var_0.d, 617f, -1338f))).c.a.a.x, -561f) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(160f, 297f, 755f, var_0.d) * vec4<f32>(var_0.b.a.a.x, -1415f, var_0.d, var_0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-144f, var_0.b.a.a.x, 1904f, var_0.a.a.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-1000f * var_0.a.a.a.x), _wgslsmith_f_op_f32(-var_0.b.a.a.x), var_0.b.a.a.x, var_0.c.a.a.x))))).c;
    var var_3 = vec4<i32>(-48749i, ~_wgslsmith_mult_i32(i32(-1i) * -654i, _wgslsmith_dot_vec3_i32(-u_input.d.zzx, global1[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_mod_i32(countOneBits(u_input.d.x), select(-abs(-1i), -1i, all(func_3(vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u), var_0.c.a.a, u_input.d.x)))), _wgslsmith_dot_vec4_i32(-(-vec4<i32>(u_input.d.x, -22245i, u_input.d.x, 6907i) << (~u_input.a % vec4<u32>(32u))), select(_wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(18945i, 22508i, u_input.d.x, u_input.d.x), u_input.d) & vec4<i32>(-61139i, u_input.d.x, -49159i, 1i), vec4<i32>(countOneBits(45574i), 2147483647i, u_input.d.x, _wgslsmith_clamp_i32(8127i, u_input.d.x, u_input.d.x)), true && any(vec4<bool>(true, true, true, false)))));
    global0 = array<Struct_3, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-170f, -1288f), _wgslsmith_f_op_f32(step(var_0.b.a.a.x, var_2.a.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, -1116f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(575f, _wgslsmith_f_op_f32(-var_0.c.a.a.x))))), max(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.a.x), u_input.a.yzz), _wgslsmith_dot_vec3_u32(u_input.a.wyy, u_input.a.zyz)) > _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.c)))), -2147483647i);
}

