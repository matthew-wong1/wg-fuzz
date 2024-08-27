struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23>;

var<private> global1: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_4(vec2<bool>(true, true));
    let var_1 = Struct_3(abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-36304i, -1i, arg_0.x) & vec3<i32>(arg_2.a.x, arg_0.x, -2147483647i), ~arg_0), ~(~(-1i)), arg_3.a.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_0), ~arg_0))));
    var var_2 = 29836u;
    var var_3 = 226f;
    global1 = arg_0.x >= _wgslsmith_add_i32(37905i, abs(firstTrailingBit(arg_3.a.x)) & (_wgslsmith_dot_vec3_i32(vec3<i32>(-15661i, 1i, -26720i), arg_0) << (~27293u % 32u)));
    return _wgslsmith_div_i32(firstTrailingBit(arg_0.x), _wgslsmith_mult_i32(~(-2147483647i), arg_3.a.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    global1 = any(vec4<bool>(arg_0.x, arg_0.x, all(vec3<bool>(true, true, true)), !arg_0.x));
    return -_wgslsmith_mult_vec4_i32(vec4<i32>(-10632i, _wgslsmith_add_i32(arg_2.a.x, -arg_2.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-32460i, 0i, arg_2.a.x), vec3<i32>(1i, 1i, arg_2.a.x)) << (_wgslsmith_add_u32(11452u, arg_2.b) % 32u), -func_3(vec3<i32>(-1448i, -38215i, -2147483647i), vec3<f32>(-285f, arg_1, arg_1), Struct_3(vec4<i32>(0i, arg_2.a.x, arg_2.a.x, -17449i)), Struct_1(arg_2.a, arg_2.b, vec2<f32>(757f, 1851f), vec2<f32>(-1000f, arg_2.c.x)))), ~vec4<i32>(abs(arg_2.a.x), _wgslsmith_div_i32(0i, -1i), 26569i, ~1i));
}

fn func_1(arg_0: u32, arg_1: u32) -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 23u)];
    var var_1 = _wgslsmith_mult_u32(~(~_wgslsmith_clamp_u32(arg_0, 1u, 116094u)), arg_0);
    global1 = (_wgslsmith_add_u32(14229u, ~reverseBits(arg_1)) <= _wgslsmith_mult_u32(arg_0, 4294967295u)) & true;
    let var_2 = vec2<bool>(true, true);
    global0 = array<Struct_4, 23>();
    return firstLeadingBit(-func_2(select(vec3<bool>(var_0.a.x, var_2.x, false), !vec3<bool>(var_0.a.x, var_2.x, true), all(var_2)), -915f, Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(10621i, 2147483647i), vec2<i32>(38781i, 20932i)), _wgslsmith_div_u32(arg_1, 36827u), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1392f), vec2<f32>(-809f, 1000f), var_0.a.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-154f, -1000f), vec2<f32>(332f, -1000f), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 23>();
    var var_0 = -1448f;
    let var_1 = true;
    let var_2 = Struct_3(select(-(~vec4<i32>(2147483647i, -1260i, -2147483647i, 1i)), func_1(min(u_input.a, 18775u), _wgslsmith_mod_u32(4294967295u & u_input.b.x, max(1u, u_input.a))), any(select(!vec4<bool>(false, false, var_1, false), vec4<bool>(true, false, var_1, var_1), var_1))));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1594f - -834f)), 1f))));
    var var_3 = 562f;
    var_0 = _wgslsmith_f_op_f32(-618f + -2334f);
    let var_4 = ~0u;
    let var_5 = _wgslsmith_clamp_vec4_u32(max(vec4<u32>(4294967295u & var_4, 88755u, u_input.a ^ var_4, u_input.b.x), ~vec4<u32>(18720u, var_4, 1u, 0u)), vec4<u32>(countOneBits(var_4), var_4, _wgslsmith_clamp_u32(~var_4, _wgslsmith_sub_u32(u_input.b.x, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_4, u_input.b.x, var_4), vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 4294967295u))), var_4), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, 56964u, 4489u, 3709u)), select(vec4<u32>(var_4, u_input.a, var_4, var_4), abs(vec4<u32>(6470u, var_4, var_4, var_4)), true))) | vec4<u32>(var_4, _wgslsmith_mod_u32(abs(_wgslsmith_div_u32(u_input.a, 8445u)), _wgslsmith_mult_u32(u_input.a, min(u_input.a, u_input.b.x))), u_input.a, _wgslsmith_div_u32(var_4, ~var_4) << (_wgslsmith_mult_u32(~18036u, var_4) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1161f), 1i, -1000f);
}

