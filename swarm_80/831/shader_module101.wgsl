struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    var var_0 = vec2<bool>(!(!(select(u_input.b, 2147483647i, false) >= _wgslsmith_div_i32(-24777i, u_input.b))), any(vec4<bool>(any(vec4<bool>(arg_0.x, false, arg_0.x, false)), all(vec2<bool>(false, arg_0.x)), true, u_input.b >= abs(-2147483647i))));
    var_0 = arg_0;
    var_0 = arg_0;
    var_0 = select(!arg_0, !vec2<bool>(-u_input.b <= _wgslsmith_mod_i32(u_input.b, u_input.b), all(vec4<bool>(arg_0.x, arg_0.x, var_0.x, false))), arg_0);
    let var_1 = -vec4<i32>(-27054i, ~u_input.b, abs(2147483647i), u_input.b);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-813f - -1671f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-705f, -874f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -460f) + _wgslsmith_f_op_f32(225f + -1000f)))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    let var_0 = Struct_1(all(arg_2));
    let var_1 = select(vec4<bool>(true, arg_2.x, !all(!vec4<bool>(var_0.a, false, arg_2.x, arg_2.x)), true), select(vec4<bool>(any(vec3<bool>(true, var_0.a, arg_2.x)), (55715u ^ u_input.a) >= u_input.a, _wgslsmith_add_i32(31698i, -31878i) != (31361i & u_input.b), any(arg_2.zxx)), select(vec4<bool>(var_0.a && arg_2.x, arg_2.x, true, arg_2.x), arg_2, arg_2.x), arg_2.x), u_input.a != _wgslsmith_mult_u32(53027u, firstTrailingBit(17507u)));
    let var_2 = var_1.zwy;
    let var_3 = 0u;
    var var_4 = !((any(!vec2<bool>(true, var_2.x)) && (1u < u_input.a)) || true);
    return arg_1;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = false;
    var var_1 = arg_1;
    var var_2 = -234f;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(max(-(arg_0.xz >> (vec2<u32>(54968u, u_input.a) % vec2<u32>(32u))), -vec2<i32>(u_input.b, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(false, var_0)))) * _wgslsmith_f_op_f32(f32(-1f) * -536f)), !(!vec4<bool>(var_0, var_1.a, false, var_0)))) - _wgslsmith_f_op_f32(1988f + 146f));
    var_3 = _wgslsmith_f_op_f32(func_3(vec2<i32>(~(-33589i), ~(-5576i)), 573f, !select(vec4<bool>(true, !var_1.a, var_1.a, any(vec4<bool>(false, true, var_0, arg_1.a))), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, var_1.a, true), vec4<bool>(var_1.a, true, var_1.a, var_1.a)), vec4<bool>(var_1.a, arg_1.a, var_1.a, arg_1.a), true), !select(vec4<bool>(arg_1.a, false, false, false), vec4<bool>(true, var_0, true, var_0), false))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2109f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-440f * -1126f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-476f, 109f), _wgslsmith_f_op_f32(round(1185f)), any(vec3<bool>(var_1.a, false, arg_1.a)))), !all(vec4<bool>(var_1.a, false, true, var_0))))), -1551f));
}

fn func_4(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(-vec2<i32>(u_input.b, 2147483647i), 471f, vec4<bool>(false, false, false, false)))))));
    let var_1 = abs(_wgslsmith_clamp_i32(0i, _wgslsmith_mod_i32(u_input.b, u_input.b), countOneBits(countOneBits(firstLeadingBit(-20906i)))));
    let var_2 = 47493u;
    let var_3 = u_input.b;
    let var_4 = ~(-_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, u_input.b, _wgslsmith_mult_i32(~var_3, 0i)));
    return Struct_1((var_2 >> (min(0u, _wgslsmith_clamp_u32(var_2, 63153u, var_2)) % 32u)) >= var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<i32>(-u_input.b, ~(-1i), i32(-1i) * -2147483647i), Struct_1(true)))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(507f, 388f)) * -1000f), select(select(vec4<bool>(false, var_0.a, false, false), vec4<bool>(var_0.a, false, false, true), var_0.a), !vec4<bool>(true, var_0.a, var_0.a, var_0.a), !vec4<bool>(false, var_0.a, true, false)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-129f + 791f)) * _wgslsmith_f_op_f32(f32(-1f) * -1483f)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-345f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1600f, 1404f)), 109f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-620f - _wgslsmith_f_op_f32(2553f + -126f)), 1000f))), 815f);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1151f, 237f)) - 2025f))))), 208f, _wgslsmith_f_op_f32(-var_1.x));
    var var_2 = var_1.x;
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(~(~u_input.a | (u_input.a & 4698u)), 1u), abs(u_input.a));
    var_0 = func_4(_wgslsmith_f_op_f32(235f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(3326f - var_1.x)))));
    var var_4 = func_4(_wgslsmith_f_op_f32(745f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(500f - -1000f))));
    var var_5 = max(select(vec4<u32>(_wgslsmith_sub_u32(u_input.a, max(u_input.a, 1u)), 10221u, 4294967295u, ~(~u_input.a)), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, u_input.a, 1u, 40421u), ~vec4<u32>(u_input.a, u_input.a, 1u, var_3.x) >> (~vec4<u32>(1u, u_input.a, var_3.x, var_3.x) % vec4<u32>(32u))), var_4.a), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 0u, var_3.x) | vec4<u32>(var_3.x, u_input.a, u_input.a, var_3.x), firstLeadingBit(vec4<u32>(44004u, 4294967295u, 0u, 75560u)), ~vec4<u32>(u_input.a, var_3.x, u_input.a, 0u)) << (((vec4<u32>(var_3.x, var_3.x, u_input.a, 33514u) << (vec4<u32>(4294967295u, var_3.x, var_3.x, var_3.x) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(15882u, 4294967295u, u_input.a, 0u), vec4<u32>(var_3.x, u_input.a, u_input.a, var_3.x))) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, firstTrailingBit(-(vec4<i32>(u_input.b, -1522i, -2147483647i, 0i) & vec4<i32>(u_input.b, u_input.b, 0i, u_input.b)) & select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), vec4<i32>(u_input.b, 16503i, 1i, u_input.b)), vec4<i32>(u_input.b, -1i, -25341i, -52585i), true)));
}

