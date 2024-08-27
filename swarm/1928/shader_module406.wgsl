struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
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

var<private> global0: Struct_5;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec2<f32>(-1007f, 116f)), Struct_2(vec2<f32>(1147f, 137f)), Struct_2(vec2<f32>(-216f, 743f)), Struct_2(vec2<f32>(-340f, -1241f)), Struct_2(vec2<f32>(812f, 658f)), Struct_2(vec2<f32>(-1472f, 2267f)), Struct_2(vec2<f32>(467f, -587f)), Struct_2(vec2<f32>(1102f, 292f)), Struct_2(vec2<f32>(-885f, -143f)), Struct_2(vec2<f32>(695f, 587f)), Struct_2(vec2<f32>(631f, 727f)), Struct_2(vec2<f32>(-988f, 1287f)), Struct_2(vec2<f32>(-1413f, -281f)), Struct_2(vec2<f32>(528f, 1007f)), Struct_2(vec2<f32>(124f, 548f)), Struct_2(vec2<f32>(-2630f, 655f)), Struct_2(vec2<f32>(1696f, 1092f)), Struct_2(vec2<f32>(-603f, -625f)));

var<private> global2: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(5076i, 290f), Struct_4(-1i, 456f), Struct_4(42331i, 688f), Struct_4(2147483647i, -1000f), Struct_4(0i, -805f), Struct_4(-44869i, 825f), Struct_4(20194i, 590f), Struct_4(16829i, -1934f), Struct_4(-1i, 1961f), Struct_4(28138i, 789f), Struct_4(2147483647i, -777f), Struct_4(7784i, -203f), Struct_4(0i, 1375f), Struct_4(-1i, -1797f), Struct_4(2147483647i, 465f), Struct_4(-1i, -558f), Struct_4(-18103i, 630f), Struct_4(43097i, 338f), Struct_4(0i, 1000f), Struct_4(12218i, 1164f), Struct_4(3200i, 115f), Struct_4(33688i, -1000f), Struct_4(1i, -144f), Struct_4(-5617i, 1282f), Struct_4(11506i, 269f), Struct_4(69038i, -545f), Struct_4(2147483647i, -650f));

var<private> global3: array<bool, 27> = array<bool, 27>(true, true, true, true, false, false, false, false, true, false, true, false, false, false, false, true, false, false, true, false, true, true, true, true, false, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_5 {
    var var_0 = ~4294967295u;
    global3 = array<bool, 27>();
    global3 = array<bool, 27>();
    var var_1 = u_input.b;
    global1 = array<Struct_2, 18>();
    return Struct_5(global0.a, -828f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, -338f)) - -2035f) + global0.c)), true, Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.e.a + global0.a.c.a))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(~abs(_wgslsmith_add_u32(u_input.b, 19589u)), _wgslsmith_dot_vec3_u32(vec3<u32>(28825u, _wgslsmith_mult_u32(u_input.b, 28392u), ~u_input.b), abs(~vec3<u32>(40544u, 8073u, u_input.b)))), ~_wgslsmith_mod_u32(~u_input.b, 1u) ^ _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(93131u, 0u, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(29308u, 35428u, 46433u))), 0u & u_input.b));
    let var_1 = abs(arg_3.a.x | abs(arg_3.a.x));
    global1 = array<Struct_2, 18>();
    var var_2 = global2[_wgslsmith_index_u32(~min(_wgslsmith_mult_u32(u_input.b, 4294967295u), 1u), 27u)];
    var var_3 = vec2<i32>(-1i) * -max(arg_3.a.wy, firstLeadingBit(vec2<i32>(arg_3.a.x, var_2.a)));
    return select(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)] && global3[_wgslsmith_index_u32(u_input.b, 27u)], true, global0.a.b || false, u_input.b <= u_input.b), select(vec4<bool>(true, false, global0.a.b, global0.a.b), select(vec4<bool>(global3[_wgslsmith_index_u32(64593u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], arg_2.b, true), vec4<bool>(false, false, global0.a.b, arg_2.b), false), true), global0.a.b), !select(select(!vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(u_input.b, 27u)]), !vec4<bool>(false, true, true, arg_2.b), func_2(vec3<f32>(arg_3.b, -425f, var_2.b), var_3.x).d), !vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.b, 27u)], false), global0.a.b), !vec4<bool>(-570f <= _wgslsmith_f_op_f32(-arg_1.x), true, true, false));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3) -> i32 {
    global1 = array<Struct_2, 18>();
    let var_0 = abs(~_wgslsmith_div_u32(u_input.b, ~(u_input.b ^ 4294967295u)));
    global1 = array<Struct_2, 18>();
    var var_1 = 2147483647i;
    let var_2 = global0.b;
    return 38460i;
}

