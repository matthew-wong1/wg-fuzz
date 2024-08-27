struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(77748u, 0u, 0u);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_2(~vec4<i32>(1i, 1i, 65857i, _wgslsmith_mod_i32(arg_1, select(arg_1, 0i, true))));
    let var_1 = _wgslsmith_mult_i32(arg_1, 72644i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(450f - 783f))))));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), abs(max(var_0.a, -(~var_0.a))), _wgslsmith_f_op_f32(-1438f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)))), select(vec2<bool>(true, true), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, false), any(vec4<bool>(false, false, false, true))), !vec2<bool>(global1.x < global1.x, true)), select(select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), true)), select(vec4<bool>(all(vec4<bool>(false, false, false, true)), true, true, var_1 <= -43861i), vec4<bool>(true, true, true, var_1 != -1i), vec4<bool>(true, true, true, true)), true));
    let var_4 = _wgslsmith_clamp_vec4_u32(u_input.a, ~(~(vec4<u32>(u_input.a.x, 30158u, global1.x, 1u) | (u_input.a << (vec4<u32>(4294967295u, u_input.a.x, 1u, var_3.a) % vec4<u32>(32u))))), countOneBits(~firstTrailingBit(vec4<u32>(1u, 0u, global1.x, global1.x))));
    return global1.x;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: i32) -> vec2<bool> {
    return !select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true)), select(vec2<bool>(true, all(vec4<bool>(true, true, false, false))), vec2<bool>(true, true), !select(true, true, false)), !all(vec3<bool>(false, false, true)) && !select(true, false, true));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global0 = any(func_4(4294967295u, abs(vec4<u32>(func_3(vec2<f32>(arg_0, -108f), -24062i, vec2<f32>(-1000f, -1000f)), reverseBits(u_input.a.x), global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -1833f, -114f) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-126f, -358f, 552f) + vec3<f32>(-446f, 1064f, arg_0))))), -(~firstTrailingBit(-1i))));
    global0 = false;
    var var_0 = Struct_3(Struct_2(~(-vec4<i32>(1i, 0i, -20446i, 48380i))), vec4<bool>(any(vec4<bool>(any(vec4<bool>(false, false, true, true)), true, true, true)), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), all(vec3<bool>(true, true, true)), !select(any(vec3<bool>(true, true, true)), all(vec2<bool>(false, true)), true)), Struct_1(17936u, _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -25034i, 0i), vec3<i32>(42786i, -2147483647i, -1i)), _wgslsmith_add_i32(21100i, -1i), -2105i, ~6598i), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-30631i, 25231i, 0i, 2147483647i), vec4<i32>(2147483647i, -16941i, 1i, 0i), vec4<i32>(0i, 1i, 1i, -13357i)))), 876f, vec2<bool>(false, true), vec4<bool>(true, true, false, !any(vec3<bool>(false, false, true)))), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_4(0u, vec4<u32>(u_input.a.x, global1.x, 33183u, 27845u), vec3<f32>(arg_0, -1287f, arg_0), 0i).x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    let var_1 = var_0.a;
    let var_2 = Struct_3(Struct_2(_wgslsmith_mod_vec4_i32(var_1.a, vec4<i32>(var_0.a.a.x, 2147483647i, -2147483647i, max(var_1.a.x, var_0.a.a.x)))), var_0.b, var_0.c, select(vec4<bool>(true, any(!var_0.b.xxy), (global1.x & global1.x) <= 8767u, false), select(vec4<bool>(1u >= var_0.c.a, true, true, any(vec2<bool>(true, var_0.d.x))), select(!vec4<bool>(true, var_0.d.x, var_0.d.x, var_0.c.e.x), select(vec4<bool>(var_0.d.x, var_0.d.x, false, var_0.c.d.x), var_0.b, var_0.b), select(vec4<bool>(true, true, var_0.b.x, false), vec4<bool>(var_0.c.d.x, var_0.b.x, var_0.d.x, true), var_0.b.x)), false), true));
    return var_2.d.zzz;
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = !vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true);
    global1 = countOneBits(u_input.a.zwz << (select(u_input.a.yxx, (u_input.a.zyy & u_input.a.zzz) ^ ~u_input.a.ywx, func_2(-338f)) % vec3<u32>(32u)));
    var var_1 = 0u | (~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~53120u) | _wgslsmith_clamp_u32(22050u >> (~global1.x % 32u), max(1u, 4294967295u), 4294967295u));
    var_1 = _wgslsmith_add_u32(4294967295u, _wgslsmith_add_u32(~4294967295u, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global1.x, 4294967295u, 65361u, 0u)), 56478u)));
    var var_2 = ~arg_1.x;
    return Struct_1(~(global1.x | firstLeadingBit(_wgslsmith_sub_u32(41566u, 0u))), -_wgslsmith_mod_vec4_i32(max(~vec4<i32>(2297i, 25750i, arg_1.x, arg_0), min(vec4<i32>(arg_0, 1i, arg_0, 2147483647i), vec4<i32>(51710i, arg_1.x, 2147483647i, 2147483647i))), max(vec4<i32>(-1i, 3497i, 30230i, arg_0) ^ vec4<i32>(7124i, -2147483647i, -74127i, arg_1.x), -vec4<i32>(-17713i, 1i, -15398i, arg_1.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -107f), 449f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(120f, 227f)) + 138f)))), !vec2<bool>(func_4(_wgslsmith_div_u32(1u, u_input.a.x), vec4<u32>(0u, global1.x, 0u, u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 807f, 631f)), ~arg_1.x).x, true), !vec4<bool>((arg_1.x & 0i) > -arg_0, func_2(798f).x, all(!vec3<bool>(var_0.x, var_0.x, false)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(global1.x, _wgslsmith_sub_u32(u_input.a.x, 73034u) << (12696u % 32u));
    let var_1 = _wgslsmith_sub_i32(firstTrailingBit(firstLeadingBit(2505i)), -2147483647i);
    var var_2 = func_1(abs(var_1), vec2<i32>(-1i) * -vec2<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(var_1, var_1)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(259f, 328f), vec2<f32>(127f, var_2.c), false))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-268f, var_2.c))))))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2221f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.c + -440f)))))));
    let var_4 = func_1(var_2.b.x, var_2.b.yz);
    var_2 = Struct_1(select(abs(~116472u), 0u, true), select(vec4<i32>(-13340i, ~(~var_1), abs(_wgslsmith_div_i32(var_2.b.x, -1i)), ~var_1 ^ _wgslsmith_div_i32(var_4.b.x, 0i)), var_2.b, var_4.e), var_4.c, !var_4.d, var_2.e);
    var var_5 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.x + -1000f)))), -1170f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.c, -877f, any(var_2.e.xwy)))) + 1026f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(func_1(var_2.b.x, var_2.b.yx).a | _wgslsmith_mult_u32(var_2.a, global1.x), ~(~12339u), max(var_0, var_4.a), global1.x), _wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(8230u, global1.x, 1855u, global1.x), u_input.a), vec4<u32>(var_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(42359u, var_4.a, 4294967295u, var_0), u_input.a), ~global1.x, _wgslsmith_mult_u32(var_2.a, var_0)))), vec4<i32>(-1i | var_1, var_1, firstTrailingBit(-1i), (_wgslsmith_div_i32(var_1, var_1) | (var_2.b.x & -49428i)) & var_1));
}

