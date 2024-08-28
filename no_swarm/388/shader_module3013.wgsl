struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(~u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b.yyz, vec3<i32>(u_input.b.x, u_input.b.x, 22426i)), u_input.b.x), -2147483647i, u_input.b.x), u_input.b), abs(u_input.b.x), u_input.d ^ u_input.d);
    global0 = _wgslsmith_f_op_vec2_f32(arg_1.a.yz - arg_1.a.zy);
    let var_1 = _wgslsmith_sub_u32(~39847u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, arg_2, 4294967295u), 0u));
    let var_2 = arg_0;
    global0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1109f + -472f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2486f, 267f)))))));
    return _wgslsmith_f_op_f32(round(-1289f));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_4 {
    let var_0 = true;
    var var_1 = vec3<f32>(365f, -678f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, 481f, global0.x, 306f))), vec4<f32>(388f, global0.x, global0.x, 663f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, global0.x, global0.x, 1287f))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 1003f)))), reverseBits(firstTrailingBit(_wgslsmith_mult_u32(58021u, u_input.a))))));
    let var_2 = ~u_input.b;
    var_1 = vec3<f32>(-486f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -297f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(969f, var_1.x)))), 114f);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz) + vec2<f32>(1554f, -1521f)) + vec2<f32>(var_1.x, -1000f)) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1217f * -1001f) + 1186f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - var_1.x)))));
    return Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1054f), 202f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(488f, -321f, var_1.x), vec3<f32>(var_1.x, var_1.x, global0.x))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -211f, 1729f) - vec3<f32>(-859f, global0.x, 1217f)))))), ~2147483647i, vec2<i32>(u_input.d, ~u_input.b.x), Struct_1((i32(-1i) * -arg_1) & 2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-653f, 813f, global0.x), vec3<f32>(global0.x, var_1.x, 1049f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-530f, 576f, global0.x))))), -(~var_2)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_4) -> u32 {
    let var_0 = any(vec3<bool>(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), any(vec2<bool>(false, true)))), false, !(!(10569u < u_input.e.x))));
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.a.a.zx), arg_2.a.a.zy))))));
    var var_1 = _wgslsmith_add_i32(~(select(-2147483647i, arg_1.d.a, var_0) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.c), u_input.e.zx) % 32u)), (i32(-1i) * -1i) >> (~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(71139u, 1u, arg_0, 0u), vec4<u32>(u_input.e.x, arg_0, arg_0, 33848u)), 1u) % 32u));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-959f * arg_1.d.b.x), -533f), global0.x) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(arg_1.d.b.zz)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_2.d.b.zy, vec2<f32>(arg_2.a.a.x, 1765f)), _wgslsmith_f_op_vec2_f32(select(arg_2.d.b.yx, arg_2.a.a.yz, vec2<bool>(var_0, false))))))));
    var_1 = abs(firstTrailingBit((-5766i >> (u_input.a % 32u)) | 356i) & (arg_2.b ^ -(i32(-1i) * -1i)));
    return _wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(~arg_0, countOneBits(~firstTrailingBit(arg_0))), abs(_wgslsmith_mod_u32(108047u, u_input.e.x) ^ _wgslsmith_add_u32(arg_0, 52147u)) << (1u % 32u));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_4) -> vec2<f32> {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(114f, global0.x, -971f, 722f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_3.a.a.x, arg_0.x, -208f) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1188f, arg_3.d.b.x, -358f, arg_1.x), vec4<f32>(arg_0.x, arg_3.d.b.x, 1110f, -1000f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.a.x, -1384f, arg_3.d.b.x, -1054f) * vec4<f32>(arg_3.d.b.x, 597f, 371f, 209f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, arg_1.x, global0.x), vec4<f32>(-481f, -1222f, global0.x, -821f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, -191f, 1716f, -218f))));
    let var_1 = func_2(19611i, max(1i, i32(-1i) * -1i));
    let var_2 = arg_2;
    var var_3 = !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true)), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)));
    global0 = arg_1;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(342f, _wgslsmith_f_op_f32(arg_1.x + -813f)));
}

fn func_1() -> vec2<u32> {
    let var_0 = -abs(-u_input.d);
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(258f, global0.x) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -436f), vec2<f32>(824f, -221f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 159f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(423f, -516f) + vec2<f32>(-1003f, global0.x)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-691f, global0.x), vec2<f32>(global0.x, global0.x), true))))))));
    let var_1 = max(vec3<u32>(u_input.e.x, 12315u, 59686u), u_input.e);
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-997f, global0.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 894f) - vec2<f32>(global0.x, global0.x)))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-448f * _wgslsmith_f_op_f32(-global0.x)), global0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1161f) + vec2<f32>(global0.x, -214f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 511f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-592f, global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 2442f)), vec2<bool>(true, true)))), _wgslsmith_sub_u32(func_4(~15110u, func_2(u_input.d, u_input.b.x), Struct_4(Struct_2(vec3<f32>(2296f, 737f, global0.x)), -2147483647i, u_input.b.xw, Struct_1(var_0, vec3<f32>(global0.x, 1000f, global0.x), u_input.b))), ~u_input.c), Struct_4(func_2(2147483647i | var_0, 1i).a, select(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 0i, var_0), vec3<i32>(31423i, u_input.b.x, u_input.b.x)), var_0, true), _wgslsmith_clamp_vec2_i32(u_input.b.zx, u_input.b.wy, -vec2<i32>(21586i, var_0)), Struct_1(-32444i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(833f, 520f, -1794f)), u_input.b)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, 498f))), vec2<f32>(-273f, 462f), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, true), vec2<bool>(true, true)))))));
    return _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e.xx, _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.c, var_1.x)), u_input.e.xy, select(vec2<u32>(var_1.x, u_input.e.x), vec2<u32>(var_1.x, 56618u), true))) & ~max(vec2<u32>(var_1.x, 13180u), abs(vec2<u32>(var_1.x, var_1.x))), u_input.e.zy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-194f)), -703f, _wgslsmith_f_op_f32(f32(-1f) * -1245f)) - func_2(min(u_input.d, ~_wgslsmith_mult_i32(u_input.d, -1i)), _wgslsmith_mod_i32(11000i | u_input.d, -1i)).d.b);
    let var_2 = 1045f;
    var var_3 = false;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1632f)), _wgslsmith_f_op_f32(min(1523f, -488f))));
    var var_4 = vec2<bool>(true, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~(~0i), countOneBits(_wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, var_0.x), vec2<u32>(4294967295u, 1u))), vec2<u32>(27595u, u_input.a))));
}

