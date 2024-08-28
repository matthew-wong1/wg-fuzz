struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-8866i, arg_1), u_input.b, vec2<i32>(-2147483647i, u_input.a)) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), vec2<i32>(u_input.c, ~arg_1)) & vec2<i32>(firstTrailingBit(countOneBits(-22767i)), -1i), vec2<u32>(57496u, 1u << (1u % 32u)));
    let var_1 = vec3<i32>(~(-firstTrailingBit(max(2147483647i, var_0.a.x))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.a.x, arg_1), var_0.a.x, 0i), -14674i);
    let var_2 = _wgslsmith_sub_vec4_u32(~select(reverseBits(~vec4<u32>(var_0.b.x, 4294967295u, 82723u, 1u)), vec4<u32>(max(11274u, var_0.b.x), 18211u, var_0.b.x, var_0.b.x << (0u % 32u)), !vec4<bool>(arg_0, true, false, arg_0)), min(~vec4<u32>(~24418u, 4294967295u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, var_0.b.x), var_0.b)), ~vec4<u32>(_wgslsmith_clamp_u32(77622u, var_0.b.x, var_0.b.x), 1u, max(55019u, var_0.b.x), min(11702u, var_0.b.x))));
    return abs(abs(firstLeadingBit(firstLeadingBit(vec4<u32>(1u, var_0.b.x, 21703u, var_2.x)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_5(Struct_1(min(_wgslsmith_add_i32(u_input.c, u_input.b.x) ^ 1i, u_input.a), !arg_0.x || !any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))), u_input.c & u_input.a, Struct_1(u_input.c, !all(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))));
    var var_1 = Struct_2(var_0.c);
    var var_2 = vec3<bool>(arg_0.x, ~1i < (var_0.c.a & abs(var_0.c.a | u_input.c)), false);
    var var_3 = vec4<u32>(arg_1, _wgslsmith_dot_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_1, arg_1, arg_1, arg_1), vec4<u32>(47484u, 39626u, 6220u, arg_1) << (vec4<u32>(46010u, 1u, 46810u, arg_1) % vec4<u32>(32u)))), abs(abs(vec4<u32>(1u, arg_1, 29363u, arg_1))) & _wgslsmith_mod_vec4_u32(func_3(true, -7538i, 1045f), vec4<u32>(0u, arg_1, arg_1, arg_1) & vec4<u32>(arg_1, 36820u, arg_1, 34015u))), arg_1, 16165u);
    var var_4 = ~select(_wgslsmith_add_u32(0u, ~(~30250u)), var_3.x, var_1.a.b);
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: bool) -> vec4<bool> {
    var var_0 = arg_0.a;
    let var_1 = arg_1.x;
    let var_2 = arg_1;
    var_0 = arg_2.x;
    let var_3 = _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(-arg_2.x, -arg_1.x, 0i, ~813i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), firstTrailingBit(-vec4<i32>(1i, 2147483647i, u_input.a, 1i) >> (firstTrailingBit(~vec4<u32>(1u, 1u, 0u, 90624u)) % vec4<u32>(32u))));
    return !select(vec4<bool>(true, arg_3, arg_3, arg_0.b), vec4<bool>(true, any(select(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), vec4<bool>(true, arg_0.b, arg_0.b, arg_3), arg_0.b)), arg_0.b, any(!vec3<bool>(arg_3, arg_0.b, true))), all(!vec2<bool>(arg_3, arg_3)));
}

