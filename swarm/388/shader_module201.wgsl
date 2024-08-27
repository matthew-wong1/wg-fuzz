struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-1906f, vec3<f32>(-1134f, -1100f, -1930f), 23569i, vec2<u32>(1u, 4294967295u));

var<private> global1: Struct_1 = Struct_1(56976i, -1164f, vec4<f32>(1000f, -207f, -1232f, 496f), vec2<u32>(1u, 0u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec4<i32>) -> vec2<u32> {
    global0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.b))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.x * arg_1))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-355f + arg_0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1407f))))), _wgslsmith_f_op_vec3_f32(sign(global0.b)), _wgslsmith_add_i32(arg_2.x, arg_0.d.c), select(arg_0.c.b.d, reverseBits(~abs(global1.d)), !(_wgslsmith_f_op_f32(arg_0.c.b.b + 722f) != _wgslsmith_f_op_f32(global0.a + -263f))));
    let var_0 = max(arg_0.d.d.x, _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(1u, global0.d.x, global0.d.x)), vec3<u32>(~global1.d.x, ~arg_0.d.d.x, global1.d.x)));
    var var_1 = vec2<f32>(-234f, _wgslsmith_f_op_f32(arg_1 + -275f));
    var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0.a, arg_1, true)), var_1.x, 0i == arg_0.b)) * 371f), -448f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(783f, -936f)) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.c.ww), _wgslsmith_f_op_vec2_f32(-global1.c.wx))))))));
    var var_2 = arg_2.xw;
    return ~(~max(~vec2<u32>(global1.d.x, global0.d.x) & firstLeadingBit(vec2<u32>(global1.d.x, 16999u)), ~vec2<u32>(1u, global0.d.x)));
}

fn func_2() -> bool {
    let var_0 = vec4<u32>(0u, 3035u << (firstLeadingBit(~_wgslsmith_div_u32(global1.d.x, global1.d.x)) % 32u), 4294967295u, 56986u);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(ceil(1196f)), i32(-1i) * -2147483647i, Struct_2(Struct_1(i32(-1i) * -global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), vec4<f32>(global1.b, _wgslsmith_f_op_f32(-global1.b), global1.c.x, _wgslsmith_f_op_f32(global0.a * -2654f)), vec2<u32>(global0.d.x << (var_0.x % 32u), ~var_0.x)), Struct_1(~global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) + global1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c * vec4<f32>(global0.b.x, global0.b.x, global1.b, -1250f))), vec2<u32>(0u, _wgslsmith_dot_vec3_u32(var_0.zww, var_0.yyy)))), Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * global1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1067f) + global1.c.x)), vec3<f32>(312f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.a, 2732f))), -1346f), min(reverseBits(~global0.c), global1.a), func_3(Struct_4(457f, ~global1.a, Struct_2(Struct_1(12828i, global1.c.x, vec4<f32>(179f, -645f, 1156f, -239f), global0.d), Struct_1(0i, -239f, vec4<f32>(global1.c.x, global0.a, -314f, global0.b.x), vec2<u32>(global0.d.x, 1u))), Struct_3(global0.a, global0.b, -1i, var_0.xx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -323f)), u_input.a)));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), global1.a, var_1.c, var_1.d);
    let var_3 = Struct_2(var_2.c.a, var_1.c.a);
    let var_4 = var_0.yww;
    return all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), true), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true), all(vec4<bool>(true, false, false, false)))), select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), true), vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_3 {
    return Struct_3(global0.a, global1.c.xzx, global0.c, global1.d);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_4 {
    let var_0 = func_4(select(vec4<i32>(-1i, _wgslsmith_sub_i32(global0.c & u_input.a.x, _wgslsmith_add_i32(1i, global1.a)), u_input.a.x, 199i), vec4<i32>(-global0.c, global1.a, ~0i, global0.c), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global0.c == global0.c, func_2(), func_2()), any(vec3<bool>(false, false, true)) || (arg_0.x == _wgslsmith_f_op_f32(min(global1.b, 1477f)))), global0.b.yy);
    let var_1 = (~u_input.a | _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(-u_input.a, abs(u_input.a)), vec4<i32>(-35125i & global1.a, max(-62248i, global0.c), ~u_input.b.x, abs(global1.a)))) >> (~arg_1 % vec4<u32>(32u));
    var var_2 = Struct_2(Struct_1(0i, -1408f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.b.x, global1.b, global0.a) * _wgslsmith_f_op_vec4_f32(-global1.c)) * vec4<f32>(_wgslsmith_f_op_f32(-366f + global1.b), _wgslsmith_f_op_f32(-var_0.a), global1.c.x, 1117f)), global1.d), Struct_1(_wgslsmith_sub_i32(var_1.x, 1i << (_wgslsmith_dot_vec3_u32(arg_1.xxw, vec3<u32>(45168u, 1u, 1u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(940f + var_0.b.x), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_div_f32(-612f, global0.a)))), var_0.d));
    var_2 = Struct_2(var_2.a, Struct_1(var_0.c, 283f, vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f) * arg_0.x), _wgslsmith_f_op_f32(min(-475f, _wgslsmith_f_op_f32(485f + 831f))), func_4(countOneBits(vec4<i32>(-733i, u_input.b.x, var_1.x, 2147483647i)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-105f, 520f) + var_0.b.xy)).a), vec2<u32>(var_2.b.d.x, _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(global0.d.x, 32682u), ~6848u))));
    return Struct_4(-256f, _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c, global1.a, u_input.b.x, global1.a), -vec4<i32>(13748i, var_0.c, global0.c, var_0.c))), u_input.a & u_input.a), Struct_2(var_2.a, Struct_1(0i, -870f, vec4<f32>(_wgslsmith_f_op_f32(1152f * -742f), _wgslsmith_f_op_f32(f32(-1f) * -621f), -135f, arg_0.x), ~vec2<u32>(4294967295u, var_2.b.d.x))), Struct_3(476f, arg_0, 1i, var_2.b.d));
}

