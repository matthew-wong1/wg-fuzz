struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<f32> = vec4<f32>(1362f, -1000f, 1431f, -1490f);

var<private> global2: Struct_4 = Struct_4(435f, 376u, true, Struct_1(vec4<f32>(-1000f, -1250f, 847f, -479f), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true)));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: bool, arg_3: Struct_3) -> i32 {
    var var_0 = global2.d.c;
    var var_1 = u_input.c;
    var_0 = vec4<bool>(!arg_2 | all(vec3<bool>(global2.d.c.x, true, arg_2)), arg_2, true, true);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(780f))), arg_0.x, _wgslsmith_f_op_f32(-932f * global2.a), global1.x);
    var_0 = global2.d.b;
    return _wgslsmith_dot_vec3_i32(abs(reverseBits(-vec3<i32>(global0.x, -52752i, 2147483647i))), vec3<i32>(1i, -(~global0.x), -_wgslsmith_sub_i32(2147483647i, 4710i))) ^ (u_input.b.x | -(~(~global0.x)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a)) * _wgslsmith_f_op_f32(round(625f))))))), _wgslsmith_f_op_f32(select(arg_2.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3 - 797f), _wgslsmith_f_op_f32(-arg_3))) - _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(281f + arg_2.c.a.x))), true)));
    let var_0 = vec4<bool>(!(!(!arg_2.c.c.x)), true, !any(select(select(vec3<bool>(global2.d.c.x, true, true), vec3<bool>(arg_2.c.c.x, false, global2.d.c.x), vec3<bool>(global2.d.c.x, true, arg_2.c.c.x)), arg_2.c.b.yyz, select(global2.d.c.zxz, arg_2.c.c.yyz, vec3<bool>(arg_2.c.b.x, true, global2.d.b.x)))), arg_2.c.b.x);
    var var_1 = global2.d;
    let var_2 = 4294967295u;
    let var_3 = arg_2.c;
    return !var_3.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32) -> bool {
    global0 = vec2<i32>(-1i) * -min(vec2<i32>(func_2(vec3<f32>(-896f, global1.x, -1404f), 20116u, false, arg_1), 1i), u_input.a.wx);
    let var_0 = arg_0.x;
    let var_1 = arg_1;
    global2 = Struct_4(-228f, countOneBits(global2.b) ^ select(min(8764u, u_input.d.x ^ 7632u), 49979u, true & all(vec4<bool>(true, true, global2.d.c.x, global2.c))), !(!(!all(vec3<bool>(global2.d.b.x, global2.d.b.x, false)))), Struct_1(vec4<f32>(global1.x, 172f, _wgslsmith_f_op_f32(-global1.x), -1656f), func_3(arg_1, var_1, Struct_2(_wgslsmith_sub_u32(arg_1.a, 13548u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.a, 336f, -202f, 266f), vec4<f32>(global2.a, 454f, global2.a, global2.d.a.x))), global2.d, 0u, ~var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.a.x - -247f) - _wgslsmith_f_op_f32(1961f * -1425f))), global2.d.b));
    var var_2 = ~(firstTrailingBit(vec2<i32>(-1i, -24456i)) >> (vec2<u32>(1u, ~global2.b) % vec2<u32>(32u))) >> (arg_0 % vec2<u32>(32u));
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(global2.d.a.x, firstLeadingBit(global2.b), global2.d.c.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d.a) * vec4<f32>(594f, global2.d.a.x, global2.a, -250f))), vec4<bool>(func_1(~u_input.e.yy, Struct_3(u_input.d.x), _wgslsmith_mult_i32(38061i, global0.x)), true, all(global2.d.b), true), !(!select(vec4<bool>(false, false, true, global2.d.c.x), global2.d.c, global2.d.b))));
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.d.a.xy * vec2<f32>(-341f, -469f)))), vec2<f32>(279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global2.a))))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))))), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1892f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810f * global1.x))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - global2.a)));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-435f - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1093f) - var_1.x), 880f, _wgslsmith_f_op_f32(abs(1250f)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.a, 844f, -1094f, global2.a))))))));
    let var_2 = global2.d;
    let var_3 = min(abs(-u_input.c), 34887i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_2.a.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-2324f, -907f) * var_1.xw)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_0.x)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(-1322f * -544f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.xx * var_2.a.ww)))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~reverseBits(vec4<u32>(global2.b, 30088u, 116595u, 45664u)), vec4<u32>(reverseBits(u_input.e.x), firstTrailingBit(8102u), u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.b, global2.b, 0u), vec4<u32>(6038u, global2.b, u_input.e.x, u_input.e.x)))), vec4<u32>(reverseBits(0u) | u_input.e.x, _wgslsmith_sub_u32(u_input.d.x, 3321u), 0u, ~61304u << ((1u ^ global2.b) % 32u))), global1.x, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(ceil(-538f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1211f))), 2481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(157f))) + _wgslsmith_f_op_f32(sign(166f)))));
}

