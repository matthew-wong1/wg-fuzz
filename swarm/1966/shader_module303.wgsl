struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(702f);

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> i32 {
    let var_0 = abs(max(vec4<i32>(-1i << (1u % 32u), ~u_input.e, u_input.c.x, -2147483647i) | abs(reverseBits(vec4<i32>(-32124i, -1i, -30758i, u_input.c.x))), vec4<i32>(-1i) * -(vec4<i32>(u_input.b, u_input.e, 18149i, 46325i) | vec4<i32>(u_input.e, 1i, u_input.c.x, u_input.e))));
    var var_1 = -812f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1.x));
    var var_4 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(var_3.a)));
    return var_0.x;
}

fn func_2(arg_0: vec2<f32>) -> bool {
    global1 = vec3<bool>(!(!global1.x), !global1.x, !global1.x);
    var var_0 = Struct_1(global0.a);
    var var_1 = vec4<i32>(u_input.c.x, _wgslsmith_sub_i32(func_3(-829f, vec2<f32>(var_0.a, -1404f), select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, global1.x, true), global1.x)) | ~_wgslsmith_clamp_i32(32381i, 24792i, 0i), _wgslsmith_add_i32(firstLeadingBit(u_input.b << (u_input.a % 32u)), u_input.c.x)), firstLeadingBit(_wgslsmith_mod_i32(13629i, firstTrailingBit(_wgslsmith_mult_i32(u_input.e, 1i)))), ~(~(~(~u_input.e))));
    var_0 = Struct_1(var_0.a);
    var var_2 = Struct_1(-842f);
    return global1.x;
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    global1 = vec3<bool>(global1.x, u_input.b <= 8121i, arg_0);
    global1 = select(select(!select(!vec3<bool>(global1.x, true, false), vec3<bool>(true, true, true), vec3<bool>(global1.x, arg_0, true)), vec3<bool>(any(vec4<bool>(global1.x, arg_0, false, arg_0)), true, all(select(vec3<bool>(global1.x, arg_0, arg_0), vec3<bool>(global1.x, arg_0, global1.x), vec3<bool>(true, arg_0, false)))), !(!select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, global1.x, global1.x), vec3<bool>(global1.x, false, arg_0)))), select(select(!(!vec3<bool>(arg_0, global1.x, global1.x)), vec3<bool>(!arg_0, any(global1.xy), global1.x), vec3<bool>(arg_0 && false, global0.a != global0.a, func_2(vec2<f32>(-1379f, -820f)))), !(!(!vec3<bool>(true, global1.x, true))), global1.x), vec3<bool>(any(select(vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(false, false)), 19513u != u_input.a)), arg_0, true));
    let var_0 = Struct_1(global0.a);
    let var_1 = -vec3<i32>(u_input.b, firstTrailingBit(23292i), -_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.b, 1i)), u_input.c & vec2<i32>(1i, u_input.e)));
    let var_2 = _wgslsmith_f_op_f32(abs(-812f));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-338f)) + 183f), _wgslsmith_f_op_f32(-693f - arg_1.a))))));
    let var_0 = arg_0;
    var var_1 = select(select(vec2<bool>(_wgslsmith_f_op_f32(-arg_0.a) <= _wgslsmith_f_op_f32(arg_0.a - -405f), any(vec4<bool>(false, global1.x, global1.x, false))), select(global1.yx, vec2<bool>(global1.x, true), true != all(vec4<bool>(false, false, true, false))), global1.zz), vec2<bool>(any(!vec2<bool>(global1.x, global1.x)), all(!(!vec4<bool>(true, true, global1.x, false)))), global1.x);
    var var_2 = vec2<i32>(-1i, _wgslsmith_div_i32(u_input.e, ~(~(~u_input.b))));
    let var_3 = false;
    return Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(157f, _wgslsmith_f_op_f32(-var_0.a)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    let var_1 = select(vec2<u32>(1u, max(~arg_1.x, _wgslsmith_clamp_u32(arg_1.x, u_input.a, u_input.a))), vec2<u32>(~reverseBits(4294967295u), countOneBits(u_input.a) >> (u_input.d.x % 32u)), any(select(vec4<bool>(false, global1.x, true, false), !vec4<bool>(global1.x, global1.x, true, false), !vec4<bool>(global1.x, global1.x, global1.x, global1.x)))) ^ abs(~vec2<u32>(12188u, 1724u) & vec2<u32>(u_input.d.x, 1u));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-405f * var_0.a), var_0.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a, -507f), vec2<f32>(arg_0.a, 751f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-297f, var_0.a) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a, arg_0.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(344f, 834f))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.a)))), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1620f)) * _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 1000f, global0.a) - vec3<f32>(-1629f, var_0.a, -121f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, -1000f, 1142f), vec3<f32>(global0.a, -901f, global0.a)))))));
    return func_1(~(-max(0i, -13716i)) > u_input.b, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(all(!(!global1.zx)), true, global1.x);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a));
    var var_1 = func_5(func_4(func_1(!any(global1.zz), ~(~u_input.d.x)), func_1(!(u_input.a != u_input.a), reverseBits(~0u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * 2618f))), _wgslsmith_clamp_vec4_u32(u_input.d, ~min(min(vec4<u32>(u_input.a, 1u, 1u, u_input.a), vec4<u32>(u_input.a, 8706u, u_input.d.x, 1u)), _wgslsmith_sub_vec4_u32(u_input.d, u_input.d)), vec4<u32>(11221u, u_input.a, 64998u, u_input.d.x)));
    global0 = func_1(select(global1.x, global1.x, select(all(vec4<bool>(global1.x, true, true, var_0)), all(!vec3<bool>(var_0, var_0, false)), true)), min(u_input.d.x, firstTrailingBit(~85177u) & 0u));
    let var_2 = abs(vec3<u32>(39809u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.d.x, 80560u), 4294967295u, u_input.d.x), _wgslsmith_sub_u32(~u_input.d.x, _wgslsmith_mod_u32(4294967295u, u_input.d.x)), 0u & select(0u, 4294967295u, global1.x)), ~max(~27747u, 0u)));
    let var_3 = u_input.d.x;
    var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1200f)) * 658f))), func_1(true, 4294967295u), func_5(func_4(func_4(func_1(false, 4294967295u), func_5(Struct_1(var_1.a), u_input.d), Struct_1(var_1.a)), func_5(Struct_1(var_1.a), ~u_input.d), Struct_1(var_1.a)), vec4<u32>(_wgslsmith_mult_u32(var_2.x >> (36539u % 32u), var_3), _wgslsmith_clamp_u32(var_3, 1u, ~var_3), ~(~u_input.d.x), ~abs(4294967295u))));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~select(64616u, 8126u, false), ~u_input.a), u_input.d.wy), _wgslsmith_mult_u32(~76566u, firstTrailingBit(u_input.a) & _wgslsmith_clamp_u32(~2827u, _wgslsmith_div_u32(var_3, 13120u), _wgslsmith_sub_u32(83672u, var_3))));
    var var_5 = ~min(_wgslsmith_div_vec4_i32(select(vec4<i32>(-16326i, u_input.c.x, -11127i, u_input.e), vec4<i32>(1i, 0i, -32240i, u_input.e), vec4<bool>(var_0, false, true, var_0)), abs(vec4<i32>(u_input.e, 23725i, u_input.e, u_input.e))), ~vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, u_input.e) ^ vec4<i32>(2147483647i, u_input.b, u_input.c.x, u_input.b)) ^ (vec4<i32>(-1i) * -vec4<i32>(min(-1653i, u_input.c.x), -66687i, u_input.e, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_u32(abs(_wgslsmith_mod_u32(6668u, var_2.x)), u_input.a, ~1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * var_1.a), -max(~(-u_input.c.x), -u_input.e), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.a, -1172f, 548f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(463f, var_1.a, -737f, var_1.a), vec4<f32>(-1000f, 1000f, 1102f, -1314f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, var_1.a, global0.a, -103f)) * vec4<f32>(1148f, var_1.a, global0.a, -308f))), vec4<f32>(1228f, var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -738f), -454f), -795f)), vec4<i32>(u_input.c.x, u_input.c.x, reverseBits(abs(u_input.e)), var_5.x));
}

