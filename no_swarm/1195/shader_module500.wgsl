struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<vec2<u32>, 29>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = true;
    global1 = select(!(!(!vec2<bool>(var_0, var_0))), !select(vec2<bool>(false, true), vec2<bool>(-1162f > global0.x, u_input.a == arg_0), select(vec2<bool>(global1.x, false), !vec2<bool>(global1.x, false), select(vec2<bool>(false, false), vec2<bool>(global1.x, true), vec2<bool>(false, true)))), !(!(!var_0)));
    global1 = vec2<bool>(true, true);
    let var_1 = Struct_1(~_wgslsmith_add_i32(~(-u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -42079i), u_input.b.zyx), _wgslsmith_add_i32(1i, u_input.b.x))), 0u, ~vec4<u32>(u_input.c, u_input.a, arg_0, _wgslsmith_sub_u32(arg_0, arg_0 | u_input.c)));
    let var_2 = vec3<u32>(countOneBits(arg_0), arg_0, reverseBits(arg_0));
    return var_1;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    global1 = !select(select(arg_0.xw, arg_0.xy, vec2<bool>(true, global1.x)), vec2<bool>(!global1.x && true, global1.x), true);
    var var_0 = _wgslsmith_mult_vec4_u32(arg_1.c, abs(arg_1.c));
    let var_1 = func_2(4294967295u);
    var var_2 = _wgslsmith_f_op_f32(-global0.x);
    global2 = array<vec2<u32>, 29>();
    return arg_1;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = 483f;
    var var_1 = !vec4<bool>(2147483647i == min(_wgslsmith_mod_i32(arg_0.x, arg_0.x), u_input.b.x | -51413i), true, global1.x, true);
    global1 = var_1.xx;
    global1 = var_1.xy;
    let var_2 = func_3(!vec4<bool>(var_1.x, global1.x, true, true), func_2(~1u));
    return u_input.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(u_input.b.x ^ ~arg_0.a, _wgslsmith_mod_i32(-2060i, -1i)) >> ((u_input.a << (~u_input.c % 32u)) % 32u);
    var_0 = _wgslsmith_div_i32(arg_0.a, u_input.b.x);
    global2 = array<vec2<u32>, 29>();
    let var_1 = arg_2;
    var var_2 = !(!global1.x);
    return func_2(_wgslsmith_mult_u32(~func_3(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, global1.x), vec4<bool>(false, global1.x, false, global1.x)), arg_0).b, 4294967295u));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    global2 = array<vec2<u32>, 29>();
    let var_0 = func_4(Struct_1(-_wgslsmith_dot_vec2_i32(u_input.b.xw, ~u_input.b.zx), arg_0.c.x, select(vec4<u32>(arg_1.x, u_input.c, arg_0.b, arg_1.x), vec4<u32>(arg_0.c.x, arg_1.x, arg_0.b, 71415u), select(vec4<bool>(arg_2, arg_2, false, global1.x), vec4<bool>(arg_2, false, arg_2, global1.x), false)) << (arg_0.c % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(573f, -640f), vec2<f32>(530f, global0.x), global1.x))))))), _wgslsmith_sub_u32(~firstLeadingBit(~0u), arg_1.x));
    var var_1 = vec2<i32>(_wgslsmith_clamp_i32((i32(-1i) * -31807i) << ((max(u_input.d.x, 4294967295u) ^ arg_1.x) % 32u), func_2(arg_0.b).a, var_0.a), arg_0.a);
    global1 = select(vec2<bool>(true, true), select(vec2<bool>(all(select(vec2<bool>(false, global1.x), vec2<bool>(arg_2, arg_2), arg_2)), any(vec3<bool>(true, true, false))), vec2<bool>(any(select(vec3<bool>(true, arg_2, false), vec3<bool>(false, global1.x, arg_2), global1.x)), !arg_2), true), any(select(vec4<bool>(var_1.x > -1i, -1818f >= global0.x, false, any(vec4<bool>(global1.x, true, global1.x, true))), !select(vec4<bool>(global1.x, true, arg_2, true), vec4<bool>(true, true, arg_2, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x)), !arg_2)));
    global2 = array<vec2<u32>, 29>();
    return Struct_1(8284i, 4294967295u, func_2(_wgslsmith_mod_u32(_wgslsmith_add_u32(~arg_1.x, _wgslsmith_mod_u32(1u, u_input.d.x)), arg_1.x)).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_1(-2147483647i, ~func_1(u_input.b.zx), max(vec4<u32>(0u, u_input.c, 52212u, u_input.a) & vec4<u32>(1u, u_input.c, 4294967295u, u_input.d.x), ~vec4<u32>(u_input.a, u_input.d.x, u_input.a, u_input.c))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -1946f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(-global0.x)))), ~func_3(vec4<bool>(global1.x, global1.x, global1.x, global1.x), Struct_1(-86641i, 0u, vec4<u32>(4294967295u, 4294967295u, 0u, u_input.c))).c.x), vec2<u32>(u_input.c ^ u_input.d.x, 53565u), false);
    var var_1 = func_3(vec4<bool>(false, false, false, ~abs(4294967295u) <= var_0.c.x), Struct_1(var_0.a, var_0.c.x, var_0.c));
    let var_2 = 1u;
    var_1 = func_3(!vec4<bool>(false, false, u_input.b.x != ~1i, false), Struct_1(firstLeadingBit(var_1.a), _wgslsmith_mod_u32(var_2, 17333u), vec4<u32>(25121u, ~func_1(u_input.b.zy), ~_wgslsmith_dot_vec3_u32(var_1.c.yyz, vec3<u32>(var_2, 49618u, 4294967295u)), ~7957u)));
    global1 = vec2<bool>(true, global1.x);
    var_1 = func_2(var_0.b);
    var_1 = func_2(1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, var_1.c.x) >> (_wgslsmith_mult_vec2_u32(max(u_input.d, select(var_1.c.wx, vec2<u32>(1u, var_0.b), vec2<bool>(true, global1.x))), countOneBits(firstTrailingBit(vec2<u32>(65022u, var_0.b)))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -434f))), global0.x) + _wgslsmith_div_vec2_f32(vec2<f32>(-182f, global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1467f, global0.x), vec2<f32>(321f, 182f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1000f))))), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-44036i, 10518i), u_input.b.x), abs(abs(u_input.b.xw)))));
}

