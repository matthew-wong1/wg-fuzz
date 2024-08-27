struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = min(-1i, 1i);
    var var_1 = Struct_3(global0.x || (true && any(!vec4<bool>(global0.x, global0.x, global0.x, true))), ~vec2<i32>(1i, 1i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(940f, -1000f, false))))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.c, 1082f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_1.c))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(229f, var_1.c)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.c, var_1.c), vec2<f32>(-395f, var_1.c)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1713f, -208f), vec2<f32>(var_1.c, var_1.c), global0.xy)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1343f, var_1.c))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.c, var_1.c))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.c, 340f), vec2<f32>(-1054f, var_1.c))), vec2<bool>(true, global0.x))), vec2<bool>(var_1.c != -1805f, any(vec3<bool>(true, true, false)))))), select(select(select(select(global0.yx, global0.yy, vec2<bool>(global0.x, true)), vec2<bool>(false, var_1.a), global0.x), global0.yz, vec2<bool>(u_input.a.x >= u_input.a.x, any(vec4<bool>(global0.x, global0.x, false, true)))), select(global0.zz, vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, global0.x)), true)), any(vec4<bool>(all(vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x, var_1.a, true)))));
    var_1 = Struct_3(select(var_1.a, (495f <= var_2.x) || var_1.a, true), -firstTrailingBit(max(var_1.b, var_1.b)), var_2.x);
    var var_3 = u_input.a;
    return true;
}

fn func_2(arg_0: vec4<u32>) -> vec2<u32> {
    global0 = select(!(!select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, true, false)), !vec3<bool>(global0.x, true, global0.x), global0.x)), vec3<bool>(!func_3(), global0.x && global0.x, !global0.x), global0.x);
    let var_0 = ~arg_0.xw;
    let var_1 = vec4<bool>(false & !global0.x, select(select(!global0.x, true, true), !func_3(), true), -(~countOneBits(-12274i)) < (_wgslsmith_mult_i32(37013i, abs(3307i)) << (~(~u_input.a.x) % 32u)), !all(vec3<bool>(global0.x, all(vec3<bool>(true, false, true)), true)));
    global0 = vec3<bool>(any(var_1), all(select(!select(var_1.xy, var_1.wx, vec2<bool>(var_1.x, true)), vec2<bool>(true, any(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), global0.zy)), all(var_1));
    var var_2 = -406f;
    return vec2<u32>(8860u, _wgslsmith_mod_u32(var_0.x, abs(var_0.x)));
}

fn func_1() -> Struct_1 {
    global0 = vec3<bool>(!global0.x, global0.x, global0.x);
    var var_0 = 17371i;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2404f)) - _wgslsmith_f_op_f32(-1000f - 867f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(step(100f, 1591f)))), func_2(~u_input.a), Struct_2(Struct_1(select(select(vec3<bool>(global0.x, false, true), vec3<bool>(false, global0.x, global0.x), false), vec3<bool>(true, true, true), !global0.x), abs(vec2<u32>(1u, 41935u)) >> (_wgslsmith_div_vec2_u32(u_input.a.yy, vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u))), Struct_1(select(select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, false, global0.x)), vec3<bool>(true, true, global0.x), !vec3<bool>(global0.x, global0.x, global0.x)), vec2<u32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(299f - 887f)) + _wgslsmith_f_op_f32(trunc(639f))))));
    var_0 = ~1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.d)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_1.d, -1001f))))), _wgslsmith_f_op_f32(max(var_1.a, -1094f)), _wgslsmith_f_op_f32(sign(-600f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-548f, 692f, 538f, var_1.a) + vec4<f32>(-1069f, var_1.d, var_1.d, 153f))))) + vec4<f32>(769f, -3263f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(350f - 1095f), _wgslsmith_f_op_f32(abs(var_1.a)))), -329f)));
    return Struct_1(!select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, true, true), select(var_1.c.b.a, var_1.c.a.a, var_1.c.a.a.x)), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), var_1.c.a.a, var_1.c.a.a.x)), vec2<u32>(u_input.a.x, 4294967295u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0;
    var_0 = Struct_1(select(!select(arg_2.a, var_0.a, arg_0.a), vec3<bool>(arg_3.a.x, all(select(vec4<bool>(arg_3.a.x, false, false, true), vec4<bool>(arg_2.a.x, false, global0.x, true), false)), (arg_1.c > arg_1.c) && any(vec4<bool>(arg_3.a.x, arg_1.a, false, arg_2.a.x))), !(!(!arg_0.a))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~(~vec2<u32>(arg_3.b.x, 53463u)), ~arg_2.b), vec2<u32>(~_wgslsmith_mod_u32(8963u, 53682u), (91246u | var_0.b.x) | 0u), select(~(~vec2<u32>(12313u, u_input.a.x)), ~abs(vec2<u32>(u_input.a.x, arg_2.b.x)), global0.xy)));
    var_0 = arg_0;
    global0 = arg_2.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, arg_1.c) * _wgslsmith_f_op_vec2_f32(vec2<f32>(415f, arg_1.c) * vec2<f32>(arg_1.c, 609f)))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(829f, 1000f)));
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(8189i, -2147483647i | func_4(func_1(), Struct_3(global0.x, firstLeadingBit(vec2<i32>(-910i, -42896i)), -707f), func_1(), Struct_1(!vec3<bool>(false, false, global0.x), u_input.a.yw)));
    var_0 = firstTrailingBit(-(-41508i << ((32860u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(10133u, 1u, u_input.a.x)) % 32u)) % 32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-690f, -213f, 447f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(717f, 1566f, 1125f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1360f, -802f, 962f))))))));
    var_0 = -2147483647i;
    let var_2 = select(vec3<bool>(global0.x, false, true && global0.x), vec3<bool>(false, true | !(false || global0.x), !global0.x || true), select(true, -31356i != _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-4836i, 0i, 1i)), -vec3<i32>(-1i, -2147483647i, 0i)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 31974u, u_input.a.x, u_input.a.x), u_input.a) < ~(u_input.a.x ^ 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yyz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-865f, -1000f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, 811f, false)), _wgslsmith_f_op_f32(floor(var_1.x)))))), -(vec4<i32>(select(-1i, 2147483647i, global0.x), reverseBits(1i), 1i, -1i) << (~vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), abs(_wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(1i, 1i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, 28834i, 0i), 13004i))), ~(~4294967295u));
}

