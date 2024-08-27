struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    var var_0 = -61071i;
    var_0 = -abs(u_input.d.x);
    var_0 = ~(~(-_wgslsmith_dot_vec3_i32(u_input.d, min(u_input.d, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)))));
    var_0 = -u_input.d.x | 1i;
    var var_1 = false;
    return u_input.e < 2801u;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(!select(vec4<bool>(false, true, true, arg_1.a.x), !vec4<bool>(arg_1.a.x, false, arg_1.a.x, arg_1.a.x), all(arg_1.a.xy))), Struct_1(vec4<bool>(u_input.a <= (arg_1.b ^ 1u), any(vec2<bool>(false, arg_1.a.x)), arg_1.a.x, true)), Struct_1(!vec4<bool>(!arg_1.a.x, false, true, true)), Struct_1(select(vec4<bool>(all(vec2<bool>(false, true)), arg_1.a.x | false, false, all(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x))), select(!vec4<bool>(true, false, arg_1.a.x, false), vec4<bool>(true, arg_1.a.x, arg_1.a.x, true), select(vec4<bool>(true, true, arg_1.a.x, arg_1.a.x), vec4<bool>(true, arg_1.a.x, false, arg_1.a.x), arg_1.a.x)), all(!vec4<bool>(arg_1.a.x, arg_1.a.x, true, false)))));
    var var_1 = arg_1;
    var_1 = Struct_3(vec3<bool>(!(-arg_0 != u_input.d.x), false, arg_1.b != var_1.b), var_1.b & ~4294967295u);
    var_1 = Struct_3(vec3<bool>(true, func_3(), false && (~u_input.d.x <= _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 581i), vec2<i32>(1i, arg_0)))), 47571u);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1419f, _wgslsmith_f_op_f32(abs(-638f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-1122f, 1100f), vec2<f32>(-1098f, 944f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -292f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(191f, -1781f), vec2<f32>(-850f, 1327f)))), true)))));
    return Struct_2(var_0.b, var_0.b, Struct_1(select(var_0.c.a, !var_0.a.a, true)), Struct_1(!select(vec4<bool>(true, var_1.a.x, arg_1.a.x, true), var_0.a.a, !var_0.b.a)));
}

