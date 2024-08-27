struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32) -> vec4<bool> {
    let var_0 = ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(41016u, arg_1), vec2<u32>(0u, 0u)), 91023u) & abs(abs(max(~13793u, ~36582u)));
    var var_1 = false && !(266f >= arg_0);
    var var_2 = -(-vec2<i32>(firstTrailingBit(u_input.b), select(u_input.a, -1i, true)) ^ vec2<i32>(-2147483647i << (abs(0u) % 32u), ~min(0i, u_input.a)));
    let var_3 = Struct_2(var_0);
    return vec4<bool>((u_input.b < _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_2.x), vec2<i32>(var_2.x, var_2.x), vec2<i32>(u_input.a, 2147483647i)), vec2<i32>(0i, 46977i))) != select(true, true, 5616u < var_3.a), any(vec4<bool>(any(vec4<bool>(false, true, true, false)), true, any(vec2<bool>(false, true)), false)), all(vec3<bool>(~4294967295u == abs(arg_1), all(vec2<bool>(true, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)))), true);
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = arg_3.a;
    let var_1 = vec4<i32>(-1i, 9999i, u_input.a, u_input.a);
    let var_2 = Struct_2(_wgslsmith_dot_vec2_u32(~(~(vec2<u32>(36305u, arg_3.a) << (vec2<u32>(var_0, 0u) % vec2<u32>(32u)))), vec2<u32>(28333u, 0u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1994f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-185f, 322f, arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(825f - 294f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-870f * 1000f))) * vec4<f32>(_wgslsmith_f_op_f32(round(-3134f)), -219f, 682f, 850f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1676f)) * _wgslsmith_f_op_f32(-326f * -630f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-123f, _wgslsmith_f_op_f32(-943f - 278f), true)), 471f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1289f + 113f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(298f, 545f))))));
    return var_3.b.x;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1235f + -175f), 233f), -740f, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(all(vec4<bool>(true, false, true, false)), func_3(1126f, ~0u), firstLeadingBit(max(vec2<i32>(-1i, 34491i), vec2<i32>(43048i, -9328i))), Struct_2(~7850u)))));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(31224u, ~(~6924u)), firstLeadingBit(min(99466u, 1u)));
    var_1 = ~4294967295u;
    var var_2 = 1u;
    var_1 = ~4294967295u;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1232f, 1f, var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(var_0, vec4<f32>(-820f, 931f, var_0.x, var_0.x))))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * _wgslsmith_f_op_vec4_f32(-var_0)) - vec4<f32>(var_0.x, _wgslsmith_div_f32(-1580f, 1289f), 1000f, _wgslsmith_f_op_f32(round(415f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0))) * var_0))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> f32 {
    let var_0 = select(vec2<bool>(false, any(vec2<bool>(true, true))), vec2<bool>(arg_1 > 975f, _wgslsmith_f_op_f32(f32(-1f) * -797f) >= _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(-arg_3)))), true);
    var var_1 = func_2();
    var_1 = func_2();
    let var_2 = Struct_2(firstLeadingBit(0u));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.x)) + _wgslsmith_f_op_f32(sign(arg_3))), arg_3, -909f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(arg_3 - arg_3), arg_3, _wgslsmith_f_op_f32(ceil(-482f)))), _wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_1.a))), false)))));
    return _wgslsmith_f_op_f32(step(-424f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, arg_2.x, 1i), vec3<i32>(u_input.a, 2147483647i, 0i)) < firstLeadingBit(u_input.a), vec4<bool>(!arg_0, true, !var_0.x, true), arg_2.ww, var_2)) - arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-438f - _wgslsmith_f_op_f32(func_1(true, -1707f, vec4<i32>(-1i, u_input.b, u_input.a, 2147483647i), -921f))) * func_2().b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-691f * 1264f)), _wgslsmith_div_f32(-664f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1414f, -150f)), -384f))), _wgslsmith_f_op_f32(f32(-1f) * -1980f));
    let var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(238f, -546f, -832f, _wgslsmith_div_f32(var_0.x, -266f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_0.x) - vec4<f32>(130f, 858f, var_1.x, -920f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -488f, -485f, 411f))), vec4<f32>(var_0.x, var_0.x, 884f, var_1.x))))));
    var var_3 = ~(-vec3<i32>(max(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.a, -54640i, -17603i, -2147483647i))), ~_wgslsmith_mod_i32(2147483647i, u_input.a), ~abs(2147483647i)));
    var_3 = vec3<i32>(-1i) * -(~vec3<i32>(_wgslsmith_mod_i32(0i, -2147483647i), u_input.b << (30428u % 32u), _wgslsmith_mod_i32(u_input.a, var_3.x)));
    var var_4 = Struct_2(13522u);
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(ceil(1735f)))), _wgslsmith_f_op_f32(f32(-1f) * -1100f));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, _wgslsmith_f_op_f32(-var_0.x), var_3.x, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * var_2.b.x), min(vec4<i32>(u_input.b, 10827i, 2147483647i, 25871i), vec4<i32>(u_input.a, -51266i, -66337i, -18920i)) | vec4<i32>(-2147483647i, -37022i, u_input.b, var_3.x), var_2.b.x)) - -1597f));
}

