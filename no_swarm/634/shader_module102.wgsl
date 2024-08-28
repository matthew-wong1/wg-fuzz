struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(Struct_1(-200f, false), false, false, vec4<u32>(18217u, 51355u, 0u, 1u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: bool, arg_1: u32) -> u32 {
    return 46923u >> (_wgslsmith_dot_vec3_u32(global1.d.zzy, select(countOneBits(~vec3<u32>(33907u, 3067u, u_input.b)), ~global1.d.xwz, vec3<bool>(global0.b.b | global1.b, global0.a.x, true))) % 32u);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    let var_0 = vec4<bool>(!(!all(!vec3<bool>(true, global1.c, false))), true, any(!vec3<bool>(!global0.b.b, global0.a.x, global0.a.x)), !any(select(!global0.a, !vec2<bool>(true, global1.c), !global0.a)));
    let var_1 = max(-_wgslsmith_div_vec4_i32(vec4<i32>(1i | u_input.a, 2147483647i, i32(-1i) * -53481i, ~(-58499i)), vec4<i32>(u_input.a, -1i, -6271i, -2147483647i) << (global1.d % vec4<u32>(32u))), countOneBits(-(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -1i, -61512i, u_input.d.x))));
    let var_2 = Struct_3(select(select(select(!vec2<bool>(global1.a.b, true), select(vec2<bool>(arg_2.b, global0.b.b), global0.a, global1.a.b), global0.b.b), var_0.wx, select(global0.a, select(var_0.xw, vec2<bool>(var_0.x, global0.a.x), global0.a.x), var_0.x && false)), vec2<bool>(global0.b.b, any(global0.a)), global1.c), global0.b, 1721u);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(389f, -651f, -776f, var_2.b.a) * vec4<f32>(479f, global1.a.a, 943f, -1000f)), vec4<f32>(global0.b.a, var_2.b.a, 1053f, -1080f))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-389f, arg_2.a, 894f, arg_2.a))), vec4<f32>(2436f, global1.a.a, global0.b.a, -1293f))))));
    var var_4 = ~firstLeadingBit(global0.c);
    return var_1.x;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> Struct_3 {
    global0 = Struct_3(global0.a, global1.a, 6721u);
    var var_0 = _wgslsmith_f_op_f32(112f - -256f);
    var var_1 = func_3(~(arg_0 ^ (~4294967295u >> (1u % 32u))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.c, 74676u, 1950u), ~vec3<u32>(global0.c, global0.c, global1.d.x)), vec3<u32>(global1.d.x, select(arg_0, global1.d.x, false), ~global1.d.x)) >> (~(~(~vec3<u32>(global0.c, arg_0, u_input.e))) % vec3<u32>(32u)), global1.a, global1.d.yz);
    var var_2 = Struct_2(global0.b, arg_2, any(select(!vec2<bool>(false, arg_2), !select(vec2<bool>(global0.a.x, false), vec2<bool>(true, global0.b.b), arg_2), true)), min(~vec4<u32>(countOneBits(1332u), u_input.b, ~83080u, _wgslsmith_dot_vec2_u32(global1.d.xw, global1.d.xw)), ~(~min(global1.d, global1.d))));
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1.a.a), _wgslsmith_f_op_f32(-global0.b.a)))))));
    return Struct_3(select(!vec2<bool>(arg_2, true), select(select(!vec2<bool>(false, var_2.a.b), select(vec2<bool>(true, global0.b.b), vec2<bool>(false, false), global0.a), global0.a), select(vec2<bool>(true, global1.a.b), global0.a, select(vec2<bool>(arg_2, arg_2), global0.a, global0.a)), !global0.a), select(global0.a, global0.a, false)), Struct_1(global0.b.a, false), reverseBits(u_input.e));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = func_2(102799u, abs(vec2<i32>(arg_3.x, _wgslsmith_mod_i32(-4270i, -15713i)) | ~max(vec2<i32>(arg_3.x, -2147483647i), vec2<i32>(u_input.d.x, 2147483647i))), all(!select(select(vec4<bool>(arg_0.b.b, false, global1.a.b, global0.a.x), vec4<bool>(global1.b, false, false, arg_0.a.x), false), vec4<bool>(false, true, true, global0.b.b), true))).a.x;
    global0 = Struct_3(arg_0.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(171f, global1.a.a)) + _wgslsmith_f_op_f32(ceil(-227f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a))), true), ~(~_wgslsmith_add_u32(countOneBits(arg_0.c), _wgslsmith_add_u32(1496u, global0.c))));
    global0 = arg_0;
    let var_1 = ~global1.d;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-666f, global1.a.a, 279f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(351f, -928f, -607f))), true)) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, global1.a.a, global1.a.a), vec3<f32>(arg_1, 818f, 1370f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.b.a, global1.a.a, global1.a.a))))) * vec3<f32>(-1230f, _wgslsmith_f_op_f32(func_2(var_1.x, arg_3.xy, var_0).b.a * _wgslsmith_f_op_f32(step(global1.a.a, 957f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * global1.a.a))));
    return Struct_1(_wgslsmith_div_f32(-1373f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.a, 276f)) * _wgslsmith_div_f32(arg_1, arg_0.b.a)))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.b.a))) >= global0.b.a;
    var var_1 = ~_wgslsmith_div_u32(u_input.c, ~func_1(all(vec3<bool>(true, global0.b.b, false)), _wgslsmith_add_u32(1u, u_input.c)));
    var var_2 = u_input.d.x | u_input.d.x;
    global1 = Struct_2(func_4(func_2(abs(global1.d.x & global0.c), ~countOneBits(u_input.d.xy), true), -628f, global1.c, _wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(-22110i, 1i, u_input.d.x)), vec3<i32>(-1i, countOneBits(76999i), -23166i))), true, global1.a.b, firstTrailingBit(min(vec4<u32>(global0.c, ~0u, ~1u, global0.c), ~global1.d)));
    let var_3 = Struct_1(-580f, any(select(vec4<bool>(global1.c, false, false, false), !vec4<bool>(false, global1.c, true, global1.b), true)) && !func_2(_wgslsmith_clamp_u32(85674u, global0.c, 13315u), u_input.d.yy, !global1.a.b).b.b);
    let var_4 = u_input.d;
    let var_5 = global0.b;
    var_0 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, global0.b.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, -1097f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-976f, global0.b.a), vec2<f32>(-520f, global0.b.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.a, 1000f) + vec2<f32>(var_5.a, var_5.a))))), max(vec3<u32>(~4294967295u & (1u | global1.d.x), 71040u, u_input.e), vec3<u32>(global1.d.x | 72311u, func_1(true, global0.c), 109181u) & reverseBits(global1.d.ywz << (vec3<u32>(global0.c, u_input.c, 0u) % vec3<u32>(32u)))), abs(global1.d.yww));
}

