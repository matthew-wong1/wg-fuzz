struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(535f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(502f, -297f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1380f), -1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -109f), -737f))))), _wgslsmith_f_op_f32(round(736f)), false, u_input.c.yy, (reverseBits(vec4<u32>(u_input.c.x, 0u, 4294967295u, 29430u)) & _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 33839u, u_input.c.x), reverseBits(vec4<u32>(1u, u_input.c.x, 1u, u_input.c.x)))) ^ _wgslsmith_mod_vec4_u32(~min(vec4<u32>(u_input.c.x, u_input.c.x, 44957u, 6077u), vec4<u32>(u_input.c.x, 4294967295u, 5775u, u_input.c.x)), vec4<u32>(0u, _wgslsmith_add_u32(1u, 20179u), ~4294967295u, firstLeadingBit(0u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, var_1.b));
    var_0 = _wgslsmith_f_op_f32(sign(var_1.a));
    let var_2 = _wgslsmith_f_op_f32(round(var_1.b));
    return !all(vec4<bool>(true, select(select(var_1.c, var_1.c, arg_1.x), arg_0.x, true), true, true));
}

fn func_2() -> f32 {
    let var_0 = vec2<u32>(u_input.c.x, 33780u);
    var var_1 = -vec3<i32>(u_input.d.x, -2147483647i << (var_0.x % 32u), u_input.e.x) << (vec3<u32>(var_0.x << (var_0.x % 32u), var_0.x, firstLeadingBit(4294967295u)) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1269f)) * -701f), _wgslsmith_f_op_f32(sign(-739f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-736f)), -868f)) + _wgslsmith_f_op_f32(744f + _wgslsmith_f_op_f32(-1622f + 373f))));
    let var_3 = select(vec2<bool>(true, var_2), vec2<bool>(true & (abs(var_0.x) > 4294967295u), !func_3(!vec4<bool>(var_2, true, true, true), vec4<bool>(true, true, true, true))), func_3(!vec4<bool>(func_3(vec4<bool>(true, var_2, true, false), vec4<bool>(false, false, var_2, var_2)), var_2, true, true), select(vec4<bool>(true, false, true, var_2), vec4<bool>(false || var_2, !var_2, var_2, any(vec3<bool>(true, var_2, var_2))), var_2)));
    let var_4 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(195f * -645f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(854f, 1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-885f, -1573f, var_2))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -1208f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-684f * _wgslsmith_f_op_f32(select(365f, -1262f, true)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(775f, -131f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-457f, -401f)), _wgslsmith_f_op_f32(f32(-1f) * -193f)))), false, var_0, ~vec4<u32>(27359u, _wgslsmith_div_u32(u_input.c.x, var_0.x ^ var_0.x), ~abs(43013u), u_input.c.x));
    return _wgslsmith_f_op_f32(269f - 772f);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, 303f, arg_3, arg_2.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1423f, arg_3, -723f, arg_3) - vec4<f32>(arg_2.a, arg_2.b, 556f, -403f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, -694f, -451f, arg_2.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, arg_3, arg_3, 804f) + vec4<f32>(arg_3, arg_3, 1772f, arg_3))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_3, arg_3, _wgslsmith_f_op_f32(min(-221f, _wgslsmith_f_op_f32(func_2()))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1140f)), _wgslsmith_f_op_f32(round(138f)), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f))));
    let var_1 = reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(max(abs(-25577i), 15731i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.x, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, 16853i, u_input.b, u_input.b)), abs(-u_input.d.x), arg_0.x), -(~(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, 28799i) >> (arg_2.e % vec4<u32>(32u))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -125f, -1137f, arg_3)) - vec4<f32>(var_0.x, arg_3, var_0.x, arg_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1741f, var_0.x, arg_3, 447f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-954f, _wgslsmith_div_f32(-563f, 571f), -869f, _wgslsmith_f_op_f32(abs(arg_2.b))))));
    var var_2 = arg_2;
    return !arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(reverseBits(select(u_input.e, u_input.e, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, false)), true, all(vec3<bool>(false, true, false)), true), vec4<bool>(true, true, true, true)), vec4<bool>(~u_input.c.x > ~u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.d.x, -4006i), vec3<i32>(u_input.d.x, -1i, u_input.b)) > u_input.e.x, false, ~0u < firstLeadingBit(u_input.c.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1310f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) - _wgslsmith_f_op_f32(min(712f, -504f)))), true, vec2<u32>(u_input.c.x, firstLeadingBit(~u_input.c.x)), vec4<u32>(u_input.c.x, ~37372u & _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), 4294967295u >> (u_input.c.x % 32u), ~4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -723f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1000f + -948f))))));
    var_0 = vec4<bool>(true, func_3(!(!select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(false, false, var_0.x, var_0.x))), vec4<bool>(var_0.x, any(func_1(u_input.a, vec4<bool>(var_0.x, true, var_0.x, var_0.x), Struct_1(386f, 928f, var_0.x, u_input.c.yy, vec4<u32>(u_input.c.x, 1u, u_input.c.x, 0u)), 1000f)), (u_input.c.x << (u_input.c.x % 32u)) >= (u_input.c.x | u_input.c.x), false)), var_0.x, false);
    var var_1 = _wgslsmith_mod_i32(u_input.d.x, _wgslsmith_clamp_i32(-40958i, -(~u_input.d.x), -u_input.d.x));
    let var_2 = ~u_input.c.x;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-351f, _wgslsmith_div_f32(175f, _wgslsmith_f_op_f32(trunc(-1990f)))), _wgslsmith_f_op_f32(abs(3660f)))), 214f, var_0.x, u_input.c.zy, max(~firstLeadingBit(vec4<u32>(var_2, var_2, 31093u, u_input.c.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_2, u_input.c.x, var_2, 0u)), vec4<u32>(var_2, var_2, 0u, u_input.c.x)), max(vec4<u32>(1u, 8958u, 41197u, 1u), vec4<u32>(4294967295u, var_2, 38417u, u_input.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1132f, 315f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(683f * var_3.b))), 122f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b * var_3.b) + _wgslsmith_f_op_f32(var_3.a - 1185f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1197f, var_3.b, -1070f, var_3.b) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, var_3.a, 788f, var_3.b) + vec4<f32>(684f, var_3.a, var_3.b, 144f)))))), firstLeadingBit(u_input.c.yz | vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 6295u, u_input.c.x, 1u), vec4<u32>(82448u, 8839u, 4294967295u, 4294967295u)), var_3.e.x)), vec3<i32>(2147483647i, -33679i, u_input.a.x));
}

