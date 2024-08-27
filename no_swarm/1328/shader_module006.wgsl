struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec2<i32>, 28>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> bool {
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-414f, global0.c.x)), _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, global0.c.x), vec2<f32>(global0.c.x, -1166f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c + global0.a) * _wgslsmith_f_op_vec2_f32(floor(global0.c)))), !(!select(vec2<bool>(false, false), vec2<bool>(false, false), false)))), _wgslsmith_div_u32(11400u, reverseBits(34271u)) >> (select(1u, 8750u, true) % 32u), _wgslsmith_f_op_vec2_f32(-global0.c));
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.a)))))), 6888u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -396f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-773f, 501f))))))))));
    var var_1 = -620f;
    var_1 = _wgslsmith_f_op_f32(floor(2783f));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-432f * -752f), -388f), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), -302f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_0.b, 4294967295u, global0.b), ~vec4<u32>(0u, var_0.b, u_input.b.x, 19544u))), u_input.b | _wgslsmith_mult_vec2_u32(u_input.b, ~u_input.b)), var_0.c);
    return any(!vec2<bool>(_wgslsmith_f_op_f32(sign(1031f)) < _wgslsmith_f_op_f32(trunc(global0.a.x)), true));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = select(!vec4<bool>(true || func_3(), true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true)), !all(vec3<bool>(false, true, false))), !vec4<bool>(false, any(vec4<bool>(false, true, false, true)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)), any(vec2<bool>(true, false))), true);
    var_0 = !vec4<bool>(any(select(select(var_0.yy, vec2<bool>(false, var_0.x), var_0.wx), select(vec2<bool>(true, true), var_0.xx, var_0.x), false)), !(global0.c.x == _wgslsmith_f_op_f32(min(-1337f, global0.c.x))), var_0.x, all(vec4<bool>(true, true, var_0.x, true)));
    global1 = array<vec2<i32>, 28>();
    var_0 = select(vec4<bool>(all(!var_0.zzw), (min(arg_0, 37211u) < _wgslsmith_clamp_u32(global0.b, 0u, arg_0)) & var_0.x, var_0.x, var_0.x), select(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x)), select(select(!vec4<bool>(true, false, var_0.x, true), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(false, true, true, var_0.x)), var_0.x), select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, false, false, var_0.x), true), global0.a.x <= global0.c.x), vec4<bool>(any(vec2<bool>(false, var_0.x)), _wgslsmith_f_op_f32(-global0.a.x) <= _wgslsmith_f_op_f32(step(global0.c.x, 172f)), true, func_3())), !select(!select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, true, false, true), true), vec4<bool>(func_3(), false, all(vec2<bool>(false, true)), all(var_0.yz)), true));
    var_0 = !select(!(!(!vec4<bool>(var_0.x, false, true, var_0.x))), !(!(!vec4<bool>(var_0.x, true, false, true))), vec4<bool>(all(var_0.xz) && var_0.x, false, all(select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.wyx, false)), !select(false, false, true)));
    return ~(~_wgslsmith_div_u32(~(~global0.b), _wgslsmith_div_u32(global0.b >> (49054u % 32u), 1u)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_4, arg_3: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_i32(max(~abs(u_input.c), u_input.c), vec2<i32>(-(-u_input.e ^ ~u_input.e), _wgslsmith_sub_i32(-11538i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), select(vec2<i32>(u_input.e, u_input.e), u_input.c, arg_1)))));
    var var_1 = vec2<i32>(var_0.x, u_input.c.x);
    global1 = array<vec2<i32>, 28>();
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x + -1000f) - _wgslsmith_f_op_f32(min(235f, arg_3.c.x)))), arg_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-232f, -243f)), _wgslsmith_f_op_f32(step(arg_0, global0.a.x)))), _wgslsmith_f_op_f32(sign(-489f)))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1217f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c.x - arg_0.x), _wgslsmith_f_op_f32(980f * arg_0.x)))))), true, Struct_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(arg_0.zx, arg_0.yx)))), _wgslsmith_add_u32(~reverseBits(u_input.a), func_2(29195u) >> (~4294967295u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.c))))), Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_0.yx)) + _wgslsmith_f_op_vec2_f32(sign(arg_0.zx))))), ~firstLeadingBit(u_input.b.x), global0.a));
    global0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.a.x * 528f)))), -607f), ~firstTrailingBit(_wgslsmith_clamp_u32(42232u, 11703u, global0.b) << (func_2(u_input.b.x) % 32u)), var_0.a.yy);
    var var_1 = Struct_1(select(~(-(vec4<i32>(u_input.e, 2147483647i, 11065i, u_input.e) & vec4<i32>(u_input.c.x, -2147483647i, 16399i, 1i))), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, 0i, u_input.c.x, u_input.e), vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x) ^ vec4<i32>(u_input.e, -2147483647i, u_input.e, 2147483647i))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), countOneBits(-(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -2147483647i, 1i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) << (select(vec3<u32>(4294967295u, u_input.b.x, 1u), vec3<u32>(4294967295u, 127907u, global0.b), vec3<bool>(true, true, false)) % vec3<u32>(32u)))), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), !(!(var_0.a.x <= arg_0.x))));
    var_1 = Struct_1(firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -28781i | u_input.c.x), -_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(75144i, var_1.a.x)), -firstLeadingBit(u_input.e), u_input.e)), abs(abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.b.x, 30849i, var_1.b.x) >> (vec3<u32>(u_input.b.x, 1u, global0.b) % vec3<u32>(32u)), var_1.b))), vec3<bool>(!(!any(vec4<bool>(var_1.c.x, true, true, false))), all(select(select(vec4<bool>(false, true, var_1.c.x, true), vec4<bool>(true, true, var_1.c.x, var_1.c.x), var_1.c.x), vec4<bool>(false, false, var_1.c.x, true), !vec4<bool>(var_1.c.x, true, true, var_1.c.x))), ~(u_input.d & 33146u) < u_input.b.x));
    var_0 = func_4(-427f, true, Struct_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx) * _wgslsmith_f_op_vec2_f32(var_0.a.zy * vec2<f32>(245f, 2323f))))), func_2(global0.b), _wgslsmith_f_op_vec2_f32(-arg_0.yz)), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.xx * arg_0.zy))), max(min(u_input.d, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, global0.b, global0.b), vec4<u32>(97969u, u_input.d, 1u, 25483u))), func_2(~global0.b)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1034f, 2208f), var_0.a.yz))));
    return Struct_1(var_1.a, _wgslsmith_clamp_vec3_i32(select(var_1.a.xxx, var_1.b, var_1.c), var_1.a.wxw, ~reverseBits(var_1.b)), var_1.c);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>) -> Struct_4 {
    global1 = array<vec2<i32>, 28>();
    let var_0 = u_input.c.x;
    var var_1 = any(vec4<bool>(!(!select(arg_0.c.x, true, arg_0.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, 2180u, 51326u), vec4<u32>(24397u, 1u, arg_2.x, global0.b)) < arg_2.x, !arg_0.c.x, !(_wgslsmith_f_op_f32(-1224f - global0.c.x) == _wgslsmith_f_op_f32(225f + global0.c.x))));
    var var_2 = _wgslsmith_mod_vec2_i32(~vec2<i32>(countOneBits(u_input.c.x | u_input.c.x), 1i), u_input.c);
    var_1 = any(select(arg_0.c, arg_0.c, vec3<bool>(true, false, !arg_0.c.x))) || false;
    return Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1080f, global0.a.x), global0.c)) - vec2<f32>(1721f, _wgslsmith_div_f32(-566f, global0.a.x)))), abs(4294967295u), func_4(_wgslsmith_f_op_f32(global0.c.x + 1f), !any(arg_0.c.xz), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global0.a.x) * vec2<f32>(-355f, 1021f))), global0.b ^ (u_input.a >> (9591u % 32u)), _wgslsmith_div_vec2_f32(global0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -1732f) * vec2<f32>(1548f, global0.a.x)))), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -946f), _wgslsmith_f_op_f32(162f + -2183f)), _wgslsmith_dot_vec2_u32(vec2<u32>(104966u, 9700u), arg_2.xx), vec2<f32>(global0.a.x, _wgslsmith_div_f32(402f, -2114f)))).a.yz);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 28>();
    var var_0 = func_5(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.c.x, global0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(select(global0.c.x, global0.c.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-global0.a.x)))), ~(~(~reverseBits(24687u))), countOneBits(firstLeadingBit(~vec3<u32>(1u, u_input.d, global0.b) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(3644u, 45687u, global0.b), vec3<u32>(global0.b, u_input.a, global0.b), vec3<u32>(global0.b, 4294967295u, global0.b)) % vec3<u32>(32u)))));
    var var_1 = true;
    var var_2 = vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.c.x)))), var_0.c.x);
    global0 = func_5(Struct_1(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, 1i), vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x)), u_input.c.x, u_input.e, _wgslsmith_div_i32(u_input.c.x, 2147483647i)), abs(vec3<i32>(0i, select(u_input.e, u_input.e, false), i32(-1i) * -41258i)), func_1(vec3<f32>(_wgslsmith_f_op_f32(-1590f - 778f), _wgslsmith_f_op_f32(1362f * -715f), _wgslsmith_f_op_f32(abs(var_0.a.x)))).c), ~13029u, ~vec3<u32>(u_input.b.x, ~37399u, 3704u));
    let var_3 = vec4<u32>(~var_0.b, _wgslsmith_mod_u32(54563u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.b, 1u), vec3<u32>(var_0.b, u_input.d, u_input.d) ^ vec3<u32>(80083u, 22866u, global0.b))), ~(~var_0.b) << (countOneBits(1u) % 32u), u_input.d >> (3140u % 32u)) | ~vec4<u32>(~(~var_0.b), 34345u, select(var_0.b, 0u, true), 20829u);
    var var_4 = func_5(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, var_2.x, var_2.x) * vec3<f32>(var_2.x, -412f, var_0.c.x)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2056f, 746f, var_2.x), vec3<f32>(-1293f, var_2.x, var_2.x)))), vec3<f32>(_wgslsmith_f_op_f32(834f + -1463f), -1018f, 832f))), 0u, var_3.yzw).c.x;
    var var_5 = abs(2705i);
    var_4 = 670f;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_3.x, 4294967295u), ~65611u), var_3.wx), _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(1u, 66761u)), _wgslsmith_clamp_vec2_u32(~var_3.zx, ~vec2<u32>(10754u, var_0.b), vec2<u32>(19959u, 37222u)))), 13035u);
}

