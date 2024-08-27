struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(27402u, vec3<u32>(0u, 4294967295u, 0u)), 39874u);

var<private> global1: array<vec3<u32>, 18>;

var<private> global2: vec2<u32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(arg_0.xzx));
    var var_1 = Struct_3(1i, global0.a, !select(any(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, false)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), vec4<u32>(abs(4831u), 3495u, u_input.a, _wgslsmith_clamp_u32(abs(abs(u_input.a)), _wgslsmith_add_u32(76494u, 1u & global2.x), ~_wgslsmith_sub_u32(u_input.a, global2.x))), Struct_1(!(!all(vec4<bool>(true, false, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(341f, var_0.x, arg_0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1506f, -1000f)) * _wgslsmith_f_op_f32(-arg_0.x))))));
    let var_2 = Struct_3(abs(var_1.a), var_1.b, select(true & all(vec4<bool>(false, false, true, true)), true, var_1.e.a), _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(var_1.d, vec4<u32>(24130u, 1u, u_input.a, 57258u))), select(~var_1.d, select(vec4<u32>(global0.a.b.x, global0.a.a, var_1.d.x, 72158u), var_1.d, true), vec4<bool>(false, var_1.e.a, var_1.c, var_1.c))) | (~var_1.d >> (vec4<u32>(4294967295u, abs(global0.b), u_input.a, _wgslsmith_mult_u32(global0.a.b.x, 49371u)) % vec4<u32>(32u))), var_1.e);
    var var_3 = reverseBits(28682u);
    let var_4 = Struct_5(global0.a, _wgslsmith_dot_vec3_u32(var_1.d.yxy, (_wgslsmith_mod_vec3_u32(vec3<u32>(71567u, global0.b, global2.x), vec3<u32>(global0.b, 1u, global2.x)) << (select(vec3<u32>(23271u, 40942u, 1u), global1[_wgslsmith_index_u32(var_1.b.a, 18u)], var_1.e.a) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.b, global0.b, var_1.d.x), vec3<u32>(global2.x, 4294967295u, 25013u)), ~global0.a.b) % vec3<u32>(32u))));
    return vec3<u32>(~(~(~(global2.x | global0.a.b.x))), _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(63282u, var_1.b.b.x))), reverseBits(vec2<u32>(global2.x, 4294967295u))), global2.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1 * 1722f), arg_1)))));
    let var_1 = Struct_4(_wgslsmith_div_f32(arg_1, 2255f));
    var var_2 = func_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-925f, var_1.a, arg_1, var_0.x))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 326f, 1000f, arg_1))))))));
    var var_3 = Struct_1(all(select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), vec3<bool>(true, false, any(vec4<bool>(true, false, false, false))), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1225f, _wgslsmith_f_op_f32(var_1.a + var_1.a), var_1.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -420f, var_1.a)))), _wgslsmith_f_op_f32(-arg_1));
    global1 = array<vec3<u32>, 18>();
    return 35710u;
}

fn func_1() -> Struct_2 {
    global2 = abs(global0.a.b.yx);
    var var_0 = Struct_1(4294967295u == ~(_wgslsmith_sub_u32(global0.a.a, global0.b) << (func_2(vec4<u32>(57005u, u_input.a, u_input.a, 4294967295u), -494f) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 2156f, 1496f) - vec3<f32>(203f, 1300f, 284f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(849f, -238f, 855f) - vec3<f32>(-924f, -1916f, 274f)) * _wgslsmith_div_vec3_f32(vec3<f32>(648f, 832f, -584f), vec3<f32>(-1300f, 347f, -390f)))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(219f + -762f), _wgslsmith_f_op_f32(f32(-1f) * -534f), 1437f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2286f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(764f - -234f) + _wgslsmith_f_op_f32(f32(-1f) * -2126f))))));
    let var_1 = vec3<i32>(-2147483647i, _wgslsmith_add_i32(1i, _wgslsmith_add_i32(i32(-1i) * -57918i, 49851i)) << (~(~global0.b) % 32u), -8262i);
    global1 = array<vec3<u32>, 18>();
    var_0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-2417f, var_0.c, 2154f) + _wgslsmith_f_op_vec3_f32(-var_0.b)))), var_0.b.x);
    return global0.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_5 {
    global0 = Struct_5(Struct_2(select(~arg_0.b.x & 41423u, _wgslsmith_dot_vec2_u32(arg_0.b.xx, vec2<u32>(57535u, u_input.a)), arg_1.x), firstTrailingBit(~global1[_wgslsmith_index_u32(4294967295u, 18u)]) & global0.a.b), _wgslsmith_div_u32(u_input.a, 4021u));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.b.x, _wgslsmith_f_op_f32(891f - arg_2.c))) + _wgslsmith_f_op_f32(146f + -739f)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - -981f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-974f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x * 1180f) * 1000f)) * _wgslsmith_f_op_f32(min(arg_2.b.x, arg_2.b.x))));
    var var_1 = select(!vec3<bool>(arg_1.x, arg_1.x, select(true, false, all(vec4<bool>(true, arg_2.a, false, arg_2.a)))), select(vec3<bool>(!(arg_2.a || arg_2.a), arg_2.a, false), select(select(select(vec3<bool>(false, arg_1.x, arg_2.a), vec3<bool>(arg_1.x, arg_2.a, arg_2.a), false), !vec3<bool>(false, true, arg_1.x), any(vec4<bool>(arg_2.a, false, true, true))), vec3<bool>(any(vec3<bool>(true, arg_1.x, arg_1.x)), true && arg_2.a, all(vec4<bool>(arg_1.x, true, arg_1.x, false))), arg_1.x), true), vec3<bool>(arg_1.x, all(select(!vec3<bool>(arg_1.x, true, arg_2.a), !vec3<bool>(true, arg_2.a, true), vec3<bool>(false, arg_2.a, arg_1.x))), true));
    let var_2 = countOneBits(u_input.a);
    return Struct_5(Struct_2(var_2, vec3<u32>(min(_wgslsmith_sub_u32(var_2, arg_0.b.x), global0.a.b.x), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 71905u, var_2), global1[_wgslsmith_index_u32(9959u, 18u)])), 1u)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(_wgslsmith_mult_u32(u_input.a, 24564u), abs(~global2.x) >> (min(global2.x, u_input.a) % 32u), 17336u, global2.x) >> (vec4<u32>(u_input.a, global0.b, global2.x, _wgslsmith_clamp_u32(~1u, 35035u, u_input.a)) % vec4<u32>(32u));
    global1 = array<vec3<u32>, 18>();
    let var_1 = func_4(func_1(), vec2<bool>(true, !select(true, true, any(vec2<bool>(false, true)))), Struct_1(true, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(638f, -696f, -2482f))), _wgslsmith_f_op_f32(549f + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(max(-1227f, -1474f))))));
    global0 = Struct_5(global0.a, 122843u);
    let var_2 = Struct_4(-1341f);
    var var_3 = reverseBits(0i);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1101f) * -590f) - _wgslsmith_f_op_f32(f32(-1f) * -2325f));
    var var_5 = !vec3<bool>(true, false, select(true & all(vec4<bool>(true, false, true, false)), true, all(vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, global0.b, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, 25387i << (var_1.b % 32u)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-33241i, -34845i), -2147483647i), -(~(-1i))), min(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -18360i), vec3<i32>(1i, 3177i, 1i)), 1i)));
}

