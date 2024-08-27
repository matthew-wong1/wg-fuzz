struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = -147f;

var<private> global2: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = ~(~(-(vec3<i32>(1i, 1i, -2147483647i) & vec3<i32>(2147483647i, 2147483647i, u_input.b.x))));
    global0 = _wgslsmith_f_op_f32(select(-1521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-960f, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x))) - -641f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.a.x)), -1472f)), !all(!global2.yy)));
    var var_1 = 4294967295u;
    var var_2 = arg_0.d;
    global0 = arg_0.a.x;
    return arg_0.b.b;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    let var_0 = Struct_2(!(!vec3<bool>(global2.x, 27296u < u_input.a.x, false & global2.x)), func_3(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(535f, -942f))), Struct_2(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x)), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, true, global2.x, global2.x), true), Struct_1(!vec3<bool>(true, true, global2.x), vec2<bool>(global2.x, global2.x), global2.x, -arg_0), u_input.a.x)));
    let var_1 = vec4<f32>(635f, _wgslsmith_f_op_f32(f32(-1f) * -2748f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-768f, _wgslsmith_f_op_f32(f32(-1f) * -536f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1752f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -912f)), -196f));
    var var_2 = abs(vec3<u32>(4294967295u, 15000u, 3508u));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(var_1.xw));
    var var_4 = select(vec4<bool>(select(global2.x, var_0.b.x, true), var_0.b.x, global2.x, false), !vec4<bool>(~(-22669i) > u_input.b.x, true && (global2.x != true), !(!global2.x), !var_0.a.x), select(any(vec3<bool>(false, all(vec4<bool>(var_0.a.x, global2.x, var_0.a.x, var_0.b.x)), var_0.b.x)), func_3(Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, -920f) - var_1.xx), Struct_2(vec3<bool>(var_0.b.x, global2.x, var_0.a.x), var_0.b), vec4<bool>(false, true, var_0.a.x, global2.x), Struct_1(vec3<bool>(global2.x, global2.x, global2.x), vec2<bool>(true, true), var_0.b.x, u_input.b.x), ~var_2.x)).x, true));
    return vec3<bool>(!var_0.b.x, true, true);
}

fn func_1(arg_0: Struct_4, arg_1: u32, arg_2: f32) -> vec3<bool> {
    var var_0 = 997u;
    var var_1 = Struct_1(select(select(select(func_2(arg_0.d.d), vec3<bool>(global2.x, false, arg_0.d.b.x), !global2.x), vec3<bool>(35813u != arg_1, true, true), vec3<bool>(false, any(vec2<bool>(true, true)), -1i > u_input.b.x)), !(!select(arg_0.d.a, arg_0.b.b, arg_0.b.b)), any(vec4<bool>(arg_0.d.a.x, func_3(Struct_4(arg_0.a, Struct_2(arg_0.b.b, vec3<bool>(true, true, global2.x)), arg_0.c, Struct_1(arg_0.b.a, arg_0.d.a.yz, arg_0.b.b.x, u_input.b.x), u_input.a.x)).x, global2.x, true))), !vec2<bool>(arg_0.c.x, true), arg_0.c.x, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(1i, arg_0.d.d)), u_input.b));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(535f, arg_0.a.x, -1000f), vec3<f32>(arg_0.a.x, arg_2, -802f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0.a.x, arg_0.a.x) + vec3<f32>(arg_2, -198f, -1180f)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, arg_0.a.x, arg_2), vec3<f32>(1000f, 500f, -279f))))), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-206f, 801f)), arg_2, _wgslsmith_div_f32(-916f, 1000f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-332f, -325f, _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-400f, arg_2, arg_0.a.x)))));
    var_0 = ~arg_1;
    global2 = !(!var_1.a);
    return select(func_2(_wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, u_input.b.x), _wgslsmith_mod_i32(-30657i, u_input.b.x)))), vec3<bool>(any(select(arg_0.c, vec4<bool>(true, var_1.b.x, var_1.a.x, false), !var_1.c)), false, var_1.b.x), arg_0.b.a);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-543f + 374f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(max(arg_2, arg_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(153f, 135f, -136f, arg_2)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(729f, arg_2), _wgslsmith_f_op_f32(min(-339f, -1377f)), -728f, arg_2))))));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -1049f))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-568f - _wgslsmith_f_op_f32(arg_2 + var_0.x))))) * -992f);
    global1 = 468f;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, global2.x, func_4(~_wgslsmith_add_vec2_i32(u_input.b >> (u_input.a % vec2<u32>(32u)), abs(u_input.b)), Struct_2(vec3<bool>(any(global2.yy), global2.x, global2.x), select(func_1(Struct_4(vec2<f32>(408f, -674f), Struct_2(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x)), vec4<bool>(false, false, global2.x, global2.x), Struct_1(vec3<bool>(global2.x, global2.x, true), vec2<bool>(global2.x, global2.x), false, u_input.b.x), 1u), u_input.a.x, 250f), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, global2.x, global2.x), global2.x), any(vec4<bool>(true, global2.x, global2.x, global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-185f, -1208f)))) - -470f)), min(u_input.b.x, u_input.b.x) >= u_input.b.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1458f) * _wgslsmith_div_f32(1000f, -148f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1175f, _wgslsmith_f_op_f32(-1000f - 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1437f, 730f))) * _wgslsmith_f_op_f32(f32(-1f) * -1518f))));
    var var_2 = vec4<bool>(!(!(var_0.x | global2.x) | all(func_1(Struct_4(vec2<f32>(-249f, -278f), Struct_2(vec3<bool>(false, true, true), var_0.www), var_0, Struct_1(vec3<bool>(var_0.x, true, false), global2.xx, true, u_input.b.x), 63066u), 8615u, 1000f).zz)), true, !var_0.x, false);
    let var_3 = ~u_input.a;
    var var_4 = _wgslsmith_div_i32(-1i << (u_input.a.x % 32u), 1i);
    let var_5 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.a.x, 20422u, var_3.x, 0u))), _wgslsmith_mult_vec4_u32(vec4<u32>(39965u, ~_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 4294967295u), ~_wgslsmith_div_u32(21225u, 80226u), min(var_3.x, u_input.a.x ^ u_input.a.x)), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.a.x, var_3.x, 63025u, 8834u)), ~(~vec4<u32>(77448u, 0u, 0u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-579f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(1000f))))), ~firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(0u, var_5), ~15782u, var_5, var_5)));
}

