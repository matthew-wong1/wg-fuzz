struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> bool {
    var var_0 = Struct_2(~vec2<u32>(24238u, ~arg_1 & (1u | arg_1)), !select(!any(vec4<bool>(false, false, false, true)), u_input.b.x <= -24729i, true), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(-1005f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(336f, -464f)) + _wgslsmith_f_op_f32(trunc(315f)))), ~u_input.c, abs(vec3<u32>(firstLeadingBit(0u), reverseBits(u_input.a), u_input.a)), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, arg_1 <= 4294967295u, false, true))));
    var_0 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~4294967295u, ~var_0.c.c.x), (78678u >> (arg_1 % 32u)) << (27936u % 32u)), var_0.c.c.xx), u_input.b.x != firstTrailingBit(~arg_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-593f, var_0.c.a.x) - var_0.c.a), arg_0.x, var_0.c.c, vec4<bool>(any(vec2<bool>(false, true)), var_0.c.d.x, all(select(var_0.c.d, vec4<bool>(var_0.c.d.x, true, var_0.c.d.x, true), vec4<bool>(var_0.b, var_0.b, true, true))), var_0.c.d.x)));
    var var_1 = true;
    let var_2 = -1242f;
    let var_3 = Struct_2(countOneBits(reverseBits(vec2<u32>(firstLeadingBit(u_input.a), 0u))), any(vec4<bool>(!var_0.c.d.x, true, false, select(var_0.c.d.x, true, false))) == (all(vec4<bool>(var_0.c.d.x, var_0.b, var_0.b, var_0.b)) || ((1u ^ var_0.c.c.x) <= 27331u)), Struct_1(_wgslsmith_f_op_vec2_f32(round(var_0.c.a)), _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_0.x, -16381i, arg_0.x, -2147483647i) & firstLeadingBit(vec4<i32>(var_0.c.b, 4341i, var_0.c.b, 32703i)), select(-vec4<i32>(2147483647i, arg_0.x, u_input.c, -48062i), min(vec4<i32>(var_0.c.b, 1i, var_0.c.b, -31802i), vec4<i32>(0i, var_0.c.b, -2147483647i, var_0.c.b)), !var_0.c.d)), var_0.c.c, var_0.c.d));
    return var_0.b;
}

fn func_2() -> Struct_4 {
    return Struct_4(!(!vec2<bool>(func_3(u_input.b.yy, u_input.a), true)));
}

