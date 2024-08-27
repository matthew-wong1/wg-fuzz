struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2593f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + -1002f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0.x)))));
    let var_1 = Struct_1(_wgslsmith_mod_u32(u_input.d, u_input.d), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x) - _wgslsmith_f_op_f32(abs(529f))), arg_0.x, arg_0.x), arg_1);
    let var_2 = 1i;
    var var_3 = var_1.c;
    var_3 = all(!vec4<bool>(var_1.c | false, var_2 < -41902i, all(vec3<bool>(var_1.c, var_1.c, var_1.c)), true)) || true;
    return var_2 != 8953i;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(~(~countOneBits(select(117595u, 4294967295u, arg_2.c))), arg_0.b, !(!arg_0.c));
    var var_1 = vec3<u32>(_wgslsmith_add_u32(18737u, _wgslsmith_mult_u32(~arg_1.x | ~54672u, arg_1.x)), firstTrailingBit(27254u) ^ select(_wgslsmith_mod_u32(31359u ^ var_0.a, ~87048u), _wgslsmith_div_u32(679u, 95061u) << (_wgslsmith_add_u32(u_input.d, arg_1.x) % 32u), false), _wgslsmith_add_u32(~arg_0.a, _wgslsmith_clamp_u32(54211u << (~var_0.a % 32u), arg_1.x, select(0u >> (var_0.a % 32u), 4294967295u, func_2(vec4<f32>(arg_2.b.x, arg_2.b.x, arg_0.b.x, arg_0.b.x), var_0.c)))));
    var_0 = Struct_1(~_wgslsmith_mod_u32(abs(_wgslsmith_dot_vec4_u32(arg_1, arg_1)), _wgslsmith_add_u32(1u, ~1u)), _wgslsmith_f_op_vec4_f32(arg_2.b * arg_2.b), all(!select(!vec4<bool>(true, false, var_0.c, var_0.c), select(vec4<bool>(false, false, arg_2.c, arg_2.c), vec4<bool>(var_0.c, arg_2.c, var_0.c, false), arg_0.c), false)));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(u_input.a, 2147483647i)), vec2<i32>(-_wgslsmith_dot_vec2_i32(select(vec2<i32>(-5436i, 2147483647i), vec2<i32>(u_input.a, u_input.c), vec2<bool>(arg_0.c, arg_2.c)), abs(vec2<i32>(u_input.a, u_input.c))), u_input.a));
    var var_3 = arg_2;
    return arg_1.zyx;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = all(select(!select(select(arg_3.xw, vec2<bool>(true, true), true), !vec2<bool>(arg_3.x, true), arg_3.x && false), !select(arg_3.zw, !vec2<bool>(arg_3.x, true), vec2<bool>(arg_3.x, arg_3.x)), arg_3.yy));
    return Struct_1(~4294967295u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-256f, -615f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f + -927f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -265f) - _wgslsmith_f_op_f32(max(396f, 207f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(248f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -352f)))))), !var_0);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    var var_0 = arg_1;
    var_0 = Struct_1(_wgslsmith_div_u32(~u_input.b, ~2440u), var_0.b, true);
    let var_1 = 547f;
    let var_2 = Struct_1(arg_2, arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768f + 246f) - _wgslsmith_f_op_f32(-var_1)) == _wgslsmith_f_op_f32(abs(arg_1.b.x)));
    var var_3 = var_2.b.x;
    return var_2.b.yzz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1079f, -218f, -1000f)) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-439f, 1416f, 204f))))))), _wgslsmith_f_op_vec3_f32(func_5(firstTrailingBit(26923u) | u_input.d, func_4(firstTrailingBit(func_1(Struct_1(4294967295u, vec4<f32>(-334f, -153f, 894f, -1267f), true), vec4<u32>(u_input.b, u_input.d, u_input.d, 0u), Struct_1(u_input.d, vec4<f32>(1501f, 313f, 863f, 305f), false))), 21378u, u_input.a, select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), any(vec2<bool>(true, true)))), ~(~0u ^ ~u_input.b))));
    let var_1 = func_4(vec3<u32>(select(58556u, func_4(vec3<u32>(u_input.b, u_input.d, u_input.d), 15745u, u_input.a, vec4<bool>(true, true, true, true)).a, select(true, all(vec4<bool>(false, true, true, false)), true)), _wgslsmith_add_u32(abs(_wgslsmith_mod_u32(u_input.b, 4294967295u)), ~28021u), 4294967295u), u_input.b, -2147483647i, !(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(false, true, true, true), u_input.c <= u_input.a)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(1141f)), var_0.x, _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(-var_0.x)));
    var var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, var_0.x, var_3.b.x, var_3.b.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1285f, var_2.x, -1000f, -142f), var_1.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~countOneBits(abs(var_1.a)), countOneBits(_wgslsmith_clamp_u32(0u, ~42524u, var_1.a))), var_3.a, vec4<i32>(_wgslsmith_mod_i32(29544i >> (_wgslsmith_mult_u32(u_input.d, 4294967295u) % 32u), u_input.c), _wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(u_input.a, u_input.a, u_input.c)), -reverseBits(vec3<i32>(15900i, -1i, -43030i))), reverseBits(u_input.a), 2147483647i), var_1.b.x);
}

