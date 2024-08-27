struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(34707u, arg_0.a), 71098u)), true);
    let var_1 = !vec2<bool>(-u_input.a <= u_input.a, any(select(vec2<bool>(true, var_0.b), vec2<bool>(false, true), var_0.b)) | var_0.b);
    var_0 = arg_0;
    var_0 = arg_0;
    let var_2 = Struct_1(~1u, arg_0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-495f - _wgslsmith_f_op_f32(abs(232f))));
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    let var_0 = Struct_1(~(~1u), !arg_0.x);
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(var_0)), 1f, any(vec4<bool>(var_0.b, arg_0.x, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -675f))), 1f, _wgslsmith_f_op_f32(295f - _wgslsmith_f_op_f32(step(509f, _wgslsmith_f_op_f32(-578f - -1072f))))));
    let var_3 = select(select(select(!select(vec4<bool>(var_0.b, false, var_0.b, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), select(select(vec4<bool>(arg_0.x, true, var_0.b, var_0.b), vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, arg_0.x, var_0.b, var_0.b), vec4<bool>(arg_0.x, false, true, arg_0.x)), vec4<bool>(true, select(true, true, var_0.b), true, var_0.b)), vec4<bool>(select(arg_0.x, all(arg_0), true), var_0.b, (var_0.a >> (var_0.a % 32u)) != (var_0.a | var_0.a), !var_0.b), select(vec4<bool>(true, true, true, true), select(!vec4<bool>(arg_0.x, var_0.b, false, false), vec4<bool>(arg_0.x, var_0.b, var_0.b, false), select(vec4<bool>(var_0.b, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, true, var_0.b, var_0.b), false)), select(true, true, all(vec2<bool>(var_0.b, false))))), select(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, 0i, -36132i)) < 7002i, any(vec4<bool>(false, true, arg_0.x, arg_0.x)), false, any(select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, arg_0.x)))), select(!(!vec4<bool>(var_0.b, var_0.b, false, arg_0.x)), !select(vec4<bool>(arg_0.x, true, var_0.b, arg_0.x), vec4<bool>(var_0.b, false, var_0.b, false), arg_0.x), arg_0.x), !select(select(vec4<bool>(false, arg_0.x, true, true), vec4<bool>(var_0.b, var_0.b, false, true), vec4<bool>(var_0.b, false, false, false)), vec4<bool>(true, false, var_0.b, var_0.b), select(vec4<bool>(arg_0.x, var_0.b, true, arg_0.x), vec4<bool>(var_0.b, var_0.b, false, var_0.b), false))), arg_0.x);
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-3088f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-329f)))) - _wgslsmith_f_op_f32(max(var_2.x, 570f))), -676f, var_2.x);
    return _wgslsmith_div_u32(~min(var_0.a, 9265u), reverseBits(var_0.a)) << (~(~4294967295u) % 32u);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -5284i;
    var var_1 = Struct_1(func_2(vec3<bool>(arg_0.b || true, arg_0.a == ~arg_0.a, arg_0.b)), arg_0.b);
    var_1 = Struct_1(27030u, !all(vec4<bool>(all(vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), arg_0.b, !var_1.b, !arg_0.b)));
    let var_2 = firstTrailingBit(vec3<i32>(abs(6053i), _wgslsmith_mult_i32(23755i & var_0, i32(-1i) * -1i), ~7525i & var_0) ^ (vec3<i32>(26138i, var_0, u_input.a) | vec3<i32>(select(1i, 2147483647i, true), 1i, abs(var_0))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-908f)), -1434f)), 408f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(112f, -2372f)))), 591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1916f, 195f)))))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(225f, -579f), _wgslsmith_f_op_f32(-2980f - _wgslsmith_f_op_f32(f32(-1f) * -240f)))), -598f, -104f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1033f + 1805f))))));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = arg_0;
    var var_2 = select(arg_2.wyy, !vec3<bool>(var_1.b, func_1(func_1(Struct_1(var_1.a, var_1.b))).b, true), !var_1.b == false);
    var var_3 = true;
    var var_4 = any(select(select(!vec4<bool>(var_0.x, false, arg_0.b, arg_0.b), arg_2, !select(arg_2, vec4<bool>(true, true, true, arg_0.b), vec4<bool>(arg_2.x, arg_2.x, var_1.b, false))), vec4<bool>(var_2.x, !select(var_2.x, true, true), false, any(!vec4<bool>(true, false, var_0.x, true))), !vec4<bool>(true, false, all(var_0.zxx), all(var_0))));
    return func_1(arg_0);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = vec2<u32>(~0u, arg_0.a);
    let var_1 = -1000f;
    let var_2 = arg_1;
    let var_3 = Struct_1(var_2.a, !func_1(var_2).b);
    let var_4 = select(_wgslsmith_clamp_i32(select(0i, u_input.a, -14722i <= u_input.a), 2147483647i, -9782i) ^ ~firstTrailingBit(-u_input.a), u_input.a, !(!var_2.b));
    return abs(arg_3.a ^ _wgslsmith_dot_vec2_u32(var_0, vec2<u32>(24801u, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(abs(_wgslsmith_mult_u32(~83520u, 1u)) << (_wgslsmith_sub_u32(1u, 1u) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(2310u, 41932u), vec2<u32>(1u, 1u)), min(~vec2<u32>(6846u, 55230u), vec2<u32>(1u, 1u)))), 36446u, 1u);
    var var_1 = Struct_1(func_5(func_4(func_1(Struct_1(0u, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(321f, -1000f) * 1870f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)), Struct_1(0u, !any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_mult_u32(39252u, var_0.x), true))), func_1(Struct_1(var_0.x, true))), any(vec2<bool>(any(vec4<bool>(true, true, true, true)), false)));
    let var_2 = _wgslsmith_div_i32(countOneBits(1i), abs(abs(~reverseBits(-25470i))));
    let var_3 = vec2<bool>(var_1.b, false);
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -177f))))), _wgslsmith_f_op_f32(2560f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(Struct_1(35648u, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_mult_vec4_i32(max(vec4<i32>(0i, -2147483647i, var_2, u_input.a), vec4<i32>(2147483647i, var_2, -8783i, 2147483647i)), ~vec4<i32>(1i, 6968i, 27983i, 1i)), abs(vec4<i32>(487i, 36503i, 4088i, 9354i)) >> (~vec4<u32>(1u, 4294967295u, 23853u, var_0.x) % vec4<u32>(32u)), !(!vec4<bool>(var_1.b, var_1.b, true, true))), -(vec3<i32>(u_input.a, -67352i, u_input.a) ^ vec3<i32>(-27579i, 2147483647i, var_2)) | -vec3<i32>(abs(-2546i), ~(-1439i), 1i), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4, var_4) - vec2<f32>(var_4, -1000f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4))));
}

