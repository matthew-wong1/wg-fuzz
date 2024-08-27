struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(2147483647i);
    let var_1 = Struct_2(var_0, any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false)) && ((var_0.a & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 53857i, -6962i, 0i), vec4<i32>(var_0.a, 24680i, -2147483647i, var_0.a))) < var_0.a));
    var var_2 = ~(-reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_0.a, var_1.a.a), vec3<i32>(-1i, var_1.a.a, 2147483647i)))) & -max(vec3<i32>(0i, firstTrailingBit(var_0.a), var_0.a & -27556i), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a, 5250i, var_1.a.a), vec3<i32>(-15216i, 7006i, 2147483647i))));
    global0 = array<vec2<u32>, 16>();
    let var_3 = countOneBits(~vec3<u32>(~u_input.a, u_input.a << (u_input.a % 32u), u_input.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(398f)), _wgslsmith_f_op_f32(-870f + -472f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(-491f, -549f)), -1020f)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> i32 {
    global0 = array<vec2<u32>, 16>();
    var var_0 = vec4<bool>(true, arg_0.x, _wgslsmith_f_op_f32(func_3()) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), true);
    var_0 = !(!(!select(!vec4<bool>(var_0.x, true, arg_0.x, false), !vec4<bool>(arg_0.x, arg_1.b, var_0.x, false), true)));
    let var_1 = max(countOneBits(vec3<u32>(1u, _wgslsmith_mult_u32(1u, 0u & u_input.a), ~(u_input.a >> (u_input.a % 32u)))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, max(u_input.a, max(4294967295u, u_input.a)), u_input.a ^ select(u_input.a, 71697u, false)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 63749u, 32193u), abs(vec3<u32>(u_input.a, u_input.a, 2584u))), vec3<u32>(~33531u, ~u_input.a, u_input.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-778f, -117f, var_0.x)))), 1000f, -1286f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2687f, -157f, -528f) - vec3<f32>(-503f, 1478f, 1540f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2929f, -311f, 587f), vec3<f32>(-1000f, -458f, -1000f), vec3<bool>(arg_1.b, arg_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1028f, -838f, 1646f) * vec3<f32>(171f, 391f, -143f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(786f, 1639f, -1678f), vec3<f32>(-952f, -1474f, 269f), var_0.xwx)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-974f, 273f, 943f) - vec3<f32>(-1000f, -193f, -1826f))))))));
    return i32(-1i) * -(-(arg_1.a.a << (var_1.x % 32u)) << (~_wgslsmith_mod_u32(4294967295u, 71165u) % 32u));
}

