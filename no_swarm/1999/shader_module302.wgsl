struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(37463u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(14045u, 1u, ~9455u, 1u), vec4<u32>(1u, abs(0u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 37829u), ~1u)) % 32u), vec2<bool>((any(vec3<bool>(true, false, true)) | all(vec2<bool>(false, false))) & any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(315f)) - _wgslsmith_f_op_f32(-539f - -1498f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1035f + 722f), _wgslsmith_f_op_f32(f32(-1f) * -292f)))) + _wgslsmith_f_op_f32(-1173f + -1462f)), abs(-_wgslsmith_mult_vec2_i32(u_input.b.xx, vec2<i32>(42138i, 2147483647i))));
    let var_1 = min(~_wgslsmith_add_vec4_u32(~(vec4<u32>(var_0.a, var_0.a, 7213u, var_0.a) & vec4<u32>(var_0.a, 0u, 4294967295u, 0u)), vec4<u32>(~48032u, var_0.a, 4294967295u, 21900u)), ~select(vec4<u32>(0u, 31u, 31628u, 0u), vec4<u32>(0u, 4294967295u, var_0.a, var_0.a) ^ vec4<u32>(var_0.a, 0u, 1u, 43767u), var_0.b.x) | (abs(~vec4<u32>(var_0.a, 4294967295u, 21680u, var_0.a)) | vec4<u32>(2320u, _wgslsmith_add_u32(var_0.a, var_0.a), _wgslsmith_mod_u32(4294967295u, 1u), var_0.a << (var_0.a % 32u))));
    let var_2 = 30137u;
    var var_3 = true;
    var_3 = var_0.b.x;
    return u_input.a.x;
}

