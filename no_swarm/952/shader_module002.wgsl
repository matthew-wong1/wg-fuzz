struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = -1i;

var<private> global2: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(u_input.a, ~0u, vec3<bool>(global2.x, true, true));
    var var_1 = vec4<bool>(false, all(select(select(!vec4<bool>(var_0.c.x, global2.x, var_0.c.x, var_0.c.x), !vec4<bool>(var_0.c.x, false, false, true), true), select(select(vec4<bool>(true, global2.x, var_0.c.x, true), vec4<bool>(global2.x, true, true, var_0.c.x), global2.x), vec4<bool>(true, var_0.c.x, false, true), var_0.c.x), !(!vec4<bool>(global2.x, true, global2.x, global2.x)))), var_0.c.x, global2.x);
    global0 = var_0.b;
    let var_2 = u_input.a.x;
    global0 = var_0.b;
    return var_0.b;
}

fn func_2(arg_0: vec3<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_add_vec3_u32(~reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 30841u, 0u), vec3<u32>(73803u, 67888u, 4294967295u))), max(~vec3<u32>(abs(1u), func_3(), _wgslsmith_mod_u32(1u, 13861u)), ~abs(~vec3<u32>(1u, 0u, 1u))));
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wz), max(u_input.a.x, -22150i)), 43530i, ~(~1i), -2147483647i), 1u, vec3<bool>(!all(vec4<bool>(global2.x, arg_0.x, global2.x, global2.x)) & (-912f <= _wgslsmith_f_op_f32(select(900f, -1130f, false))), all(vec4<bool>(any(vec3<bool>(false, false, true)), all(vec4<bool>(global2.x, false, false, false)), true, true)), any(select(select(vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, global2.x, arg_0.x), false), select(arg_0, global2.yxy, global2.x), arg_0.x))));
    global1 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(~(_wgslsmith_mult_i32(-2147483647i, var_1.a.x) | -9634i), ~(-43754i), _wgslsmith_add_i32(-max(var_1.a.x, -1i), ~var_1.a.x)), 20191i);
    global0 = ~(1u ^ abs(var_0.x));
    var var_2 = var_1;
    return vec4<bool>(true, true, all(!select(!var_1.c.yz, vec2<bool>(arg_0.x, true), all(var_1.c))), !select(select(false && var_2.c.x, all(global2.xw), !arg_0.x), false, false));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<bool> {
    global0 = ~arg_2.b;
    var var_0 = Struct_1(u_input.a, arg_2.b, vec3<bool>(select(func_2(arg_2.c).x, _wgslsmith_div_i32(arg_2.a.x, 1i) != 0i, min(2147483647i, 1i) >= u_input.a.x), (i32(-1i) * -arg_1.x) > arg_1.x, true));
    global2 = vec4<bool>(all(vec3<bool>(any(!vec2<bool>(arg_0.x, false)), !(!arg_2.c.x), global2.x)), global2.x, var_0.c.x, true);
    var var_1 = arg_0;
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_div_vec4_i32(arg_2.a, vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(arg_1.yx, u_input.a.yy), _wgslsmith_mult_i32(-2147483647i, arg_1.x), firstLeadingBit(arg_2.a.x)))), 1u, global2.xxz);
    return arg_0.xw;
}

