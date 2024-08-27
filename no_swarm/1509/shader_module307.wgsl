struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -10075i, 2147483647i, -1i);

var<private> global1: vec2<f32>;

var<private> global2: array<vec4<f32>, 3>;

var<private> global3: array<i32, 23> = array<i32, 23>(-10255i, 20137i, 34085i, 4762i, -1i, 34376i, i32(-2147483648), i32(-2147483648), -1i, 9903i, -46854i, 2147483647i, 16674i, -11859i, 2147483647i, -1i, 69987i, 0i, -24409i, 1i, 27078i, -30820i, 1i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = !(!select(vec4<bool>(true, false, global0.x != global0.x, true), vec4<bool>(true, any(vec4<bool>(true, false, true, false)), true, all(vec2<bool>(false, false))), true));
    let var_1 = var_0.x;
    return 1u;
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * -2621f), -821f), _wgslsmith_f_op_f32(f32(-1f) * -1330f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-761f, global1.x)) + _wgslsmith_f_op_f32(ceil(global1.x))), global1.x)));
    global3 = array<i32, 23>();
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(266f, _wgslsmith_f_op_f32(global1.x * global1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, global1.x), var_0.wz, true)))) + vec2<f32>(_wgslsmith_f_op_f32(step(global1.x, global1.x)), global1.x)))) - vec2<f32>(724f, global1.x));
    global3 = array<i32, 23>();
    var var_1 = -12646i;
    return global1.x;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(~1u, 1u), abs(_wgslsmith_add_vec4_u32(vec4<u32>(27841u, 36307u, 0u, 16712u), vec4<u32>(0u, 27767u, 71946u, 41690u)))))), u_input.b, Struct_2(arg_0, arg_0), select(-vec4<i32>(-11476i, _wgslsmith_add_i32(global0.x, global3[_wgslsmith_index_u32(39u, 23u)]), -global0.x, global0.x | global0.x), vec4<i32>(-1i) * -countOneBits(vec4<i32>(37249i, -12538i, -1i, global3[_wgslsmith_index_u32(57649u, 23u)])), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0, true, true, 1000f <= global1.x), select(arg_0, false, false) && !arg_0)));
    global3 = array<i32, 23>();
    global3 = array<i32, 23>();
    let var_1 = !(firstTrailingBit(u_input.b) > 31464i);
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global1.x), vec2<f32>(1137f, var_0.a.a)))) - vec2<f32>(_wgslsmith_f_op_f32(-561f * var_0.a.a), 442f)) * vec2<f32>(2024f, -1308f))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.x, -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(firstTrailingBit(-2147483647i), u_input.a), global0.x) < global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(func_1(1u), _wgslsmith_div_u32(1u, ~31587u))), 23u)];
    var var_1 = 539f;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -1511f) - _wgslsmith_f_op_f32(f32(-1f) * -1077f)) - -107f), -1259f, global1.x));
    var var_3 = -abs(vec4<i32>(_wgslsmith_add_i32(-36306i, u_input.b), firstLeadingBit(global3[_wgslsmith_index_u32(4294967295u, 23u)]), ~global0.x, global0.x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(11463u, 32801u, 1u), 58500u, 0u, ~_wgslsmith_div_u32(4294967295u, 4294967295u)), vec4<u32>(17128u, _wgslsmith_div_u32(~1u, 19731u), 0u, 0u)) % vec4<u32>(32u));
    var var_4 = !select(!vec3<bool>(var_0, true, select(var_0, var_0, var_0)), vec3<bool>(true, true, true), true);
    var_3 = vec4<i32>(reverseBits(_wgslsmith_clamp_i32(2147483647i, 0i, firstTrailingBit(-global0.x))), _wgslsmith_add_i32(~abs(38i), min(0i, u_input.b)), ~(-1i), 1i);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) * _wgslsmith_f_op_f32(369f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x - global1.x), -626f, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_2.xzy + vec3<f32>(_wgslsmith_f_op_f32(-var_5.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), -1119f)), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, u_input.b, u_input.a, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(39854i, 1i, u_input.a, 1i), vec4<i32>(82116i, 25095i, u_input.b, -1i))) << (countOneBits(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), abs(abs(vec4<i32>(-1i, global0.x, var_3.x, u_input.a)) ^ ~vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(65653u, 23u)], -11409i, global3[_wgslsmith_index_u32(0u, 23u)]))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 1u, 1u))), _wgslsmith_dot_vec3_i32(var_3.xxx, -vec3<i32>(reverseBits(-30274i), u_input.a, var_3.x)));
}

