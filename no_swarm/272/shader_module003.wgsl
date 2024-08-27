struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global1: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true));

var<private> global2: bool;

var<private> global3: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(4315u, 8600u), vec2<u32>(8663u, 41173u), vec2<u32>(1u, 15041u), vec2<u32>(20750u, 0u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 41262u), vec2<u32>(1u, 1u), vec2<u32>(1u, 10940u), vec2<u32>(71471u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 1u), vec2<u32>(36612u, 4294967295u), vec2<u32>(4294967295u, 33289u), vec2<u32>(0u, 11878u), vec2<u32>(0u, 25335u), vec2<u32>(4294967295u, 52077u), vec2<u32>(11367u, 8556u), vec2<u32>(0u, 40643u), vec2<u32>(25057u, 0u), vec2<u32>(64103u, 0u), vec2<u32>(0u, 57594u), vec2<u32>(0u, 1u), vec2<u32>(52944u, 13768u), vec2<u32>(89693u, 1u));

var<private> global4: array<vec2<bool>, 21>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    global4 = array<vec2<bool>, 21>();
    global4 = array<vec2<bool>, 21>();
    var var_0 = min(vec4<i32>(global0.x, global0.x, u_input.a.x, -4519i), vec4<i32>(u_input.a.x, -2147483647i, _wgslsmith_mod_i32(4067i, min(abs(-2147483647i), u_input.a.x)), 24450i));
    global1 = array<vec3<bool>, 30>();
    global4 = array<vec2<bool>, 21>();
    return ~(~22587u) << (firstTrailingBit(~(~42688u) ^ _wgslsmith_clamp_u32(~1u, 4294967295u, abs(70088u))) % 32u);
}

fn func_2(arg_0: bool) -> i32 {
    global0 = u_input.a.zz;
    global2 = false;
    global2 = !((arg_0 || (arg_0 || arg_0)) == true);
    global3 = array<vec2<u32>, 25>();
    let var_0 = !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, func_3()), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(~vec3<u32>(4294967295u, 1u, 31787u)))), 30u)];
    return 2147483647i;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(select(true, true, true), vec2<i32>(i32(-1i) * -80717i, arg_0.x) ^ vec2<i32>(-2147483647i, 32417i));
    var var_1 = _wgslsmith_div_i32(-_wgslsmith_add_i32(max(-global0.x, func_2(var_0.a)), -5574i), -(~reverseBits(-2147483647i)));
    global2 = all(vec2<bool>(703f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(858f + arg_1), _wgslsmith_f_op_f32(max(arg_1, 1344f))), any(!select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(true, false, var_0.a), vec3<bool>(false, var_0.a, true)))));
    global4 = array<vec2<bool>, 21>();
    var var_2 = vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, ~11048u, ~44305u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u))) >= ~6745u, true, true, var_0.a);
    return Struct_1(~(_wgslsmith_sub_u32(4294967295u, 1916u) | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 29500u), vec3<u32>(34221u, 1u, 17128u))) == 0u, var_0.b);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: u32) -> i32 {
    return func_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-120f, _wgslsmith_f_op_f32(f32(-1f) * -906f)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-953f, 596f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1920f, -1572f) + vec2<f32>(206f, 2394f)))))) - vec2<f32>(_wgslsmith_f_op_f32(min(-425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-300f - -455f)))), 2133f));
    global3 = array<vec2<u32>, 25>();
    var var_1 = vec3<i32>(-38316i, func_4(func_1(vec3<i32>(-1i) * -u_input.a, 1299f), true, -vec4<i32>(1i, max(u_input.a.x, 13685i), -31735i, global0.x >> (25972u % 32u)), ~1u), global0.x);
    global2 = !(!any(vec4<bool>(-1816f < var_0.x, all(global1[_wgslsmith_index_u32(0u, 30u)]), true, false)));
    global2 = true;
    let var_2 = global1[_wgslsmith_index_u32(0u >> (abs(1u) % 32u), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(883f, var_0.x, -1076f))))))), _wgslsmith_f_op_f32(-528f + -951f), -1i);
}

