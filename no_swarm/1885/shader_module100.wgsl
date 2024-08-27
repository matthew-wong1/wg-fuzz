struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: i32;

var<private> global2: f32 = -1255f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(-2147483647i, 641f, 6571u, vec2<bool>(any(!arg_1.d), u_input.d.x >= _wgslsmith_div_i32(2147483647i, -2147483647i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -373f, arg_2)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-101f, var_0.b, var_0.b) + vec3<f32>(624f, -450f, -2749f)))))));
    var var_2 = true;
    global1 = -74155i;
    var var_3 = Struct_1((i32(-1i) * -32362i) >> (max(arg_1.c, 19632u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-395f + _wgslsmith_f_op_f32(ceil(var_0.b))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-475f, var_1.x)), arg_3.b)) - _wgslsmith_f_op_f32(-arg_3.b)), 4294967295u, vec2<bool>(true, true));
    return vec3<i32>(_wgslsmith_sub_i32(-(~1i), ~(~max(arg_1.a, 13057i))), _wgslsmith_add_i32(_wgslsmith_mult_i32(22437i, -_wgslsmith_sub_i32(-40777i, u_input.d.x)), countOneBits(var_3.a)), select(-34257i, var_3.a, any(!var_3.d)) & -select(_wgslsmith_mod_i32(-35623i, var_3.a), firstTrailingBit(arg_1.a), var_3.d.x));
}

fn func_4(arg_0: vec3<i32>) -> i32 {
    let var_0 = select(true, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(807f - -1912f), _wgslsmith_div_f32(311f, 764f), all(vec2<bool>(false, false)))) - -1000f) == -314f);
    let var_1 = firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 0u, ~5172u, _wgslsmith_sub_u32(u_input.a.x, u_input.c)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 1u, 58453u, u_input.e), vec4<u32>(u_input.a.x, u_input.c, 45239u, u_input.c)), vec4<u32>(u_input.c, u_input.e, 27183u, 49068u) & vec4<u32>(u_input.c, 24995u, 1968u, u_input.c))));
    global0 = array<Struct_1, 25>();
    let var_2 = _wgslsmith_mult_u32(~8033u, u_input.e);
    var var_3 = var_1.x;
    return _wgslsmith_div_i32(40591i, _wgslsmith_div_i32(12921i & (u_input.d.x ^ 1i), reverseBits(arg_0.x))) << (0u % 32u);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> i32 {
    global1 = _wgslsmith_div_i32(arg_3.a, func_4(_wgslsmith_clamp_vec3_i32(-func_3(1u, Struct_1(u_input.d.x, arg_3.b, 1u, arg_3.d), -167f, arg_3), u_input.d.zzz | u_input.d.wxz, u_input.d.wwx)));
    let var_0 = vec2<bool>(arg_3.d.x, true);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.b))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f + _wgslsmith_div_f32(arg_0, -1594f))))));
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>((4294967295u >> (arg_3.c % 32u)) | ~arg_3.c, 0u, ~(4294967295u >> (arg_2 % 32u))), vec3<u32>(arg_2 >> (~25956u % 32u), _wgslsmith_mult_u32(~u_input.c, u_input.a.x), _wgslsmith_mult_u32(firstLeadingBit(1u), 56517u | arg_2))), ~vec3<u32>(45825u, ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), u_input.c & arg_2));
    var var_2 = Struct_1(-12970i, arg_3.b, 0u, !select(vec2<bool>(!var_0.x, arg_3.d.x), !vec2<bool>(true, arg_3.d.x), var_0));
    return var_2.a;
}

fn func_1(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = 4294967295u;
    global0 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_sub_vec2_u32(~u_input.a, u_input.a);
    global2 = 631f;
    global1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.d.x), select(-32395i, -34631i, true)), _wgslsmith_sub_i32(u_input.d.x & u_input.d.x, 1i)) & u_input.d.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, u_input.b, u_input.b), 19054i, -u_input.b) ^ _wgslsmith_mult_i32(-u_input.d.x, -func_2(1000f, vec3<f32>(400f, -911f, -663f), 1u, global0[_wgslsmith_index_u32(var_1.x, 25u)])));
    return vec2<u32>(~(~abs(1u)), _wgslsmith_add_u32(u_input.c, var_1.x));
}

fn func_5(arg_0: vec2<u32>, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(~u_input.b, _wgslsmith_f_op_f32(round(822f)), u_input.a.x, !arg_3.d);
    var var_1 = _wgslsmith_add_i32(arg_2.x, 9039i | ~(~arg_3.a));
    global0 = array<Struct_1, 25>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b * arg_3.b)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f - -1871f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(482f, var_0.b, true)), _wgslsmith_f_op_f32(arg_3.b * -3338f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.b + arg_3.b), _wgslsmith_f_op_f32(f32(-1f) * -1166f), all(vec2<bool>(var_0.d.x, var_0.d.x)))))));
    global0 = array<Struct_1, 25>();
    return arg_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true)) >> (u_input.a % vec2<u32>(32u)), u_input.c, u_input.d, Struct_1(-u_input.d.x << (u_input.c % 32u), 158f, u_input.c, vec2<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(true, false, false))))) & (_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(func_1(vec4<bool>(true, true, true, true)).x, max(u_input.a.x, u_input.e))) > select(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.c), vec3<u32>(u_input.c, 1761u, 59176u))), u_input.c, true));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1111f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-461f)) + 136f), -229f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(528f)) + 638f)))));
    var var_2 = Struct_1(select(25555i, 2147483647i, true), _wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_clamp_u32(abs(firstTrailingBit(u_input.e)), 4294967295u, _wgslsmith_div_u32(u_input.e, ~(~129226u))), !(!select(vec2<bool>(var_0, false), vec2<bool>(true, true), select(vec2<bool>(true, var_0), vec2<bool>(var_0, true), true))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -255f, 2701f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1846f, var_1), _wgslsmith_f_op_f32(var_1 * -2069f), _wgslsmith_f_op_f32(round(var_1))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-331f, var_2.b, var_2.b), vec3<f32>(var_2.b, -595f, var_1)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 746f, var_2.b) + vec3<f32>(var_2.b, 1209f, 236f))))));
    var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(4294967295u, 50486u, u_input.c, var_2.c), vec4<u32>(var_2.c, var_2.c, var_2.c, var_2.c), vec4<bool>(var_2.d.x, true, var_2.d.x, true))) >> (reverseBits(~max(vec4<u32>(u_input.c, 4294967295u, u_input.c, 0u), vec4<u32>(u_input.a.x, var_2.c, 1u, var_2.c))) % vec4<u32>(32u)), firstLeadingBit(firstTrailingBit(abs(~vec4<u32>(135538u, u_input.c, var_2.c, u_input.a.x))))), 25u)];
    var var_4 = ~(~12043i) >> (~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x) | u_input.a, select(u_input.a, u_input.a, var_0))) % 32u);
    global0 = array<Struct_1, 25>();
    var var_5 = Struct_1(0i, _wgslsmith_f_op_f32(var_2.b - -980f), 53039u, !(!select(!vec2<bool>(var_0, var_2.d.x), vec2<bool>(var_0, var_2.d.x), var_2.c > var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_5.b, 135f, var_2.b))), vec3<f32>(-477f, var_5.b, var_3.x))) - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1726f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1435f - -558f))), _wgslsmith_f_op_f32(f32(-1f) * -286f))));
}

