struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(0i, 1i, 17106i, 23221i, 0i, 24416i, -13403i, 0i, 2147483647i, i32(-2147483648), 0i, 1i, 1i, -1068i, -21094i, 0i, 2147483647i, 1i, 2147483647i, -1i, -1i);

var<private> global1: f32;

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: u32) -> u32 {
    let var_0 = vec4<u32>(arg_2, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c & 66890u, arg_2 ^ 1u, ~20576u, countOneBits(u_input.a.x)), vec4<u32>(~arg_2, 4294967295u, min(4294967295u, arg_1.c), min(0u, 79532u))), 1u ^ _wgslsmith_mult_u32(~u_input.a.x, countOneBits(arg_1.c)), ~47977u & arg_2);
    global1 = 1189f;
    var var_1 = Struct_2(true, -(vec2<i32>(global0[_wgslsmith_index_u32(~21982u, 21u)], _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(arg_2, 21u)], -1i, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], -34195i, 0i, -2147483647i))) & vec2<i32>(global0[_wgslsmith_index_u32(23634u, 21u)] | 1i, -global0[_wgslsmith_index_u32(u_input.a.x, 21u)])));
    let var_2 = !select(select(!arg_1.a.xy, arg_0.xy, !select(vec2<bool>(false, var_1.a), arg_0.zx, arg_0.x)), !select(arg_1.a.zy, vec2<bool>(arg_1.d, false), true), select(!vec2<bool>(arg_1.b, false), arg_1.a.xx, all(!vec3<bool>(false, arg_0.x, false))));
    let var_3 = select(select(arg_0.yx, select(vec2<bool>(var_2.x & true, false), !arg_1.a.xy, var_1.a), arg_0.xx), !select(!vec2<bool>(var_1.a, arg_1.b), arg_0.yy, vec2<bool>(all(vec4<bool>(false, var_1.a, false, false)), false)), !(!select(select(vec2<bool>(arg_1.d, var_2.x), arg_0.yx, vec2<bool>(false, false)), arg_1.a.yz, var_2)));
    return _wgslsmith_dot_vec2_u32(~var_0.ww >> (max(select(vec2<u32>(arg_2, u_input.a.x), ~vec2<u32>(arg_1.c, 74995u), select(false, true, true)), reverseBits(~u_input.a.zw)) % vec2<u32>(32u)), ~(~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, 91140u), vec2<u32>(97200u, u_input.a.x)), vec2<u32>(4294967295u, 0u) | vec2<u32>(40602u, var_0.x))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = all(!arg_1.a.a);
    let var_1 = arg_1;
    global2 = array<Struct_1, 31>();
    var var_2 = Struct_5(!arg_1.c.a, ~_wgslsmith_mult_u32(4294967295u, ~(~1u)), var_1.c.b.x, !arg_1.a.a);
    let var_3 = Struct_4(-43017i, arg_1.a, ~vec4<u32>(73302u, 41426u, reverseBits(var_1.d.x) >> (u_input.a.x % 32u), var_1.a.c));
    return vec4<i32>(~(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_3.a, 18689i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.b.x, var_2.c, -11663i), arg_0)) << (var_2.b % 32u)), abs(-1i), _wgslsmith_add_i32(var_1.c.b.x, select(global0[_wgslsmith_index_u32(func_3(vec3<bool>(true, var_1.a.a.x, false), var_1.a, var_1.d.x), 21u)] | arg_0.x, 0i, var_0)), (2147483647i ^ arg_0.x) | var_2.c);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> vec2<f32> {
    global1 = 1f;
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(514f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(766f, -1477f))))));
    var var_0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(-36013i, global0[_wgslsmith_index_u32(abs(arg_1), 21u)], ~(-2147483647i), 30194i), ~vec4<i32>(40704i, global0[_wgslsmith_index_u32(1u, 21u)], ~2147483647i, arg_2.b.x), func_2(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, arg_2.b.x, arg_2.b.x), countOneBits(vec3<i32>(33831i, -7050i, global0[_wgslsmith_index_u32(18724u, 21u)])), firstTrailingBit(vec3<i32>(arg_2.b.x, 1i, arg_2.b.x))), Struct_3(Struct_1(arg_0.a, arg_2.a, u_input.a.x, arg_0.b), -213f, Struct_2(false, arg_2.b), u_input.a, _wgslsmith_div_vec4_f32(vec4<f32>(1077f, 714f, 1039f, -1017f), vec4<f32>(194f, 338f, -1015f, 675f))))) ^ select(abs(-vec4<i32>(global0[_wgslsmith_index_u32(332u, 21u)], global0[_wgslsmith_index_u32(17660u, 21u)], 1i, 2147483647i)), select(vec4<i32>(arg_2.b.x, _wgslsmith_dot_vec2_i32(arg_2.b, arg_2.b), -2147483647i, _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(arg_0.c, 21u)], -52433i)), vec4<i32>(~arg_2.b.x, arg_2.b.x, arg_2.b.x, 2147483647i), !arg_0.a.x), ((global0[_wgslsmith_index_u32(arg_1, 21u)] | arg_2.b.x) >= ~arg_2.b.x) || !(!arg_2.a));
    var var_1 = Struct_5(arg_0.b, arg_0.c, -arg_2.b.x, arg_0.a);
    let var_2 = ~4294967295u;
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-497f * -1817f), -2126f)) + 349f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-894f - 1000f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    global0 = array<i32, 21>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(global2[_wgslsmith_index_u32(~(~(~u_input.a.x)), 31u)], _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, 128084u), u_input.a.xw), Struct_2(any(vec3<bool>(true, true, true)), abs(vec2<i32>(1i, global0[_wgslsmith_index_u32(0u, 21u)])) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.yz) % vec2<u32>(32u))))).x);
    global0 = array<i32, 21>();
    global2 = array<Struct_1, 31>();
    var var_0 = Struct_2(true, vec2<i32>(firstTrailingBit(global0[_wgslsmith_index_u32(63561u, 21u)]), 71022i >> (_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), 1u) % 32u)));
    return -835f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1140f, 1919f)) - _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec3<bool>(false, false, false), true, 8813u, true), u_input.a.x, Struct_2(false, vec2<i32>(-49564i, global0[_wgslsmith_index_u32(1u, 21u)]))))), -1337f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1447f + 617f), _wgslsmith_f_op_f32(round(-228f)))))));
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1124f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1072f + -490f), _wgslsmith_f_op_f32(f32(-1f) * -187f))) + _wgslsmith_f_op_f32(trunc(1f))));
    let var_2 = -137f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-270f)));
    let var_3 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(32246i, global0[_wgslsmith_index_u32(0u, 21u)], -39993i), vec3<i32>(51363i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -1i)), ~vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], -1i, global0[_wgslsmith_index_u32(1u, 21u)])), -vec3<i32>(global0[_wgslsmith_index_u32(1u, 21u)], -222i, global0[_wgslsmith_index_u32(26588u, 21u)]) ^ -vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)])), func_2(-_wgslsmith_mod_vec3_i32(vec3<i32>(19882i, -1i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 16658i, global0[_wgslsmith_index_u32(1u, 21u)])), Struct_3(Struct_1(vec3<bool>(false, false, false), false, u_input.a.x, true), 1155f, Struct_2(true, vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(16072u, 21u)])), vec4<u32>(4294967295u, 62570u, u_input.a.x, 31678u) & vec4<u32>(0u, 1u, u_input.a.x, 4294967295u), vec4<f32>(-549f, var_2, var_2, 722f))).wxz) >= -(i32(-1i) * -8403i);
    let var_4 = global0[_wgslsmith_index_u32(0u, 21u)];
    let var_5 = Struct_3(global2[_wgslsmith_index_u32(func_3(vec3<bool>(true, var_3 != any(vec2<bool>(var_3, var_3)), var_3 | true), Struct_1(vec3<bool>(!var_3, false, !var_3), false, 78975u, any(vec2<bool>(true, true))), 25122u), 31u)], 1418f, Struct_2(true, ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)] >> (u_input.a.x % 32u))), u_input.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-213f, 1148f, var_2, -135f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(748f, 1128f, var_2, -2108f), vec4<f32>(-255f, var_2, 408f, var_2)), _wgslsmith_div_vec4_f32(vec4<f32>(-2636f, 1000f, var_2, -157f), vec4<f32>(var_2, 1080f, var_2, -210f)), var_2 != 154f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.zxz, u_input.a.x, ~(~vec2<u32>(4294967295u, 1u)) >> (u_input.a.xy % vec2<u32>(32u)), -914f, ~(-_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_5.c.b.x, -21580i, 1i), reverseBits(vec3<i32>(0i, -30075i, global0[_wgslsmith_index_u32(4294967295u, 21u)])), vec3<i32>(var_5.c.b.x, 0i, -1i) ^ vec3<i32>(-11851i, global0[_wgslsmith_index_u32(u_input.a.x, 21u)], var_5.c.b.x))));
}

