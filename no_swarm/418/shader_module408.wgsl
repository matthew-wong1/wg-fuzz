struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-171f, 590f), vec2<f32>(-1107f, -810f), vec2<f32>(-240f, -165f), vec2<f32>(579f, 1954f), vec2<f32>(941f, -635f), vec2<f32>(-1156f, 570f), vec2<f32>(-706f, -378f), vec2<f32>(-564f, 1084f), vec2<f32>(1917f, -1087f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_2(Struct_1(u_input.c, 49007u, abs(~u_input.b << (~vec4<u32>(u_input.d.x, u_input.b.x, u_input.b.x, u_input.d.x) % vec4<u32>(32u))), !arg_0.a.zyz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(1000f)), global0.x, _wgslsmith_f_op_f32(361f * 577f)))), Struct_1(u_input.a.x, 0u, select(_wgslsmith_div_vec4_u32(vec4<u32>(75521u, 10589u, u_input.b.x, u_input.d.x) >> (u_input.b % vec4<u32>(32u)), vec4<u32>(103363u, u_input.d.x, u_input.b.x, 23503u)), countOneBits(~u_input.b), arg_0.a), select(arg_0.a.xwx, !arg_0.a.yyz, !all(arg_0.a)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(163f, global0.x, global0.x, 1044f) + vec4<f32>(global0.x, -1998f, 785f, 203f))))));
    var var_1 = i32(-1i) * -_wgslsmith_clamp_i32(1i, -max(-36505i, u_input.a.x), min(u_input.a.x, ~(-17857i)));
    let var_2 = var_0;
    var var_3 = Struct_3(select(select(select(select(arg_0.a, arg_0.a, var_0.b.d.x), !vec4<bool>(arg_0.a.x, var_2.a.d.x, false, var_0.b.d.x), true), select(arg_0.a, !arg_0.a, !var_0.b.d.x), arg_0.a), arg_0.a, !(arg_0.a.x && any(vec2<bool>(arg_0.a.x, arg_0.a.x)))));
    var var_4 = vec3<bool>(false, false, any(!var_3.a));
    return 52245u;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_add_vec2_u32(~(~arg_2.b.c.yx), ~(u_input.b.wz & vec2<u32>(~4294967295u, func_3(Struct_3(vec4<bool>(arg_2.b.d.x, arg_1, false, true))))));
    let var_1 = arg_2.a.e.wwz;
    let var_2 = Struct_2(arg_2.a, arg_2.a);
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(var_2.a.e.x, global0.x)), 2809f, 1000f, -1000f), _wgslsmith_div_vec4_f32(arg_2.a.e, _wgslsmith_f_op_vec4_f32(var_2.a.e * var_2.b.e)))) + arg_2.a.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 418f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(369f * var_2.a.e.x) + var_1.x)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(arg_2.a.e, _wgslsmith_f_op_vec4_f32(-vec4<f32>(255f, -293f, var_1.x, -470f)), !vec4<bool>(false, false, arg_1, arg_1)))))), vec4<bool>(var_2.b.d.x, true, !arg_2.b.d.x, var_2.b.e.x >= global0.x)));
    let var_3 = global0.x;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> vec4<u32> {
    global1 = array<vec2<f32>, 9>();
    global1 = array<vec2<f32>, 9>();
    var var_0 = !(54536u <= arg_2.x);
    let var_1 = true;
    let var_2 = 1i;
    return min(_wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(arg_0.b, arg_3.a.c.x), _wgslsmith_dot_vec2_u32(arg_1.c.yy, ~arg_0.c.yy), func_3(Struct_3(vec4<bool>(arg_3.b.d.x, true, var_1, true))), _wgslsmith_mult_u32(14143u, arg_0.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 31538u, 24003u, arg_1.b) << (arg_1.c % vec4<u32>(32u)), firstTrailingBit(~arg_0.c)), vec4<u32>(31904u, ~37201u, _wgslsmith_div_u32(15002u, ~65312u), abs(arg_0.c.x >> (12882u % 32u)))), _wgslsmith_div_vec4_u32(arg_1.c, ~vec4<u32>(~1u, arg_3.b.c.x, ~arg_0.b, ~1u)));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    let var_0 = true;
    var var_1 = func_2(arg_1, true, Struct_2(Struct_1(reverseBits(i32(-1i) * -26243i), arg_0.b.c.x, vec4<u32>(u_input.d.x, _wgslsmith_clamp_u32(arg_0.a.b, u_input.d.x, 18974u), ~1u, 62819u), func_2(arg_0.a.a, false, func_2(-1i, arg_0.b.d.x, Struct_2(arg_0.a, Struct_1(arg_0.b.a, 38936u, vec4<u32>(u_input.d.x, 27751u, 4294967295u, u_input.b.x), arg_0.b.d, arg_0.b.e)))).a.d, _wgslsmith_f_op_vec4_f32(exp2(arg_0.b.e))), func_2(~(-12273i & u_input.c), !arg_0.b.d.x, Struct_2(Struct_1(12409i, arg_0.a.b, vec4<u32>(0u, 49224u, arg_0.b.b, arg_0.a.c.x), arg_0.a.d, vec4<f32>(arg_0.a.e.x, -1000f, 3429f, -294f)), arg_0.b)).b));
    let var_2 = var_1.a.d.yx;
    return Struct_2(Struct_1(_wgslsmith_sub_i32(firstLeadingBit(19341i), _wgslsmith_dot_vec3_i32(u_input.a, ~vec3<i32>(var_1.b.a, arg_1, u_input.a.x))), arg_0.a.b, _wgslsmith_div_vec4_u32(func_2(firstLeadingBit(arg_0.a.a), select(arg_0.a.d.x, arg_0.a.d.x, var_2.x), arg_0).a.c, ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.c.x, arg_0.b.b, 85551u, var_1.a.c.x), u_input.b)), func_2(u_input.c, true, arg_0).b.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.e) - arg_0.a.e) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.e)))), func_2(-max(-27033i, arg_0.a.a) >> (0u % 32u), 91143u > u_input.d.x, Struct_2(Struct_1(firstTrailingBit(1i), arg_0.b.c.x, vec4<u32>(u_input.d.x, u_input.b.x, u_input.d.x, 4294967295u), var_1.a.d, arg_0.a.e), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_1.b.a), u_input.a.xy), 4294967295u, vec4<u32>(0u, arg_0.a.b, 0u, 13091u), var_1.b.d, vec4<f32>(arg_0.a.e.x, arg_0.b.e.x, 1000f, 151f)))).b);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_5(Struct_2(arg_1, Struct_1(1i, arg_1.b, func_4(Struct_1(1i, arg_1.c.x, vec4<u32>(16987u, u_input.b.x, 7831u, 35123u), arg_1.d, arg_1.e), arg_1, ~u_input.b.yzz, func_2(1i, arg_1.d.x, Struct_2(Struct_1(arg_1.a, u_input.b.x, u_input.b, vec3<bool>(true, true, arg_1.d.x), vec4<f32>(-254f, arg_1.e.x, global0.x, global0.x)), Struct_1(arg_1.a, 4294967295u, u_input.b, arg_1.d, vec4<f32>(-1000f, arg_1.e.x, global0.x, global0.x))))), select(!vec3<bool>(true, arg_1.d.x, arg_1.d.x), func_2(0i, false, Struct_2(Struct_1(u_input.c, 1u, arg_1.c, arg_1.d, arg_1.e), Struct_1(1i, 94070u, vec4<u32>(u_input.b.x, 4523u, u_input.d.x, 0u), vec3<bool>(arg_1.d.x, true, false), vec4<f32>(global0.x, arg_0, 469f, global0.x)))).a.d, vec3<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(910f, arg_1.e.x, -519f, arg_1.e.x))))), arg_1.a);
    var_0 = func_2(-u_input.a.x, false, Struct_2(var_0.a, Struct_1(1i, ~(72296u & u_input.b.x), arg_1.c, arg_1.d, vec4<f32>(_wgslsmith_f_op_f32(arg_1.e.x * 268f), var_0.a.e.x, _wgslsmith_f_op_f32(select(arg_0, -638f, true)), 1188f))));
    let var_1 = arg_1;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-715f)))), func_2(u_input.a.x, any(!select(vec4<bool>(var_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.d.x), vec4<bool>(arg_1.d.x, true, true, true), true)), Struct_2(func_5(Struct_2(var_0.b, var_1), var_1.a).b, func_2(-var_0.a.a, any(var_1.d.yx), Struct_2(Struct_1(4559i, 4294967295u, var_0.a.c, var_0.a.d, var_1.e), Struct_1(u_input.a.x, u_input.b.x, var_0.b.c, vec3<bool>(var_0.a.d.x, var_0.a.d.x, true), vec4<f32>(var_0.b.e.x, -121f, -132f, var_1.e.x)))).b)).b.e.x, 1893f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-579f, -826f)));
    var var_2 = func_5(func_5(Struct_2(func_2(var_0.a.a, true, func_5(Struct_2(var_1, var_1), -3030i)).a, func_2(2147483647i, true, func_5(Struct_2(Struct_1(arg_1.a, 3780u, arg_1.c, vec3<bool>(true, true, var_1.d.x), vec4<f32>(-135f, -242f, 615f, arg_0)), var_0.a), arg_1.a)).b), var_1.a), func_2(_wgslsmith_div_i32(_wgslsmith_mod_i32(531i, u_input.a.x), ~var_1.a), func_5(func_2(-u_input.c, var_0.a.d.x, Struct_2(Struct_1(48868i, 0u, var_0.a.c, vec3<bool>(true, var_1.d.x, true), vec4<f32>(1036f, var_1.e.x, var_0.b.e.x, arg_0)), arg_1)), arg_1.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, var_1.c.x, 4294967295u, u_input.b.x), vec4<u32>(var_1.b, 14161u, 1u, var_0.b.c.x)) % 32u)).b.d.x, Struct_2(func_5(func_2(var_0.b.a, var_0.b.d.x, Struct_2(var_1, Struct_1(u_input.a.x, 0u, u_input.b, vec3<bool>(false, false, true), arg_1.e))), abs(1i)).a, Struct_1(i32(-1i) * -1i, var_1.b, vec4<u32>(arg_1.c.x, 4294967295u, 1u, 0u), !arg_1.d, vec4<f32>(703f, -1807f, -463f, 532f)))).b.a).a;
    return Struct_2(func_2(-(~(-var_0.b.a)), any(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, var_1.d.x, false, arg_1.d.x), vec4<bool>(true, true, false, var_2.d.x), true), select(vec4<bool>(false, true, true, var_0.a.d.x), vec4<bool>(var_2.d.x, var_0.a.d.x, var_0.b.d.x, false), false))), func_5(func_5(func_5(Struct_2(Struct_1(-6007i, 22643u, vec4<u32>(1u, 0u, var_1.b, var_0.a.c.x), var_0.a.d, vec4<f32>(-392f, -476f, arg_1.e.x, arg_0)), var_1), var_0.a.a), func_2(arg_1.a, var_0.b.d.x, Struct_2(Struct_1(1i, 77035u, vec4<u32>(0u, var_0.b.c.x, var_1.b, 66733u), vec3<bool>(arg_1.d.x, true, false), var_0.b.e), var_0.b)).a.a), 10690i)).b, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-132f, Struct_1(u_input.a.x, 5101u, _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), countOneBits(u_input.b), u_input.b), vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b.x), u_input.b.x, 168993u, max(0u, u_input.b.x))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(501f, global0.x, global0.x, global0.x), vec4<f32>(569f, 436f, global0.x, -245f)))))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(257f, var_0.b.e.x)) - _wgslsmith_f_op_f32(f32(-1f) * -838f)), global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1509f + var_0.b.e.x) + _wgslsmith_f_op_f32(-global0.x))) + func_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(var_0.a.e.x * var_0.a.e.x))), Struct_1(~var_0.a.a, 1u, vec4<u32>(1u, var_0.b.c.x, var_0.b.b, u_input.b.x), !vec3<bool>(var_0.a.d.x, true, var_0.a.d.x), vec4<f32>(var_0.b.e.x, 184f, -1893f, var_0.a.e.x))).a.e));
    global1 = array<vec2<f32>, 9>();
    global1 = array<vec2<f32>, 9>();
    var var_1 = var_0.b.d.x;
    global0 = var_0.b.e;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(firstTrailingBit(~0i), i32(-1i) * -26243i, _wgslsmith_mod_i32(firstLeadingBit(23716i), reverseBits(var_0.b.a)), 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -countOneBits(u_input.a.xy), ~countOneBits(vec2<i32>(u_input.a.x, var_0.a.a))));
}

