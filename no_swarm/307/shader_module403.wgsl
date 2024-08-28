struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec4<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    let var_0 = select(select(!select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true | any(vec4<bool>(false, true, true, true)), true, all(vec2<bool>(true, true))), vec3<bool>((37445i ^ u_input.b) < u_input.b, true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))))), vec3<bool>(!(~1u <= _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(40082u, 4294967295u))), all(vec4<bool>(true, true, all(vec3<bool>(false, true, false)), true)), true | (all(vec3<bool>(false, true, false)) || true)), any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-515f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(floor(-316f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-643f, 1171f, -481f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(495f, 868f, 1519f), vec3<f32>(303f, 684f, -719f))))))))));
    let var_3 = ~vec2<i32>(_wgslsmith_clamp_i32(min(u_input.b, _wgslsmith_div_i32(u_input.b, u_input.b)), i32(-1i) * -u_input.b, u_input.b), -47740i);
    let var_4 = Struct_1(var_3.x, _wgslsmith_clamp_vec2_u32(select(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(4294967295u, u_input.a), !var_1) & _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(61570u, 143u)), vec2<u32>(firstTrailingBit(abs(1u)), 4294967295u), vec2<u32>(~67820u, u_input.a ^ 0u) & _wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), min(vec2<u32>(u_input.a, 0u), vec2<u32>(0u, 10309u)))), _wgslsmith_dot_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, u_input.a)) & ~vec2<u32>(15437u, u_input.a)), ~select(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(78425u, u_input.a)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), var_0.x), !var_0.xx)), -56230i);
    return var_3.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_5(Struct_3(Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, arg_1.b.x, arg_1.b.x), vec3<u32>(u_input.a, u_input.a, u_input.a)), func_3() != 0i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -947f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(682f * 516f))), -1000f), u_input.a, Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_1.b.x, arg_1.c), firstLeadingBit(vec3<u32>(25465u, u_input.a, 57294u))), any(vec2<bool>(true, true))), -190f), Struct_4(arg_1, ~(vec3<u32>(u_input.a, 48688u, u_input.a) >> (firstLeadingBit(vec3<u32>(1u, 54710u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-886f, 1000f, 457f, 1009f))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_2(vec3<u32>(u_input.a, u_input.a, 28117u), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, true, false)), false, arg_0.x < -77681i), true), Struct_2(max(~(vec3<u32>(arg_1.c, arg_1.c, u_input.a) ^ vec3<u32>(20911u, 52606u, 0u)), ~vec3<u32>(4231u, arg_1.b.x, arg_1.c) | reverseBits(vec3<u32>(u_input.a, u_input.a, arg_1.c))), true), arg_1);
    let var_1 = select(var_0.c.zww, var_0.c.zwz, var_0.b.e.a.x < 54120u);
    let var_2 = var_0.e;
    var_0 = Struct_5(Struct_3(Struct_2(abs(~vec3<u32>(var_0.b.b.x, arg_1.b.x, 44404u)), true), _wgslsmith_f_op_vec3_f32(var_0.a.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.b.c.yxz - vec3<f32>(var_0.b.c.x, 1444f, 2926f)))), ~reverseBits(49726u), Struct_2(vec3<u32>(~35124u, u_input.a, 28309u), false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-895f, var_0.b.c.x, false))))))), var_0.b, vec4<bool>(true, all(vec4<bool>(!var_0.c.x, false, all(var_0.c.xzx), select(var_0.b.e.b, true, false))), all(select(vec2<bool>(false, var_1.x), !var_0.b.d, select(var_0.c.xy, vec2<bool>(false, true), true))), any(!vec4<bool>(false, var_0.d.b, var_1.x, var_0.d.b))), Struct_2(~vec3<u32>(firstLeadingBit(20487u), u_input.a, var_0.e.c), var_0.b.d.x), Struct_1(abs(arg_1.a), vec2<u32>(~67843u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 67081u, 0u, arg_1.b.x)), vec4<u32>(6437u, arg_1.b.x, var_0.e.b.x, 98702u))), abs(0u) << (_wgslsmith_add_u32(~arg_1.c, max(u_input.a, 0u)) % 32u), u_input.b));
    let var_3 = vec4<i32>(~(-4973i), ~(-func_3()), -firstLeadingBit(abs(-20544i)), abs(41251i));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.b.c)) + _wgslsmith_f_op_vec4_f32(select(var_0.b.c, var_0.b.c, true))));
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = -(~(~abs(vec3<i32>(u_input.b, u_input.b, u_input.b)) << (((vec3<u32>(1u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 32551u, u_input.a) % vec3<u32>(32u))) << (~vec3<u32>(49499u, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var_0 = _wgslsmith_div_vec3_i32(abs(~(-_wgslsmith_add_vec3_i32(vec3<i32>(-53768i, u_input.b, -34622i), vec3<i32>(1i, u_input.b, u_input.b)))), vec3<i32>(~u_input.b, u_input.b | (abs(u_input.b) << (~u_input.a % 32u)), abs(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 5651i), vec2<i32>(var_0.x, u_input.b))))));
    var_0 = vec3<i32>(var_0.x, countOneBits(_wgslsmith_clamp_i32(abs(_wgslsmith_clamp_i32(-43553i, 65091i, 2147483647i)), countOneBits(var_0.x), _wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(-33864i, var_0.x)))), 0i);
    var var_1 = 1260f;
    let var_2 = _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-11845i, u_input.b, 27529i, -(~7232i)), ~(~(vec4<i32>(var_0.x, u_input.b, var_0.x, u_input.b) ^ vec4<i32>(47220i, -2147483647i, 47287i, 50621i)))), Struct_1(-1i, ~vec2<u32>(~1u, 4294967295u | u_input.a), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, u_input.a) >> (u_input.a % 32u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 67455u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 73973u), vec2<u32>(u_input.a, 94522u))), ~18793u), ~reverseBits(-u_input.b))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec2<bool>(true, true), !func_1(vec2<bool>(false, false)), true));
    var var_1 = Struct_5(Struct_3(Struct_2(~select(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 4294967295u, 23418u), vec3<bool>(var_0.x, false, true)), false), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)), _wgslsmith_f_op_f32(trunc(-1695f)), _wgslsmith_f_op_f32(f32(-1f) * -851f)), u_input.a, Struct_2(abs(vec3<u32>(u_input.a, 0u, u_input.a)) << ((vec3<u32>(u_input.a, 1u, u_input.a) | vec3<u32>(4254u, u_input.a, u_input.a)) % vec3<u32>(32u)), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1206f + 265f))))), Struct_4(Struct_1(_wgslsmith_mod_i32(1i, u_input.b), vec2<u32>(_wgslsmith_sub_u32(23332u, u_input.a), _wgslsmith_clamp_u32(0u, 36304u, u_input.a)), ~u_input.a, 1i), reverseBits(select(select(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(u_input.a, 2365u, u_input.a), vec3<bool>(true, false, true)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 33718u), vec3<u32>(u_input.a, u_input.a, 87421u)), vec3<bool>(var_0.x, var_0.x, true))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1246f, 1935f, -427f, 600f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(263f, 1014f, -784f, -1102f)) - vec4<f32>(-2085f, 359f, -800f, 1000f)))), !select(select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true)), select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), false), true), Struct_2(vec3<u32>(16380u, ~u_input.a, abs(28026u)), var_0.x)), select(!vec4<bool>(false, true, var_0.x, all(vec4<bool>(true, var_0.x, var_0.x, true))), vec4<bool>(true, !(u_input.b >= -17426i), false, any(select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), var_0.x))), !vec4<bool>(true, true, true, var_0.x)), Struct_2(countOneBits(max(vec3<u32>(u_input.a, 10573u, u_input.a), reverseBits(vec3<u32>(0u, u_input.a, u_input.a)))), var_0.x), Struct_1(-1i, ~(~countOneBits(vec2<u32>(4294967295u, 1u))), _wgslsmith_div_u32(32178u, ~(u_input.a | u_input.a)), countOneBits(u_input.b)));
    var var_2 = Struct_2(var_1.d.a, any(var_1.c.xyz));
    let x = u_input.a;
    s_output = StorageBuffer(min(~abs(u_input.a) << (max(_wgslsmith_clamp_u32(u_input.a, 13969u, 46851u), ~var_1.d.a.x) % 32u), ~_wgslsmith_div_u32(0u, u_input.a) >> (1u % 32u)), ~(-(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -1816i, u_input.b), vec3<i32>(46059i, u_input.b, 0i)) ^ ~vec3<i32>(-23854i, var_1.e.a, -1i))), -min(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b, var_1.e.a, -15000i, u_input.b), vec4<i32>(u_input.b, var_1.e.a, var_1.e.d, 0i) & vec4<i32>(var_1.e.a, 1i, var_1.b.a.d, 15920i)), abs(vec4<i32>(1i, u_input.b, 2147483647i, 15114i)) ^ ~vec4<i32>(0i, 49842i, var_1.e.d, 0i)), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, var_1.d.a.x), min(44333u, 1u)), var_2.a.x));
}

