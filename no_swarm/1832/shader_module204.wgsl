struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: vec3<f32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(arg_2);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.wyx) + _wgslsmith_f_op_vec3_f32(round(arg_0.wxw))), arg_0.zww)) + arg_0.wzx);
    let var_1 = Struct_1(all(vec2<bool>(true, (1u & u_input.a) >= ~2049u)));
    let var_2 = u_input.b.x;
    let var_3 = global0.x;
    return -8430i;
}

fn func_2() -> vec3<bool> {
    let var_0 = -vec4<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(firstLeadingBit(-2147483647i), 37967i << (u_input.a % 32u))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x)), 26247i | _wgslsmith_div_i32(u_input.b.x, -52009i)), _wgslsmith_mult_i32(u_input.b.x, (u_input.b.x | -9452i) ^ u_input.b.x), -11529i);
    var var_1 = vec4<i32>(-13383i, -min(i32(-1i) * -2147483647i, u_input.b.x) << (max(29054u, 1u) % 32u), ~min(u_input.b.x, _wgslsmith_div_i32(-1i | var_0.x, -var_0.x)), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1168f, _wgslsmith_f_op_f32(select(global0.x, global0.x, true)), _wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(step(global0.x, 1299f)))), ~max(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) >> (vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u) % vec4<u32>(32u)), ~vec4<u32>(3108u, 1u, u_input.a, u_input.a)), Struct_1(true)));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + 2475f), -305f, _wgslsmith_f_op_f32(-931f - 354f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-189f, -653f, 507f), vec3<f32>(global0.x, global0.x, global0.x)))))), vec3<f32>(-1900f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * -1194f))), 613f), -811f));
    var_1 = vec4<i32>(~(~(~(-1i))), -1i, reverseBits(27i), _wgslsmith_dot_vec2_i32(u_input.b.yy, var_0.zy) << (u_input.a % 32u)) | _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.b.x >> (~u_input.a % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(var_0, u_input.b), var_0), 1i, _wgslsmith_mod_i32(u_input.b.x, 12305i) | var_1.x), ~(~vec4<i32>(-14288i, u_input.b.x, -2147483647i, -2147483647i)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(23703u, u_input.a, 73562u, 27688u), vec4<u32>(1u, 1u, 93545u, 81459u)) % vec4<u32>(32u)));
    let var_2 = ~var_0.x;
    return vec3<bool>(any(vec2<bool>(var_2 > _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_1.x, u_input.b.x), u_input.b.zyx), false)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: u32, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = !select(vec2<bool>(true, true), !vec2<bool>(false, all(arg_3.yx)), !arg_3.x);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-1522f * 723f))), 721f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2720f - _wgslsmith_f_op_f32(-global0.x))) - 1000f);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(598f)), 1179f, _wgslsmith_f_op_f32(f32(-1f) * -784f))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -356f)), global0.x)));
    let var_2 = select(select(func_2(), select(arg_3, arg_3, true), true), arg_3, true);
    return Struct_2(Struct_1(true));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> f32 {
    let var_0 = vec2<bool>(false, arg_2);
    let var_1 = true;
    let var_2 = Struct_2(arg_0.a);
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, 750f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-202f, -133f, global0.x))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1102f, global0.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.x, 1855f, global0.x)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, -495f, 1000f)))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-522f, _wgslsmith_f_op_f32(sign(759f)), _wgslsmith_f_op_f32(trunc(1950f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1571f, 217f, global0.x))))))), true))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-218f + global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-273f))))))) + 356f);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1735f - 1425f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(283f + arg_1.x) + _wgslsmith_f_op_f32(global0.x - 849f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global0.x)))))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(417f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-944f, -998f))), arg_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_5(func_4(-vec4<i32>(36109i, u_input.b.x, u_input.b.x, -2147483647i), -2147483647i, ~0u, func_2()), _wgslsmith_mod_i32(~(-1i), max(47380i, u_input.b.x)), any(!vec3<bool>(true, arg_0.a, arg_0.a)), Struct_2(arg_0))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), -764f), 1000f, ((true | arg_0.a) || false) || true)));
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(192f, -271f, arg_1.x)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1000f, -796f) + vec3<f32>(arg_1.x, 1000f, arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(371f, 766f, 1000f))))))));
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-1i, 53581i), _wgslsmith_mult_i32(-reverseBits(~u_input.b.x), u_input.b.x));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x)));
    return func_4(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(~var_0, var_0), -firstTrailingBit(-1i)), var_0, _wgslsmith_mod_i32(-8708i, -u_input.b.x), 2147483647i), u_input.b.x, ~(~(~1u)), vec3<bool>(!all(!vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1118f)) - _wgslsmith_f_op_f32(sign(1519f))) <= _wgslsmith_f_op_f32(-351f * -2231f))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -494f))));
    var var_1 = Struct_2(func_1(Struct_1(true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2000f, global0.x) + global0.xy) - global0.zz))));
    var var_2 = Struct_2(func_1(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.xz, _wgslsmith_f_op_vec2_f32(select(global0.yx, global0.zz, var_1.a.a)), !var_1.a.a)) - vec2<f32>(_wgslsmith_f_op_f32(global0.x - 1675f), _wgslsmith_f_op_f32(-1000f * global0.x)))));
    var var_3 = !vec3<bool>(true, true, any(select(vec2<bool>(true, var_1.a.a), func_2().yy, all(vec2<bool>(false, var_2.a.a)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-427f, global0.x))), vec2<f32>(-255f, global0.x), true)), global0.zy));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(426f, 963f)), 462f)), global0.x, _wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(trunc(-193f))), -222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, var_4.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2046f, -814f, -780f))), select(select(func_2(), !vec3<bool>(var_1.a.a, var_3.x, false), var_1.a.a), select(!vec3<bool>(true, false, var_1.a.a), !vec3<bool>(var_2.a.a, false, true), var_3.x), !var_2.a.a))));
    var_1 = func_4(vec4<i32>(33498i, u_input.b.x, -1i, -42745i), u_input.b.x, u_input.a, vec3<bool>(var_4.x < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1737f * global0.x))), (var_3.x && true) != true, var_2.a.a));
    let var_5 = _wgslsmith_f_op_vec2_f32(var_4 * var_4);
    let var_6 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

