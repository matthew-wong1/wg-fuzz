struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
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

var<private> global0: array<i32, 30> = array<i32, 30>(18896i, 1i, i32(-2147483648), 13112i, 0i, 1i, 2147483647i, i32(-2147483648), 33731i, -42976i, -3229i, i32(-2147483648), -2532i, -5032i, i32(-2147483648), 0i, 22684i, 1i, i32(-2147483648), 7172i, 0i, 1i, 2147483647i, 1i, -1i, -115198i, -1i, -9678i, 40953i, i32(-2147483648));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    var var_0 = firstLeadingBit(~_wgslsmith_mult_vec2_u32(u_input.b, ~vec2<u32>(u_input.b.x, u_input.b.x)));
    let var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), ~max(_wgslsmith_mult_i32(arg_2.x, 7402i), ~global0[_wgslsmith_index_u32(var_0.x, 30u)]), 1i, -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.x | var_0.x, 30u)], 2147483647i)) & vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, global0[_wgslsmith_index_u32(76419u, 30u)], u_input.a.x, 15180i), -vec4<i32>(global0[_wgslsmith_index_u32(0u, 30u)], 1i, 2147483647i, u_input.a.x)), _wgslsmith_mult_i32(-arg_0, arg_0)), 1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(global0[_wgslsmith_index_u32(0u, 30u)], arg_0), vec2<i32>(u_input.a.x, u_input.a.x), false), -u_input.a) | _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, arg_0), vec2<i32>(0i, 38575i)), -2147483647i);
    var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(0u, 24668u) ^ _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(0u, var_0.x)), abs(min(vec2<u32>(42847u, 4294967295u), vec2<u32>(0u, 5410u)))), ~(~vec2<u32>(var_0.x, var_0.x))), ~u_input.b.x);
    var var_2 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.b.x, 4294967295u, var_0.x), vec3<u32>(0u, 77817u, var_0.x)), vec3<u32>(15027u, var_0.x, var_0.x)), ~vec3<u32>(var_0.x, var_0.x, var_0.x)) | u_input.b.x;
    var var_3 = select(true, any(vec3<bool>(true, true, true)), true);
    return _wgslsmith_f_op_f32(f32(-1f) * -825f);
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1740f * _wgslsmith_f_op_f32(f32(-1f) * -906f)), _wgslsmith_f_op_f32(func_3(firstLeadingBit(-2147483647i), Struct_1(1i), abs(vec3<i32>(-12328i, global0[_wgslsmith_index_u32(u_input.b.x, 30u)], -1i))))), 338f, 771f), u_input.a.x, !any(vec2<bool>(any(vec2<bool>(false, false)), true)), select(vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !any(vec2<bool>(true, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(6174u, 30u)], u_input.a.x, 2147483647i), vec3<i32>(50665i, -43615i, 17048i)) != countOneBits(-2147483647i)), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), true), !any(vec3<bool>(true, true, true))), firstLeadingBit(_wgslsmith_div_u32(4294967295u ^ u_input.b.x, u_input.b.x) ^ u_input.b.x));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x))), _wgslsmith_sub_i32(-2147483647i, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(60393u, var_0.e, 52232u, 5357u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_0.e, 4294967295u, var_0.e), vec4<u32>(u_input.b.x, var_0.e, var_0.e, u_input.b.x))), 30u)]), var_0.d.x || true, vec4<bool>(var_0.d.x, true, !var_0.d.x, any(!var_0.d.zw)), ~(~firstTrailingBit(var_0.e) & 4294967295u));
    let var_2 = Struct_1(var_1.b);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-613f * 966f), _wgslsmith_f_op_f32(max(var_0.a.x, 2128f)), _wgslsmith_f_op_f32(f32(-1f) * -370f), var_0.a.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -201f, var_1.a.x, var_0.a.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-907f, 1672f, var_1.a.x, var_1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 697f, var_1.a.x, -1000f) + vec4<f32>(-1000f, -2178f, 524f, -288f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(780f, -132f, var_1.a.x, 1525f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1000f, -921f, var_1.a.x) * vec4<f32>(var_1.a.x, var_1.a.x, 1000f, 1038f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-156f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_1.a.x), -427f, var_1.a.x)));
    global0 = array<i32, 30>();
    return _wgslsmith_div_vec2_u32(min(vec2<u32>(min(var_1.e, 12507u) & 43994u, 4294967295u), u_input.b), ~firstLeadingBit(vec2<u32>(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(76208u, u_input.b.x, u_input.b.x), vec3<u32>(var_0.e, 1u, u_input.b.x)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: f32, arg_3: u32) -> u32 {
    global0 = array<i32, 30>();
    let var_0 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a));
    let var_1 = -1i;
    global0 = array<i32, 30>();
    var var_2 = -34829i >> ((_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_1.x, 43051u), u_input.b, arg_0.xy) << (~vec2<u32>(6582u, arg_1.x) % vec2<u32>(32u)), func_2()) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, arg_3, arg_3), abs(vec4<u32>(0u, u_input.b.x, arg_1.x, arg_1.x))), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, arg_1.x, arg_3, u_input.b.x), vec4<u32>(0u, 4294967295u, arg_3, 112602u))) % 32u)) % 32u);
    return u_input.b.x;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = true;
    global0 = array<i32, 30>();
    var var_1 = false == !arg_2.x;
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(187f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), abs(26621i), any(arg_2.zz), select(!select(vec4<bool>(false, true, arg_2.x, arg_2.x), !vec4<bool>(false, var_0, true, true), !vec4<bool>(false, arg_2.x, true, true)), select(!vec4<bool>(var_0, var_0, arg_2.x, var_0), select(!vec4<bool>(var_0, false, arg_2.x, var_0), !vec4<bool>(var_0, true, var_0, arg_2.x), select(vec4<bool>(true, true, arg_2.x, arg_2.x), vec4<bool>(var_0, false, false, true), vec4<bool>(false, false, false, arg_2.x))), select(select(vec4<bool>(true, false, var_0, var_0), vec4<bool>(arg_2.x, false, arg_2.x, true), var_0), vec4<bool>(true, arg_2.x, var_0, var_0), var_0)), !select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(false, var_0, false, arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x))), _wgslsmith_div_u32(20255u, 45277u));
    var var_3 = arg_0;
    return Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-914f, var_2.a.x, -218f) - _wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(-707f, -1025f, 1097f))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-915f, var_2.a.x), _wgslsmith_f_op_f32(round(var_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -618f)))), vec3<bool>(true, var_0 && true, (arg_0 | global0[_wgslsmith_index_u32(5150u, 30u)]) > ~u_input.a.x))), 1i ^ _wgslsmith_clamp_i32(arg_0, _wgslsmith_clamp_i32(var_2.b, global0[_wgslsmith_index_u32(4294967295u, 30u)] & var_2.b, -16697i), arg_0), all(select(select(var_2.d, select(vec4<bool>(true, var_0, false, var_2.c), var_2.d, vec4<bool>(false, var_0, true, false)), var_0), !var_2.d, select(true, false, false))), var_2.d, ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = Struct_1(u_input.a.x);
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    global0 = array<i32, 30>();
    var var_2 = func_4(-22781i, _wgslsmith_clamp_i32(i32(-1i) * -(global0[_wgslsmith_index_u32(var_0, 30u)] | u_input.a.x), global0[_wgslsmith_index_u32(~(0u ^ func_1(vec4<bool>(false, true, false, true), vec3<u32>(var_0, var_0, 0u), 1000f, 72568u)), 30u)], -7653i), select(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, false, select(any(vec2<bool>(false, true)), true, true)), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), false)), Struct_1(-u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(2854f + 764f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(759f, _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + var_2.a.x))), _wgslsmith_f_op_f32(-var_2.a.x), 956f));
}

