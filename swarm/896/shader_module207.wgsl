struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(1788f, -1000f), i32(-2147483648), vec3<bool>(false, false, true));

var<private> global2: f32;

var<private> global3: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a.x), global0.c.a.x)), 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(1824f, global1.a.x)), _wgslsmith_f_op_f32(exp2(global1.a.x)))) - _wgslsmith_f_op_vec2_f32(-global1.a)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a.x)))));
    let var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(883f * 449f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.x)))), true))), u_input.b, select(global1.c, !global0.c.c, global0.c.c));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-716f, -978f)) + var_2.a.x));
    let var_4 = Struct_2(vec3<f32>(var_2.a.x, global3.x, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))), var_2, global0.b, ~((_wgslsmith_add_u32(1u, global0.d) ^ global0.d) & ~(global0.d >> (global0.d % 32u))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.a));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(global0.a, global0.b, Struct_1(_wgslsmith_f_op_vec2_f32(func_3(any(select(vec3<bool>(global0.b.c.x, false, true), vec3<bool>(global1.c.x, false, false), global0.b.c)))), -(i32(-1i) * -59423i) | _wgslsmith_mod_i32(global1.b >> (4294967295u % 32u), -13885i), vec3<bool>(!(global0.b.c.x && global1.c.x), true, !all(vec2<bool>(true, global0.c.c.x)))), abs(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, global0.d), vec3<u32>(u_input.a, u_input.a, global0.d)), select(vec3<u32>(u_input.a, 0u, global0.d), vec3<u32>(1u, 4294967295u, global0.d), true))));
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1259f, 966f) - global1.a))), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(global0.c.c.x)).x, _wgslsmith_f_op_f32(f32(-1f) * -486f))))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, global1.b, u_input.b, global0.b.b) ^ vec4<i32>(global0.b.b, -2147483647i, global1.b, global1.b), -vec4<i32>(34638i, 10420i, global0.c.b, global0.b.b)), select(_wgslsmith_add_vec4_i32(vec4<i32>(20604i, -21813i, -46607i, global1.b), vec4<i32>(-47595i, u_input.c, 1i, global1.b)), vec4<i32>(global1.b, global0.c.b, -2147483647i, global1.b) | vec4<i32>(global0.b.b, global1.b, 4227i, global1.b), select(vec4<bool>(global1.c.x, global1.c.x, false, false), vec4<bool>(true, false, global0.b.c.x, global0.b.c.x), vec4<bool>(true, true, global1.c.x, global1.c.x))), _wgslsmith_div_vec4_i32(vec4<i32>(global1.b, 0i, global1.b, global1.b), ~vec4<i32>(34199i, global1.b, global1.b, global0.c.b))), vec4<i32>(max(-1i, -1i), u_input.b, u_input.c, reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 12994i), vec2<i32>(2147483647i, u_input.c))))), select(select(!(!vec3<bool>(global1.c.x, true, true)), global1.c, global1.c), select(!vec3<bool>(global1.c.x, false, global0.b.c.x), global0.b.c, !global0.b.c), true && all(select(vec3<bool>(true, global1.c.x, false), global0.b.c, false))));
    let var_0 = _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.x, global3.x, global1.c.x))) - global0.c.a.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -466f) * global0.c.a)))))), select(firstTrailingBit(min(44654i, u_input.b)) & firstTrailingBit(_wgslsmith_mod_i32(-1i, -1i)), -(~(-1i)), all(!vec3<bool>(false, global0.c.c.x, true))), global1.c);
    let var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, -769f) * vec3<f32>(-1180f, var_1.a.x, -554f)) - _wgslsmith_f_op_vec3_f32(-global0.a)))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x + 938f), 1474f, global0.b.a.x)))), Struct_1(var_1.a, ~reverseBits(u_input.c) | -u_input.c, select(select(vec3<bool>(var_1.c.x, false, var_1.c.x), vec3<bool>(global1.c.x, global1.c.x, true), select(vec3<bool>(global0.c.c.x, global0.b.c.x, false), global1.c, true)), !var_1.c, vec3<bool>(!var_1.c.x, !global0.b.c.x, global1.c.x))), Struct_1(vec2<f32>(_wgslsmith_div_f32(-354f, -1581f), var_1.a.x), countOneBits(-2147483647i), vec3<bool>(!global0.b.c.x || true, true, any(!vec2<bool>(global0.b.c.x, global1.c.x)))), 0u);
    return Struct_1(vec2<f32>(860f, var_1.a.x), -countOneBits(-(u_input.c << (0u % 32u))), !vec3<bool>(any(vec4<bool>(global0.c.c.x, global0.c.c.x, global0.c.c.x, true)) || true, var_1.c.x, _wgslsmith_f_op_f32(ceil(914f)) == 1062f));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> Struct_1 {
    global1 = func_2();
    global1 = global0.c;
    var var_0 = global0.c;
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -668f);
    global1 = func_2();
    return Struct_1(vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(false)).x, -468f), reverseBits(_wgslsmith_dot_vec4_i32(min(select(vec4<i32>(global0.b.b, var_0.b, global1.b, global1.b), vec4<i32>(0i, -2147483647i, 0i, -2147483647i), false), vec4<i32>(-1i, 13164i, -1i, arg_0)), -(vec4<i32>(2147483647i, -2147483647i, 1i, arg_0) | vec4<i32>(arg_0, var_0.b, global0.c.b, 41449i)))), select(global0.c.c, !global1.c, vec3<bool>(!(!global1.c.x), var_0.c.x, !global0.b.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = max(vec2<u32>(arg_0.d ^ ~u_input.a, max(~0u, _wgslsmith_div_u32(_wgslsmith_add_u32(78841u, 54820u), arg_0.d))), _wgslsmith_mult_vec2_u32(min(~vec2<u32>(global0.d, u_input.a), min(vec2<u32>(28347u, arg_0.d), vec2<u32>(u_input.a, u_input.a))) << (~select(vec2<u32>(arg_0.d, u_input.a), vec2<u32>(0u, 12516u), arg_0.b.c.yz) % vec2<u32>(32u)), max(~vec2<u32>(52668u, 0u), ~max(vec2<u32>(arg_0.d, 28695u), vec2<u32>(2358u, 0u)))));
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, 306f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(global0.a, vec3<f32>(1342f, global3.x, global0.b.a.x))), _wgslsmith_f_op_vec3_f32(trunc(global0.a)), !vec3<bool>(true, global1.c.x, false))) + global0.a)) - _wgslsmith_f_op_vec3_f32(floor(arg_0.a)));
    var var_1 = !select(vec4<bool>(false, (u_input.a | u_input.a) == _wgslsmith_add_u32(89072u, 16527u), true, all(global1.c.zz) && global0.b.c.x), vec4<bool>(-1i <= func_2().b, !any(global0.c.c.xy), arg_0.c.c.x, false), vec4<bool>(false, all(!arg_0.c.c), !(!global1.c.x), any(vec4<bool>(true, true, true, false))));
    let var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(arg_0.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(800f, global1.a.x, global3.x), vec3<f32>(816f, -783f, -1285f))))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, -208f, 309f), vec3<f32>(679f, 798f, -127f)))), global0.a), arg_0.c, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.c.a))))), -2147483647i, vec3<bool>(any(!vec4<bool>(true, arg_0.b.c.x, global0.c.c.x, global1.c.x)), global1.c.x, true)), 67166u);
    var_1 = !(!vec4<bool>(true, abs(global0.d) >= _wgslsmith_mod_u32(var_2.d, var_0.x), false, all(!vec2<bool>(global0.c.c.x, true))));
    return Struct_1(vec2<f32>(-321f, 1f), -30129i, select(select(!vec3<bool>(arg_0.b.c.x, var_2.c.c.x, true), select(var_1.wyz, !vec3<bool>(var_2.c.c.x, global1.c.x, true), var_1.x), vec3<bool>(global1.c.x && false, false, true)), !var_2.c.c, vec3<bool>(true, 0u == _wgslsmith_clamp_u32(0u, 4294967295u, arg_0.d), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a) * vec3<f32>(global1.a.x, global0.a.x, -428f)) - vec3<f32>(_wgslsmith_f_op_f32(-445f + 1591f), _wgslsmith_f_op_f32(-global1.a.x), 368f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-947f, 637f, global1.a.x) - global0.a) * global0.a))), global0.c, func_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, -2831f)) * vec3<f32>(global1.a.x, global1.a.x, global1.a.x)), func_1(-global0.c.b, _wgslsmith_f_op_vec2_f32(global1.a * global3.xz)), Struct_1(_wgslsmith_f_op_vec2_f32(global0.a.xz * vec2<f32>(130f, global0.c.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -49364i, global0.b.b), vec3<i32>(-79817i, -5963i, global0.c.b)), global0.c.c), 115538u), global0.c.b), firstLeadingBit(~(~global0.d)));
    let var_0 = reverseBits(vec4<u32>(134721u ^ _wgslsmith_sub_u32(u_input.a, u_input.a), global0.d >> (1u % 32u), _wgslsmith_div_u32(37080u, 37497u), _wgslsmith_add_u32(u_input.a, 4345u) | u_input.a) | (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global0.d, 1u, u_input.a), vec4<u32>(4294967295u, 1u, u_input.a, 4294967295u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.d, 53963u, 46336u, u_input.a), vec4<u32>(29548u, u_input.a, 4019u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(53063u, 16744u, u_input.a, 1u), vec4<u32>(2940u, 12549u, global0.d, 83633u))) | max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global0.d, global0.d, 61891u), vec4<u32>(84417u, u_input.a, 4294967295u, 44702u)), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u))));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.a.x, global1.a.x, _wgslsmith_f_op_f32(round(-858f))))), global0.c, func_1(global1.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(191f, 542f)))))))), 25997u);
    let var_1 = Struct_2(global0.a, Struct_1(global0.c.a, abs(func_1(u_input.c, global3.xy).b), vec3<bool>(global1.c.x, false, global0.c.a.x > global3.x)), global0.c, var_0.x);
    global3 = global0.a;
    var var_2 = global0.c;
    let var_3 = countOneBits(vec4<i32>(_wgslsmith_clamp_i32(-1i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mult_i32(-1i, 0i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(1979i, -29976i, -1i), vec3<i32>(0i, global1.b, 0i) << (var_0.zzx % vec3<u32>(32u)))), ~var_2.b, min(2147483647i, 1i) & var_1.b.b, -6524i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, -1486f, var_1.b.a.x) + global0.a)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(999f, var_1.c.a.x, global0.b.a.x), vec3<f32>(426f, -1242f, -219f), true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1047f)), _wgslsmith_f_op_f32(global3.x + 2319f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, -1733f, global1.a.x))), var_1.a, vec3<bool>(true, global0.b.c.x && var_1.b.c.x, true))))));
}

