struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(vec2<bool>(false, true), false, false, vec4<u32>(91881u, 0u, 4294967295u, 26756u), Struct_1(-1i, vec4<i32>(2147483647i, 0i, i32(-2147483648), 2147483647i))));

var<private> global1: array<vec2<bool>, 16>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = select(vec2<bool>(true, all(!select(vec4<bool>(true, global0.a.c, arg_1, true), vec4<bool>(global0.a.c, global0.a.c, true, true), true))), !(!select(global0.a.a, !global1[_wgslsmith_index_u32(17998u, 16u)], select(vec2<bool>(global0.a.c, true), vec2<bool>(false, true), arg_1))), vec2<bool>(arg_1, true));
    global0 = Struct_5(global0.a);
    return -2008f;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> vec4<u32> {
    global1 = array<vec2<bool>, 16>();
    let var_0 = arg_0.x;
    let var_1 = Struct_3(87584u, global0.a.e, global0.a.e, u_input.a.x, Struct_2(vec2<bool>(select(false, true, 53609u >= u_input.a.x), true), false, global0.a.a.x || true, vec4<u32>(firstLeadingBit(u_input.b.x << (4294967295u % 32u)), 1u, ~(~66645u), global0.a.d.x), global0.a.e));
    global0 = Struct_5(var_1.e);
    let var_2 = vec2<u32>(~_wgslsmith_dot_vec4_u32(reverseBits(global0.a.d), select(firstTrailingBit(var_1.e.d), vec4<u32>(u_input.b.x, global0.a.d.x, 0u, u_input.a.x), select(vec4<bool>(var_1.e.b, var_1.e.b, true, true), vec4<bool>(global0.a.b, global0.a.a.x, var_1.e.b, false), true))), u_input.b.x);
    return vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(~0u, firstTrailingBit(var_2.x)), ~var_2.x), min(~firstLeadingBit(firstLeadingBit(0u)), 1u), ~reverseBits(~abs(40983u)), _wgslsmith_clamp_u32(var_1.e.d.x, var_1.e.d.x & _wgslsmith_sub_u32(4294967295u, u_input.b.x), 22311u));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = global0.a.e;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1210f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(274f - arg_0))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(211f, -1042f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), !(!vec3<bool>(true, !global0.a.a.x, global0.a.c))));
    let var_2 = _wgslsmith_dot_vec4_u32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(1622f, 206f)), _wgslsmith_f_op_f32(func_3(17768u, global0.a.c))) + vec2<f32>(1274f, _wgslsmith_f_op_f32(round(-929f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -840f)), var_1.x), -var_0.b.zx), reverseBits(global0.a.d));
    global0 = Struct_5(Struct_2(select(!(!vec2<bool>(true, global0.a.b)), !global0.a.a, all(!vec4<bool>(false, global0.a.c, global0.a.c, global0.a.c))), global0.a.a.x == false, any(vec3<bool>(any(vec2<bool>(global0.a.c, global0.a.b)), true, true)), ~vec4<u32>(1u, 63259u, ~u_input.a.x, u_input.b.x), global0.a.e));
    global0 = Struct_5(global0.a);
    return Struct_1(2147483647i, -abs(abs(var_0.b)) >> (vec4<u32>(22502u, select(global0.a.d.x, ~var_2, true), var_2, global0.a.d.x) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(285f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-403f * 752f))), _wgslsmith_f_op_f32(f32(-1f) * -1880f)));
    global0 = Struct_5(Struct_2(vec2<bool>(global0.a.c, false), true, !(!all(vec4<bool>(global0.a.b, global0.a.b, true, true))), ~_wgslsmith_add_vec4_u32(global0.a.d << (global0.a.d % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 12111u, 11118u, arg_1.x), vec4<u32>(24403u, u_input.b.x, arg_1.x, arg_1.x))), Struct_1(_wgslsmith_div_i32(arg_0.b.x, u_input.c.x) & -global0.a.e.b.x, _wgslsmith_add_vec4_i32(global0.a.e.b, arg_0.b ^ vec4<i32>(global0.a.e.a, global0.a.e.a, 0i, arg_0.b.x)))));
    let var_2 = Struct_2(vec2<bool>(any(select(!vec3<bool>(false, false, global0.a.a.x), vec3<bool>(global0.a.a.x, false, true), vec3<bool>(global0.a.b, false, true))), false), max(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(72658u, global0.a.d.x, 109115u, u_input.b.x), select(global0.a.d, global0.a.d, vec4<bool>(global0.a.c, global0.a.a.x, global0.a.c, global0.a.a.x)))) >= ~(arg_1.x & ~u_input.a.x), any(select(select(vec2<bool>(global0.a.c, false), vec2<bool>(global0.a.c, global0.a.b), global0.a.a.x), vec2<bool>(true, global0.a.a.x), arg_1.x == 5342u)) && (-_wgslsmith_dot_vec3_i32(global0.a.e.b.yzx, vec3<i32>(-14894i, -1i, -29418i)) == -72039i), _wgslsmith_mod_vec4_u32(select(~global0.a.d, vec4<u32>(arg_1.x, 0u, arg_1.x, global0.a.d.x), true) | (countOneBits(global0.a.d) >> (~vec4<u32>(5752u, global0.a.d.x, 0u, 82164u) % vec4<u32>(32u))), ~global0.a.d), func_2(_wgslsmith_f_op_f32(trunc(2014f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(-var_1))));
    global0 = Struct_5(Struct_2(!vec2<bool>(!global0.a.c, true), false, false, var_2.d, global0.a.e));
    return Struct_2(select(var_2.a, vec2<bool>(!global0.a.c, any(vec4<bool>(global0.a.c, true, global0.a.b, true))), true), true || !var_2.c, 118f <= var_1, var_2.d, Struct_1(i32(-1i) * -2147483647i, vec4<i32>(~6070i, u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c.x, arg_0.b.x), 2147483647i), _wgslsmith_add_i32(~global0.a.e.a, ~1i))));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = func_5(func_2(_wgslsmith_div_f32(1401f, 1066f), -1131f), ~min(~vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(4294967295u, 1062u) ^ u_input.a.xx) & global0.a.d.xw);
    global1 = array<vec2<bool>, 16>();
    var var_1 = global0.a.e.b & -_wgslsmith_mod_vec4_i32(var_0.e.b, -(~var_0.e.b));
    global0 = Struct_5(Struct_2(var_0.a, any(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(global0.a.d.ywz, vec3<u32>(var_0.d.x, 0u, 50505u), false), u_input.a), 16u)]), true, ~abs(vec4<u32>(global0.a.d.x, var_0.d.x, 4294967295u, 41625u)) | vec4<u32>(_wgslsmith_div_u32(global0.a.d.x, var_0.d.x), 1u, 1u | global0.a.d.x, global0.a.d.x), Struct_1(_wgslsmith_add_i32(global0.a.e.a, var_0.e.a), var_0.e.b)));
    var var_2 = Struct_5(Struct_2(!vec2<bool>(true, all(vec3<bool>(var_0.b, true, false))), global0.a.a.x, true, vec4<u32>(_wgslsmith_mod_u32(~u_input.a.x, ~1u), _wgslsmith_dot_vec4_u32(var_0.d, var_0.d), var_0.d.x, 1u), Struct_1(~1i, var_0.e.b)));
    return Struct_3(var_0.d.x & _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.a.x, 24081u, 1u, 1u)), abs(vec4<u32>(1u, 40918u, 44946u, 93792u))), func_5(func_5(global0.a.e, min(_wgslsmith_add_vec2_u32(vec2<u32>(13531u, u_input.b.x), var_0.d.zy), global0.a.d.zw)).e, _wgslsmith_clamp_vec2_u32(var_0.d.wy, var_2.a.d.ww, var_2.a.d.xz)).e, var_2.a.e, ~global0.a.d.x, global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-397f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_1 = -1i;
    global1 = array<vec2<bool>, 16>();
    let var_2 = vec3<i32>(global0.a.e.b.x, u_input.c.x, max(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(-11280i, u_input.c.x), ~1i), global0.a.e.a));
    global1 = array<vec2<bool>, 16>();
    let var_3 = func_1(true);
    global1 = array<vec2<bool>, 16>();
    global1 = array<vec2<bool>, 16>();
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2019f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -866f), _wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) * _wgslsmith_f_op_f32(f32(-1f) * -171f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(var_3.e.d.zxz, var_3.e.d.xxz), func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 212f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1066f, -1000f) * vec2<f32>(var_0, var_0))), var_3.e.e.b.zy).xxw));
}

