struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    let var_0 = -899f;
    var var_1 = min(u_input.b, u_input.b);
    var var_2 = 1086f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(1227f * var_0)))) + var_0));
    var_2 = _wgslsmith_f_op_f32(583f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0, -538f), _wgslsmith_f_op_f32(-var_0)) + var_0)));
    return 0u;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = -vec2<i32>(9120i, -arg_1) ^ (_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.d.xx, ~u_input.d.wy, -vec2<i32>(-1i, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x) << (u_input.b.yx % vec2<u32>(32u)), -vec2<i32>(arg_1, -13916i), u_input.d.wx)) | u_input.d.wy);
    var_0 = vec2<i32>(22413i, -u_input.d.x);
    let var_1 = Struct_2(!vec3<bool>(arg_0.x, true, true), ~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b.yww & u_input.b.yzx, u_input.c.wxx & u_input.c.zxx), max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 29635u), vec2<u32>(u_input.a, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, 13666u), vec3<u32>(u_input.a, 68681u, u_input.c.x))), min(~0u, 0u | u_input.b.x), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.c.x), 4294967295u, u_input.b.x)));
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(var_1.b.x, ~u_input.a), ~func_3(), firstTrailingBit(abs(_wgslsmith_sub_u32(u_input.a, 59205u) << (~1u % 32u))));
    let var_3 = ~u_input.d.xyw ^ firstLeadingBit(_wgslsmith_mult_vec3_i32(~(-u_input.d.zzw), -(vec3<i32>(20998i, 12986i, var_0.x) & vec3<i32>(0i, -24521i, var_0.x))));
    return Struct_1(~(~vec4<u32>(~37307u, 3826u, _wgslsmith_clamp_u32(u_input.a, var_2.x, var_1.b.x), u_input.c.x)), select(select(vec2<bool>(true, true), select(vec2<bool>(var_1.a.x, false), select(vec2<bool>(false, var_1.a.x), vec2<bool>(arg_0.x, arg_0.x), arg_0), vec2<bool>(true, true)), all(var_1.a)), arg_0, !select(vec2<bool>(arg_0.x, true), select(var_1.a.xy, var_1.a.xy, arg_0), var_1.a.x | true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-296f + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(1474f, -703f)))))), var_1.b, firstTrailingBit(firstLeadingBit(vec4<i32>(-2147483647i, u_input.d.x, 0i, 2168i) | u_input.d)));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(arg_1.b, vec2<bool>(true, ~u_input.a <= ~arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1033f))))), ~(~reverseBits(vec4<u32>(arg_1.b.x, arg_1.b.x, u_input.b.x, 1u) ^ arg_1.b)), _wgslsmith_div_vec4_i32(abs(abs(u_input.d)), vec4<i32>(_wgslsmith_mod_i32(min(2147483647i, u_input.d.x), 1i), u_input.d.x, -1i, 0i)));
    let var_1 = _wgslsmith_f_op_f32(1594f + -468f);
    var var_2 = func_2(var_0.b, ~var_0.e.x);
    var var_3 = Struct_3(vec4<bool>(var_0.b.x, reverseBits(~var_2.e.x) >= -35671i, any(select(vec2<bool>(var_2.b.x, var_2.b.x), vec2<bool>(false, false), !var_2.b.x)), true), Struct_1(vec4<u32>(arg_1.b.x, 1u, ~16271u, arg_1.b.x), var_0.b, _wgslsmith_f_op_f32(arg_0 * arg_0), ~(vec4<u32>(var_2.a.x, var_0.d.x, u_input.a, var_2.a.x) | var_0.d), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(-34250i, -1i, -1i, u_input.d.x)) | u_input.d, vec4<i32>(-1i) * -var_2.e)), arg_1, 2147483647i | _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, u_input.d.x), abs(var_0.e.x), _wgslsmith_mod_i32(var_2.e.x, -1i)), _wgslsmith_div_vec3_i32(var_2.e.www, _wgslsmith_div_vec3_i32(u_input.d.wxw, var_2.e.yww))));
    let var_4 = vec3<u32>(~87622u, 0u ^ _wgslsmith_clamp_u32(countOneBits(42053u), min(var_2.a.x, var_0.a.x) | ~95991u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, 7928u), 4294967295u)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 18639u, 28290u, u_input.c.x & u_input.a), abs(var_2.d))));
    return var_3.b;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = u_input.d.ww;
    let var_1 = -46219i;
    var var_2 = select(select(vec3<bool>(true, !(arg_2 | arg_0.b.x), arg_0.b.x & arg_0.b.x), vec3<bool>(arg_2, false, !arg_0.b.x), func_1(arg_0.c, Struct_2(vec3<bool>(true, arg_2, true), ~arg_0.a)).b.x), !(!select(!vec3<bool>(true, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_2, arg_0.b.x, true), arg_0.b.x)), arg_0.b.x);
    let var_3 = true;
    var_2 = vec3<bool>(!func_2(!var_2.yx, func_2(arg_0.b, var_1).e.x).b.x != !((u_input.c.x ^ 53647u) <= firstTrailingBit(arg_0.a.x)), arg_0.b.x, true);
    return select(arg_0.b.x, !func_2(select(var_2.xz, vec2<bool>(true, arg_2), arg_2), abs(44702i)).b.x == func_1(845f, Struct_2(select(vec3<bool>(true, true, arg_2), vec3<bool>(true, true, arg_0.b.x), var_2.x), u_input.c)).b.x, func_1(1321f, Struct_2(select(!vec3<bool>(arg_2, false, false), !vec3<bool>(true, var_3, arg_0.b.x), !vec3<bool>(arg_0.b.x, var_2.x, true)), vec4<u32>(141402u, ~u_input.c.x, arg_0.d.x, arg_0.d.x))).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-956f, -1076f, _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(489f, -326f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1081f) + _wgslsmith_f_op_f32(min(-1000f, -591f))))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -187f))))), var_0.x));
    var var_2 = Struct_2(!vec3<bool>(true, func_4(func_1(var_0.x, Struct_2(vec3<bool>(true, false, true), vec4<u32>(u_input.c.x, 1u, u_input.b.x, u_input.a))), select(2147483647i, u_input.d.x, true), false), select(false, true, false) && true), ~func_1(_wgslsmith_f_op_f32(f32(-1f) * -265f), Struct_2(vec3<bool>(true, true, true), ~vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, 19441u))).d);
    var_2 = Struct_2(vec3<bool>(select(var_2.a.x, false, var_2.a.x), var_2.a.x, ~reverseBits(4294967295u) > _wgslsmith_dot_vec4_u32(select(var_2.b, vec4<u32>(13550u, 44826u, 4294967295u, 71320u), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, false)), firstLeadingBit(u_input.c))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 33535u, var_2.b.x), vec3<u32>(3872u, 4294967295u, var_2.b.x)), _wgslsmith_add_u32(u_input.c.x, var_2.b.x), var_2.b.x, _wgslsmith_add_u32(u_input.c.x, 4294967295u)), ~func_2(vec2<bool>(false, false), 2147483647i).a));
    var_2 = Struct_2(vec3<bool>(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1390f, 1142f, true)))), Struct_2(vec3<bool>(var_2.a.x, false, var_2.a.x), select(vec4<u32>(0u, var_2.b.x, 4294967295u, var_2.b.x), vec4<u32>(u_input.c.x, 1u, var_2.b.x, u_input.c.x), var_2.a.x))).b.x, all(var_2.a.xx), all(!select(vec4<bool>(var_2.a.x, false, true, var_2.a.x), vec4<bool>(var_2.a.x, var_2.a.x, false, true), vec4<bool>(true, true, false, var_2.a.x)))), select(vec4<u32>(0u, u_input.c.x, var_2.b.x, _wgslsmith_clamp_u32(var_2.b.x >> (u_input.c.x % 32u), ~49953u, ~0u)), u_input.c, !any(!vec4<bool>(var_2.a.x, true, true, false))));
    let var_3 = var_2.a;
    let var_4 = -vec4<i32>(func_1(-1930f, Struct_2(select(vec3<bool>(var_2.a.x, true, var_3.x), var_2.a, var_2.a), var_2.b)).e.x, 890i, _wgslsmith_dot_vec3_i32(~(vec3<i32>(u_input.d.x, u_input.d.x, 1i) & vec3<i32>(0i, u_input.d.x, u_input.d.x)), u_input.d.zxw), reverseBits(reverseBits(_wgslsmith_div_i32(2147483647i, -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(~u_input.d.wz)), vec4<u32>(1u, 4294967295u, u_input.c.x, var_2.b.x));
}

