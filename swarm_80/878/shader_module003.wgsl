struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 4294967295u, 5737u, 17350u), vec4<i32>(0i, 15092i, 0i, -10843i));

var<private> global1: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = vec2<bool>(true, all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))));
    global0 = Struct_1(global0.a, arg_0.c.b);
    global1 = 1u & reverseBits(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(global0.a.x, 0u), 14944u));
    global1 = u_input.a;
    var var_1 = vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1543f)), -814f)) * _wgslsmith_f_op_f32(trunc(-1900f))) - 1323f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(step(1938f, 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + arg_0.b) + -1000f), !all(vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1543f + 329f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1291f)), !(arg_0.a >= arg_0.a))), var_0.x)));
    return arg_0.c.a.x <= reverseBits(_wgslsmith_mult_u32(~_wgslsmith_add_u32(57102u, arg_0.c.a.x), u_input.a));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = max(global0.a.wyw, select(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a, global0.a.x), global0.a.x, 154637u), select(global0.a.wzy, vec3<u32>(16402u, 33830u, global0.a.x), vec3<bool>(false, true, false)) & vec3<u32>(4294967295u, u_input.a, global0.a.x)), abs(global0.a.xwz), all(vec3<bool>(func_3(Struct_2(global0.b.x, arg_0, Struct_1(global0.a, global0.b))), arg_0 == arg_0, true))));
    global1 = min(_wgslsmith_clamp_u32(global0.a.x, var_0.x, 1u), ~0u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(arg_0, 1491f), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_div_f32(648f, -767f), _wgslsmith_div_f32(arg_0, 1193f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1130f, arg_0, 2076f, arg_0) * vec4<f32>(arg_0, -286f, 376f, arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(707f, -239f, arg_0, arg_0)))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, 195f))), arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(904f)), _wgslsmith_div_f32(2632f, arg_0))), -823f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1093f, arg_0, -505f, arg_0)))), vec4<f32>(arg_0, -520f, 499f, arg_0))));
    global0 = Struct_1(abs(reverseBits(select(vec4<u32>(var_0.x, 0u, 4294967295u, 0u), ~global0.a, vec4<bool>(true, true, true, true)))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(min(global0.b.xyx, global0.b.zxy), global0.b.xyz << (vec3<u32>(var_0.x, global0.a.x, global0.a.x) % vec3<u32>(32u))), ~2147483647i), -50259i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.x ^ global0.b.x, global0.b.x, -2147483647i), -_wgslsmith_mod_vec3_i32(global0.b.yyw, vec3<i32>(global0.b.x, global0.b.x, global0.b.x))), -1i));
    var var_2 = ~(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(global0.b.x, _wgslsmith_mod_i32(6483i, global0.b.x)), global0.b.x));
    return Struct_1(vec4<u32>(_wgslsmith_sub_u32(abs(firstTrailingBit(u_input.a)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global0.a.xxw, global0.a.wwz), ~1u)), reverseBits(1u) ^ ~var_0.x, ~abs(_wgslsmith_mod_u32(var_0.x, 65703u)), ~(u_input.a << (4294967295u % 32u)) | 1u), global0.b);
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = func_2(_wgslsmith_f_op_f32(sign(-693f)));
    var var_1 = _wgslsmith_mod_vec4_u32(arg_0, _wgslsmith_div_vec4_u32(var_0.a, vec4<u32>(~global0.a.x << (0u % 32u), 1u, 45082u, _wgslsmith_sub_u32(u_input.a << (arg_0.x % 32u), var_0.a.x))));
    let var_2 = var_0;
    let var_3 = !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var var_4 = ~(~firstLeadingBit(min(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 34901u), vec4<u32>(u_input.a, 26286u, u_input.a, 4294967295u))));
    return any(select(vec3<bool>(var_3 & true, var_3, !var_3), !vec3<bool>(var_3, false, select(false, var_3, var_3)), vec3<bool>(!(var_3 | true), var_3, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, select(false, false, select(true, false, global0.b.x <= global0.b.x))), !vec2<bool>(func_1(vec4<u32>(global0.a.x, 1u, 22577u, 1u)), true), func_3(Struct_2(1858i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(304f, -1262f))), func_2(_wgslsmith_f_op_f32(select(-1254f, -1000f, true))))));
    global1 = ~1u;
    var var_1 = global0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1115f, -1000f, -459f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1318f, 358f, 2579f, 1598f) * vec4<f32>(-618f, -534f, 1176f, 2073f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(158f, 575f, -223f, -563f)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(151f, 514f, 1768f, -316f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 1396f, -1000f, -491f))))))), ~1u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(674f, 413f, -724f) * vec3<f32>(966f, -380f, -597f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-421f, 925f, -683f), vec3<f32>(-367f, 1826f, -102f))), var_0.x)) * vec3<f32>(-536f, -463f, 623f)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1000f + -1790f), -1609f, 306f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(249f, -687f, -150f))))), all(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(769f, -616f)) + _wgslsmith_f_op_f32(abs(-1009f))), -494f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(254f, 186f, true)) - -927f) - -2184f)), global0.b.x);
}