fn func_2(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = 58050u;
    var var_1 = Struct_1(~select(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(59232u, 87384u), vec2<u32>(49099u, 1u)), max(108523u, 21485u)), _wgslsmith_add_u32(_wgslsmith_div_u32(32777u, 45227u), ~4294967295u), !(!arg_0.x)), !arg_0, -1000f, _wgslsmith_sub_vec2_i32(u_input.a | ~select(vec2<i32>(-42578i, -2147483647i), u_input.b.yz, vec2<bool>(false, arg_0.x)), countOneBits(vec2<i32>(countOneBits(-1i), func_3(Struct_2(u_input.b, u_input.c), Struct_2(u_input.b, vec3<i32>(u_input.b.x, u_input.a.x, -1i)))))));
    let var_2 = !all(!(!select(vec3<bool>(arg_0.x, false, true), vec3<bool>(true, var_1.b.x, arg_0.x), false)));
    var var_3 = vec4<bool>(true & !select(var_1.b.x, false, var_1.b.x), var_1.b.x, true && !select(any(vec3<bool>(var_1.b.x, var_1.b.x, false)), var_2 == false, any(var_1.b)), !all(select(!vec4<bool>(arg_0.x, arg_0.x, var_2, true), vec4<bool>(true, false, var_2, false), true)));
    var_1 = Struct_1(36274u, var_1.b, var_1.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, ~(-35799i)), vec2<i32>(var_1.d.x, var_1.d.x), _wgslsmith_add_vec2_i32(var_1.d >> (vec2<u32>(var_1.a, var_1.a) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(1i, -8515i), vec2<i32>(0i, u_input.a.x)))) >> (vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(4294967295u, 1u)), var_1.a) % vec2<u32>(32u)));
    return vec2<bool>(!any(!(!var_3.ww)), all(select(!(!vec3<bool>(var_2, var_3.x, false)), !(!var_3.xzz), var_3.zyx)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(~firstTrailingBit(1u), func_2(arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + arg_1.d.c)))), abs(arg_0.d));
    let var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(firstTrailingBit(24032u), reverseBits(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(90231u, arg_1.d.a)), ~vec2<u32>(4294967295u, arg_1.d.a)))), vec2<u32>(select(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.a), vec2<u32>(var_0.a, arg_1.d.a)), reverseBits(firstTrailingBit(4294967295u)), false), ~arg_1.d.a));
    var var_2 = u_input.c.x;
    var var_3 = _wgslsmith_sub_vec2_i32(u_input.c.xy, arg_0.d);
    let var_4 = arg_1;
    return Struct_3(_wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(var_4.d.d.x, -2147483647i, var_0.d.x, arg_0.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(var_3.x, 14573i, 14992i, 2147483647i), vec4<i32>(arg_1.a, arg_0.d.x, arg_0.d.x, 1i))) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.a, var_4.d.a, 86067u, arg_1.d.a), abs(vec4<u32>(63274u, var_0.a, arg_1.d.a, var_1.x))) % vec4<u32>(32u)), vec4<i32>(arg_1.a, var_4.a, -arg_0.d.x, ~(-2147483647i)) | -firstLeadingBit(vec4<i32>(var_0.d.x, var_4.a, u_input.b.x, arg_1.c.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-723f)))) * -1280f), Struct_2(_wgslsmith_div_vec3_i32(~vec3<i32>(var_4.c.b.x, -4831i, arg_0.d.x), ~_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.x, -60602i, var_0.d.x), u_input.c)), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 1i, arg_1.c.a.x)), select(_wgslsmith_mult_vec3_i32(arg_1.c.b, u_input.c), ~vec3<i32>(u_input.a.x, u_input.a.x, var_3.x), vec3<bool>(arg_0.b.x, false, arg_1.d.b.x)))), Struct_1(var_0.a, vec2<bool>(false, arg_1.d.b.x), _wgslsmith_f_op_f32(-var_4.d.c), _wgslsmith_mult_vec2_i32(vec2<i32>(-7100i, ~arg_1.a), ~vec2<i32>(var_4.d.d.x, -2147483647i))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = 2007u;
    let var_1 = arg_1.d;
    var var_2 = ~arg_1.d.a;
    var var_3 = vec4<u32>(~abs(1u), 15647u, var_1.a, 4294967295u);
    let var_4 = arg_2.b;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = select(!vec2<bool>(select(false, true, false) && true, true), !(!func_4(vec2<bool>(false, true), func_1(Struct_1(20475u, vec2<bool>(true, true), -625f, vec2<i32>(48953i, u_input.a.x)), Struct_3(u_input.c.x, -560f, Struct_2(vec3<i32>(-15404i, u_input.b.x, u_input.c.x), vec3<i32>(u_input.a.x, u_input.b.x, 1i)), Struct_1(41866u, vec2<bool>(false, true), 610f, u_input.c.xy))), Struct_3(u_input.c.x, 418f, Struct_2(vec3<i32>(u_input.a.x, -39315i, u_input.a.x), vec3<i32>(u_input.c.x, u_input.b.x, -1i)), Struct_1(var_0, vec2<bool>(true, false), -858f, u_input.c.xx)), func_1(Struct_1(4294967295u, vec2<bool>(false, true), -1000f, u_input.a), Struct_3(-2147483647i, -298f, Struct_2(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.a.x, 33103i, u_input.b.x)), Struct_1(7018u, vec2<bool>(true, true), 967f, u_input.c.zz))).d)), !(!any(vec3<bool>(true, true, false)) == !any(vec3<bool>(true, false, false))));
    var var_2 = !func_1(func_1(Struct_1(~1292u, func_4(vec2<bool>(var_1.x, false), Struct_3(-2147483647i, -1088f, Struct_2(vec3<i32>(u_input.a.x, 45569i, 2147483647i), u_input.b), Struct_1(var_0, vec2<bool>(true, var_1.x), 430f, u_input.a)), Struct_3(u_input.a.x, 569f, Struct_2(u_input.b, vec3<i32>(-6915i, -22516i, u_input.b.x)), Struct_1(var_0, vec2<bool>(var_1.x, var_1.x), 1368f, u_input.b.xx)), Struct_1(0u, vec2<bool>(true, var_1.x), -238f, vec2<i32>(-14788i, u_input.a.x))), -1954f, ~vec2<i32>(31114i, -1i)), Struct_3(min(u_input.b.x, u_input.c.x), _wgslsmith_f_op_f32(-142f * 475f), Struct_2(u_input.c, vec3<i32>(u_input.b.x, -52553i, u_input.a.x)), Struct_1(var_0, vec2<bool>(var_1.x, true), 709f, u_input.a))).d, func_1(Struct_1(firstTrailingBit(var_0), !vec2<bool>(var_1.x, false), func_1(Struct_1(var_0, vec2<bool>(var_1.x, var_1.x), 1060f, vec2<i32>(u_input.a.x, 88343i)), Struct_3(u_input.c.x, -534f, Struct_2(vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x), u_input.c), Struct_1(41514u, vec2<bool>(true, false), -1151f, vec2<i32>(1i, 27157i)))).d.c, countOneBits(vec2<i32>(-2147483647i, u_input.c.x))), Struct_3(u_input.b.x, func_1(Struct_1(0u, vec2<bool>(false, true), 1000f, u_input.a), Struct_3(u_input.c.x, -140f, Struct_2(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.b), Struct_1(var_0, vec2<bool>(false, var_1.x), -1101f, vec2<i32>(2147483647i, u_input.a.x)))).b, Struct_2(vec3<i32>(-2147483647i, u_input.a.x, 2147483647i), u_input.b), func_1(Struct_1(var_0, vec2<bool>(var_1.x, true), 524f, u_input.a), Struct_3(u_input.c.x, 1804f, Struct_2(vec3<i32>(-473i, -2147483647i, 1i), u_input.c), Struct_1(var_0, vec2<bool>(var_1.x, var_1.x), -648f, vec2<i32>(2147483647i, u_input.b.x)))).d))).d.b;
    let var_3 = -17347i;
    var_2 = !func_4(func_4(select(func_1(Struct_1(var_0, vec2<bool>(true, false), -741f, vec2<i32>(-2147483647i, var_3)), Struct_3(0i, 378f, Struct_2(vec3<i32>(5391i, 1i, 0i), vec3<i32>(u_input.a.x, 1i, -2147483647i)), Struct_1(var_0, vec2<bool>(var_2.x, var_1.x), -822f, u_input.c.zx))).d.b, func_4(vec2<bool>(var_1.x, var_2.x), Struct_3(u_input.a.x, 305f, Struct_2(vec3<i32>(-15972i, var_3, -49244i), vec3<i32>(1i, u_input.c.x, var_3)), Struct_1(1u, vec2<bool>(false, var_2.x), -109f, u_input.a)), Struct_3(7174i, -510f, Struct_2(vec3<i32>(u_input.a.x, var_3, var_3), vec3<i32>(2147483647i, 6407i, var_3)), Struct_1(16738u, vec2<bool>(var_1.x, false), 578f, vec2<i32>(0i, -1i))), Struct_1(0u, vec2<bool>(true, var_1.x), -1000f, u_input.b.yy)), var_2.x), func_1(func_1(Struct_1(25252u, vec2<bool>(true, var_1.x), 618f, u_input.a), Struct_3(var_3, -411f, Struct_2(vec3<i32>(-36115i, -2147483647i, -1i), u_input.c), Struct_1(var_0, vec2<bool>(false, var_1.x), 592f, u_input.a))).d, Struct_3(u_input.b.x, -807f, Struct_2(vec3<i32>(962i, 2147483647i, var_3), vec3<i32>(-17213i, -12085i, u_input.b.x)), Struct_1(var_0, vec2<bool>(var_1.x, true), 358f, u_input.b.yz))), Struct_3(u_input.a.x, 1229f, Struct_2(vec3<i32>(1i, 1i, u_input.c.x), u_input.c), func_1(Struct_1(var_0, vec2<bool>(var_1.x, var_1.x), -1043f, u_input.c.yy), Struct_3(14266i, -133f, Struct_2(u_input.b, u_input.c), Struct_1(var_0, vec2<bool>(var_1.x, var_1.x), 429f, vec2<i32>(u_input.c.x, u_input.a.x)))).d), Struct_1(~var_0, vec2<bool>(var_1.x, var_2.x), -1446f, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -1608i), u_input.a))), Struct_3(i32(-1i) * -var_3, _wgslsmith_f_op_f32(sign(-405f)), func_1(Struct_1(37648u, vec2<bool>(false, true), 712f, u_input.a), func_1(Struct_1(48893u, vec2<bool>(var_2.x, false), -2129f, u_input.c.zx), Struct_3(var_3, 1582f, Struct_2(vec3<i32>(-13882i, 0i, var_3), u_input.b), Struct_1(var_0, vec2<bool>(false, false), -313f, vec2<i32>(var_3, -4532i))))).c, func_1(func_1(Struct_1(var_0, vec2<bool>(var_1.x, true), 452f, vec2<i32>(1i, var_3)), Struct_3(var_3, 589f, Struct_2(u_input.c, u_input.b), Struct_1(var_0, vec2<bool>(var_1.x, true), -446f, vec2<i32>(2147483647i, var_3)))).d, func_1(Struct_1(var_0, vec2<bool>(var_1.x, var_1.x), -1133f, vec2<i32>(u_input.c.x, u_input.a.x)), Struct_3(u_input.b.x, -1000f, Struct_2(u_input.b, vec3<i32>(13190i, u_input.c.x, u_input.c.x)), Struct_1(var_0, vec2<bool>(true, var_1.x), -1659f, vec2<i32>(u_input.a.x, var_3))))).d), func_1(func_1(func_1(Struct_1(var_0, vec2<bool>(true, true), 746f, u_input.c.xx), Struct_3(2147483647i, 656f, Struct_2(u_input.c, vec3<i32>(var_3, u_input.c.x, -45460i)), Struct_1(var_0, vec2<bool>(false, var_2.x), 1568f, u_input.b.yy))).d, func_1(Struct_1(var_0, vec2<bool>(true, var_2.x), 1161f, vec2<i32>(31243i, 40994i)), Struct_3(var_3, 745f, Struct_2(vec3<i32>(12587i, u_input.c.x, var_3), vec3<i32>(0i, u_input.c.x, u_input.b.x)), Struct_1(11826u, vec2<bool>(false, true), 2193f, vec2<i32>(u_input.c.x, 1i))))).d, Struct_3(u_input.b.x, _wgslsmith_f_op_f32(floor(-1282f)), Struct_2(u_input.b, u_input.b), Struct_1(4294967295u, vec2<bool>(true, var_2.x), 1031f, u_input.a))), func_1(func_1(Struct_1(var_0, vec2<bool>(false, var_1.x), -456f, u_input.c.xx), Struct_3(var_3, 995f, Struct_2(vec3<i32>(var_3, -13609i, -7035i), u_input.b), Struct_1(4294967295u, vec2<bool>(true, var_1.x), -591f, vec2<i32>(var_3, -2147483647i)))).d, Struct_3(u_input.a.x, func_1(Struct_1(var_0, vec2<bool>(var_1.x, true), -1071f, vec2<i32>(-2147483647i, -1i)), Struct_3(u_input.c.x, 476f, Struct_2(vec3<i32>(var_3, var_3, var_3), vec3<i32>(-45219i, var_3, 1i)), Struct_1(var_0, vec2<bool>(false, var_1.x), 1216f, u_input.a))).d.c, func_1(Struct_1(var_0, vec2<bool>(var_1.x, true), -166f, vec2<i32>(var_3, -1336i)), Struct_3(0i, -779f, Struct_2(u_input.b, u_input.c), Struct_1(28319u, vec2<bool>(var_2.x, var_1.x), 1000f, vec2<i32>(24957i, 20432i)))).c, func_1(Struct_1(4294967295u, vec2<bool>(var_1.x, false), 488f, u_input.c.yz), Struct_3(var_3, 1374f, Struct_2(u_input.b, vec3<i32>(2147483647i, var_3, 2147483647i)), Struct_1(0u, vec2<bool>(var_2.x, false), -482f, vec2<i32>(u_input.c.x, var_3)))).d)).d);
    let x = u_input.a;
    s_output = StorageBuffer((~min(vec4<u32>(4294967295u, var_0, var_0, 0u), vec4<u32>(4294967295u, var_0, 42890u, 1u)) << (~vec4<u32>(var_0, var_0, 17274u, 0u) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_u32(max(vec4<u32>(53385u, 1u, 14998u, 24822u), vec4<u32>(48457u, var_0, var_0, 4294967295u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, var_0, var_0, var_0), vec4<u32>(0u, 3601u, var_0, 11529u), vec4<u32>(var_0, 4294967295u, 69603u, var_0)) % vec4<u32>(32u)), countOneBits(~vec4<u32>(var_0, 36057u, 17477u, 1u))));
}

