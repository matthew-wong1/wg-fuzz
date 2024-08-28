struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16>;

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(2018i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> i32 {
    let var_0 = all(vec3<bool>(select(max(u_input.b, u_input.c) > 4294967295u, false, any(vec3<bool>(true, false, true)) | true), false, ~(u_input.b ^ 0u) <= 89891u));
    global1 = Struct_1(i32(-1i) * -2147483647i);
    global2 = u_input.a.x;
    let var_1 = u_input.b;
    global1 = Struct_1(33631i);
    return u_input.a.x;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = all(global0[_wgslsmith_index_u32(max(16499u, _wgslsmith_sub_u32(4294967295u, firstLeadingBit(17875u)) ^ u_input.b), 16u)]);
    let var_1 = Struct_1(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), u_input.a.yx)));
    let var_2 = var_1;
    let var_3 = Struct_1(abs(arg_0.a));
    let var_4 = Struct_1(_wgslsmith_sub_i32(abs(_wgslsmith_mod_i32(var_3.a, var_1.a)), ~global1.a));
    return ~var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_1(arg_1);
    global1 = Struct_1(u_input.a.x);
    var var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(275f * 2184f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-258f * -848f) + 1471f)))));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(12158i, ~u_input.a.x, arg_0.a & -36454i));
    var_1 = vec2<f32>(_wgslsmith_div_f32(614f, -2130f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_1.x, var_1.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))) - 2968f))));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<u32>) -> i32 {
    global3 = arg_1;
    global1 = Struct_1(i32(-1i) * -68450i);
    global2 = ~1i;
    global3 = func_4(Struct_1(~(~func_2())), _wgslsmith_div_i32(reverseBits(~func_3(arg_1)), u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(13634u, 4294967295u), ~arg_3.wy) % 32u)), true);
    let var_0 = arg_1;
    return -global1.a;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    global0 = array<vec2<bool>, 16>();
    global2 = u_input.a.x;
    let var_0 = true;
    global2 = func_1(arg_2, Struct_1(~global3.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(886f + -844f), _wgslsmith_div_f32(-485f, 812f), -532f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1796f, -164f, -366f) * vec3<f32>(-1444f, 121f, -1000f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1268f, 886f, 1645f), vec3<f32>(-1035f, 2051f, 847f))))), abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(17522u, 4294967295u, 30796u, u_input.c), vec4<u32>(u_input.b, u_input.c, 29908u, u_input.b)))) ^ -112101i;
    var var_1 = u_input.a;
    return firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.c, 1u) ^ vec2<u32>(_wgslsmith_clamp_u32(7667u, u_input.b, u_input.c), 1u), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, 1u), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.c, u_input.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-29613i);
    var var_1 = 17462u;
    let var_2 = ~0u > u_input.b;
    let var_3 = false;
    var_1 = _wgslsmith_mult_u32(12818u, u_input.b);
    let var_4 = func_5(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), func_1(Struct_1(firstLeadingBit(u_input.a.x)), Struct_1(0i), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(438f, -1948f, 563f) * vec3<f32>(408f, 1000f, 4290f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2650f, -1270f, 803f)), vec3<bool>(true, false, true))), ~(~vec4<u32>(u_input.c, u_input.c, 4286u, u_input.b)))), -54864i, func_4(Struct_1(global3.a), ~global1.a, true));
    var var_5 = any(select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(var_3, true, true, false), var_2)), vec4<bool>(var_2, all(global0[_wgslsmith_index_u32(u_input.b, 16u)]), all(vec3<bool>(false, var_2, false)), true), true));
    var_5 = any(select(select(vec3<bool>(var_3, true, true), select(!vec3<bool>(true, var_2, true), select(vec3<bool>(false, var_3, var_3), vec3<bool>(var_3, var_3, var_3), vec3<bool>(true, false, true)), u_input.b <= u_input.c), !(!vec3<bool>(var_3, var_2, var_2))), !select(vec3<bool>(var_3, false, var_3), vec3<bool>(true, true, false), vec3<bool>(var_3, true, true)), !select(select(vec3<bool>(false, true, var_3), vec3<bool>(false, true, true), vec3<bool>(var_2, false, true)), select(vec3<bool>(true, false, var_3), vec3<bool>(var_3, var_2, var_3), vec3<bool>(false, var_2, false)), var_2)));
    var var_6 = 745f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1499f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-274f + 1114f)) + _wgslsmith_f_op_f32(1533f + _wgslsmith_f_op_f32(sign(1741f))))), _wgslsmith_f_op_f32(step(-617f, _wgslsmith_f_op_f32(f32(-1f) * -1341f))));
}

