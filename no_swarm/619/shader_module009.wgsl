struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<vec4<f32>, 16>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> i32 {
    var var_0 = -global1.b.x;
    let var_1 = ~(~reverseBits(~vec4<u32>(u_input.a, u_input.d.x, u_input.b.x, u_input.a)) ^ select(min(select(vec4<u32>(u_input.a, 16783u, 15069u, 64777u), vec4<u32>(0u, 16924u, u_input.a, u_input.d.x), global1.d), vec4<u32>(4294967295u, 59787u, u_input.d.x, 1u) | vec4<u32>(1u, u_input.d.x, u_input.a, 15143u)), vec4<u32>(u_input.d.x, _wgslsmith_mod_u32(u_input.b.x, 1u), u_input.c, ~u_input.c), !(!vec4<bool>(false, global1.d, false, global0.d))));
    let var_2 = ~(~_wgslsmith_sub_vec3_u32(var_1.xyw, var_1.zyy)) | _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(57061u, 4294967295u), vec2<u32>(42532u, 0u))), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, u_input.b.x, var_1.x), var_1.xzz), vec3<u32>(u_input.b.x, u_input.d.x, var_1.x)) & ~vec3<u32>(0u, 0u, 1u));
    let var_3 = select(!(!(!vec4<bool>(global0.d, global1.d, global1.d, false))), vec4<bool>(all(vec2<bool>(global0.d, true)), global1.d, any(!select(vec4<bool>(global1.d, global0.d, global0.d, true), vec4<bool>(true, global0.d, global0.d, false), vec4<bool>(global0.d, true, global0.d, global1.d))), !(!(global0.d && global0.d))), select(select(!(!vec4<bool>(global0.d, false, global0.d, global0.d)), vec4<bool>(true, true, true, true), !vec4<bool>(false, false, global1.d, false)), !(!(!vec4<bool>(false, true, global1.d, global1.d))), true));
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(sign(-444f)))) + global0.a), ~vec2<i32>(reverseBits(84704i), -1i), _wgslsmith_mult_i32(((2147483647i | global1.e) >> ((u_input.d.x << (0u % 32u)) % 32u)) >> (var_2.x % 32u), (global1.e & -1i) ^ ~_wgslsmith_div_i32(global1.b.x, -49160i)), true, (min(~(-12533i), _wgslsmith_mult_i32(global1.c, 39063i)) << (~(var_2.x << (var_2.x % 32u)) % 32u)) & ~_wgslsmith_dot_vec2_i32(global0.b, global0.b));
    return _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(-1i, 1i));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = ~(~select(select(countOneBits(vec4<u32>(u_input.c, 1u, 45097u, u_input.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(23572u, 4294967295u, u_input.b.x, u_input.d.x), vec4<u32>(u_input.c, u_input.a, u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, 65666u, u_input.b.x, 87252u)), !vec4<bool>(global0.d, global1.d, false, true)), vec4<u32>(~u_input.c, min(u_input.a, 66577u), u_input.a, u_input.d.x), true));
    let var_1 = select(select(select(!select(vec3<bool>(true, global0.d, false), vec3<bool>(false, true, global0.d), vec3<bool>(global0.d, global1.d, global1.d)), select(select(vec3<bool>(global1.d, global1.d, true), vec3<bool>(global1.d, false, global0.d), vec3<bool>(global0.d, true, global1.d)), !vec3<bool>(global1.d, global1.d, true), vec3<bool>(global0.d, global1.d, false)), vec3<bool>(true, !global0.d, all(vec2<bool>(global1.d, true)))), select(!(!vec3<bool>(global1.d, true, true)), vec3<bool>(!global1.d, true, true), !(!vec3<bool>(global0.d, global0.d, global0.d))), u_input.a != countOneBits(~var_0.x)), !vec3<bool>(any(vec3<bool>(true, global0.d, false)), !select(global0.d, true, global1.d), global1.d), all(select(vec2<bool>(true, true), select(select(vec2<bool>(global1.d, false), vec2<bool>(true, true), global1.d), !vec2<bool>(false, global0.d), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(true, global1.d, false)), global1.d))));
    let var_2 = 9020u;
    global1 = Struct_1(global1.a, ~global0.b, global0.e, !(min(global1.b.x, -48172i) > ~(~arg_0)), reverseBits(global0.e));
    global1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a))))), countOneBits(_wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(global1.b, global1.b), vec2<i32>(global0.c, -24242i))), ~min(countOneBits(global0.c), _wgslsmith_clamp_i32(-6069i, -2147483647i, -10052i) ^ ~(-1i)), global0.d, firstLeadingBit(~reverseBits(2147483647i)));
    return ~(~u_input.d.x >> (66807u % 32u));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(-573f, ~_wgslsmith_add_vec2_i32(global0.b, vec2<i32>(global0.b.x, ~global1.e)), func_2(), global0.c <= _wgslsmith_sub_i32(-global1.e, ~abs(global0.c)), -33736i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(-913f)), global1.b, -59853i, arg_1, var_0.e);
    let var_2 = ~func_3(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.x, -18495i, 0i, -1i), reverseBits(vec4<i32>(16452i, 4563i, var_1.c, var_0.b.x)))));
    let var_3 = vec4<i32>(global0.e, -(~(-countOneBits(-11322i))), i32(-1i) * -37085i, _wgslsmith_clamp_i32(var_1.b.x, -66359i, _wgslsmith_add_i32(_wgslsmith_mod_i32(global1.e, global1.c), var_0.b.x) << (~var_2 % 32u)));
    let var_4 = vec4<i32>(min(~var_3.x, (var_1.b.x ^ (var_3.x << (u_input.a % 32u))) ^ _wgslsmith_div_i32(~(-1i), i32(-1i) * -43872i)), ~var_0.b.x, ~firstTrailingBit(abs(22395i)), -1i);
    return Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1218f - global0.a), 280f)), -1077f)))), vec2<i32>(0i, global1.c) | vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(var_3.x, global1.b.x, 29316i), ~var_4.wxy), -1i), i32(-1i) * -43000i, arg_1, reverseBits(_wgslsmith_mult_i32(abs(1i), -(var_1.e ^ 1i))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_i32(~arg_2, reverseBits(global1.c) ^ ~(-global0.c));
    global1 = func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, 180f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 616f, global1.a) - vec3<f32>(global0.a, arg_1.a, 777f)), vec3<f32>(494f, global0.a, -275f)))))), !(!arg_1.d));
    var var_1 = (-countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.b.x, arg_1.e, global0.b.x, -1i), vec4<i32>(arg_2, global1.e, arg_2, global1.b.x))) ^ max(-vec4<i32>(9678i, -51955i, 15864i, arg_2), ~(-vec4<i32>(58746i, global1.c, global1.e, arg_2)))) & (firstLeadingBit(firstTrailingBit(countOneBits(vec4<i32>(-20343i, arg_2, 0i, -2147483647i)))) & _wgslsmith_add_vec4_i32(-firstLeadingBit(vec4<i32>(-74895i, -56637i, arg_2, 79591i)), ~vec4<i32>(global0.b.x, 0i, global0.e, arg_1.e)));
    global1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a - 398f)), -525f), _wgslsmith_f_op_f32(global1.a - func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global0.a, -311f)), arg_0.x).a))), global1.b, 1i, true, 30131i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.a + -1000f), 628f)), arg_1.a)) - global1.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-1031f + -636f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(943f))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 16>();
    global1 = func_4(vec4<bool>(true, select(!global0.d, global0.d, ~1u >= _wgslsmith_mult_u32(46937u, u_input.b.x)), all(select(!vec2<bool>(global0.d, false), vec2<bool>(true, true), true & global0.d)), select(any(vec2<bool>(false, true)), global1.d, false) & (countOneBits(global0.e) > _wgslsmith_sub_i32(27352i, global1.e))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, 1018f, global1.a)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2261f), _wgslsmith_f_op_f32(max(-471f, global0.a)), _wgslsmith_f_op_f32(global0.a - 2334f))), !global0.d), ~global0.e);
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(2150f)), -(vec2<i32>(29470i, -45043i) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -1i), global0.b), global0.b)), -31707i, all(select(vec2<bool>(-346f == global0.a, global0.d), !vec2<bool>(false, global0.d), select(select(vec2<bool>(false, false), vec2<bool>(true, global1.d), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, global0.d), vec2<bool>(global0.d, global1.d)), !vec2<bool>(global0.d, global0.d)))), 36906i);
    global2 = array<vec4<f32>, 16>();
    global1 = func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(695f, global1.a, global1.a), vec3<f32>(global1.a, global0.a, global0.a))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1808f, -1035f, global0.a))), vec3<f32>(-1000f, 1774f, 104f))))))), false);
    global1 = Struct_1(934f, vec2<i32>(~0i, abs(0i)), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-2147483647i, -2147483647i, global0.b.x) | vec3<i32>(1i, 77025i, global1.b.x)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(global0.b.x, global0.c, global0.c) | vec3<i32>(global1.e, global1.b.x, 31274i)), reverseBits(min(vec3<i32>(global1.b.x, -26383i, 1i), vec3<i32>(69392i, global1.c, -9085i))))), !any(vec3<bool>(global0.d, any(vec2<bool>(true, true)), !global1.d)), -func_4(select(vec4<bool>(false, global0.d, false, global1.d), !vec4<bool>(global1.d, true, true, true), global1.d && true), Struct_1(_wgslsmith_f_op_f32(global0.a - global1.a), -global0.b, 1i >> (u_input.a % 32u), global1.d, -10799i), func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-405f, global1.a, -1756f), vec3<f32>(global0.a, -126f, global0.a))), !global0.d).b.x).b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-global1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.a - -568f), -237f, _wgslsmith_f_op_f32(504f + -373f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-814f, global0.a, global1.a) - vec3<f32>(global0.a, 628f, 865f)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a)) - _wgslsmith_f_op_f32(-global0.a)), -1729f, 1232f)), 20904u, 1u);
}

