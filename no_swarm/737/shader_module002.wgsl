struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-745f, 1229f) - vec2<f32>(-487f, -1053f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-545f, 719f)))) + vec2<f32>(_wgslsmith_f_op_f32(1395f - 1288f), -977f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-172f, 1330f))))))))));
    let var_1 = 2147483647i;
    let var_2 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    let var_3 = var_2;
    let var_4 = var_2;
    return (var_2.a.x && !var_2.a.x) && all(vec2<bool>(!all(vec4<bool>(true, true, false, false)), !var_2.a.x));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = true;
    var var_2 = Struct_1(select(!(!(!vec3<bool>(var_1, true, var_1))), vec3<bool>(true, func_3(), var_1), !((46768u | arg_0.x) >= _wgslsmith_add_u32(1u, arg_0.x))));
    let var_3 = _wgslsmith_f_op_f32(-1f);
    let var_4 = u_input.a;
    return Struct_1(vec3<bool>(var_1, all(!(!vec4<bool>(var_2.a.x, var_1, var_2.a.x, false))), false));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(vec3<bool>(true, true, true));
    var_0 = Struct_1(vec3<bool>(true, var_0.a.x, var_0.a.x));
    let var_1 = func_2(~vec4<u32>(_wgslsmith_mult_u32(u_input.d.x, 25198u), min(34360u, 50299u), 35851u, 4294967295u) & ~_wgslsmith_mult_vec4_u32(select(vec4<u32>(24063u, 10034u, u_input.d.x, 4294967295u), vec4<u32>(arg_0.x, 49784u, 53114u, u_input.d.x), vec4<bool>(true, true, var_0.a.x, true)), vec4<u32>(arg_0.x, 42624u, arg_0.x, 0u)));
    var var_2 = _wgslsmith_div_u32(firstLeadingBit(select(_wgslsmith_add_u32(24204u, 91138u << (0u % 32u)), 4294967295u, !all(vec4<bool>(var_0.a.x, var_0.a.x, false, false)))), _wgslsmith_add_u32(min(14659u, _wgslsmith_div_u32(9832u, 10910u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(62881u, u_input.d.x, 14336u), ~vec3<u32>(u_input.d.x, arg_0.x, u_input.d.x))));
    var_2 = abs(~14972u);
    return func_2(~_wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(1u, 4294967295u, u_input.d.x, 4294967295u)), firstTrailingBit(vec4<u32>(4514u, u_input.d.x, 0u, arg_0.x) ^ vec4<u32>(u_input.d.x, 29735u, 0u, arg_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>) -> vec4<u32> {
    var var_0 = 1u;
    var_0 = _wgslsmith_dot_vec4_u32(min(~select(firstTrailingBit(vec4<u32>(4294967295u, u_input.d.x, 4294967295u, u_input.d.x)), vec4<u32>(u_input.d.x, 20258u, 0u, 4294967295u) << (vec4<u32>(41879u, 1u, 10165u, arg_1.x) % vec4<u32>(32u)), arg_0.a.x), reverseBits(select(firstLeadingBit(vec4<u32>(u_input.d.x, 0u, 4294967295u, 12880u)), countOneBits(vec4<u32>(arg_1.x, 3461u, 0u, 1u)), !arg_0.a.x))), min(vec4<u32>(arg_1.x, ~arg_1.x, u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, 44444u) & (arg_1.x | arg_1.x)), vec4<u32>(_wgslsmith_add_u32(39664u, firstTrailingBit(4294967295u)), u_input.d.x, 10653u, 4294967295u)));
    var var_1 = -1120f;
    let var_2 = u_input.c.xxx;
    var_1 = arg_2.x;
    return vec4<u32>(~arg_1.x & _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.d, u_input.d), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x), u_input.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~arg_1.x, firstTrailingBit(arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(43399u, arg_1.x, arg_1.x, u_input.d.x), vec4<u32>(4294967295u, arg_1.x, u_input.d.x, 1u))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.x, 7927u), 15561u >> (arg_1.x % 32u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, arg_1.x, arg_1.x, u_input.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, arg_1.x, 31564u, 1u), vec4<u32>(94461u, u_input.d.x, 65013u, arg_1.x)))), _wgslsmith_add_vec3_u32(~u_input.d, ~vec3<u32>(arg_1.x, 1u, 1u) & _wgslsmith_add_vec3_u32(vec3<u32>(arg_1.x, u_input.d.x, u_input.d.x), u_input.d))), u_input.d.x, 1u);
}

fn func_5(arg_0: u32, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1339f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1346f + -189f)))))));
    let var_1 = func_2(~(~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 4294967295u, 1u, 4416u), vec4<u32>(0u, arg_0, 4294967295u, 44653u)))));
    var var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.b, vec2<i32>(_wgslsmith_mult_i32(abs(arg_1), min(8775i, 4407i)), arg_1)), _wgslsmith_mult_vec2_i32(~_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.a.x, u_input.b.x), countOneBits(u_input.a)), ~select(u_input.c.yy, ~vec2<i32>(arg_1, -38353i), func_2(vec4<u32>(u_input.d.x, 1251u, 105058u, 4294967295u)).a.xz)));
    var_2 = u_input.c.xx;
    var_2 = u_input.b;
    return Struct_1(vec3<bool>(var_1.a.x, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 0u, 11315u, 4294967295u) ^ vec4<u32>(17023u, 54327u, u_input.d.x, 47249u)) | (~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 42419u) | _wgslsmith_add_vec4_u32(vec4<u32>(1u, 67324u, 1u, 50058u), vec4<u32>(u_input.d.x, 28378u, u_input.d.x, u_input.d.x))), func_4(func_1(vec3<u32>(3279u, u_input.d.x, 25901u), 360f), ~(~vec2<u32>(u_input.d.x, 0u)), vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), -738f, 1114f))), _wgslsmith_add_i32(-43960i, ~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-17522i, -1i, u_input.b.x, u_input.b.x), u_input.c)), _wgslsmith_mult_vec4_i32(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.b.x, 32076i, 2147483647i), u_input.c, vec4<i32>(-45305i, 2147483647i, u_input.b.x, u_input.b.x)), ~vec4<i32>(u_input.b.x, 27778i, 5463i, u_input.b.x)), vec4<i32>(-u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c.xxw, u_input.c.wyy), 0i, max(-26792i, u_input.b.x)))));
}