fn func_5(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_5(func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(744f, 1470f, global1.c.x) - vec3<f32>(arg_0.c.b.c.x, 734f, 778f)), func_4(u_input.a, vec4<bool>(false, true, false, false), vec2<f32>(arg_0.c.b.b, arg_0.c.a.b)).b)) + _wgslsmith_f_op_vec3_f32(arg_0.d.b - _wgslsmith_f_op_vec3_f32(global0.b - global0.b))), _wgslsmith_add_vec4_u32(~(vec4<u32>(28657u, global1.d.x, 14297u, 4294967295u) << (vec4<u32>(39550u, 4294967295u, 1u, arg_0.d.d.x) % vec4<u32>(32u))), max(~vec4<u32>(arg_0.d.d.x, 1589u, 36781u, 6438u), select(vec4<u32>(67960u, arg_0.c.b.d.x, 71352u, global1.d.x), vec4<u32>(global1.d.x, arg_0.d.d.x, 8751u, global1.d.x), vec4<bool>(false, false, false, false))))).d, Struct_4(_wgslsmith_f_op_f32(arg_0.c.b.c.x - _wgslsmith_f_op_f32(select(func_4(vec4<i32>(global0.c, global1.a, global0.c, global0.c), vec4<bool>(false, true, false, true), vec2<f32>(arg_0.d.a, global1.b)).a, global1.b, true))), u_input.a.x, func_1(vec3<f32>(_wgslsmith_f_op_f32(-1046f - global1.c.x), -383f, -1592f), ~vec4<u32>(global1.d.x, global1.d.x, 4294967295u, arg_0.d.d.x)).c, arg_0.d), Struct_1(-global0.c, _wgslsmith_f_op_f32(global0.b.x + global1.b), _wgslsmith_f_op_vec4_f32(-arg_0.c.a.c), vec2<u32>(~4294967295u, global1.d.x)), Struct_1(u_input.b.x, global1.b, global1.c, ~vec2<u32>(~global0.d.x, arg_0.d.d.x)));
    var var_1 = func_4(-(abs(-vec4<i32>(-2147483647i, -45081i, 10429i, 0i)) >> (reverseBits(vec4<u32>(global0.d.x, arg_0.c.b.d.x, global0.d.x, 4294967295u)) % vec4<u32>(32u))), !select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true)), any(vec2<bool>(true, true))), arg_0.c.b.c.yz).c;
    global1 = var_0.d;
    var var_2 = 4294967295u;
    var var_3 = arg_0.a;
    return var_0.b.d.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(func_5(func_1(global0.b, ~vec4<u32>(global0.d.x, global1.d.x, 14323u, global0.d.x)))), func_4(vec4<i32>(-(global0.c << (global1.d.x % 32u)), ~firstTrailingBit(-23535i), global0.c, -65162i), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), global1.c.zw).c, Struct_2(func_1(vec3<f32>(_wgslsmith_div_f32(global0.a, 121f), 1340f, -1046f), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, global0.d.x, 62377u, 35123u), vec4<u32>(global0.d.x, 104360u, global0.d.x, 90705u)), ~vec4<u32>(global1.d.x, global0.d.x, 28215u, 36449u))).c.b, Struct_1(_wgslsmith_div_i32(select(global0.c, global1.a, false), abs(u_input.b.x)), _wgslsmith_f_op_f32(global1.c.x * global1.b), global1.c, vec2<u32>(global1.d.x & global0.d.x, ~11367u))), Struct_3(-213f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-820f)) - _wgslsmith_f_op_f32(f32(-1f) * -910f)), global1.b, _wgslsmith_f_op_f32(select(-559f, global0.a, any(vec2<bool>(true, false))))), ~(~(1i & global1.a)), vec2<u32>(4294967295u, 26248u)));
    let var_1 = var_0;
    let var_2 = vec2<bool>(!(-_wgslsmith_div_i32(u_input.b.x, 0i) > max(-global0.c, -44987i & var_0.d.c)), var_0.c.a.c.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(var_1.c.a.c.wzw, vec4<u32>(var_1.d.d.x, 1u, 17166u, global0.d.x)).a) - 1296f));
    global0 = var_1.d;
    global1 = Struct_1(u_input.a.x & -34762i, _wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c * vec4<f32>(global1.b, -296f, 320f, -678f)) - func_1(global0.b, vec4<u32>(4294967295u, 9117u, 25868u, 0u)).c.a.c)), vec4<f32>(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.b.c.x, 329f) + _wgslsmith_f_op_f32(round(-378f))), -1181f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1965f)))))), _wgslsmith_mult_vec2_u32(var_0.c.a.d, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(global0.d, vec2<u32>(global0.d.x, global1.d.x)), var_0.c.a.d)) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(1u, var_0.d.d.x), 37573u), global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.zy, -2147483647i, global1.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-1136f + global1.b), _wgslsmith_f_op_f32(1636f - _wgslsmith_div_f32(-1376f, var_0.a)))));
}