fn func_1() -> vec3<u32> {
    var var_0 = select(select(vec4<bool>(false, all(vec4<bool>(true, true, true, true)), true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))), vec4<bool>(true, any(vec4<bool>(false, false, false, true)), -2147483647i >= u_input.a, true), func_4(func_2(vec3<bool>(true, true, true), 6546u, vec3<f32>(1681f, -771f, 770f)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.b.x), vec3<i32>(u_input.c, u_input.b.x, u_input.a), vec3<i32>(u_input.c, 0i, u_input.a)), vec2<i32>(u_input.a, 2147483647i) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u)), any(vec3<bool>(false, false, true)))), true), vec4<bool>(true, true, true, true), select(vec4<bool>(56956u != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 102414u)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), any(vec3<bool>(false, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec4<bool>(_wgslsmith_div_u32(4294967295u, 14390u) < select(1u, 4294967295u, true), true, (u_input.c <= u_input.a) && any(vec4<bool>(false, false, false, false)), !func_4(Struct_1(u_input.c, false), vec3<i32>(-1i, u_input.b.x, u_input.a), vec2<i32>(0i, -1i), true).x), vec4<bool>(select(u_input.c, u_input.c, false) < -30618i, any(vec3<bool>(true, true, true)), true, true)));
    var_0 = select(!(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), !vec4<bool>(var_0.x, true, false, var_0.x))), !(!vec4<bool>(true, any(vec4<bool>(var_0.x, false, false, false)), true, true)), true);
    var_0 = select(vec4<bool>(all(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))), func_2(vec3<bool>(true, true, true), select(_wgslsmith_dot_vec2_u32(vec2<u32>(32858u, 0u), vec2<u32>(12905u, 35538u)), _wgslsmith_add_u32(26063u, 56887u), func_2(var_0.ywz, 6500u, vec3<f32>(-163f, 1057f, -693f)).b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-794f, 959f, 264f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-231f, -531f, -844f)))).b, false, var_0.x), vec4<bool>(var_0.x, true, true, !(!(var_0.x & true))), all(!func_4(Struct_1(-13020i, false), countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.a)), min(vec2<i32>(-2147483647i, u_input.b.x), u_input.b), 2147483647i < u_input.a).ww));
    var_0 = !vec4<bool>(false, true, func_2(vec3<bool>(true & var_0.x, var_0.x, all(vec3<bool>(false, var_0.x, var_0.x))), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1057f, 599f, 847f) + vec3<f32>(1000f, 1137f, -394f)))).b, ~(39906u << (1u % 32u)) > (max(72908u, 1609u) ^ func_3(false, u_input.a, -304f).x));
    let var_1 = -1i;
    return select(max(vec3<u32>(21101u, 67285u, ~abs(19749u)), func_3(true, 21265i, 1587f).yxw), ~vec3<u32>(~46232u, ~0u, 1u) >> (~(~vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), vec3<bool>(false, any(func_4(Struct_1(-1i, true), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.b.x, -1i), vec3<i32>(1i, -1i, -56619i), vec3<i32>(1i, 0i, 0i)), max(u_input.b, u_input.b), true)), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_mod_vec3_u32(firstLeadingBit(~vec3<u32>(7204u, 11414u, 4294967295u)), func_1()), ~vec3<u32>(1u, 1u, 1u), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u));
    var var_1 = select(func_4(Struct_1(-28323i, any(vec3<bool>(true, true, true))), vec3<i32>(u_input.a, -(u_input.c | u_input.b.x), u_input.b.x), u_input.b, false).zzw, !func_4(Struct_1(abs(u_input.c), true), vec3<i32>(reverseBits(-1i), 2147483647i & u_input.a, _wgslsmith_add_i32(-20475i, u_input.a)), _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.c, u_input.a), vec2<i32>(-20699i, u_input.a) << (vec2<u32>(var_0.x, 34376u) % vec2<u32>(32u))), func_2(vec3<bool>(false, true, false), var_0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-328f, 230f, -1000f))).b).xzw, select(vec3<bool>(any(vec2<bool>(true, true)), true, !func_4(Struct_1(u_input.b.x, false), vec3<i32>(1i, u_input.b.x, u_input.c), vec2<i32>(39344i, u_input.a), true).x), select(vec3<bool>(true, true, true), vec3<bool>(func_4(Struct_1(-2147483647i, false), vec3<i32>(u_input.c, u_input.b.x, u_input.a), vec2<i32>(-17317i, -33080i), true).x, true, true), true), true));
    var_1 = select(vec3<bool>(var_1.x, all(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x), var_1.x)), !all(vec4<bool>(var_1.x, var_1.x, var_1.x, true)) & all(var_1.yx)), !select(!vec3<bool>(true, var_1.x, true), !select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, true, var_1.x), true), func_2(vec3<bool>(false, var_1.x, false), func_3(true, 2147483647i, 1000f).x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-984f, -847f, 266f)))).b), vec3<bool>(false, true, false));
    var_1 = !func_4(func_2(vec3<bool>(func_2(vec3<bool>(false, var_1.x, var_1.x), 42547u, vec3<f32>(1000f, 1000f, 1000f)).b, all(vec2<bool>(var_1.x, false)), true), _wgslsmith_mod_u32(14736u, ~0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, 240f, 1596f)) + vec3<f32>(847f, 950f, -1590f))), vec3<i32>(u_input.a ^ _wgslsmith_sub_i32(49353i, 22892i), _wgslsmith_dot_vec4_i32(min(vec4<i32>(u_input.a, u_input.c, u_input.b.x, u_input.a), vec4<i32>(-14754i, -27696i, u_input.b.x, u_input.c)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-4311i, 0i, 10966i, u_input.a), vec4<i32>(1009i, u_input.b.x, u_input.b.x, 31305i), vec4<i32>(u_input.b.x, -1i, u_input.b.x, 20533i))), -44550i), u_input.b, false).yyw;
    var_1 = !vec3<bool>(var_1.x, true, var_1.x);
    var_1 = !select(!(!(!vec3<bool>(true, var_1.x, true))), !select(vec3<bool>(false, var_1.x, false), vec3<bool>(true, true, true), vec3<bool>(var_1.x, true, false)), ~(var_0.x >> (var_0.x % 32u)) > 23131u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, -abs(select(firstLeadingBit(u_input.b), u_input.b, var_1.zy)), -u_input.b.x);
}