fn func_1() -> vec3<u32> {
    var var_0 = func_4(func_2(select(!select(global2.wzz, vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x)), vec3<bool>(false, true, !global2.x), all(select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, false, true, global2.x), true)))), _wgslsmith_add_vec3_i32(u_input.a.xzx, u_input.a.wyx), Struct_1(firstTrailingBit(min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(countOneBits(32736u), _wgslsmith_clamp_u32(41301u, 1u, 0u))), vec3<bool>(true, true, true)), func_2(vec3<bool>(global2.x, all(vec4<bool>(global2.x, false, global2.x, true)), !global2.x)).zw);
    global2 = func_2(vec3<bool>(global2.x, true, any(select(func_2(vec3<bool>(true, true, false)), vec4<bool>(false, true, var_0.x, global2.x), true))));
    var var_1 = !func_4(func_2(select(select(global2.zyy, global2.zzz, global2.x), vec3<bool>(false, true, global2.x), select(global2.yxx, vec3<bool>(global2.x, global2.x, true), global2.zwx))), _wgslsmith_add_vec3_i32(~u_input.a.zyw & (vec3<i32>(-2147483647i, -10615i, u_input.a.x) >> (vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u))), -(~u_input.a.ywz)), Struct_1(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, -64130i), -u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~(-1746i)), ~(~24769u), vec3<bool>(var_0.x, false & var_0.x, var_0.x)), vec2<bool>(true != !global2.x, var_0.x)).x;
    var var_2 = Struct_1(u_input.a, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(93023u, 34624u, 7750u, 100920u), ~(~vec4<u32>(797u, 0u, 1u, 12781u)), !(!vec4<bool>(var_0.x, global2.x, var_0.x, global2.x))), select(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(61415u, 1u, 64107u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), !func_2(global2.xww).x)), vec3<bool>(all(global2.wyx), (23162i >= u_input.a.x) || var_0.x, true));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(trunc(719f)))) - _wgslsmith_f_op_f32(328f + -1014f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(660f - -1063f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1169f + 1480f) * 2559f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-338f)) + 418f)))), 1850f);
    return vec3<u32>(_wgslsmith_clamp_u32(func_3(), reverseBits(1u), select(select(var_2.b & var_2.b, firstTrailingBit(4294967295u), global2.x), var_2.b, func_4(!vec4<bool>(var_2.c.x, false, true, true), _wgslsmith_mult_vec3_i32(vec3<i32>(16208i, 17809i, u_input.a.x), var_2.a.wxx), Struct_1(var_2.a, 1u, var_2.c), vec2<bool>(var_0.x, global2.x)).x)), 1u, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec3<u32>(1u, 1u, 1u) ^ func_1());
    let var_1 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 28377i, u_input.a.x, -2147483647i), vec4<i32>(0i, -55633i, u_input.a.x, 22080i)), _wgslsmith_mult_vec4_i32(min(-vec4<i32>(u_input.a.x, -1i, 2147483647i, u_input.a.x), abs(u_input.a)), -(~vec4<i32>(u_input.a.x, 1i, 34472i, u_input.a.x)))), ~max(var_0.x, var_0.x), vec3<bool>(!(func_2(global2.yzy).x == true), all(select(func_2(global2.xzy).zxz, vec3<bool>(global2.x, false, global2.x), global2.x)), true));
    global2 = func_2(vec3<bool>(!(countOneBits(1u) < firstTrailingBit(var_1.b)), all(func_4(!vec4<bool>(global2.x, var_1.c.x, global2.x, var_1.c.x), select(vec3<i32>(11289i, var_1.a.x, -28796i), var_1.a.wzy, var_1.c.x), var_1, var_1.c.xz)), true));
    let var_2 = vec3<i32>(-firstLeadingBit(~_wgslsmith_div_i32(41468i, u_input.a.x)), 10250i, u_input.a.x);
    var var_3 = _wgslsmith_mod_i32(0i, ~_wgslsmith_dot_vec3_i32(min(u_input.a.zyx, vec3<i32>(u_input.a.x, 13890i, u_input.a.x)), ~vec3<i32>(var_1.a.x, 1i, var_1.a.x)));
    let var_4 = var_1;
    let var_5 = Struct_1(vec4<i32>((u_input.a.x >> (4294967295u % 32u)) << (78214u % 32u), _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(var_4.a.x, var_2.x, var_4.a.x, 32154i)), select(~u_input.a, abs(var_4.a), any(vec4<bool>(var_1.c.x, var_1.c.x, true, false)))), -35013i, firstLeadingBit(_wgslsmith_add_i32(2147483647i, var_2.x ^ 33740i))), 0u, func_2(vec3<bool>(var_4.c.x, false, false)).zxw);
    let var_6 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, var_4.a.x >> (var_5.b % 32u), -2147483647i), vec3<i32>(var_5.a.x, 0i, 1i)), u_input.a.yyz), min(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, -2147483647i, 2147483647i), firstTrailingBit(vec3<i32>(18948i, var_5.a.x << (86695u % 32u), countOneBits(-2147483647i)))));
    let var_7 = reverseBits(vec3<u32>(4294967295u & var_5.b, reverseBits(_wgslsmith_clamp_u32(max(2432u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(var_5.b, var_1.b)), ~var_0.x)), _wgslsmith_sub_u32(48181u, ~(~var_4.b))));
    let x = u_input.a;
    s_output = StorageBuffer(select(0u, ~4294967295u, true), 18795i, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(642f, -1169f, -539f) * vec3<f32>(-586f, -468f, -1675f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1235f, 1000f, 933f), vec3<f32>(-195f, 1808f, 462f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1420f, -1326f, 410f) * vec3<f32>(228f, -195f, -828f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(357f)))), _wgslsmith_f_op_f32(ceil(1127f)))) - 1582f));
}

