struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -136f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_3(arg_0, !vec2<bool>(false, arg_0.b.x), -3411f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1034f))))) == -669f, _wgslsmith_dot_vec3_i32(reverseBits(select(vec3<i32>(-2147483647i, -1i, -26596i), u_input.a, select(arg_0.b, vec3<bool>(arg_0.b.x, true, arg_0.a), false))), ~select(~vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(1u, 42740u, 13490u) % vec3<u32>(32u)), true)));
    let var_1 = 16502u;
    var_0 = Struct_3(Struct_1(var_0.a.a && !arg_0.b.x, vec3<bool>(all(!vec4<bool>(var_0.a.b.x, true, false, false)), !(false || var_0.a.b.x), 21062i > _wgslsmith_dot_vec3_i32(vec3<i32>(34446i, u_input.a.x, -63879i), u_input.a)), firstLeadingBit(54718u), 92618u), vec2<bool>(arg_0.b.x, all(select(vec4<bool>(false, arg_0.a, false, arg_0.a), select(vec4<bool>(var_0.b.x, true, false, false), vec4<bool>(arg_0.a, var_0.a.a, true, true), vec4<bool>(arg_0.a, var_0.d, true, true)), all(vec4<bool>(true, var_0.d, false, arg_0.b.x))))), var_0.c, all(!vec4<bool>(true, arg_0.a, arg_0.a, true)) | ((_wgslsmith_clamp_i32(6066i, 6380i, 1i) >> (10604u % 32u)) >= countOneBits(var_0.e)), u_input.a.x);
    var var_2 = 45219u;
    let var_3 = Struct_2(arg_0.b.x, Struct_1(-_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) > abs(~(-11824i)), !(!(!vec3<bool>(arg_0.a, false, false))), abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 2240u, 1u), vec3<u32>(arg_0.d, 0u, var_1))), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 54853u, 24114u, var_0.a.c), vec4<u32>(var_1, 1u, var_0.a.c, var_1)), _wgslsmith_mult_u32(var_0.a.c, u_input.b.x))), select(vec3<bool>(all(!var_0.a.b), !(!var_0.d), !var_0.a.b.x), !(!(!vec3<bool>(false, var_0.a.a, true))), !var_0.a.b), vec4<bool>(var_0.a.a, true, any(select(!arg_0.b, vec3<bool>(false, false, var_0.d), select(arg_0.b, var_0.a.b, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, 379f, arg_0.b.x))) < var_0.c));
    return ~var_3.b.c;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(arg_2.d, _wgslsmith_add_u32(u_input.b.x, func_3(arg_2))), arg_0);
    global0 = _wgslsmith_f_op_f32(383f + arg_1.b);
    let var_1 = max(abs(u_input.b) | (_wgslsmith_sub_vec2_u32(u_input.b, _wgslsmith_add_vec2_u32(u_input.b, u_input.b)) & vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(35662u, 25398u, arg_3.d), vec3<u32>(33584u, 35040u, 29751u)), 1u)), reverseBits(select(~abs(u_input.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 51035u), select(vec2<u32>(arg_2.d, var_0.x), u_input.b, arg_3.b.yz), u_input.b), any(vec3<bool>(false, arg_3.b.x, false)) && true)));
    let var_2 = ~1u;
    var var_3 = Struct_3(arg_2, vec2<bool>(false, !(~u_input.a.x < u_input.a.x)), -478f, any(!select(arg_1.d, select(vec3<bool>(false, true, arg_1.c.x), vec3<bool>(true, false, false), arg_1.d), arg_1.d)), ~12747i);
    return _wgslsmith_div_f32(1f, _wgslsmith_div_f32(-681f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + 250f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-733f - arg_1.a), 1f))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(func_4(firstTrailingBit(~func_3(Struct_1(false, vec3<bool>(false, true, true), 74283u, 0u))), Struct_4(581f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(415f, -332f)))), vec4<bool>(any(vec2<bool>(true, true)), !all(vec4<bool>(true, false, false, false)), ~u_input.a.x != u_input.a.x, true), select(vec3<bool>(true, u_input.a.x >= 0i, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))))), Struct_1(all(vec2<bool>(true, true)), vec3<bool>(any(vec3<bool>(true, true, true)), !all(vec4<bool>(false, false, false, true)), true), _wgslsmith_clamp_u32(4294967295u, u_input.c, ~func_3(Struct_1(false, vec3<bool>(true, true, false), arg_0.x, 0u))), u_input.b.x), Struct_1(any(vec4<bool>(true, true, false, true)), vec3<bool>(select(false, true, false), true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)))), 0u, u_input.b.x)));
    let var_0 = Struct_1(!(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))) && true), !select(vec3<bool>(true, all(vec3<bool>(true, false, true)), any(vec2<bool>(false, false))), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(any(vec2<bool>(true, true)), false, all(vec3<bool>(true, true, true)))), min(49208u, 4294967295u), _wgslsmith_dot_vec2_u32(~select(~vec2<u32>(1u, u_input.b.x), select(vec2<u32>(1u, arg_0.x), arg_0.yy, vec2<bool>(false, true)), vec2<bool>(true, true)), ~min(~vec2<u32>(u_input.b.x, 57996u), ~u_input.b)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1427f)), 2059f), 1471f))), 1000f, !(!vec4<bool>(!var_0.a, var_0.a, u_input.a.x < u_input.a.x, true)), vec3<bool>(!((false || var_0.a) || (var_0.a & var_0.b.x)), var_0.a, true));
    var var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~15243u, 19593u, 1u, 8252u), countOneBits(vec4<u32>(0u, u_input.b.x, 5546u, 29948u) | vec4<u32>(62926u, arg_0.x, arg_0.x, u_input.c))) >> (vec4<u32>(4294967295u, ~abs(var_0.d), abs(abs(0u)), 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, var_0.d, u_input.c, var_0.d), vec4<u32>(12250u, 65928u, 1u, u_input.c)), ~vec4<u32>(59222u, 8587u, var_0.c, 1u)), firstLeadingBit(abs(select(vec4<u32>(var_0.c, 69998u, 86218u, 64444u), vec4<u32>(arg_0.x, var_0.d, 4294967295u, var_0.d), var_0.b.x)))));
    var var_3 = var_0.b.x;
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -474f), -1000f, var_1.c, select(vec3<bool>((var_0.d >= u_input.b.x) != true, true, any(select(var_0.b.yy, var_1.d.xz, var_0.b.x))), select(var_0.b, select(vec3<bool>(var_1.c.x, var_1.c.x, var_1.d.x), vec3<bool>(var_0.a, var_1.d.x, var_0.a), all(var_1.d)), var_0.b), vec3<bool>(true, var_1.c.x | false, true)));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: bool) -> u32 {
    var var_0 = Struct_1(select(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(267f + arg_2.c)) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.c)), _wgslsmith_f_op_f32(-arg_0.c))), arg_3), arg_0.a.b, firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(25292u, ~arg_0.a.d), firstLeadingBit(arg_2.a.c))), _wgslsmith_mult_u32(~(~4294967295u), _wgslsmith_dot_vec2_u32(abs(u_input.b), select(vec2<u32>(u_input.c, 72018u), u_input.b, arg_0.b))) | 82840u);
    var var_1 = arg_2.c;
    global0 = _wgslsmith_f_op_f32(-arg_2.c);
    let var_2 = func_2(~(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.c, var_0.c, arg_0.a.c), vec3<u32>(0u, 1u, 64996u))) << (~(~(vec3<u32>(arg_2.a.d, 124467u, arg_2.a.c) ^ vec3<u32>(arg_0.a.c, arg_2.a.c, arg_0.a.d))) % vec3<u32>(32u)));
    let var_3 = -1391f;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(u_input.c, 71880u) ^ (u_input.c << (4294967295u % 32u))) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u | func_1(Struct_3(Struct_1(true, vec3<bool>(false, false, true), 27221u, 4294967295u), vec2<bool>(false, false), 1080f, true, u_input.a.x), vec4<i32>(u_input.a.x, 1i, u_input.a.x, -1i), Struct_3(Struct_1(false, vec3<bool>(true, false, false), u_input.c, u_input.c), vec2<bool>(false, true), -775f, true, u_input.a.x), false)), vec3<u32>(~(~0u), 4294967295u, u_input.b.x));
    let var_1 = Struct_2(u_input.c == func_3(Struct_1(true, vec3<bool>(true, true, true), select(u_input.b.x, 4294967295u, false), 1u)), Struct_1(false, !(!func_2(vec3<u32>(u_input.b.x, u_input.c, u_input.c)).d), u_input.b.x, u_input.b.x | 0u), select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), vec3<bool>(false, any(vec3<bool>(false, true, false)), all(vec2<bool>(true, false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), !vec4<bool>(true && select(false, true, true), false, true, u_input.b.x < u_input.b.x));
    let var_2 = Struct_3(Struct_1(var_1.b.b.x, select(func_2(vec3<u32>(var_1.b.d, 21564u, var_1.b.d)).d, var_1.d.xxz, func_2(select(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.b.x, 0u, u_input.b.x), var_1.a)).c.yzw), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c, 4294967295u) << (~18787u % 32u), 1u), var_1.b.c), func_2(~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(166527u, 0u, var_1.b.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.c, 65321u), vec3<u32>(u_input.b.x, u_input.c, 4294967295u)))).c.xx, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(261f)))), !(!var_1.c.x), _wgslsmith_add_i32(countOneBits(-(0i | u_input.a.x)), -abs(1i) & _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, u_input.a.x), ~u_input.a.x)));
    let var_3 = Struct_3(var_2.a, func_2(firstTrailingBit(firstTrailingBit(~vec3<u32>(u_input.c, 1u, var_2.a.c)))).c.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f))) + -2110f), true, ~53384i);
    global0 = var_2.c;
    var_0 = var_3.a.c;
    var var_4 = (reverseBits(u_input.c) >= (4294967295u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(14690u, var_3.a.c), u_input.b) % 32u))) & any(var_2.b);
    var var_5 = _wgslsmith_f_op_f32(-var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.c))) * var_2.c) * var_3.c));
}

