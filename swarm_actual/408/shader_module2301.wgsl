struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 14> = array<u32, 14>(51318u, 1u, 42201u, 49149u, 38817u, 0u, 73214u, 116732u, 4294967295u, 97940u, 0u, 6494u, 18343u, 22036u);

var<private> global2: bool;

var<private> global3: f32;

var<private> global4: vec2<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_clamp_vec4_i32(u_input.d, abs(u_input.d), -(-vec4<i32>(1i, global0.x, -1i, 1i) | (vec4<i32>(1i, -2147483647i, global0.x, u_input.c.x) & vec4<i32>(-21725i, -37522i, -70777i, -9711i))) >> (u_input.e % vec4<u32>(32u)));
    var var_0 = Struct_2(vec2<u32>(u_input.e.x, global4.x), Struct_1(min(0u, global1[_wgslsmith_index_u32(~1u, 14u)])), Struct_1(1u | (0u << (global4.x % 32u))), Struct_1(global1[_wgslsmith_index_u32(4332u, 14u)]));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -102f);
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(abs(6793u), 14u)]);
    global0 = min(u_input.d, vec4<i32>(~(-_wgslsmith_add_i32(10382i, 49128i)), global0.x, global0.x, global0.x));
    return countOneBits(~(-(-21506i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(100311u, 4294967295u), var_0.a) % 32u))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: f32) -> Struct_3 {
    var var_0 = ~(-global0.x);
    var var_1 = Struct_1(~arg_0.x);
    var_1 = Struct_1(var_1.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, -1947f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -1237f)))));
    var var_3 = ~(-vec3<i32>(firstTrailingBit(-11909i), 1i, func_3()));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1106f, 608f)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1243f, arg_1.x) + vec3<f32>(var_2, arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1), _wgslsmith_div_vec3_f32(vec3<f32>(-409f, 1241f, 320f), vec3<f32>(arg_1.x, arg_1.x, var_2)), true))))), ~vec2<i32>(-387i, _wgslsmith_dot_vec3_i32(-u_input.a, u_input.c)), Struct_2(vec2<u32>(u_input.e.x, u_input.e.x), Struct_1(_wgslsmith_mod_u32(47663u, 4294967295u)), Struct_1(firstLeadingBit(min(global1[_wgslsmith_index_u32(var_1.a, 14u)], arg_0.x))), Struct_1(~abs(19878u))), Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(111316u, u_input.e.x) ^ vec2<u32>(global4.x, global1[_wgslsmith_index_u32(45434u, 14u)]), ~vec2<u32>(4294967295u, var_1.a)) >> (vec2<u32>(~4294967295u, 17268u) % vec2<u32>(32u)), Struct_1(~var_1.a), Struct_1(~8u), Struct_1(~global1[_wgslsmith_index_u32(u_input.e.x, 14u)] | (4294967295u | global4.x))));
}

fn func_1() -> vec3<bool> {
    var var_0 = func_2(u_input.e, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -549f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -785f))), 121f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-103f + 260f))))), _wgslsmith_f_op_f32(step(948f, -1060f)));
    global4 = var_0.e.a ^ ~_wgslsmith_mult_vec2_u32(max(u_input.e.yy, vec2<u32>(var_0.e.c.a, 1250u)) << (~vec2<u32>(global4.x, u_input.e.x) % vec2<u32>(32u)), var_0.d.a);
    var_0 = func_2((u_input.e ^ ~vec4<u32>(6894u, global4.x, 21464u, 38514u)) & min(u_input.e, ~u_input.e), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1249f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -2609f)), _wgslsmith_f_op_f32(floor(var_0.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(827f + 212f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * 241f) + _wgslsmith_f_op_f32(trunc(-576f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1785f))));
    let var_1 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    let var_2 = func_2(u_input.e, _wgslsmith_f_op_vec3_f32(select(var_0.b, var_0.b, !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2332f)), _wgslsmith_f_op_f32(var_1 - var_1)))) - _wgslsmith_f_op_f32(-var_0.a.x))).a.x;
    return select(vec3<bool>(true, true && ((u_input.e.x < 0u) != any(vec2<bool>(false, true))), false), select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, select(false, false, true), true)), !vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true), true), !vec3<bool>(true, u_input.e.x < _wgslsmith_dot_vec3_u32(u_input.e.wwx, vec3<u32>(global1[_wgslsmith_index_u32(var_0.d.a.x, 14u)], u_input.e.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 14u)], 14u)])), all(vec3<bool>(true, true, true))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, -643f, -1495f), vec3<f32>(1843f, arg_1.x, arg_1.x), arg_2)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))))));
    return 891f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1190f)), _wgslsmith_f_op_f32(f32(-1f) * -422f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1113f, 1307f))) - _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec3_u32(~u_input.e.xwy, u_input.e.zxy, u_input.e.zyx), _wgslsmith_f_op_vec2_f32(vec2<f32>(459f, -1000f) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, -1257f), vec2<f32>(-567f, -309f))), !func_1()))));
    global1 = array<u32, 14>();
    global2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -379f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(774f)), _wgslsmith_div_f32(1f, 1f)), 1f), 4294967295u, ~(~_wgslsmith_mod_vec4_u32(u_input.e, u_input.e) ^ _wgslsmith_clamp_vec4_u32(countOneBits(u_input.e), u_input.e & vec4<u32>(global4.x, 40534u, global4.x, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global4.x, 1u, global4.x), vec4<u32>(0u, u_input.e.x, 101764u, u_input.e.x)))));
}

