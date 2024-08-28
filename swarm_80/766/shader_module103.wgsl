struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

var<private> global1: array<vec3<bool>, 1>;

var<private> global2: vec2<f32> = vec2<f32>(1862f, 1023f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    var var_0 = Struct_1(true, false && all(global1[_wgslsmith_index_u32(u_input.c.x, 1u)]));
    var var_1 = Struct_1(!(any(select(vec2<bool>(arg_1.a, true), vec2<bool>(false, false), false)) != true), false);
    global2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -227f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1223f)));
    let var_2 = Struct_1(var_1.b, var_1.b);
    var var_3 = var_0.b;
    return u_input.c.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> vec2<f32> {
    let var_0 = (arg_0 ^ vec4<i32>(arg_0.x, countOneBits(u_input.a.x << (arg_1 % 32u)), _wgslsmith_div_i32(58593i, firstLeadingBit(arg_0.x)), 2147483647i)) | abs(_wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(2614i, 2147483647i, u_input.b, 21303i), vec4<i32>(21408i, -41670i, u_input.b, arg_0.x))), vec4<i32>(-arg_0.x, u_input.b, _wgslsmith_div_i32(arg_0.x, 0i), _wgslsmith_clamp_i32(arg_0.x, -23840i, -39503i)), ~vec4<i32>(1288i, u_input.b, -2147483647i, arg_0.x)));
    global1 = array<vec3<bool>, 1>();
    let var_1 = Struct_2(false & (func_3(-1098f, Struct_2(true), select(u_input.c, u_input.c, vec4<bool>(true, true, true, true))) <= 4808u));
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-328f, global2.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-172f, _wgslsmith_f_op_f32(abs(global2.x))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.x, global2.x))))), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_div_f32(2584f, global2.x);
    return vec2<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -960f));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: i32) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(-754f, global2.x)))), _wgslsmith_f_op_vec2_f32(func_2(-vec4<i32>(u_input.b, -1i, 2147483647i, arg_2) << (vec4<u32>(1u, 0u, u_input.c.x, u_input.c.x) % vec4<u32>(32u)), ~(0u | u_input.c.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-250f, global2.x), vec2<f32>(arg_0, -147f)))), vec2<f32>(_wgslsmith_f_op_f32(step(arg_0, global2.x)), _wgslsmith_f_op_f32(-global2.x))))));
    var var_0 = ~arg_1;
    var var_1 = vec4<bool>(true, all(vec2<bool>(true, true)), _wgslsmith_div_i32(_wgslsmith_add_i32(min(arg_2, arg_2), abs(-30723i)), ~arg_2 ^ select(u_input.a.x, 49955i, true)) > 50452i, true);
    var var_2 = Struct_2(any(select(select(vec2<bool>(var_1.x, false), var_1.xx, var_1.x), select(vec2<bool>(false, false), select(var_1.ww, var_1.yy, false), all(vec3<bool>(var_1.x, var_1.x, var_1.x))), var_1.x)));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), global2.x);
    return Struct_2(all(!select(vec4<bool>(false, true, var_2.a, var_1.x), vec4<bool>(var_2.a, false, false, var_2.a), var_2.a)) != (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.c.xy, u_input.c.yz), ~1u) == (countOneBits(var_0.x) >> (_wgslsmith_clamp_u32(var_0.x, var_0.x, 35682u) % 32u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> bool {
    global0 = array<vec3<bool>, 14>();
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-759f * global2.x))), arg_0.wxx, ~(-5484i)).a);
    var var_1 = ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 12395i), vec3<i32>(u_input.b, 7466i, u_input.b)), _wgslsmith_mod_i32(u_input.b, -2147483647i), firstTrailingBit(4566i)), vec4<i32>(-2147483647i, 51851i, u_input.b, 19878i) & -vec4<i32>(-18649i, u_input.b, -2147483647i, -2147483647i), vec4<i32>(_wgslsmith_mod_i32(u_input.b, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.b), i32(-1i) * -16024i, u_input.a.x ^ u_input.a.x)) | vec4<i32>(u_input.b, -22364i, u_input.a.x, 4168i));
    var var_2 = var_1.x;
    let var_3 = -1i >= u_input.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = array<vec3<bool>, 14>();
    var var_1 = ~_wgslsmith_mult_u32(u_input.c.x, ~min(select(u_input.c.x, 0u, var_0), 35898u));
    let var_2 = _wgslsmith_clamp_u32(~abs(u_input.c.x), abs(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.xy, vec2<u32>(24955u, u_input.c.x)), vec2<u32>(u_input.c.x, 57150u) & u_input.c.ww)), u_input.c.x);
    var var_3 = !(!(!any(global1[_wgslsmith_index_u32(u_input.c.x, 1u)])) | func_4(~vec4<u32>(3655u, var_2, var_2, 1u), func_1(2338f, u_input.c.zzy, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1668f + 283f) * _wgslsmith_f_op_f32(step(-146f, global2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x))), _wgslsmith_mult_u32(4294967295u >> (1u % 32u), 0u), abs(u_input.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.x, 355f), _wgslsmith_f_op_f32(862f * 1414f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x)))))));
}

