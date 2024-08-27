struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: Struct_3;

var<private> global2: vec2<f32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(3405u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x));
    var var_2 = 21395i;
    let var_3 = -_wgslsmith_add_vec3_i32(-vec3<i32>(arg_1.x, global1.b, -1i), vec3<i32>(_wgslsmith_add_i32(arg_0.a.e, 42540i), _wgslsmith_add_i32(0i, arg_0.a.e), global1.a.a.e)) | -firstTrailingBit(abs(arg_1.wzx));
    var var_4 = arg_1;
    return _wgslsmith_sub_u32(~(~select(u_input.a.x, 36611u, true) & _wgslsmith_add_u32(68000u, 25167u)), 4294967295u);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3) -> u32 {
    var var_0 = ~u_input.a.x;
    var var_1 = Struct_3(arg_1.a, arg_1.a.a.e, _wgslsmith_div_vec4_u32(~vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(54941u, 1u, 1u, arg_1.a.b.x), u_input.a), u_input.a.x & 27163u, func_3(Struct_2(global1.a.a, arg_1.a.b), vec4<i32>(-40319i, 14307i, 2147483647i, -8012i), Struct_1(arg_1.a.a.b.x, arg_1.e, arg_1.a.a.c, global1.a.a.d, u_input.b.x), Struct_1(arg_1.e.x, vec4<bool>(false, false, false, true), vec4<f32>(-945f, global2.x, global1.a.a.c.x, global2.x), global1.a.a.d, global1.a.a.e))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 21216u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 48993u, 38160u, 0u)) << (vec4<u32>(4294967295u, firstTrailingBit(0u), func_3(arg_1.a, vec4<i32>(u_input.b.x, -40807i, -2147483647i, u_input.b.x), global1.a.a, global1.a.a), 71244u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(arg_1.d + _wgslsmith_f_op_vec2_f32(select(arg_1.d, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global1.d * global1.a.a.c.yx))), false))), arg_1.a.a.b);
    global1 = Struct_3(Struct_2(arg_1.a.a, vec2<u32>(~func_3(Struct_2(Struct_1(arg_1.e.x, vec4<bool>(var_1.e.x, global1.a.a.b.x, arg_1.a.a.b.x, global1.e.x), vec4<f32>(-1324f, 538f, -816f, 184f), false, global1.a.a.e), u_input.a.zw), vec4<i32>(21968i, 1i, var_1.a.a.e, global1.a.a.e), var_1.a.a, Struct_1(global1.a.a.d, vec4<bool>(global1.a.a.a, global1.e.x, false, true), global1.a.a.c, global1.a.a.d, arg_1.b)), 29070u)), _wgslsmith_sub_i32(-var_1.a.a.e, u_input.b.x), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.b.x, arg_0.x), global1.c.yx), arg_1.c.x, ~global1.c.x, ~(global1.a.b.x | 4294967295u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_1.d))), global1.a.a.b);
    global2 = var_1.d;
    var_0 = var_1.a.b.x;
    return 4697u;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    let var_0 = abs(-(arg_2.x << (global1.a.b.x % 32u)));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.a ^ _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, 19483u, 53778u, global1.c.x)), vec4<u32>(func_2(vec2<u32>(u_input.a.x, 32758u), Struct_3(Struct_2(Struct_1(true, global1.a.a.b, global1.a.a.c, false, arg_2.x), vec2<u32>(7963u, 0u)), u_input.b.x, vec4<u32>(1u, 0u, global1.a.b.x, global1.c.x), vec2<f32>(global2.x, 203f), vec4<bool>(false, false, true, arg_0))), 60628u, ~37803u, ~0u)), reverseBits(_wgslsmith_mult_vec4_u32(abs(u_input.a), ~global1.c))), 8u)], global1.a.a.e, ~(~u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x))), !(!global1.a.a.b));
    var var_2 = ~(global1.c.wz ^ (global1.a.b & ~select(vec2<u32>(u_input.a.x, global1.a.b.x), vec2<u32>(var_1.c.x, global1.c.x), arg_0)));
    let var_3 = Struct_1(!(!all(vec3<bool>(false, arg_0, true))), !select(var_1.e, vec4<bool>(true, var_1.a.a.d, global1.b == arg_2.x, any(vec3<bool>(arg_0, arg_0, global1.e.x))), !(!arg_0)), vec4<f32>(-1576f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(1735f * 239f), 1427f), any(select(!(!vec2<bool>(false, global1.a.a.a)), vec2<bool>(true, var_1.c.x > u_input.a.x), all(vec2<bool>(var_1.a.a.d, arg_3)))), _wgslsmith_mult_i32(global1.a.a.e, 0i));
    global0 = array<Struct_2, 8>();
    return firstTrailingBit(min(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_3.e, -20045i, 9539i), i32(-1i) * -17546i, var_3.e), 0i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -1i, var_3.e), max(arg_2, arg_2))));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = global1.a;
    var var_1 = Struct_3(Struct_2(Struct_1(1766f < _wgslsmith_f_op_f32(-global1.a.a.c.x), var_0.a.b, vec4<f32>(global1.d.x, -406f, 1000f, 698f), all(global1.a.a.b.xy), _wgslsmith_mult_i32(1i, countOneBits(var_0.a.e))), vec2<u32>(global1.a.b.x << (abs(u_input.a.x) % 32u), select(~var_0.b.x, ~var_0.b.x, false))), 24034i, ~_wgslsmith_mult_vec4_u32(u_input.a ^ max(u_input.a, u_input.a), _wgslsmith_add_vec4_u32(global1.c, vec4<u32>(global1.a.b.x, 8577u, 21219u, var_0.b.x)) | abs(u_input.a)), var_0.a.c.xx, !select(var_0.a.b, global1.e, true));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(f32(-1f) * -121f)), 1121f)) + _wgslsmith_f_op_f32(-612f + 1f))));
    var var_3 = Struct_3(global1.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.x, -2147483647i, 0i), vec3<i32>(-2147483647i, -75590i, 0i)) | 2147483647i, firstLeadingBit(~((u_input.a | u_input.a) >> (_wgslsmith_div_vec4_u32(global1.c, global1.c) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1856f, global1.d.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(603f, -663f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.d.x, 938f))))))))), !var_1.e);
    var var_4 = Struct_2(Struct_1(false, var_1.a.a.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.c.x, 2962f, var_0.a.c.x, var_2))))), true, 1i), vec2<u32>(u_input.a.x | 0u, global1.c.x));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 8>();
    let var_0 = vec3<f32>(global2.x, 999f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x)))));
    var var_1 = global1.a;
    let var_2 = func_4(countOneBits(vec4<i32>(-2147483647i, var_1.a.e, func_1(var_1.a.e >= var_1.a.e, var_1.a.c.xy, ~vec4<i32>(var_1.a.e, u_input.b.x, 1i, global1.b), !var_1.a.a), abs(countOneBits(55797i)))));
    global2 = _wgslsmith_f_op_vec2_f32(var_0.xx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.d.x, 1396f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -1441f), var_1.a.c.xx))))));
    global2 = var_0.yx;
    global0 = array<Struct_2, 8>();
    let var_3 = ~vec2<u32>(1u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.e, _wgslsmith_f_op_vec4_f32(max(global1.a.a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-489f + -957f), var_2.c.x, -2034f, -355f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1.a.a.c, vec4<f32>(608f, 531f, global2.x, global1.d.x)) + var_2.c)))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~global1.a.b, ~var_1.b));
}

