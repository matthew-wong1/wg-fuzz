struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 824f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = true;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(809f, -1748f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-491f, 296f)))));
    global0 = 231f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(251f, -1077f))) - 1f) + _wgslsmith_f_op_f32(f32(-1f) * -1541f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(349f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1226f, -705f)))), false)) + 171f));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-277f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(579f + -457f) - 1035f), 1446f)));
    return -301f;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<i32>) -> Struct_1 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(634f, 1164f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(134f, 1f) + 1340f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(319f))));
    var var_0 = true == !any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, false, false)));
    var_0 = true;
    let var_1 = Struct_1(all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), vec3<bool>(true, false, false), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-654f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1132f + -897f), _wgslsmith_f_op_f32(-1000f - 2024f))), _wgslsmith_f_op_f32(max(-408f, 483f))), vec3<f32>(_wgslsmith_div_f32(715f, _wgslsmith_f_op_f32(-258f + 1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -293f), _wgslsmith_f_op_f32(f32(-1f) * -222f))), -615f))), select(vec3<bool>(-arg_2.x <= min(arg_2.x, 2147483647i), u_input.c.x == 37567i, select(true, true, true)), select(vec3<bool>(true, true, select(false, false, false)), vec3<bool>(true, false, true), 2147483647i <= _wgslsmith_clamp_i32(arg_1.x, -77399i, 49366i)), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-889f, 1351f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1368f, -555f) * vec2<f32>(1815f, -208f)), _wgslsmith_div_vec2_f32(vec2<f32>(728f, -1331f), vec2<f32>(-873f, -1015f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(502f, 1135f)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)))), select(select(true, true, all(vec2<bool>(true, false))), false, all(vec4<bool>(true, true, true, false)) && any(vec3<bool>(true, false, false))))), -1000f);
    global0 = -485f;
    return var_1;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: u32) -> bool {
    var var_0 = 1000f;
    let var_1 = Struct_1(arg_2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f + 1209f)), _wgslsmith_f_op_f32(func_3()), arg_1.c.a.e) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.c.b.zyx), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1490f, -1095f, 1000f) * vec3<f32>(565f, -1741f, -267f)), !(!arg_2)))), select(arg_1.c.d.c, arg_2, any(!arg_2)), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f - _wgslsmith_f_op_f32(ceil(arg_1.d.e))))), _wgslsmith_f_op_f32(min(-1111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1781f)))));
    var var_2 = arg_2.x;
    var var_3 = Struct_3(vec4<bool>(true, !all(arg_2.xx), !(!arg_2.x) != (~arg_3 == reverseBits(arg_0)), arg_1.c.a.c.x), -1i, Struct_2(var_1, arg_1.c.b, true, func_2(arg_3, ~(u_input.a >> (vec4<u32>(arg_0, arg_0, 49872u, 4294967295u) % vec4<u32>(32u))), firstTrailingBit(u_input.c)), -(~_wgslsmith_div_i32(0i, 2147483647i))), Struct_1(false, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_1.b))), select(vec3<bool>(var_1.b.x >= -882f, false, false), vec3<bool>(!var_1.a, arg_1.c.c, any(vec3<bool>(false, true, true))), var_1.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.d.x + arg_1.d.b.x), _wgslsmith_f_op_f32(min(arg_1.d.b.x, -398f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(760f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f)))));
    let var_4 = var_3.c;
    return !var_1.a;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = !func_4(15661u, Struct_3(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), ~u_input.b.x, Struct_2(Struct_1(false, vec3<f32>(-1095f, 1687f, -1719f), vec3<bool>(false, false, false), vec2<f32>(1051f, -725f), -605f), vec4<f32>(756f, 949f, -766f, 550f), true, func_2(arg_0, u_input.a, u_input.b), _wgslsmith_mult_i32(u_input.b.x, 0i)), func_2(~1u, max(vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, -1i), vec4<i32>(14263i, 3992i, -2147483647i, u_input.a.x)), u_input.c << (u_input.d.zy % vec2<u32>(32u)))), select(vec3<bool>(true, func_2(u_input.d.x, vec4<i32>(30762i, u_input.a.x, u_input.b.x, -4031i), vec2<i32>(u_input.a.x, 2147483647i)).c.x, true), func_2(~90851u, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.c.x, -32819i, 14555i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.c.x, 24887i)), ~vec2<i32>(u_input.c.x, 1i)).c, func_2(31939u, vec4<i32>(u_input.c.x, -1i, u_input.b.x, u_input.c.x), u_input.a.xy ^ vec2<i32>(52380i, u_input.c.x)).c), arg_0);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-107f, _wgslsmith_f_op_f32(trunc(2233f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-599f))))));
    var_0 = !func_4(abs(0u << (u_input.d.x % 32u)), Struct_3(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false)), 2147483647i << (0u % 32u), Struct_2(Struct_1(false, vec3<f32>(var_1, 690f, -195f), vec3<bool>(false, true, false), vec2<f32>(616f, -1086f), var_1), vec4<f32>(var_1, var_1, -1146f, -713f), false, Struct_1(true, vec3<f32>(var_1, 331f, var_1), vec3<bool>(true, true, true), vec2<f32>(617f, var_1), var_1), u_input.a.x), Struct_1(true, vec3<f32>(var_1, var_1, -328f), vec3<bool>(false, false, false), vec2<f32>(1000f, var_1), 2032f)), vec3<bool>(-20998i >= u_input.a.x, any(vec4<bool>(false, false, true, false)), any(vec2<bool>(true, false))), u_input.d.x) | ((i32(-1i) * -2147483647i) == ~u_input.b.x);
    let var_2 = Struct_3(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, true, any(vec4<bool>(true, false, false, false))), true, !func_4(0u, Struct_3(vec4<bool>(false, false, false, false), u_input.a.x, Struct_2(Struct_1(false, vec3<f32>(-178f, 439f, -591f), vec3<bool>(false, false, false), vec2<f32>(var_1, -1401f), var_1), vec4<f32>(-441f, var_1, var_1, var_1), false, Struct_1(false, vec3<f32>(var_1, var_1, var_1), vec3<bool>(false, true, true), vec2<f32>(var_1, -452f), 1084f), -31363i), Struct_1(false, vec3<f32>(var_1, var_1, 1367f), vec3<bool>(false, true, false), vec2<f32>(577f, var_1), -1110f)), vec3<bool>(false, true, false), u_input.d.x), false), true), -9781i, Struct_2(Struct_1(all(vec3<bool>(false, true, false)) || true, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1741f, var_1, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 517f, var_1)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1280f, var_1))))), var_1), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1201f, 1320f, var_1, var_1) - vec4<f32>(var_1, 1256f, var_1, -1214f)), vec4<f32>(var_1, var_1, var_1, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, var_1, 1187f, -639f)))))), true, Struct_1(any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1, 2129f) * vec3<f32>(var_1, -517f, 865f))), vec3<bool>(select(true, true, false), true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 986f)) * vec2<f32>(-427f, 729f)), 829f), 357i), func_2(max(1u, min(abs(0u), u_input.d.x)), u_input.a, reverseBits(select(u_input.b, vec2<i32>(-62468i, u_input.b.x), vec2<bool>(true, false)) ^ ~u_input.c)));
    global0 = 2319f;
    return StorageBuffer(~countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, arg_0, 0u), vec4<u32>(32290u, u_input.d.x, u_input.d.x, arg_0))), _wgslsmith_sub_vec2_i32(firstTrailingBit(u_input.b), max(-vec2<i32>(var_2.c.e, var_2.c.e), vec2<i32>(u_input.c.x, 0i)) << ((_wgslsmith_mod_vec2_u32(u_input.d.zy, vec2<u32>(arg_0, u_input.d.x)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_0), u_input.d.yx, vec2<u32>(1u, 1u))) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1901f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * var_0) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-179f - var_0)))) - _wgslsmith_f_op_f32(abs(var_0))));
    let var_2 = firstTrailingBit(u_input.b.x);
    let x = u_input.a;
    s_output = func_1(u_input.d.x);
}

