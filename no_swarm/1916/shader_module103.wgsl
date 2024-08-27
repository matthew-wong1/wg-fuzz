struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: f32 = 526f;

var<private> global2: array<vec3<u32>, 20>;

var<private> global3: array<vec3<f32>, 17>;

var<private> global4: array<f32, 32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<i32> {
    var var_0 = u_input.a;
    global3 = array<vec3<f32>, 17>();
    var var_1 = -u_input.b;
    let var_2 = false;
    global0 = 1u;
    return abs(select(reverseBits(select(vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(-2147483647i, -24406i), select(vec2<bool>(var_2, false), vec2<bool>(true, false), false))), ~(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b))), vec2<bool>(true, true)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<i32>) -> vec2<i32> {
    global4 = array<f32, 32>();
    let var_0 = Struct_3(firstTrailingBit(firstLeadingBit(vec2<i32>(1i, 0i)) >> (~vec2<u32>(0u, u_input.a) % vec2<u32>(32u))), arg_0, func_3(), select(arg_1, true, u_input.b > _wgslsmith_div_i32(~u_input.b, 2147483647i >> (u_input.a % 32u))));
    var var_1 = _wgslsmith_mod_vec3_i32(arg_2.yzy, abs(firstLeadingBit(~arg_2.zxy)));
    global3 = array<vec3<f32>, 17>();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3[_wgslsmith_index_u32(~13893u, 17u)], _wgslsmith_f_op_vec3_f32(sign(global3[_wgslsmith_index_u32(u_input.a, 17u)])), vec3<bool>(arg_1, true, false))) * _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(~u_input.a, 17u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 60077u), 17u)] * _wgslsmith_f_op_vec3_f32(sign(global3[_wgslsmith_index_u32(0u, 17u)]))) + _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(22205u, u_input.a, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 20u)]), 17u)])) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1084f, 120f, _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(1u, 32u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(23490u, 17u)] + vec3<f32>(global4[_wgslsmith_index_u32(u_input.a, 32u)], arg_0, var_0.b)), global3[_wgslsmith_index_u32(5437u, 17u)]), arg_1))));
    return var_1.yy ^ -vec2<i32>(var_0.c.x, -abs(u_input.b));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(round(178f));
    let var_0 = ~(~(~21786u));
    global0 = u_input.a;
    global1 = arg_2.b;
    global1 = 839f;
    return Struct_3(vec2<i32>(-22961i, func_3().x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_2.b, arg_2.b)))), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0.x, 1724i), vec3<i32>(0i, u_input.b, u_input.b)), ~arg_0.x), ~arg_0)), false);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = -1739f;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-528f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))))), var_0);
    global4 = array<f32, 32>();
    let var_2 = func_4(select(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1799f)))), !arg_0.a, vec4<i32>(-1i) * -vec4<i32>(20i, u_input.b, -2147483647i, -952i)), vec2<i32>(_wgslsmith_div_i32(1i, -1i), -27822i), !select(!vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true), arg_0.a)), select(!(!vec3<bool>(true, arg_0.a, arg_0.a)), !(!vec3<bool>(arg_0.a, arg_0.a, false)), select(vec3<bool>(true, !arg_0.a, true), select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(arg_0.a, true, arg_0.a), select(vec3<bool>(false, false, false), vec3<bool>(false, false, arg_0.a), vec3<bool>(false, arg_0.a, false))), any(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, false)))), Struct_3(vec2<i32>(26295i, _wgslsmith_div_i32(func_2(var_0, false, vec4<i32>(-1i, 1i, u_input.b, u_input.b)).x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 7516i, u_input.b), vec3<i32>(u_input.b, u_input.b, 2147483647i)))), global4[_wgslsmith_index_u32(u_input.a, 32u)], vec2<i32>(u_input.b, ~(~u_input.b)), 1i == func_3().x));
    let var_3 = arg_0.a;
    return StorageBuffer(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a, 32u)]), vec3<u32>(_wgslsmith_add_u32(~(~u_input.a), _wgslsmith_clamp_u32(~u_input.a, u_input.a, 1u)), _wgslsmith_div_u32(21167u, ~u_input.a), min(0u, 49632u) | ~u_input.a), -vec4<i32>(var_2.c.x, ~(-1i), -14601i, 44858i), -vec4<i32>(-(~var_2.a.x), 23052i, -min(var_2.a.x, -30672i), _wgslsmith_mod_i32(~10404i, reverseBits(-15776i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<f32>, 17>();
    let var_0 = u_input.b;
    let var_1 = vec4<u32>(42226u, ~55880u << (u_input.a % 32u), ~(~5650u), _wgslsmith_mult_u32(~(~0u), ~firstLeadingBit(~u_input.a)));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(max(24769u, u_input.a), 32u)] + _wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 32u)], 255f))))));
    let var_3 = 909f;
    let x = u_input.a;
    s_output = func_1(Struct_1(any(vec2<bool>(true, true))));
}

