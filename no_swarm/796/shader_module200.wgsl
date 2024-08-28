struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(-563f, vec3<i32>(-9119i, 0i, 23952i), Struct_1(808f, vec2<i32>(2147483647i, -16994i), vec2<u32>(73071u, 0u), 815f, vec3<u32>(4294967295u, 0u, 4507u)), 6314u));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_sub_vec4_u32(~(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(88790u, u_input.a, u_input.b.x, u_input.a), vec4<u32>(50578u, 0u, arg_1, 11280u), vec4<u32>(4294967295u, u_input.b.x, 41341u, 78740u)), select(vec4<u32>(u_input.a, global0.a.c.c.x, 4294967295u, 0u), vec4<u32>(arg_0.d, arg_3, global0.a.d, 33880u), false))), firstTrailingBit(~_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 18957u, 0u, arg_3), vec4<u32>(1u, 1u, 1u, 1u))));
    var_0 = select(~abs(abs(vec4<u32>(var_0.x, 33977u, arg_0.c.c.x, var_0.x))), reverseBits(reverseBits(~abs(vec4<u32>(arg_3, arg_3, arg_1, arg_3)))), vec4<bool>(false, select(~0u, 3384u, true) != reverseBits(_wgslsmith_mult_u32(4294967295u, 0u)), true, true));
    global0 = Struct_4(arg_0);
    let var_1 = vec2<i32>(1i, -_wgslsmith_dot_vec4_i32(firstTrailingBit(abs(arg_2)), ~abs(vec4<i32>(-2147483647i, -2147483647i, u_input.c, 1i))));
    var var_2 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-228f * -1755f) + -1401f)));
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    let var_0 = reverseBits(arg_0.e);
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(-419f + 526f), global0.a.b ^ vec3<i32>(7096i, arg_0.b.x, 2147483647i), Struct_1(195f, global0.a.c.b, vec2<u32>(1u, 4489u), arg_0.d, arg_0.e), var_0.x | 1u), 74405u, -vec4<i32>(global0.a.c.b.x, u_input.c, arg_0.b.x, 0i) >> (~vec4<u32>(1u, arg_0.e.x, 47752u, 1u) % vec4<u32>(32u)), u_input.a)), ~global0.a.b, global0.a.c, 25544u));
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1247f), vec3<i32>(-1i) * -countOneBits(global0.a.b), global0.a.c, 54795u));
    let var_1 = vec2<f32>(global0.a.c.a, _wgslsmith_f_op_f32(arg_0.d - _wgslsmith_f_op_f32(-arg_0.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + arg_0.a))) * arg_0.d));
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(-1190f - _wgslsmith_f_op_f32(func_3(global0.a, 1u, countOneBits(vec4<i32>(-7264i, -2147483647i, arg_0.b.x, u_input.c)), ~4294967295u))), _wgslsmith_mult_vec3_i32(~global0.a.b, global0.a.b), arg_0, abs(0u)));
}

fn func_1(arg_0: i32, arg_1: u32) -> vec3<bool> {
    global0 = func_2(global0.a.c);
    global0 = func_2(func_2(global0.a.c).a.c);
    var var_0 = global0.a.a;
    var var_1 = _wgslsmith_dot_vec2_i32(global0.a.c.b, min(vec2<i32>(arg_0, global0.a.c.b.x), vec2<i32>(func_2(Struct_1(-1169f, vec2<i32>(arg_0, u_input.c), vec2<u32>(6947u, 49259u), global0.a.c.a, global0.a.c.e)).a.c.b.x, global0.a.c.b.x)));
    global0 = Struct_4(func_2(Struct_1(global0.a.a, ~abs(vec2<i32>(arg_0, u_input.c)), vec2<u32>(~1u, ~arg_1), -1025f, _wgslsmith_mod_vec3_u32(global0.a.c.e ^ global0.a.c.e, ~global0.a.c.e))).a);
    return vec3<bool>(any(vec4<bool>(true, true, true, true)) | true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !select(true, true, true))), true);
}

