struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = select(abs(vec4<i32>(-u_input.c.x, 2147483647i << (u_input.e % 32u), ~23841i, u_input.c.x)), vec4<i32>(~(-47060i), -_wgslsmith_sub_i32(-47737i, u_input.a.x), u_input.d.x, ~(-8588i)), any(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, all(vec2<bool>(true, false)), true))) | min(~(-(~vec4<i32>(2147483647i, u_input.a.x, -6322i, u_input.d.x))), ~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.d.x, u_input.d.x, -28194i, u_input.a.x), min(vec4<i32>(u_input.b.x, 1i, u_input.c.x, u_input.d.x), vec4<i32>(u_input.b.x, u_input.c.x, -43078i, u_input.c.x))));
    var var_1 = vec4<u32>(_wgslsmith_mult_u32(~(u_input.e << (u_input.e % 32u)) & ~max(40731u, u_input.e), select(_wgslsmith_add_u32(~u_input.e, firstTrailingBit(12165u)), (u_input.e ^ 4294967295u) ^ _wgslsmith_mod_u32(27938u, u_input.e), true)), firstTrailingBit(29930u) | abs(countOneBits(1u)), 54138u, ~firstLeadingBit(~(~1u)));
    var_1 = reverseBits(vec4<u32>(1u, ~min(select(u_input.e, var_1.x, true), min(95661u, 4294967295u)), 60087u, countOneBits(abs(~33135u))));
    var var_2 = vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) - arg_0), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-885f, _wgslsmith_f_op_f32(f32(-1f) * -256f))))));
    let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.zzx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -249f, var_2.x)))), u_input.c.x);
    return var_0.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(firstLeadingBit(-(~(-18075i))), max(_wgslsmith_div_i32(u_input.c.x, i32(-1i) * -2147483647i), u_input.a.x)), vec2<i32>(_wgslsmith_mult_i32(func_3(_wgslsmith_f_op_f32(step(1000f, -1836f))), _wgslsmith_sub_i32(-1i, u_input.b.x)), _wgslsmith_mult_i32(u_input.c.x & ~arg_0.x, -2147483647i)));
    var var_1 = select(!vec2<bool>(true, all(vec2<bool>(false, true)) || false), vec2<bool>(true, true), all(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true, any(vec2<bool>(true, true)))));
    let var_2 = vec2<u32>(_wgslsmith_mult_u32(0u, u_input.e), 24805u);
    var var_3 = Struct_1(vec4<bool>(var_1.x, var_1.x, var_1.x, 1i < min(arg_0.x, reverseBits(arg_0.x))), vec3<f32>(1f, -1002f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-492f, 691f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-332f + -878f)))))), max(-_wgslsmith_sub_vec3_i32(arg_0.zxz, abs(arg_0.ywx)), firstLeadingBit(vec3<i32>(i32(-1i) * -47148i, arg_0.x, ~(-27429i)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2245f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-708f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1131f, -518f)) - _wgslsmith_f_op_f32(trunc(-322f))))));
    let var_4 = select(vec3<bool>(select(_wgslsmith_f_op_f32(f32(-1f) * -2187f) == _wgslsmith_f_op_f32(-var_3.b.x), 25139i != _wgslsmith_sub_i32(var_0.x, 34598i), true || select(true, var_1.x, var_3.a.x)), var_3.a.x, 1000f < _wgslsmith_div_f32(var_3.d.x, -1398f)), var_3.a.ywx, all(var_3.a));
    return Struct_4(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -650f)), _wgslsmith_f_op_f32(floor(1656f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_3.b, vec3<f32>(var_3.d.x, var_3.d.x, 1287f), vec3<bool>(false, var_1.x, true))))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec4<f32> {
    var var_0 = func_2(~vec4<i32>(~(~0i), -30572i, 0i, 1i));
    let var_1 = Struct_3(Struct_1(select(select(!vec4<bool>(arg_0, arg_3.x, arg_3.x, false), !vec4<bool>(arg_3.x, arg_0, arg_0, arg_0), 370f >= var_0.a.b.x), select(select(vec4<bool>(arg_3.x, true, true, arg_3.x), vec4<bool>(false, arg_3.x, true, arg_3.x), vec4<bool>(false, arg_3.x, true, false)), !vec4<bool>(arg_0, arg_0, arg_0, arg_3.x), !vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x)), vec4<bool>(0u > u_input.e, arg_0, any(vec2<bool>(true, false)), !arg_3.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.wzz)) - _wgslsmith_f_op_vec3_f32(var_0.a.b - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.a.x, -1435f, arg_2.x), vec3<f32>(1181f, var_0.a.a.x, 1000f))))), ~vec3<i32>(-47306i, abs(u_input.d.x), _wgslsmith_dot_vec2_i32(u_input.b, u_input.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(var_0.a.b, arg_2.zxw))))));
    var var_2 = !all(select(select(var_1.a.a, vec4<bool>(false, true, var_1.a.a.x, arg_3.x), select(var_1.a.a, vec4<bool>(arg_3.x, true, arg_0, true), arg_0)), select(select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(var_1.a.a.x, false, false, var_1.a.a.x), true), select(var_1.a.a, vec4<bool>(arg_0, false, arg_3.x, true), var_1.a.a), true), select(vec4<bool>(true, var_1.a.a.x, true, arg_3.x), select(var_1.a.a, var_1.a.a, vec4<bool>(var_1.a.a.x, var_1.a.a.x, false, arg_0)), vec4<bool>(arg_3.x, var_1.a.a.x, var_1.a.a.x, arg_3.x))));
    let var_3 = i32(-1i) * -18565i;
    var var_4 = func_2(vec4<i32>(~_wgslsmith_mod_i32(~2147483647i, -6051i), i32(-1i) * -(2147483647i << (arg_1 % 32u)), 2147483647i, i32(-1i) * -(~var_1.a.c.x)));
    return vec4<f32>(-1639f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f)), -806f))), var_1.a.b.x);
}

