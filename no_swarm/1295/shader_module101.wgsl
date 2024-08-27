struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<bool>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_5(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(83338u), _wgslsmith_sub_u32(u_input.a, u_input.c), firstTrailingBit(22811u)), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a, 0u)), ~vec3<u32>(28694u, u_input.c, u_input.c), vec3<u32>(u_input.c, 4928u, 23742u))), ~countOneBits(~7361u), u_input.a));
    var_0 = Struct_5(var_0.a);
    var_0 = Struct_5(600u);
    var_0 = Struct_5(~(~_wgslsmith_sub_u32(u_input.c, var_0.a)) & ~(~(var_0.a & 13160u)));
    var var_1 = u_input.b.x;
    return ~(vec3<u32>(4294967295u, u_input.c ^ var_0.a, ~0u) ^ firstTrailingBit(vec3<u32>(74762u, ~u_input.c, _wgslsmith_div_u32(4294967295u, u_input.a))));
}

fn func_2() -> u32 {
    let var_0 = 1000f;
    var var_1 = _wgslsmith_f_op_f32(-1f);
    let var_2 = Struct_3(Struct_2(Struct_1(1u & ~u_input.c), u_input.b.xwy, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 41768u, u_input.a, 72316u), vec4<u32>(18546u, 67038u, u_input.a, 63985u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 1u))), Struct_1(~_wgslsmith_mult_u32(0u, u_input.a))), Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), func_3())), _wgslsmith_mult_vec3_i32(~reverseBits(u_input.b.yzy), -u_input.b.yxy), Struct_1(43485u), Struct_1(~select(26987u, 4294967295u, false))), select(vec4<bool>(!all(vec4<bool>(false, true, false, true)), !any(vec3<bool>(false, true, true)), ~u_input.a < (84036u & u_input.c), true | select(true, true, true)), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, false, true), -964f < var_0), !vec4<bool>(var_0 == var_0, true, any(vec2<bool>(false, false)), select(false, false, false))), ~reverseBits(~vec3<u32>(1u, 1u, 1u)), -u_input.b.x);
    let var_3 = reverseBits(vec4<u32>(1u, ~u_input.a, u_input.a, _wgslsmith_add_u32(27535u, var_2.d.x)));
    let var_4 = Struct_3(var_2.b, var_2.b, select(vec4<bool>(select(all(vec4<bool>(false, false, var_2.c.x, var_2.c.x)), false, var_2.c.x && true), var_2.c.x, var_2.c.x, var_2.c.x), select(select(!var_2.c, var_2.c, vec4<bool>(true, var_2.c.x, var_2.c.x, var_2.c.x)), vec4<bool>(all(vec2<bool>(var_2.c.x, var_2.c.x)), var_2.c.x && var_2.c.x, all(vec4<bool>(true, false, false, false)), -291f == var_0), var_2.c), var_2.c), var_3.zww, ~min(1i, reverseBits(var_2.b.b.x)));
    return ~max(_wgslsmith_mult_u32(_wgslsmith_sub_u32(func_3().x, var_3.x), max(var_2.b.d.a, 4294967295u) | var_2.a.d.a), 91750u);
}

fn func_1() -> Struct_2 {
    let var_0 = u_input.b.zy << (~vec2<u32>(u_input.a, max(func_2(), 18156u)) % vec2<u32>(32u));
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(!any(vec2<bool>(true, true)), any(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true))), vec2<bool>(true, true));
    let var_2 = Struct_5(min(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), firstLeadingBit(vec3<u32>(16177u, 1u, 1u))), ~(~vec3<u32>(u_input.a, 1u, 7685u))), (0u & firstLeadingBit(u_input.c)) ^ ~(~1u)));
    let var_3 = _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(~min(min(vec3<u32>(67074u, u_input.a, 37525u), vec3<u32>(1u, 6823u, 11898u)), vec3<u32>(var_2.a, u_input.a, var_2.a)), reverseBits(firstLeadingBit(vec3<u32>(var_2.a, var_2.a, 65243u) >> (vec3<u32>(u_input.c, 28294u, u_input.c) % vec3<u32>(32u))))));
    let var_4 = var_2;
    return Struct_2(Struct_1(func_3().x), countOneBits(vec3<i32>(7218i, u_input.b.x, -1i)), Struct_1(var_4.a), Struct_1(1u));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-784f * -211f), _wgslsmith_f_op_f32(f32(-1f) * -1627f))))));
    var var_1 = select(vec2<bool>(true, true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), any(vec2<bool>(false, true))), select(!vec2<bool>(false, select(false, true, true)), vec2<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))), select(vec2<bool>(false, u_input.b.x >= 14404i), vec2<bool>(any(vec2<bool>(false, true)), select(true, false, false)), true)));
    var_0 = 936f;
    var var_2 = Struct_4(select(!select(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(var_1.x, var_1.x, false)), vec3<bool>(false, any(!vec4<bool>(var_1.x, true, true, true)), var_1.x), vec3<bool>(all(vec4<bool>(var_1.x, var_1.x, true, false)) | var_1.x, !var_1.x, true)), Struct_1(47023u));
    var_2 = Struct_4(vec3<bool>(!(var_1.x || false), var_2.a.x, false), func_1().a);
    return Struct_3(func_1(), arg_0, select(!select(vec4<bool>(var_1.x, var_2.a.x, true, false), select(vec4<bool>(var_2.a.x, true, var_1.x, false), vec4<bool>(var_1.x, true, var_2.a.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), var_1.x), vec4<bool>(true, true & any(var_2.a), !(!var_2.a.x), var_1.x), !(!vec4<bool>(true, var_1.x, true, true))), vec3<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(23859u, 4294967295u, 1u, 43363u)), abs(vec4<u32>(1u, 41775u, 52119u, 114981u))), ~_wgslsmith_add_u32(arg_0.c.a, 1549u) >> (arg_0.d.a % 32u), u_input.a), 3523i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1());
    var var_1 = (_wgslsmith_add_u32(var_0.a.c.a, var_0.b.d.a) > var_0.b.c.a) || true;
    let var_2 = vec2<bool>(!all(func_4(var_0.b).c), var_0.c.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1643f, -985f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(930f)))))));
    var var_4 = true;
    var var_5 = func_4(Struct_2(Struct_1(58177u), ~var_0.a.b, Struct_1(~_wgslsmith_add_u32(u_input.c, var_0.d.x)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.c.a, var_0.b.c.a, var_0.d.x), countOneBits(vec3<u32>(var_0.a.d.a, u_input.c, var_0.b.d.a)))))).a.c;
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-747f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1663f, -410f)), _wgslsmith_f_op_f32(1000f * -170f))))), select(select(vec2<u32>(44751u, 0u), var_0.d.zx ^ var_0.d.xz, select(var_2.x, false, var_0.c.x)) ^ vec2<u32>(var_0.d.x, u_input.a), vec2<u32>(4294967295u, u_input.c), var_2), 1u, ~(min(vec4<i32>(u_input.b.x, var_0.a.b.x, 7089i, var_0.b.b.x), vec4<i32>(var_0.e, 1i, 2147483647i, var_0.e)) << (~vec4<u32>(8100u, 34577u, var_5.a, 1u) % vec4<u32>(32u))) & -vec4<i32>(var_0.a.b.x, _wgslsmith_mult_i32(9830i, u_input.b.x), u_input.b.x, -2147483647i), _wgslsmith_add_vec2_i32(-firstTrailingBit(firstLeadingBit(vec2<i32>(u_input.b.x, var_0.a.b.x))), u_input.b.xz));
}