fn func_4(arg_0: vec3<bool>) -> Struct_4 {
    global0 = func_2(Struct_1(global0.a.a, func_2(global0.a.c).a.c.b >> (~(global0.a.c.e.yy | vec2<u32>(u_input.a, 50724u)) % vec2<u32>(32u)), select(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.a)) | ~u_input.b, ~_wgslsmith_mod_vec2_u32(global0.a.c.e.xz, global0.a.c.c), arg_0.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.a, 234f)) - 227f), vec3<u32>(global0.a.d, 60684u, u_input.b.x)));
    global0 = func_2(global0.a.c);
    global0 = Struct_4(func_2(func_2(global0.a.c).a.c).a);
    var var_0 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(global0.a.d), ~4294967295u, u_input.b.x, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.c.c.x, u_input.a, global0.a.c.e.x, 76961u), _wgslsmith_add_vec4_u32(vec4<u32>(47421u, 28539u, 146057u, u_input.a), vec4<u32>(u_input.b.x, global0.a.d, 1u, global0.a.c.e.x)))), global0.a.d);
    let var_1 = _wgslsmith_clamp_vec3_u32(select(select(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global0.a.c.e, vec3<u32>(global0.a.d, 30072u, var_0.x)), ~global0.a.c.e), vec3<u32>(1u, select(25522u, 4294967295u, false), u_input.a), true), ~vec3<u32>(var_0.x >> (4294967295u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.c.c.x, u_input.b.x), u_input.b), 1u), arg_0.x || true), vec3<u32>(min(_wgslsmith_add_u32(u_input.a, global0.a.d), ~4294967295u) | 45817u, _wgslsmith_mult_u32(27608u, 47805u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 47577u, global0.a.d), _wgslsmith_mod_u32(41649u, 1u), global0.a.d, max(global0.a.d, var_0.x)), abs(abs(vec4<u32>(u_input.a, var_0.x, 7784u, global0.a.d))))), ~firstTrailingBit(~select(vec3<u32>(0u, u_input.a, var_0.x), vec3<u32>(4294967295u, u_input.b.x, var_0.x), vec3<bool>(arg_0.x, false, arg_0.x))));
    return func_2(Struct_1(global0.a.a, vec2<i32>(~_wgslsmith_mod_i32(u_input.c, global0.a.c.b.x), -1i), global0.a.c.c | _wgslsmith_sub_vec2_u32(global0.a.c.c, ~u_input.b), global0.a.c.a, select(vec3<u32>(~82505u, firstTrailingBit(4235u), ~var_1.x), vec3<u32>(var_1.x, var_1.x, 1u), !(u_input.b.x <= 1u))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(arg_2.b.d, func_4(!select(vec3<bool>(arg_3, arg_3, true), vec3<bool>(arg_3, arg_3, true), vec3<bool>(false, arg_3, arg_3))).a.c.a, func_1(~(-u_input.c), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.x, 4294967295u), u_input.b) | ~u_input.a).x)), -501f);
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(func_4(vec3<bool>(false, true, false)).a.c.a, -1523f))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_2.b.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.c.a + -1577f) * _wgslsmith_div_f32(522f, var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.c.a))))));
    var var_1 = 519f;
    var_1 = global0.a.a;
    global0 = Struct_4(arg_0.a);
    return func_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1719f)) + _wgslsmith_f_op_f32(-var_0.x)))), ~arg_1.c, vec2<u32>(abs(u_input.b.x), ~global0.a.d >> (~52109u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1134f)), vec3<u32>(func_2(Struct_1(-440f, vec2<i32>(1i, 22926i), vec2<u32>(u_input.b.x, 1u), var_0.x, vec3<u32>(global0.a.c.e.x, 4294967295u, 14125u))).a.c.c.x, arg_0.a.c.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(45126u, u_input.b.x), _wgslsmith_sub_vec2_u32(vec2<u32>(18627u, arg_1.a.x), global0.a.c.c))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(func_5(func_4(select(func_1(global0.a.c.b.x, u_input.b.x), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true)), Struct_3(~select(vec2<u32>(global0.a.c.e.x, u_input.b.x), vec2<u32>(global0.a.d, 1u), false), global0.a.c, vec2<i32>(-27320i, 1i)), Struct_3(vec2<u32>(~u_input.b.x, ~global0.a.c.c.x), func_4(func_1(-1i, global0.a.c.c.x)).a.c, global0.a.b.xx), true));
    var var_0 = global0.a.b;
    var var_1 = 17198u;
    let var_2 = func_5(func_2(global0.a.c), Struct_3(vec2<u32>(global0.a.c.e.x, ~0u ^ u_input.b.x), Struct_1(-681f, firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.c, global0.a.c.b.x))), _wgslsmith_add_vec2_u32(func_5(Struct_4(global0.a), Struct_3(vec2<u32>(4294967295u, u_input.a), Struct_1(1589f, vec2<i32>(0i, var_0.x), u_input.b, global0.a.a, vec3<u32>(4294967295u, 4294967295u, u_input.a)), vec2<i32>(-63319i, 15199i)), Struct_3(vec2<u32>(global0.a.c.c.x, global0.a.d), Struct_1(1303f, vec2<i32>(-14423i, -38327i), global0.a.c.e.zy, -421f, vec3<u32>(0u, global0.a.d, u_input.b.x)), global0.a.c.b), true).c.e.xz, ~vec2<u32>(34790u, global0.a.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_f_op_f32(global0.a.c.d + global0.a.a)), global0.a.c.e | ~vec3<u32>(1u, 1u, u_input.a)), var_0.yx), Struct_3(~vec2<u32>(global0.a.c.e.x, ~1u), func_5(Struct_4(global0.a), Struct_3(~vec2<u32>(27882u, global0.a.c.e.x), global0.a.c, vec2<i32>(var_0.x, u_input.c)), Struct_3(vec2<u32>(u_input.b.x, 23537u), func_4(vec3<bool>(true, true, false)).a.c, ~var_0.zy), true).c, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -42005i) | var_0.xx, vec2<i32>(24614i, -2147483647i))), true).b;
    var var_3 = _wgslsmith_mod_u32(global0.a.c.c.x, func_4(select(func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(12328i, 45897i), vec2<i32>(var_2.x, -201i)), global0.a.c.e.x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(false, true, true), all(vec4<bool>(true, false, true, false))), func_1(select(var_2.x, u_input.c, false), _wgslsmith_sub_u32(global0.a.d, 0u)))).a.d);
    var var_4 = Struct_3(vec2<u32>(1u, global0.a.d), Struct_1(global0.a.a, select(~vec2<i32>(1i, 7482i), _wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.c, -2147483647i)), _wgslsmith_div_vec2_i32(var_2.yy, vec2<i32>(var_0.x, 2147483647i))), func_1(var_2.x, u_input.a).x && any(vec3<bool>(true, true, false))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, _wgslsmith_div_vec2_u32(vec2<u32>(0u, global0.a.c.e.x), vec2<u32>(u_input.b.x, 4294967295u))), ~vec2<u32>(global0.a.d, 1u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1306f, 383f)))), min(vec3<u32>(0u, global0.a.d, 4294967295u), ~global0.a.c.e) >> (firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, global0.a.c.c.x), vec3<u32>(global0.a.d, u_input.a, global0.a.c.c.x))) % vec3<u32>(32u))), var_2.yx);
    var var_5 = ~(vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(5151i, var_2.x), var_4.c), firstLeadingBit(_wgslsmith_div_i32(u_input.c, global0.a.b.x)), _wgslsmith_dot_vec3_i32(-var_2, global0.a.b)) << (~var_4.b.e % vec3<u32>(32u)));
    var_1 = ~abs(33063u);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_i32(~(11265i ^ var_0.x), 2147483647i), func_2(func_2(Struct_1(global0.a.c.d, vec2<i32>(0i, global0.a.b.x), vec2<u32>(19213u, 41264u), global0.a.a, vec3<u32>(u_input.b.x, var_4.a.x, global0.a.d))).a.c).a.c.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-21291i, _wgslsmith_add_i32(~0i, 1i), var_5.x, 1i), firstLeadingBit(vec4<i32>(var_5.x, -1i, -1i, u_input.c)) >> (select(~vec4<u32>(global0.a.d, u_input.a, var_4.b.e.x, u_input.b.x), ~vec4<u32>(100849u, 1u, 0u, 0u), true) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.b.d, var_4.b.d, -761f)))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(floor(270f)), _wgslsmith_f_op_f32(f32(-1f) * -1047f), -641f)))));
}

