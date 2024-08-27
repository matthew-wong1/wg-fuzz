struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = ~(~0u);
    var var_1 = Struct_1((abs(reverseBits(vec4<u32>(0u, var_0, u_input.b, 4294967295u))) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_0, 4294967295u, var_0), _wgslsmith_sub_vec4_u32(vec4<u32>(10790u, u_input.b, 4294967295u, u_input.b), vec4<u32>(21146u, 56550u, u_input.b, 28815u)), ~vec4<u32>(u_input.b, u_input.b, var_0, var_0))) & ((~vec4<u32>(52106u, var_0, 4294967295u, 0u) ^ vec4<u32>(u_input.b, var_0, u_input.b, 29614u)) >> (~vec4<u32>(24651u, 4294967295u, var_0, 13350u) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 1u, u_input.b, 14841u) ^ max(vec4<u32>(var_0, var_0, var_0, var_0), vec4<u32>(37259u, var_0, 0u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 3995u, 28228u, 1u), vec4<u32>(var_0, 25108u, 4294967295u, 1u)) << (~vec4<u32>(var_0, var_0, 4294967295u, 16588u) % vec4<u32>(32u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(countOneBits(u_input.b), ~var_0), ~countOneBits(var_0), 1u), ~abs(~vec3<u32>(29498u, var_0, var_0))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - arg_0);
    var_1 = Struct_1(~vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, var_0, var_0), ~vec3<u32>(15982u, var_1.a.x, u_input.b)), 21713u, var_0, var_1.b.x ^ abs(0u)), var_1.a, select(~(~_wgslsmith_div_vec3_u32(var_1.b.xzy, var_1.a.yyy)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(var_1.a.wxw >> (var_1.c % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(var_1.c, vec3<u32>(35200u, 38685u, 4824u))), var_1.b.xwz), select(vec3<bool>(true, true, any(vec2<bool>(false, true))), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), false)));
    var var_3 = _wgslsmith_f_op_f32(-var_2);
    return var_2;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -562f), -563f), 1139f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(-352f)))), 1f), vec4<f32>(1272f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-324f + -698f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1175f * 1308f) + _wgslsmith_f_op_f32(f32(-1f) * -328f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f)))));
    let var_1 = var_0.x;
    var var_2 = Struct_1(abs(max(max(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, u_input.b, 0u)) | vec4<u32>(4294967295u, 6609u, u_input.b, 39921u), vec4<u32>(u_input.b, _wgslsmith_add_u32(1u, 13278u), 18273u, _wgslsmith_sub_u32(u_input.b, 25904u)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(4294967295u, u_input.b), ~u_input.b), u_input.b, max(1u, 4294967295u), ~u_input.b), ~(~countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)))), countOneBits(select(vec3<u32>(32824u, u_input.b, 0u) << (vec3<u32>(14418u, 12467u, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 0u, 821u), true) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 36329u, u_input.b), vec3<u32>(u_input.b, 13884u, 46438u))));
    var var_3 = ~firstTrailingBit(vec4<i32>(-1i) * -(~vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.c.x)));
    let var_4 = select(~var_3.xz, vec2<i32>(36494i, 1i), vec2<bool>(true, abs(1u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(39146u, u_input.b, var_2.b.x), var_2.a.wzy)));
    return Struct_1(vec4<u32>(~60983u, _wgslsmith_mult_u32(~var_2.c.x, ~0u) << (u_input.b % 32u), 1u, 1u), select(vec4<u32>(reverseBits(6127u), ~25872u, _wgslsmith_dot_vec4_u32(var_2.a, vec4<u32>(0u, 0u, 38874u, 4294967295u)), ~var_2.c.x), reverseBits(_wgslsmith_add_vec4_u32(var_2.b, vec4<u32>(var_2.a.x, 4294967295u, var_2.b.x, var_2.a.x))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))) | _wgslsmith_div_vec4_u32(~(~var_2.a), (vec4<u32>(0u, 1u, 0u, 92452u) ^ vec4<u32>(68726u, var_2.c.x, u_input.b, 1u)) & reverseBits(var_2.a)), var_2.a.xzw);
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = vec2<bool>(true, true);
    let var_2 = var_0;
    var_1 = vec2<bool>(true, _wgslsmith_mult_u32(4294967295u, ~var_0.b.x | ~u_input.b) >= 28371u);
    let var_3 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(max(~(~vec2<u32>(var_0.a.x, 10786u)), vec2<u32>(_wgslsmith_mod_u32(var_2.a.x, u_input.b), ~var_0.a.x))), var_0.b.yw, var_2.c.xz);
    return Struct_1(~var_0.a, countOneBits(~vec4<u32>(~41216u, _wgslsmith_add_u32(20392u, var_0.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.c.x, 45929u), var_2.b.wzx), ~var_2.b.x)), reverseBits(var_2.a.zwy));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = Struct_1(~vec4<u32>(abs(var_0.c.x), max(18041u, ~13687u), 1u, ~(u_input.b >> (0u % 32u))), arg_0.a, vec3<u32>(_wgslsmith_dot_vec3_u32(~arg_0.c, select(_wgslsmith_mult_vec3_u32(var_0.b.wzw, vec3<u32>(var_0.b.x, 4294967295u, 4294967295u)), firstTrailingBit(arg_0.b.yyw), !arg_1)), _wgslsmith_dot_vec3_u32(var_0.c, arg_0.c), arg_0.c.x));
    var_1 = func_1(66920u);
    var_0 = arg_0;
    var var_2 = arg_0;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = func_2();
    let var_1 = 14518i ^ abs(u_input.c.x);
    let var_2 = func_2();
    var_0 = var_2;
    var_0 = Struct_1(~(~func_2().a), vec4<u32>(~arg_2.c.x, _wgslsmith_mod_u32(u_input.b, ~abs(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(func_2().a.x, _wgslsmith_mod_u32(4294967295u, 45043u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 79685u, arg_0.c.x), vec4<u32>(arg_2.b.x, 0u, var_2.b.x, 1u)), 4294967295u), ~vec4<u32>(42646u, arg_2.b.x, var_0.b.x, 1u)), arg_0.b.x), ~arg_2.a.xwy);
    return false;
}

