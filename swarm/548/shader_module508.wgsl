struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(401f, 691f, -356f, -835f), vec4<f32>(539f, -710f, -2073f, 1189f), vec4<f32>(-633f, -731f, 1000f, 207f), vec4<f32>(-485f, 173f, -1632f, 577f));

var<private> global1: vec2<f32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(365f, -597f)))));
    global0 = array<vec4<f32>, 4>();
    var var_0 = 0u;
    var var_1 = -181f;
    var var_2 = false;
    return ~(~u_input.a);
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<f32>, 4>();
    var var_0 = func_3(~max(vec3<u32>(1u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(72490u, 4296u, 0u), vec3<u32>(78757u, 7832u, 4294967295u))), min(countOneBits(vec3<u32>(4294967295u, 0u, 65806u)), ~vec3<u32>(86794u, 0u, 87711u))));
    let var_1 = select(select(vec2<bool>(_wgslsmith_f_op_f32(trunc(-335f)) > _wgslsmith_f_op_f32(global1.x + -246f), u_input.a == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 39265i), vec2<i32>(u_input.a, u_input.a))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec3<bool>(true, true, false))), vec2<bool>(false, u_input.a >= -1i)), true | any(vec4<bool>(true, true, true, true))), vec2<bool>(all(vec3<bool>(true, true, true)) & all(vec3<bool>(true, true, true)), false), select(vec2<bool>(true, true), vec2<bool>(true, false), true));
    return Struct_1(0u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~1731u, 1u, ~1u), max(1u, _wgslsmith_div_u32(1u, 14028u))) < abs(_wgslsmith_clamp_u32(0u, ~67674u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 31429u), vec3<u32>(1u, 6130u, 42918u)))), !vec2<bool>(true, select(true, true, !var_1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global0 = array<vec4<f32>, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.x, 580f))), global1.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zy * vec2<f32>(-331f, -837f))) + arg_1.yz), _wgslsmith_div_vec2_f32(arg_1.zz, _wgslsmith_f_op_vec2_f32(round(arg_1.xy)))), select(arg_0.c, func_2().c, !arg_0.c.x)));
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(arg_1.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_f32(f32(-1f) * -624f)) * _wgslsmith_f_op_vec2_f32(-arg_1.xz)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(arg_1.zx)))), _wgslsmith_f_op_vec2_f32(arg_1.yx * _wgslsmith_f_op_vec2_f32(-arg_1.zz))) - _wgslsmith_f_op_vec2_f32(arg_1.xy * arg_1.xy));
    return func_2();
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = vec2<i32>(-2147483647i | u_input.a, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(-1i, 46264i), u_input.a & -35357i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-30735i, 2147483647i)) & abs(-vec2<i32>(u_input.a, u_input.a))));
    var var_1 = !vec2<bool>(all(vec2<bool>(true, true)), all(!vec2<bool>(false, arg_2.x)));
    let var_2 = func_4(func_2(), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x))), global1.x, 470f));
    global0 = array<vec4<f32>, 4>();
    let var_3 = u_input.a;
    return var_2;
}

fn func_5(arg_0: f32, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    global1 = vec2<f32>(-1502f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))) + arg_0));
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, false)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1967f, arg_0))))), vec2<f32>(global1.x, arg_0)));
    let var_0 = arg_3;
    global0 = array<vec4<f32>, 4>();
    let var_1 = _wgslsmith_add_vec4_u32(~firstTrailingBit(reverseBits(~vec4<u32>(4294967295u, 1053u, var_0.a, 1u))), _wgslsmith_add_vec4_u32(~(vec4<u32>(arg_3.a, arg_3.a, arg_1.x, 1u) & vec4<u32>(4294967295u, 1u, arg_1.x, var_0.a)), abs(vec4<u32>(4294967295u, arg_1.x, 128988u, 4294967295u) << (vec4<u32>(arg_1.x, 0u, 4294967295u, var_0.a) % vec4<u32>(32u)))) >> (vec4<u32>(func_2().a, var_0.a & arg_3.a, max(arg_1.x, 4294967295u), 52765u) % vec4<u32>(32u)));
    return Struct_2(vec2<u32>(~max(arg_3.a, firstLeadingBit(arg_3.a)), _wgslsmith_clamp_u32(17308u, arg_3.a, 1u)), var_0, firstTrailingBit(-vec2<i32>(u_input.a, u_input.a)));
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-global1.x);
    var var_1 = 972f;
    var var_2 = 1u;
    var var_3 = 0u;
    var_2 = 7542u << (arg_1.a.x % 32u);
    return Struct_2(vec2<u32>(4294967295u, _wgslsmith_add_u32(~arg_1.b.a, ~4294967295u)), func_5(1370f, ~arg_1.a, true, arg_1.b).b, arg_1.c);
}

