struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<bool>, 27>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> f32 {
    return -580f;
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1133f, _wgslsmith_f_op_f32(round(global0.x))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 2339f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -579f) * _wgslsmith_f_op_f32(func_3(arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1189f)), global0.x)), global0.x, global0.x), select(!(!vec3<bool>(arg_0, false, arg_0)), !select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, true, true), arg_0), arg_0))));
    let var_0 = Struct_3(!arg_0, Struct_1(firstLeadingBit(~vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d)) & vec4<i32>(~u_input.d, -1i, -u_input.d, ~52629i)), Struct_2(abs(~u_input.b.xxw), !(!select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, arg_0, false, true), arg_0)), Struct_1(firstLeadingBit(-vec4<i32>(-2147483647i, u_input.d, 21200i, -37286i)))), global0.x);
    let var_1 = vec4<u32>(95021u, _wgslsmith_dot_vec3_u32(var_0.c.a, u_input.b.zxw), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.a.x, 0u, var_0.c.a.x), u_input.b.wxy) & u_input.a), (~u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.b.yx) % 32u)) & countOneBits(u_input.e >> (u_input.c.x % 32u))) | ~u_input.b;
    let var_2 = vec3<u32>(abs(1u), firstLeadingBit(var_1.x & 1u), _wgslsmith_add_u32(84463u, ~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.a.x, u_input.a), u_input.b.zz))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(var_0.d + var_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(f32(-1f) * -750f)))));
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 227f) + arg_1.d), _wgslsmith_f_op_f32(arg_0.d + -1677f), func_2(true).c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f))));
    var var_1 = 4294967295u;
    var var_2 = func_2(false).c;
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(~u_input.a, _wgslsmith_clamp_u32(1u, 20095u, 0u)), arg_0.c.a.xx), 64792u, select(~u_input.e, 0u, (var_2.b.x || true) & func_2(arg_1.c.b.x).c.b.x) ^ 0u);
    let var_4 = 333f;
    return arg_0.c;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = arg_0.b;
    let var_1 = ~38183i;
    var var_2 = Struct_2(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(0u, ~0u, _wgslsmith_div_u32(arg_0.c.a.x, 54422u)), countOneBits(vec3<u32>(arg_0.c.a.x, arg_0.c.a.x, 112432u)) >> (vec3<u32>(arg_0.c.a.x, u_input.e, 1072u) % vec3<u32>(32u)), arg_1.x || true), ~(~vec3<u32>(u_input.c.x, u_input.a, arg_0.c.a.x)), ~_wgslsmith_sub_vec3_u32(min(arg_0.c.a, vec3<u32>(13174u, 37272u, 20351u)), ~u_input.b.wzx)), vec4<bool>(!func_4(arg_0, arg_0, -5893i).b.x && false, true, false, false), arg_0.b);
    let var_3 = func_2(false).b;
    var var_4 = var_2.a.x;
    return func_2(true).b;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<i32>) -> i32 {
    let var_0 = Struct_3(arg_0, func_5(Struct_3(false, Struct_1(firstTrailingBit(vec4<i32>(u_input.d, u_input.d, u_input.d, arg_2.x))), func_4(func_2(true), func_2(true), u_input.d), _wgslsmith_f_op_f32(-arg_1.x)), func_2(true).c.b, arg_1), func_4(func_2(all(!vec2<bool>(arg_0, arg_0))), Struct_3(arg_0, func_5(Struct_3(arg_0, Struct_1(vec4<i32>(arg_2.x, 2147483647i, -1i, arg_2.x)), Struct_2(u_input.b.yxy, vec4<bool>(arg_0, arg_0, arg_0, false), Struct_1(vec4<i32>(arg_2.x, 2147483647i, arg_2.x, u_input.d))), global0.x), vec4<bool>(arg_0, false, arg_0, true), _wgslsmith_f_op_vec2_f32(-arg_1)), Struct_2(abs(vec3<u32>(4844u, u_input.c.x, 4294967295u)), !vec4<bool>(true, true, arg_0, true), Struct_1(vec4<i32>(14681i, arg_2.x, 22156i, 1i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1467f, -1386f, true)), _wgslsmith_f_op_f32(max(arg_1.x, global0.x))))), -1i), _wgslsmith_f_op_f32(f32(-1f) * -625f));
    var var_1 = ~(~(select(var_0.c.a.x, _wgslsmith_add_u32(25226u, u_input.c.x), var_0.a) | max(~var_0.c.a.x, 4062u)));
    let var_2 = _wgslsmith_clamp_i32(var_0.b.a.x, u_input.d, 2147483647i);
    var_1 = func_2(var_2 < -arg_2.x).c.a.x;
    let var_3 = arg_2.x;
    return -25267i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(87i, 1i, 69320i, u_input.d), -vec4<i32>(9070i, -76461i, u_input.d, 2147483647i)), abs(vec4<i32>(7203i, 54789i, 21328i, u_input.d))), firstLeadingBit(vec4<i32>(-17573i, u_input.d, -18816i, -1i) | vec4<i32>(0i, 13787i, u_input.d, 38656i)), vec4<i32>(u_input.d, -25509i, ~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -57913i, u_input.d), vec3<i32>(69280i, 56480i, u_input.d) >> (vec3<u32>(u_input.e, 4294967295u, u_input.b.x) % vec3<u32>(32u))))), select(-(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, 11732i, 1i), vec4<i32>(2147483647i, u_input.d, -2147483647i, 0i), vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.d)) >> (~u_input.b % vec4<u32>(32u))), vec4<i32>(func_1(false, global0.yx, vec3<i32>(u_input.d, u_input.d, -11463i)) | -u_input.d, i32(-1i) * -2147483647i, 1i, 2147483647i), false));
    let var_1 = u_input.c.x >> (reverseBits(~u_input.c.x) % 32u);
    let var_2 = !vec4<bool>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.c.x, 58112u, u_input.a, 1u)) >= max(~1u, u_input.c.x), true, true, true);
    let var_3 = firstTrailingBit(abs(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_1, var_1), ~73645u), 1u & func_4(Struct_3(var_2.x, Struct_1(vec4<i32>(var_0.x, var_0.x, -1i, u_input.d)), Struct_2(u_input.b.wxy, vec4<bool>(true, var_2.x, false, true), Struct_1(vec4<i32>(u_input.d, -2147483647i, u_input.d, var_0.x))), 694f), Struct_3(var_2.x, Struct_1(vec4<i32>(u_input.d, u_input.d, u_input.d, -21390i)), Struct_2(u_input.b.zxx, var_2, Struct_1(vec4<i32>(u_input.d, u_input.d, u_input.d, -1i))), 1000f), -11807i).a.x, func_2(true).c.a.x & var_1)));
    var var_4 = Struct_1(abs(_wgslsmith_mult_vec4_i32(func_2(true).b.a, vec4<i32>(u_input.d, 1i >> (u_input.b.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 12725i), var_0.yx), 1011i))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.b.x) >> (4294967295u % 32u)), vec4<i32>(func_5(Struct_3(true & var_2.x, func_5(Struct_3(true, Struct_1(vec4<i32>(u_input.d, -2147483647i, var_4.a.x, var_4.a.x)), Struct_2(vec3<u32>(0u, 48963u, 32350u), var_2, Struct_1(var_4.a)), -1157f), var_2, global0.xz), func_4(Struct_3(true, Struct_1(var_4.a), Struct_2(vec3<u32>(u_input.a, var_1, 1u), var_2, Struct_1(var_4.a)), -304f), Struct_3(true, Struct_1(var_4.a), Struct_2(vec3<u32>(68530u, 0u, var_1), var_2, Struct_1(var_4.a)), global0.x), u_input.d), global0.x), select(var_2, vec4<bool>(false, false, var_2.x, var_2.x), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zz))).a.x, 1i, -2147483647i, var_4.a.x), 4294967295u, _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f), -464f))), !var_2.x)), firstTrailingBit(_wgslsmith_add_u32(0u, var_3.x) << (var_3.x % 32u)));
}

