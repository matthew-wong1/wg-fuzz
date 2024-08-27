struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: f32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-277f, 1249f))))), vec4<f32>(_wgslsmith_f_op_f32(-532f - -988f), _wgslsmith_f_op_f32(ceil(-738f)), _wgslsmith_f_op_f32(sign(1f)), 1f)), true, vec2<bool>(!(max(u_input.a, u_input.b.x) != ~0u), 0i != arg_0), _wgslsmith_f_op_f32(516f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(139f - 1293f) + _wgslsmith_f_op_f32(-472f + 1255f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-3151f, 106f)), -389f))));
    var_0 = Struct_2(var_0.a, !(!all(!var_0.c)), vec2<bool>(all(!select(var_0.c, vec2<bool>(false, var_0.b), true)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_0.c.x, false), vec3<bool>(true, false, var_0.b), var_0.c.x), !var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)));
    return !(~_wgslsmith_dot_vec2_u32(u_input.b.wy, ~u_input.b.yx) < max(u_input.b.x, ~select(40579u, u_input.b.x, var_0.b)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = firstTrailingBit(select(vec2<u32>(0u, 1u), _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(u_input.a, 0u)), u_input.b.yy, u_input.b.xy) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(111894u, u_input.a), u_input.b.xz), arg_0.zy));
    let var_1 = arg_1;
    var var_2 = ~u_input.b.yzw;
    var var_3 = firstTrailingBit(u_input.b);
    var_3 = ~(~(~(~u_input.b)) ^ u_input.b);
    return var_3.x;
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = func_4(!(!vec3<bool>(select(false, true, true), u_input.b.x <= 1u, -2147483647i != arg_0.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(584f - 362f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1670f, -1477f, -306f, -1329f), vec4<f32>(677f, -992f, 557f, 998f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(140f, 271f, -820f, -1065f))))), !func_3(~(-2147483647i)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-847f)))))));
    var var_1 = select(_wgslsmith_sub_u32(~select(19315u, u_input.a, false), var_0) >> (53830u % 32u), ~14960u, any(vec3<bool>(true | all(vec3<bool>(false, false, false)), true, true)));
    let var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -105f))), _wgslsmith_f_op_f32(1f + -365f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -389f, 1384f, 1366f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1227f, 1283f, 923f, -140f)), vec4<bool>(true, true, true, true))))))));
    var var_4 = -1i;
    return _wgslsmith_f_op_f32(floor(var_3.b.x));
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-21688i, -1i, -12639i), vec3<i32>(-61912i, 23914i, 1i), vec3<i32>(1i, 2147483647i, 33943i)), vec3<i32>(1i, 1i, 1i)))) * arg_0.b.x), 1399f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2270f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a + 878f), -1101f)))));
    let var_1 = Struct_3(!(!all(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(72392u, 0u, u_input.a, 4294967295u), u_input.b), ~(~1u)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.b))), arg_0, select(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), true)), false, ((4294967295u >= u_input.b.x) | true) | true));
    let var_2 = vec2<u32>(~(~select(0u, 0u, var_1.e)), 0u) & vec2<u32>(~firstLeadingBit(37737u), var_1.b);
    var var_3 = reverseBits(countOneBits(u_input.b.zyy));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~min(vec3<i32>(-1i, -1i, -63669i), -vec3<i32>(-24507i, 1i, -14692i)))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.zxw * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c.zxy - var_1.d.b.wwy)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 169f, -1000f)))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, arg_0.b.x, var_1.d.a) * vec3<f32>(-451f, var_1.c.x, -1381f))), var_1.d.b.xww) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.c.yyy + var_1.c.zyy)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, var_1.d.b.x, var_0.x) - var_1.c.xxw))), vec3<bool>(arg_0.a != var_4, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1693f, -288f, -1000f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1712f, var_0.x, 855f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 816f, -369f))))));
    let var_1 = 1i << (~(~(~(u_input.b.x ^ u_input.a))) % 32u);
    var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(func_2(reverseBits(~vec3<i32>(-10324i, var_1, var_1)))), 259f), vec3<f32>(-1000f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), select(vec3<bool>(true, !(u_input.b.x > 14986u), select(false, false, true)), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), true), any(vec4<bool>(true, true, true, all(vec4<bool>(false, true, false, true)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-286f, 145f, var_0.x) + vec3<f32>(-1000f, var_0.x, -1347f)) - _wgslsmith_f_op_vec3_f32(func_1(Struct_1(-302f, vec4<f32>(var_0.x, -646f, var_0.x, var_0.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(10505i, -1i, var_1), vec3<i32>(-40626i, 12066i, 2147483647i), vec3<i32>(var_1, 0i, 0i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1108f))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.x, -343f), var_0.x)), var_0.x)));
    let var_3 = firstTrailingBit(-vec4<i32>(reverseBits(10503i) << (1u % 32u), -2147483647i, 0i, -select(-27363i, 1i, false)));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b, min(~u_input.b, ~u_input.b) | (vec4<u32>(0u, u_input.b.x, u_input.b.x, 119521u) | ~vec4<u32>(u_input.a, u_input.a, u_input.a, 37597u)), true), countOneBits(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, var_1) >> (~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.a, u_input.a, 76376u)) % 32u)), 1i, var_3, _wgslsmith_f_op_f32(-var_0.x));
}

