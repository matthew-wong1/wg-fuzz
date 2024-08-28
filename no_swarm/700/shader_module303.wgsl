struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = abs(vec2<i32>(-arg_1.a, -18165i));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1884f)) - _wgslsmith_f_op_f32(min(2646f, 1219f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -3315f))))), _wgslsmith_f_op_f32(-1042f + _wgslsmith_f_op_f32(max(-910f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 1f))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1));
    var var_3 = !vec2<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), true);
    let var_4 = ~_wgslsmith_mult_u32(~(~42784u), _wgslsmith_sub_u32(1u, _wgslsmith_div_u32(1u, 4294967295u))) << (~select(4387u, 4294967295u, true) % 32u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1), var_2.x)), _wgslsmith_f_op_f32(round(2178f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(u_input.a);
    let var_1 = Struct_1(-(~(~(i32(-1i) * -1i))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1945f, _wgslsmith_f_op_f32(-arg_0.x)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-909f, _wgslsmith_f_op_f32(func_3(var_1, var_1)))) - -220f);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = vec4<i32>(-arg_3.x, _wgslsmith_div_i32(arg_3.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, arg_0.a), arg_3), -arg_3)), 1i, arg_3.x);
    let var_1 = Struct_1(-1i);
    var var_2 = arg_3.xx;
    var var_3 = arg_0;
    var var_4 = Struct_1(1i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(717f * -928f), _wgslsmith_f_op_f32(f32(-1f) * -391f), any(vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(min(-561f, _wgslsmith_f_op_f32(f32(-1f) * -327f)))))), _wgslsmith_f_op_f32(func_3(Struct_1(abs(-1i)), func_2(vec2<f32>(-332f, _wgslsmith_f_op_f32(max(-289f, 1463f))), 0u))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1))), arg_1, -1019f);
    var var_1 = Struct_1(arg_2.a);
    var_1 = Struct_1(u_input.a);
    var var_2 = arg_2;
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yx))))), arg_3);
    return func_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(vec2<f32>(var_0.x, -351f), arg_3), arg_2, u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, arg_2.a, var_1.a, 0i), vec4<i32>(-41413i, var_1.a, arg_2.a, 3671i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_0, arg_0)), -1038f)))), max(43185u, 4294967295u & (firstTrailingBit(51215u) | 112951u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-449f * 647f) + _wgslsmith_f_op_f32(-1339f + -1147f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(525f, 1017f)) + 2003f)) + -206f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(arg_2, func_2(vec2<f32>(-295f, -218f), 4294967295u), u_input.b, ~vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 2147483647i))))))), Struct_1(-min(2147483647i, arg_1.a) >> (arg_0 % 32u)), 44353u);
    let var_1 = u_input.b.yz;
    return ~_wgslsmith_dot_vec2_i32(-select(max(vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(var_0.a, -2147483647i)), countOneBits(var_1), true), select(u_input.b.xz, ~select(vec2<i32>(-12400i, -1i), vec2<i32>(u_input.a, arg_2.a), vec2<bool>(false, false)), vec2<bool>(true, true)));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> StorageBuffer {
    let var_0 = !select(select(vec3<bool>(true, all(vec2<bool>(true, true)), true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), true), true), vec3<bool>(true, !select(false, true, true), false), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))) && any(vec2<bool>(false, false)));
    let var_1 = func_5(_wgslsmith_f_op_f32(-799f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-462f))) - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2121f) - _wgslsmith_f_op_f32(abs(435f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_2, arg_1)) * -138f)))), Struct_1(_wgslsmith_div_i32(-30725i, countOneBits(arg_2.a))), arg_0);
    let var_2 = u_input.b;
    var var_3 = ~arg_3;
    var_3 = vec4<u32>(33429u, ~arg_3.x, _wgslsmith_clamp_u32(4294967295u, 15660u, ~1u), _wgslsmith_dot_vec4_u32(arg_3, arg_3));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(-1807f - -566f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-999f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(Struct_1(0i), Struct_1(-29931i), vec3<i32>(-46553i, arg_1.a, 2147483647i), vec4<i32>(25821i, -29689i, -77222i, u_input.a))))))), var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1879f)), -566f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1724f, -1069f)) - _wgslsmith_f_op_f32(-912f + -1000f)))) + vec3<f32>(_wgslsmith_f_op_f32(-1550f * -2038f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1755f, 215f), _wgslsmith_f_op_f32(135f + 693f), u_input.b.x <= u_input.b.x))), -617f));
    let var_1 = 1292f;
    let x = u_input.a;
    s_output = func_6(4294967295u, Struct_1(1i), Struct_1(_wgslsmith_add_i32(func_1(25784u, Struct_1(u_input.b.x), Struct_1(1i)) ^ (i32(-1i) * -17625i), 69143i)), ~vec4<u32>(select(21725u, 39924u, true) ^ ~72786u, 1u, countOneBits(firstLeadingBit(74285u)), 4294967295u));
}

