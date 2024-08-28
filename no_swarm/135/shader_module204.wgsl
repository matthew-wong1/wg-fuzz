struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-630f * arg_2.b.x);
    var var_1 = !(!vec3<bool>(true, arg_1.x, _wgslsmith_f_op_f32(arg_2.d.x * arg_2.b.x) >= 1000f));
    var var_2 = arg_2.d.wwz;
    let var_3 = Struct_1(min(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, arg_2.a.x), _wgslsmith_add_vec2_u32(arg_2.a, arg_2.a)), ~u_input.b.yy), vec3<f32>(1382f, arg_3.x, _wgslsmith_f_op_f32(exp2(var_0))), 46594i, vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x + 952f), -391f)), _wgslsmith_f_op_f32(floor(arg_3.x)), 364f));
    var_1 = select(!vec3<bool>(arg_1.x, var_1.x, arg_1.x), !select(vec3<bool>(any(vec3<bool>(false, var_1.x, arg_1.x)), arg_1.x, true), select(!vec3<bool>(false, true, var_1.x), vec3<bool>(false, false, var_1.x), all(vec4<bool>(true, false, false, arg_1.x))), vec3<bool>(false, true, true)), !(!select(select(vec3<bool>(false, var_1.x, false), vec3<bool>(arg_1.x, true, true), vec3<bool>(true, var_1.x, true)), vec3<bool>(arg_1.x, true, true), false)));
    return var_3.b.x;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(u_input.b.yy, vec3<f32>(-462f, _wgslsmith_f_op_f32(ceil(908f)), 156f), ~(-33303i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -411f), -895f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1016f)), 180f)), -1126f) - vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<i32>(-7450i, 1i, 1i), vec2<bool>(true, true), Struct_1(vec2<u32>(u_input.a, u_input.a), vec3<f32>(886f, 236f, 458f), -1i, vec4<f32>(706f, 1254f, 997f, -1000f)), vec4<f32>(1000f, -202f, -845f, -1050f))), 1816f, -476f, _wgslsmith_f_op_f32(-1009f * -926f))));
    let var_1 = all(!(!vec4<bool>(any(vec3<bool>(true, true, false)), true, false, true)));
    let var_2 = Struct_1(vec2<u32>(abs(u_input.a), 1u) >> (firstTrailingBit(vec2<u32>(30958u, var_0.a.x)) % vec2<u32>(32u)), var_0.b, ~_wgslsmith_clamp_i32(-1i, ~3350i, ~var_0.c) << (_wgslsmith_add_u32(var_0.a.x, 0u) % 32u), vec4<f32>(-1094f, var_0.d.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_vec3_i32(~vec3<i32>(1i, -35497i, 1i), ~vec3<i32>(-2147483647i, var_0.c, 26176i)), vec2<bool>(select(var_1, var_1, true), any(vec4<bool>(false, var_1, var_1, var_1))), Struct_1(vec2<u32>(var_0.a.x, u_input.a), var_0.b, -2147483647i, _wgslsmith_div_vec4_f32(var_0.d, var_0.d)), _wgslsmith_div_vec4_f32(var_0.d, var_0.d))), var_0.b.x));
    let var_3 = !(!(all(select(vec2<bool>(var_1, var_1), vec2<bool>(true, true), vec2<bool>(false, var_1))) | !(var_0.c == var_2.c)));
    let var_4 = min(firstLeadingBit(47234i << (var_2.a.x % 32u)), var_0.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.b.x)))), var_2.d.x)) * 301f);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_1(abs(vec2<u32>(~1u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-861f)) + _wgslsmith_f_op_f32(ceil(585f)))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-649f - 515f), -890f))), max(2147483647i, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, -1i), _wgslsmith_clamp_i32(-14292i, 1i, 57215i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1653f, _wgslsmith_f_op_f32(-143f - -474f), _wgslsmith_f_op_f32(step(506f, 326f)), -445f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(190f, 996f, -1116f, 128f)))), arg_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(271f, -231f, 586f, -431f) - vec4<f32>(-729f, -391f, -376f, -1226f))))));
    var_0 = Struct_1(min(~(~u_input.b.xz), vec2<u32>(14645u, min(var_0.a.x, var_0.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b), var_0.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.b.x, var_0.b.x) - vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)) + vec3<f32>(var_0.b.x, 460f, var_0.d.x))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(693f)), _wgslsmith_f_op_f32(sign(var_0.b.x)), -778f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1008f), var_0.d.x, 335f))), _wgslsmith_mod_i32(1i, select(var_0.c, 2147483647i, arg_0.x)), _wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-102f, -1201f)), _wgslsmith_div_f32(-1157f, var_0.d.x), -487f, _wgslsmith_f_op_f32(floor(var_0.d.x))) - var_0.d)));
    let var_1 = ~44008i;
    var var_2 = Struct_1(_wgslsmith_add_vec2_u32(countOneBits(u_input.b.yx), ~u_input.b.zz << ((vec2<u32>(u_input.a, var_0.a.x) >> (max(vec2<u32>(53724u, 1u), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u))), var_0.b, firstTrailingBit(var_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d)));
    var_0 = Struct_1(abs(vec2<u32>(select(_wgslsmith_sub_u32(u_input.a, var_0.a.x), ~97554u, !arg_0.x), _wgslsmith_div_u32(~var_2.a.x, 1u))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, 684f, -1517f) + vec3<f32>(var_0.d.x, var_0.b.x, var_2.d.x)), vec3<f32>(var_0.b.x, var_0.b.x, -976f))))))), reverseBits(var_0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1103f, var_2.d.x)), _wgslsmith_f_op_f32(ceil(var_0.b.x)), -560f, var_0.d.x)) * vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(270f - -1303f), _wgslsmith_f_op_f32(241f * _wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - var_2.b.x)))));
    return Struct_1(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - var_2.d.x), var_2.d.x, _wgslsmith_f_op_f32(125f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1561f, var_2.b.x)) * _wgslsmith_f_op_f32(var_2.b.x - 1821f)))), -_wgslsmith_add_i32(1i ^ _wgslsmith_clamp_i32(26663i, var_2.c, var_2.c), var_2.c), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!vec4<bool>(all(vec2<bool>(true, true)), any(vec3<bool>(false, false, false)), true, true)));
    let var_1 = Struct_1(vec2<u32>(~(var_0.a.x << (u_input.b.x % 32u)), min(u_input.a, firstLeadingBit(var_0.a.x) >> (~u_input.a % 32u))), _wgslsmith_f_op_vec3_f32(var_0.b + vec3<f32>(var_0.d.x, var_0.b.x, _wgslsmith_f_op_f32(386f - var_0.b.x))), 1i, _wgslsmith_f_op_vec4_f32(-var_0.d));
    let var_2 = true;
    let var_3 = u_input.b;
    let var_4 = 300f;
    let var_5 = func_1(!select(!vec4<bool>(true, true, var_2, true), vec4<bool>(var_1.b.x > -242f, false, true, var_2), !var_2));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.d, vec4<f32>(var_5.b.x, -1350f, 1050f, 896f)) - var_5.d) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_5.d + vec4<f32>(var_1.d.x, var_0.d.x, -1299f, -2092f)) - _wgslsmith_f_op_vec4_f32(min(var_0.d, vec4<f32>(283f, 755f, -604f, -258f)))))), -min(~vec4<i32>(var_1.c, 0i, 1i, -73110i), select(vec4<i32>(2147483647i, -6307i, var_5.c, var_1.c), vec4<i32>(var_1.c, var_5.c, 6370i, -1i), vec4<bool>(false, var_2, var_2, var_2)) | vec4<i32>(var_5.c, -963i, -1i, var_1.c)), abs(vec2<i32>(-1i) * -(~vec2<i32>(var_0.c, 2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_5.b.x * -519f), 1000f)), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(var_4, var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(436f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2151f * var_4)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -259f), var_1.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(var_0.d.x * var_4)))))));
}

