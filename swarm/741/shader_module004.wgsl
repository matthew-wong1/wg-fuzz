struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = vec3<i32>(21372i, _wgslsmith_sub_i32(abs(countOneBits(_wgslsmith_clamp_i32(18615i, 1i, -2147483647i))), -_wgslsmith_add_i32(u_input.a, -26309i >> (arg_0 % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(-56819i, firstTrailingBit(_wgslsmith_mod_i32(u_input.a, u_input.a))), firstTrailingBit(vec2<i32>(u_input.a ^ u_input.a, ~u_input.a))));
    var_0 = firstTrailingBit(~abs(countOneBits(vec3<i32>(var_0.x, var_0.x, var_0.x)) ^ (vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, -1i, -1i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-773f)) - -660f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-420f, 206f)))) * 1000f);
    var_1 = _wgslsmith_f_op_f32(336f + 716f);
    var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(1i, 2147483647i, 13639i), vec3<i32>(~u_input.a, i32(-1i) * -1i, _wgslsmith_mod_i32(2147483647i, -2147483647i))) >> (_wgslsmith_clamp_u32(u_input.c, max(1u, u_input.b.x), ~reverseBits(arg_0)) % 32u), u_input.a >> ((~u_input.b.x >> ((_wgslsmith_sub_u32(u_input.b.x, 4294967295u) ^ ~arg_0) % 32u)) % 32u), min(var_0.x & 2147483647i, ~max(-14788i, u_input.a)) & u_input.a);
    return _wgslsmith_mod_i32(20537i, abs(_wgslsmith_mod_i32(-27172i, _wgslsmith_clamp_i32(u_input.a, var_0.x, var_0.x) << (abs(4294967295u) % 32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec2<bool> {
    return select(vec2<bool>(true, arg_1.a), select(select(!select(vec2<bool>(false, true), vec2<bool>(true, arg_1.a), vec2<bool>(true, arg_1.a)), vec2<bool>(arg_1.a, arg_1.a), arg_1.a), vec2<bool>(true, u_input.b.x >= firstLeadingBit(114348u)), select(1i == u_input.a, false, true)), !select(!vec2<bool>(arg_1.a, arg_1.a), select(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, false), vec2<bool>(true, arg_1.a)), !vec2<bool>(arg_1.a, false), true), true && arg_1.a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(!vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -286f) < _wgslsmith_f_op_f32(select(-746f, -937f, arg_0.a)), true), func_4(vec4<i32>(-28608i, -func_3(u_input.b.x, arg_2), ~(-2458i | u_input.a), -(u_input.a ^ u_input.a)), arg_0), arg_0.a);
    let var_1 = arg_0;
    let var_2 = false;
    var var_3 = arg_2;
    let var_4 = arg_0;
    return Struct_1(arg_1.a);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(any(select(!(!vec4<bool>(false, true, arg_1.a, arg_1.a)), vec4<bool>(true, !arg_1.a, arg_1.a & arg_1.a, select(false, arg_1.a, arg_1.a)), !arg_1.a)));
    var var_1 = Struct_1(_wgslsmith_clamp_i32(~(-19385i), func_3(0u, Struct_1(true)), -1i) != ~reverseBits(u_input.a));
    var_1 = Struct_1(!all(!(!vec4<bool>(true, false, false, var_0.a))));
    var_1 = Struct_1(false);
    var_1 = arg_1;
    return Struct_1(any(!(!(!vec3<bool>(var_0.a, false, true)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = ~(-(~(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    var var_1 = func_2(func_2(func_2(func_2(arg_2, arg_2, Struct_1(arg_2.a), func_2(arg_2, arg_0, arg_0, Struct_1(arg_2.a))), arg_2, arg_0, func_5(vec4<u32>(arg_1.x, 5913u, 17173u, u_input.b.x), Struct_1(true))), Struct_1(func_5(vec4<u32>(18168u, 3976u, u_input.c, 0u), Struct_1(true)).a && true), func_2(Struct_1(false & arg_2.a), Struct_1(any(vec4<bool>(true, arg_2.a, arg_0.a, true))), Struct_1(true), arg_2), Struct_1(all(select(vec4<bool>(true, false, arg_0.a, true), vec4<bool>(arg_3, arg_2.a, false, arg_3), arg_3)))), Struct_1(true), func_2(Struct_1(func_2(func_5(vec4<u32>(0u, arg_1.x, 27921u, 1u), arg_2), func_5(u_input.b, Struct_1(false)), arg_0, Struct_1(false)).a), func_2(arg_2, func_2(arg_0, func_2(Struct_1(arg_3), arg_0, Struct_1(arg_3), Struct_1(false)), func_2(arg_2, Struct_1(false), Struct_1(false), arg_0), Struct_1(arg_0.a)), Struct_1(select(false, false, arg_3)), arg_0), func_2(Struct_1(true), Struct_1(any(vec2<bool>(arg_2.a, arg_2.a))), Struct_1(arg_3 && arg_2.a), arg_0), arg_0), func_5(u_input.b, Struct_1(true)));
    var_1 = Struct_1(any(select(select(vec2<bool>(true, false), vec2<bool>(arg_3, false), vec2<bool>(true, arg_3)), select(vec2<bool>(arg_3, false), vec2<bool>(true, arg_3), vec2<bool>(false, false)), !vec2<bool>(var_1.a, false))) && ((!arg_3 | func_4(vec4<i32>(var_0.x, 0i, var_0.x, u_input.a), arg_2).x) | false));
    var_1 = func_5(reverseBits(~(~u_input.b)), arg_2);
    var var_2 = Struct_1(true);
    return _wgslsmith_f_op_f32(-1f);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(u_input.a, -2147483647i) >> (4106u % 32u), i32(-1i) * -6727i);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(u_input.b, func_2(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false))), u_input.b.zwy, func_2(func_5(u_input.b, Struct_1(true)), Struct_1(false), Struct_1(true), Struct_1(false)), all(vec3<bool>(false, true, true))))));
    var var_3 = Struct_1(u_input.c > (_wgslsmith_mod_u32(reverseBits(4294967295u), 1u) & arg_0));
    var_3 = func_5(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.b.x, firstTrailingBit(50466u), arg_0), u_input.b), func_2(func_2(func_2(func_2(Struct_1(var_3.a), Struct_1(true), Struct_1(var_3.a), Struct_1(var_3.a)), func_5(u_input.b, Struct_1(var_3.a)), Struct_1(true), func_2(Struct_1(false), Struct_1(true), Struct_1(var_3.a), Struct_1(var_3.a))), func_2(func_5(u_input.b, Struct_1(false)), func_2(Struct_1(true), Struct_1(true), Struct_1(var_3.a), Struct_1(var_3.a)), func_2(Struct_1(false), Struct_1(false), Struct_1(var_3.a), Struct_1(true)), func_5(vec4<u32>(arg_0, u_input.b.x, 11379u, 0u), Struct_1(var_3.a))), Struct_1(var_3.a & false), Struct_1(true)), Struct_1(false), Struct_1(false | var_3.a), func_5(~(vec4<u32>(arg_0, arg_0, 1u, 4113u) | u_input.b), func_5(u_input.b, Struct_1(var_3.a)))));
    return Struct_1(any(!(!select(vec3<bool>(false, var_3.a, var_3.a), vec3<bool>(false, false, true), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b ^ vec4<u32>(u_input.b.x, u_input.c, 12838u, 41802u), ~vec4<u32>(0u, 22134u, 52248u, 68651u)), abs(u_input.b))));
    var_0 = Struct_1(func_5(~(~(~u_input.b)), func_1(u_input.b.x)).a);
    var var_1 = select(vec4<bool>(!(!(1u != u_input.c)), any(vec2<bool>(true, true)), ~u_input.b.x <= u_input.c, var_0.a), vec4<bool>(any(select(select(vec4<bool>(var_0.a, false, false, var_0.a), vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(var_0.a, true, var_0.a, false)), vec4<bool>(true, true, true, true), var_0.a)), func_4(vec4<i32>(~(-30373i), i32(-1i) * -1i, -2147483647i, 15620i & u_input.a), Struct_1(var_0.a || var_0.a)).x, var_0.a, all(vec3<bool>(!var_0.a, func_2(Struct_1(false), Struct_1(true), Struct_1(var_0.a), Struct_1(true)).a, false))), false);
    var var_2 = func_5((max(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), firstTrailingBit(u_input.b)) >> (~(vec4<u32>(83652u, 52315u, u_input.b.x, u_input.c) & u_input.b) % vec4<u32>(32u))) & vec4<u32>(~u_input.b.x >> (_wgslsmith_mult_u32(u_input.c, u_input.c) % 32u), ~1u ^ u_input.b.x, firstLeadingBit(countOneBits(u_input.c)), u_input.c), func_5(_wgslsmith_add_vec4_u32(vec4<u32>(24877u, 1u, u_input.b.x | u_input.c, select(u_input.c, u_input.c, var_0.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, u_input.b.x, u_input.c), vec4<u32>(0u, u_input.c, u_input.b.x, 36585u))), Struct_1(var_1.x)));
    var var_3 = !(!select(var_1.wx, vec2<bool>(true, any(vec2<bool>(var_2.a, var_2.a))), func_4(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, u_input.a)), func_2(Struct_1(var_0.a), Struct_1(var_0.a), Struct_1(var_2.a), Struct_1(var_1.x)))));
    var_3 = func_4(vec4<i32>(u_input.a, -(~(u_input.a >> (2015u % 32u))), u_input.a, -max(u_input.a ^ 2147483647i, 2147483647i & u_input.a)), func_5(vec4<u32>(39610u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 1u, 0u), vec4<u32>(u_input.c, u_input.c, u_input.b.x, 1652u)) >> (~u_input.b.x % 32u), 0u, 22083u), func_1(22741u)));
    var_2 = func_1(reverseBits((1u >> (~u_input.c % 32u)) << (abs(~u_input.c) % 32u)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-444f, 272f))))) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(765f * _wgslsmith_f_op_f32(round(-552f))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(0u, func_2(func_1(u_input.b.x), Struct_1(u_input.a <= 48926i), Struct_1(true), var_4)), u_input.a, 14587u);
}

