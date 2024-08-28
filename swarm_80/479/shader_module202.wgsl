struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-365f, 1675f, 428f)) * vec3<f32>(635f, -1580f, 354f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-266f, -1781f, 901f) - vec3<f32>(108f, -1000f, -928f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1707f, -1565f, -225f))), !arg_1)))));
    let var_1 = vec3<i32>(firstTrailingBit(-arg_0.a), u_input.e, _wgslsmith_clamp_i32(max(arg_3.a, ~(~u_input.a.x)), firstTrailingBit(49116i), _wgslsmith_mult_i32(1i, u_input.a.x)));
    global0 = vec2<i32>(abs(-(var_1.x & u_input.a.x)), firstLeadingBit(-46647i << (_wgslsmith_add_u32(_wgslsmith_add_u32(27165u, u_input.b.x), arg_0.b) % 32u)));
    global0 = countOneBits(min(~vec2<i32>(arg_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.x, -21928i), vec3<i32>(60875i, 0i, -42687i))), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -6324i, 8057i), var_1), ~_wgslsmith_clamp_i32(u_input.a.x, -6219i, var_1.x))));
    let var_2 = arg_0;
    return !arg_2;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = select(vec3<bool>(true, !(any(vec4<bool>(false, false, false, false)) & func_3(Struct_1(global0.x, 25298u, 63787u), false, false, Struct_1(global0.x, arg_0, 17107u))), (39983u == u_input.c) | true), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), any(vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, false)), true)), !select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true)), !(u_input.a.x >= ~_wgslsmith_sub_i32(u_input.a.x, -26173i)));
    var_0 = select(vec3<bool>(func_3(Struct_1(0i, u_input.d, ~1u), false, var_0.x | true, Struct_1(-2147483647i, ~0u, 4294967295u)), true, var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, !(4294967295u == u_input.b.x), any(select(vec2<bool>(var_0.x, var_0.x), var_0.zz, vec2<bool>(var_0.x, false)))), select(vec3<bool>(true, true, true), !select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, false), vec3<bool>(true, true, var_0.x)), select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, false, true), true), !vec3<bool>(var_0.x, var_0.x, var_0.x), false))), !(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(var_0.x, false, var_0.x))));
    global0 = ~u_input.a.yz;
    let var_1 = any(!(!vec3<bool>(var_0.x, true, 1u != arg_0)));
    var var_2 = 19927u;
    return u_input.a.x;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = (u_input.a.xz | vec2<i32>(1i, ~arg_1.a)) >> (select(abs(abs(vec2<u32>(1u, u_input.d))), vec2<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.b.yyx, u_input.b.wxz)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))) % vec2<u32>(32u));
    global0 = vec2<i32>(~((func_2(2323u) | (arg_1.a ^ global0.x)) | 33299i), ~min(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0.x, global0.x, global0.x, arg_1.a)), u_input.a), global0.x));
    return Struct_1(global0.x, firstTrailingBit(_wgslsmith_dot_vec2_u32((u_input.b.yw & vec2<u32>(13900u, arg_1.c)) ^ vec2<u32>(0u, 4294967295u), u_input.b.yy)), firstTrailingBit(arg_1.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(~u_input.b.zx << ((u_input.b.xw & vec2<u32>(u_input.d, u_input.c)) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(41002u, arg_0.b), vec2<u32>(arg_0.b, arg_0.c)), min(u_input.b.x, 60518u)) << (~(vec2<u32>(0u, u_input.b.x) >> (vec2<u32>(0u, 6165u) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(select(vec2<u32>(arg_0.b, 4294967295u), u_input.b.yz, select(arg_1.zy, arg_1.yx, true)), u_input.b.wx, ~u_input.b.zx));
    let var_1 = firstTrailingBit(arg_0.a) | ~max(abs(6265i), ~(-global0.x));
    let var_2 = Struct_1(_wgslsmith_mod_i32(~global0.x, ~_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0.a, 1i), -2147483647i)), u_input.c, _wgslsmith_mod_u32(17780u, var_0.x));
    var var_3 = abs(~(~vec4<u32>(func_1(arg_2, Struct_1(var_2.a, arg_0.c, 31851u)).c, firstLeadingBit(arg_0.c), countOneBits(u_input.d), var_2.b)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -301f)))) * arg_2);
    return func_1(376f, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~max(~u_input.d, 18370u)));
    global0 = reverseBits(firstLeadingBit(~vec2<i32>(i32(-1i) * -2147483647i, countOneBits(u_input.a.x))));
    let var_1 = func_4(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -940f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-280f))))), Struct_1(-(global0.x << (u_input.c % 32u)), u_input.b.x << (1u % 32u), 0u)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-540f, 106f))))))));
    let var_2 = func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1190f)) + _wgslsmith_f_op_f32(step(-119f, _wgslsmith_f_op_f32(717f + -1000f)))), func_4(var_1, vec4<bool>(true, false, false, true), _wgslsmith_f_op_f32(step(422f, _wgslsmith_f_op_f32(step(717f, -1000f)))))), vec4<bool>(_wgslsmith_dot_vec3_i32(u_input.a.wzz, _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a, -2147483647i, var_1.a), u_input.a.zxx, vec3<i32>(-43813i, 1i, -39841i))) <= (_wgslsmith_mult_i32(u_input.e, var_1.a) >> (4294967295u % 32u)), true, any(vec3<bool>(true, true, false)), all(vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, select(true, true, true)))), 1f);
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1083f * -1612f) - _wgslsmith_f_op_f32(-1000f + 2531f))))));
    var var_5 = Struct_1(firstLeadingBit(var_1.a), u_input.d, firstTrailingBit(min(27102u, var_2.b)));
    let var_6 = var_2;
    var var_7 = firstTrailingBit(~(0u >> (_wgslsmith_sub_u32(min(var_2.c, u_input.b.x), ~51934u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_u32(u_input.b.wz, ~u_input.b.zz)), (13358i >> (var_6.b % 32u)) & abs(var_2.a));
}