fn func_1(arg_0: f32, arg_1: u32) -> Struct_3 {
    var var_0 = func_2(30872i, Struct_3(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_sub_u32(firstTrailingBit(firstLeadingBit(arg_1)), ~0u >> ((4294967295u << (arg_1 % 32u)) % 32u))), -6429i, _wgslsmith_mod_vec4_u32(~select(vec4<u32>(u_input.a, 8785u, 0u, u_input.c), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<bool>(false, false, false, true)) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, arg_1, 26557u, 44279u), vec4<u32>(u_input.e, u_input.e, u_input.e, 1u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(max(vec4<u32>(14083u, 4294967295u, u_input.c, arg_1) & vec4<u32>(u_input.a, u_input.a, 1u, 1u), vec4<u32>(1552u, 0u, arg_1, 1u) >> (vec4<u32>(u_input.b, u_input.b, 21589u, u_input.a) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~vec4<u32>(34222u, 56207u, 13529u, 110648u), vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.b)))));
    var_0 = Struct_2(var_0.a, var_0.b, Struct_1(!func_2(-15784i | u_input.d.x, Struct_3(var_0.a.a.xxy, 3738u), 2147483647i, min(vec4<u32>(u_input.e, u_input.a, 23328u, 29772u), vec4<u32>(4294967295u, 39950u, 39584u, 1u))).c.a), Struct_1(vec4<bool>(true, false, all(var_0.c.a), true)));
    var_0 = Struct_2(var_0.d, var_0.d, var_0.a, var_0.d);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-542f * arg_0) * _wgslsmith_f_op_f32(-arg_0))))));
    var var_2 = func_2(u_input.d.x, Struct_3(var_0.b.a.wwz, arg_1), ~select(323i, _wgslsmith_mult_i32(u_input.d.x, 1i), var_0.d.a.x), ~(~(~vec4<u32>(16118u, 44410u, arg_1, arg_1)) ^ reverseBits(select(vec4<u32>(arg_1, 12898u, 32979u, u_input.e), vec4<u32>(8450u, 22264u, 0u, 4294967295u), vec4<bool>(true, true, var_0.b.a.x, true))))).d;
    return Struct_3(var_2.a.zzw, arg_1);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = (abs(2147483647i) > _wgslsmith_div_i32(u_input.d.x, 1i)) && arg_2.a.x;
    var var_1 = Struct_1(!select(select(vec4<bool>(true, false, arg_2.a.x, true), vec4<bool>(var_0, true, true, true), !arg_0.a.x), select(select(vec4<bool>(false, var_0, false, true), vec4<bool>(arg_0.a.x, var_0, arg_2.a.x, false), vec4<bool>(false, false, arg_2.a.x, arg_0.a.x)), !vec4<bool>(true, false, arg_2.a.x, true), !vec4<bool>(var_0, true, true, arg_0.a.x)), !(!vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_0.a.x))));
    var_1 = func_2(u_input.d.x, func_1(_wgslsmith_f_op_f32(f32(-1f) * -2443f), arg_2.b), _wgslsmith_dot_vec4_i32(vec4<i32>(max(_wgslsmith_clamp_i32(-1i, 24309i, u_input.d.x), ~(-1i)), u_input.d.x, u_input.d.x, 0i), max(-(vec4<i32>(0i, -6416i, u_input.d.x, -10623i) >> (vec4<u32>(arg_2.b, 1u, 70224u, 0u) % vec4<u32>(32u))), select(vec4<i32>(1i, u_input.d.x, -1i, u_input.d.x), vec4<i32>(u_input.d.x, 2147483647i, u_input.d.x, u_input.d.x), true) | reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, -1i, -1i)))), _wgslsmith_mult_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(44359u, arg_0.b, arg_2.b, 0u), vec4<u32>(arg_0.b, 13528u, 4294967295u, arg_0.b))), reverseBits(~countOneBits(vec4<u32>(arg_0.b, 4294967295u, 3078u, 1u))))).b;
    var_1 = Struct_1(select(var_1.a, !var_1.a, true));
    var var_2 = func_2(select(u_input.d.x, 0i, arg_2.b != _wgslsmith_div_u32(4294967295u, arg_0.b)) & 2147483647i, arg_2, u_input.d.x, vec4<u32>(~(~0u) & firstLeadingBit(~arg_2.b), arg_2.b, ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, u_input.c), vec4<u32>(arg_2.b, 38941u, arg_0.b, 0u), vec4<u32>(arg_2.b, arg_0.b, 17067u, 0u)), ~vec4<u32>(0u, u_input.a, 4294967295u, 54353u)), 37035u)).b;
    return Struct_1(var_2.a);
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    return func_1(_wgslsmith_f_op_f32(f32(-1f) * -764f), 38199u ^ abs(73494u & abs(u_input.a))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_5(vec2<u32>(1u, 1u), abs(u_input.d.x << (~0u % 32u)), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false))), func_4(func_1(-1000f, 77543u), 586f, Struct_3(vec3<bool>(false, false, true), u_input.c)), func_2(-2147483647i, Struct_3(vec3<bool>(false, true, true), u_input.b), firstTrailingBit(19052i), ~vec4<u32>(66218u, 54385u, u_input.c, 0u)).d)), vec3<bool>(true, true, true), ((~75901u & _wgslsmith_mod_u32(1u, u_input.b)) ^ ~abs(1233u)) == ~u_input.c);
    var_0 = func_2(12885i, Struct_3(func_4(Struct_3(!vec3<bool>(var_0.x, false, var_0.x), ~u_input.e), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1296f * -1358f))), func_1(376f, ~u_input.a)).a.yxz, ~(u_input.c ^ u_input.b) ^ firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.b, 79589u)))), -1i, _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, u_input.a, u_input.c, 0u), ~(~vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.e))) ^ vec4<u32>(1u, 4294967295u, u_input.c, u_input.c)).a.a.wwz;
    var var_1 = Struct_2(func_2(countOneBits(firstLeadingBit(~u_input.d.x)), Struct_3(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(true, true, true), true), ~u_input.c), -13096i, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 529u, countOneBits(u_input.c), firstTrailingBit(4294967295u)), ~(~vec4<u32>(u_input.e, 5701u, u_input.e, u_input.e)))).b, func_4(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-449f, -2074f, var_0.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1238f)), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(906f, 763f)), _wgslsmith_f_op_f32(-269f * 883f), u_input.d.x != 1i))), func_1(609f, reverseBits(_wgslsmith_mod_u32(73332u, u_input.e)))), Struct_1(!(!vec4<bool>(true, var_0.x, true, var_0.x))), Struct_1(vec4<bool>(true, var_0.x && (-9119i > u_input.d.x), false, true)));
    let var_2 = ~min(abs(vec3<i32>(u_input.d.x, -u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -9428i), u_input.d.xy))), min(firstLeadingBit(select(vec3<i32>(-22430i, u_input.d.x, -2147483647i), u_input.d, true)), -firstTrailingBit(u_input.d)));
    let var_3 = var_1.d.a.x;
    let var_4 = vec4<bool>(any(select(func_2(43030i, Struct_3(vec3<bool>(var_0.x, var_1.a.a.x, true), u_input.b), 2147483647i, vec4<u32>(0u, u_input.c, 4294967295u, 5152u)).d.a.zw, func_5(vec2<u32>(u_input.a, u_input.a), -2147483647i, Struct_2(Struct_1(var_1.b.a), Struct_1(vec4<bool>(var_1.d.a.x, true, true, false)), Struct_1(vec4<bool>(var_1.d.a.x, true, var_1.a.a.x, var_0.x)), Struct_1(vec4<bool>(false, false, false, false)))).yx, vec2<bool>(true, true))) && true, var_0.x, !func_1(336f, 1u).a.x, func_2(_wgslsmith_div_i32(reverseBits(1i), min(u_input.d.x, var_2.x)), func_1(_wgslsmith_f_op_f32(abs(-231f)), ~u_input.e), _wgslsmith_mod_i32(~var_2.x, u_input.d.x), vec4<u32>(1u, countOneBits(u_input.b), ~37640u, ~93122u)).a.a.x && !var_0.x);
    let var_5 = vec2<bool>(any(func_4(Struct_3(func_2(var_2.x, Struct_3(vec3<bool>(var_0.x, false, var_0.x), u_input.e), var_2.x, vec4<u32>(1u, 1u, u_input.e, u_input.e)).c.a.wzw, u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(711f, 710f)), Struct_3(var_1.a.a.zyy, ~4294967295u)).a), func_5(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.e, u_input.e), select(vec2<u32>(u_input.b, u_input.a), vec2<u32>(u_input.b, 4294967295u), true)), u_input.d.x, Struct_2(func_4(Struct_3(vec3<bool>(true, true, var_1.a.a.x), u_input.a), _wgslsmith_f_op_f32(floor(-415f)), func_1(-224f, u_input.e)), var_1.c, Struct_1(var_1.c.a), Struct_1(func_4(Struct_3(vec3<bool>(var_1.b.a.x, true, true), u_input.b), 195f, Struct_3(vec3<bool>(var_4.x, true, false), u_input.c)).a))).x);
    var_0 = !(!vec3<bool>(any(!var_4.yzy), all(vec4<bool>(var_0.x, true, false, true)), var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x);
}

