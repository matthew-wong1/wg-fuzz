struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(51279u, 36915u, 0u, 1u, 4294967295u, 1329u, 79080u);

var<private> global1: i32 = 2147483647i;

var<private> global2: vec3<u32> = vec3<u32>(66343u, 9316u, 1u);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~global2.x;
    global1 = 1i;
    global0 = array<u32, 7>();
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b, _wgslsmith_f_op_f32(100f + 1075f)))), Struct_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1472u), global2.yz), _wgslsmith_f_op_f32(-arg_0.b)), Struct_1(~(~vec3<u32>(arg_0.a.x, 15972u, 23802u)), 1605f, vec3<bool>(true, true, true), -(i32(-1i) * -58848i), ~(i32(-1i) * -8249i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2506f, arg_0.b, arg_0.b), vec3<f32>(-704f, 353f, -1343f), true)))))));
    let var_2 = 1u;
    return var_1.a.b;
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    global1 = min(~(~_wgslsmith_clamp_i32(arg_1.c.e, 1i, abs(1i))), arg_1.c.e >> (global0[_wgslsmith_index_u32(~6587u, 7u)] % 32u));
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -571f))), 586f, arg_1.b.b, _wgslsmith_f_op_f32(exp2(arg_1.c.b))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0, -1522f, arg_1.c.e >= arg_1.c.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.a, arg_0, true)), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_1.a) * _wgslsmith_f_op_f32(trunc(arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2064f))))));
    global0 = array<u32, 7>();
    let var_1 = arg_1;
    var var_2 = var_1.b;
    return arg_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> i32 {
    global2 = vec3<u32>(35910u, ~(~max(0u, arg_0.x)), 45191u) >> (vec3<u32>(~_wgslsmith_mult_u32(global2.x, firstTrailingBit(arg_0.x)), 12976u >> (_wgslsmith_dot_vec2_u32(arg_0, arg_0) % 32u), global0[_wgslsmith_index_u32(27349u, 7u)]) % vec3<u32>(32u));
    let var_0 = func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(130f)))) * -312f), Struct_3(2213f, func_2(Struct_2(select(vec2<u32>(arg_0.x, arg_0.x), arg_0, arg_2.x), _wgslsmith_f_op_f32(453f + 784f))), Struct_1(~firstLeadingBit(vec3<u32>(4294967295u, 85508u, 925u)), _wgslsmith_f_op_f32(392f + _wgslsmith_div_f32(900f, -108f)), !vec3<bool>(true, arg_2.x, arg_2.x), u_input.a.x << (0u % 32u), ~u_input.a.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-708f, -1144f, 1153f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-236f, -100f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1227f, 789f, 258f) - vec3<f32>(-1000f, -209f, 3113f)))))));
    let var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_f32(sign(var_1.b));
    let var_3 = Struct_4(Struct_3(2639f, var_0.b, Struct_1(vec3<u32>(8405u, arg_0.x, 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a - 386f))), vec3<bool>(arg_2.x, true, any(vec3<bool>(arg_2.x, arg_2.x, arg_2.x))), abs(1i << (global2.x % 32u)), 1i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(var_2 - 1445f), _wgslsmith_f_op_f32(var_1.b + var_0.d.x))))));
    return abs(_wgslsmith_add_i32(0i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = 380f;
    let var_2 = firstLeadingBit(~_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(1i, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 18333i, -2147483647i))) ^ vec3<i32>(_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_mod_i32(countOneBits(u_input.a.x), ~17393i)), -func_1(abs(global2.yy), ~u_input.a, vec3<bool>(var_0, var_0, true)), _wgslsmith_div_i32(u_input.a.x, firstTrailingBit(u_input.a.x)) ^ u_input.a.x);
    global1 = ~u_input.a.x;
    global2 = vec3<u32>(1u, countOneBits(~abs(global0[_wgslsmith_index_u32(min(7645u, global2.x), 7u)])), ~(~global0[_wgslsmith_index_u32(firstLeadingBit(global2.x), 7u)]));
    global0 = array<u32, 7>();
    var var_3 = Struct_4(Struct_3(548f, Struct_2(global2.xz, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_1))))), Struct_1(~max(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 7u)], 7u)], 23702u, 55994u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46415u, 7u)], 7u)], 4294967295u, 0u)), _wgslsmith_f_op_f32(var_1 * 846f), select(vec3<bool>(true, var_0, var_0), !vec3<bool>(var_0, var_0, var_0), true), ~reverseBits(var_2.x), func_3(_wgslsmith_f_op_f32(select(var_1, var_1, var_0)), Struct_3(-539f, Struct_2(global2.xx, var_1), Struct_1(vec3<u32>(0u, global2.x, 32459u), var_1, vec3<bool>(var_0, var_0, var_0), -1i, 2147483647i), vec3<f32>(-615f, var_1, -1256f))).c.d), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_1, 1044f)))))));
    global2 = var_3.a.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(-468f, vec2<u32>(var_3.a.c.a.x, ~(20202u >> (firstTrailingBit(609u) % 32u))), var_3.a.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1))), var_1)), 40264u);
}

