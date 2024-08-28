struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> i32 {
    return _wgslsmith_mult_i32(-u_input.c.x, _wgslsmith_sub_i32(firstTrailingBit(-min(u_input.c.x, 68757i)), i32(-1i) * -_wgslsmith_div_i32(u_input.c.x, 2147483647i)));
}

fn func_2() -> Struct_5 {
    let var_0 = u_input.c.x;
    var var_1 = Struct_2(-1i, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x ^ firstTrailingBit(68542u), 1u, ~1u), vec3<u32>(~(u_input.b << (u_input.a.x % 32u)), 8003u, u_input.b)), Struct_1(true, ~var_0, abs(~(16114u ^ u_input.b)), countOneBits(~select(vec3<u32>(1u, u_input.a.x, 94603u), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), true))), _wgslsmith_f_op_f32(f32(-1f) * -1228f), true);
    let var_2 = ~(u_input.c.yz ^ u_input.c.zy);
    var_1 = Struct_2(15605i, ~(~vec3<u32>(~u_input.b, ~15711u, ~0u)), Struct_1(true, var_2.x, ~var_1.b.x, vec3<u32>(reverseBits(abs(4294967295u)), ~abs(4294967295u), _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(58033u, 13919u, u_input.a.x, var_1.b.x), vec4<u32>(4294967295u, 1356u, 31297u, var_1.b.x))))), -768f, all(!(!vec3<bool>(false, var_1.e, true))) & var_1.c.a);
    var var_3 = Struct_1(!(u_input.c.x == (func_3(Struct_4(var_1.b, vec3<bool>(true, false, var_1.c.a)), -1i) << (~u_input.b % 32u))), firstLeadingBit(abs(-4182i)), max(1u, 0u), var_1.b);
    return Struct_5(vec2<bool>(all(!(!vec3<bool>(false, var_1.c.a, true))), !var_3.a), Struct_4(vec3<u32>(var_1.c.d.x, var_3.c >> (4294967295u % 32u), _wgslsmith_mod_u32(var_3.c, 0u)) << (select(_wgslsmith_add_vec3_u32(var_1.b, var_1.c.d), vec3<u32>(1u, 23848u, var_1.b.x), true) % vec3<u32>(32u)), vec3<bool>(var_1.c.a, any(vec2<bool>(false, var_3.a)), any(select(vec3<bool>(var_1.c.a, true, true), vec3<bool>(false, var_3.a, true), vec3<bool>(var_3.a, false, var_3.a))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    var var_0 = select(vec4<bool>(all(select(!vec4<bool>(arg_0.b.b.x, arg_1.c.c.a, false, false), vec4<bool>(arg_1.c.e, arg_0.a.x, false, arg_1.b.a), 0u >= u_input.a.x)), select(true | arg_0.a.x, true, false | any(vec4<bool>(false, arg_1.c.c.a, arg_1.c.e, arg_0.b.b.x))), arg_0.b.b.x, !arg_0.b.b.x), select(vec4<bool>(-1714f != _wgslsmith_f_op_f32(round(-723f)), true || (true | arg_0.b.b.x), any(arg_0.b.b.yy), arg_0.b.b.x), !vec4<bool>(arg_1.b.a, arg_1.b.a, arg_0.b.b.x, arg_0.b.b.x), true | arg_0.b.b.x), vec4<bool>(!(_wgslsmith_f_op_f32(abs(arg_1.c.d)) < 1f), false, _wgslsmith_div_u32(min(u_input.b, 0u), u_input.a.x) != 4294967295u, !(!(u_input.a.x < 1u))));
    var var_1 = Struct_5(vec2<bool>(min(max(23935u, arg_1.d), 1u) < _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 14911u, arg_0.b.a.x, arg_0.b.a.x), vec4<u32>(22829u, arg_1.a.c, 4294967295u, 20427u))), arg_1.c.e), arg_0.b);
    var_0 = vec4<bool>(all(vec2<bool>(select(arg_0.a.x, false, var_1.b.b.x), !(!arg_0.b.b.x))), all(var_0.xyz), func_2().a.x, any(var_0.zxx));
    var var_2 = Struct_3(arg_1.b, arg_1.a, Struct_2(-50984i, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_1.b.a.x, 48127u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 41342u, arg_0.b.a.x, arg_2), vec4<u32>(1u, 0u, u_input.b, u_input.a.x)), select(38508u, 4294967295u, false)), vec3<u32>(firstLeadingBit(arg_1.b.d.x), _wgslsmith_div_u32(arg_2, arg_1.a.d.x), 21671u)), arg_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c.d), _wgslsmith_f_op_f32(trunc(1000f)))), arg_1.c.e), arg_1.a.d.x);
    let var_3 = arg_0;
    return Struct_3(Struct_1(true, _wgslsmith_clamp_i32(i32(-1i) * -var_2.a.b, max(u_input.c.x, reverseBits(-2147483647i)), arg_1.c.c.b), abs(3947u), abs(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(arg_0.b.a, vec3<u32>(23914u, 4294967295u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.b.c, var_3.b.a.x, 10073u), vec3<u32>(arg_0.b.a.x, 0u, var_3.b.a.x))))), var_2.a, Struct_2(51859i, _wgslsmith_mult_vec3_u32(firstLeadingBit(arg_0.b.a), arg_0.b.a) ^ (abs(arg_0.b.a) ^ arg_0.b.a), arg_1.a, -1356f, any(!(!vec4<bool>(var_1.b.b.x, arg_1.c.e, var_1.b.b.x, var_2.b.a)))), ~func_2().b.a.x);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_5) -> Struct_4 {
    var var_0 = Struct_1(false, arg_2.a, countOneBits(_wgslsmith_div_u32(1u, select(_wgslsmith_div_u32(arg_3.b.a.x, arg_3.b.a.x), arg_1.d, !arg_1.a.a))), ~(~firstTrailingBit(abs(arg_1.a.d))));
    var var_1 = -firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.c.xx, vec2<i32>(-1i, -2147483647i), u_input.c.yx)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d.x, 19157u), func_4(Struct_5(vec2<bool>(true, arg_3.b.b.x), arg_3.b), Struct_3(arg_1.c.c, Struct_1(true, -2147483647i, u_input.b, vec3<u32>(4294967295u, arg_1.b.d.x, 0u)), Struct_2(arg_1.a.b, vec3<u32>(arg_3.b.a.x, arg_3.b.a.x, 4294967295u), arg_2.c, arg_1.c.d, false), arg_1.b.c), 1u).c.c.d.xz) % vec2<u32>(32u)));
    var_0 = arg_1.c.c;
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_3.b.a.x, arg_3.b.a.x, _wgslsmith_mult_u32(var_0.c, 1u | min(arg_2.c.d.x, arg_2.c.d.x))), min(vec4<u32>(u_input.b, _wgslsmith_mod_u32(var_0.d.x, var_0.d.x) | min(1u, 15810u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(98944u, 71730u, arg_1.c.b.x, u_input.b), vec4<u32>(5745u, 48948u, u_input.a.x, arg_3.b.a.x)), select(_wgslsmith_div_u32(62867u, var_0.d.x), 8378u >> (0u % 32u), !var_0.a)), vec4<u32>(10709u << (_wgslsmith_sub_u32(arg_2.b.x, arg_1.c.c.d.x) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(41236u, arg_3.b.a.x, 0u), vec3<u32>(67413u, 0u, 58557u)), 0u, 53554u)), vec4<u32>(u_input.b, 29712u, firstTrailingBit(reverseBits(_wgslsmith_mod_u32(65960u, 4294967295u))), arg_1.c.c.d.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2.d)), _wgslsmith_f_op_f32(256f - 898f), _wgslsmith_f_op_f32(step(370f, -252f))))));
    return Struct_4(~vec3<u32>(countOneBits(firstTrailingBit(16271u)), ~(~arg_2.b.x), select(u_input.b, abs(u_input.a.x), true)), arg_3.b.b);
}

