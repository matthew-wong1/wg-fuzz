struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = any(select(select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true), !(_wgslsmith_f_op_f32(exp2(global0.x)) < -1304f)));
    let var_1 = select(!vec2<bool>(all(vec2<bool>(false, true)), select(u_input.a.x > u_input.a.x, 115f >= global0.x, true)), !vec2<bool>(select(true, false, false) || true, true), any(vec4<bool>(select(false, any(vec2<bool>(false, false)), true), u_input.a.x < u_input.a.x, _wgslsmith_f_op_f32(select(-1000f, arg_0.x, false)) <= _wgslsmith_f_op_f32(round(global0.x)), (u_input.a.x & u_input.a.x) >= _wgslsmith_div_u32(u_input.a.x, u_input.a.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(223f + _wgslsmith_f_op_f32(step(-745f, _wgslsmith_f_op_f32(746f * 528f)))), 133f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1345f, 936f, false))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1409f, arg_0.x, global0.x, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_div_f32(global0.x, 833f), _wgslsmith_f_op_f32(1564f - global0.x), 602f))))));
    var var_3 = Struct_1(~(1u & ~(u_input.a.x << (4294967295u % 32u))), ~min(-15097i, ~(~(-14020i))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.xx)), reverseBits(u_input.a.x)), u_input.a.yz, vec2<u32>(u_input.a.x, ~0u)));
    var var_4 = var_2.x;
    return !vec2<bool>(true, !(_wgslsmith_f_op_f32(-arg_0.x) < -2063f));
}

fn func_2() -> Struct_1 {
    let var_0 = !(!(!func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-116f, 1477f) - vec2<f32>(1259f, 273f)))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(2196f, global0.x)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(ceil(global0.x)))));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(1i, 4982i, 14864i)), ~min(vec3<i32>(0i, 24019i, 2147483647i), vec3<i32>(-48587i, -29304i, 2147483647i))), -vec3<i32>(~(-1i), firstTrailingBit(6043i), countOneBits(-1i))), ~(~countOneBits(-1i)), ~(-16630i));
    return Struct_1(~u_input.a.x, var_1.x, vec2<u32>(abs(0u), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 6217u, u_input.a.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = arg_1;
    global0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(906f, _wgslsmith_f_op_f32(min(-684f, -1774f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(455f, _wgslsmith_f_op_f32(step(371f, global0.x)))))));
    let var_1 = var_0;
    return u_input.a.yzx;
}

fn func_1(arg_0: i32) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.x) + vec2<f32>(global0.x, global0.x))))));
    var var_0 = false;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -1085f) + vec2<f32>(global0.x, 1122f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(852f, -2025f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(454f, -186f)))), _wgslsmith_add_u32(37288u, u_input.a.x) >= _wgslsmith_div_u32(u_input.a.x, 4294967295u)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)))))));
    let var_1 = func_4(func_2(), Struct_2(vec4<i32>(arg_0, arg_0, -arg_0, abs(-53580i)) | _wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0, 0i, -21130i), -vec4<i32>(-6561i, arg_0, arg_0, arg_0))));
    let var_2 = Struct_2(abs(~(min(vec4<i32>(1752i, 26012i, arg_0, -1i), vec4<i32>(arg_0, arg_0, 20209i, 4111i)) ^ ~vec4<i32>(arg_0, arg_0, -2147483647i, -25783i))));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(121f, global0.x))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, 312f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1058f)), _wgslsmith_div_vec2_f32(vec2<f32>(-409f, global0.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(912f, global0.x), vec2<f32>(global0.x, global0.x), vec2<bool>(false, true)))), any(vec3<bool>(true, true, true)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-144f - global0.x), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 856f) * vec2<f32>(1226f, global0.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) - vec2<f32>(global0.x, global0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(576f, global0.x)))) + vec2<f32>(-1065f, _wgslsmith_f_op_f32(-193f * _wgslsmith_f_op_f32(f32(-1f) * -1179f)))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.x) + vec2<f32>(global0.x, -199f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(967f, global0.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, 858f), vec2<f32>(global0.x, 1393f))), vec2<bool>(true, true)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(610f * global0.x) + 116f)), global0.x)));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(693f, 1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(0i)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(414f, 347f) + vec2<f32>(787f, global0.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.x, 2560f))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))))));
    let var_0 = ~abs(func_2().c);
    global0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -411f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-469f - global0.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + 1335f), _wgslsmith_f_op_f32(f32(-1f) * -1192f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 2252f), vec2<f32>(global0.x, global0.x), vec2<bool>(false, false)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(-25722i)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 460f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global0.x)), vec2<f32>(645f, -353f))), vec2<bool>(true, false)))));
    var var_1 = u_input.a.wxy & u_input.a.yxy;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, ~countOneBits(u_input.a));
}