fn func_6(arg_0: bool, arg_1: f32) -> vec4<u32> {
    return ~(~(~vec4<u32>(88390u, 15917u, 1u, u_input.b) ^ ~(~vec4<u32>(0u, u_input.b, u_input.b, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_6(func_5(func_4(func_1(4294967295u), true), func_2(), Struct_1(~vec4<u32>(u_input.b, 71895u, 52782u, 4294967295u), ~vec4<u32>(1u, 1u, u_input.b, u_input.b), vec3<u32>(67210u, u_input.b, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(491f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2771f, -473f))))), vec4<u32>(43369u, ~u_input.b & 0u, select(firstTrailingBit(~u_input.b), u_input.b, false), _wgslsmith_dot_vec2_u32(min(~vec2<u32>(1u, 1u), select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), false)), min(vec2<u32>(u_input.b, 0u), vec2<u32>(49017u, 98391u)) ^ vec2<u32>(1u, 1u))), ~(~(~vec3<u32>(52944u, u_input.b, 66718u))));
    var var_1 = ~select(u_input.c.x, u_input.a, (u_input.c.x > u_input.a) != true);
    var var_2 = var_0;
    var var_3 = func_4(var_0, !all(vec4<bool>(true, var_2.c.x != 28996u, true, false)));
    var var_4 = Struct_1(~var_3.a, vec4<u32>(var_2.b.x, countOneBits(countOneBits(~var_0.b.x)), var_0.b.x, 49585u), var_2.a.zzw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(561f)))) - -682f))), var_2.a.ww, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-519f, _wgslsmith_f_op_f32(abs(-669f)))))), 124f), _wgslsmith_clamp_i32(2147483647i, 0i, u_input.c.x), ~_wgslsmith_add_u32(var_3.c.x, _wgslsmith_add_u32(select(1u, 89613u, true), ~4294967295u)));
}

