struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<i32>(-18192i, 1i, -1i), Struct_1(vec4<i32>(16421i, 22921i, 2147483647i, 0i), true, vec3<bool>(false, false, true), vec2<u32>(45153u, 65707u), -51880i), 1i, vec3<f32>(815f, 786f, 551f));

var<private> global1: Struct_3 = Struct_3(false, Struct_2(vec3<i32>(-2611i, -5504i, -1i), Struct_1(vec4<i32>(17391i, -9758i, 0i, -1i), true, vec3<bool>(false, true, false), vec2<u32>(28502u, 1u), -72279i), 1i, vec3<f32>(-448f, 218f, -883f)), vec3<bool>(false, false, true), vec3<i32>(-1i, 34102i, 26825i));

var<private> global2: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(1139f, -245f), vec2<f32>(591f, -576f), vec2<f32>(-683f, -2155f), vec2<f32>(212f, -423f));

var<private> global3: u32 = 4294967295u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> vec4<bool> {
    global0 = Struct_2(~abs(global0.b.a.yww) << ((vec3<u32>(global1.b.b.d.x << (u_input.c % 32u), _wgslsmith_mod_u32(0u, 30038u), global1.b.b.d.x) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(18480u, global1.b.b.d.x, u_input.c) ^ vec3<u32>(global0.b.d.x, global0.b.d.x, global1.b.b.d.x), _wgslsmith_div_vec3_u32(vec3<u32>(global0.b.d.x, u_input.b, 47545u), vec3<u32>(1u, 0u, global1.b.b.d.x)))) % vec3<u32>(32u)), Struct_1(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.d.x, 0i), reverseBits(global1.b.c), ~global0.a.x), -_wgslsmith_sub_i32(0i, global1.d.x), global0.b.e, -43118i), true, select(vec3<bool>(true, true, global1.a), vec3<bool>(false, true, arg_1), vec3<bool>(all(global0.b.c), global0.b.b, false)), vec2<u32>(33660u, ~(~23053u)), -global1.b.a.x), 0i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b.d.x)))), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f) - global0.d.x)));
    let var_0 = global1.b.d;
    return !(!(!vec4<bool>(!arg_1, false, arg_1, arg_0.x)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    let var_0 = func_2(global0.b.c, any(vec3<bool>(global1.c.x, true, global0.b.c.x)) & global0.b.b).zxy;
    global3 = global0.b.d.x;
    let var_1 = 1648f;
    let var_2 = Struct_2(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(abs(global0.a), _wgslsmith_mult_vec3_i32(global1.d, vec3<i32>(0i, -10047i, 1i))), firstLeadingBit(~vec3<i32>(33337i, global0.c, 10605i))) & _wgslsmith_mult_vec3_i32(~vec3<i32>(-14159i, 1i, -26537i), -max(global1.d, global1.d)), Struct_1(global0.b.a, all(vec4<bool>(true, global0.b.b, true, u_input.d.x < -41313i)), select(func_2(vec3<bool>(global0.b.b, global1.c.x, true), true).xwx, select(select(global0.b.c, vec3<bool>(global0.b.c.x, false, global1.b.b.c.x), global0.b.c.x), !global1.c, true), global1.c), _wgslsmith_sub_vec2_u32(firstLeadingBit(reverseBits(global1.b.b.d)), ~vec2<u32>(11756u, u_input.a)), ~u_input.d.x), global1.d.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 * -1220f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(800f + -205f))), 1081f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))));
    global2 = array<vec2<f32>, 4>();
    return !func_2(func_2(select(select(vec3<bool>(false, global1.a, true), var_0, true), !vec3<bool>(global0.b.b, false, global0.b.b), var_0.x), any(!global0.b.c)).wzy, true);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_2 {
    global1 = Struct_3(all(select(vec4<bool>(global0.b.c.x, false, !global0.b.c.x, select(global0.b.b, false, arg_1.b.b)), select(!vec4<bool>(false, arg_1.b.b, arg_1.b.b, true), vec4<bool>(false, true, global1.b.b.c.x, global1.a), select(vec4<bool>(false, global0.b.b, true, true), vec4<bool>(true, false, true, global0.b.c.x), vec4<bool>(global0.b.c.x, true, false, true))), true)), arg_1, vec3<bool>(global0.b.b, !arg_1.b.c.x, any(select(func_2(vec3<bool>(true, global0.b.b, false), global0.b.c.x), func_3(vec4<f32>(-210f, 394f, arg_0.x, -1000f)), select(vec4<bool>(global1.c.x, arg_1.b.b, true, global0.b.b), vec4<bool>(true, false, false, arg_1.b.b), vec4<bool>(arg_1.b.c.x, global1.c.x, false, global0.b.b))))), max(vec3<i32>(abs(u_input.d.x), _wgslsmith_add_i32(2147483647i, u_input.d.x), ~(-1i)), arg_1.b.a.zxw));
    global0 = Struct_2(_wgslsmith_mod_vec3_i32(abs(global0.a ^ vec3<i32>(-2147483647i, global1.d.x, -2147483647i)), arg_1.a), Struct_1(_wgslsmith_mult_vec4_i32(global0.b.a, arg_1.b.a), false, select(vec3<bool>(arg_1.b.c.x | global0.b.b, 2147483647i != global1.d.x, any(vec4<bool>(false, false, global1.c.x, arg_1.b.c.x))), !(!global1.c), vec3<bool>(true, true, true)), vec2<u32>(u_input.a, _wgslsmith_mod_u32(~41906u, 79470u)), ~_wgslsmith_dot_vec4_i32(global0.b.a, arg_1.b.a) << (0u % 32u)), -2147483647i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-122f + global0.d.x), -890f)), arg_1.d.x, _wgslsmith_f_op_f32(-226f + _wgslsmith_f_op_f32(global1.b.d.x + global1.b.d.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-675f, 512f, global0.d.x))));
    global1 = Struct_3(true, Struct_2(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-19584i, 40249i, 1i)), vec3<i32>(-1i, arg_1.c, -6088i) ^ vec3<i32>(-2147483647i, -50255i, 20617i)), Struct_1(firstLeadingBit(arg_1.b.a), func_2(vec3<bool>(global1.a, false, false), global1.b.b.c.x).x, global0.b.c, ~global1.b.b.d, ~global0.b.a.x), -40285i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global1.b.d))) - global1.b.d)), !(!vec3<bool>(!global0.b.c.x, false, true)), vec3<i32>(global0.a.x, abs(global1.b.a.x | 1i), -1i) ^ (abs(global0.a) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.b.d.x, u_input.c, 10587u), vec3<u32>(arg_1.b.d.x, global1.b.b.d.x, global1.b.b.d.x), vec3<u32>(63156u, 42413u, 4294967295u)) % vec3<u32>(32u))));
    let var_0 = ~firstLeadingBit(firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(12376u, global1.b.b.d.x), global0.b.d), u_input.c)));
    let var_1 = Struct_3(!func_2(func_2(arg_1.b.c, global1.b.b.b).xzz, false).x, global1.b, global0.b.c, ~abs(_wgslsmith_div_vec3_i32(arg_1.a, global1.b.b.a.zxz >> (vec3<u32>(u_input.c, u_input.a, 4294967295u) % vec3<u32>(32u)))));
    return Struct_2(arg_1.b.a.yxz, Struct_1(_wgslsmith_add_vec4_i32(abs(vec4<i32>(6525i, var_1.b.c, global0.b.e, u_input.d.x)), max(vec4<i32>(-1i, u_input.d.x, arg_1.b.e, 2147483647i), _wgslsmith_clamp_vec4_i32(global0.b.a, vec4<i32>(global1.d.x, arg_1.b.a.x, global0.a.x, 2147483647i), global0.b.a))), any(!(!vec3<bool>(true, var_1.a, false))), vec3<bool>(any(global0.b.c.yy), var_1.a, var_1.a), var_0, _wgslsmith_div_i32(-2147483647i << (_wgslsmith_mult_u32(var_0.x, 115618u) % 32u), max(_wgslsmith_dot_vec3_i32(arg_1.b.a.wzx, vec3<i32>(global1.d.x, u_input.d.x, -38024i)), 54052i))), ~select(~(global0.c | 1i), var_1.d.x, true), global1.b.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-788f)), global1.b.d.x)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-742f, -326f)))), global1.b);
    global2 = array<vec2<f32>, 4>();
    var var_1 = max(countOneBits(vec2<u32>(~var_0.b.d.x, countOneBits(_wgslsmith_mod_u32(var_0.b.d.x, var_0.b.d.x)))), ~select((global1.b.b.d & vec2<u32>(1u, global1.b.b.d.x)) ^ ~var_0.b.d, select(var_0.b.d | global0.b.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b.b.d.x, 29846u), var_0.b.d, vec2<u32>(15837u, 3739u)), !global1.a), all(select(vec4<bool>(global1.a, global1.b.b.b, true, true), vec4<bool>(global0.b.b, true, global1.a, global1.b.b.b), vec4<bool>(false, var_0.b.b, false, true)))));
    var var_2 = Struct_3(all(select(vec2<bool>(false, any(global0.b.c.xy)), !(!vec2<bool>(global1.c.x, var_0.b.c.x)), global1.c.x)), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(25601u, 4u)], vec2<f32>(var_0.d.x, var_0.d.x), global1.b.b.c.zy))) - _wgslsmith_f_op_vec2_f32(-func_1(vec2<f32>(var_0.d.x, global0.d.x), var_0).d.yy)), global1.b), var_0.b.c, global0.a);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.d.x - -619f) - _wgslsmith_f_op_f32(var_0.d.x - var_2.b.d.x))))), 1f, global0.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.d, ~(~(vec4<u32>(21476u, 0u, u_input.c, 11307u) | vec4<u32>(global1.b.b.d.x, 4294967295u, var_1.x, 0u))), 1000f, ~var_0.b.a.wzz);
}

