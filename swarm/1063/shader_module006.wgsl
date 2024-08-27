struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<u32> {
    var var_0 = u_input.b.x != u_input.b.x;
    let var_1 = -667f;
    let var_2 = Struct_1(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, false, any(vec4<bool>(false, false, true, true))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true)), vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)), _wgslsmith_f_op_f32(-var_1) == _wgslsmith_div_f32(var_1, var_1), true), true), u_input.b.x, _wgslsmith_clamp_i32(1i, max(~countOneBits(38087i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.x & 1i)), -firstTrailingBit(u_input.b.x) ^ abs(_wgslsmith_mod_i32(u_input.b.x, 9755i))), u_input.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1)) - _wgslsmith_f_op_f32(round(var_1))), -2552f)));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1482f - _wgslsmith_f_op_f32(round(-213f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(408f)), var_2.e.x))));
    return _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~abs(u_input.d.zz)) ^ vec2<u32>(u_input.c, 52692u);
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    let var_0 = (~func_3() | u_input.d.xz) | select(_wgslsmith_mod_vec2_u32(u_input.d.zy, _wgslsmith_clamp_vec2_u32(u_input.d.yx, vec2<u32>(111873u, u_input.d.x) >> (u_input.d.xz % vec2<u32>(32u)), ~vec2<u32>(24875u, 22191u))), u_input.d.yx, !arg_0 & true);
    var var_1 = u_input.b.x;
    let var_2 = reverseBits(-(vec3<i32>(u_input.b.x, -21450i, u_input.b.x) & vec3<i32>(u_input.b.x, u_input.b.x, ~22535i)));
    let var_3 = Struct_1(select(select(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, true, false, arg_0)), select(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, true, true, true), vec4<bool>(false, true, arg_0, arg_0)), vec4<bool>(arg_0, true, true, false), vec4<bool>(true, arg_0, false, true)), vec4<bool>(arg_0, true, arg_0, all(vec3<bool>(true, false, true)))), select(vec4<bool>(true, arg_0, true, !arg_0), vec4<bool>(any(vec2<bool>(false, false)), arg_0, arg_1.a < 1354f, true), -1i == u_input.b.x), arg_0), -59659i, 1i << (firstLeadingBit(_wgslsmith_mult_u32(countOneBits(0u), 4294967295u ^ u_input.c)) % 32u), u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-719f, arg_1.a, _wgslsmith_f_op_f32(trunc(arg_1.a))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 1748f, arg_1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1386f, 137f, arg_1.a)))))));
    var var_4 = min(~(~(~vec4<u32>(u_input.d.x, u_input.d.x, 25709u, 0u))), vec4<u32>(36177u, 0u, ~firstTrailingBit(var_0.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), u_input.d.zz))) ^ vec4<u32>(var_0.x, ~var_0.x, ~min(u_input.c, u_input.c) >> (abs(var_0.x) % 32u), ~_wgslsmith_add_u32(12294u >> (0u % 32u), ~41249u));
    return Struct_1(!select(select(!var_3.a, select(vec4<bool>(var_3.a.x, arg_0, true, false), var_3.a, var_3.a.x), true), var_3.a, false), max(_wgslsmith_mult_i32(firstTrailingBit(max(var_2.x, -2147483647i)), 1i), u_input.b.x), 0i, var_3.d, vec3<f32>(1618f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_3.e.x - _wgslsmith_f_op_f32(ceil(arg_1.a))), _wgslsmith_f_op_f32(exp2(arg_1.a)))), _wgslsmith_f_op_f32(-1442f * 1f)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    let var_1 = vec3<i32>(reverseBits(~(-5493i)), u_input.b.x, -66868i | ((u_input.b.x | reverseBits(0i)) | _wgslsmith_add_i32(i32(-1i) * -25410i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, var_0.b, u_input.b.x), u_input.b))));
    return u_input.c;
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = vec2<u32>(func_4(func_2(arg_0.a.x, Struct_3(arg_0.e.x))), u_input.a) << (firstTrailingBit(u_input.d.xz) % vec2<u32>(32u));
    let var_1 = max(~u_input.b.ywz, -u_input.b.wyx);
    var var_2 = Struct_1(!func_2(false, Struct_3(_wgslsmith_f_op_f32(-arg_0.e.x))).a, i32(-1i) * -5232i, u_input.b.x, min(abs(1i), (_wgslsmith_mult_i32(arg_0.b, var_1.x) | abs(var_1.x)) >> (1u % 32u)), _wgslsmith_f_op_vec3_f32(-arg_0.e));
    var var_3 = var_2.a.x;
    var_3 = func_2(true, Struct_3(-579f)).a.x;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(vec4<bool>(true, all(vec2<bool>(true, true)), false, true)), all(vec3<bool>(false, true, func_1(Struct_1(vec4<bool>(true, false, true, false), u_input.b.x, u_input.b.x, -9397i, vec3<f32>(-163f, -1359f, -1867f))) != _wgslsmith_sub_i32(u_input.b.x, u_input.b.x))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(690f)), _wgslsmith_f_op_f32(-1853f + 967f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-527f))));
    var var_1 = select(vec4<u32>(~_wgslsmith_add_u32(u_input.a, ~49885u), _wgslsmith_add_u32(17173u, ~(~1u)), ~(1u | (u_input.c | 3539u)), u_input.c), ~reverseBits(~max(vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x), vec4<u32>(u_input.a, 0u, 6035u, 10361u))), vec4<bool>(true, (u_input.c < firstLeadingBit(39245u)) & (u_input.c != ~u_input.c), true, (i32(-1i) * -26414i) < firstLeadingBit(-18047i >> (u_input.d.x % 32u))));
    let var_2 = var_0.wyx;
    let var_3 = vec3<u32>(max(19662u, _wgslsmith_dot_vec3_u32(u_input.d, (var_1.xyx << (var_1.zyw % vec3<u32>(32u))) & vec3<u32>(var_1.x, u_input.d.x, 26226u))), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.xz, vec2<u32>(var_1.x, u_input.a)), _wgslsmith_mult_vec2_u32(var_1.zx, vec2<u32>(u_input.a, 42844u))), ~(~_wgslsmith_clamp_vec2_u32(u_input.d.xz, u_input.d.yy, var_1.yw))), _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(u_input.d.x, 1u & var_1.x, 2810u)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1251f * _wgslsmith_f_op_f32(440f + -177f)) * _wgslsmith_f_op_f32(step(315f, _wgslsmith_f_op_f32(round(364f))))) - _wgslsmith_f_op_f32(f32(-1f) * -344f)) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(486f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-719f + 1315f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-769f, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-497f - 304f) + _wgslsmith_f_op_f32(abs(-1312f))), _wgslsmith_f_op_f32(floor(-1898f))) - vec2<f32>(1692f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(ceil(1132f)))))));
}

