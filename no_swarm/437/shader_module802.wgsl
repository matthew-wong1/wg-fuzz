struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_2(-211f), Struct_1(false), 52743u, vec3<i32>(-1i, -1i, 21751i)), Struct_4(Struct_2(697f), Struct_1(true), 64714u, vec3<i32>(-1i, -5084i, -16034i)), Struct_4(Struct_2(-241f), Struct_1(false), 1u, vec3<i32>(-1i, -1i, 30147i)), Struct_4(Struct_2(1531f), Struct_1(true), 19258u, vec3<i32>(i32(-2147483648), 4035i, -5151i)), Struct_4(Struct_2(364f), Struct_1(false), 0u, vec3<i32>(-1i, i32(-2147483648), -5624i)), Struct_4(Struct_2(-3169f), Struct_1(true), 1u, vec3<i32>(1i, 27373i, i32(-2147483648))), Struct_4(Struct_2(561f), Struct_1(false), 0u, vec3<i32>(-31207i, 2147483647i, i32(-2147483648))), Struct_4(Struct_2(226f), Struct_1(false), 4294967295u, vec3<i32>(0i, 90452i, -1i)), Struct_4(Struct_2(-739f), Struct_1(true), 1u, vec3<i32>(4737i, 11443i, 1i)), Struct_4(Struct_2(-680f), Struct_1(false), 143194u, vec3<i32>(27556i, 2147483647i, -1073i)), Struct_4(Struct_2(1281f), Struct_1(true), 50541u, vec3<i32>(-28283i, 0i, i32(-2147483648))), Struct_4(Struct_2(339f), Struct_1(false), 10404u, vec3<i32>(1i, 2147483647i, -1i)), Struct_4(Struct_2(721f), Struct_1(true), 3192u, vec3<i32>(-30071i, 0i, -12332i)), Struct_4(Struct_2(1916f), Struct_1(false), 0u, vec3<i32>(-8786i, 26462i, -28433i)), Struct_4(Struct_2(-464f), Struct_1(true), 4294967295u, vec3<i32>(46888i, 62159i, -45188i)), Struct_4(Struct_2(-968f), Struct_1(false), 0u, vec3<i32>(2147483647i, -1i, 23913i)), Struct_4(Struct_2(1131f), Struct_1(true), 5241u, vec3<i32>(i32(-2147483648), -20868i, -1i)), Struct_4(Struct_2(-1419f), Struct_1(true), 23842u, vec3<i32>(43035i, -46175i, -1i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = select(select(!(!vec3<bool>(arg_0.a.a, true, arg_0.a.a)), select(vec3<bool>(any(vec2<bool>(arg_0.a.a, arg_0.a.a)), !arg_0.a.a, any(vec2<bool>(arg_0.a.a, false))), vec3<bool>(any(vec3<bool>(true, false, arg_0.a.a)), true, !arg_0.a.a), all(vec3<bool>(arg_0.a.a, arg_0.a.a, false))), arg_0.a.a), vec3<bool>(select(!(arg_0.a.a | arg_0.a.a), arg_0.a.a, arg_0.a.a), any(!(!vec4<bool>(arg_0.a.a, arg_0.a.a, false, arg_0.a.a))), !(!arg_0.a.a)), select(vec3<bool>(false, all(!vec2<bool>(arg_0.a.a, arg_0.a.a)), true), !(!vec3<bool>(false, arg_0.a.a, false)), select(select(all(vec3<bool>(true, true, true)), arg_0.a.a, true), arg_0.a.a, !arg_0.a.a)));
    global0 = array<Struct_4, 18>();
    return ~abs(4294967295u) <= u_input.e.x;
}

fn func_2() -> bool {
    let var_0 = vec3<i32>(i32(-1i) * -u_input.d, -_wgslsmith_dot_vec3_i32(~u_input.b.www, u_input.b.zxx) ^ max(-2147483647i, 18832i), u_input.c.x);
    let var_1 = var_0.x;
    var var_2 = u_input.b;
    var var_3 = Struct_4(Struct_2(1174f), Struct_1(all(vec4<bool>(false, u_input.e.x > 4294967295u, false, func_3(Struct_3(Struct_1(false), 4294967295u, vec3<i32>(66465i, 22597i, var_0.x)))))), _wgslsmith_mod_u32(4294967295u & u_input.a.x, u_input.a.x | 5179u) & 0u, u_input.c.xyz);
    let var_4 = 41534u;
    return !all(!select(select(vec2<bool>(false, var_3.b.a), vec2<bool>(false, var_3.b.a), vec2<bool>(false, true)), !vec2<bool>(true, var_3.b.a), u_input.c.x != var_2.x));
}

fn func_1() -> vec3<i32> {
    var var_0 = !vec2<bool>(true, !func_2());
    var_0 = vec2<bool>(var_0.x, var_0.x);
    var var_1 = _wgslsmith_dot_vec4_i32(~(~(~min(u_input.c, vec4<i32>(-2147483647i, -2147483647i, -1i, 2147483647i)))), -(abs(reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -382i))) | u_input.b));
    global0 = array<Struct_4, 18>();
    var_0 = vec2<bool>(var_0.x, false);
    return vec3<i32>(-1i) * -vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 46300i, u_input.b.x, -11254i), vec4<i32>(-1i, u_input.c.x, 2147483647i, -18101i))), u_input.d, u_input.b.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = reverseBits(_wgslsmith_mult_u32(~29132u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(58647u >> (u_input.e.x % 32u), _wgslsmith_sub_u32(u_input.e.x, u_input.e.x)), ~u_input.a.x)));
    var_0 = _wgslsmith_div_u32(~max(u_input.e.x, min(0u, 0u)), ~23833u) & u_input.e.x;
    global0 = array<Struct_4, 18>();
    var var_1 = -u_input.b.x;
    var var_2 = Struct_1(all(!vec3<bool>(u_input.a.x != u_input.a.x, false, any(arg_0))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 206f) * -329f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(269f, -1147f)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: f32) -> i32 {
    var var_0 = arg_1.b;
    let var_1 = Struct_4(arg_1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_3))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f + -843f))), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_1.c, arg_1.c) >> (arg_1.c % 32u), ~(~0u)), -vec3<i32>(_wgslsmith_sub_i32(u_input.d | u_input.c.x, i32(-1i) * -1i), arg_1.d.x, arg_1.d.x));
    let var_2 = -22200i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - arg_3)) + -1104f))));
    var var_4 = max(firstLeadingBit(~var_1.c) ^ 4294967295u, ~min(~4294967295u, ~u_input.a.x)) >> (4294967295u % 32u);
    return -10083i;
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: i32) -> Struct_3 {
    var var_0 = u_input.a.x >> (u_input.a.x % 32u);
    let var_1 = Struct_3(Struct_1(any(vec2<bool>(true, true)) || all(vec4<bool>(true, true, true, true))), ~(~u_input.a.x), abs(firstLeadingBit(abs(u_input.c.zzz))));
    global0 = array<Struct_4, 18>();
    var_0 = firstLeadingBit(select(12127u, ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.b), vec2<u32>(var_1.b, 66855u)), u_input.e.x, true), !(16874u > u_input.a.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(426f)) - 1f)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 18>();
    let var_0 = vec2<bool>(false, !(-u_input.d > ~u_input.b.x));
    global0 = array<Struct_4, 18>();
    var var_1 = func_6(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1974f)))), -1032f)), _wgslsmith_f_op_f32(f32(-1f) * -1171f), _wgslsmith_sub_i32(~(~(i32(-1i) * -2147483647i)), func_5(func_4(vec2<bool>(var_0.x, true), func_1()), global0[_wgslsmith_index_u32(~u_input.e.x, 18u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(216f, 3376f, -1000f, 370f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1552f, 872f, -930f, -1408f))), _wgslsmith_f_op_f32(max(163f, _wgslsmith_f_op_f32(trunc(1010f)))))));
    global0 = array<Struct_4, 18>();
    var_1 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1148f * -182f))) - _wgslsmith_f_op_f32(f32(-1f) * -1495f))), 170f, i32(-1i) * -var_1.c.x);
    var var_2 = !select(select(vec4<bool>(!var_0.x, true, var_1.a.a & true, true), select(!vec4<bool>(true, var_0.x, false, false), select(vec4<bool>(var_1.a.a, var_0.x, var_1.a.a, true), vec4<bool>(true, false, false, var_1.a.a), true), true), !vec4<bool>(false, var_0.x, false, true)), !vec4<bool>(var_1.a.a != true, var_0.x, var_0.x, false), true);
    var_2 = !vec4<bool>(!func_6(_wgslsmith_f_op_f32(f32(-1f) * -1255f), _wgslsmith_f_op_f32(f32(-1f) * -2032f), _wgslsmith_mult_i32(u_input.b.x, u_input.d)).a.a, any(select(select(var_0, vec2<bool>(var_0.x, false), vec2<bool>(var_1.a.a, var_1.a.a)), !var_0, vec2<bool>(var_0.x, false))), any(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_1.a.a, false, var_0.x, false), false)), all(vec2<bool>(var_0.x | true, all(var_2.xyy))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.zzw, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-862f, 396f, var_2.x))))))), vec3<u32>(~(~firstTrailingBit(7448u)), reverseBits(~(20996u ^ var_1.b)), ~_wgslsmith_div_u32(var_1.b, 1u)), 1739f);
}