fn func_1(arg_0: f32) -> u32 {
    global0 = array<vec2<u32>, 16>();
    var var_0 = i32(-1i) * -1i;
    var var_1 = Struct_2(Struct_1(-_wgslsmith_add_i32(1i << (u_input.a % 32u), func_2(vec3<bool>(false, true, true), Struct_2(Struct_1(0i), true)))), !any(vec3<bool>(true, arg_0 >= arg_0, true)));
    var_0 = var_1.a.a;
    var var_2 = Struct_2(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(1000f * -276f))) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    return 28630u;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = select(true, all(vec2<bool>(true, true)), !all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true))));
    global0 = array<vec2<u32>, 16>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_2.a, 0i), arg_3.zyx), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.x, arg_2.a, arg_3.x), vec3<i32>(arg_3.x, arg_3.x, arg_2.a)), reverseBits(arg_3.yxw)))), !(var_0.x == _wgslsmith_mod_u32(max(9833u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_0.x, 4294967295u), vec4<u32>(u_input.a, 39145u, u_input.a, var_0.x)))));
    global0 = array<vec2<u32>, 16>();
    return Struct_2(Struct_1(-firstLeadingBit(var_2.a.a)), any(select(!vec2<bool>(false, var_2.b), vec2<bool>(false, !var_1), select(vec2<bool>(var_2.b, var_1), select(vec2<bool>(true, true), vec2<bool>(true, var_2.b), vec2<bool>(false, false)), vec2<bool>(true, var_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 16>();
    var var_0 = func_4(vec4<u32>(u_input.a, (u_input.a ^ u_input.a) >> ((abs(u_input.a) ^ func_1(-927f)) % 32u), u_input.a, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(549f, -754f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1695f) * _wgslsmith_div_f32(326f, _wgslsmith_f_op_f32(-313f + -733f)))), Struct_1(-(~(-2147483647i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_1 = _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.a, ~6081u, u_input.a, 273u ^ u_input.a)) >> (select(~(~vec4<u32>(4294967295u, 4294967295u, u_input.a, 4294967295u)), ~(~vec4<u32>(u_input.a, 4294967295u, 1u, 64522u)), select(!vec4<bool>(var_0.b, var_0.b, false, true), select(vec4<bool>(var_0.b, true, var_0.b, false), vec4<bool>(true, true, true, var_0.b), vec4<bool>(var_0.b, true, var_0.b, var_0.b)), select(vec4<bool>(var_0.b, var_0.b, false, true), vec4<bool>(true, false, var_0.b, true), var_0.b))) % vec4<u32>(32u)), ~abs(vec4<u32>(max(u_input.a, u_input.a), 76603u, u_input.a, 1u)), _wgslsmith_sub_vec4_u32(min(~(~vec4<u32>(u_input.a, 17308u, u_input.a, 4294967295u)), ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.a, u_input.a, u_input.a, 83231u), vec4<u32>(u_input.a, 46389u, 13981u, 13978u), true), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (reverseBits(vec4<u32>(u_input.a, 77714u, 4294967295u, 0u)) % vec4<u32>(32u)))));
    var_0 = func_4(var_1, -369f, Struct_1(1i), _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, 32022i, var_0.a.a, var_0.a.a), reverseBits(vec4<i32>(var_0.a.a, var_0.a.a, 0i, 2147483647i))), vec4<i32>(var_0.a.a, -var_0.a.a, _wgslsmith_mod_i32(var_0.a.a, -var_0.a.a), ~(-1i))));
    var var_2 = firstTrailingBit(vec4<i32>(8914i, 0i, ~0i, countOneBits(4602i))) >> (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(var_1, var_1), vec4<u32>(min(_wgslsmith_add_u32(68943u, 83846u), _wgslsmith_dot_vec2_u32(vec2<u32>(18126u, var_1.x), vec2<u32>(1u, u_input.a))), ~var_1.x, 4294967295u, ~reverseBits(u_input.a))) % vec4<u32>(32u));
    let var_3 = var_2.yw;
    global0 = array<vec2<u32>, 16>();
    let var_4 = select(select(!vec4<bool>(var_0.b, select(true, true, true), var_0.b, select(false, var_0.b, true)), !select(!vec4<bool>(true, false, var_0.b, var_0.b), vec4<bool>(var_0.b, false, false, true), select(vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, true, var_0.b), false)), select(select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(true, false, var_0.b, false), vec4<bool>(false, var_0.b, false, true)), !select(vec4<bool>(false, var_0.b, true, var_0.b), vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, true, false)), any(select(vec2<bool>(true, var_0.b), vec2<bool>(true, var_0.b), false)))), select(vec4<bool>(false, var_0.b, false, !var_0.b), vec4<bool>(all(vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)) | var_0.b, any(vec3<bool>(var_0.b, var_0.b, var_0.b)), true, any(vec4<bool>(true, var_0.b, var_0.b, var_0.b))), select(!select(vec4<bool>(var_0.b, var_0.b, false, var_0.b), vec4<bool>(var_0.b, false, true, var_0.b), vec4<bool>(var_0.b, false, false, var_0.b)), vec4<bool>(!var_0.b, var_3.x == -1i, true, true), !(!vec4<bool>(false, var_0.b, var_0.b, false)))), all(!vec3<bool>(any(vec3<bool>(true, false, var_0.b)), u_input.a < 1u, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, var_3.x, var_3.x, var_0.a.a), vec4<i32>(var_0.a.a, var_3.x, -2147483647i, var_0.a.a)), vec4<i32>(var_2.x, -2147483647i, 26083i, var_0.a.a)), max(~vec4<i32>(-31901i, 42051i, var_0.a.a, var_0.a.a), vec4<i32>(1i, 32367i, 19489i, var_3.x) << (var_1 % vec4<u32>(32u)))), -10579i, min(-24661i, _wgslsmith_mult_i32(~var_2.x, 1i)), firstTrailingBit(~_wgslsmith_dot_vec2_i32(~var_2.yz, var_2.wx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(244f, 485f)), -1494f, !(u_input.a < var_1.x))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-487f - 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(175f + 950f), 1237f), true))));
}

