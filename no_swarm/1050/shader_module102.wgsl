struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = u_input.a;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1402f, 1527f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, -762f, arg_2.b)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_2.b) - vec3<f32>(-1000f, 243f, -851f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1.a.x, 1791f)))), -421f, (arg_0 << (arg_2.d % 32u)) >= ~6192u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1.a.x, arg_2.b, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b * 1000f) - var_1.a.x)))));
    let var_3 = vec3<u32>(arg_2.d | (~16047u >> (firstLeadingBit(abs(u_input.c.x)) % 32u)), ~(arg_2.d ^ 51832u), ~(~43513u));
    let var_4 = Struct_2(var_1.a);
    return !select(vec2<bool>(_wgslsmith_f_op_f32(-arg_1) > _wgslsmith_f_op_f32(min(-456f, var_2.x)), true), vec2<bool>(var_0.x > _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_2.c.x, arg_2.c.x), vec3<i32>(4016i, u_input.b, 2147483647i)), !(!arg_2.a.x)), vec2<bool>((false & arg_2.a.x) & true, true));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    var var_0 = vec4<u32>(firstLeadingBit(arg_1.d), ~(firstTrailingBit(_wgslsmith_mod_u32(arg_2.d, 1u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31198u, arg_1.d, arg_1.d), vec4<u32>(51489u, arg_1.d, arg_2.d, arg_2.d))), ~92373u, arg_1.d);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(138f - arg_2.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1391f, _wgslsmith_f_op_f32(sign(arg_2.b)), arg_1.a.x != arg_3)) * _wgslsmith_f_op_f32(-1752f * -591f))));
    var_0 = select(vec4<u32>(var_0.x, ~30768u, 44017u, reverseBits(54584u)), countOneBits(vec4<u32>(~(~1u), _wgslsmith_div_u32(52815u, firstTrailingBit(1u)), _wgslsmith_mult_u32(firstLeadingBit(39534u), arg_2.d), select(select(arg_2.d, 4294967295u, true), _wgslsmith_div_u32(var_0.x, arg_1.d), true))), arg_3);
    let var_2 = -2005f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + arg_2.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-arg_2.b))) - _wgslsmith_f_op_f32(exp2(var_1))) > -1000f;
    return vec2<i32>(-arg_1.c.x, -_wgslsmith_sub_i32(u_input.a.x, min(0i, _wgslsmith_mod_i32(1i, -2147483647i))));
}

fn func_2() -> Struct_2 {
    let var_0 = -func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1568f, 710f))), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(ceil(636f)), min(firstTrailingBit(vec3<i32>(1i, u_input.b, 0i)), -u_input.a.www), countOneBits(u_input.c.x)), Struct_1(func_3(1u, -409f, Struct_1(vec2<bool>(true, true), 332f, u_input.a.yzy, u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -563f), vec3<i32>(u_input.b, -20537i, _wgslsmith_dot_vec3_i32(u_input.a.zzz, u_input.a.ywx)), 46957u), true);
    var var_1 = select(all(select(vec4<bool>(true, all(vec2<bool>(true, true)), false, any(vec2<bool>(false, true))), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false), true), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))))), all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(all(vec3<bool>(true, true, false)), false, true), _wgslsmith_f_op_f32(round(-905f)) != _wgslsmith_f_op_f32(step(-795f, -1506f)))), 1u == abs(~u_input.c.x));
    var_1 = -1027f <= _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -695f), 244f, false)));
    var_1 = true;
    var_1 = true;
    return Struct_2(vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(-122f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-154f + 1000f))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = !any(vec2<bool>(all(vec3<bool>(true, true, true)), true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -328f), arg_0.a.x, true))), arg_1.a.x));
    let var_2 = Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), -761f, -u_input.a.zxx, ~u_input.c.x);
    var_0 = any(!(!vec4<bool>(all(vec4<bool>(var_2.a.x, false, var_2.a.x, var_2.a.x)), true, 4754u <= u_input.c.x, 2147483647i != u_input.a.x)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -148f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1550f)))), -610f, arg_0.a.x);
    return Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(-1083f + _wgslsmith_f_op_f32(1078f - -1057f)), 186f))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> vec3<f32> {
    let var_0 = u_input.a.x ^ ~(-1i);
    var var_1 = func_5(Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(214f, 476f, 525f)))))))), func_2());
    var_1 = func_2();
    var_1 = Struct_2(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().a.x - var_1.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1647f, _wgslsmith_f_op_f32(var_1.a.x - 307f))))));
    let var_2 = !(!func_3(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f), -342f), Struct_1(vec2<bool>(false, true), var_1.a.x, vec3<i32>(799i, 0i, u_input.a.x), arg_1.x)));
    return _wgslsmith_f_op_vec3_f32(-var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_1(any(vec3<bool>(true, true, true)), ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(30348u, u_input.c.x, u_input.c.x, 38439u), vec4<u32>(u_input.c.x, u_input.c.x, 1u, 4294967295u)), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 4294967295u)))));
    var var_1 = select(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(u_input.b <= 1i, all(vec3<bool>(true, true, true)), true)), select(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, false), vec3<bool>(true, func_3(1u, -1273f, Struct_1(vec2<bool>(false, false), var_0.a.x, vec3<i32>(u_input.a.x, u_input.b, -2147483647i), u_input.c.x)).x, true)), !(!select(false, true, true))), select(!vec3<bool>(true, all(vec3<bool>(true, false, true)), all(vec3<bool>(false, false, true))), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), true)), true & all(vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), true)));
    var var_2 = !var_1.x;
    let var_3 = abs(u_input.c.x);
    let var_4 = Struct_1(select(!vec2<bool>(var_0.a.x < 1449f, true), vec2<bool>(any(var_1.zx), true), vec2<bool>(u_input.a.x > u_input.a.x, true)), 1250f, min(vec3<i32>(36106i, -2147483647i, u_input.b), u_input.a.wxx), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 1u, 1u), min(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 65882u, 0u, var_3), vec4<u32>(u_input.c.x, 28947u, u_input.c.x, 21223u)), min(vec4<u32>(var_3, u_input.c.x, 23532u, var_3), vec4<u32>(u_input.c.x, 0u, 0u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(select(~vec3<u32>(0u, 5471u, 0u) >> (vec3<u32>(var_4.d, var_4.d, var_4.d) % vec3<u32>(32u)), ~(~vec3<u32>(28945u, 0u, 53112u)), func_3(var_4.d, _wgslsmith_f_op_f32(var_0.a.x - -1221f), var_4).x), min(abs(~vec3<u32>(1u, var_3, var_3)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_4.d, var_4.d, 0u), vec3<u32>(0u, 15452u, var_3), vec3<u32>(var_3, 16760u, 50736u)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(Struct_2(var_0.a), Struct_2(var_0.a)).a.x * var_4.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.b + -145f), _wgslsmith_div_f32(1257f, var_4.b))))), ~(~(i32(-1i) * -1i)));
}

