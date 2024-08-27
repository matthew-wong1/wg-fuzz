struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_5, 22> = array<Struct_5, 22>(Struct_5(Struct_4(11724i, Struct_3(vec4<bool>(true, false, false, false)), Struct_1(false), Struct_2(vec2<bool>(false, false), -644f, 57819u))), Struct_5(Struct_4(1i, Struct_3(vec4<bool>(false, false, true, true)), Struct_1(true), Struct_2(vec2<bool>(true, true), 353f, 4294967295u))), Struct_5(Struct_4(11292i, Struct_3(vec4<bool>(true, true, true, false)), Struct_1(false), Struct_2(vec2<bool>(true, true), -224f, 107873u))), Struct_5(Struct_4(0i, Struct_3(vec4<bool>(false, true, true, false)), Struct_1(false), Struct_2(vec2<bool>(true, false), -1008f, 0u))), Struct_5(Struct_4(2147483647i, Struct_3(vec4<bool>(false, false, true, false)), Struct_1(false), Struct_2(vec2<bool>(false, false), 110f, 21223u))), Struct_5(Struct_4(6049i, Struct_3(vec4<bool>(false, false, true, true)), Struct_1(true), Struct_2(vec2<bool>(true, true), -1546f, 25604u))), Struct_5(Struct_4(0i, Struct_3(vec4<bool>(false, false, false, true)), Struct_1(true), Struct_2(vec2<bool>(false, true), -264f, 0u))), Struct_5(Struct_4(1i, Struct_3(vec4<bool>(true, false, true, true)), Struct_1(false), Struct_2(vec2<bool>(true, false), -1273f, 4294967295u))), Struct_5(Struct_4(-1i, Struct_3(vec4<bool>(true, true, true, false)), Struct_1(false), Struct_2(vec2<bool>(false, true), 907f, 48040u))), Struct_5(Struct_4(2147483647i, Struct_3(vec4<bool>(false, false, true, true)), Struct_1(false), Struct_2(vec2<bool>(false, true), -590f, 107071u))), Struct_5(Struct_4(i32(-2147483648), Struct_3(vec4<bool>(true, true, false, false)), Struct_1(false), Struct_2(vec2<bool>(true, false), -1000f, 1u))), Struct_5(Struct_4(-1i, Struct_3(vec4<bool>(true, true, true, true)), Struct_1(false), Struct_2(vec2<bool>(true, false), -843f, 4294967295u))), Struct_5(Struct_4(7378i, Struct_3(vec4<bool>(false, true, false, false)), Struct_1(false), Struct_2(vec2<bool>(false, false), 1000f, 0u))), Struct_5(Struct_4(34756i, Struct_3(vec4<bool>(false, true, false, true)), Struct_1(true), Struct_2(vec2<bool>(false, false), -1692f, 40126u))), Struct_5(Struct_4(0i, Struct_3(vec4<bool>(false, true, true, false)), Struct_1(false), Struct_2(vec2<bool>(false, false), 380f, 4294967295u))), Struct_5(Struct_4(5737i, Struct_3(vec4<bool>(true, true, false, true)), Struct_1(true), Struct_2(vec2<bool>(true, true), 613f, 31496u))), Struct_5(Struct_4(-5817i, Struct_3(vec4<bool>(false, false, false, true)), Struct_1(true), Struct_2(vec2<bool>(false, false), 813f, 40728u))), Struct_5(Struct_4(0i, Struct_3(vec4<bool>(true, false, true, false)), Struct_1(true), Struct_2(vec2<bool>(true, true), 297f, 0u))), Struct_5(Struct_4(1i, Struct_3(vec4<bool>(false, false, false, true)), Struct_1(true), Struct_2(vec2<bool>(false, true), -403f, 14424u))), Struct_5(Struct_4(-85578i, Struct_3(vec4<bool>(true, true, true, true)), Struct_1(true), Struct_2(vec2<bool>(false, true), -1008f, 4294967295u))), Struct_5(Struct_4(-1i, Struct_3(vec4<bool>(true, false, false, true)), Struct_1(false), Struct_2(vec2<bool>(true, true), -442f, 0u))), Struct_5(Struct_4(117824i, Struct_3(vec4<bool>(true, true, false, true)), Struct_1(false), Struct_2(vec2<bool>(true, false), 181f, 1u))));

