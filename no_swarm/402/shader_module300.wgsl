struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
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

var<private> global0: Struct_3;

var<private> global1: array<bool, 32> = array<bool, 32>(true, false, false, false, false, false, false, true, true, false, true, false, true, false, true, true, false, true, true, false, false, false, true, true, false, true, true, false, true, true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    let var_0 = 16025i;
    var var_1 = select(vec2<bool>(global0.a, !(593f <= _wgslsmith_f_op_f32(floor(-1562f)))), !vec2<bool>(select(true, global1[_wgslsmith_index_u32(u_input.b.x, 32u)], true), any(select(vec4<bool>(global0.a, true, global1[_wgslsmith_index_u32(18178u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), vec4<bool>(global0.a, false, true, false), true))), !global1[_wgslsmith_index_u32(~u_input.b.x, 32u)]);
    global0 = Struct_3(all(!(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), var_1.x))), 49678i);
    var var_2 = ~max(-vec3<i32>(-6090i, 1i, abs(97003i)), vec3<i32>(firstLeadingBit(global0.b) ^ firstLeadingBit(-10655i), _wgslsmith_dot_vec2_i32(~u_input.c.xw, u_input.c.xx >> (u_input.b.zw % vec2<u32>(32u))), 1i));
    let var_3 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(max(u_input.b.yww, vec3<u32>(u_input.b.x, 9017u, 28117u)) << (~u_input.b.xxy % vec3<u32>(32u)), vec3<u32>(32396u ^ u_input.b.x, u_input.b.x & u_input.b.x, u_input.b.x | 0u)), vec3<u32>(firstTrailingBit(u_input.b.x) & (2888u >> (u_input.b.x % 32u)), u_input.b.x, u_input.b.x));
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(120973u, u_input.b.x, var_3.x, 1u), u_input.b)), u_input.b), 36496u), 32u)];
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(func_3() != !(arg_1.c.x | !arg_1.c.x), 29790i);
    global0 = Struct_3(global0.a, -9179i | (0i ^ _wgslsmith_sub_i32(u_input.a, -2147483647i)));
    global1 = array<bool, 32>();
    global0 = Struct_3(!(!(_wgslsmith_f_op_f32(min(1376f, -1370f)) <= _wgslsmith_f_op_f32(-arg_3.b))), -18058i);
    let var_1 = Struct_4(-arg_1.e.x);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_mod_vec3_u32(~vec3<u32>(~1u, u_input.b.x | (u_input.b.x | u_input.b.x), u_input.b.x << (firstTrailingBit(71572u) % 32u)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.yzy, vec3<u32>(67332u, u_input.b.x, u_input.b.x)), ~u_input.b.x | ~u_input.b.x, firstTrailingBit(firstLeadingBit(u_input.b.x))));
    var_0 = u_input.b.zxz >> (~u_input.b.zwz % vec3<u32>(32u));
    var_0 = vec3<u32>(_wgslsmith_clamp_u32(~(~min(32344u, 25941u)), 0u, 1u), ~_wgslsmith_mod_u32(u_input.b.x, ~(~4710u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, 1u, 24933u, _wgslsmith_add_u32(var_0.x & u_input.b.x, _wgslsmith_div_u32(55860u, 27717u))), ~u_input.b));
    global1 = array<bool, 32>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, arg_0.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -859f) - 129f))), _wgslsmith_f_op_f32(-arg_3.x), vec4<bool>(false, !all(arg_0.c), false, arg_2.c.x), arg_1 << (0u % 32u), arg_0.e | vec3<i32>(_wgslsmith_add_i32(-11241i, firstTrailingBit(arg_1)), _wgslsmith_div_i32(func_2(22635u, Struct_1(arg_3.x, 642f, vec4<bool>(arg_0.c.x, false, true, arg_2.c.x), global0.b, arg_0.e), 17978i, Struct_1(226f, -896f, vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 32u)], false), global0.b, arg_2.e)).e.x, _wgslsmith_sub_i32(2147483647i, u_input.a)), 1i));
    return 464f;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool) -> Struct_1 {
    global1 = array<bool, 32>();
    global1 = array<bool, 32>();
    global0 = Struct_3(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-276f)), _wgslsmith_f_op_f32(-1267f * -398f)) == _wgslsmith_f_op_f32(func_4(func_2(4294967295u, Struct_1(-313f, 316f, vec4<bool>(false, true, arg_1, false), arg_0, u_input.c.wzw), -2147483647i, Struct_1(-2166f, -1320f, vec4<bool>(global1[_wgslsmith_index_u32(3760u, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], global1[_wgslsmith_index_u32(u_input.b.x, 32u)], arg_1), 0i, u_input.c.wxw)), reverseBits(arg_0), Struct_1(246f, -437f, vec4<bool>(arg_1, arg_1, global1[_wgslsmith_index_u32(4294967295u, 32u)], global0.a), global0.b, vec3<i32>(u_input.a, -2147483647i, -3442i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1096f, -1295f, -345f))))), -global0.b);
    let var_0 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f) * _wgslsmith_f_op_f32(ceil(-932f))) != 329f, true, all(select(func_2(4294967295u, Struct_1(-2068f, -139f, vec4<bool>(false, true, arg_2, false), -38821i, u_input.c.yzx), u_input.c.x, Struct_1(744f, -198f, vec4<bool>(global0.a, false, false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), u_input.a, u_input.c.wyz)).c.yy, !vec2<bool>(arg_2, false), true))) || !all(vec4<bool>(true || arg_2, !arg_1, u_input.b.x != 18471u, true));
    global0 = Struct_3(arg_1, _wgslsmith_div_i32(arg_0, abs(_wgslsmith_mod_i32(80570i, u_input.c.x) << (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u))));
    return Struct_1(-883f, -1793f, func_2(~4294967295u, func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53230u, u_input.b.x, 16411u), u_input.b) | u_input.b.x, Struct_1(_wgslsmith_f_op_f32(floor(677f)), _wgslsmith_f_op_f32(1079f * -256f), vec4<bool>(true, arg_2, true, true), 35150i, vec3<i32>(u_input.a, arg_0, arg_0)), global0.b, Struct_1(-751f, -791f, vec4<bool>(true, true, false, false), 1i, vec3<i32>(u_input.a, -2147483647i, -1i) | u_input.c.xwz)), arg_0, func_2(firstTrailingBit(u_input.b.x) >> (u_input.b.x % 32u), Struct_1(_wgslsmith_f_op_f32(588f - 185f), _wgslsmith_f_op_f32(f32(-1f) * -429f), vec4<bool>(false, global0.a, true, false), ~arg_0, min(vec3<i32>(16483i, u_input.a, -1i), vec3<i32>(-4403i, global0.b, -16667i))), global0.b, func_2(~4294967295u, Struct_1(-2401f, 1814f, vec4<bool>(true, var_0, global1[_wgslsmith_index_u32(0u, 32u)], arg_1), 0i, u_input.c.wxz), _wgslsmith_dot_vec3_i32(u_input.c.xyw, vec3<i32>(-5804i, -2147483647i, u_input.a)), Struct_1(2633f, 761f, vec4<bool>(arg_2, arg_1, arg_1, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), 2147483647i, u_input.c.xwx)))).c, global0.b, -firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, 0i, -2147483647i), u_input.c.zxy), u_input.c.wzw)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = Struct_2(~countOneBits(~vec4<u32>(0u, 48430u, u_input.b.x, 8398u)), 0i, func_1(u_input.a | 2147483647i, global0.a, global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -402f))), 1f, !vec4<bool>(global0.a, any(vec3<bool>(global0.a, false, global1[_wgslsmith_index_u32(u_input.b.x, 32u)])), func_2(u_input.b.x, Struct_1(628f, 666f, vec4<bool>(global0.a, false, global0.a, global0.a), global0.b, vec3<i32>(-29703i, 8728i, -37102i)), 12131i, Struct_1(-1067f, 1039f, vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 32u)], false, true, true), u_input.a, vec3<i32>(-1i, u_input.a, u_input.a))).c.x, !global1[_wgslsmith_index_u32(u_input.b.x, 32u)]), -u_input.c.x, u_input.c.yxw));
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1114f, 1000f))))) - vec2<f32>(var_1.d.b, _wgslsmith_f_op_f32(ceil(-330f))))));
    var_0 = all(select(select(select(vec2<bool>(true, false), !vec2<bool>(global0.a, var_1.c.c.x), 812f == var_1.c.a), vec2<bool>(true, global0.a), true), var_1.c.c.xx, !select(!var_1.d.c.xw, vec2<bool>(false, global0.a), vec2<bool>(true, false))));
    global0 = Struct_3(true, ~_wgslsmith_add_i32(global0.b, func_1(27642i, any(var_1.d.c.xw), var_1.c.c.x).e.x));
    let var_3 = Struct_3(any(func_1(u_input.c.x, false, select(global1[_wgslsmith_index_u32(20495u, 32u)], global1[_wgslsmith_index_u32(var_1.a.x, 32u)], false)).c.xy) | true, ~17397i << (u_input.b.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

