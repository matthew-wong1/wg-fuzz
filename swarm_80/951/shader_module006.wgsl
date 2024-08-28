struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(4294967295u, 88862u, 4294967295u), vec3<u32>(513u, 31867u, 4294967295u), vec3<u32>(0u, 0u, 34991u), vec3<u32>(0u, 19096u, 0u), vec3<u32>(7658u, 13051u, 4294967295u), vec3<u32>(19982u, 20834u, 36769u), vec3<u32>(4294967295u, 14919u, 32429u), vec3<u32>(0u, 4294967295u, 52658u), vec3<u32>(20288u, 0u, 0u), vec3<u32>(18678u, 0u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(33115u, 22339u, 36860u), vec3<u32>(43344u, 39944u, 1248u), vec3<u32>(20783u, 5435u, 789u), vec3<u32>(15616u, 1u, 24456u), vec3<u32>(64404u, 30977u, 71092u), vec3<u32>(4341u, 1u, 1u), vec3<u32>(12129u, 39325u, 0u));

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(0u, 4294967295u), vec2<u32>(15841u, 77425u), vec2<u32>(4294967295u, 47034u), vec2<u32>(1u, 0u), vec2<u32>(33006u, 0u), vec2<u32>(94105u, 69620u), vec2<u32>(1u, 38003u), vec2<u32>(4294967295u, 2566u), vec2<u32>(1u, 16610u));

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<u32> {
    global0 = array<vec3<u32>, 18>();
    global1 = array<vec2<u32>, 9>();
    let var_0 = vec2<i32>(-1i) * -(~_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-17838i, 10322i), vec2<i32>(2147483647i, u_input.a), vec2<i32>(arg_1.b, u_input.a)), vec2<i32>(u_input.a, 84134i)));
    var var_1 = arg_1;
    var var_2 = vec2<u32>(~abs(arg_0.x), arg_0.x);
    return ~select(~(~vec4<u32>(0u, 56512u, 1u, arg_1.a.x)), select(vec4<u32>(var_2.x & var_2.x, ~var_2.x, var_2.x, var_2.x), ~(~arg_0), true), true);
}

fn func_2(arg_0: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1309f, 1000f, -1903f) + vec3<f32>(-891f, _wgslsmith_f_op_f32(1803f + 1000f), _wgslsmith_div_f32(-719f, 457f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(929f, -1000f, 1000f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 106f, 837f) + vec3<f32>(489f, -591f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(503f, 1811f, 911f) - vec3<f32>(-1092f, 1056f, 366f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-164f, 1442f, -2737f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(390f, -493f, 546f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1273f, 468f, 1488f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(566f, -173f, -163f))))))));
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_0.x, 19050u), ~arg_0), abs(arg_0)), -40148i);
    let var_2 = Struct_1(select(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(arg_0, vec4<u32>(var_1.a.x, 0u, arg_0.x, var_1.a.x)), vec4<u32>(var_1.a.x, 4294967295u, arg_0.x, arg_0.x)), _wgslsmith_div_vec4_u32(abs(~var_1.a), vec4<u32>(arg_0.x, arg_0.x, var_1.a.x, 1u >> (1u % 32u))), vec4<bool>(true, true, all(vec2<bool>(true, true)) & false, true)), u_input.a);
    let var_3 = Struct_1(~func_3(var_2.a, global2[_wgslsmith_index_u32(~min(70467u, var_2.a.x), 13u)]), var_2.b);
    global0 = array<vec3<u32>, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_0.x) - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(var_0.x + 510f))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1749f, 524f), -387f, -409f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(select(-1635f, 295f, false)), _wgslsmith_f_op_f32(func_2(vec4<u32>(1u, 5943u, 13705u, 0u))), -326f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(226f, -1000f, 1000f), vec3<f32>(-1789f, 1592f, -1843f), vec3<bool>(false, true, true))))))))));
    let var_1 = countOneBits(func_3(vec4<u32>(_wgslsmith_dot_vec2_u32(~global1[_wgslsmith_index_u32(4294967295u, 9u)], func_3(vec4<u32>(4294967295u, 0u, 12264u, 59154u), global2[_wgslsmith_index_u32(4294967295u, 13u)]).zx), ~1u, _wgslsmith_add_u32(~4294967295u, ~1u), 1030u), global2[_wgslsmith_index_u32(abs(~(~24345u)), 13u)]).x);
    global2 = array<Struct_1, 13>();
    var var_2 = max(_wgslsmith_sub_vec2_u32(vec2<u32>(5506u, var_1), ~vec2<u32>(var_1, var_1) | (vec2<u32>(0u, var_1) ^ global1[_wgslsmith_index_u32(firstTrailingBit(27177u), 9u)])), vec2<u32>(var_1, _wgslsmith_dot_vec4_u32(~(vec4<u32>(8244u, var_1, var_1, var_1) << (vec4<u32>(var_1, var_1, 1u, var_1) % vec4<u32>(32u))), vec4<u32>(max(36944u, var_1), _wgslsmith_div_u32(22848u, 11076u), var_1, var_1))));
    var var_3 = max(~(~(max(global1[_wgslsmith_index_u32(var_2.x, 9u)], global1[_wgslsmith_index_u32(44150u, 9u)]) ^ _wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(85546u, 9u)]))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.x, 0u, 4294967295u), vec4<u32>(var_1, var_2.x, 651u, 36092u) & vec4<u32>(62543u, 28311u, var_1, 0u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(var_1, 9u)], global1[_wgslsmith_index_u32(var_1, 9u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1, var_1), 9u)])), _wgslsmith_add_vec2_u32(abs(firstTrailingBit(global1[_wgslsmith_index_u32(1u, 9u)])), global1[_wgslsmith_index_u32(1u, 9u)]), ~((global1[_wgslsmith_index_u32(51348u, 9u)] << (vec2<u32>(4294967295u, var_2.x) % vec2<u32>(32u))) << (global1[_wgslsmith_index_u32(var_1, 9u)] % vec2<u32>(32u)))));
    return Struct_1(vec4<u32>(~(~0u), ~min(14680u | var_1, var_3.x), 31279u, firstLeadingBit(_wgslsmith_add_u32(~var_3.x, ~var_3.x))), _wgslsmith_add_i32(15820i, arg_0));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec2<u32>, 9>();
    return Struct_1(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(~4294967295u, arg_1.a.x, 24619u, arg_2.a.x)), arg_1.a), _wgslsmith_sub_i32(arg_0.x, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-264f)), _wgslsmith_f_op_f32(abs(1279f))), 761f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -746f)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1156f, 1840f)) * -213f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -128f) * _wgslsmith_f_op_f32(step(1131f, -1208f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-422f + 308f))))));
    let var_1 = !(0i < (min(-u_input.a, u_input.a << (38678u % 32u)) >> (~14952u % 32u)));
    var var_2 = func_4(countOneBits(vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(u_input.a, u_input.a)), max(u_input.a ^ 0i, ~u_input.a), -2147483647i)), func_1(max(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(25183i, u_input.a))) & (i32(-1i) * -u_input.a)), global2[_wgslsmith_index_u32(1u, 13u)]);
    let var_3 = global2[_wgslsmith_index_u32(var_2.a.x, 13u)];
    let var_4 = Struct_1(_wgslsmith_mult_vec4_u32(abs(var_3.a), select(abs(countOneBits(var_3.a)), vec4<u32>(var_3.a.x, 1u, _wgslsmith_clamp_u32(var_2.a.x, 40571u, 76580u), 15338u), !var_1)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_2.a), 51607i);
}

