struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(2147483647i, -1i), 621f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<i32> {
    global0 = array<i32, 26>();
    let var_0 = Struct_3(vec3<bool>(~(~u_input.a.x) >= 27845u, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), all(vec3<bool>(any(vec4<bool>(false, false, true, true)), true, any(vec3<bool>(false, true, true))))), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(global0[_wgslsmith_index_u32(1u, 26u)], global1.a.x)), -(~select(global1.a, global1.a, false))));
    global0 = array<i32, 26>();
    var var_1 = Struct_3(!(!vec3<bool>(select(true, var_0.a.x, var_0.a.x), var_0.a.x, select(var_0.a.x, false, var_0.a.x))), 8039i);
    global1 = Struct_1(-(~global1.a), _wgslsmith_f_op_f32(abs(-355f)));
    return countOneBits(_wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, global1.a.x, 0i), -firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -2147483647i, global1.a.x)))) >> ((u_input.a ^ ~(~u_input.a)) % vec3<u32>(32u));
}

fn func_2(arg_0: vec3<bool>) -> vec4<i32> {
    let var_0 = func_3();
    global1 = Struct_1(var_0.xy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(636f)), -1387f, false))));
    global0 = array<i32, 26>();
    var var_1 = !arg_0;
    global0 = array<i32, 26>();
    return vec4<i32>(u_input.b, u_input.b, u_input.b, ~countOneBits(-13584i));
}

fn func_1(arg_0: u32) -> vec3<f32> {
    var var_0 = vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(abs(4294967295u), 26u)], ~global1.a.x, -_wgslsmith_div_i32(global0[_wgslsmith_index_u32(7194u, 26u)], ~(-30440i)));
    var_0 = func_2(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))));
    global0 = array<i32, 26>();
    var var_1 = -388f;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(305f)) * global1.b) - _wgslsmith_div_f32(global1.b, -1197f)), _wgslsmith_div_f32(global1.b, global1.b), _wgslsmith_f_op_f32(f32(-1f) * -2717f)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(106f, global1.b)), global1.b, _wgslsmith_f_op_f32(trunc(995f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 603f, var_2.x) + vec3<f32>(437f, 1346f, 363f)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.b, -1008f, 417f), vec3<f32>(1431f, global1.b, -1731f)))), vec3<f32>(global1.b, _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, false))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(918f - global1.b), global1.b)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_4 {
    global0 = array<i32, 26>();
    var var_0 = arg_2;
    var var_1 = countOneBits(u_input.a.x) & 0u;
    var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, u_input.a.x), u_input.a >> (u_input.a % vec3<u32>(32u))), max(~56959u, ~0u), arg_1.x, ~(~arg_1.x)) ^ ~(~vec4<u32>(1u, arg_1.x, 50298u, 1183u)), ~firstTrailingBit(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(128910u, u_input.a.x, arg_1.x, 40994u)), vec4<u32>(99549u, 112600u, arg_1.x, arg_1.x))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(select(-918f, _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(floor(var_0.x)))), any(!select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(false, arg_3.x, true, arg_3.x), false)))), _wgslsmith_div_f32(656f, 1223f), Struct_1(_wgslsmith_mod_vec2_i32(~(-global1.a), vec2<i32>(1i, ~u_input.b)), var_0.x), arg_3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0)), global1.b, _wgslsmith_f_op_f32(select(252f, 492f, false)), -1000f))));
    return Struct_4(!arg_3.x, _wgslsmith_mult_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(func_2(vec3<bool>(arg_3.x, arg_3.x, true)).wwy, vec3<i32>(global0[_wgslsmith_index_u32(arg_1.x, 26u)], var_2.c.a.x, global0[_wgslsmith_index_u32(10238u, 26u)]), select(vec3<i32>(1i, 1i, -41246i), vec3<i32>(2147483647i, global1.a.x, -38456i), vec3<bool>(true, var_2.d, var_2.d)))), vec3<i32>(-7958i, ~countOneBits(-2147483647i), ~var_2.c.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(round(global1.b)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 12235u, _wgslsmith_clamp_u32(1u, 62430u, 4294967295u)), vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.a.x, 29552u) ^ 1u, ~23348u, ~firstLeadingBit(10730u)), vec3<u32>(7121u, ~(~1u), u_input.a.x)), _wgslsmith_f_op_vec3_f32(func_1(firstLeadingBit(0u))), select(select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), false), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), all(vec4<bool>(true, true, false, true))), vec2<bool>(true, true)));
    global1 = Struct_1(_wgslsmith_div_vec2_i32(-vec2<i32>(global1.a.x, -54320i), vec2<i32>(~u_input.b | ~var_0.b.x, -30515i)), 1138f);
    var var_1 = select(select(select(vec4<bool>(!var_0.a, true, !var_0.a, var_0.a), vec4<bool>(true, var_0.a, 24777u >= u_input.a.x, all(vec3<bool>(var_0.a, var_0.a, var_0.a))), !any(vec3<bool>(false, true, false))), !(!(!vec4<bool>(var_0.a, var_0.a, var_0.a, false))), var_0.a), vec4<bool>(!(!var_0.a) || !(!var_0.a), !any(vec4<bool>(true, false, false, false)), any(!vec2<bool>(var_0.a, true)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(72951u, max(u_input.a.x, 7910u)), 26u)] == var_0.b.x), select(true, false, var_0.a));
    let var_2 = Struct_2(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.b)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b)))))), Struct_1(-vec2<i32>(2147483647i, i32(-1i) * -44472i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-534f)) + _wgslsmith_f_op_f32(floor(global1.b)))), var_0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(623f * global1.b), global1.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-136f - 219f))), global1.b) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(657f, 535f, global1.b, -1006f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1298f, -879f, -679f, global1.b), vec4<f32>(global1.b, -1238f, -738f, global1.b))))))));
    var var_3 = firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(0u, ~u_input.a.x >> (~u_input.a.x % 32u), (u_input.a.x << (u_input.a.x % 32u)) | min(u_input.a.x, 14834u)), countOneBits(firstTrailingBit(u_input.a))));
    global0 = array<i32, 26>();
    let var_4 = u_input.a.x;
    var var_5 = abs(_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 39382u, 1u), vec3<u32>(1302u, 4294967295u, 48107u)) | _wgslsmith_dot_vec2_u32(vec2<u32>(var_4, 0u), vec2<u32>(u_input.a.x, var_4)), 26u)], ~(~var_0.b.x), var_2.c.a.x ^ ~7526i, global1.a.x << (0u % 32u)), func_2(!vec3<bool>(var_2.d, true, var_0.a))));
    var var_6 = abs(max(~129839u, 31044u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(var_3.zy, abs(vec2<u32>(1u, 1u))), countOneBits(~(~(vec3<u32>(var_4, var_3.x, u_input.a.x) & vec3<u32>(1u, var_3.x, 47079u)))), ~(~(~vec2<u32>(var_4, var_3.x))), vec3<u32>(select(var_4, var_3.x, all(var_1.xxy)) & (22006u >> (_wgslsmith_mult_u32(0u, 4294967295u) % 32u)), _wgslsmith_sub_u32(~(~0u), u_input.a.x), ~var_4));
}