fn func_6(arg_0: Struct_4) -> i32 {
    var var_0 = -491f;
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, -u_input.c.x), 80600i << (_wgslsmith_dot_vec2_u32(vec2<u32>(79659u, 4294967295u), u_input.a) % 32u)), -abs(abs(u_input.c.xz) & -u_input.c.xy));
    var_0 = 1098f;
    return _wgslsmith_dot_vec4_i32(max(countOneBits((vec4<i32>(1i, -1723i, -1i, u_input.c.x) ^ vec4<i32>(8179i, 21714i, var_1, 33930i)) << (abs(vec4<u32>(u_input.a.x, 6876u, u_input.b, u_input.b)) % vec4<u32>(32u))), countOneBits(vec4<i32>(-26172i, 71242i, -20508i, u_input.c.x) << (vec4<u32>(86825u, u_input.b, u_input.a.x, arg_0.a.x) % vec4<u32>(32u))) ^ vec4<i32>(263i, 1i, -46965i, -8422i)), min(-(vec4<i32>(-1i) * -vec4<i32>(58621i, u_input.c.x, var_1, u_input.c.x)), abs(vec4<i32>(5388i, u_input.c.x, u_input.c.x, u_input.c.x)) | vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, -30800i)));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = func_6(func_5(arg_0, func_4(func_2(), Struct_3(Struct_1(false, 0i, 13665u, vec3<u32>(0u, 0u, u_input.a.x)), Struct_1(false, arg_0, 36314u, vec3<u32>(u_input.b, u_input.a.x, 77250u)), Struct_2(arg_0, vec3<u32>(0u, u_input.b, 70598u), Struct_1(false, arg_0, 28429u, vec3<u32>(u_input.b, u_input.a.x, 59626u)), -610f, true), _wgslsmith_sub_u32(4294967295u, u_input.a.x)), 1u), func_4(func_2(), Struct_3(func_4(Struct_5(vec2<bool>(true, false), Struct_4(vec3<u32>(39479u, 0u, 4294967295u), vec3<bool>(true, false, true))), Struct_3(Struct_1(true, u_input.c.x, 1u, vec3<u32>(23128u, u_input.b, u_input.a.x)), Struct_1(false, -513i, 1u, vec3<u32>(u_input.a.x, u_input.b, 30275u)), Struct_2(u_input.c.x, vec3<u32>(18328u, 33191u, u_input.a.x), Struct_1(true, 2537i, 1u, vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)), 375f, true), 17352u), u_input.a.x).c.c, Struct_1(true, -49921i, u_input.b, vec3<u32>(u_input.a.x, u_input.b, 0u)), func_4(Struct_5(vec2<bool>(true, true), Struct_4(vec3<u32>(37487u, 4294967295u, u_input.a.x), vec3<bool>(false, false, true))), Struct_3(Struct_1(false, arg_0, u_input.a.x, vec3<u32>(31465u, 4294967295u, 40078u)), Struct_1(false, 10199i, 0u, vec3<u32>(u_input.a.x, u_input.b, u_input.b)), Struct_2(u_input.c.x, vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), Struct_1(true, arg_0, u_input.b, vec3<u32>(4294967295u, 0u, u_input.a.x)), -634f, true), u_input.b), 4294967295u).c, _wgslsmith_div_u32(u_input.b, 35013u)), u_input.a.x << (u_input.a.x % 32u)).c, func_2()));
    let var_1 = !any(vec3<bool>(true, true, u_input.b < u_input.a.x));
    let var_2 = func_2().a;
    var var_3 = true;
    var_3 = func_2().b.b.x;
    return 67126u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstTrailingBit(1u), _wgslsmith_mult_u32(~u_input.b, ~var_0.x >> (9648u % 32u)), ~var_0.x), vec3<u32>(_wgslsmith_add_u32(u_input.a.x | 1u, func_1(u_input.c.x)) & (u_input.a.x << (firstTrailingBit(28519u) % 32u)), ~u_input.b, _wgslsmith_mod_u32(abs(~u_input.a.x), countOneBits(0u))), 29347u, 2147483647i);
}

