struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<u32>;

var<private> global2: bool = true;

var<private> global3: u32;

var<private> global4: Struct_3 = Struct_3(-26545i, true, vec2<i32>(-1i, 0i), Struct_2(74946u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> f32 {
    global4 = Struct_3(1136i, false, countOneBits(_wgslsmith_add_vec2_i32(select(global4.c, vec2<i32>(1i, 1974i), true), ~vec2<i32>(global4.c.x, -2147483647i))) >> (_wgslsmith_mod_vec2_u32(global1.wy, _wgslsmith_sub_vec2_u32(~vec2<u32>(global4.d.a, u_input.a), vec2<u32>(u_input.a, global4.d.a))) % vec2<u32>(32u)), Struct_2(20022u));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 525f));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>) -> vec3<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(355f)))))), _wgslsmith_f_op_f32(f32(-1f) * -865f), _wgslsmith_f_op_f32(func_3(u_input.a)), _wgslsmith_f_op_f32(round(global0.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(abs(var_0.x))), 1f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_0.zwz, global0.xwy)))))));
    var var_2 = Struct_3(abs(arg_0.d), !global4.b, _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(1i, -1i)), max(select(vec2<i32>(arg_0.d, -1i), max(global4.c, vec2<i32>(22972i, 14501i)), select(arg_1, arg_1, vec2<bool>(true, arg_1.x))), global4.c), global4.c), global4.d);
    var_2 = Struct_3(36751i, !var_2.b, abs(vec2<i32>(~1i, global4.c.x) | global4.c), Struct_2(_wgslsmith_div_u32(24924u, ~(~arg_0.c))));
    var_0 = vec4<f32>(arg_0.b, var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1168f)), -556f))))), var_1.x);
    return vec3<u32>(1644u, global4.d.a, 0u);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<f32>) -> vec4<f32> {
    let var_0 = global1.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))))));
    let var_2 = Struct_4(!global4.b != any(select(select(vec4<bool>(global4.b, global4.b, global4.b, global4.b), vec4<bool>(false, global4.b, false, global4.b), vec4<bool>(global4.b, global4.b, global4.b, global4.b)), vec4<bool>(global4.b, false, global4.b, global4.b), global4.b)), _wgslsmith_f_op_f32(-513f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 228f) * _wgslsmith_f_op_f32(trunc(247f))), -646f)), global4.d.a & ~0u, global4.a, _wgslsmith_sub_vec3_u32(~func_2(Struct_4(false, 684f, 27240u, global4.a, global1.wyy), vec2<bool>(global4.b, global4.b)), vec3<u32>(79844u, global1.x, ~_wgslsmith_add_u32(global4.d.a, u_input.a))));
    let var_3 = vec3<u32>(39551u, abs(4294967295u) ^ ((_wgslsmith_dot_vec4_u32(vec4<u32>(5171u, var_2.c, global4.d.a, u_input.a), vec4<u32>(17511u, 4294967295u, 0u, 1u)) << (func_2(Struct_4(global4.b, 706f, 33874u, global4.a, global1.xzy), vec2<bool>(true, var_2.a)).x % 32u)) << (4294967295u % 32u)), _wgslsmith_add_u32(func_2(Struct_4(-542f > arg_2.x, arg_1, 0u | global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(12722i, var_2.d, 4862i), vec3<i32>(var_2.d, var_2.d, global4.c.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(12757u, u_input.a, var_2.e.x), global1.xxz, global1.xyx)), !(!vec2<bool>(global4.b, var_2.a))).x, abs(_wgslsmith_div_u32(~19084u, global4.d.a ^ u_input.a))));
    var var_4 = Struct_2(var_3.x);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1174f))))), _wgslsmith_f_op_f32(func_3(~1u)), -827f, 550f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-990f, -450f, global0.x, _wgslsmith_f_op_f32(step(global0.x, global0.x))), vec4<f32>(444f, 426f, _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(ceil(global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1041f * global0.x) - _wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-357f))), global0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(-263f, -669f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, global0.x, 1358f))), _wgslsmith_div_vec3_f32(global0.xyz, vec3<f32>(-332f, -1387f, -611f)))))));
    let var_0 = Struct_3(global4.a, true, reverseBits(~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global4.c, global4.c), vec2<i32>(global4.a, global4.a) >> (global1.xy % vec2<u32>(32u)))), global4.d);
    global2 = global4.b & (_wgslsmith_clamp_u32(0u, var_0.d.a, ~_wgslsmith_dot_vec2_u32(global1.yx, vec2<u32>(u_input.a, var_0.d.a))) != ~4294967295u);
    let var_1 = global4.c.x;
    var var_2 = -203f;
    var var_3 = min(max(vec4<i32>(~1i, -72196i, 29001i, _wgslsmith_add_i32(var_0.a, -164i)), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(-13511i, 26026i, global4.c.x, -34510i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global4.c.x, 17503i, var_0.a, -1i), vec4<i32>(var_0.c.x, var_0.a, global4.c.x, 12174i)), vec4<i32>(-2147483647i, var_0.c.x, -2147483647i, var_0.c.x))), ~(vec4<i32>(var_0.c.x, global4.a, var_0.c.x, 48945i) & vec4<i32>(var_0.c.x, -1i, -2147483647i, -25938i))) ^ (vec4<i32>(-1i) * -countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a, var_0.c.x, -44902i, 0i), vec4<i32>(global4.c.x, -2147483647i, var_0.a, 1i), vec4<i32>(var_0.c.x, var_0.c.x, global4.a, global4.a))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(firstLeadingBit(global4.d.a) << (_wgslsmith_mult_u32(global4.d.a, global1.x) % 32u)), ~u_input.a));
}

