struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(680f, vec3<i32>(-2302i, -5476i, 36181i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> u32 {
    global0 = Struct_1(1516f, _wgslsmith_div_vec3_i32(abs(-global0.b), global0.b) | _wgslsmith_sub_vec3_i32(global0.b, -(~global0.b)));
    global0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(668f, global0.a, arg_1.x)), global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) - 479f))), global0.b);
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(106f)), vec3<i32>(firstTrailingBit(1i), 2147483647i, reverseBits(countOneBits(global0.b.x))) & global0.b);
    global0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(global0.a - global0.a)))))), global0.b);
    var var_0 = -vec2<i32>(0i, _wgslsmith_mult_i32(firstLeadingBit(global0.b.x), _wgslsmith_clamp_i32(-49649i, global0.b.x, global0.b.x))) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.x | arg_2.x, arg_0.x >> (u_input.a % 32u)), _wgslsmith_mult_vec2_u32(~arg_0, arg_2.xx)), arg_2.zy) % vec2<u32>(32u));
    return 0u;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_mod_vec4_u32(select(vec4<u32>(21598u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), true), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(49407u, 22593u, 1028u, u_input.a), vec4<u32>(1063u, u_input.a, u_input.a, 31420u)))));
    var var_1 = Struct_1(1088f, ~(-vec3<i32>(0i, 1i, -3279i)));
    global0 = arg_0;
    let var_2 = Struct_1(global0.a, _wgslsmith_sub_vec3_i32(var_1.b | -_wgslsmith_add_vec3_i32(var_1.b, arg_0.b), ~_wgslsmith_mult_vec3_i32(global0.b, vec3<i32>(-2147483647i, 3151i, arg_0.b.x))));
    let var_3 = ~select(u_input.a, max(func_3(var_0.yw, vec2<bool>(false, false), var_0.zwx), _wgslsmith_dot_vec3_u32(var_0.zww, vec3<u32>(var_0.x, 73459u, 19818u))) & ~(u_input.a & 46248u), true);
    return Struct_1(-1050f, vec3<i32>(~(var_2.b.x << (23439u % 32u)), 2401i, var_1.b.x) | arg_0.b);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = func_2(arg_3);
    global0 = arg_3;
    var var_1 = min(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.b.x, global0.b.x, var_0.b.x), vec3<i32>(global0.b.x, 21914i, arg_3.b.x) & arg_3.b), var_0.b), ~arg_3.b.x);
    var var_2 = _wgslsmith_mult_vec2_u32(firstLeadingBit(select(vec2<u32>(14998u, u_input.a) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_clamp_u32(arg_2, arg_1, arg_1), ~14853u), vec2<bool>(true, true))), ~(~vec2<u32>(~0u, arg_1 | arg_0)));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.a, global0.a)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * global0.a) + _wgslsmith_f_op_f32(-var_0.a)) + arg_3.a)), vec3<i32>(~abs(-2147483647i), i32(-1i) * -274i, var_0.b.x));
    return 213f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1594f, global0.a, -294f, -1842f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1332f, global0.a, global0.a, 117f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -985f, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), 2294f, _wgslsmith_f_op_f32(func_1(22168u, 0u, u_input.a, Struct_1(1258f, vec3<i32>(44337i, global0.b.x, global0.b.x)))), _wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1201f, 191f, global0.a) * vec4<f32>(396f, var_0.x, -402f, 878f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, var_0.x, global0.a)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, var_0.x, 353f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, global0.a, 1209f) - vec4<f32>(811f, -1243f, global0.a, global0.a)))), true))));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a, 258f)) + _wgslsmith_f_op_f32(-2076f + -1966f)) - _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + -1235f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-472f, 1460f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_f32(-var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-803f)), 1582f) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, 651f)))), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(-423f + var_0.x)), _wgslsmith_f_op_f32(637f - _wgslsmith_f_op_f32(exp2(var_0.x)))));
    global0 = func_2(Struct_1(func_2(Struct_1(-674f, abs(vec3<i32>(global0.b.x, -9534i, 2147483647i)))).a, _wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, global0.b.x, 0i), vec3<i32>(_wgslsmith_add_i32(-45288i, -6602i), -34669i, global0.b.x | 9193i))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 397f, global0.a, var_0.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, var_0.x, global0.a, var_0.x), vec4<f32>(global0.a, -710f, var_0.x, -725f), true))), vec4<f32>(_wgslsmith_f_op_f32(496f * global0.a), var_0.x, 442f, _wgslsmith_f_op_f32(abs(-1708f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.a, var_0.x, var_0.x, -1195f), vec4<f32>(-1100f, -1430f, 853f, var_0.x))))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, var_0.x, -716f, global0.a)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 283f, global0.a, 554f))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -1000f, true)) + global0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 658f)));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(327f, var_0.x, -1024f, global0.a), vec4<f32>(-833f, global0.a, global0.a, 1000f))))))))));
    var var_1 = _wgslsmith_f_op_f32(-global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_mod_vec2_i32(global0.b.xy, select(vec2<i32>(19661i, 0i), global0.b.zy, false)) >> (~vec2<u32>(60541u, 1u) % vec2<u32>(32u))), -(select(vec3<i32>(2147483647i, global0.b.x, -2147483647i), firstLeadingBit(vec3<i32>(global0.b.x, global0.b.x, -28527i)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false))) ^ vec3<i32>(1i, _wgslsmith_mult_i32(global0.b.x, 1i), -25938i)));
}