fn func_1() -> Struct_4 {
    let var_0 = vec2<bool>(true || all(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, select(true, true, false), all(vec4<bool>(true, true, true, false)))));
    var var_1 = ~(~_wgslsmith_add_u32(u_input.a, 1u));
    var var_2 = func_2();
    var var_3 = Struct_2(~(~vec2<u32>(~7981u, abs(u_input.a))), true, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1528f, 1342f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1344f))), select(u_input.a == u_input.a, all(vec2<bool>(var_2.a.x, var_0.x)), false))), -20904i, vec3<u32>(u_input.a, ~38129u, 1u), !(!select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(false, true, true, true), var_2.a.x))));
    var_3 = Struct_2(var_3.c.c.xx, 1458f >= var_3.c.a.x, var_3.c);
    return Struct_4(vec2<bool>(false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_div_vec3_u32(select(min(vec3<u32>(30772u, 52574u, 1u), vec3<u32>(u_input.a, 29527u, u_input.a)) << (vec3<u32>(12007u, 1u, 79043u) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(28729u), firstLeadingBit(18710u), _wgslsmith_sub_u32(4294967295u, u_input.a)), vec3<bool>(!var_0.a.x, true, true)), ~_wgslsmith_add_vec3_u32(vec3<u32>(46623u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 0u, 1u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 1u, 6508u))) << (select(vec3<u32>(~(~32233u), max(~306u, 0u), 1u | u_input.a), ~countOneBits(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<bool>(!(false | var_0.a.x), true | func_3(u_input.b.yx, u_input.a), all(!vec2<bool>(var_0.a.x, true)))) % vec3<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-133f, 725f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1669f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-223f, -684f)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-373f, -1098f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(158f, -1194f) * vec2<f32>(1767f, -857f))))))), _wgslsmith_clamp_i32(u_input.c, abs(u_input.c), -firstLeadingBit(u_input.b.x)), _wgslsmith_clamp_vec3_u32(max(~countOneBits(vec3<u32>(var_1.x, u_input.a, 45161u)), reverseBits(vec3<u32>(var_1.x, u_input.a, 4294967295u)) & vec3<u32>(u_input.a, var_1.x, 81640u)), ~(~vec3<u32>(4294967295u, 21325u, 4294967295u) ^ firstTrailingBit(vec3<u32>(1u, var_1.x, 51995u))), ~select(vec3<u32>(20125u, 1u, 64558u), vec3<u32>(0u, 18182u, 0u), u_input.c > -46715i)), vec4<bool>(true, false || !var_0.a.x, var_0.a.x, func_1().a.x));
    var var_3 = Struct_3(Struct_2(_wgslsmith_sub_vec2_u32(var_2.c.yz >> (var_2.c.yy % vec2<u32>(32u)), var_1.yz), true, Struct_1(var_2.a, 1i, var_2.c | vec3<u32>(1u, var_2.c.x, u_input.a), var_2.d)), var_2.b, u_input.b.xz, _wgslsmith_dot_vec4_u32(select(countOneBits(vec4<u32>(35539u, 0u, var_2.c.x, 52328u)), vec4<u32>(0u, u_input.a, var_2.c.x, 25562u) | vec4<u32>(21348u, 53746u, 0u, var_2.c.x), !vec4<bool>(var_2.d.x, var_0.a.x, var_2.d.x, var_2.d.x)), vec4<u32>(_wgslsmith_mod_u32(1u, u_input.a), ~var_1.x, ~0u, firstLeadingBit(5641u))) << (select(1u, ~0u, true) % 32u));
    let var_4 = select(var_2.d.ywy, select(vec3<bool>(any(vec2<bool>(true, true)), true, !var_2.d.x || !var_2.d.x), select(vec3<bool>(false | var_0.a.x, !var_0.a.x, true), !var_3.a.c.d.zxw, vec3<bool>(true || var_3.a.c.d.x, var_0.a.x, true)), var_3.a.c.d.zyz), var_2.d.x);
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(max(var_3.a.c.a.x, var_3.a.c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1810f, 777f, true)))))), _wgslsmith_f_op_f32(step(497f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(388f, -1416f))) - _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(var_2.a.x, 684f)))))));
    let var_6 = var_0;
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(var_2.a)), -firstLeadingBit(-59425i), ~vec3<u32>(~var_2.c.x, 1u, var_1.x << (22598u % 32u)) ^ ((_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.d, 4294967295u, 79617u), vec3<u32>(var_1.x, var_2.c.x, var_2.c.x), var_3.a.c.c) >> (firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, u_input.a)) % vec3<u32>(32u))) ^ vec3<u32>(countOneBits(u_input.a), 95134u, _wgslsmith_dot_vec2_u32(vec2<u32>(22864u, var_3.a.a.x), var_3.a.a))), select(select(vec4<bool>(var_0.a.x, var_0.a.x, all(var_6.a), any(var_4.zy)), var_3.a.c.d, vec4<bool>(false, true, false, true)), var_2.d, !vec4<bool>(var_6.a.x, var_4.x, true | var_2.d.x, 0u > var_2.c.x)));
    var_3 = Struct_3(var_3.a, 51646i, _wgslsmith_div_vec2_i32(abs(var_3.c), vec2<i32>(reverseBits(reverseBits(var_3.a.c.b)), -1i)), ~(~abs(_wgslsmith_clamp_u32(u_input.a, var_2.c.x, var_2.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, ~(~(u_input.b.x << (57433u % 32u))) ^ u_input.c, 4294967295u);
}