var<private> global2: array<vec3<bool>, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_3(!(!vec4<bool>(true, !arg_0.d.a.x, true, arg_0.c.a)));
    global2 = array<vec3<bool>, 6>();
    var var_1 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(arg_0.b.a.x, arg_0.d.a.x), var_0.a.xz))), select(select(var_0.a.xz, var_0.a.xw, _wgslsmith_f_op_f32(round(-938f)) <= -828f), arg_0.d.a, arg_0.d.a.x), !arg_0.d.a);
    var var_2 = Struct_5(arg_0);
    var_0 = var_2.a.b;
    return var_2.a.c;
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    global0 = true;
    return Struct_1(all(!select(vec3<bool>(true, true, arg_2.a), vec3<bool>(false, true, true), arg_2.a)) | all(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, arg_2.a, arg_2.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1281f, _wgslsmith_f_op_f32(ceil(-471f)), _wgslsmith_f_op_f32(f32(-1f) * -1057f))) * vec3<f32>(1408f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) - -908f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1066f, 1000f) * -116f))));
    global0 = false;
    let var_1 = !global2[_wgslsmith_index_u32(u_input.b.x, 6u)];
    global2 = array<vec3<bool>, 6>();
    var var_2 = var_1;
    return 562f;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> vec2<f32> {
    global0 = false;
    var var_0 = Struct_1(any(vec3<bool>(true, all(vec2<bool>(arg_1.x, arg_1.x)), arg_1.x)) & arg_1.x);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(func_3(1000f, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), vec3<u32>(10308u, u_input.b.x, 0u), vec3<u32>(0u, 4294967295u, u_input.c))), func_2(Struct_4(u_input.a.x, Struct_3(arg_1), Struct_1(false), Struct_2(vec2<bool>(false, true), 1456f, u_input.b.x)), u_input.d | u_input.e, ~u_input.a, _wgslsmith_mult_vec2_i32(arg_0, vec2<i32>(25666i, 5726i)))), vec4<i32>(-arg_0.x, u_input.e.x << (min(8800u, u_input.c) % 32u), u_input.d.x << (~4294967295u % 32u), arg_0.x >> (countOneBits(u_input.c) % 32u)), firstLeadingBit(_wgslsmith_sub_i32(u_input.e.x, u_input.a.x))))));
    global1 = array<Struct_5, 22>();
    var var_2 = Struct_1(!arg_1.x);
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(!arg_1.x), u_input.d, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(8941i, -37862i)), -17762i >> (u_input.b.x % 32u)))), var_1), vec2<f32>(_wgslsmith_f_op_f32(-var_1), -1677f));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec4<u32>) -> Struct_3 {
    global1 = array<Struct_5, 22>();
    global1 = array<Struct_5, 22>();
    global1 = array<Struct_5, 22>();
    var var_0 = !select(!select(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, true, arg_0.x)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, arg_0.x, arg_0.x)), !vec4<bool>(!arg_0.x, true, any(vec2<bool>(false, arg_0.x)), arg_0.x), select(select(select(vec4<bool>(true, arg_0.x, arg_0.x, true), vec4<bool>(false, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), !vec4<bool>(true, true, arg_0.x, true), !vec4<bool>(true, arg_0.x, arg_0.x, true)), !(!vec4<bool>(true, true, false, arg_0.x)), vec4<bool>(!arg_0.x, select(arg_0.x, true, false), all(vec3<bool>(arg_0.x, arg_0.x, false)), true)));
    var_0 = select(vec4<bool>(all(vec4<bool>(!arg_0.x, !arg_0.x, true, true)), false, any(vec4<bool>(!arg_0.x, var_0.x, any(vec4<bool>(false, false, arg_0.x, true)), select(true, false, false))), any(vec3<bool>(arg_0.x, false, 28452u > u_input.c))), select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0.x, true, true, false), arg_0.x)), vec4<bool>(!var_0.x, !(false | var_0.x), u_input.c > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), arg_2.zz), false), !(!vec4<bool>(true, var_0.x, true, false))), !select(!vec4<bool>(var_0.x, arg_0.x, false, var_0.x), vec4<bool>(select(false, false, arg_0.x), var_0.x, any(vec4<bool>(false, false, var_0.x, var_0.x)), any(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1096f), vec3<u32>(35387u, 4294967295u, 31288u), Struct_1(true)).a));
    return Struct_3(vec4<bool>(arg_0.x & var_0.x, arg_0.x, true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(!vec2<bool>(all(global2[_wgslsmith_index_u32(u_input.b.x, 6u)]), true), vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), any(vec4<bool>(true, true, true, true))), false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(-u_input.e.xy, vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-792f, 2480f), vec2<f32>(1102f, 558f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1126f, -121f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2004f, 755f))))), (vec4<u32>(select(u_input.b.x, u_input.b.x, false), _wgslsmith_mod_u32(u_input.c, 0u), _wgslsmith_div_u32(12014u, u_input.b.x), ~56224u) & (vec4<u32>(19539u, u_input.c, 0u, 91977u) | abs(vec4<u32>(4294967295u, 24188u, 27752u, 43378u)))) >> ((firstLeadingBit(vec4<u32>(27845u, u_input.b.x, 1u, 32608u)) ^ _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 0u)), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 106355u))) % vec4<u32>(32u)));
    let var_1 = Struct_4(i32(-1i) * -89332i, func_5(var_0.a.wz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2049f * 1005f), -1597f)), vec4<u32>(countOneBits(u_input.b.x) ^ ~u_input.c, u_input.b.x, _wgslsmith_add_u32(~u_input.b.x, 1u), u_input.b.x)), func_3(_wgslsmith_f_op_f32(-1474f * -1000f), vec3<u32>(~(u_input.c << (u_input.c % 32u)), max(_wgslsmith_clamp_u32(u_input.b.x, u_input.c, u_input.b.x), abs(u_input.b.x)), countOneBits(~u_input.c)), Struct_1(false)), Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f) - _wgslsmith_f_op_f32(ceil(-591f)))), ~(u_input.c ^ u_input.b.x) >> (_wgslsmith_clamp_u32(u_input.c, ~852u, _wgslsmith_add_u32(u_input.b.x, 4294967295u)) % 32u)));
    let var_2 = var_1.b;
    let var_3 = !all(select(var_2.a.xy, var_0.a.zz, false));
    global2 = array<vec3<bool>, 6>();
    global1 = array<Struct_5, 22>();
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-221f, var_1.d.b));
    var var_5 = -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~min(u_input.d.zxz, u_input.d.xzz), u_input.d.wzy), i32(-1i) * -max(13011i, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x);
}

