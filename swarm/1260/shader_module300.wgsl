struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 23>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = vec4<i32>(-22425i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, -11046i, 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a, global0.a), vec3<i32>(arg_0, global0.a, 8101i))), global0.a), -2147483647i), global0.a, 27545i);
    global1 = array<vec2<bool>, 23>();
    var var_1 = ~(-1i);
    var_1 = var_0.x;
    return !(!(((u_input.a ^ var_0.x) >> (abs(6669u) % 32u)) >= abs(1149i)));
}

fn func_3(arg_0: bool, arg_1: f32) -> vec2<bool> {
    var var_0 = Struct_1(~max(-6i, global0.a));
    let var_1 = vec4<bool>(arg_0, (func_2(2147483647i) || select(any(global1[_wgslsmith_index_u32(4294967295u, 23u)]), arg_0 != arg_0, true)) || false, false, true);
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, 0u), ~vec2<u32>(0u, 1u)) >> ((~vec2<u32>(2866u, 0u) >> (firstTrailingBit(vec2<u32>(2351u, 12450u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(70158u, _wgslsmith_clamp_u32(1u, 19190u, _wgslsmith_sub_u32(34049u, 13442u)))), vec2<u32>(30544u, 7480u));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1195f + 475f), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(167f - arg_1) - _wgslsmith_f_op_f32(arg_1 - arg_1))))), _wgslsmith_f_op_f32(arg_1 - 1126f), arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -255f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2775f)))))));
    global0 = Struct_1(_wgslsmith_clamp_i32(-u_input.a ^ (-42558i >> (min(0u, 48624u) % 32u)), u_input.a, ~u_input.a));
    return var_1.zy;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = global0.a;
    var var_1 = select(!(!vec2<bool>(arg_0.x == arg_0.x, func_2(0i))), select(select(global1[_wgslsmith_index_u32(~1u, 23u)], vec2<bool>(true, all(vec3<bool>(true, false, true))), false), select(vec2<bool>(true, true), vec2<bool>(any(global1[_wgslsmith_index_u32(21614u, 23u)]), true), vec2<bool>(true, true)), true), vec2<bool>(true, false));
    let var_2 = select(select(func_3(var_1.x, arg_0.x), select(vec2<bool>(true, var_1.x), !vec2<bool>(var_1.x, var_1.x), true), true), select(global1[_wgslsmith_index_u32(max(3643u, 40955u), 23u)], global1[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(38554u, 22699u, 4294967295u, 32084u), vec4<u32>(4294967295u, 6240u, 0u, 0u))), 23u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 23u)]), ~_wgslsmith_sub_u32(select(5499u, 49504u, false), 0u) == 1u);
    global1 = array<vec2<bool>, 23>();
    var var_3 = Struct_1(1i);
    return Struct_1(_wgslsmith_mod_i32(global0.a, _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, global0.a, u_input.a), 36065i), _wgslsmith_div_i32(select(var_3.a, var_3.a, false), ~1i))));
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    global0 = Struct_1(-70061i);
    global0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-957f, -1269f, true)), _wgslsmith_f_op_f32(step(2744f, -1632f)), _wgslsmith_div_f32(-1349f, 359f), -368f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(228f, -814f, -694f, 544f)), vec4<f32>(-871f, -313f, 647f, -1571f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-842f, 987f, 739f, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(-680f, 894f, 1991f, 903f), vec4<f32>(-1304f, -129f, -477f, -2361f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 773f, 418f, -548f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(201f, -126f, -935f, -578f)))), true)))));
    let var_0 = arg_0;
    var var_1 = vec3<u32>(_wgslsmith_add_u32(0u, _wgslsmith_mult_u32(1u, select(37069u, _wgslsmith_mult_u32(1495u, 1u), false))), select(~13643u, ~_wgslsmith_add_u32(1u, ~1439u), false), ~(~abs(1u) << ((~0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 3881u), vec3<u32>(4294967295u, 0u, 13110u)) % 32u)) % 32u)));
    let var_2 = Struct_1(0i);
    return !vec4<bool>(true, true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~53705u;
    var var_1 = !func_4(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-635f, -388f, 896f, 2291f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(418f, 1457f, -955f, -177f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2255f, 174f, -931f, 1000f)))));
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-(~max(vec4<i32>(u_input.a, -1i, u_input.a, 19749i), vec4<i32>(-2147483647i, 0i, u_input.a, u_input.a))) >> (~select(vec4<u32>(var_0, 1u, var_0, var_0) >> (vec4<u32>(4294967295u, 4294967295u, 11460u, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 80332u, var_0, 53330u), vec4<u32>(var_0, var_0, var_0, 1u)), !var_1.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1807f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1750f + -834f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-814f))))), func_4(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(159f, 1333f, -1486f, -2318f) * vec4<f32>(-2452f, 1978f, 1332f, 1000f)), vec4<f32>(-155f, 121f, -575f, 2681f))).x)), ~1u);
}

