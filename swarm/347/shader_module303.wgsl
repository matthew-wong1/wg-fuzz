struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(130f, vec4<bool>(false, false, true, true), 34068u, -1006f, Struct_1(vec2<i32>(-18756i, 2014i), vec4<u32>(9609u, 1u, 36631u, 1u), vec2<u32>(5295u, 11314u), vec2<i32>(-24550i, i32(-2147483648)), vec3<bool>(false, true, false)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    global0 = !any(!arg_0.e.e.yy);
    var var_0 = firstTrailingBit(38935u);
    let var_1 = 1u | _wgslsmith_dot_vec2_u32(global1.e.c, select(~global1.e.c, _wgslsmith_sub_vec2_u32(arg_0.e.b.yz, _wgslsmith_mult_vec2_u32(vec2<u32>(55616u, 4294967295u), global1.e.c)), true));
    global1 = arg_0;
    var var_2 = arg_0.e.b.yyz;
    return select(arg_0.b, !vec4<bool>(true, any(select(vec2<bool>(arg_0.e.e.x, global1.e.e.x), arg_0.e.e.yx, global1.e.e.zx)), !(!arg_0.e.e.x), arg_0.b.x), vec4<bool>(false, true, global1.e.e.x != !(arg_0.e.e.x & true), !any(select(vec3<bool>(false, arg_0.b.x, global1.e.e.x), vec3<bool>(false, global1.e.e.x, true), global1.e.e))));
}

fn func_2() -> Struct_1 {
    global1 = Struct_2(815f, func_3(Struct_2(global1.a, vec4<bool>(true, !global1.b.x, true, any(vec2<bool>(global1.e.e.x, false))), 43099u & global1.e.b.x, 289f, Struct_1(~global1.e.a, firstLeadingBit(vec4<u32>(u_input.c.x, global1.c, u_input.b, u_input.b)), global1.e.c, u_input.a, vec3<bool>(global1.e.e.x, global1.e.e.x, true)))), global1.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.d, global1.d)), 964f), global1.e);
    var var_0 = ~firstLeadingBit(reverseBits(min(vec3<i32>(-2147483647i, global1.e.d.x, u_input.a.x) ^ vec3<i32>(global1.e.d.x, u_input.a.x, 1i), select(vec3<i32>(u_input.a.x, 50347i, 52013i), vec3<i32>(-39359i, global1.e.d.x, global1.e.d.x), false))));
    var var_1 = global1.e.a;
    let var_2 = any(global1.e.e);
    var var_3 = global1.e;
    return Struct_1(vec2<i32>(~abs(1i), var_0.x), ~vec4<u32>(u_input.b, ~4294967295u, ~var_3.b.x, ~0u) & var_3.b, ~vec2<u32>(45356u, _wgslsmith_clamp_u32(~global1.c, global1.e.c.x, global1.c)), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -18100i, u_input.a.x), vec3<i32>(25216i, -1i, 1i)) | 26566i, -22015i), !vec3<bool>(var_2, var_2 | any(global1.b), true | any(vec3<bool>(global1.e.e.x, true, false))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<u32> {
    global0 = !arg_1.e.x;
    let var_0 = Struct_2(arg_2.x, vec4<bool>(global1.b.x, false, any(!vec3<bool>(arg_0, false, false)), !global1.e.e.x), countOneBits(~(~4294967295u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(480f))))))), func_2());
    let var_1 = func_2();
    var var_2 = vec2<i32>(23518i, _wgslsmith_dot_vec3_i32(-min(~vec3<i32>(-1i, -2147483647i, arg_1.d.x), vec3<i32>(arg_1.a.x, 43864i, global1.e.d.x) | vec3<i32>(global1.e.d.x, 2147483647i, arg_1.d.x)), _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, u_input.a.x, 1i), countOneBits(vec3<i32>(global1.e.a.x, arg_1.a.x, global1.e.d.x)) | vec3<i32>(0i, arg_1.d.x, 2147483647i))));
    return vec4<u32>(1u, firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 1u, global1.c), vec3<u32>(35985u, global1.c, 22337u) >> (vec3<u32>(global1.e.c.x, 49598u, u_input.c.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_1.c.x, u_input.b) | vec3<u32>(global1.c, global1.e.c.x, 1u), ~vec3<u32>(global1.c, 1u, global1.c))) | 49974u, countOneBits(firstTrailingBit(u_input.c.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    global0 = global1.e.e.x;
    let var_0 = max(_wgslsmith_div_vec3_i32(abs(-arg_2.xwx) & vec3<i32>(-105177i, ~(-33025i), abs(arg_2.x)), abs(vec3<i32>(select(arg_0.e.d.x, -16389i, arg_0.e.e.x), arg_2.x, 2147483647i))), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.x, 2147483647i & arg_2.x, arg_1.a.x), -vec3<i32>(61326i, -2147483647i, -2147483647i)) ^ firstLeadingBit(~_wgslsmith_mod_vec3_i32(arg_2.xyz, vec3<i32>(-9031i, 1i, 44730i))));
    global1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-440f, 1352f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(374f)))))), arg_0.b, ~(~(4294967295u ^ _wgslsmith_sub_u32(27524u, global1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.d))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.a))) - 935f)), func_2());
    var var_1 = Struct_2(-2060f, !vec4<bool>(true, !all(global1.b.yzw), func_2().e.x, any(vec3<bool>(global1.e.e.x, arg_0.e.e.x, arg_0.e.e.x))), func_4(global1.e.e.x, arg_1, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.d)) + _wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1904f)) + _wgslsmith_f_op_f32(f32(-1f) * -729f)))).x, global1.a, global1.e);
    var_1 = arg_0;
    return func_2();
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(global1.a, vec4<bool>(true, !global1.e.e.x, true, all(vec4<bool>(true, global1.e.e.x, global1.b.x, false)) | (u_input.b == select(1u, global1.c, global1.b.x))), u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a, 1351f, global1.b.x)) - -159f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(-257f + global1.a)))))), func_5(Struct_2(global1.a, global1.b, u_input.b, global1.d, global1.e), Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, global1.e.d), -vec2<i32>(global1.e.d.x, 8909i)), func_4(true, func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(448f, 1000f, global1.a))), abs(~u_input.c), global1.e.a, vec3<bool>(global1.b.x, false, !global1.e.e.x)), max(~reverseBits(vec4<i32>(global1.e.d.x, u_input.a.x, u_input.a.x, 1i)), vec4<i32>(-10134i & global1.e.d.x, 1i, _wgslsmith_mod_i32(global1.e.a.x, global1.e.a.x), ~u_input.a.x))));
    return func_5(var_0, var_0.e, ~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.e.a.x, -34287i), vec3<i32>(1i, u_input.a.x, -55041i)) >> (~var_0.c % 32u), 1i, u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(21511i, 2147483647i, 16198i, global1.e.d.x), vec4<i32>(22146i, var_0.e.a.x, 2147483647i, global1.e.d.x)), vec4<i32>(-2147483647i, 1i, global1.e.d.x, u_input.a.x))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-968f)), arg_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2173f, 2538f)) + global1.a)), vec4<bool>(arg_0.e.x, !(!any(vec3<bool>(arg_0.e.x, true, false))), arg_0.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(global1.d, 314f, true))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global1.d)), -493f, true))), ~global1.e.b.x, 1613f, arg_0);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.d)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))))), true))));
    let var_2 = vec4<bool>(false, !global1.b.x, var_0.b.x, var_0.b.x);
    let var_3 = abs(vec4<i32>(_wgslsmith_clamp_i32(arg_0.d.x, var_0.e.d.x, arg_2.x), -12249i, -var_0.e.d.x, _wgslsmith_add_i32(-2147483647i, var_0.e.d.x)));
    global0 = true;
    return Struct_1(-max(~_wgslsmith_mult_vec2_i32(vec2<i32>(global1.e.a.x, 1i), arg_2.zx), firstLeadingBit(var_3.zz)), var_0.e.b, func_1().b.yz, vec2<i32>(56024i, var_0.e.d.x), var_0.e.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(1304f, select(!select(global1.b, !global1.b, global1.b), global1.b, all(global1.b.zyz)), ~(~_wgslsmith_add_u32(u_input.b, u_input.c.x) & ~select(10592u, 1u, true)), -761f, func_6(func_1(), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a, 1206f, global1.d), vec3<f32>(global1.d, 947f, global1.a), global1.b.yzx)) * vec3<f32>(global1.a, global1.d, global1.a)), vec3<f32>(_wgslsmith_f_op_f32(max(358f, global1.d)), -753f, _wgslsmith_f_op_f32(f32(-1f) * -227f))), vec3<i32>(u_input.a.x, reverseBits(i32(-1i) * -3297i), _wgslsmith_mult_i32(-u_input.a.x, u_input.a.x))));
    var var_1 = ~(~var_0.e.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, 17700i, -2147483647i), global1.e.a.x, func_6(Struct_1(var_0.e.a, var_0.e.b, global1.e.c, vec2<i32>(-2147483647i, -8243i), vec3<bool>(global1.e.e.x, true, true)), vec3<f32>(global1.a, -1263f, global1.d), vec3<i32>(25710i, var_0.e.d.x, global1.e.a.x)).d.x, var_0.e.d.x)) << (vec4<u32>(~_wgslsmith_mod_u32(6925u, 19199u), ~1u, u_input.b, ~global1.c) % vec4<u32>(32u)), var_0.c, func_2().b.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(127f, var_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -1841f), var_0.a), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, global1.a, var_0.a), vec3<f32>(-2035f, 557f, 474f)))))), var_0.b.x != var_0.b.x)), func_5(var_0, func_6(var_0.e, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.d, -296f, -883f))), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a.x, -29239i, 0i), -vec3<i32>(-2147483647i, 1i, -14629i))), ~(reverseBits(vec4<i32>(global1.e.a.x, u_input.a.x, global1.e.a.x, -2147483647i)) ^ (vec4<i32>(-1i, -2147483647i, global1.e.d.x, var_0.e.d.x) << (vec4<u32>(4294967295u, 39306u, global1.e.b.x, 3559u) % vec4<u32>(32u))))).b.x);
}

