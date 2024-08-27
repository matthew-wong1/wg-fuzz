struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(642f, _wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)))), arg_0), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -2087f, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 950f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, arg_0, arg_0, 925f))))))));
    var var_1 = arg_2;
    let var_2 = select(select(vec4<bool>(var_1.b, select(all(arg_2.c.zx), var_1.b, var_1.c.x && false), !select(var_1.c.x, arg_2.c.x, false), var_1.c.x), select(vec4<bool>(arg_2.c.x, arg_2.b, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), arg_2.c.x), all(var_1.c)), !vec4<bool>(arg_2.c.x, var_1.c.x, var_1.c.x, 39499u >= var_1.a.a)), vec4<bool>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, arg_1.x, arg_1.x), vec4<i32>(arg_1.x, 39539i, u_input.c, arg_1.x)), 1i) > (-795i >> (arg_2.a.a % 32u)), all(!(!var_1.c)), arg_2.b, _wgslsmith_sub_u32(~4294967295u, _wgslsmith_dot_vec3_u32(arg_3, arg_3)) == _wgslsmith_clamp_u32(~arg_2.a.a, 29485u, u_input.b)), !select(select(!vec4<bool>(var_1.c.x, true, var_1.b, false), select(vec4<bool>(arg_2.c.x, false, false, arg_2.b), vec4<bool>(arg_2.c.x, var_1.c.x, arg_2.b, false), true), vec4<bool>(arg_2.b, var_1.b, true, var_1.b)), select(vec4<bool>(true, arg_2.c.x, true, true), !vec4<bool>(false, arg_2.b, true, false), !vec4<bool>(true, arg_2.c.x, var_1.b, true)), vec4<bool>(true, all(vec2<bool>(true, true)), true, all(vec3<bool>(false, false, var_1.b)))));
    let var_3 = arg_2.a;
    let var_4 = arg_1.x;
    return arg_1.zz;
}

