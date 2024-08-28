struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> bool {
    var var_0 = arg_1.x;
    var var_1 = Struct_5(~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_3.x, arg_3.x, 54357u, 1u), vec4<u32>(10888u, 17382u, 4294967295u, arg_3.x) | vec4<u32>(0u, 13233u, arg_3.x, 4294967295u))), abs(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(22789u, arg_3.x, arg_3.x, 1u), vec4<u32>(4294967295u, 1u, 28662u, arg_3.x)))), ~vec2<u32>(~1u ^ arg_3.x, 4294967295u));
    var var_2 = !(!(_wgslsmith_add_u32(var_1.b.x, 0u) >= 4294967295u));
    let var_3 = arg_3.x;
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-388f, _wgslsmith_f_op_f32(f32(-1f) * -308f))))));
    return any(vec2<bool>(!(!arg_0.a), !select(true, arg_1.x & arg_1.x, false)));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = vec4<bool>(true, false && all(vec3<bool>(true, true, true)), func_3(Struct_1(true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true), true), Struct_1(true), vec3<u32>(~4226u, ~39357u, 1223u)) | all(vec2<bool>(true, true)), true);
    var_0 = !(!vec4<bool>(_wgslsmith_mod_i32(u_input.a, 45633i) >= (1i >> (arg_0 % 32u)), func_3(Struct_1(false), !var_0.xx, Struct_1(var_0.x), max(vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(28187u, 65409u, 2171u))), !var_0.x, !(!var_0.x)));
    var var_1 = _wgslsmith_dot_vec4_u32(countOneBits(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 12672u, arg_0, arg_0), vec4<u32>(arg_0, 54690u, 4294967295u, 0u) >> (vec4<u32>(arg_0, arg_0, 0u, arg_0) % vec4<u32>(32u))), ~vec4<u32>(4294967295u, 14977u, 9783u, arg_0), var_0.x)), ~(select(~vec4<u32>(0u, 1u, 0u, arg_0), ~vec4<u32>(31390u, 4294967295u, arg_0, arg_0), false) >> ((max(vec4<u32>(arg_0, 115612u, 4294967295u, 0u), vec4<u32>(1u, 1u, arg_0, arg_0)) & vec4<u32>(arg_0, arg_0, 6152u, 4294967295u)) % vec4<u32>(32u))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(387f, 1156f)) - _wgslsmith_f_op_f32(sign(-448f))) + _wgslsmith_f_op_f32(f32(-1f) * -1005f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f))), _wgslsmith_f_op_f32(248f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-387f * _wgslsmith_f_op_f32(select(1029f, 1155f, false))), 448f))));
    let var_3 = u_input.b;
    return Struct_2(-var_3.x, var_0.x, Struct_1(var_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_5, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = arg_0.c;
    let var_1 = Struct_4(select(vec2<bool>(true, !var_0.a), !vec2<bool>(0i == u_input.a, false), true), Struct_1(func_2(_wgslsmith_dot_vec2_u32(arg_1.yy, ~arg_1.xz)).c.a), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(-657f))), vec3<bool>(any(vec2<bool>(arg_0.c.a, var_0.a)) | var_0.a, false, true));
    var var_2 = -17173i;
    var_0 = Struct_1(var_1.b.a);
    let var_3 = vec2<bool>(true, 4294967295u > _wgslsmith_div_u32(~arg_2.b.x, 1u));
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> i32 {
    var var_0 = func_4(func_2(4294967295u), vec3<u32>(reverseBits(4294967295u), countOneBits(0u), reverseBits(9226u) ^ (~57827u << (firstTrailingBit(76029u) % 32u))), Struct_5(~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, 0u, 1024u), firstLeadingBit(vec4<u32>(1u, 32862u, 1u, 1u))), ~firstLeadingBit(firstTrailingBit(vec4<u32>(16653u, 1u, 5885u, 10050u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~4294967295u), abs(~vec2<u32>(15272u, 1u)), ~max(vec2<u32>(0u, 59379u), vec2<u32>(4294967295u, 4294967295u)))), arg_0.xx);
    var var_1 = max(-2147483647i, 10605i);
    let var_2 = 2074f;
    var var_3 = Struct_5(select(vec4<u32>(1u, 1u, 1u, 1u), (select(vec4<u32>(73693u, 38555u, 25237u, 63664u), vec4<u32>(28179u, 40515u, 27998u, 4294967295u), vec4<bool>(var_0.c.a, true, arg_1, arg_0.x)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) | min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(51152u, 9151u, 0u, 41165u)), reverseBits(_wgslsmith_mod_i32(u_input.b.x, u_input.c.x)) > func_2(1u).a), ~vec4<u32>(4294967295u, ~6319u, ~max(0u, 12335u), 53095u), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 22704u))));
    let var_4 = ~(~(~(~var_3.a.x))) != var_3.a.x;
    return i32(-1i) * -2602i;
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> u32 {
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(-(func_1(vec3<bool>(true, false, false), true) & _wgslsmith_sub_i32(u_input.a, 62483i)), false, Struct_1(true & (u_input.c.x < u_input.a))), true);
    let var_1 = vec3<i32>(-max(abs(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.c.x), vec3<i32>(u_input.a, 36543i, u_input.c.x))) << (~0u % 32u), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(-2378i, 2147483647i), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, u_input.c.x))) >> (max(reverseBits(26885u), 0u) % 32u), -2147483647i, -2147483647i), -u_input.c.x);
    var var_2 = any(vec2<bool>(func_4(Struct_2(33513i, true, func_4(Struct_2(-2147483647i, true, Struct_1(true)), vec3<u32>(4294967295u, 47901u, 67302u), Struct_5(vec4<u32>(27978u, 1u, 12705u, 4294967295u), vec4<u32>(32709u, 14616u, 31429u, 20813u), vec2<u32>(4294967295u, 20166u)), vec2<bool>(false, true)).c), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 17461u, 4294967295u), vec3<u32>(1u, 92291u, 89092u)), 1u), Struct_5(~vec4<u32>(4294967295u, 1u, 42987u, 32320u), vec4<u32>(38012u, 13018u, 0u, 96u), _wgslsmith_mult_vec2_u32(vec2<u32>(13328u, 0u), vec2<u32>(0u, 43748u))), select(vec2<bool>(true, true), vec2<bool>(false, true), true)).b, false));
    let var_3 = -(~_wgslsmith_div_i32(291i, var_1.x & ~52273i));
    let var_4 = abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(1u, 17441u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 67315u), vec2<u32>(1u, 4294967295u)))) <= ~(firstTrailingBit(~0u) ^ 59759u);
    let var_5 = ~(vec4<u32>(1u, 1u, 1u, 1u) & (~vec4<u32>(1u, 1u, 1u, 1u) | select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 1u, 4294967295u, 85422u), vec4<bool>(var_4, false, false, false))));
    var var_6 = Struct_5(max(~(~var_5) | var_5, reverseBits(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_5.x, 0u, 1u, 22715u), vec4<u32>(16701u, 1461u, var_5.x, 1u))))), min(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(18094u, 87189u, var_5.x, var_5.x)), vec4<u32>(min(0u, 4734u), var_5.x, ~52585u, _wgslsmith_clamp_u32(48881u, var_5.x, 4294967295u))), vec4<u32>(~0u, 4294967295u, ~_wgslsmith_dot_vec4_u32(var_5, var_5), 1u)), select(countOneBits(reverseBits(var_5.ww)), firstTrailingBit(vec2<u32>(~var_5.x, ~27940u)), vec2<bool>(true, var_4)));
    var_6 = Struct_5(firstLeadingBit(vec4<u32>(1u, ~select(1u, var_6.c.x, true), 1u, ~select(1u, 0u, true))), var_5, _wgslsmith_div_vec2_u32(vec2<u32>(var_5.x, var_6.a.x), vec2<u32>(var_6.a.x, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(~func_1(vec3<bool>(var_4, var_4, true), false))), -var_1.x & func_2(37939u).a, 46174i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(945f, _wgslsmith_f_op_f32(ceil(936f)))), func_2(max(abs(countOneBits(23708u)), 15568u)).a);
}

