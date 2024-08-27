struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-234f, true, vec2<i32>(i32(-2147483648), 1i), 2946u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> bool {
    let var_0 = ~vec2<u32>(~(~_wgslsmith_mod_u32(u_input.c.x, 29155u)), max(global0.d, _wgslsmith_div_u32(~u_input.c.x, 49551u)));
    var var_1 = ~(~(~u_input.c ^ vec4<u32>(global0.d & 1u, var_0.x >> (u_input.c.x % 32u), _wgslsmith_sub_u32(0u, u_input.e), _wgslsmith_sub_u32(4294967295u, arg_0.a))));
    let var_2 = abs(select(global0.c.x, ~_wgslsmith_mult_i32(1i, select(u_input.b, u_input.a.x, false)), all(select(!vec2<bool>(true, arg_0.b.a), vec2<bool>(false, true), global0.a == arg_1.x))));
    let var_3 = !(!select(select(select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(global0.b, global0.b, true), vec3<bool>(arg_0.b.a, global0.b, true)), vec3<bool>(true, arg_0.b.a, true), vec3<bool>(false, arg_0.b.a, global0.b)), vec3<bool>(arg_0.b.a, true, true), select(select(vec3<bool>(arg_0.b.a, false, arg_0.b.a), vec3<bool>(global0.b, arg_0.b.a, arg_0.b.a), vec3<bool>(arg_0.b.a, global0.b, true)), !vec3<bool>(false, true, arg_0.b.a), arg_0.b.a)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global0.a), 131f, _wgslsmith_f_op_f32(-global0.a), global0.a))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x))), -789f, _wgslsmith_f_op_f32(f32(-1f) * -741f), global0.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(547f - 780f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + _wgslsmith_f_op_f32(578f - -366f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2861f, arg_1.x, global0.b)) * _wgslsmith_f_op_f32(-1102f - 1494f)))));
    return true;
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> Struct_3 {
    var var_0 = select(vec4<bool>(all(!select(vec4<bool>(true, false, true, false), vec4<bool>(global0.b, global0.b, true, false), global0.b)), false, !all(vec2<bool>(false, arg_0)) | (max(1i, global0.c.x) >= (i32(-1i) * -2147483647i)), global0.b || true), select(select(select(!vec4<bool>(arg_1.b, false, arg_1.b, global0.b), select(vec4<bool>(true, arg_0, true, arg_1.b), vec4<bool>(arg_0, false, arg_1.b, arg_0), vec4<bool>(false, true, false, arg_1.b)), vec4<bool>(arg_0, arg_0, global0.b, arg_1.b)), vec4<bool>(true, arg_0, func_3(Struct_2(global0.d, Struct_1(arg_1.b)), vec3<f32>(-1000f, -1549f, global0.a)), arg_0), global0.b), vec4<bool>(false, select(false, arg_1.b, false), arg_1.b, !global0.b), false), _wgslsmith_mod_i32(-1i, ~global0.c.x) < select(u_input.b | global0.c.x, -(i32(-1i) * -1i), _wgslsmith_f_op_f32(-global0.a) > 327f));
    let var_1 = select(vec4<bool>(!(!var_0.x) || true, global0.b, any(!(!vec3<bool>(false, arg_1.b, true))), _wgslsmith_f_op_f32(-global0.a) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a, -460f))), !vec4<bool>(!(false != global0.b), any(var_0.zxz) && global0.b, var_0.x, true | arg_1.b), vec4<bool>(true, !(!arg_0), false, func_3(Struct_2(firstTrailingBit(global0.d), Struct_1(arg_0)), vec3<f32>(_wgslsmith_f_op_f32(-139f + global0.a), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(trunc(-1000f))))));
    return Struct_3(~min(firstLeadingBit(-2147483647i), u_input.a.x), 7035u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<f32>) -> u32 {
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-119f * global0.a)))), true, global0.c, ~1u);
    let var_0 = _wgslsmith_mod_vec3_i32(~vec3<i32>(-(15508i << (arg_0.b % 32u)), 1i, -(global0.c.x ^ arg_0.a)), vec3<i32>(arg_1.a, u_input.d, _wgslsmith_add_i32(1i, arg_0.a)));
    global0 = Struct_4(767f, true && func_3(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, 4294967295u), u_input.c.xy), Struct_1(global0.b)), arg_3.xyy), u_input.a, 1u);
    var var_1 = !(arg_0.a < (abs(arg_0.a) | ~(~1i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1511f)))) - _wgslsmith_f_op_f32(global0.a - -2205f)) <= global0.a;
    return countOneBits(firstLeadingBit(_wgslsmith_mult_u32(u_input.c.x, arg_2.b))) >> (1u % 32u);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec4<bool>) -> vec4<bool> {
    var var_0 = u_input.d;
    var_0 = -global0.c.x;
    var var_1 = func_4(func_2(-49279i > (u_input.d << (arg_2.x % 32u)), Struct_4(965f, true || all(vec4<bool>(false, global0.b, false, arg_3.x)), reverseBits(vec2<i32>(global0.c.x, 18453i)) << (vec2<u32>(0u, arg_0.x) % vec2<u32>(32u)), ~_wgslsmith_add_u32(0u, u_input.e))), Struct_3(14368i, 17231u), func_2(true, Struct_4(_wgslsmith_f_op_f32(sign(global0.a)), any(arg_3.yz), u_input.a, u_input.e)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, 600f, -2021f)));
    let var_2 = global0.a;
    var var_3 = !(!func_3(Struct_2(4281u << (global0.d % 32u), Struct_1(false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, -1569f, 274f), _wgslsmith_div_vec3_f32(vec3<f32>(global0.a, global0.a, global0.a), vec3<f32>(global0.a, -475f, global0.a)), vec3<bool>(true, true, true)))));
    return !arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_1(u_input.c, true, vec2<u32>(32023u, reverseBits(global0.d) & min(u_input.e, u_input.c.x)), vec4<bool>(select(global0.b, u_input.d >= u_input.a.x, global0.b), global0.b, global0.b && global0.b, true)), select(func_1(vec4<u32>(~global0.d, 10945u, 1u, ~4294967295u), global0.b, u_input.c.zz, select(!vec4<bool>(global0.b, true, true, global0.b), !vec4<bool>(false, false, true, global0.b), true)), func_1(_wgslsmith_mult_vec4_u32(~u_input.c, _wgslsmith_div_vec4_u32(u_input.c, u_input.c)), false, ~abs(u_input.c.zx), !vec4<bool>(global0.b, global0.b, true, global0.b)), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(false, true, false, global0.b)), func_1(min(u_input.c, vec4<u32>(u_input.c.x, global0.d, global0.d, u_input.e)), !global0.b, u_input.c.zx, func_1(u_input.c, true, vec2<u32>(u_input.c.x, 17568u), vec4<bool>(true, global0.b, false, global0.b))))), select(vec4<bool>(any(!vec4<bool>(global0.b, true, global0.b, false)), all(select(vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, global0.b), false)), global0.b, !(!global0.b)), !vec4<bool>(global0.b, u_input.e > u_input.c.x, global0.b, global0.b), vec4<bool>((global0.c.x <= 22092i) & func_3(Struct_2(global0.d, Struct_1(true)), vec3<f32>(global0.a, global0.a, 459f)), any(vec3<bool>(true, global0.b, true)), false, global0.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, 1153f, -1131f, -1048f), vec4<f32>(655f, global0.a, -558f, global0.a))) + vec4<f32>(_wgslsmith_f_op_f32(global0.a + global0.a), _wgslsmith_f_op_f32(floor(-843f)), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_div_f32(global0.a, global0.a))))));
    global0 = Struct_4(-572f, true, vec2<i32>(-(1i | u_input.d), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global0.c.x, -13710i, 1i, -1i), vec4<i32>(1i, u_input.d, global0.c.x, u_input.d), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), -vec4<i32>(2147483647i, u_input.b, -17893i, global0.c.x))) | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, u_input.d, u_input.b) << (u_input.c % vec4<u32>(32u)), vec4<i32>(global0.c.x, 26471i, 1350i, u_input.a.x)), -68631i), global0.d);
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(779f - global0.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a)) * _wgslsmith_f_op_f32(global0.a * -703f))) - global0.a), global0.b & var_0.x, -max(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, global0.c.x), vec2<i32>(-10519i, -1i) & u_input.a), vec2<i32>(firstLeadingBit(u_input.b), u_input.d)), 1u);
    let var_2 = vec3<f32>(1318f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - var_1.x) - -819f))), _wgslsmith_f_op_f32(exp2(global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_2(func_3(Struct_2(27233u, Struct_1(true)), _wgslsmith_f_op_vec3_f32(-var_2)), Struct_4(var_1.x, false, u_input.a, abs(global0.d))), func_2(func_2(true, Struct_4(var_1.x, var_0.x, u_input.a, u_input.e)).a <= (global0.c.x >> (u_input.c.x % 32u)), Struct_4(-316f, all(var_0.xz), vec2<i32>(global0.c.x, -19820i), ~global0.d)), Struct_3(u_input.b, global0.d), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(607f, -453f, var_1.x, var_1.x), vec4<f32>(-1422f, -1134f, var_2.x, var_2.x)))), vec4<f32>(304f, 1742f, 241f, _wgslsmith_f_op_f32(max(global0.a, var_2.x)))))));
}