fn func_2() -> Struct_1 {
    let var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(267f))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.c, 1i, 1i)), abs(vec3<i32>(u_input.c, 3337i, -2147483647i))), abs(~vec3<i32>(7473i, 1i, u_input.a))) & _wgslsmith_mult_vec3_i32(vec3<i32>(abs(-22302i), u_input.a, _wgslsmith_add_i32(-29608i, 1070i)), vec3<i32>(countOneBits(62414i), _wgslsmith_div_i32(u_input.c, 1i), 1i >> (0u % 32u))), Struct_3(Struct_2(u_input.b), true, vec3<bool>(any(vec2<bool>(false, false)), true, true)), vec3<u32>(~4294967295u, u_input.b, (0u ^ abs(u_input.b)) << (u_input.b % 32u)));
    let var_1 = all(!vec2<bool>(!select(false, true, true), true));
    var var_2 = 23219u;
    var var_3 = Struct_2(~(~u_input.b | u_input.b) >> (reverseBits(_wgslsmith_add_u32(~43674u, ~u_input.b)) % 32u));
    let var_4 = ~(~select(vec4<u32>(~4294967295u, u_input.b, ~var_3.a, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.a, u_input.b, 3849u, 1u), vec4<u32>(3797u, 6320u, 4294967295u, 4139u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(111484u, 0u, 1u, 31719u), vec4<u32>(var_3.a, var_3.a, 1u, u_input.b)), vec4<bool>(all(vec3<bool>(false, var_1, var_1)), var_1, true, any(vec4<bool>(var_1, false, var_1, true)))));
    return Struct_1(vec2<u32>(~var_4.x, reverseBits(var_3.a) << (_wgslsmith_clamp_u32(54766u, 39721u, 52806u << (u_input.b % 32u)) % 32u)));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(arg_3.a, vec2<u32>(1u, u_input.b)), _wgslsmith_clamp_vec2_u32(~arg_3.a, vec2<u32>(55843u, u_input.b), arg_3.a)), max(arg_3.a, ~vec2<u32>(8630u, u_input.b)), arg_3.a));
    let var_1 = select(-vec2<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), i32(-1i) * -2147483647i) << ((max(~vec2<u32>(u_input.b, 450u), firstLeadingBit(var_0.a)) | vec2<u32>(23521u, 6365u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(max(~(-vec2<i32>(u_input.c, -1i)), ~vec2<i32>(49835i, u_input.a)), vec2<i32>(u_input.a << (var_0.a.x % 32u), u_input.c) >> (var_0.a % vec2<u32>(32u)), countOneBits(vec2<i32>(max(-1i, u_input.a), u_input.a))), true);
    var var_2 = Struct_3(Struct_2(max(0u >> (u_input.b % 32u), firstTrailingBit(arg_3.a.x)) & 44109u), 12268u != var_0.a.x, select(select(vec3<bool>(any(vec2<bool>(false, true)), false, true), select(vec3<bool>(arg_2, true, true), select(vec3<bool>(false, true, arg_2), vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, true, arg_2)), !vec3<bool>(false, false, arg_2)), all(vec2<bool>(true, true))), select(vec3<bool>(true, arg_2, true), select(vec3<bool>(true, arg_2, arg_2), !vec3<bool>(arg_2, arg_2, true), select(vec3<bool>(arg_2, false, false), vec3<bool>(false, arg_2, false), vec3<bool>(false, false, false))), all(vec4<bool>(arg_2, arg_2, true, false))), vec3<bool>(arg_2, true, false)));
    let var_3 = !select(vec4<bool>(!select(false, var_2.c.x, arg_2), select(select(var_2.c.x, arg_2, true), true, true), any(select(var_2.c.yx, vec2<bool>(var_2.b, var_2.c.x), arg_2)), true), !select(vec4<bool>(true, false, true, true), vec4<bool>(var_2.b, true, true, arg_2), var_2.c.x), select(select(vec4<bool>(var_2.b, arg_2, false, var_2.b), !vec4<bool>(true, arg_2, var_2.b, true), select(vec4<bool>(arg_2, true, var_2.b, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, arg_2))), select(select(vec4<bool>(var_2.b, var_2.c.x, arg_2, var_2.c.x), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, true, true), select(vec4<bool>(var_2.b, var_2.c.x, false, true), vec4<bool>(true, arg_2, var_2.b, var_2.c.x), true)), vec4<bool>(any(var_2.c), var_2.c.x, true && var_2.b, !arg_2)));
    var_2 = Struct_3(var_2.a, var_2.b, var_3.wzw);
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-460f + arg_0)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32) -> StorageBuffer {
    let var_0 = Struct_1(min(~(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 26131u), vec2<bool>(false, true)) >> (~vec2<u32>(4294967295u, 21922u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~min(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.b, 25634u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), reverseBits(vec2<u32>(0u, u_input.b))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1351f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-729f))), all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)))) + 1f), 1284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(func_4(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(631f)), -1495f))), vec3<f32>(1f, 1f, 1f), any(vec2<bool>(true, true)), func_2())));
    var_1 = vec4<f32>(1000f, var_1.x, _wgslsmith_f_op_f32(484f * -855f), 1140f);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x)), var_1.x, -1000f) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-502f, 1175f, -1142f, 2245f) + vec4<f32>(var_1.x, var_1.x, -752f, 546f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(341f, var_1.x, -356f, var_1.x), vec4<f32>(520f, -919f, 436f, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -227f, 952f, var_1.x) + vec4<f32>(-146f, var_1.x, 1365f, 627f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_4(-1607f, var_1.zww, true, Struct_1(var_0.a))), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), var_1.x, 1f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-207f, -634f, var_1.x, -1193f), vec4<f32>(var_1.x, var_1.x, -1336f, var_1.x), false)) * vec4<f32>(var_1.x, var_1.x, -963f, -306f)))));
    let var_3 = !select(vec2<bool>(false, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), false), !any(vec3<bool>(true, true, true)));
    return StorageBuffer(-(~(vec4<i32>(arg_1, 1i, u_input.a, u_input.c) << (~vec4<u32>(var_0.a.x, u_input.b, 4294967295u, 0u) % vec4<u32>(32u)))), ~(-vec3<i32>(arg_2 & u_input.c, -arg_2, 1i)), -reverseBits(vec3<i32>(arg_0, reverseBits(2147483647i), _wgslsmith_sub_i32(24486i, -1i))), 1158f, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, 0i, arg_0, u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0, 59203i, -32947i, 65072i), vec4<i32>(-26786i, u_input.a, 1i, arg_2))), vec4<i32>(-1865i, -arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_0, -8526i), vec3<i32>(-29209i, -9729i, -2147483647i)), arg_1)), _wgslsmith_clamp_i32(firstLeadingBit(0i), arg_2, -35625i | (arg_0 & 42903i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -2147483647i, u_input.a), vec4<i32>(0i, u_input.a, u_input.c, -52623i)), abs(_wgslsmith_mod_i32(-1i, 49023i))) ^ 8787i, -(~(-(~u_input.c))));
}

