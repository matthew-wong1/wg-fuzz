struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(2147483647i, -52362i, 35818i), vec3<i32>(-22171i, 16729i, -1i), vec3<i32>(38391i, 43702i, i32(-2147483648)), vec3<i32>(19035i, i32(-2147483648), 11945i), vec3<i32>(-1i, 1i, 38956i), vec3<i32>(-14451i, i32(-2147483648), 1i), vec3<i32>(49180i, 47109i, 2147483647i));

var<private> global2: array<vec2<f32>, 25>;

var<private> global3: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> bool {
    return !(!global0.x);
}

fn func_2() -> i32 {
    var var_0 = all(vec4<bool>(global0.x, global0.x, func_3(select(-23023i, -1i, true)), global0.x));
    let var_1 = ~4294967295u;
    let var_2 = Struct_1(-u_input.a, ~_wgslsmith_mod_i32(-1888i << (var_1 % 32u), max(min(u_input.a, -1i), ~(-53999i))));
    return _wgslsmith_div_i32(i32(-1i) * -_wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, var_2.a), vec2<i32>(u_input.a, u_input.a), false), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, var_2.a))), ~var_2.b);
}

fn func_1() -> vec4<bool> {
    var var_0 = vec2<i32>(u_input.a, min(_wgslsmith_add_i32(0i, _wgslsmith_mod_i32(u_input.a ^ u_input.a, -u_input.a)), _wgslsmith_div_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(-3166i, u_input.a)), func_2())));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1f)))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-325f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-982f, 725f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-678f)) + _wgslsmith_f_op_f32(ceil(571f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1538f, -2019f, false))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1896f) - 141f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-335f + -1415f))), _wgslsmith_f_op_f32(283f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1107f - -1366f))), !(any(global0.ywx) != true))));
    let var_4 = ~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~51635u, abs(3254u), _wgslsmith_div_u32(44157u, 7836u)), 44913u), _wgslsmith_clamp_u32(19506u, 1u, 1u), 1u);
    return !(!vec4<bool>(true, var_1, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!select(func_1(), !vec4<bool>(global0.x, global0.x, global0.x, false), !select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(true, false, false, global0.x), global0.x)), func_1(), any(vec2<bool>(global0.x, global0.x)));
    global0 = !vec4<bool>(all(func_1()), true, true, true);
    global3 = 1u;
    let var_0 = firstLeadingBit(global1[_wgslsmith_index_u32(0u, 7u)]);
    global3 = 4294967295u;
    var var_1 = 86574u;
    var var_2 = Struct_2(Struct_1(1i, -6944i), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1f, 1f, 1f, 1f));
}

