struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(0u), Struct_2(4294967295u), Struct_2(60922u), vec2<i32>(-57414i, 22891i), vec4<f32>(-971f, 963f, -1064f, 259f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_mod_u32(u_input.c.x, 1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(545f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.e.x, global0.e.x) + -494f), global0.e.x)), global0.e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.x * global0.e.x) - global0.e.x)))));
    let var_2 = Struct_3(Struct_2(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_clamp_u32(global0.c.a, ~global0.b.a, 20165u ^ u_input.c.x))), Struct_2(99327u), global0.a, -_wgslsmith_div_vec2_i32(~(~global0.d), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-31430i, -1i, 2147483647i), u_input.a.wxy), ~(-26079i))), global0.e);
    var var_3 = ~vec2<u32>(u_input.c.x, ~(var_2.b.a << (0u % 32u))) & u_input.c;
    var var_4 = var_2;
    return var_2.e.xx;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    var var_0 = global0.a;
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.e.x + _wgslsmith_f_op_f32(step(1720f, _wgslsmith_f_op_f32(ceil(-403f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -560f)) * global0.e.x), var_1.x));
    var var_3 = !(!(!(firstTrailingBit(0i) == _wgslsmith_mod_i32(arg_0, u_input.b.x))));
    let var_4 = min(abs(-_wgslsmith_mod_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, 0i))) | _wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(global0.d.x, u_input.b.x), vec2<i32>(2147483647i, global0.d.x)), -global0.d), _wgslsmith_sub_vec2_i32(vec2<i32>(-_wgslsmith_mult_i32(-60300i, u_input.b.x), -_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), abs(-vec2<i32>(1i, -2147483647i))));
    return Struct_3(global0.b, global0.c, Struct_2(1u), _wgslsmith_clamp_vec2_i32(-(~vec2<i32>(u_input.b.x, 38206i)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.yx, var_4), _wgslsmith_sub_vec2_i32(vec2<i32>(53955i, global0.d.x), u_input.b.yz)) >> (vec2<u32>(arg_2 << (u_input.c.x % 32u), _wgslsmith_mod_u32(0u, global0.a.a)) % vec2<u32>(32u)), vec2<i32>(arg_1.a, var_4.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-603f, _wgslsmith_f_op_vec2_f32(func_3()).x, -345f, global0.e.x), vec4<f32>(-427f, _wgslsmith_f_op_f32(248f - var_2.x), -866f, _wgslsmith_f_op_f32(step(var_1.x, -1700f)))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = global0.a;
    global0 = arg_1;
    let var_1 = -vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 20170i, -1i), vec3<i32>(31696i, 0i, u_input.b.x)) & select(2147483647i, -2147483647i, false), _wgslsmith_sub_i32(1i, firstTrailingBit(u_input.a.x))) << (firstTrailingBit(countOneBits(reverseBits(u_input.c) << (~vec2<u32>(1u, 14862u) % vec2<u32>(32u)))) % vec2<u32>(32u));
    let var_2 = ~u_input.c;
    let var_3 = Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(select(firstLeadingBit(vec4<u32>(var_0.a, 24307u, arg_1.b.a, global0.b.a)), ~vec4<u32>(4294967295u, 0u, arg_1.b.a, arg_1.c.a), vec4<bool>(true, true, true, true)), firstLeadingBit(vec4<u32>(global0.c.a, 33743u, var_0.a, var_2.x)))), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-32474i << (global0.a.a % 32u), i32(-1i) * -81936i, arg_0.x, -var_1.x), reverseBits(reverseBits(vec4<i32>(arg_1.d.x, arg_1.d.x, 0i, var_1.x)))), Struct_1(_wgslsmith_mult_i32(-2147483647i, countOneBits(arg_1.d.x)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, var_0.a, u_input.c.x), vec3<u32>(arg_1.a.a, var_2.x, 43455u)), abs(vec3<u32>(global0.a.a, var_0.a, var_0.a)))), func_2(arg_0.x, Struct_1(0i, firstLeadingBit(vec3<u32>(4294967295u, global0.b.a, 0u))), 11692u).a.a).b, Struct_2(var_0.a & 1u), vec2<i32>(~(~select(var_1.x, 7006i, true)), 50749i), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-748f, arg_1.e.x, 1927f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(228f - arg_1.e.x) - _wgslsmith_f_op_f32(-645f + -709f))), global0.e)));
    return func_2(-(i32(-1i) * -(~0i)), Struct_1(arg_1.d.x, ~(vec3<u32>(global0.b.a, var_3.b.a, 1u) | vec3<u32>(4294967295u, 1u, u_input.c.x)) << (vec3<u32>(~111201u, var_0.a << (77359u % 32u), 0u) % vec3<u32>(32u))), var_0.a);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = (-794f > arg_0.e.x) && false;
    var var_1 = ~countOneBits(vec2<u32>(abs(max(global0.b.a, u_input.c.x)), global0.a.a));
    let var_2 = func_4(_wgslsmith_add_vec2_i32(-(vec2<i32>(1i, arg_1) << (_wgslsmith_add_vec2_u32(vec2<u32>(25093u, 1u), vec2<u32>(56930u, 45914u)) % vec2<u32>(32u))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_0.d.x, arg_2.a), arg_0.d, vec2<i32>(29842i, -8337i)))), func_2(u_input.a.x, arg_2, _wgslsmith_mult_u32(4294967295u, global0.a.a)));
    return select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false))), vec2<bool>(true, true), vec2<bool>(!any(vec4<bool>(true, true, true, true)), !(!any(vec3<bool>(true, false, false)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: i32) -> bool {
    global0 = Struct_3(func_4(~u_input.a.wz, Struct_3(global0.c, Struct_2(arg_0.b.x), Struct_2(~u_input.c.x), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(-15431i, arg_3)), _wgslsmith_div_vec2_i32(global0.d, vec2<i32>(global0.d.x, 0i))), global0.e)).a, Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), u_input.c & arg_0.b.xx) >> (arg_0.b.x % 32u)), global0.b, select(u_input.b.xy, global0.d, !arg_1.x), global0.e);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x);
    let var_1 = _wgslsmith_clamp_vec2_i32(func_2(-1i, Struct_1(1i, ~vec3<u32>(0u, 20783u, arg_0.b.x)), func_2(global0.d.x, arg_0, 50978u).a.a).d, u_input.b.yx, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.d.x, reverseBits(1i)), -global0.d), _wgslsmith_mult_vec2_i32(~vec2<i32>(global0.d.x, u_input.b.x), vec2<i32>(-1i) * -u_input.b.xy)));
    global0 = func_4(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(arg_0.a, -1i, 54166i), u_input.b, vec3<bool>(false, true, arg_1.x)), _wgslsmith_mod_vec3_i32(u_input.b, u_input.b), u_input.a.wzx), vec3<i32>(var_1.x, func_2(arg_3, arg_0, global0.b.a).d.x, max(arg_2, 0i))), 27223i), func_4(~(-(~u_input.b.yy)), func_2(firstTrailingBit(0i), arg_0, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, u_input.c.x), max(global0.b.a, u_input.c.x)))));
    var var_2 = global0.a.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.zwx;
    let var_1 = vec2<bool>(true, func_5(Struct_1(2262i, ~vec3<u32>(58133u, 52617u, global0.a.a)), func_1(Struct_3(Struct_2(u_input.c.x), global0.a, global0.a, var_0.xz, global0.e), _wgslsmith_add_i32(var_0.x, global0.d.x), Struct_1(var_0.x, vec3<u32>(0u, 32973u, u_input.c.x)), vec4<f32>(1f, 1f, 1f, 1f)), -2147483647i, ~(2147483647i ^ u_input.a.x)) || false);
    var_0 = u_input.a.yyx;
    let var_2 = Struct_2(_wgslsmith_mod_u32(24367u, max(54951u, global0.b.a)));
    var var_3 = !(!select(!select(vec3<bool>(false, true, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, true, true)), !(!vec3<bool>(false, var_1.x, var_1.x)), all(!vec4<bool>(true, var_1.x, var_1.x, var_1.x))));
    global0 = Struct_3(Struct_2(global0.b.a), Struct_2(global0.b.a), global0.c, vec2<i32>(abs(u_input.b.x), var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(597f - global0.e.x), _wgslsmith_f_op_f32(f32(-1f) * -267f)), global0.e.x, _wgslsmith_div_f32(-468f, _wgslsmith_f_op_f32(f32(-1f) * -1597f)), _wgslsmith_f_op_f32(-1651f - -1326f))));
    let var_4 = 15427u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_clamp_i32(_wgslsmith_div_i32(select(1i, 2147483647i, !var_1.x), -24773i), firstTrailingBit(_wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(global0.d.x, var_0.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.x, max(var_0.x, u_input.b.x), i32(-1i) * -1i), ~vec3<i32>(var_0.x, var_0.x, -1i))));
}

