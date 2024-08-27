struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(u_input.c.zy, u_input.a.xy, vec2<u32>(_wgslsmith_add_u32(arg_1.a, 4294967295u), ~0u));
    let var_1 = Struct_2(u_input.a.x);
    var var_2 = _wgslsmith_div_f32(695f, 964f);
    let var_3 = Struct_3(_wgslsmith_mult_vec2_u32((~var_0 & ~u_input.a.zz) >> (vec2<u32>(~var_0.x, 1u) % vec2<u32>(32u)), vec2<u32>(arg_1.a << (15525u % 32u), arg_1.a | ~27367u)), Struct_1(vec4<f32>(arg_2.a.x, arg_2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-497f)))), -173f), _wgslsmith_mult_i32(~(-45621i), _wgslsmith_div_i32(u_input.d.x, ~2147483647i)), all(select(select(vec3<bool>(arg_2.c, arg_2.c, arg_2.c), vec3<bool>(arg_2.c, arg_2.c, false), true), select(vec3<bool>(false, arg_2.c, false), vec3<bool>(true, arg_2.c, arg_2.c), arg_2.c), !vec3<bool>(false, arg_2.c, false)))), 1i, 24191u, !vec3<bool>(any(!vec4<bool>(arg_2.c, false, true, arg_2.c)), any(vec2<bool>(arg_2.c, true)), false));
    var var_4 = true;
    return ~(arg_0 ^ ~4294967295u);
}

fn func_4(arg_0: vec4<u32>, arg_1: bool) -> u32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1791f * 392f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(923f)) - _wgslsmith_f_op_f32(1541f * -850f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(797f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1161f))))), _wgslsmith_div_f32(-1000f, 1156f), -499f), 1i, arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, 245f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.a.yww, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2491f, var_0.a.x, -378f), vec3<f32>(-333f, var_0.a.x, 2268f)) - var_0.a.zxx)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.a.xwy - vec3<f32>(var_0.a.x, -906f, -1000f))))));
    var_1 = vec3<f32>(-182f, var_1.x, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(round(-442f)))));
    var var_2 = var_0.a.xy;
    let var_3 = Struct_3(vec2<u32>(~min(firstTrailingBit(u_input.c.x), 8043u), 100145u), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.a)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(round(var_2.x)), -131f, _wgslsmith_f_op_f32(f32(-1f) * -520f))), -(~(-var_0.b)), var_0.c), max(17903i, firstTrailingBit(_wgslsmith_mult_i32(reverseBits(var_0.b), u_input.e))), _wgslsmith_clamp_u32(0u, func_3(u_input.c.x, Struct_2(~arg_0.x), Struct_1(vec4<f32>(var_0.a.x, var_2.x, 713f, var_0.a.x), _wgslsmith_div_i32(var_0.b, -21357i), true)), ~_wgslsmith_sub_u32(u_input.a.x, u_input.c.x)), !select(vec3<bool>(any(vec4<bool>(arg_1, var_0.c, false, var_0.c)), any(vec4<bool>(arg_1, true, true, true)), true), !select(vec3<bool>(var_0.c, arg_1, false), vec3<bool>(var_0.c, arg_1, var_0.c), arg_1), vec3<bool>(true, any(vec4<bool>(false, false, true, arg_1)), true)));
    return _wgslsmith_dot_vec3_u32(reverseBits(abs(~(vec3<u32>(13644u, u_input.b, 4294967295u) & arg_0.xzy))), vec3<u32>(u_input.a.x, 40232u, 19674u));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = 0u;
    var var_1 = arg_1.x;
    var_1 = arg_1.x;
    var var_2 = func_4(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(min(u_input.b, u_input.a.x), 4294967295u >> (1u % 32u)), _wgslsmith_mod_vec2_u32(u_input.c.zz, _wgslsmith_mult_vec2_u32(u_input.a.zz, u_input.c.yy))), _wgslsmith_dot_vec2_u32(~(~u_input.a.yy), _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, var_0), firstTrailingBit(u_input.c.xy))), func_3(4294967295u, Struct_2(~arg_0), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -2067f, 1000f, 346f), vec4<f32>(1451f, -1000f, -968f, 746f), false)), u_input.e | u_input.e, arg_1.x))), ~firstTrailingBit(firstLeadingBit(var_0)) != firstTrailingBit(var_0));
    let var_3 = arg_1.zw;
    return Struct_3(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.a.x, var_0) ^ firstTrailingBit(vec2<u32>(1u, u_input.b))), ~(vec2<u32>(61242u, 54321u) | u_input.a.zx)), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), ~select(~u_input.d.x, -u_input.e, !arg_1.x), arg_1.x), ~abs(-18175i), 1u, select(select(vec3<bool>(var_3.x, var_3.x, arg_1.x & false), vec3<bool>(all(arg_1.wz), true, arg_1.x), !all(vec4<bool>(arg_1.x, var_3.x, var_3.x, arg_1.x))), select(select(select(arg_1.zxz, arg_1.xwz, var_3.x), arg_1.yzz, !arg_1.ywz), select(!arg_1.yyy, select(vec3<bool>(arg_1.x, false, arg_1.x), arg_1.wyw, true), !vec3<bool>(false, var_3.x, var_3.x)), 1u > abs(arg_0)), select(false, false, false)));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> vec4<bool> {
    var var_0 = 2147483647i;
    var var_1 = arg_1;
    var var_2 = Struct_2(_wgslsmith_sub_u32(firstTrailingBit(~countOneBits(u_input.a.x)), _wgslsmith_mod_u32(u_input.b ^ ~41777u, 4294967295u)));
    var_1 = arg_0.x;
    let var_3 = func_2(_wgslsmith_mod_u32(~(~28174u) << (0u % 32u), var_2.a), select(select(select(!vec4<bool>(true, arg_0.x, true, false), select(vec4<bool>(true, arg_0.x, arg_1, true), vec4<bool>(true, arg_1, arg_1, arg_0.x), false), !arg_1), !(!vec4<bool>(false, arg_1, arg_0.x, true)), _wgslsmith_f_op_f32(round(-1000f)) < _wgslsmith_f_op_f32(abs(-473f))), !(!vec4<bool>(false, arg_1, false, false)), !arg_0.x));
    return vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2101f + 1000f))) - var_3.b.a.x) < _wgslsmith_f_op_f32(f32(-1f) * -1714f), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.b.a.x, var_3.b.a.x))) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_3.b.a.x))))), all(!(!var_3.e.xx)), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.b.a.x, var_3.b.a.x)), var_3.b.a.x) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -368f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(true, u_input.b < u_input.a.x, true && any(vec3<bool>(false, true, false)), 18074u >= u_input.c.x), select(vec4<bool>((1u << (u_input.c.x % 32u)) != 1u, true, true, -u_input.e < ~u_input.d.x), select(!func_1(vec3<bool>(true, true, true), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false)), !all(func_2(0u, vec4<bool>(false, true, false, false)).e.yx)), vec4<bool>(true, all(func_2(u_input.a.x, vec4<bool>(false, true, false, false)).e) || all(vec2<bool>(true, true)), false, all(!func_2(u_input.a.x, vec4<bool>(true, false, true, true)).e)));
    let x = u_input.a;
    s_output = StorageBuffer(-456f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1236f)))))), 36412i, vec3<i32>(max(u_input.e, min(u_input.d.x, -2147483647i)), abs(abs(-2147483647i)), countOneBits(u_input.d.x)), _wgslsmith_add_i32(2147483647i, -u_input.e));
}

