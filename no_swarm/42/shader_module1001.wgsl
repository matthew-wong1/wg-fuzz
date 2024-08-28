struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: f32,
    c: Struct_2,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17>;

var<private> global1: i32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<i32>) -> u32 {
    global0 = array<vec4<u32>, 17>();
    var var_0 = all(vec4<bool>(true, true, (select(u_input.d.x, u_input.a.x, true) <= 1u) != true, select(true, true, _wgslsmith_f_op_f32(trunc(-350f)) <= _wgslsmith_f_op_f32(step(500f, 259f)))));
    global0 = array<vec4<u32>, 17>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1396f - _wgslsmith_f_op_f32(max(-1349f, _wgslsmith_div_f32(835f, 740f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + _wgslsmith_div_f32(-910f, 797f)))));
    var var_2 = arg_1.d & arg_1.d;
    return u_input.d.x;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: u32) -> u32 {
    global1 = -u_input.b;
    var var_0 = global0[_wgslsmith_index_u32(func_2(~firstLeadingBit(_wgslsmith_add_vec3_i32(min(vec3<i32>(u_input.b, 1i, -1i), vec3<i32>(-5150i, -7206i, 1i)), vec3<i32>(1i, -9700i, -1i))), Struct_2(vec3<i32>(_wgslsmith_clamp_i32(min(u_input.b, 2147483647i), -u_input.b, u_input.b), 33716i >> (func_2(vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_2(vec3<i32>(-2147483647i, -34561i, 12642i), vec3<i32>(u_input.b, -22471i, u_input.b), vec4<i32>(u_input.b, u_input.b, -7256i, -37263i), vec4<i32>(u_input.b, u_input.b, 1i, -10502i)), vec2<i32>(u_input.b, 1i)) % 32u), 1i), select(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 14043i), vec3<i32>(-62686i, -36061i, 1i) & vec3<i32>(1i, u_input.b, -24341i)), -max(vec3<i32>(2147483647i, -2867i, u_input.b), vec3<i32>(52683i, 2147483647i, u_input.b)), arg_1.b.x), _wgslsmith_sub_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.b, 0i, u_input.b), vec4<i32>(0i, u_input.b, -26399i, -1i)), select(vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b), vec4<i32>(-11034i, u_input.b, 10973i, u_input.b), vec4<bool>(false, false, true, arg_1.b.x)) << (vec4<u32>(0u, 2440u, 38986u, 0u) % vec4<u32>(32u))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, -12593i, u_input.b), vec4<i32>(-30760i, u_input.b, u_input.b, 2147483647i), vec4<i32>(u_input.b, -41370i, u_input.b, 6207i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 38429i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -2147483647i, u_input.b))) >> (~global0[_wgslsmith_index_u32(~arg_3, 17u)] % vec4<u32>(32u))), vec2<i32>(-_wgslsmith_mod_i32(abs(43430i), u_input.b), u_input.b >> (_wgslsmith_add_u32(u_input.c << (39701u % 32u), abs(5275u)) % 32u))), 17u)];
    let var_1 = vec4<u32>(58229u, 931u, _wgslsmith_mult_u32(abs(0u), ~_wgslsmith_dot_vec2_u32(var_0.yz, var_0.yx) ^ 0u), ~_wgslsmith_dot_vec4_u32(u_input.a, countOneBits(u_input.d)));
    var var_2 = Struct_5(!vec3<bool>(!(!arg_2.x), arg_1.b.x, true), arg_0.x, Struct_2(vec3<i32>(firstTrailingBit(-9854i) | _wgslsmith_dot_vec3_i32(vec3<i32>(14692i, u_input.b, u_input.b), vec3<i32>(u_input.b, 20921i, 59036i)), u_input.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 1i, -14419i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -12171i, u_input.b, u_input.b), vec4<i32>(1i, -1i, -31136i, -21949i)))), -_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(0i, -2147483647i, u_input.b)), reverseBits(vec3<i32>(u_input.b, -2147483647i, -55071i))), vec4<i32>(u_input.b, 1i, 44745i, u_input.b), vec4<i32>(u_input.b | -1i, 1i, -2147483647i, u_input.b)), 1u, !arg_2.xww);
    let var_3 = _wgslsmith_dot_vec2_i32(var_2.c.d.xy, vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-35977i, u_input.b, var_2.c.b.x), vec3<i32>(u_input.b, -34012i, u_input.b)), ~(2147483647i >> (arg_3 % 32u)))) <= -2147483647i;
    return var_2.d;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    var var_0 = vec2<i32>(~(-1i), u_input.b);
    var var_1 = ~18447u;
    global0 = array<vec4<u32>, 17>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-353f, arg_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, -577f)), !vec2<bool>(arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(-164f, -1177f)))), !arg_0.b.zz))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, arg_0.a) - vec2<f32>(arg_0.a, arg_0.a)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1663f, -1337f))))) + vec2<f32>(844f, arg_0.a)));
    var var_3 = !all(vec3<bool>(arg_0.b.x, arg_0.b.x, true));
    return _wgslsmith_mult_u32(~(func_2(vec3<i32>(u_input.b, 1i, -2332i), Struct_2(vec3<i32>(31105i, 2147483647i, 1i), vec3<i32>(var_0.x, 2147483647i, 2147483647i), vec4<i32>(-1i, u_input.b, u_input.b, -15503i), vec4<i32>(var_0.x, u_input.b, u_input.b, 2147483647i)), vec2<i32>(var_0.x, var_0.x)) ^ ~(~4294967295u)), ~_wgslsmith_mult_u32(abs(func_3(vec2<f32>(arg_0.a, var_2.x), arg_0, vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true), 45888u)), abs(~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(63078i, u_input.b), u_input.b);
    global0 = array<vec4<u32>, 17>();
    var var_0 = _wgslsmith_add_u32(u_input.d.x, u_input.d.x);
    global0 = array<vec4<u32>, 17>();
    var_0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_f32(-1218f + _wgslsmith_f_op_f32(-417f + 915f)), select(func_1(Struct_4(_wgslsmith_f_op_f32(1134f - -115f), vec4<bool>(true, true, true, true)), Struct_1(~vec3<u32>(u_input.d.x, 4294967295u, 5825u))), firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, 16214u))), ~52066u == ~_wgslsmith_dot_vec3_u32(u_input.a.zwy, u_input.a.yyz)));
}

