struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec2<f32>) -> vec3<u32> {
    let var_0 = u_input.c.x;
    var var_1 = vec2<bool>(u_input.d >= -17640i, true);
    var_1 = select(vec2<bool>(~min(u_input.c.x, u_input.c.x) > -1i, var_0 > var_0), !(!vec2<bool>(true, any(vec2<bool>(arg_2, var_1.x)))), !vec2<bool>(var_1.x, !var_1.x));
    var_1 = vec2<bool>(true, !any(!select(vec2<bool>(false, var_1.x), vec2<bool>(false, false), vec2<bool>(false, true))));
    var var_2 = 1i;
    return vec3<u32>(_wgslsmith_div_u32(max(abs(34573u), u_input.e << (u_input.e % 32u)), ~reverseBits(u_input.a.x | u_input.a.x)), ~u_input.a.x, 4452u);
}

fn func_2() -> vec4<f32> {
    let var_0 = firstTrailingBit(u_input.e);
    let var_1 = Struct_1(1075f, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-781f, 1000f, -658f, 1154f), vec4<f32>(-1684f, 243f, 1431f, -113f))), vec4<f32>(267f, -373f, 865f, 327f))))), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(~(~1u), 1u)), true);
    var var_2 = func_3(var_1.b.wxx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, 1199f))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_1.b.wxy)), var_1.b.wwy)))), select(var_1.d, true, all(!select(vec4<bool>(true, var_1.d, var_1.d, true), vec4<bool>(var_1.d, var_1.d, true, var_1.d), var_1.d))), vec2<f32>(-380f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1357f), var_1.b.x))));
    var_2 = reverseBits(countOneBits(vec3<u32>(abs(4294967295u) >> (var_2.x % 32u), firstTrailingBit(select(var_0, 0u, true)), var_2.x)));
    var_2 = ~max(vec3<u32>(~u_input.e, ~var_1.c, var_0), ~_wgslsmith_div_vec3_u32(vec3<u32>(12285u, 4294967295u, 28294u), vec3<u32>(77525u, var_1.c, 11361u))) << (firstTrailingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.e, u_input.e, var_0), ~vec3<u32>(var_0, u_input.a.x, var_0)), ~vec3<u32>(var_2.x, 5327u, var_1.c))) % vec3<u32>(32u));
    return vec4<f32>(211f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) * _wgslsmith_f_op_f32(sign(-1369f))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, 399f)))))), var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(abs(var_1.b.x)), var_1.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, 1880f))), select(var_1.d || var_1.d, false, any(vec3<bool>(true, true, var_1.d))))), _wgslsmith_f_op_f32(-var_1.b.x)));
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = arg_0.b.wzz;
    let var_1 = !any(!select(select(vec3<bool>(arg_0.d, false, false), vec3<bool>(arg_0.d, false, arg_0.d), vec3<bool>(true, false, arg_0.d)), vec3<bool>(arg_0.d, true, true), any(vec4<bool>(false, arg_0.d, arg_0.d, false))));
    var var_2 = arg_0.a;
    var_2 = _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a - var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-902f + _wgslsmith_div_f32(-991f, arg_0.b.x)), var_0.x))));
    return _wgslsmith_f_op_vec3_f32(-var_0);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<u32>) -> bool {
    var var_0 = arg_1;
    var var_1 = var_0.b.yzz;
    var var_2 = Struct_1(613f, var_0.b, _wgslsmith_div_u32(_wgslsmith_mod_u32(select(1u, arg_3.x, arg_1.d) >> (~arg_3.x % 32u), reverseBits(u_input.a.x)), var_0.c), all(select(vec2<bool>(true, true), select(!vec2<bool>(arg_1.d, true), vec2<bool>(arg_1.d, false), select(vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, true), vec2<bool>(var_0.d, false))), vec2<bool>(all(vec4<bool>(arg_1.d, true, true, false)), true))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, -1741f, -141f, 1079f))), vec4<f32>(1000f, arg_0.x, -376f, var_0.a), var_0.b.x < var_1.x)))), _wgslsmith_dot_vec2_u32(countOneBits(arg_3.ww), ~u_input.a) | var_2.c, all(select(vec2<bool>(all(vec2<bool>(true, false)), arg_1.d), select(select(vec2<bool>(var_0.d, arg_1.d), vec2<bool>(true, var_2.d), vec2<bool>(true, false)), select(vec2<bool>(false, var_2.d), vec2<bool>(false, var_0.d), arg_1.d), vec2<bool>(true, false)), select(vec2<bool>(true, true), !vec2<bool>(var_0.d, true), any(vec4<bool>(true, var_2.d, var_2.d, false))))));
    let var_4 = !(arg_1.b.x >= -202f) | !var_3.d;
    return (any(vec2<bool>(false, var_2.d)) || true) || !all(vec2<bool>(var_4, !var_3.d));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec4<i32>) -> f32 {
    let var_0 = arg_1;
    let var_1 = var_0;
    let var_2 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_f_op_f32(1900f * -464f), _wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_sub_u32(6232u, u_input.a.x), !arg_1.x)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(992f)) - 488f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(-489f, 369f)), _wgslsmith_f_op_f32(f32(-1f) * -1186f), _wgslsmith_f_op_f32(930f - 1257f), _wgslsmith_div_f32(1000f, -103f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-977f, -720f, 364f, 611f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-148f, 906f, 1179f, 1615f))))), (reverseBits(u_input.a.x) & 0u) & ~_wgslsmith_mult_u32(u_input.a.x, 78036u), var_1.x), -vec4<i32>(1i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, arg_2.x), arg_2.wy), arg_2.x), _wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(0u, 0u, 4294967295u, u_input.a.x))), max(reverseBits(~vec4<u32>(u_input.a.x, 4294967295u, 43578u, u_input.a.x)), vec4<u32>(_wgslsmith_add_u32(34303u, 80801u), _wgslsmith_mod_u32(u_input.a.x, 4294967295u), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 1u, 19950u, 4294967295u), vec4<u32>(0u, u_input.e, u_input.a.x, 32316u))))));
    var var_3 = arg_0.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -1542f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -856f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-872f + -787f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), vec4<bool>(false, true, true, true), vec4<i32>(-1i, -8042i, u_input.d, 7613i))), _wgslsmith_f_op_f32(1371f * 1945f), _wgslsmith_f_op_f32(1000f * 1962f), -266f), vec4<f32>(-196f, _wgslsmith_f_op_f32(f32(-1f) * -1624f), _wgslsmith_f_op_f32(1572f * 1064f), -232f)))), min(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(45689u, u_input.a.x, 76486u, 0u), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)), vec4<u32>(firstTrailingBit(u_input.e), _wgslsmith_sub_u32(1u, 1u), 10916u, 27011u)), reverseBits(max(u_input.e, u_input.a.x))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * var_1.a) - 1154f) == 849f;
    var var_3 = var_1;
    var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_4(var_1)), u_input.e, 1921f, _wgslsmith_clamp_u32(~(_wgslsmith_mod_u32(41100u, 1u) & firstLeadingBit(var_1.c)), 4294967295u, 42224u));
}

