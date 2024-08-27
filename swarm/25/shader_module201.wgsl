struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = i32(-1i) * -2147483647i;
    global1 = _wgslsmith_mult_vec3_i32(vec3<i32>(~1i, 5262i, global1.x), vec3<i32>(-global1.x, ~1i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, global1.x, 9219i)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, -194f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 360f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1970f, global0.x)), true))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1401f, 1176f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 554f) + vec2<f32>(global0.x, 1000f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(-233f, -2903f)))))));
    global1 = u_input.c;
    var var_1 = u_input.d;
    return vec3<bool>(true, true, true);
}

fn func_4(arg_0: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, global0.x), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))), arg_0.x)), arg_0.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1062f)), _wgslsmith_f_op_f32(f32(-1f) * -174f)), vec2<f32>(global0.x, 222f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, global0.x, -793f), vec3<f32>(-490f, var_0.x, global0.x))), vec3<f32>(global0.x, -242f, 546f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, var_0.x, -1000f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(var_1.a.xx)), _wgslsmith_f_op_vec2_f32(var_1.a.xy + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(199f, -991f)) + _wgslsmith_f_op_f32(sign(2315f))), var_0.x))));
    global1 = ~vec3<i32>(select(2147483647i, ~_wgslsmith_div_i32(42338i, global1.x), arg_0.x), -(~u_input.d.x), -7413i);
    var var_3 = vec4<i32>(-2147483647i, 0i, u_input.d.x, u_input.d.x);
    return any(!select(select(!vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, false, true, arg_0.x), select(vec4<bool>(true, true, true, false), vec4<bool>(true, arg_0.x, arg_0.x, false), false)), !select(vec4<bool>(true, true, arg_0.x, true), vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(false, true, true, arg_0.x)), !select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0.x)));
}

fn func_2(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = Struct_1(vec3<f32>(-692f, 1487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -762f))))));
    let var_1 = vec4<bool>(all(select(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), u_input.b.x < u_input.b.x, func_4(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), func_3(), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), true))));
    let var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yx, abs(vec2<u32>(4294967295u, u_input.e.x))), ~u_input.b.x, (u_input.b.x >> (u_input.b.x % 32u)) << (u_input.e.x % 32u), ~u_input.e.x ^ firstTrailingBit(u_input.e.x)), max(vec4<u32>(19336u, u_input.b.x, u_input.e.x, u_input.b.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 66274u, 0u), u_input.b, u_input.b) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.e, vec4<u32>(u_input.b.x, 4294967295u, 5973u, 0u))));
    global1 = u_input.d.wzw;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1124f, global0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(1166f, var_0.a.x), 1529f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a.yz, vec2<f32>(-317f, 580f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1761f) * vec2<f32>(1000f, global0.x)) + vec2<f32>(var_0.a.x, 328f)))) - var_0.a.xx);
    return true == all(!(!(!vec4<bool>(false, var_1.x, var_1.x, false))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 45799u;
    var var_1 = u_input.b.zx;
    let var_2 = arg_3;
    let var_3 = !all(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(true, false, true) & true));
    var var_4 = var_3;
    return arg_0;
}

