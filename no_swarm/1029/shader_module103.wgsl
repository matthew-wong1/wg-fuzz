struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -827f)));
}

fn func_3() -> u32 {
    let var_0 = select(vec4<i32>(1i, 1i, 1i, 1i), -_wgslsmith_div_vec4_i32(select(-vec4<i32>(-1i, -1i, -2147483647i, 1i), reverseBits(vec4<i32>(10326i, 10666i, -2147483647i, -1i)), true), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-36782i, -2147483647i, -2147483647i, -36375i)), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 1i, 21554i, 1i), vec4<i32>(2147483647i, 14158i, -2147483647i, -1i)))), !select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false))), all(vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1087f, 1816f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(233f + -827f)))), -682f));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-634f, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, 184f, var_1.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(-3128f, _wgslsmith_f_op_f32(738f + var_1.x), _wgslsmith_div_f32(var_1.x, 1834f), var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-459f, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, 786f, var_1.x, var_1.x)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(var_1.x + 1249f))) * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f - -184f))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 1123f) - _wgslsmith_f_op_f32(sign(var_1.x))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(640f, var_1.x), var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x)), -560f))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1451f - -513f), -1925f, var_1.x, -1273f);
    return u_input.a.x;
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = 44375u;
    var_0 = _wgslsmith_dot_vec4_u32(max(max(vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x ^ 4576u), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) | vec4<u32>(10419u, u_input.a.x, 0u, u_input.a.x))), ~vec4<u32>(~1u, select(u_input.a.x, u_input.a.x, arg_0.a), u_input.a.x & u_input.a.x, func_3())), abs(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 10081u) | min(vec4<u32>(5076u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 51932u, 38625u, u_input.a.x))) | vec4<u32>(abs(u_input.a.x) | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xz), u_input.a.x, 1u, u_input.a.x));
    let var_1 = vec4<f32>(709f, 1000f, _wgslsmith_f_op_f32(-1000f - 1816f), _wgslsmith_f_op_f32(trunc(1f)));
    let var_2 = ~reverseBits(_wgslsmith_add_vec4_u32(~select(vec4<u32>(63029u, 34605u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), arg_0.a), select(_wgslsmith_mult_vec4_u32(vec4<u32>(27178u, u_input.a.x, 1u, u_input.a.x), vec4<u32>(1u, 36124u, 2511u, 4294967295u)), vec4<u32>(14140u, 10590u, u_input.a.x, 0u), true)));
    var var_3 = abs(max(1u, 4294967295u));
    return vec4<bool>(arg_0.a, (~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, var_2.x, var_2.x)) <= 0u) && (var_2.x > 1u), select(true, true, true), !(!select(arg_0.a, false, arg_0.a)) | true);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648f + 526f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))))) + vec2<f32>(-538f, -952f));
    let var_2 = var_1;
    let var_3 = u_input.a.x >= firstTrailingBit(func_3());
    let var_4 = Struct_2(var_3);
    return var_0.d;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.a)), _wgslsmith_div_f32(arg_0.b, -434f), vec3<u32>(1u, min(arg_0.c.x, u_input.a.x), 20234u), -arg_0.d);
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<f32>(_wgslsmith_f_op_f32(-1000f * -698f), arg_0.b))), 2040f), -832f, vec3<u32>(arg_0.c.x, arg_1, 42166u), ~func_4(vec3<bool>(all(vec3<bool>(true, true, false)), arg_3.x & false, true), select(vec4<bool>(false, arg_2, arg_3.x, false), select(vec4<bool>(arg_3.x, arg_2, false, true), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_2), vec4<bool>(arg_2, true, arg_3.x, true)), vec4<bool>(false, arg_2, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_div_f32(-1301f, var_0.b)), arg_0));
    let var_1 = Struct_2(arg_3.x);
    var var_2 = Struct_2((func_2(var_1).x || any(vec2<bool>(arg_3.x, false))) || ((abs(arg_1) >= (arg_1 << (u_input.a.x % 32u))) | !arg_3.x));
    let var_3 = Struct_2(true);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.a.x, 57962u, abs(23775u));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1933f * 819f) - _wgslsmith_f_op_f32(sign(-1000f)))) + _wgslsmith_f_op_f32(f32(-1f) * -363f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f)), -812f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<f32>(-280f, -765f))), _wgslsmith_f_op_f32(select(1785f, _wgslsmith_f_op_f32(-1281f * 1145f), all(vec4<bool>(false, false, true, false))))) + -297f), 1458f);
    let var_2 = func_5(Struct_1(916f, var_1.x, ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, 1u), vec3<u32>(41785u, 1u, 1u)), func_4(vec3<bool>(true, true, true), !func_2(Struct_2(true)), var_1.x, Struct_1(var_1.x, _wgslsmith_f_op_f32(var_1.x + -531f), vec3<u32>(24464u, var_0.x, 0u), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -32473i), vec2<i32>(66209i, 0i))))), 22009u, _wgslsmith_f_op_f32(410f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - _wgslsmith_f_op_f32(abs(452f)))) == 1000f, select(!vec3<bool>(func_2(Struct_2(true)).x, true, 14596u != var_0.x), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    var var_3 = var_2.a;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.zwz) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.yww) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, -208f, 207f)))) * vec3<f32>(_wgslsmith_f_op_f32(func_1(vec2<f32>(var_1.x, 618f))), -2292f, _wgslsmith_f_op_f32(max(-238f, var_2.b))))));
    let var_5 = Struct_2(max(_wgslsmith_mod_u32(var_2.c.x & 10870u, 0u), ~(var_2.c.x ^ 1u)) <= (1u ^ firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7020u, 0u, 1u), vec4<u32>(var_0.x, 1816u, 18607u, 33680u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -140f), var_2.d & func_4(!(!vec3<bool>(false, var_5.a, var_5.a)), !select(vec4<bool>(true, true, var_5.a, true), vec4<bool>(true, var_5.a, true, var_5.a), var_5.a), 947f, var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1514f)), _wgslsmith_f_op_f32(var_2.a + -734f)))), func_5(var_2, select(var_2.c.x, _wgslsmith_mod_u32(1u, var_2.c.x << (var_2.c.x % 32u)), !func_2(var_5).x), all(vec2<bool>(all(vec3<bool>(false, true, var_5.a)), true)), select(func_2(Struct_2(var_5.a)).yyz, func_2(Struct_2(var_5.a)).xxz, var_5.a)).c.x, max(abs(var_2.c.yx), u_input.a.yx));
}

