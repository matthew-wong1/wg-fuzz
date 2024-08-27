struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, arg_0.d.a) * arg_0.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(145f))))), arg_0, ~_wgslsmith_sub_vec4_u32(~select(vec4<u32>(4294967295u, 5569u, 55869u, 4294967295u), vec4<u32>(u_input.e.x, u_input.b.x, u_input.e.x, 1u), false), ~abs(vec4<u32>(0u, 1u, 2639u, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a, _wgslsmith_f_op_f32(sign(arg_0.a.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.a, global0.x, arg_0.d.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1060f)) - -305f)) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-278f, -1830f)), _wgslsmith_f_op_f32(-global0.x), false | arg_0.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1625f, 2217f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(860f - global0.x)))));
    var var_1 = vec3<bool>(false, select(!arg_0.b.x, !var_0.b.d.b.x, var_0.b.d.b.x), var_0.b.d.b.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.d.a, _wgslsmith_f_op_f32(arg_0.d.a - global0.x)));
    let var_3 = u_input.b.x;
    var var_4 = false;
    return any(select(var_0.b.b.zwy, vec3<bool>(!all(arg_0.b), !any(var_1.xz), arg_0.d.b.x), select(var_0.b.a.b, select(var_0.b.d.b, vec3<bool>(true, arg_0.d.b.x, false), !arg_0.d.b), vec3<bool>(arg_0.a.b.x && true, true, true))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_2 {
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(abs(-296f)));
    let var_0 = Struct_5(-203f, arg_1.a.a, vec4<u32>(firstLeadingBit(~3442u) | _wgslsmith_div_u32(~u_input.a, u_input.b.x), 72541u, u_input.e.x, ~u_input.b.x), _wgslsmith_f_op_vec2_f32(step(arg_3.yx, arg_3.ww)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(arg_3.wyz)), vec3<f32>(_wgslsmith_div_f32(-1642f, arg_3.x), _wgslsmith_f_op_f32(-464f * arg_0.a.d.a), _wgslsmith_f_op_f32(f32(-1f) * -354f))))));
    let var_1 = Struct_2(Struct_1(arg_1.a.a.d.a, select(arg_0.a.b.zxz, !arg_0.a.a.b, !select(arg_0.a.a.b, vec3<bool>(arg_0.a.b.x, arg_1.b, false), vec3<bool>(true, false, true))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_1.a.a.a.c, -9598i), vec3<i32>(-11113i, arg_0.a.d.c >> (52971u % 32u), reverseBits(var_0.b.a.c)))), vec4<bool>(all(vec3<bool>(func_3(Struct_2(var_0.b.a, arg_0.a.b, arg_0.a.d.c, Struct_1(1594f, arg_1.a.a.b.wxy, arg_1.a.a.a.c)), vec3<i32>(var_0.b.a.c, arg_0.a.d.c, arg_1.a.a.c)), !arg_0.a.a.b.x, true)), true, true, false), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-arg_0.a.d.c, arg_0.a.c), -_wgslsmith_dot_vec4_i32(vec4<i32>(18460i, arg_0.a.a.c, arg_0.a.c, var_0.b.c), vec4<i32>(arg_0.a.a.c, arg_1.a.a.a.c, 1i, -9938i))) >> (abs(abs(u_input.a)) % 32u), arg_0.a.a);
    global0 = arg_3.wy;
    let var_2 = select(!vec3<bool>(arg_0.a.b.x, true, true), !(!vec3<bool>(true, true, arg_1.b)), vec3<bool>(true, true, true));
    return arg_0.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_5) -> f32 {
    let var_0 = ~(~(~max(arg_2.c >> (vec4<u32>(4294967295u, 38097u, u_input.b.x, arg_2.c.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, 1778u, 1u, 5964u))));
    let var_1 = vec3<bool>(arg_2.b.a.b.x, arg_2.b.a.b.x, true);
    let var_2 = u_input.b.x;
    let var_3 = vec4<u32>(39823u, min(64596u, ~_wgslsmith_sub_u32(var_0.x, u_input.e.x)), arg_2.c.x, _wgslsmith_div_u32(41052u, u_input.e.x)) << (max(_wgslsmith_mult_vec4_u32(vec4<u32>(~var_2, u_input.b.x, 4294967295u, var_0.x), var_0), arg_2.c) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_3(arg_2.b), Struct_4(Struct_3(Struct_2(Struct_1(269f, vec3<bool>(var_1.x, false, arg_2.b.b.x), 52994i), vec4<bool>(true, false, false, false), 0i, arg_2.b.a)), arg_2.b.d.b.x), vec3<bool>(arg_1.b.x, false, var_1.x), vec4<f32>(arg_0.x, arg_1.a, arg_2.a, global0.x)).a.a * 832f) - arg_0.x), -386f) * _wgslsmith_f_op_vec2_f32(arg_2.e.xx * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1095f), _wgslsmith_f_op_f32(global0.x + 1564f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.e.zz))))));
    return _wgslsmith_f_op_f32(2074f - _wgslsmith_f_op_f32(1270f + _wgslsmith_f_op_f32(arg_2.d.x + arg_0.x)));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x - global0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -932f)));
    var_0 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-375f + _wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(-645f - global0.x), 1000f), Struct_1(_wgslsmith_f_op_f32(267f - -1183f), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), ~0i), Struct_5(_wgslsmith_f_op_f32(893f * -711f), func_2(Struct_3(Struct_2(Struct_1(1719f, vec3<bool>(false, true, true), 11132i), vec4<bool>(true, false, false, true), 0i, Struct_1(global0.x, vec3<bool>(true, true, true), u_input.c))), Struct_4(Struct_3(Struct_2(Struct_1(423f, vec3<bool>(true, false, false), u_input.d.x), vec4<bool>(false, true, false, true), 46478i, Struct_1(-1074f, vec3<bool>(true, false, false), u_input.c))), false), vec3<bool>(true, false, false), vec4<f32>(234f, 127f, -912f, global0.x)), vec4<u32>(u_input.b.x, u_input.a, u_input.e.x, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(436f, 421f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))));
    var_0 = _wgslsmith_f_op_f32(sign(global0.x));
    var_0 = -2624f;
    var var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(true, false), 233f <= _wgslsmith_f_op_f32(global0.x * -1057f)));
    return Struct_3(func_2(Struct_3(func_2(Struct_3(Struct_2(Struct_1(-568f, vec3<bool>(var_1.x, var_1.x, true), u_input.d.x), vec4<bool>(var_1.x, var_1.x, var_1.x, true), -24937i, Struct_1(855f, vec3<bool>(var_1.x, true, true), u_input.d.x))), Struct_4(Struct_3(Struct_2(Struct_1(779f, vec3<bool>(var_1.x, var_1.x, true), 0i), vec4<bool>(true, true, false, var_1.x), 13364i, Struct_1(-1302f, vec3<bool>(var_1.x, var_1.x, var_1.x), -2147483647i))), true), vec3<bool>(var_1.x, false, true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 471f, -790f, global0.x), vec4<f32>(323f, global0.x, global0.x, global0.x), false)))), Struct_4(Struct_3(func_2(Struct_3(Struct_2(Struct_1(global0.x, vec3<bool>(false, true, var_1.x), u_input.c), vec4<bool>(true, var_1.x, var_1.x, var_1.x), 15972i, Struct_1(global0.x, vec3<bool>(var_1.x, var_1.x, true), -1i))), Struct_4(Struct_3(Struct_2(Struct_1(global0.x, vec3<bool>(false, true, true), u_input.c), vec4<bool>(true, true, var_1.x, var_1.x), u_input.d.x, Struct_1(-867f, vec3<bool>(true, true, var_1.x), 1i))), var_1.x), vec3<bool>(false, var_1.x, var_1.x), vec4<f32>(1025f, -988f, global0.x, 896f))), _wgslsmith_add_i32(u_input.d.x, u_input.c) >= ~u_input.c), !(!vec3<bool>(var_1.x, var_1.x, var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(405f, global0.x)), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(min(-1171f, global0.x)))));
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    var var_0 = any(!vec2<bool>(any(!arg_2.a.d.b), (arg_0 && arg_1) && (arg_2.a.d.b.x | arg_2.a.d.b.x)));
    var var_1 = Struct_4(func_1(), any(!func_2(Struct_3(Struct_2(Struct_1(global0.x, arg_2.a.a.b, arg_2.a.d.c), arg_2.a.b, arg_2.a.c, arg_2.a.a)), Struct_4(arg_2, arg_0), !arg_2.a.b.xxx, vec4<f32>(arg_2.a.d.a, global0.x, global0.x, -190f)).b.wwy));
    let var_2 = arg_2.a.a.b.x || false;
    var var_3 = Struct_4(func_1(), u_input.b.x <= firstLeadingBit(u_input.a));
    let var_4 = vec3<bool>(any(!arg_2.a.b.yyw), true, func_3(Struct_2(Struct_1(arg_2.a.a.a, vec3<bool>(var_1.b, false, false), ~20159i), !vec4<bool>(var_1.b, true, true, var_3.a.a.a.b.x), arg_2.a.a.c, arg_2.a.a), -vec3<i32>(~var_3.a.a.c, var_1.a.a.d.c, ~arg_2.a.a.c)));
    return Struct_3(Struct_2(func_2(arg_2, Struct_4(func_1(), true), !var_1.a.a.b.zwx, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-556f, 264f, var_3.a.a.a.a, -473f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -226f, 383f, -1142f) + vec4<f32>(var_3.a.a.a.a, -322f, var_3.a.a.a.a, 497f))))).a, vec4<bool>(!arg_0, all(arg_2.a.b), false, true), ~reverseBits(select(var_3.a.a.c, var_1.a.a.d.c, arg_2.a.b.x)), arg_2.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(false, all(vec4<bool>(true, true, true, true)), func_1()), true);
    var var_1 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_1.a.a.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~min(u_input.b & vec3<u32>(u_input.b.x, u_input.e.x, 21795u), vec3<u32>(1u, 4294967295u, 32400u)) & ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(5478u, u_input.e.x, u_input.a), u_input.e, vec3<u32>(10291u, u_input.a, u_input.b.x))), var_1.a.a.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-123f, -961f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1037f + 1000f) - 1827f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-736f, var_1.a.a.a.a) - global0.x)), vec2<f32>(func_5(var_1.a.a.d.a != -519f, func_3(var_0.a.a, vec3<i32>(var_1.a.a.a.c, -2147483647i, var_1.a.a.c)), Struct_3(Struct_2(var_1.a.a.a, vec4<bool>(true, var_0.b, var_1.a.a.b.x, false), var_0.a.a.d.c, var_1.a.a.d))).a.d.a, 743f), vec2<bool>(false, false))), _wgslsmith_add_i32(0i, -2147483647i));
}