fn func_1() -> Struct_3 {
    global0 = func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-717f, _wgslsmith_f_op_f32(1499f - _wgslsmith_f_op_f32(min(global0.b, global0.c))), global0.b))), u_input.a.x);
    let var_0 = _wgslsmith_f_op_f32(ceil(294f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.e.a.x))) * -845f);
    var var_1 = Struct_1(vec4<i32>(func_4(select(func_3(global0.e, vec2<f32>(global0.a.a.a.x, -226f), Struct_3(Struct_2(vec2<f32>(-155f, global0.a.d.a.x)), global0.a.b, global0.a.a, Struct_2(global0.e.a)), Struct_1(vec4<i32>(u_input.d, 6028i, u_input.a.x, -1i), -480f)), vec4<bool>(global0.a.b, global0.a.b, var_0, true), global0.d & false), Struct_3(func_2(vec3<f32>(global0.e.a.x, 713f, 151f), u_input.c).e, true || global0.a.b, Struct_2(vec2<f32>(1761f, -852f)), global0.a.a)), abs(u_input.d), u_input.a.x, -2147483647i), global0.c);
    global1 = array<Struct_2, 18>();
    var var_2 = ~(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, 1u), ~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(24718u, 0u)), abs(vec2<u32>(17120u, u_input.b)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), firstLeadingBit(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(34795u, 0u))) ^ firstLeadingBit(~vec2<u32>(42742u, 19583u) & reverseBits(vec2<u32>(u_input.b, u_input.b))));
    return func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b, 720f, var_1.b)))), vec3<f32>(-316f, _wgslsmith_f_op_f32(exp2(var_1.b)), _wgslsmith_f_op_f32(ceil(global0.c)))))), u_input.d).a;
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.x, -771f, global0.b, -316f) + vec4<f32>(global0.a.a.a.x, global0.b, -203f, arg_0.d.a.x)) + vec4<f32>(global0.a.d.a.x, 1000f, 308f, global0.c)) + vec4<f32>(496f, -2013f, global0.c, func_2(vec3<f32>(arg_0.c.a.x, 380f, 507f), -1i).b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1144f, -595f, global0.c, global0.a.d.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, arg_0.d.a.x, arg_0.c.a.x, 450f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.a.x, 911f, -298f, 1091f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1396f)), arg_0.c.a.x, _wgslsmith_div_f32(-668f, arg_0.a.a.x), _wgslsmith_f_op_f32(ceil(711f))))));
    var var_1 = arg_0.d;
    var var_2 = 958f;
    let var_3 = u_input.a.yx;
    global0 = func_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-570f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1271f + 3143f) + -925f), _wgslsmith_f_op_f32(f32(-1f) * -510f)))), var_3.x);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a.a.x)) * -861f)), _wgslsmith_f_op_f32(abs(var_0.x))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(-161f)), var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(func_5(func_1(), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, u_input.b | u_input.b), 1u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
    global2 = array<Struct_4, 27>();
    global0 = func_2(vec3<f32>(360f, _wgslsmith_f_op_f32(f32(-1f) * -351f), var_0.a.x), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, ~(~26886i)), max(1i, -2147483647i)));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(func_2(vec3<f32>(global0.e.a.x, -1000f, 1100f), u_input.d).e.a.x)), -516f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(747f))), var_0.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-641f, var_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_0.a.x)))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2079f), var_1);
    let var_3 = !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], false, true), func_3(global0.e, var_2.yy, global0.a, Struct_1(u_input.a, 1703f)).wxx), select(vec3<bool>(false, global0.a.b, false), !vec3<bool>(true, false, global0.d), select(vec3<bool>(false, false, global0.d), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], global0.a.b, global0.a.b), true))), !vec3<bool>(!global3[_wgslsmith_index_u32(52658u, 27u)], all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 27u)], true, false)), func_1().b), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(3648u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 64882u, 0u, 0u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), 0u)), 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

