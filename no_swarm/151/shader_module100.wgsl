struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(414f)))), -1459f)))) * -502f);
    let var_1 = Struct_1(false, ~_wgslsmith_sub_vec2_u32(firstTrailingBit(select(vec2<u32>(11554u, u_input.a), vec2<u32>(54977u, 6652u), vec2<bool>(false, false))), countOneBits(vec2<u32>(u_input.a, 1u)) << (~vec2<u32>(37814u, u_input.a) % vec2<u32>(32u))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(386f + -1150f))))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1099f + 2263f), _wgslsmith_f_op_f32(f32(-1f) * -2089f))))) + _wgslsmith_f_op_f32(-453f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-316f))))), 1000f, true & all(select(select(vec4<bool>(true, var_1.a, var_1.a, false), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), false), !vec4<bool>(var_1.a, var_1.a, true, var_1.a), !vec4<bool>(true, var_1.a, true, false)))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(943f)))) - 1455f);
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3, 1f, _wgslsmith_f_op_f32(var_3 + var_3)), vec3<f32>(var_3, -1000f, _wgslsmith_f_op_f32(min(var_3, 1423f)))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-959f, -822f, 304f) - vec3<f32>(1000f, -1000f, 253f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-828f, -1116f, 620f) - vec3<f32>(1465f, -1000f, -856f))))))) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1848f, -263f))))), -1567f, -680f));
    var var_1 = vec3<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(24789u, arg_1.b.x), vec2<u32>(arg_0.b.x, arg_1.b.x)), 0u, arg_0.b.x), ~(~vec3<u32>(24985u, 4294967295u, 0u)))), 36142u, u_input.a);
    let var_2 = select(~vec4<u32>(_wgslsmith_add_u32(arg_0.b.x, ~1u), countOneBits(~1u), arg_1.b.x, 1u << ((arg_0.b.x | 4294967295u) % 32u)), min(vec4<u32>(reverseBits(~var_1.x), ~abs(arg_0.b.x), firstLeadingBit(30062u), 4294967295u), vec4<u32>(~_wgslsmith_sub_u32(1u, arg_0.b.x), firstLeadingBit(u_input.a), u_input.a & firstLeadingBit(1u), 0u)), vec4<bool>(arg_2.x, true, false, !(!arg_1.a)));
    var_1 = vec3<u32>(var_1.x | reverseBits(firstTrailingBit(var_2.x)), countOneBits(var_2.x), 0u);
    var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(arg_1.b.x, var_2.x), 1u, ~arg_0.b.x | 4294967295u) | _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(var_2.yxz, vec3<u32>(1139u, u_input.a, 1u)), var_2.wxz), vec3<u32>(var_1.x, 1u, abs(var_1.x)));
    return abs(vec4<u32>(reverseBits(~max(129216u, 63825u)), 52006u, var_2.x, _wgslsmith_div_u32(~(~arg_0.b.x), _wgslsmith_clamp_u32(u_input.a, ~13957u, 53340u))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<i32> {
    let var_0 = Struct_1(arg_2.a, max(vec2<u32>(_wgslsmith_sub_u32(87830u, 1u), _wgslsmith_mult_u32(u_input.a, u_input.a)) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 96412u), vec2<u32>(u_input.a, arg_3.x)) % vec2<u32>(32u)), arg_3.zy));
    var var_1 = arg_2.b.x;
    var_1 = 4294967295u << (firstLeadingBit(arg_2.b.x) % 32u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1208f + _wgslsmith_f_op_f32(floor(arg_1))) - arg_1))) - -1202f);
    let var_3 = Struct_1(!var_0.a, ~vec2<u32>(reverseBits(~14819u), ~arg_3.x));
    return reverseBits(firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-50853i, 1i, arg_0, -2147483647i), vec4<i32>(arg_0, arg_0, arg_0, arg_0)))));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> u32 {
    let var_0 = func_4(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-48260i, -36297i, 1i), max(vec3<i32>(0i, 0i, 24837i), vec3<i32>(-2147483647i, -6420i, -25506i)))) & 1i, -140f, Struct_1(false, select(~(vec2<u32>(785u, u_input.a) >> (vec2<u32>(40836u, 4294967295u) % vec2<u32>(32u))), ~(~vec2<u32>(4294967295u, 65129u)), !all(arg_1.zx))), func_2(Struct_1(true, ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 24151u), vec2<u32>(1u, u_input.a))), Struct_1(~u_input.a == ~u_input.a, ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(44619u, 31941u))), vec4<bool>(_wgslsmith_f_op_f32(step(arg_0, arg_0)) != -395f, false, all(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), arg_1.x)));
    let var_1 = select(select(!select(!arg_1, vec3<bool>(true, arg_1.x, false), select(arg_1, vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, true))), select(arg_1, !(!vec3<bool>(false, arg_1.x, false)), arg_1), -_wgslsmith_div_i32(var_0.x, 3727i) > 40136i), select(vec3<bool>(!arg_1.x, true, !(false || arg_1.x)), vec3<bool>(arg_1.x, false, true), vec3<bool>(select(arg_1.x, true, true), all(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), !arg_1.x)), false);
    var var_2 = Struct_1(true, _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, reverseBits(u_input.a)), vec2<u32>(~_wgslsmith_mod_u32(u_input.a, u_input.a), ~u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(47354u, u_input.a, u_input.a, u_input.a), vec4<u32>(57315u, 28301u, 37499u, u_input.a)) % 32u)), ~vec2<u32>(u_input.a, reverseBits(u_input.a))));
    var_2 = Struct_1(all(var_1.zz), ~vec2<u32>(39082u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(12963u, 37091u, 76552u, 1u), vec4<u32>(59554u, 0u, u_input.a, 49688u))));
    let var_3 = Struct_1(var_0.x <= countOneBits(-_wgslsmith_add_i32(var_0.x, var_0.x)), vec2<u32>(func_2(Struct_1(any(arg_1), min(vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, u_input.a))), Struct_1(arg_0 < -658f, var_2.b), select(!vec4<bool>(var_2.a, var_1.x, var_1.x, false), !vec4<bool>(arg_1.x, true, arg_1.x, var_1.x), all(vec3<bool>(true, true, var_1.x)))).x, var_2.b.x));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~((u_input.a ^ u_input.a) | min(1u, u_input.a)), _wgslsmith_dot_vec3_u32(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(63172u, 49760u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u))), vec3<u32>(u_input.a, func_1(-848f, vec3<bool>(true, false, true)), ~u_input.a)));
    let var_1 = Struct_1(any(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false)), true)), abs(select(vec2<u32>(u_input.a, 4294967295u), var_0, vec2<bool>(true, false)) >> (reverseBits(vec2<u32>(8374u, 4294967295u)) % vec2<u32>(32u))) & ~countOneBits(~vec2<u32>(1u, 52136u)));
    let var_2 = !any(vec4<bool>(true, true, !var_1.a, true)) != false;
    var var_3 = ~abs(countOneBits(vec3<u32>(45838u, abs(u_input.a), 5382u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1107f)), -478f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-651f)), _wgslsmith_f_op_f32(1095f + 403f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-591f - -940f) * _wgslsmith_f_op_f32(1284f + -244f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(270f, 1000f, -899f) * _wgslsmith_div_vec3_f32(vec3<f32>(111f, -330f, 560f), vec3<f32>(-1000f, -1397f, 367f)))))));
    var_3 = ~vec3<u32>(_wgslsmith_mult_u32(~(~40981u), func_2(Struct_1(true, var_0), Struct_1(var_2, var_3.yy), !vec4<bool>(var_2, var_1.a, false, false)).x), var_0.x, ~u_input.a);
    var_3 = ~(~firstLeadingBit(select(countOneBits(vec3<u32>(var_3.x, 27312u, var_1.b.x)), ~vec3<u32>(var_3.x, u_input.a, 1u), vec3<bool>(var_1.a, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(countOneBits(-16830i), _wgslsmith_f_op_f32(-var_4.x), var_1, (vec4<u32>(var_3.x, var_3.x, u_input.a, var_0.x) >> (vec4<u32>(var_0.x, 57868u, var_1.b.x, 19494u) % vec4<u32>(32u))) << (select(vec4<u32>(40583u, 3208u, var_3.x, 4294967295u), vec4<u32>(1u, 46042u, var_0.x, var_3.x), false) % vec4<u32>(32u))).xzx << (vec3<u32>(1u, 4294967295u, ~abs(u_input.a)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2008f, -497f), -133f)))), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, i32(-1i) * -1i, 12667i, -1i), vec4<i32>(abs(2147483647i), _wgslsmith_add_i32(-25130i, 72360i), min(-51597i, -1i), ~(-54644i)))));
}

