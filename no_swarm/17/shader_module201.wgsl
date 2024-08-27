struct Struct_1 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<f32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = !select(true, !select(true, true, any(vec2<bool>(true, false))), any(vec4<bool>(true, true, true, false)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-1491f * -367f), false);
    let var_2 = select(!vec3<bool>(-1788f != global1.x, true, var_1.b), !select(vec3<bool>(!var_1.b, false, true), !(!vec3<bool>(true, true, var_1.b)), !vec3<bool>(false, var_1.b, var_1.b)), all(vec3<bool>(select(all(vec2<bool>(false, var_1.b)), any(vec3<bool>(false, var_1.b, var_1.b)), var_1.b), var_1.b, !var_1.b)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1078f * var_1.a) * 1000f)), true);
    let var_3 = Struct_1(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 1703f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2183f, -780f) - global1.x))), !(~(~u_input.c.x) != ~62495u));
    return var_1.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(abs(-300f));
    var var_1 = vec3<f32>(arg_1.x, global1.x, _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(ceil(-1427f)))))));
    var var_2 = _wgslsmith_mod_vec3_i32(-(vec3<i32>(_wgslsmith_add_i32(-3917i, 26698i), u_input.b >> (0u % 32u), u_input.b) | firstTrailingBit(vec3<i32>(u_input.b, -33905i, u_input.b))), _wgslsmith_clamp_vec3_i32(firstTrailingBit(reverseBits(vec3<i32>(u_input.a.x, -8274i, u_input.b))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, _wgslsmith_clamp_i32(u_input.a.x, 33393i, -43111i)), vec3<i32>(u_input.a.x & 13361i, -1i, u_input.b)), ~((vec3<i32>(1569i, u_input.b, 38893i) & vec3<i32>(-1i, 48076i, -1i)) & ~vec3<i32>(u_input.a.x, 1i, u_input.a.x))));
    let var_3 = Struct_1(var_1.x, false);
    var var_4 = _wgslsmith_div_vec4_i32(reverseBits(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -1i, var_2.x, u_input.a.x), vec4<i32>(var_2.x, u_input.a.x, -50974i, 21789i))), vec4<i32>(select(1i, -var_2.x, all(vec4<bool>(arg_0.x, arg_0.x, false, var_3.b))), select(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, var_2.x, u_input.b), vec4<i32>(u_input.a.x, -18441i, 0i, -33223i)), !arg_0.x), _wgslsmith_mult_i32(24202i, var_2.x) & u_input.b, -(-46690i >> (global0.x % 32u)))) | vec4<i32>(i32(-1i) * -4157i, i32(-1i) * -15383i, _wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(var_2.x, u_input.b)), reverseBits(var_2.zz) << (vec2<u32>(global0.x, 56021u) % vec2<u32>(32u))), _wgslsmith_dot_vec2_i32(~(~var_2.zy), u_input.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) * -228f), arg_1.x) - _wgslsmith_f_op_f32(sign(var_1.x))));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(vec4<bool>(func_3(-53941i), 221f > global1.x, true, any(vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(802f, 304f, -1119f) + _wgslsmith_f_op_vec3_f32(-global1.zzw)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-912f)) + _wgslsmith_div_f32(global1.x, global1.x)), _wgslsmith_f_op_f32(1412f * -347f)))), all(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    var var_1 = _wgslsmith_f_op_f32(step(var_0.a, -1804f));
    global0 = u_input.c;
    var var_2 = ~vec4<u32>(~8833u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, global0.x, 19479u, 0u), ~vec4<u32>(global0.x, 0u, global0.x, global0.x))), 1u, u_input.c.x);
    var var_3 = firstTrailingBit(vec3<i32>(~_wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -1i, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<i32>(50477i, 3105i, u_input.b, u_input.a.x))), i32(-1i) * -min(u_input.b, -27761i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -48581i), -vec3<i32>(u_input.a.x, 7434i, 40618i)), vec3<i32>(-u_input.a.x, u_input.a.x, firstLeadingBit(u_input.b)))));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, global1.x))) - global1.x), -1316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) - -134f), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global1.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-102f, 2083f, -632f, -805f) + vec4<f32>(-891f, var_0.a, var_0.a, -883f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, var_0.a, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(852f - global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(962f, 1000f, global1.x, 930f))), var_0.b))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.x, 710f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1315f, 584f)))), false)), _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(1000f * global1.x), !any(vec4<bool>(true, true, true, false)))) >= global1.x);
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * 1409f), -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * 125f), _wgslsmith_f_op_f32(var_0.a - global1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(623f, -1622f, -1269f, -156f))))));
    var var_1 = Struct_1(var_0.a, true);
    var var_2 = _wgslsmith_f_op_f32(853f - -433f);
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f))), global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(202f * 1455f) + global1.x), _wgslsmith_f_op_f32(max(1000f, var_1.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, global1.x, var_1.a, 1303f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1470f, 1152f, global1.x, var_0.a) * _wgslsmith_f_op_vec4_f32(func_2()))) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global1.x, -619f, var_0.b)))), -1059f, var_1.a, -717f)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1084f * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1107f, global1.x)))), _wgslsmith_f_op_f32(-824f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(797f * 746f) - var_1.a))) + global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(827f, -1000f, -448f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_div_vec4_f32(vec4<f32>(-440f, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(global1.x * global1.x), -457f), vec4<f32>(_wgslsmith_f_op_f32(global1.x - 295f), _wgslsmith_f_op_f32(global1.x * 754f), global1.x, _wgslsmith_f_op_f32(step(1000f, global1.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-953f, global1.x, 999f, 304f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, global1.x)) * _wgslsmith_f_op_f32(global1.x * -1285f)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f * -1000f)), global1.x)), global1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(vec4<bool>(false, false, false, true), global1.xyw)))) - _wgslsmith_f_op_f32(f32(-1f) * -623f))));
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-197f, global1.x, global1.x, 211f) + vec4<f32>(-1088f, -831f, global1.x, global1.x)))))));
    var var_1 = any(select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, true, true), false), vec4<bool>(true, any(vec2<bool>(false, false)), true, true), any(vec2<bool>(true, true))), vec4<bool>(u_input.c.x == 48788u, !all(vec4<bool>(true, false, false, true)), !(u_input.b > u_input.b), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))), false));
    global1 = _wgslsmith_f_op_vec4_f32(func_2());
    var var_2 = !(select(select(8513i << (global0.x % 32u), u_input.a.x, false), _wgslsmith_mod_i32(u_input.b, reverseBits(-1i)), any(vec3<bool>(true, false, false)) | false) <= -56305i);
    let x = u_input.a;
    s_output = StorageBuffer((u_input.c.x & ~u_input.c.x) ^ u_input.c.x, ((-vec3<i32>(u_input.b, 17279i, u_input.b) >> (~global0.www % vec3<u32>(32u))) ^ (_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, u_input.b), vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<i32>(u_input.b, 43239i, -20123i)) & (vec3<i32>(u_input.a.x, 30772i, u_input.a.x) >> (global0.zyx % vec3<u32>(32u))))) ^ ~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.a.x, u_input.b)), vec3<i32>(-7631i, u_input.a.x, -20660i)));
}

