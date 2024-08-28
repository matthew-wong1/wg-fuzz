struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<bool> {
    global0 = Struct_2(abs(~u_input.c) ^ (~u_input.c << (~1u % 32u)));
    let var_0 = (vec3<i32>(-1i) * -abs(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.c.x, 1i, -28425i), vec3<i32>(global1.c.x, 1i, -1i)))) ^ -(select(vec3<i32>(global1.c.x, -2147483647i, global1.c.x), vec3<i32>(-17529i, global1.c.x, global1.c.x) >> (vec3<u32>(40848u, 0u, global1.a) % vec3<u32>(32u)), true) << (~(~vec3<u32>(4294967295u, 4294967295u, 4294967295u)) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1.b.x, global1.b.x)), global1.b.x)))) - global1.b.x);
    global0 = Struct_2(global0.a);
    var var_2 = Struct_1(reverseBits(global0.a) >> (~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, 1u)), abs(u_input.a.xz)) % 32u), global1.b, global1.c | global1.c);
    return !select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, all(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(40781u, 4294967295u), 7u)])), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false)));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_2 {
    global2 = array<vec2<bool>, 7>();
    let var_0 = arg_0;
    var var_1 = arg_1;
    var var_2 = vec3<i32>(-1i) * -(~vec3<i32>(~(-8588i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.x, -29192i, 40810i), vec3<i32>(global1.c.x, -1i, global1.c.x)), select(-20666i, global1.c.x, true)));
    var var_3 = !(!func_3());
    return Struct_2(_wgslsmith_mod_u32(((global0.a ^ u_input.a.x) | global1.a) ^ u_input.c, global1.a));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), -172f, _wgslsmith_f_op_f32(max(-929f, global1.b.x))))), vec3<f32>(global1.b.x, _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(round(global1.b.x))), -1000f)), -1270f);
    var var_1 = Struct_1(~_wgslsmith_sub_u32(var_0.a << (~1u % 32u), _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, 0u), _wgslsmith_add_u32(1u, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global1.b.x)), vec2<i32>(global1.c.x, global1.c.x));
    var var_2 = vec3<u32>(global0.a ^ reverseBits(_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a)), var_0.a, ~45006u);
    let var_3 = _wgslsmith_add_u32(max(var_2.x ^ ~(var_1.a >> (50341u % 32u)), ~(~(~7757u))), ~_wgslsmith_clamp_u32(firstLeadingBit(~var_2.x), max(30991u, select(73872u, 37266u, true)), ~_wgslsmith_mult_u32(4294967295u, u_input.a.x)));
    var_1 = Struct_1(var_3, _wgslsmith_f_op_vec2_f32(var_1.b - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.b)))), vec2<i32>(-_wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, -15680i), -2147483647i, 2147483647i & var_1.c.x), -global1.c.x & 0i));
    return var_0;
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -879f) * _wgslsmith_f_op_f32(-global1.b.x)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(599f)), _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(round(global1.b.x))))))));
    var var_1 = Struct_1(_wgslsmith_div_u32(~func_1().a, ~global1.a), _wgslsmith_f_op_vec2_f32(global1.b * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + global1.b.x)), _wgslsmith_div_f32(-611f, _wgslsmith_f_op_f32(-458f - -2416f)))), global1.c);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) + _wgslsmith_f_op_f32(trunc(global1.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(abs(var_1.b.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_1.b.x, global1.b.x)))), global1.b.x)), _wgslsmith_f_op_f32(exp2(var_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, global1.b.x, global1.b.x, 758f) - vec4<f32>(global1.b.x, 470f, 1960f, 452f)) * vec4<f32>(-2810f, var_0, var_1.b.x, var_0)) + vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(1430f)), 600f, var_1.b.x))));
    var_1 = Struct_1(global1.a, var_2.xz, ~_wgslsmith_mod_vec2_i32(vec2<i32>(global1.c.x, _wgslsmith_add_i32(var_1.c.x, 0i)), min(~global1.c, ~vec2<i32>(var_1.c.x, global1.c.x))));
    let var_3 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(27058u, ~global1.a), arg_0.a ^ 16595u), _wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(global1.c.x, var_1.c.x), 1i) & _wgslsmith_sub_vec2_i32(select(vec2<i32>(global1.c.x, -2147483647i), vec2<i32>(var_1.c.x, var_1.c.x), vec2<bool>(false, false)), vec2<i32>(global1.c.x, var_1.c.x) ^ var_1.c), var_1.c));
    return -(~_wgslsmith_sub_i32(countOneBits(-2147483647i), ~var_3.c.x));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec4<bool>(all(!select(vec2<bool>(arg_1, arg_1), !global2[_wgslsmith_index_u32(u_input.b, 7u)], !global2[_wgslsmith_index_u32(global0.a, 7u)])), true, global1.b.x >= _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1372f - 1159f) - 506f)), !all(select(!vec4<bool>(arg_1, false, true, false), vec4<bool>(false, false, true, arg_1), true)));
    return func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-489f, -330f, _wgslsmith_f_op_f32(f32(-1f) * -1412f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1178f, global1.b.x, arg_2.b.x))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(739f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_dot_vec2_i32(global1.c | global1.c, vec2<i32>(func_4(func_1()), firstTrailingBit(_wgslsmith_sub_i32(global1.c.x, 6171i)))), false, Struct_1(~global1.a, global1.b, vec2<i32>(global1.c.x, global1.c.x)));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.b.x)), _wgslsmith_f_op_f32(-global1.b.x)));
    global0 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0, 1313f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))), 1012f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -315f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(312f * _wgslsmith_f_op_f32(select(-1372f, var_0, true)))))));
    global2 = array<vec2<bool>, 7>();
    global2 = array<vec2<bool>, 7>();
    let var_1 = -(global1.c.x & -31892i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~1u, 4294967295u));
}

