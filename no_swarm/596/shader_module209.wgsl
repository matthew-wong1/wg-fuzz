struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: Struct_4;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_4, arg_3: bool) -> f32 {
    global0 = select(select(select(select(!arg_0.yy, vec2<bool>(global0.x, global0.x), all(arg_0.yz)), select(vec2<bool>(arg_2.b, global0.x), select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(true, false), global0.x), !vec2<bool>(arg_2.b, arg_3)), arg_2.b), select(select(select(arg_0.zz, arg_0.xy, false), arg_0.zz, false), !(!vec2<bool>(true, arg_3)), arg_2.b), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(!any(vec2<bool>(false, global0.x)), true), !(!arg_3)), true);
    global0 = !arg_0.xx;
    let var_0 = Struct_1((firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.c.zw, u_input.d)) >> (global1.c % 32u)) > select(_wgslsmith_sub_i32(-2147483647i, global1.a), reverseBits(~global1.a), all(select(arg_0, arg_0, arg_0))), !global1.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(f32(-1f) * -508f)))), _wgslsmith_f_op_f32(f32(-1f) * -790f), vec2<i32>(_wgslsmith_add_i32(arg_1, u_input.d.x), _wgslsmith_div_i32(1i, arg_2.a)));
    let var_1 = _wgslsmith_dot_vec3_u32(abs(~(~vec3<u32>(u_input.b, 143290u, 42204u) >> (vec3<u32>(16497u, u_input.a.x, 129626u) % vec3<u32>(32u)))), ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 42212u), vec3<u32>(global1.c, 5174u, 0u), vec3<u32>(u_input.e, arg_2.c, 29347u))) | _wgslsmith_div_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.c, global1.c, global1.c), vec3<u32>(arg_2.c, global1.c, global1.c))), firstTrailingBit(max(vec3<u32>(59401u, u_input.a.x, u_input.b), vec3<u32>(arg_2.c, 1u, u_input.e)))));
    let var_2 = Struct_3(Struct_2(global1.c | ~77816u));
    return var_0.c;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<f32>) -> bool {
    global1 = Struct_4(1i, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(global1.b, global1.b, true), global1.a, Struct_4(1i, false, arg_0), global0.x)) - _wgslsmith_f_op_f32(-1210f + arg_1))) > _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(1417f * _wgslsmith_f_op_f32(arg_3.x * arg_3.x))), u_input.a.x);
    global0 = select(vec2<bool>(true, all(select(vec4<bool>(global1.b, global1.b, global1.b, false), vec4<bool>(true, true, true, false), true))), vec2<bool>(global0.x, !all(select(vec4<bool>(true, false, global1.b, global1.b), vec4<bool>(global1.b, false, global1.b, false), true))), !vec2<bool>(!(true | global0.x), global1.b));
    var var_0 = Struct_5(~(-firstTrailingBit(u_input.c.yyz) >> (vec3<u32>(reverseBits(arg_0), u_input.a.x, arg_0) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -131f) >= _wgslsmith_f_op_f32(trunc(-1000f)), global0.x, _wgslsmith_f_op_f32(ceil(-1304f)), _wgslsmith_f_op_f32(ceil(-1805f)), ~(vec2<i32>(-1i) * -vec2<i32>(global1.a, -16912i))), _wgslsmith_f_op_vec2_f32(min(arg_3.ww, arg_3.wx)), Struct_2(53970u));
    var_0 = Struct_5(vec3<i32>(global1.a ^ u_input.c.x, var_0.a.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(reverseBits(var_0.a)), vec3<i32>(-1i) * -u_input.c.ywy)), var_0.b, arg_3.zx, Struct_2(select(4294967295u, _wgslsmith_div_u32(4294967295u | arg_0, global1.c), any(select(vec2<bool>(var_0.b.a, global0.x), vec2<bool>(global0.x, true), false)))));
    var var_1 = Struct_4(-31019i, !global0.x, firstTrailingBit(0u));
    return var_1.b;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_2) -> vec3<f32> {
    global1 = Struct_4(select(43188i, global1.a, all(!vec4<bool>(global0.x, true, true, false))), true & !func_2(1u, -191f, ~vec4<u32>(u_input.b, global1.c, arg_3.a, 4294967295u), _wgslsmith_f_op_vec4_f32(-arg_1)), ~arg_3.a);
    global1 = Struct_4(~_wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec2_i32(abs(u_input.c.xw), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d.x, 2147483647i), vec2<i32>(-35869i, global1.a)))), all(!select(select(vec3<bool>(arg_0, true, global0.x), vec3<bool>(true, false, arg_2), vec3<bool>(global1.b, global1.b, true)), vec3<bool>(true, arg_2, true), arg_0)), firstLeadingBit(1u));
    global0 = !(!vec2<bool>(true, all(vec3<bool>(arg_2, true, true))));
    var var_0 = -vec2<i32>(-1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.d.x, -2147483647i), i32(-1i) * -2147483647i), _wgslsmith_mod_i32(global1.a, global1.a) >> (u_input.e % 32u)));
    let var_1 = true;
    return _wgslsmith_f_op_vec3_f32(-arg_1.yyz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-885f)) + 360f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(566f, -1000f, -1189f, 866f), vec4<f32>(-530f, -1630f, 998f, 1041f))))), !global0.x, Struct_2(_wgslsmith_div_u32(_wgslsmith_mod_u32(global1.c, min(global1.c, u_input.e)), ~57769u))));
    global1 = Struct_4(_wgslsmith_clamp_i32((u_input.c.x << (1u % 32u)) & firstLeadingBit(global1.a), 1i, i32(-1i) * -27104i), global0.x, _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) | (vec3<u32>(u_input.e, 6330u, 19498u) << (vec3<u32>(u_input.a.x, 1u, global1.c) % vec3<u32>(32u)))), max(~min(vec3<u32>(1u, 0u, 9102u), vec3<u32>(14761u, u_input.a.x, global1.c)), ~(~vec3<u32>(7896u, 4294967295u, 10985u)))));
    var var_2 = u_input.b;
    var_2 = 0u >> (min(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, 3536u, 50595u), vec3<u32>(4294967295u, u_input.b, global1.c))), ~(~86282u)) % 32u);
    let var_3 = any(vec3<bool>(true, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<u32>(37335u, 56009u, 27402u))) != u_input.a.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, ~abs(_wgslsmith_sub_u32(u_input.e, u_input.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(710f, var_1.x)))) - var_1.x), reverseBits(min(min(vec3<u32>(global1.c, 4294967295u, u_input.b) | vec3<u32>(u_input.e, 1324u, 18441u), vec3<u32>(16096u, global1.c, 42315u)), select(~vec3<u32>(global1.c, global1.c, 1u), vec3<u32>(u_input.a.x, 21505u, u_input.a.x), !global0.x))));
}