fn func_7(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = func_6(global1.x, Struct_2(~_wgslsmith_add_vec2_u32(arg_0.a, abs(vec2<u32>(4294967295u, arg_0.b.a))), arg_0.b, reverseBits(arg_0.c)));
    let var_1 = Struct_2(~(~(~min(arg_2.a, vec2<u32>(arg_2.a.x, 13120u)))), arg_0.b, abs(var_0.c));
    let var_2 = Struct_1(firstTrailingBit(0u), all(vec2<bool>(any(!vec3<bool>(true, var_0.b.b, true)), all(vec3<bool>(arg_0.b.c.x, true, var_0.b.b)))), var_1.b.c);
    let var_3 = firstTrailingBit(~u_input.a);
    global0 = array<vec4<f32>, 4>();
    return Struct_1(var_0.b.a, all(vec2<bool>(var_2.c.x, arg_2.b.b)), var_0.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(713f, 1712f);
    var var_0 = func_7(func_6(-553f, func_5(global1.x, countOneBits(~vec2<u32>(28440u, 1u)), true, func_1(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false), vec4<u32>(1u, 1u, 1u, 1u), vec2<bool>(true, true)))), true, Struct_2(vec2<u32>(~(~53745u), func_1(vec4<bool>(false, true, true, false), vec4<u32>(6812u, 4294967295u, 0u, 4294967295u), vec2<bool>(true, true)).a >> (reverseBits(86404u) % 32u)), Struct_1(4294967295u, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a << (12278u % 32u), -23479i), max(~vec2<i32>(-54768i, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(18736i, u_input.a), vec2<i32>(u_input.a, u_input.a))))));
    var var_1 = vec4<u32>(var_0.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(3977u, ~var_0.a, 1u), firstTrailingBit(firstLeadingBit(vec3<u32>(52988u, var_0.a, var_0.a)) >> (vec3<u32>(var_0.a, var_0.a, var_0.a) % vec3<u32>(32u)))), ~(~var_0.a), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, 1u), vec3<u32>(var_0.a, var_0.a, 50560u)) ^ 4294967295u, min(var_0.a & var_0.a, 5365u)), vec3<u32>(1u, ~var_0.a, 1851u)));
    global0 = array<vec4<f32>, 4>();
    global0 = array<vec4<f32>, 4>();
    var var_2 = !(!select(vec3<bool>(func_5(1000f, vec2<u32>(var_0.a, var_1.x), true, Struct_1(6903u, false, var_0.c)).b.c.x, var_0.c.x & var_0.b, var_0.b), !(!vec3<bool>(var_0.b, var_0.b, true)), var_0.c.x));
    let var_3 = ~var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-649f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), ~max(var_0.a, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(var_3, 89852u)), vec2<u32>(var_1.x, var_0.a))), global1.x, _wgslsmith_div_u32(~func_5(_wgslsmith_f_op_f32(global1.x * global1.x), var_1.yy, !var_0.c.x, func_7(Struct_2(vec2<u32>(25700u, var_1.x), Struct_1(0u, true, vec2<bool>(true, var_2.x)), vec2<i32>(u_input.a, u_input.a)), false, Struct_2(vec2<u32>(var_0.a, var_1.x), Struct_1(var_0.a, var_2.x, vec2<bool>(false, var_2.x)), vec2<i32>(8427i, -24212i)))).a.x, _wgslsmith_add_u32(11395u, func_4(func_2(), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, 627f)))).a)), func_6(-1000f, func_5(_wgslsmith_f_op_f32(-global1.x), ~max(var_1.zz, vec2<u32>(var_3, 45772u)), false, func_6(global1.x, Struct_2(var_1.yx, Struct_1(88301u, false, vec2<bool>(false, var_0.c.x)), vec2<i32>(u_input.a, u_input.a))).b)).a.x);
}

