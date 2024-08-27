struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: f32 = -239f;

var<private> global2: array<vec2<i32>, 7>;

var<private> global3: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(arg_2.ywz));
    var var_1 = Struct_1(firstLeadingBit(arg_3.a), 1357f, arg_0.c, ~4294967295u);
    let var_2 = Struct_2(arg_3, arg_3, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(672f * var_1.b)))))), u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1371f - -2252f));
    var var_4 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(u_input.c, -1i) | -2147483647i), 52326i, abs(-_wgslsmith_mod_i32(var_1.c.x, arg_3.c.x))), abs(vec3<i32>(-_wgslsmith_clamp_i32(var_1.c.x, -31089i, -2147483647i), _wgslsmith_dot_vec2_i32(abs(global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec2<i32>(-54331i, 2147483647i)), abs(-1i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2191f, 679f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = arg_0.xz;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f * -1153f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(101084u, 4294967295u), 8u)], _wgslsmith_add_vec4_u32(vec4<u32>(78620u, u_input.a.x, 79163u, 1332u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 1u, u_input.a.x, arg_1.x), vec4<u32>(0u, 1210u, 1u, arg_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1631f, -293f, 221f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-136f, -734f, 1894f, -297f) + vec4<f32>(1000f, 853f, -1451f, 472f))), global0[_wgslsmith_index_u32(26099u, 8u)]))));
    global0 = array<Struct_1, 8>();
    var var_2 = select(select(vec3<bool>(arg_0.x, true, true), arg_0, !(!(!vec3<bool>(arg_0.x, var_0.x, false)))), vec3<bool>(min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_2.x, 41315i, -1i), vec4<i32>(0i, arg_2.x, -2147483647i, -1i)), 56030i) < 2147483647i, true, arg_0.x), true);
    var var_3 = Struct_2(Struct_1(vec3<u32>(30458u, abs(u_input.a.x << (0u % 32u)), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1072f)))), -(~(~vec2<i32>(u_input.b, -1i))), ~127584u), global0[_wgslsmith_index_u32(~firstLeadingBit(1u), 8u)], _wgslsmith_f_op_f32(abs(-200f)), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_div_u32(firstTrailingBit(0u | u_input.a.x), abs(u_input.a.x))));
    return Struct_1(min(firstLeadingBit(var_3.b.a), _wgslsmith_clamp_vec3_u32(var_3.a.a, ~arg_1, arg_1) & _wgslsmith_add_vec3_u32(arg_1, countOneBits(vec3<u32>(65181u, u_input.a.x, 1u)))), 1188f, vec2<i32>(~arg_2.x, u_input.c), ~1u);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(vec3<bool>(true, false, false), max(~(vec3<u32>(4294967295u, u_input.a.x, 63243u) & vec3<u32>(u_input.a.x, 75387u, 1u)), vec3<u32>(select(u_input.a.x, 1u, true), u_input.a.x, u_input.a.x & 42782u)) & firstTrailingBit(~select(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(30857u, 10003u, 1u), vec3<bool>(false, false, true))), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 0i, u_input.b), vec3<i32>(_wgslsmith_mod_i32(u_input.b, 0i), u_input.c, -27982i)));
    var var_1 = (var_0.d << (~func_2(vec3<bool>(true, true, false), ~vec3<u32>(var_0.d, u_input.a.x, var_0.a.x), vec3<i32>(u_input.c, 1i, -56541i)).a.x % 32u)) >> (u_input.a.x % 32u);
    var var_2 = vec3<i32>(4412i, -1i, u_input.c);
    global3 = -5595i;
    global1 = _wgslsmith_f_op_f32(floor(var_0.b));
    return global0[_wgslsmith_index_u32(u_input.a.x, 8u)];
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(max(~vec3<u32>(_wgslsmith_clamp_u32(0u, arg_0.a.x, arg_0.a.x), arg_0.a.x, 89030u), arg_0.a), arg_0.b, abs(global2[_wgslsmith_index_u32(~(~(~1u)), 7u)]), ~1u | ~(~u_input.a.x));
    global0 = array<Struct_1, 8>();
    let var_1 = select(!vec3<bool>(!(2147483647i <= u_input.c), false, arg_0.c.x >= var_0.c.x), vec3<bool>(false, !(_wgslsmith_div_i32(var_0.c.x, -35678i) <= -var_0.c.x), false), any(vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true)));
    global1 = 175f;
    let var_2 = ~firstTrailingBit(countOneBits(~vec3<i32>(u_input.c, arg_0.c.x, arg_0.c.x))) << (~(_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 1u, 22200u), vec3<u32>(var_0.d, 4294967295u, u_input.a.x), false), arg_0.a) << (vec3<u32>(~1u, max(arg_0.d, var_0.d), countOneBits(arg_0.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    return Struct_2(arg_0, var_0, -506f, 39500u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 7>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1200f * -481f), 745f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -671f), -1260f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1237f)) - _wgslsmith_f_op_f32(min(-657f, -1096f)))))), 752f);
    var var_1 = func_4(func_1());
    let var_2 = var_1.b;
    let var_3 = !(!vec3<bool>(false, _wgslsmith_f_op_f32(-var_1.b.b) >= func_2(vec3<bool>(true, true, false), var_1.b.a, vec3<i32>(1i, var_2.c.x, var_1.a.c.x)).b, any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false))));
    global2 = array<vec2<i32>, 7>();
    var var_4 = _wgslsmith_f_op_f32(func_3(var_1.b, ~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, var_1.a.a.x, 25503u, var_1.d), vec4<u32>(4294967295u, var_1.d, 43700u, 0u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_0.x, var_1.c, 268f) + vec4<f32>(-1063f, 2914f, -708f, 207f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 999f, var_1.c, 710f), vec4<f32>(-136f, -706f, -112f, var_2.b)))) + vec4<f32>(func_2(select(var_3, var_3, vec3<bool>(var_3.x, var_3.x, var_3.x)), ~vec3<u32>(4294967295u, 91768u, 1u), -vec3<i32>(-2147483647i, var_2.c.x, var_2.c.x)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1016f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -938f) + var_0.x), _wgslsmith_f_op_f32(-624f * _wgslsmith_f_op_f32(abs(-1000f))))), Struct_1((vec3<u32>(u_input.a.x, 40836u, 4294967295u) << (_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1650u, 0u), var_2.a) % vec3<u32>(32u))) ^ func_4(func_2(var_3, var_2.a, vec3<i32>(u_input.b, var_1.a.c.x, var_2.c.x))).a.a, -759f, ~global2[_wgslsmith_index_u32(min(1u ^ var_2.a.x, var_2.a.x), 7u)], 40075u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d, _wgslsmith_div_u32(var_1.b.d, var_2.d), var_1.d), vec3<u32>(~44676u, var_2.d, 0u)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_2.b)) + _wgslsmith_f_op_f32(765f * 1174f)), _wgslsmith_f_op_f32(ceil(var_0.x)), var_2.b))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -341f), 702f, 488f), func_1().a.x);
}

