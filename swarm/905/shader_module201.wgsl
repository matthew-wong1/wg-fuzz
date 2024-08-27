struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(-1i, 1i));

var<private> global1: Struct_4;

var<private> global2: i32 = -21675i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = arg_0.yz;
    var var_1 = Struct_1(-11613i, global1.a.wxx, false, 1u);
    var var_2 = var_1.d;
    global2 = _wgslsmith_mult_i32(var_1.a, global0.a.x);
    var_2 = _wgslsmith_div_u32(global1.b.x, ~1u);
    return Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, u_input.b), global0.a), abs(vec2<i32>(-24663i, 2147483647i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, var_1.b.x, -2156f))))), !all(select(vec4<bool>(var_1.c, false, false, false), arg_0, var_1.c)), countOneBits(abs(reverseBits(0u)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<i32> {
    return _wgslsmith_add_vec3_i32(arg_0, vec3<i32>(34019i, abs(-1i), arg_1.a.x));
}

fn func_1(arg_0: Struct_3) -> u32 {
    global1 = Struct_4(_wgslsmith_f_op_vec4_f32(global1.a * _wgslsmith_f_op_vec4_f32(sign(global1.a))), ~global1.b >> (_wgslsmith_mult_vec4_u32(global1.b, global1.b) % vec4<u32>(32u)), -(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, 0i, 39568i, global0.a.x), vec4<i32>(u_input.b, u_input.b, -2147483647i, 1i)) << (0u % 32u)));
    global1 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(2138f * _wgslsmith_f_op_f32(global1.a.x * global1.a.x)), _wgslsmith_f_op_f32(global1.a.x * -791f), _wgslsmith_f_op_f32(842f - global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2131f))))), ~global1.b, _wgslsmith_mult_i32(firstTrailingBit(global1.c), global1.c));
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(func_3(-vec3<i32>(arg_0.a.x, 1i, global0.a.x), arg_0, func_2(vec4<bool>(false, true, false, true), ~global1.b.wz)), vec3<i32>(~99429i, global1.c, -u_input.c)), arg_0.a.x, -global0.a.x);
    var var_1 = -715f;
    var var_2 = !(!vec3<bool>(420f > func_2(vec4<bool>(true, false, false, true), global1.b.wx).a.b.x, any(vec2<bool>(true, true)), func_2(vec4<bool>(true, true, true, true), ~global1.b.ww).a.c));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1i;
    var var_0 = Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global1.a.zyz * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(global1.a.yyy, vec3<f32>(160f, -1449f, global1.a.x)), global1.a.xxx))))), true, _wgslsmith_add_u32(~_wgslsmith_mult_u32(23745u, 27936u) | _wgslsmith_add_u32(~4294967295u, 109604u | global1.b.x), max(~abs(global1.b.x), func_1(Struct_3(global0.a)))));
    let var_1 = all(vec3<bool>(true, var_0.c, all(vec4<bool>(false, global1.a.x <= var_0.b.x, true, true))));
    let var_2 = func_2(select(vec4<bool>(!(!var_1), true, true, !(!var_1)), !(!vec4<bool>(true, var_1, var_0.c, true)), !vec4<bool>(true, var_0.c, var_1, any(vec3<bool>(true, var_1, true)))), _wgslsmith_add_vec2_u32(global1.b.wx, firstTrailingBit(vec2<u32>(1u, min(var_0.d, u_input.a.x))))).a;
    global2 = var_2.a;
    var var_3 = -(~(-_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(32100i, global1.c, var_2.a), vec3<i32>(u_input.b, -17097i, var_0.a)), min(vec3<i32>(u_input.c, global0.a.x, 1i), vec3<i32>(18885i, 2147483647i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(0u, 1u), global1.a.x);
}