fn func_1() -> vec2<i32> {
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-533f, global0.x, global0.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-849f - 770f) + _wgslsmith_f_op_f32(select(global0.x, global0.x, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1233f), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(ceil(-641f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-323f, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 305f, global0.x, global0.x))), func_2(53342i, global1.x)))))), global0.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, -1472f), vec3<f32>(-1095f, -1415f, global0.x)))))));
    let var_1 = vec4<i32>(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, -2147483647i), -3860i), _wgslsmith_dot_vec2_i32(u_input.c.zx, abs(u_input.c.zy))), -2147483647i ^ u_input.a, 0i, -2147483647i);
    var var_2 = -2147483647i;
    var var_3 = func_5(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1000f, global0.x), var_0.a) + _wgslsmith_f_op_vec3_f32(max(var_0.a, var_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(var_0.a.x - -1000f)), func_5(Struct_1(var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, global0.x, global0.x, global0.x)), global0.x, func_5(Struct_1(vec3<f32>(-528f, 290f, -1115f)), vec4<f32>(var_0.a.x, global0.x, -515f, global0.x), var_0.a.x, Struct_1(vec3<f32>(global0.x, var_0.a.x, -287f)))).a.x, 1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.x, global0.x), global0.x)), var_0.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, global0.x, 792f) + vec3<f32>(global0.x, global0.x, var_0.a.x)) * _wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(global0.x, -1534f, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.x, 1024f, var_0.a.x, -1174f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, var_0.a.x, global0.x, 779f) + vec4<f32>(-337f, global0.x, -382f, var_0.a.x))))))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)), func_5(func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1534f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, global0.x, global0.x, -878f))), -801f, Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(var_0.a.x, global0.x, 381f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(415f, global0.x, global0.x, global0.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x - -590f), var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1029f * global0.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 703f, -1267f)), _wgslsmith_f_op_vec3_f32(-var_0.a), any(vec4<bool>(true, true, true, false)))))));
    let var_4 = func_5(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a.x, -514f, var_0.a.x), vec3<f32>(481f, var_3.a.x, global0.x), true))), _wgslsmith_f_op_vec3_f32(select(var_3.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.a.x, var_0.a.x, 1151f), vec3<f32>(var_0.a.x, 1060f, 569f))), true)), false))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, 1305f))), var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-234f - _wgslsmith_f_op_f32(max(var_3.a.x, var_0.a.x))))), -1344f, Struct_1(_wgslsmith_f_op_vec3_f32(-func_5(func_5(Struct_1(vec3<f32>(-518f, 800f, var_0.a.x)), vec4<f32>(var_0.a.x, 831f, -560f, -1000f), 624f, Struct_1(vec3<f32>(241f, 225f, global0.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, var_3.a.x, var_3.a.x, var_3.a.x), vec4<f32>(1361f, global0.x, var_3.a.x, global0.x))), _wgslsmith_f_op_f32(var_3.a.x * -1075f), Struct_1(var_0.a)).a)));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 0i), reverseBits(u_input.d.xw));
}

fn func_6(arg_0: i32, arg_1: vec3<i32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_1 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), 1003f);
    var var_0 = arg_2;
    var var_1 = countOneBits(_wgslsmith_add_i32(abs(1i) | u_input.d.x, _wgslsmith_dot_vec3_i32(arg_1, firstTrailingBit(vec3<i32>(arg_0, arg_0, 1i))) << (u_input.b.x % 32u)));
    let var_2 = arg_1;
    let var_3 = any(func_3());
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, -837f, global0.x)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a ^ ~(-5870i);
    let var_1 = _wgslsmith_mod_i32(global1.x, -26119i & u_input.d.x) ^ (i32(-1i) * -global1.x);
    let var_2 = func_6(~(19838i | _wgslsmith_dot_vec2_i32(func_1(), -vec2<i32>(var_1, -1i))), vec3<i32>(countOneBits(31597i), var_1, countOneBits(global1.x)), false, select(~u_input.b, ~u_input.b, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)) << (_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.b.x, 50769u, 33957u, u_input.e.x)), ~vec4<u32>(37306u, u_input.e.x, 4294967295u, u_input.b.x) ^ u_input.b) % vec4<u32>(32u)));
    var_0 = abs(min(var_1, var_1));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a, var_2.a) + vec3<f32>(225f, 1280f, -587f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -226f, var_2.a.x), vec3<f32>(369f, global0.x, global0.x))))))));
    let var_4 = firstTrailingBit(u_input.e.x);
    var var_5 = _wgslsmith_mod_i32((i32(-1i) * -(i32(-1i) * -2147483647i)) << (_wgslsmith_dot_vec2_u32(abs(u_input.e.yw) >> (u_input.e.zy % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.b.zw, vec2<u32>(1u, 1u)) >> (~u_input.e.yy % vec2<u32>(32u))) % 32u), max(~79317i, -41303i));
    global1 = min(u_input.c, vec3<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a & -53391i, 1i, firstLeadingBit(-47793i), ~global1.x), abs(vec4<i32>(var_1, -1i, u_input.a, var_1) << (vec4<u32>(u_input.e.x, u_input.e.x, 70767u, var_4) % vec4<u32>(32u)))), abs(-(~var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~u_input.b.x))));
}

