struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1230f;

var<private> global1: array<vec4<u32>, 15>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = arg_2.c.x;
    global1 = array<vec4<u32>, 15>();
    let var_1 = Struct_3(arg_2.a, arg_2.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_3.a.wzw, vec3<f32>(_wgslsmith_div_f32(-499f, arg_2.d.a), var_0, 402f), false)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_3.a.xyx * vec3<f32>(-1047f, 818f, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, arg_1.a, arg_3.b.a) - vec3<f32>(1929f, arg_3.d.a, 439f)))))), arg_2.d);
    global1 = array<vec4<u32>, 15>();
    global0 = 1000f;
    return select(!select(vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(arg_2.d.c < arg_3.d.c, arg_3.d.a <= -1122f), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), false), vec2<bool>(true, true)), vec2<bool>(select(true, arg_3.a.x <= -302f, 10111u > u_input.a), true), ~_wgslsmith_dot_vec2_u32(vec2<u32>(19430u, 29071u), u_input.c.zz) < ((u_input.c.x << (8869u % 32u)) & _wgslsmith_clamp_u32(39267u, 1u, u_input.d))), vec2<bool>(true, true));
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = ~_wgslsmith_div_vec2_u32(max(vec2<u32>(abs(arg_3), _wgslsmith_add_u32(0u, arg_3)), u_input.c.zz >> (vec2<u32>(35616u, u_input.d) % vec2<u32>(32u))), ~u_input.c.zy);
    global0 = arg_2;
    let var_1 = select(true, false, true);
    global0 = _wgslsmith_f_op_f32(arg_2 - arg_2);
    let var_2 = 43662u;
    return ~0u;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<f32>(991f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-323f, -627f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 127f))), _wgslsmith_f_op_f32(-1f)));
    global1 = array<vec4<u32>, 15>();
    global1 = array<vec4<u32>, 15>();
    var var_1 = _wgslsmith_add_u32(~(~(~abs(27525u))), func_4(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), select(!func_3(u_input.b, Struct_1(var_0.x, 2147483647i, 9992i), Struct_3(vec4<f32>(-1812f, 1049f, 615f, 1699f), Struct_1(var_0.x, u_input.b, u_input.b), vec3<f32>(-2600f, var_0.x, 197f), Struct_1(var_0.x, u_input.b, 2147483647i)), Struct_3(vec4<f32>(-1396f, var_0.x, 1000f, var_0.x), Struct_1(645f, u_input.b, u_input.b), vec3<f32>(-1206f, var_0.x, var_0.x), Struct_1(-183f, u_input.b, u_input.b))), vec2<bool>(true, true), true), var_0.x, firstTrailingBit(~(~1u))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 233f, var_0.x, var_0.x))))), Struct_1(1488f, _wgslsmith_mult_i32(u_input.b, ~firstLeadingBit(21882i)), u_input.b ^ (firstTrailingBit(u_input.b) & -u_input.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-490f, 569f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 119f, var_0.x), vec3<f32>(var_0.x, 1920f, -563f)))), vec3<f32>(_wgslsmith_f_op_f32(select(-884f, _wgslsmith_f_op_f32(f32(-1f) * -758f), true)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_f32(-var_0.x))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1724f, -1981f)), var_0.x)), countOneBits(select(2147483647i, ~2147483647i, true)), -8470i));
    return Struct_1(_wgslsmith_f_op_f32(select(var_2.d.a, var_2.c.x, true)), _wgslsmith_div_i32(-21167i, u_input.b), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-11626i, _wgslsmith_add_i32(1227i, 25599i)), countOneBits(abs(vec2<i32>(2147483647i, u_input.b)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = u_input.c.x;
    global0 = arg_0.d.a;
    var var_1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c.a, func_2().a, _wgslsmith_f_op_f32(floor(arg_1.x)), _wgslsmith_f_op_f32(arg_0.c.a - arg_1.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(379f, -1135f, arg_1.x, arg_1.x) * vec4<f32>(-743f, -359f, arg_1.x, 111f)))))), Struct_1(arg_1.x, -31156i, 66391i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -858f)))))), func_2());
    var_1 = Struct_3(vec4<f32>(var_1.d.a, func_2().a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -1684f) - arg_0.c.a), _wgslsmith_f_op_f32(-2129f + 680f)), 521f), func_2(), _wgslsmith_f_op_vec3_f32(select(var_1.c, var_1.c, !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)))), arg_0.d);
    var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.a - arg_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a * 1200f)), arg_0.c.a, arg_1.x), Struct_1(_wgslsmith_f_op_f32(floor(var_1.a.x)), -u_input.b, arg_0.c.c), vec3<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -588f), -997f))), arg_1.x), func_2());
    return arg_0.c;
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = ~((min(max(18359i, -1i), ~u_input.b) & _wgslsmith_mod_i32(-33780i, -38716i | u_input.b)) ^ u_input.b);
    let var_1 = Struct_2(-_wgslsmith_dot_vec2_i32(min(abs(vec2<i32>(u_input.b, arg_1.b)), vec2<i32>(arg_1.c, arg_1.c)), vec2<i32>(arg_1.b, 1i)), vec3<i32>(arg_1.b | 17263i, u_input.b, arg_1.b), arg_1, arg_1);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, 1526f, !arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1469f, var_1.d.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(645f - var_1.c.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.a, -1000f)), func_5(var_1, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, var_1.c.a) + vec2<f32>(var_1.d.a, -2037f))).a)), var_1.d.a) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1327f, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(step(arg_1.a, -283f)), 717f) * vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(sign(116f)), _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-1141f * var_1.d.a)))));
    global1 = array<vec4<u32>, 15>();
    var var_3 = -550f;
    return func_5(var_1, vec2<f32>(_wgslsmith_div_f32(-145f, _wgslsmith_f_op_f32(step(var_1.c.a, var_2.x))), _wgslsmith_f_op_f32(var_1.c.a * var_1.c.a)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-246f, 2415f)) * -206f), -245f, _wgslsmith_f_op_f32(abs(371f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-657f, _wgslsmith_f_op_f32(f32(-1f) * -929f)))), u_input.b, u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(578f, 1153f, 135f)))) * vec3<f32>(_wgslsmith_f_op_f32(-1f), 232f, -597f)), func_6(_wgslsmith_add_u32(countOneBits(1u), _wgslsmith_div_u32(arg_0.x, 4294967295u)) == (arg_0.x & 0u), func_5(Struct_2(u_input.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, -16490i), vec3<i32>(u_input.b, -2726i, -27121i), vec3<i32>(-1414i, u_input.b, u_input.b)), func_2(), func_2()), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-278f, -2446f), vec2<f32>(-2025f, -914f))))), select(vec4<bool>(true, true, arg_0.x != 4294967295u, true), vec4<bool>(false, true, false, false), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true))), _wgslsmith_sub_u32(u_input.d, _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(u_input.a, 4294967295u, 42572u))) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(50679u, u_input.a), vec2<u32>(40026u, 1u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.a)));
    var var_2 = _wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, arg_0.x) ^ countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 55568u, 3177u), vec3<u32>(7332u, 1u, 4294967295u))), ~arg_0.x, u_input.c.x) >> (_wgslsmith_clamp_u32(105695u, 0u, arg_0.x) % 32u);
    var var_3 = ~1u;
    var_2 = abs(0u);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * -131f) * _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(-2475f, 1666f))), u_input.b, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(1i, ~u_input.b);
    let var_1 = ~(-1i);
    var var_2 = 668f;
    global1 = array<vec4<u32>, 15>();
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, -158f, 961f, -1000f))) - vec4<f32>(-1037f, _wgslsmith_f_op_f32(961f + -285f), 818f, _wgslsmith_div_f32(-218f, 350f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-712f, -869f, 1067f, 178f))))))), func_1(firstLeadingBit(u_input.c)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1158f, 688f, false))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-661f, -1445f) + _wgslsmith_f_op_f32(trunc(104f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(194f - -116f))), 282f), func_6(false, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1659f) + -1379f), 0i >> (u_input.c.x % 32u), ~abs(var_1)), vec4<bool>(all(vec2<bool>(true, true)), select(var_1 == -9311i, false, select(true, true, false)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), !any(vec4<bool>(true, false, false, true))), ~(~(~32095u))));
    let var_4 = abs(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(~4294967295u, u_input.d << (u_input.a % 32u), min(u_input.c.x, 27363u), u_input.c.x)), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c.x, 0u), 15u)] & abs(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 15u)])));
    var var_5 = u_input.d;
    var_0 = vec2<i32>(-11231i, abs(~(-countOneBits(0i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_6(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), func_1(~vec3<u32>(0u, u_input.d, var_4.x)), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, 4294967295u))).a * -362f), ~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(0i), -5826i, _wgslsmith_mult_i32(u_input.b, 10555i), -18959i), _wgslsmith_add_vec4_i32(-vec4<i32>(var_0.x, u_input.b, -36281i, var_0.x), vec4<i32>(0i, -4293i, 0i, var_0.x))) >> (var_4.x % 32u), -((vec3<i32>(-1i, -64194i, var_3.d.c) >> (var_4.zzx % vec3<u32>(32u))) | abs(vec3<i32>(var_1, -24574i, 35367i))));
}

