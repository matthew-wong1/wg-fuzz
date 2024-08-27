struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> bool {
    var var_0 = 1u;
    let var_1 = Struct_1(!select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(all(vec2<bool>(true, false)), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-381f - -1211f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -126f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-566f, _wgslsmith_f_op_f32(841f * 307f), any(vec3<bool>(false, true, false))))))), global0[_wgslsmith_index_u32(arg_1, 14u)], any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)) && true);
    var_0 = arg_1;
    global0 = array<vec3<f32>, 14>();
    var var_2 = select(~vec2<i32>(arg_0.x >> (31367u % 32u), _wgslsmith_mult_i32(arg_0.x, u_input.a)), vec2<i32>(-2147483647i ^ arg_0.x, _wgslsmith_mult_i32(0i, -1i)) | arg_0.yy, !all(!vec3<bool>(var_1.e, var_1.e, true))) ^ -(~(-(~vec2<i32>(arg_0.x, 1i))));
    return _wgslsmith_mult_i32(_wgslsmith_div_i32(i32(-1i) * -21689i, arg_0.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(-15420i, -17546i), arg_0.zw), 0i) <= reverseBits(~1i);
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<f32>) -> i32 {
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    var var_0 = -(~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i), vec4<i32>(-1i, 1i, 1i, -2147483647i)), vec4<i32>(u_input.a, u_input.a, 22735i, -24572i))) | firstLeadingBit(reverseBits(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-28127i, 17370i, u_input.a, -1i)), -vec4<i32>(45170i, u_input.a, 1i, u_input.a))));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~(vec4<i32>(56757i, var_0.x, u_input.a, var_0.x) << (vec4<u32>(1u, arg_0.x, 5560u, arg_1) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(0i, u_input.a, 0i, -1i), vec4<i32>(-1i, var_0.x, var_0.x, -1i) >> (vec4<u32>(0u, arg_1, 19184u, arg_0.x) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, 6605i, u_input.a, var_0.x))), countOneBits(vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1935i, 21141i), var_0.zx), -2147483647i, var_0.x))), -2147483647i);
    var_0 = vec4<i32>(i32(-1i) * -(~var_0.x), _wgslsmith_mod_i32(u_input.a, var_1), ~_wgslsmith_add_i32(2147483647i, var_0.x) ^ var_0.x, _wgslsmith_div_i32(-7227i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 0i, var_1, u_input.a), vec4<i32>(var_0.x, var_0.x, 2147483647i, u_input.a), vec4<i32>(-1i, -1i, var_0.x, 1i)), vec4<i32>(u_input.a, -26113i, -19566i, var_1)))) | firstTrailingBit(~firstTrailingBit(vec4<i32>(-22621i, var_1, var_0.x, var_1)));
    return _wgslsmith_add_i32(var_1, ~(-19190i));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = u_input.a;
    var var_1 = vec4<i32>(u_input.a, u_input.a, func_4(select(arg_0.yy, reverseBits(~arg_0.xy), vec2<bool>(func_3(vec4<i32>(-3378i, u_input.a, u_input.a, u_input.a), 4294967295u), false)), ~reverseBits(firstTrailingBit(59611u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(arg_0.x, 14u)])))))), u_input.a);
    var var_2 = Struct_1(vec3<bool>(true, !all(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), false)), any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(f32(-1f) * -1647f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2662f - -871f), _wgslsmith_div_f32(-1059f, 103f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-712f, -418f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1623f, -102f), vec2<f32>(632f, 594f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2051f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1526f, -2982f, 190f))))), true);
    let var_3 = var_2.a.zy;
    var var_4 = vec4<i32>(-_wgslsmith_add_i32(~min(-1i, var_1.x), countOneBits(_wgslsmith_add_i32(u_input.a, var_1.x))), (-(~var_1.x) & u_input.a) ^ 55139i, u_input.a, u_input.a);
    return _wgslsmith_f_op_f32(273f - _wgslsmith_f_op_f32(-var_2.c.x));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = 6993u;
    let var_1 = Struct_1(select(!vec3<bool>(true, 87794i != u_input.a, true), select(vec3<bool>(true, true, all(vec3<bool>(true, false, true))), vec3<bool>(true, true, any(vec3<bool>(false, true, false))), false), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(func_2(countOneBits(~(~vec3<u32>(11300u, 114150u, 4294967295u))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(319f, arg_0)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), arg_0)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(4294967295u, 14u)] + _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(21670u, 14u)] - vec3<f32>(arg_0, arg_0, arg_0))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(871f, arg_0, 1915f))), global0[_wgslsmith_index_u32(~0u, 14u)], true)), !(func_3(~vec4<i32>(u_input.a, 1i, -21279i, -7608i), 1u) && false));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~firstLeadingBit(_wgslsmith_clamp_u32(6042u, 13649u, 1u)), 1u, 2638u, _wgslsmith_add_u32(~73285u, 1u)), vec4<u32>(~4294967295u, 1u, max(1u, 1u), 11375u));
    let var_3 = vec4<u32>(_wgslsmith_add_u32(~(~_wgslsmith_clamp_u32(1u, var_2.x, var_2.x)), 34699u), 1u, 68599u, _wgslsmith_mult_u32(reverseBits(~(var_2.x & var_2.x)), 77895u));
    let var_4 = false;
    return !all(select(var_1.a.xz, vec2<bool>(true, true), var_1.a.yz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = ~51809u;
    var var_2 = var_0 && func_1(_wgslsmith_f_op_f32(-1f));
    var_1 = 20449u << (_wgslsmith_mult_u32(~firstLeadingBit(_wgslsmith_clamp_u32(35491u, 35598u, 57779u)), ~firstTrailingBit(7294u) & _wgslsmith_clamp_u32(countOneBits(0u), _wgslsmith_add_u32(47021u, 66995u), 1u)) % 32u);
    var_2 = u_input.a != u_input.a;
    var_1 = 28487u;
    var_2 = select(true || all(select(vec2<bool>(var_0, false), !vec2<bool>(var_0, true), u_input.a > u_input.a)), any(vec2<bool>(true, true)), !(!(!var_0)));
    global0 = array<vec3<f32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(1u, 1u, 1u)))) - -636f), firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(28354i, 1i, 2147483647i, 57012i), abs(vec4<i32>(u_input.a, 37371i, -25385i, 1i))), vec4<i32>(abs(u_input.a), 0i, u_input.a, u_input.a))), reverseBits(vec3<u32>(1u, ~0u, firstTrailingBit(0u)) & _wgslsmith_clamp_vec3_u32(~vec3<u32>(46329u, 1u, 0u), vec3<u32>(1749u, 4294967295u, 67078u), vec3<u32>(1u, 1u, 4294967295u))), -countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, -2147483647i), vec3<i32>(14181i, u_input.a, u_input.a))), 23933i << (1u % 32u));
}

