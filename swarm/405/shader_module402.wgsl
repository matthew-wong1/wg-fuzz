struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<bool>;

var<private> global2: vec2<f32> = vec2<f32>(1377f, -268f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -408f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -872f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a, global2.x)))))))));
    global2 = vec2<f32>(-1000f, 573f);
    var var_0 = 14668u;
    var_0 = ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(~29403u, _wgslsmith_mult_u32(arg_0.a.x, ~1u)), arg_0.a.x);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global2.x))));
    return _wgslsmith_clamp_i32(-2147483647i, abs(-1035i), 18845i);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> bool {
    let var_0 = arg_0.a.x;
    global1 = vec3<bool>(1u > var_0, ~_wgslsmith_clamp_i32(func_3(Struct_1(vec3<u32>(0u, arg_0.a.x, 1u), vec3<i32>(u_input.a, arg_0.b.x, arg_0.b.x), arg_0.c, true)), -12946i, 38082i) > _wgslsmith_mod_i32(~(-2147483647i), select(reverseBits(arg_0.b.x), -arg_0.b.x, all(vec4<bool>(arg_0.d, false, false, global1.x)))), false);
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(26792u, arg_0.a.x, arg_0.a.x, var_0), vec4<u32>(var_0, 46868u, 0u, var_0)), ~vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, var_0)), _wgslsmith_div_u32(172760u, ~var_0)), countOneBits(_wgslsmith_mod_u32(arg_0.a.x, var_0)), var_0), reverseBits(~reverseBits(vec3<i32>(0i, arg_0.b.x, u_input.a))), !arg_0.c, false);
    global0 = Struct_2(global2.x);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2547f) + global2.x), global0.a);
    return !arg_0.c.x;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool) -> vec2<u32> {
    let var_0 = all(vec4<bool>(true, true, true, true));
    var var_1 = global0.a;
    var var_2 = Struct_1(vec3<u32>(arg_0, _wgslsmith_dot_vec2_u32(~arg_1, vec2<u32>(select(1u, 4740u, global1.x), 1u)), ~arg_0), -(~select(vec3<i32>(u_input.a, 2147483647i, -28162i), vec3<i32>(u_input.a, u_input.a, 2147483647i), global1.x) ^ vec3<i32>(~u_input.a, u_input.a, -u_input.a)), select(vec2<bool>((arg_0 != 1u) & false, all(vec2<bool>(global1.x, global1.x))), vec2<bool>(true, global1.x), vec2<bool>(true, true)), !(func_2(Struct_1(vec3<u32>(0u, arg_1.x, 4294967295u), vec3<i32>(2147483647i, u_input.a, u_input.a), vec2<bool>(true, true), arg_2), vec3<bool>(arg_2, true, global1.x)) && !global1.x) | true);
    var var_3 = Struct_1(~(~vec3<u32>(~39482u, countOneBits(var_2.a.x), arg_0)), _wgslsmith_mult_vec3_i32(~(-vec3<i32>(u_input.a, -1i, 1i)), var_2.b), !global1.xz, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(213f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x + global0.a), global2.x)), _wgslsmith_f_op_f32(-global0.a), 404f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 1339f, global2.x, 706f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, -1295f, global2.x, 235f) * vec4<f32>(global0.a, global0.a, global0.a, global0.a)))))), vec4<f32>(-445f, -274f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x + global0.a))), _wgslsmith_f_op_f32(-global0.a))));
    return var_2.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), func_1(1u, vec2<u32>(67896u, 961u), false)), ~(0u >> (0u % 32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-199f, _wgslsmith_f_op_f32(select(-119f, global0.a, true)))) - _wgslsmith_f_op_f32(-668f * -178f)) + -500f));
    var_0 = 1157u;
    var_0 = ~(~48256u);
    global1 = select(select(!(!select(vec3<bool>(false, true, global1.x), vec3<bool>(true, false, true), vec3<bool>(global1.x, false, global1.x))), !select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, false, false), false), vec3<bool>(select(any(vec3<bool>(false, global1.x, global1.x)), !global1.x, any(vec2<bool>(true, false))), true, true && select(false, true, false))), !(!(!(!vec3<bool>(global1.x, global1.x, global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2317f * var_1), 1f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1 - var_1)))) < _wgslsmith_div_f32(-1058f, -524f));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(global0.a, -708f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(abs(var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(281f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(270f - -808f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(942f * global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.a, u_input.a, -15606i), ~2813u, -1i, firstLeadingBit(vec3<u32>(func_1(~1u, vec2<u32>(1u, 1u), !global1.x).x, 4294967295u, countOneBits(~1u))));
}

