struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> i32 {
    return 0i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = arg_2;
    let var_1 = arg_1.x;
    var var_2 = Struct_1(1u, all(select(select(vec2<bool>(false, true), select(vec2<bool>(true, arg_0.x), vec2<bool>(false, false), vec2<bool>(false, arg_0.x)), true), !arg_0.wx, vec2<bool>(true, true))));
    let var_3 = _wgslsmith_dot_vec2_i32(firstLeadingBit(countOneBits(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(1i, 17264i))))), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(func_3(Struct_1(0u, var_2.b), arg_0.yyy, Struct_2(Struct_1(92974u, arg_0.x), vec3<f32>(arg_3, var_0, -1131f), arg_0), arg_0.xy), 0i, 1i), 26796i), vec2<i32>(-(~2147483647i), firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, -13406i)))));
    var var_4 = ~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(6153u, u_input.a, 20264u, 69329u), vec4<u32>(var_2.a >> (55309u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.a), vec2<u32>(u_input.a, 35754u)), var_2.a, min(69484u, u_input.a))));
    return u_input.a;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = ~vec2<u32>(_wgslsmith_add_u32(~0u, 0u), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-841f + 990f)));
    var_0 = vec2<u32>(96953u, select(var_0.x, _wgslsmith_sub_u32(u_input.a, ~14044u), false));
    var var_2 = ~(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, 1u, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, var_0.x, 1u), vec3<u32>(95240u, var_0.x, var_0.x))), u_input.a) | ~_wgslsmith_mult_u32(1u, func_2(vec4<bool>(false, false, true, true), vec2<f32>(var_1, var_1), 489f, 580f)));
    let var_3 = vec3<u32>(var_0.x, ~13210u, ~1u);
    return Struct_2(Struct_1(~u_input.a, !(!any(vec3<bool>(false, true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, var_1), vec3<f32>(var_1, var_1, -1381f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, -1324f) - vec3<f32>(var_1, 861f, var_1))))), vec4<bool>(true || (arg_0.x == _wgslsmith_dot_vec3_i32(arg_0, arg_0)), func_2(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) * vec2<f32>(var_1, 1000f)), _wgslsmith_f_op_f32(-var_1), var_1) != ~_wgslsmith_clamp_u32(u_input.a, 4294967295u, var_3.x), false, all(vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_1(_wgslsmith_add_vec3_i32((vec3<i32>(1i, 1i, 1i) >> ((vec3<u32>(1u, u_input.a, arg_0.a) << (vec3<u32>(1u, arg_2.a.a, 101626u) % vec3<u32>(32u))) % vec3<u32>(32u))) << (~select(vec3<u32>(40369u, 15357u, 15170u), vec3<u32>(arg_1.a.a, 0u, 0u), vec3<bool>(true, true, false)) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(0i, 38553i, -1i)), select(vec3<i32>(-49026i, -3921i, 8117i), vec3<i32>(22600i, -15073i, 2147483647i), vec3<bool>(false, arg_0.b, arg_1.c.x))) >> (vec3<u32>(~arg_1.a.a, ~31574u, countOneBits(arg_0.a)) % vec3<u32>(32u)))).a;
    var var_1 = _wgslsmith_div_vec3_u32(select(min(vec3<u32>(14480u, arg_1.a.a, arg_2.a.a), vec3<u32>(arg_0.a, arg_0.a, var_0.a)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_2.a.a, arg_0.a), vec3<u32>(1u, 0u, arg_0.a)), vec3<bool>(true, true, true)) >> ((~vec3<u32>(arg_2.a.a, arg_1.a.a, 1u) | ~vec3<u32>(56588u, 4294967295u, arg_1.a.a)) % vec3<u32>(32u)), vec3<u32>(~arg_1.a.a >> (1u % 32u), firstTrailingBit(4294967295u), ~_wgslsmith_clamp_u32(50340u, arg_1.a.a, arg_1.a.a))) | _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a, 0u, 0u), vec3<u32>(1u, 4294967295u, arg_0.a)) ^ vec3<u32>(4294967295u, u_input.a, arg_0.a), select(_wgslsmith_mult_vec3_u32(vec3<u32>(10182u, arg_0.a, arg_2.a.a), vec3<u32>(1u, arg_2.a.a, 1u)), _wgslsmith_sub_vec3_u32(vec3<u32>(38600u, 1u, 17768u), vec3<u32>(4294967295u, var_0.a, arg_2.a.a)), false)), countOneBits(~vec3<u32>(arg_0.a, arg_1.a.a, 41099u)) | _wgslsmith_add_vec3_u32(vec3<u32>(102488u, var_0.a, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, arg_1.a.a), vec3<u32>(u_input.a, arg_2.a.a, u_input.a))), vec3<u32>(36756u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, arg_1.a.a), vec2<u32>(51110u, u_input.a)), arg_2.a.a));
    var_1 = max(abs(vec3<u32>(~arg_1.a.a, _wgslsmith_add_u32(48007u, u_input.a), reverseBits(1u))) | vec3<u32>(~78811u, _wgslsmith_sub_u32(4294967295u, 39395u << (arg_0.a % 32u)), arg_2.a.a), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(0u, arg_1.a.a) >> (min(var_0.a, arg_2.a.a) % 32u), ~(~u_input.a), arg_2.a.a), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(10350u, 27342u, arg_1.a.a)), vec3<u32>(20907u, ~arg_0.a, ~var_0.a))));
    var var_2 = arg_1.c;
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a, var_1.x, ~arg_1.a.a), ~(~(~(~vec3<u32>(u_input.a, var_0.a, 1u)))), ~(~(~firstTrailingBit(vec3<u32>(18034u, arg_0.a, arg_1.a.a)))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(1u, ~(~u_input.a) > ~u_input.a), func_1(vec3<i32>(~(-1i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 15115i, -74116i, 0i), vec4<i32>(-2147483647i, -1i, 5347i, -13747i)), -2147483647i << (u_input.a % 32u), ~2147483647i), ~1i)), Struct_2(func_1(select(~vec3<i32>(39722i, 0i, 36525i), abs(vec3<i32>(0i, 0i, -26158i)), vec3<bool>(true, false, true))).a, vec3<f32>(_wgslsmith_f_op_f32(-244f - -282f), _wgslsmith_f_op_f32(f32(-1f) * -127f), _wgslsmith_f_op_f32(f32(-1f) * -1319f)), !vec4<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(true, true)), false, true)));
    var var_1 = vec2<u32>(~var_0.a.a | func_2(!vec4<bool>(false, var_0.c.x, var_0.a.b, var_0.c.x), _wgslsmith_div_vec2_f32(var_0.b.yy, vec2<f32>(1225f, -187f)), _wgslsmith_f_op_f32(-829f - var_0.b.x), _wgslsmith_f_op_f32(select(912f, 1000f, var_0.c.x))), ~(1u ^ max(51883u, u_input.a))) & (min(~reverseBits(vec2<u32>(0u, u_input.a)), ~vec2<u32>(u_input.a, u_input.a)) >> (~(~(vec2<u32>(var_0.a.a, 1u) ^ vec2<u32>(u_input.a, 4294967295u))) % vec2<u32>(32u)));
    var var_2 = Struct_2(Struct_1(var_1.x, any(vec2<bool>(var_0.c.x == true, !var_0.a.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-171f, 610f, 665f))), var_0.b))), var_0.c);
    var var_3 = reverseBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a.a, var_1.x, u_input.a, _wgslsmith_mult_u32(var_2.a.a, 57786u)), select(vec4<u32>(9270u, 4294967295u, var_1.x, u_input.a) >> (vec4<u32>(4294967295u, 1u, var_1.x, 12470u) % vec4<u32>(32u)), vec4<u32>(var_1.x, 26395u, var_1.x, 4294967295u), !var_2.c), ~_wgslsmith_mod_vec4_u32(vec4<u32>(31613u, u_input.a, 24750u, 55102u), vec4<u32>(41126u, var_2.a.a, 44661u, 1u))));
    var var_4 = var_0.a.b;
    let var_5 = var_0.a;
    let var_6 = false || select(false, var_5.b, !(!var_5.b));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_0.a, func_4(Struct_1(1u, var_5.b && false), func_4(var_2.a, Struct_2(var_2.a, var_2.b, var_2.c), Struct_2(var_2.a, var_2.b, var_0.c)), Struct_2(Struct_1(4294967295u, false), func_1(vec3<i32>(-26690i, -22768i, -7913i)).b, vec4<bool>(false, false, false, true))), func_4(var_0.a, func_1(vec3<i32>(-20220i, 2147483647i, -18844i)), func_1(vec3<i32>(2147483647i, 2147483647i, -1i)))).b.x, 1258u, var_5.a);
}

