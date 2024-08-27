struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-639f, 245f, -1070f, 521f);

var<private> global1: array<vec3<bool>, 21> = array<vec3<bool>, 21>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false));

var<private> global2: array<Struct_1, 20>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = ~(u_input.d >> (~u_input.b.x % 32u));
    let var_1 = true;
    let var_2 = ~u_input.b;
    var var_3 = !global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(select(_wgslsmith_mod_u32(1u, arg_1.a.x), ~27872u, any(global1[_wgslsmith_index_u32(1u, 21u)])), ~arg_1.a.x >> (var_2.x % 32u)), 21u)];
    global1 = array<vec3<bool>, 21>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -1265f) - _wgslsmith_f_op_f32(722f - -1000f)))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = false;
    var var_1 = Struct_2(!(arg_0.x & false) | var_0);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1088f), -1057f);
    var var_3 = vec2<u32>(27536u, u_input.a);
    let var_4 = Struct_1(~_wgslsmith_div_vec2_u32(countOneBits(u_input.b.zy) & u_input.b.zy, vec2<u32>(68577u, u_input.a) & vec2<u32>(38100u, u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(ceil(516f)), global0.x, 657f), _wgslsmith_f_op_f32(-global0.x));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(14781i, u_input.d)), min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, -28701i), vec3<i32>(u_input.d, u_input.c, u_input.d)), ~(-27984i)), -min(u_input.d, u_input.d)), reverseBits(select(vec3<i32>(1i, u_input.c, 29150i), vec3<i32>(u_input.c, u_input.d, -1i), false)) << (u_input.b.yyx % vec3<u32>(32u))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1926i, u_input.d, -7169i, u_input.c), -vec4<i32>(2147483647i, -13467i, u_input.c, u_input.d)), u_input.d, u_input.d));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-669f + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(abs(1853f)), Struct_1(u_input.b.yw, vec4<f32>(global0.x, 1000f, 624f, 812f), global0.x), Struct_2(true))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1487f), Struct_1(u_input.b.zy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1217f, global0.x, global0.x, 969f)), _wgslsmith_f_op_f32(round(-452f))), Struct_2(true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-109f + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-global0.x))))), -1677f, _wgslsmith_f_op_f32(f32(-1f) * -854f));
    let var_1 = vec2<i32>(func_3(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))), -_wgslsmith_mult_i32(u_input.d & -2563i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(0i, u_input.c, u_input.d), vec3<i32>(9484i, u_input.c, u_input.d)), vec3<i32>(0i, u_input.d, 2147483647i) | vec3<i32>(224i, -2147483647i, 0i))));
    var var_2 = ~1u;
    var var_3 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.e, u_input.a, 0u), u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a, min(u_input.e, 0u), u_input.e, 83117u) >> (vec4<u32>(abs(1u), 1u, ~u_input.a, 14549u) % vec4<u32>(32u)), vec4<u32>(min(u_input.b.x, 4294967295u) & reverseBits(u_input.b.x), 1u, u_input.e, abs(~76646u))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 21>();
    let var_0 = !vec3<bool>(true && (false && any(vec2<bool>(false, false))), func_1(), -1i >= (-29384i & firstLeadingBit(u_input.c)));
    global2 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -728f), _wgslsmith_f_op_f32(-global0.x)), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, 405f), _wgslsmith_f_op_f32(global0.x * -1000f)) - _wgslsmith_f_op_f32(-1f)), global0.x), firstLeadingBit(-u_input.d | _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(u_input.d, u_input.d, u_input.d)))), vec2<i32>(_wgslsmith_mult_i32(2147483647i, 1i), max(_wgslsmith_clamp_i32(-47522i, -8730i, -45685i), u_input.d) ^ firstTrailingBit(u_input.c)));
}