fn func_4(arg_0: bool, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<bool>) -> vec3<f32> {
    let var_0 = vec3<bool>(all(select(!(!vec3<bool>(false, true, arg_3.x)), !select(vec3<bool>(false, false, arg_0), vec3<bool>(true, false, arg_0), vec3<bool>(true, false, true)), false)), !(!arg_0), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * arg_2))) >= -965f);
    var var_1 = Struct_4(Struct_2(arg_1.ww, _wgslsmith_f_op_vec3_f32(-arg_1.xyw)));
    var_1 = func_2(vec4<i32>(-(~(-u_input.a.x)), u_input.c.x, -1i, 28292i));
    var_1 = func_2(select(abs(firstLeadingBit(vec4<i32>(0i, u_input.b.x, 1i, u_input.a.x)) | max(vec4<i32>(-1i, u_input.a.x, -78645i, u_input.c.x), vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.d.x))), max(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, 7735i, u_input.d.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, u_input.c.x, u_input.c.x, u_input.d.x), vec4<i32>(u_input.b.x, -31496i, u_input.c.x, u_input.c.x))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a.x, 15577i, u_input.c.x, -2147483647i), ~vec4<i32>(-5705i, -39809i, -1i, u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.c.x, u_input.a.x), vec4<i32>(0i, u_input.b.x, -1i, u_input.a.x)))), false));
    var_1 = func_2(_wgslsmith_clamp_vec4_i32(-(vec4<i32>(u_input.b.x, 0i, 2147483647i, -2147483647i) ^ vec4<i32>(2147483647i, -1i, 18473i, 25414i)), -(vec4<i32>(-37945i, u_input.d.x, 0i, 11865i) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.b.x, u_input.c.x)), vec4<i32>(-24334i, u_input.c.x, u_input.c.x & u_input.b.x, _wgslsmith_mod_i32(u_input.c.x, 16959i))) << (vec4<u32>(min(14318u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 1u, u_input.e), vec3<u32>(95408u, u_input.e, u_input.e))), ~_wgslsmith_add_u32(0u, 8923u), ~_wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.e), ~firstLeadingBit(32393u)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, 1063f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-742f)))) + _wgslsmith_f_op_vec3_f32(-var_1.a.b));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = Struct_1(vec4<bool>(true, !(true || all(vec4<bool>(true, true, false, true))), true, all(vec4<bool>(true, true, true, true)) && true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-790f))), arg_0.x)), select(arg_1, arg_1, true), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) - _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(trunc(-361f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(ceil(arg_0.x)))), _wgslsmith_f_op_f32(628f + arg_0.x)));
    var_0 = Struct_1(select(select(var_0.a, var_0.a, !(!vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x))), select(select(var_0.a, var_0.a, var_0.a.x || false), vec4<bool>(true, any(var_0.a), all(vec3<bool>(var_0.a.x, false, var_0.a.x)), all(vec2<bool>(true, var_0.a.x))), var_0.a.x), !any(!vec4<bool>(var_0.a.x, true, false, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2085f), -740f, _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.b, var_0.b) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, var_0.d.x, var_0.b.x)))))), _wgslsmith_mult_vec3_i32(arg_1, var_0.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0), vec3<f32>(-1343f, var_0.d.x, 541f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-662f, var_0.b.x, arg_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, arg_0.x, -293f), var_0.b))))), _wgslsmith_f_op_vec3_f32(-arg_0)));
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i ^ u_input.d.x, 11348i, _wgslsmith_add_i32(~19108i, var_0.c.x)), max(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.a.x, var_0.c.x, u_input.c.x, -1i), vec4<i32>(var_0.c.x, 4907i, var_0.c.x, u_input.a.x) | vec4<i32>(u_input.d.x, -11593i, arg_1.x, 19331i), -vec4<i32>(var_0.c.x, u_input.c.x, 2147483647i, u_input.c.x)), (vec4<i32>(arg_1.x, -14690i, var_0.c.x, arg_1.x) & vec4<i32>(-1i, 46514i, -2147483647i, -74825i)) | (vec4<i32>(44253i, u_input.c.x, var_0.c.x, 34334i) ^ vec4<i32>(u_input.b.x, var_0.c.x, u_input.a.x, var_0.c.x)))) | ~vec4<i32>(var_0.c.x, arg_1.x ^ 1i, countOneBits(u_input.c.x), -2147483647i);
    let var_2 = select(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 6815u, 18455u), vec3<u32>(u_input.e, u_input.e, u_input.e)), 13793u, select(u_input.e, 67520u, false)), ~abs(abs(vec3<u32>(u_input.e, 39460u, 27387u))), !(!select(vec3<bool>(false, var_0.a.x, true), var_0.a.yyy, var_0.a.xwz))) | max(vec3<u32>(4294967295u, _wgslsmith_mult_u32(u_input.e ^ u_input.e, ~u_input.e), u_input.e), ~max(max(vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<u32>(671u, 20880u, u_input.e)), vec3<u32>(u_input.e, 5707u, 0u)));
    let var_3 = var_0.a.x;
    return Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x * -580f), -1075f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -1071f, 720f), arg_0)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-1930f, 1000f), _wgslsmith_f_op_f32(-452f * -1240f), _wgslsmith_div_f32(180f, 904f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1012f, 1000f)) + _wgslsmith_f_op_vec3_f32(func_4(any(vec4<bool>(false, true, false, true)), _wgslsmith_f_op_vec4_f32(func_1(false, u_input.e, vec4<f32>(152f, 524f, -938f, 248f), vec3<bool>(true, false, true))), _wgslsmith_div_f32(794f, -134f), vec2<bool>(false, true))))), max(abs(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(15785i, 46222i, -1i)), vec3<i32>(u_input.b.x, u_input.c.x, 65906i), abs(vec3<i32>(u_input.b.x, -1i, u_input.b.x)))), _wgslsmith_add_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 15116i, u_input.d.x), vec3<i32>(u_input.a.x, u_input.c.x, -32406i)), (vec3<i32>(2147483647i, u_input.b.x, -3316i) ^ vec3<i32>(u_input.d.x, 38216i, -19693i)) & vec3<i32>(u_input.b.x, 39067i, 0i))));
    let var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, u_input.e, 25287u << (~u_input.e % 32u)));
}

