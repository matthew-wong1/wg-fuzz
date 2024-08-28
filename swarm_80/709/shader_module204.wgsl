struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 27>;

var<private> global2: Struct_3 = Struct_3(1i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32) -> bool {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(arg_1.x);
    let var_2 = !select(!arg_1.xx, arg_1.xy, arg_1.xw);
    global1 = array<Struct_1, 27>();
    global1 = array<Struct_1, 27>();
    return any(select(vec3<bool>(all(arg_1), var_2.x, !all(vec4<bool>(var_1.a, var_2.x, false, false))), arg_1.wzy, _wgslsmith_f_op_f32(-arg_2) <= arg_2));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(~max(22460u, 1u), u_input.a.x, _wgslsmith_mod_u32(~arg_0, _wgslsmith_mod_u32(arg_0, u_input.a.x)))), 27u)];
    global0 = _wgslsmith_clamp_i32(firstLeadingBit(62267i), -2610i, -2147483647i);
    global2 = Struct_3(u_input.b);
    global0 = 31576i;
    let var_1 = !select(vec3<bool>(all(vec4<bool>(var_0.a, false, var_0.a, var_0.a)), true, !var_0.a), select(vec3<bool>(func_3(Struct_3(6255i), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), arg_3), var_0.a, any(vec3<bool>(true, false, var_0.a))), vec3<bool>(u_input.c <= global2.a, var_0.a, var_0.a), select(!vec3<bool>(var_0.a, var_0.a, false), vec3<bool>(false, var_0.a, var_0.a), false)), vec3<bool>(var_0.a, _wgslsmith_f_op_f32(abs(arg_2)) <= 865f, true));
    return global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(arg_0, 1u)), 27u)];
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = 181f;
    var var_1 = 77953u;
    var var_2 = vec3<u32>(~(~u_input.a.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~countOneBits(4294967295u), countOneBits(abs(arg_0))), 0u), _wgslsmith_sub_u32(81352u, _wgslsmith_mod_u32(2951u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(15539u, 26358u, u_input.a.x), u_input.a.x))));
    let var_3 = func_2(arg_0, abs(vec2<i32>(-(~0i), _wgslsmith_mult_i32(global2.a, u_input.b << (1u % 32u)))), -434f, _wgslsmith_f_op_f32(f32(-1f) * -716f));
    var var_4 = !vec4<bool>(false, _wgslsmith_mult_u32(37850u, var_2.x) >= ~(~arg_0), max(4917u, 0u) >= ~(~var_2.x), var_3.a);
    return _wgslsmith_f_op_f32(-1090f - _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1121f))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(arg_2.b.a, arg_2.b.a, func_3(Struct_3(44592i), vec4<bool>(arg_2.a.a, true, false, arg_2.b.a), -366f)), arg_2.b.a);
    return Struct_3(_wgslsmith_div_i32(1i, 69729i) & ~(~(-arg_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1340f - 412f) - -1556f)), _wgslsmith_f_op_f32(func_1(u_input.a.x)), 218f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(3136f)) * _wgslsmith_f_op_f32(func_1(u_input.a.x)))))), Struct_3(u_input.b), Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~abs(5478u), firstTrailingBit(u_input.a.x) ^ 26853u), 27u)], Struct_1(true), ~(vec3<i32>(u_input.d.x, u_input.c, 2147483647i) ^ vec3<i32>(global2.a, global2.a, 1i))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-958f, _wgslsmith_f_op_f32(f32(-1f) * -381f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1314f))), _wgslsmith_f_op_f32(-549f * _wgslsmith_f_op_f32(-815f - 1930f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-864f, 1572f, 987f, -1000f))))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1749f, 1000f))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(433f, 1098f), vec2<f32>(-1036f, -2108f), vec2<bool>(false, true))))))));
    var var_2 = Struct_2(Struct_1(all(vec2<bool>(all(vec2<bool>(true, false)), true))), Struct_1(func_3(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -1000f) * vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), Struct_3(global2.a), Struct_2(global1[_wgslsmith_index_u32(0u, 27u)], Struct_1(false), u_input.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, -1191f, var_1.x, 873f))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), 1f)), _wgslsmith_add_vec3_i32(vec3<i32>(var_0.a, global2.a, 55778i), u_input.d & (_wgslsmith_clamp_vec3_i32(vec3<i32>(15984i, -14026i, 18658i), vec3<i32>(61879i, u_input.d.x, -13828i), u_input.d) ^ select(vec3<i32>(24488i, 83991i, 65121i), vec3<i32>(-1i, u_input.d.x, u_input.d.x), vec3<bool>(true, false, true)))));
    var var_3 = 1i;
    let var_4 = Struct_2(func_2(firstLeadingBit(u_input.a.x), max(_wgslsmith_mod_vec2_i32(~u_input.d.zz, min(vec2<i32>(-1i, u_input.d.x), u_input.d.zy)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 26212i, var_2.c.x), vec4<i32>(var_2.c.x, var_2.c.x, global2.a, u_input.b)), u_input.d.x)), var_1.x, 964f), global1[_wgslsmith_index_u32(u_input.a.x, 27u)], _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(~var_0.a, ~(-1i), var_0.a & global2.a), vec3<i32>(var_2.c.x, u_input.d.x, -1i) & u_input.d, var_2.c), abs(~var_2.c)));
    var var_5 = abs(~_wgslsmith_clamp_vec2_i32(var_4.c.zz, ~var_4.c.zy, abs(u_input.d.zx)));
    global2 = var_0;
    var var_6 = _wgslsmith_mult_vec3_u32(~(~max(vec3<u32>(16u, 81688u, 21142u), vec3<u32>(u_input.a.x, 86902u, 25595u))), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(~32004u, u_input.a.x, u_input.a.x), u_input.a), ~vec3<u32>(~u_input.a.x, ~u_input.a.x, ~1u), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~59967u, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * 603f))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-289f, -521f) - _wgslsmith_div_f32(var_1.x, -181f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, 116f)) - _wgslsmith_f_op_f32(sign(2130f))))), _wgslsmith_f_op_vec2_f32(var_1 + _wgslsmith_f_op_vec2_f32(-var_1)), abs(~vec3<u32>(57934u, 4294967295u, ~u_input.a.x)));
}

