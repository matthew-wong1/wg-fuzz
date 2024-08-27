struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    var var_0 = global1.zz;
    global0 = Struct_1(27520u, vec4<bool>(u_input.c != ~(-u_input.b.x), global0.d, !(any(global0.b.wx) | global0.b.x), select(abs(u_input.a), u_input.a, global0.d) == ~101451u), global0.c | _wgslsmith_mult_vec4_u32(global0.c, ~vec4<u32>(1u, global0.e, u_input.a, 1u)), all(!vec4<bool>(false, global0.b.x, false, false)) || global0.d, max(1658u, 15359u));
    let var_1 = Struct_1(abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), global0.c.zx), ~min(u_input.a, u_input.a), u_input.a)), !select(select(select(global0.b, global0.b, global0.b), global0.b, all(vec3<bool>(global0.d, true, global0.b.x))), global0.b, any(global0.b.wxy)), global0.c, true, 1u);
    var var_2 = ~38145u;
    let var_3 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~24835u, _wgslsmith_mod_u32(6955u, var_1.c.x)), min(74148u, 21979u) << (var_1.c.x % 32u)), ~global0.c.x), firstLeadingBit(_wgslsmith_add_u32(1u, max(4865u, u_input.a))));
    return select(!(!var_1.b), !vec4<bool>(any(global0.b.yyz), true, !global0.d, true), select(!global0.b, select(select(!var_1.b, vec4<bool>(true, var_1.d, global0.d, var_1.d), u_input.b.x != 1i), !var_1.b, any(global0.b.yzz)), select(select(!vec4<bool>(var_1.b.x, global0.d, false, var_1.d), vec4<bool>(global0.d, false, false, true), !vec4<bool>(global0.d, false, global0.d, var_1.d)), global0.b, var_1.d)));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<i32>, arg_3: u32) -> vec3<bool> {
    global0 = Struct_1(4294967295u, func_3(), global0.c, !any(select(!global0.b, !global0.b, global0.b.x)), arg_3);
    var var_0 = Struct_1(~3088u, global0.b, firstLeadingBit(vec4<u32>(~42764u, global0.a, u_input.a, 30652u | global0.a)) & global0.c, true, ~_wgslsmith_sub_u32(reverseBits(1u), abs(u_input.a) << (~4294967295u % 32u)));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(trunc(-685f)), _wgslsmith_f_op_f32(f32(-1f) * -689f))) + vec3<f32>(-748f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-234f, -302f)), _wgslsmith_f_op_f32(-global1.x))), -536f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, 227f, 1130f), vec3<f32>(global1.x, -1421f, global1.x), var_0.b.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(647f, global1.x, 822f)))), vec3<f32>(-1000f, global1.x, _wgslsmith_f_op_f32(select(arg_0.x, global1.x, true)))))), true & all(vec4<bool>(global0.b.x, !global0.b.x, true, false))));
    let var_1 = !var_0.b.x || false;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-845f, -1000f)), _wgslsmith_f_op_f32(1113f - -1126f)), -1079f, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + -786f), arg_0.x, _wgslsmith_f_op_f32(-global1.x))))));
    return vec3<bool>(func_3().x, ~(~4294967295u) >= ~abs(_wgslsmith_clamp_u32(44285u, 1u, 62343u)), var_0.d);
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global0 = Struct_1(72436u, !(!select(vec4<bool>(global0.d, true, global0.d, false), arg_0.b, all(vec4<bool>(global0.b.x, true, true, global0.b.x)))), ~arg_0.c, any(func_2(global1.xy, ~reverseBits(-42729i), select(vec4<i32>(-2147483647i, u_input.c, 17251i, u_input.b.x), firstLeadingBit(vec4<i32>(29622i, u_input.c, u_input.b.x, u_input.b.x)), !global0.b), global0.c.x)), _wgslsmith_sub_u32(arg_0.a, 22936u));
    var var_0 = firstTrailingBit(_wgslsmith_add_vec2_u32(arg_0.c.yz, ~vec2<u32>(global0.a, 54315u)));
    let var_1 = vec2<bool>(all(!vec4<bool>(arg_0.d, true, true, true)), any(global0.b));
    let var_2 = -_wgslsmith_sub_i32(~max(u_input.c, max(33149i, u_input.b.x)), abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(-51735i, 1i, 5468i, -1i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1347i))));
    var var_3 = arg_0.c.xxx;
    return !vec4<bool>(all(global0.b.yx), false, var_1.x, 183u >= _wgslsmith_add_u32(37623u, ~var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(global1.x, 505f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(global1.x)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global1.x)), -856f, true))), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -129f), -498f))));
    global0 = Struct_1(9373u, !func_1(Struct_1(u_input.a, vec4<bool>(true, global0.b.x, false, global0.b.x), global0.c, false, firstLeadingBit(global0.e))), global0.c, true, global0.c.x);
    var var_1 = !(!global0.b.yw);
    var var_2 = Struct_1(7444u, global0.b, ~(~(~global0.c) >> (_wgslsmith_mult_vec4_u32(~global0.c, vec4<u32>(4294967295u, global0.a, 62497u, 106598u)) % vec4<u32>(32u))), var_1.x, global0.c.x);
    var_1 = vec2<bool>(var_1.x, true != any(global0.b));
    var var_3 = Struct_1(~abs(var_2.c.x), select(var_2.b, var_2.b, !global0.b), _wgslsmith_clamp_vec4_u32(var_2.c | countOneBits(~var_2.c), vec4<u32>(u_input.a, firstLeadingBit(u_input.a) ^ ~u_input.a, u_input.a, u_input.a), global0.c), true, 17831u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1804f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1349f))), _wgslsmith_f_op_f32(f32(-1f) * -1278f), var_0.x), var_2.c.x | _wgslsmith_div_u32(~(~u_input.a), ~4294967295u), ~(19042u ^ _wgslsmith_sub_u32(1u, var_2.c.x)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(57110u, 1u << (var_2.e % 32u)), reverseBits(select(vec2<u32>(global0.a, u_input.a), global0.c.wz, vec2<bool>(true, false)))) % 32u));
}

