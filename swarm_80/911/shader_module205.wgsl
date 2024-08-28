struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = countOneBits(~select(arg_3.d.ww, _wgslsmith_div_vec2_u32(vec2<u32>(14027u, arg_1.x), reverseBits(vec2<u32>(arg_3.d.x, arg_1.x))), arg_3.a));
    let var_1 = ~max(~(-(~vec3<i32>(13811i, 0i, -2147483647i))), countOneBits(firstTrailingBit(vec3<i32>(1030i, 13753i, arg_0.x))));
    var var_2 = arg_3;
    var var_3 = Struct_1(true, var_2.c.xy, var_2.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.e, min(select(arg_1.x, arg_3.d.x, var_2.a), 28696u), min(~arg_1.x, max(26411u, 4294967295u)), _wgslsmith_dot_vec4_u32(var_2.d, arg_3.d)), var_2.d, arg_3.d), arg_1.x);
    var_2 = Struct_1(all(!vec3<bool>(var_3.a, arg_3.a, any(vec3<bool>(false, var_2.a, false)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1283f))))), -886f), _wgslsmith_f_op_vec4_f32(abs(arg_3.c)), vec4<u32>(firstTrailingBit(countOneBits(var_2.e)), 1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_3.d.x, var_0.x), u_input.a.x >> (4294967295u % 32u)) ^ var_3.d.x, arg_1.x), var_2.e >> (u_input.c % 32u));
    return true;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(!(!func_3(vec2<i32>(u_input.b, -34234i), vec3<u32>(5713u, u_input.a.x, 1u), -670f, Struct_1(false, vec2<f32>(354f, 597f), vec4<f32>(1072f, 1626f, -787f, 476f), vec4<u32>(4294967295u, 1u, 0u, 36535u), u_input.a.x)) | true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(964f, -438f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-109f, 112f))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1067f + -1000f), _wgslsmith_f_op_f32(517f - 216f), _wgslsmith_f_op_f32(f32(-1f) * -102f), -143f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-664f, -705f, 221f, 688f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2432f, 1609f, -1727f, -106f)))), !select(false, true, true))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2097f + -602f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1278f * -1000f), -1711f)), 480f, -538f), true)), ~(~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 32034u, u_input.a.x, 3337u), vec4<u32>(48124u, 53956u, u_input.c, u_input.a.x)), ~vec4<u32>(2140u, 4294967295u, u_input.c, u_input.a.x), select(vec4<u32>(1u, 11950u, 26532u, u_input.c), vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u), false))), 4294967295u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 302f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, 1243f)))));
    var var_2 = u_input.b;
    let var_3 = Struct_1(!(any(!vec3<bool>(true, var_0.a, false)) && var_0.a), var_0.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-376f, -387f))), 327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f))))), var_0.d, var_0.e);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.wz) * vec2<f32>(_wgslsmith_f_op_f32(-979f * var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_3.b.x) - _wgslsmith_f_op_f32(-1780f - -349f))));
    return var_4.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> bool {
    let var_0 = firstTrailingBit(_wgslsmith_add_vec2_u32(select(~vec2<u32>(u_input.c, u_input.a.x) | ~arg_0, abs(arg_0) | countOneBits(arg_0), (u_input.c | 12145u) < 4294967295u), arg_0 | vec2<u32>(_wgslsmith_clamp_u32(4294967295u, arg_1, 8250u), arg_1)));
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-245f, -738f)), vec2<f32>(-1721f, -1458f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-438f, -1590f), vec2<f32>(-1584f, -765f))), vec2<f32>(-1000f, 1559f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2340f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1328f * 2452f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(997f + 232f)))), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(54924u ^ arg_0.x, 1u, ~24858u), 60474u), countOneBits(arg_1), 48274u, reverseBits(u_input.c)), var_0.x);
    let var_2 = 34811u;
    var var_3 = -(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.b, 17271i), vec4<i32>(-3342i, u_input.b, 2147483647i, 32910i)) << (select(_wgslsmith_sub_vec4_u32(var_1.d, vec4<u32>(9903u, 0u, arg_0.x, 4294967295u)), ~var_1.d, var_1.a) % vec4<u32>(32u))));
    let var_4 = Struct_1(all(select(select(vec2<bool>(false, true), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, true), vec2<bool>(var_1.a, var_1.a)), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(true, true), vec2<bool>(var_1.a, var_1.a))), !select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(false, false), vec2<bool>(var_1.a, true)), vec2<bool>(true, false))), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1255f), 643f)), var_1.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1100f)), _wgslsmith_f_op_f32(254f - -715f), _wgslsmith_f_op_f32(step(-681f, var_1.c.x)), var_1.c.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c + var_1.c)))), vec4<u32>(~0u << (var_1.d.x % 32u), 4294967295u, ~_wgslsmith_mult_u32(~0u, ~arg_1), 18450u), reverseBits(abs(_wgslsmith_mod_u32(var_1.e, ~arg_1))));
    return _wgslsmith_div_i32(min(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, u_input.b), -18847i), 1i), _wgslsmith_sub_i32(u_input.b & (var_3.x >> (1u % 32u)), 1i)) < -u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(u_input.a, u_input.c) | all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(161f, -1283f, 135f, -837f)) * vec4<f32>(-513f, -1073f, 446f, 1131f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(653f, 306f, -717f, -445f) + vec4<f32>(-408f, -1593f, -1044f, 207f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(183f, 559f, -301f, 1760f) * vec4<f32>(594f, 1918f, -1277f, -974f)), vec4<f32>(1f, 1f, 1f, 1f))))), vec4<u32>((_wgslsmith_sub_u32(u_input.a.x, 11423u) & 1u) ^ ~u_input.c, select(firstLeadingBit(0u), u_input.a.x, true), min(u_input.a.x, _wgslsmith_div_u32(~u_input.c, _wgslsmith_mod_u32(18858u, 4294967295u))), 47180u), 0u);
    var var_1 = vec4<bool>(firstTrailingBit(u_input.b) >= 1i, !(-913f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(floor(289f)))), !any(select(select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, true, true), false), select(vec3<bool>(false, true, true), vec3<bool>(var_0.a, var_0.a, var_0.a), var_0.a), !vec3<bool>(var_0.a, true, true))), !select(all(vec2<bool>(false, false)), true, ~52143u > _wgslsmith_div_u32(var_0.d.x, 1141u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), var_0.c.x))));
    let var_3 = var_0;
    var var_4 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(~u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 1i, _wgslsmith_sub_i32(u_input.b, u_input.b)), firstLeadingBit(~vec4<i32>(-13302i, u_input.b, u_input.b, u_input.b)))), ~(u_input.b | -max(-58875i, -1i)), _wgslsmith_f_op_f32(1472f + var_0.b.x));
}

