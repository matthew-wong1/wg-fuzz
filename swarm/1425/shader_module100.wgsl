struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(false, vec4<u32>(1u, 1u, 0u, 21133u), Struct_1(57347u, vec3<bool>(false, false, false), -82705i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    var var_0 = Struct_5(select(!vec4<bool>(global1.c.b.x, false, false, !global1.c.b.x), select(vec4<bool>(false, all(vec4<bool>(global1.c.b.x, false, false, global1.c.b.x)), global1.c.b.x, true), select(vec4<bool>(true, global1.a, true, global1.a), vec4<bool>(global1.c.b.x, global1.c.b.x, true, global1.c.b.x), any(vec4<bool>(global1.c.b.x, global1.a, global1.c.b.x, global1.c.b.x))), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, global1.c.b.x, global1.c.b.x, false), vec4<bool>(true, false, global1.c.b.x, false), global1.c.b.x), true)), global1.c.b.x), !select(select(vec4<bool>(global1.c.b.x, true, global1.a, false), !vec4<bool>(false, global1.a, global1.c.b.x, global1.a), global1.c.b.x && false), vec4<bool>(global1.c.b.x, any(vec4<bool>(global1.c.b.x, global1.c.b.x, global1.a, global1.c.b.x)), all(vec4<bool>(true, true, global1.a, global1.c.b.x)), global1.c.b.x), false));
    var var_1 = arg_1;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -2556f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) + _wgslsmith_f_op_f32(arg_0.x * arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(645f + _wgslsmith_f_op_f32(min(arg_0.x, 1187f))))));
    global0 = ~_wgslsmith_div_u32(abs(0u), 4294967295u);
    global0 = ~86274u;
    return _wgslsmith_div_f32(var_2.x, var_2.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = vec4<f32>(arg_1.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b.x, -985f, -1557f, -159f)), i32(-1i) * -32355i))), -1788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.b.x)))));
    let var_1 = Struct_5(!select(!select(vec4<bool>(true, false, arg_1.b.a.b.x, arg_1.b.a.b.x), vec4<bool>(global1.c.b.x, true, false, false), arg_1.a), select(select(vec4<bool>(arg_1.a, false, arg_1.a, global1.c.b.x), vec4<bool>(arg_1.b.c.a, arg_1.b.c.c.b.x, arg_1.b.a.b.x, arg_1.a), true), !vec4<bool>(global1.a, arg_1.a, arg_1.a, true), false & global1.a), select(vec4<bool>(true, arg_1.b.c.a, global1.a, arg_1.b.c.c.b.x), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, arg_1.b.c.a), vec4<bool>(false, global1.c.b.x, false, true)), select(vec4<bool>(global1.c.b.x, arg_1.a, true, false), vec4<bool>(arg_1.a, false, false, global1.a), vec4<bool>(true, global1.a, arg_1.b.c.c.b.x, global1.c.b.x)))), select(vec4<bool>(arg_1.a, global1.a, !any(global1.c.b.xy), 1419f < var_0.x), select(select(!vec4<bool>(arg_1.b.c.a, arg_1.b.c.a, arg_1.a, false), select(vec4<bool>(global1.c.b.x, arg_1.a, true, global1.c.b.x), vec4<bool>(true, true, arg_1.b.c.c.b.x, false), arg_1.a), arg_0.x >= arg_0.x), !vec4<bool>(global1.c.b.x, true, false, arg_1.a), select(!vec4<bool>(global1.a, global1.c.b.x, false, false), select(vec4<bool>(arg_1.a, false, false, arg_1.a), vec4<bool>(false, true, true, arg_1.b.c.a), vec4<bool>(true, arg_1.b.a.b.x, true, arg_1.a)), true)), !select(select(vec4<bool>(global1.a, true, global1.a, false), vec4<bool>(arg_1.b.c.a, false, global1.a, false), vec4<bool>(global1.a, false, arg_1.b.a.b.x, global1.a)), vec4<bool>(true, false, true, arg_1.b.c.a), false)));
    let var_2 = select(vec3<bool>(arg_1.b.b.x <= _wgslsmith_f_op_f32(sign(var_0.x)), false, !any(vec3<bool>(arg_1.b.c.a, true, true))), global1.c.b, global1.c.b.x);
    var var_3 = Struct_5(vec4<bool>(true & (global1.c.b.x & arg_1.b.a.b.x), select(true, global1.c.b.x, all(var_1.a)), var_2.x, var_1.b.x), vec4<bool>(any(vec4<bool>(arg_1.b.a.b.x, arg_1.a, true, arg_1.b.c.a)) & false, true, arg_1.b.c.a, !(!arg_1.b.a.b.x)));
    let var_4 = !vec4<bool>(!(reverseBits(global1.c.c) <= ~arg_1.b.c.c.c), true, 0i < arg_0.x, all(select(vec2<bool>(true, var_3.b.x), arg_1.b.a.b.xz, select(vec2<bool>(var_2.x, false), var_3.a.yx, var_3.a.x))));
    return Struct_1(u_input.d, !select(arg_1.b.a.b, vec3<bool>(true, true, true), all(var_2.yx)), ~(-firstLeadingBit(global1.c.c) >> (~(~u_input.a.x) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<u32>) -> bool {
    let var_0 = Struct_2(!(true && select(27196i > arg_0.c, any(vec4<bool>(true, true, global1.c.b.x, arg_0.b.x)), false)), vec4<u32>(~abs(reverseBits(global1.c.a)), 8663u, ~firstLeadingBit(global1.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(arg_2.zwy), _wgslsmith_clamp_vec3_u32(arg_2.xxy, vec3<u32>(48414u, arg_0.a, 1u), global1.b.xxy)), _wgslsmith_add_vec3_u32(vec3<u32>(38488u, u_input.a.x, 6839u), u_input.a) >> (~vec3<u32>(global1.c.a, 8922u, u_input.a.x) % vec3<u32>(32u)))), func_2(firstLeadingBit(_wgslsmith_add_vec2_i32(u_input.b.yy, u_input.e.xz)) | vec2<i32>(0i | global1.c.c, u_input.e.x), Struct_4(true, Struct_3(func_2(vec2<i32>(-2147483647i, -1i), Struct_4(arg_1.x, Struct_3(Struct_1(arg_0.a, vec3<bool>(true, global1.a, false), 0i), vec4<f32>(186f, -1167f, -908f, 766f), Struct_2(global1.c.b.x, vec4<u32>(71754u, arg_2.x, arg_2.x, 61219u), arg_0), u_input.e), arg_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1655f, -213f, 158f, 562f)), Struct_2(false, arg_2, arg_0), min(vec3<i32>(arg_0.c, 35261i, 1i), u_input.b.yxw)), _wgslsmith_add_u32(1u, 62935u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, 58729u), u_input.a.xx) % 32u))));
    global0 = 1u << (_wgslsmith_add_u32(arg_2.x | _wgslsmith_div_u32(global1.c.a, 45155u), ~func_2(-u_input.e.xy, Struct_4(false, Struct_3(Struct_1(32649u, vec3<bool>(true, true, arg_1.x), -31613i), vec4<f32>(-2101f, -926f, 1672f, 954f), var_0, vec3<i32>(var_0.c.c, -47521i, var_0.c.c)), arg_0.a)).a) % 32u);
    let var_1 = max(1344i, max(~(-var_0.c.c), 1i) >> (1u % 32u));
    let var_2 = Struct_4(!(!all(arg_0.b)), Struct_3(Struct_1(firstTrailingBit(_wgslsmith_sub_u32(1u, global1.c.a)), global1.c.b, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b) << (~0u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(step(212f, _wgslsmith_f_op_f32(1353f + -384f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(469f - 1536f) - 405f), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(trunc(-1009f))), -330f), var_0, -u_input.e), var_0.b.x & (_wgslsmith_mult_u32(global1.c.a, u_input.d) >> (_wgslsmith_div_u32(var_0.c.a, _wgslsmith_add_u32(arg_2.x, 53764u)) % 32u)));
    global0 = _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.d, 1u)) | vec2<u32>(37893u, _wgslsmith_add_u32(arg_2.x << (96970u % 32u), ~1u)), _wgslsmith_mod_vec2_u32(global1.b.wz, var_2.b.c.b.zw >> (select(~global1.b.yz, vec2<u32>(var_0.c.a, u_input.c.x), var_0.c.b.x) % vec2<u32>(32u))));
    return false || func_2(u_input.e.xy, var_2).b.x;
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_3(Struct_1(max(~(5183u | u_input.c.x), ~min(u_input.d, global1.b.x)), vec3<bool>(any(global1.c.b) && true, func_4(func_2(u_input.b.yx, Struct_4(true, Struct_3(Struct_1(47555u, vec3<bool>(false, global1.c.b.x, global1.c.b.x), -22200i), vec4<f32>(-641f, -1623f, 2270f, -1521f), Struct_2(global1.c.b.x, vec4<u32>(0u, 0u, 1u, u_input.d), Struct_1(u_input.d, global1.c.b, 42040i)), u_input.b.xyz), u_input.c.x)), !vec2<bool>(false, global1.c.b.x), countOneBits(global1.b)), false), -17495i), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(1058f, 1432f, 1046f, -1444f), 1i)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f - -1761f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1712f, 418f)) + _wgslsmith_f_op_f32(abs(-182f))), _wgslsmith_f_op_f32(floor(-1698f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(557f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1402f))))), Struct_2(any(global1.c.b), ~_wgslsmith_sub_vec4_u32(global1.b, global1.b), func_2(reverseBits(vec2<i32>(u_input.b.x, -2147483647i)), Struct_4(true, Struct_3(global1.c, vec4<f32>(-2802f, 1150f, 618f, 188f), Struct_2(global1.c.b.x, global1.b, Struct_1(u_input.d, global1.c.b, global1.c.c)), u_input.b.xxy), ~16767u))), vec3<i32>(u_input.b.x, global1.c.c, global1.c.c));
    let var_1 = u_input.c.x << (1u % 32u);
    var var_2 = true;
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1054f - _wgslsmith_f_op_f32(-var_0.b.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x + -525f)))) > -152f, vec4<u32>(2891u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, 4294967295u, u_input.a.x), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(var_1, 0u, u_input.c.x)) & firstLeadingBit(u_input.a), ~vec3<u32>(var_1, 58751u, global1.b.x)), ~var_1, _wgslsmith_clamp_u32(~u_input.a.x, ~_wgslsmith_sub_u32(var_0.c.c.a, 1u), _wgslsmith_add_u32(~u_input.d, ~18962u))), func_2(vec2<i32>(firstTrailingBit(~var_0.a.c), abs(~global1.c.c)), Struct_4(var_0.c.a, Struct_3(global1.c, _wgslsmith_f_op_vec4_f32(var_0.b - var_0.b), Struct_2(false, vec4<u32>(var_0.a.a, 10660u, var_0.a.a, 4294967295u), Struct_1(var_0.c.c.a, vec3<bool>(var_0.c.a, true, false), var_0.d.x)), u_input.e), ~var_0.c.c.a ^ firstLeadingBit(var_1))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x))), _wgslsmith_f_op_f32(-var_0.b.x))));
    return -183f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(815f * -940f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(844f)) - _wgslsmith_f_op_f32(trunc(-1793f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(233f, 305f))) - 1492f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)) - _wgslsmith_f_op_f32(func_1(vec2<i32>(-2147483647i << (u_input.a.x % 32u), abs(u_input.b.x)))))));
    global0 = ~countOneBits(0u);
    var var_1 = Struct_3(Struct_1(global1.b.x, vec3<bool>(true, global1.c.b.x, !(!global1.a)), _wgslsmith_mult_i32(max(global1.c.c, ~34684i), global1.c.c)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, 414f, -370f))))), Struct_2(all(global1.c.b), vec4<u32>(18187u, 4294967295u, u_input.a.x, 1u), global1.c), vec3<i32>(16437i, 4276i, _wgslsmith_add_i32(1i, global1.c.c)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(trunc(var_0))));
    var var_3 = Struct_4(select(!select(global1.a, !global1.a, !var_1.a.b.x), false, true), Struct_3(Struct_1(0u, !func_2(vec2<i32>(u_input.b.x, 0i), Struct_4(false, Struct_3(Struct_1(global1.c.a, var_1.c.c.b, global1.c.c), vec4<f32>(var_1.b.x, -741f, 703f, var_1.b.x), Struct_2(true, vec4<u32>(41118u, 4294967295u, var_1.a.a, 5075u), global1.c), var_1.d), 0u)).b, 1i), var_1.b, var_1.c, abs(max(reverseBits(vec3<i32>(var_1.d.x, 1i, -13073i)), ~vec3<i32>(u_input.b.x, global1.c.c, 2147483647i)))), ~(~abs(var_1.c.b.x)));
    global0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(38916i, 16423u, global1.c.c, _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(67918i, global1.c.c), ~_wgslsmith_mod_vec2_i32(vec2<i32>(28722i, -1i), vec2<i32>(16278i, var_3.b.c.c.c))), ~(vec2<i32>(-1i) * -vec2<i32>(var_1.a.c, 44466i))), -(-(~var_1.c.c.c) >> (17803u % 32u)));
}

