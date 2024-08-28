struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> i32 {
    var var_0 = Struct_1(u_input.c, _wgslsmith_f_op_f32(sign(-1000f)), select(true, (u_input.a.x < 54684u) & !any(vec4<bool>(true, true, false, false)), true), ~(~(~(u_input.a.x | u_input.a.x))));
    return 1i;
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_5(Struct_3(Struct_2(vec4<i32>(_wgslsmith_div_i32(-28144i, -13547i), u_input.b, ~u_input.b, 11694i), Struct_1(29707i, _wgslsmith_div_f32(766f, -524f), all(vec4<bool>(true, false, false, true)), _wgslsmith_mult_u32(52298u, arg_0.x)), 1i, Struct_1(-56175i, -1358f, true, arg_0.x), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), Struct_1(0i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1403f, 558f)), ~u_input.c <= -1i, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(arg_0.x, 4294967295u)), 18659u)), 2147483647i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-482f))), 440f, true))), Struct_3(Struct_2(min(-vec4<i32>(0i, -2147483647i, u_input.b, u_input.c), -vec4<i32>(-33197i, u_input.b, -51148i, u_input.c)), Struct_1(_wgslsmith_mod_i32(-2147483647i, u_input.b), _wgslsmith_f_op_f32(step(-114f, 502f)), false, _wgslsmith_div_u32(arg_0.x, 4294967295u)), min(_wgslsmith_dot_vec3_i32(vec3<i32>(24144i, 21099i, 19858i), vec3<i32>(u_input.c, 7853i, -2147483647i)), -u_input.c), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, 33553i, -84280i), vec4<i32>(-25386i, 0i, 5290i, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec2<bool>(false, false)), min(43309u, 12708u)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, false, true, true))), Struct_1(_wgslsmith_mod_i32(7321i, ~u_input.b), _wgslsmith_f_op_f32(abs(-961f)), all(vec2<bool>(true, false)), firstTrailingBit(u_input.a.x)), _wgslsmith_add_i32(u_input.c, u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-858f, _wgslsmith_f_op_f32(f32(-1f) * -1576f)))));
    let var_1 = var_0.b.a.d.c;
    var var_2 = Struct_2(vec4<i32>(var_0.a.b.a << (select(u_input.a.x, arg_0.x, true) % 32u), firstTrailingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c, -59626i, var_0.a.a.b.a), var_0.a.a.a.wwy, var_0.b.a.e.wzw), -var_0.b.a.a.wwx)), 10146i, ~firstTrailingBit(7644i)), Struct_1(~(1i >> ((arg_0.x >> (26901u % 32u)) % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1739f + -177f))), all(var_0.b.a.e), min(1u, _wgslsmith_mult_u32(var_0.a.a.d.d, ~arg_0.x))), u_input.b, var_0.a.a.d, var_0.a.a.e);
    let var_3 = Struct_4(var_0.a.a.a.yy, var_2.d, _wgslsmith_mult_vec2_i32(abs(select(max(var_2.a.ww, vec2<i32>(u_input.b, 40396i)), vec2<i32>(var_2.d.a, u_input.b), select(vec2<bool>(true, true), var_2.e.xy, false))), firstTrailingBit(vec2<i32>(reverseBits(var_0.a.a.c), max(u_input.b, -15238i)))));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(_wgslsmith_sub_u32(var_2.d.d, 22402u)), ~(1u << (1u % 32u)), var_2.d.d, abs(var_2.b.d)), max(_wgslsmith_mod_vec4_u32(arg_0, _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, var_2.b.d, 0u, 6192u), vec4<u32>(var_3.b.d, var_0.b.b.d, arg_0.x, var_3.b.d))), vec4<u32>(var_3.b.d, 0u, var_2.d.d, 0u) ^ vec4<u32>(var_0.a.b.d, 0u, 35746u, var_3.b.d))), var_3.b.d);
    return 739f;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(806f)), arg_0.b), _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.a.x ^ (u_input.a.x & u_input.a.x), arg_0.d, ~71355u, 4294967295u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-434f)))) + 170f)));
    let var_1 = Struct_5(Struct_3(Struct_2(vec4<i32>(-20984i, arg_1.x, -3907i, arg_1.x) << ((vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_0.d) | vec4<u32>(arg_0.d, 0u, 3833u, 30785u)) % vec4<u32>(32u)), Struct_1(u_input.c, _wgslsmith_f_op_f32(-var_0.x), any(vec2<bool>(true, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, 14257u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, arg_0.d))), -1i, arg_0, !select(vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c), vec4<bool>(true, false, arg_0.c, arg_0.c), arg_0.c)), Struct_1(-_wgslsmith_sub_i32(u_input.c, arg_2), _wgslsmith_f_op_f32(sign(262f)), !(arg_1.x <= -12572i), 50568u), -max(-u_input.b, -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -559f)), Struct_3(Struct_2(abs(select(vec4<i32>(arg_0.a, 2147483647i, -4556i, 19205i), arg_1, false)), arg_0, u_input.b, Struct_1(arg_1.x, var_0.x, arg_0.c, min(47343u, 45303u)), vec4<bool>(any(vec4<bool>(arg_0.c, true, true, false)), any(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c)), any(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, false)), true)), Struct_1(41204i, var_0.x, arg_0.c, _wgslsmith_add_u32(arg_0.d, ~arg_0.d)), reverseBits(-arg_0.a), -408f));
    let var_2 = all(!vec3<bool>(!all(var_1.a.a.e.yyz), all(vec3<bool>(arg_0.c, arg_0.c, var_1.b.b.c)), !var_1.a.b.c));
    var var_3 = (max(vec4<u32>(4294967295u, var_1.a.a.b.d, ~var_1.b.a.d.d, _wgslsmith_add_u32(17169u, 0u)), ~vec4<u32>(u_input.a.x, var_1.a.a.b.d, arg_0.d, 0u)) | ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.d, var_1.a.b.d, var_1.b.a.d.d, 0u), vec4<u32>(1295u, 1u, 93583u, 1u), vec4<u32>(arg_0.d, u_input.a.x, arg_0.d, u_input.a.x)) << (reverseBits(vec4<u32>(49032u, arg_0.d, var_1.a.b.d, 48164u)) % vec4<u32>(32u)))) | ~(vec4<u32>(arg_0.d, ~arg_0.d, 60879u, 57102u) & vec4<u32>(abs(arg_0.d), var_1.b.b.d, ~25541u, var_1.b.b.d));
    let var_4 = ~countOneBits(arg_1.ywx);
    return var_4.yz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.b, 5164i) & vec2<i32>(u_input.c, u_input.c))), ((vec2<i32>(u_input.b, u_input.b) | vec2<i32>(2147483647i, -2147483647i)) >> (u_input.a % vec2<u32>(32u))) & -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, -3944i), vec2<i32>(-59535i, -1i))), func_2(Struct_1(func_1(), 627f, true, min(14319u, 0u)), vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(36081i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -29221i, -2147483647i, u_input.c), vec4<i32>(u_input.b, 1i, u_input.b, u_input.c))), u_input.c, u_input.c, select(u_input.c, u_input.b, false)), 41694i));
    var_0 = vec2<i32>(-1i, -45745i) & abs(vec2<i32>(-var_0.x, abs(-1i)));
    var_0 = countOneBits(vec2<i32>(-4190i, 26080i));
    var var_1 = Struct_1(~(-u_input.c), _wgslsmith_f_op_f32(-1714f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1828f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-434f)) * 1644f))), !(!select(true, true, any(vec3<bool>(true, true, true)))), ~4294967295u);
    var_1 = Struct_1(_wgslsmith_add_i32(abs(~(~var_0.x)), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(-20067i, u_input.b)), func_2(Struct_1(71457i, 458f, var_1.c, u_input.a.x), vec4<i32>(var_1.a, u_input.b, var_0.x, var_0.x), var_0.x))), var_1.b, !(53598i >= var_1.a), var_1.d);
    let var_2 = vec3<bool>(true, var_1.c, false);
    let var_3 = _wgslsmith_mult_i32(u_input.c, min(u_input.c, i32(-1i) * -2147483647i));
    var var_4 = Struct_3(Struct_2(-(~vec4<i32>(-5776i, 1i, var_1.a, u_input.c)) | -(vec4<i32>(var_1.a, 64699i, -57851i, -1i) & vec4<i32>(u_input.c, -13929i, u_input.c, 0i)), Struct_1(u_input.c, _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(1258f + var_1.b)), var_2.x, ~abs(3086u)), ~u_input.c, Struct_1(_wgslsmith_mod_i32(var_1.a, -17909i) << (~4294967295u % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b))), var_1.c, 4294967295u | _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, 15314u), u_input.a)), !(!(!vec4<bool>(true, var_1.c, var_2.x, false)))), Struct_1(_wgslsmith_mult_i32(func_1(), ~(-var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec4<u32>(4294967295u, 0u, 0u, 52079u))))) - var_1.b), true, u_input.a.x), firstLeadingBit(~(-1i)), _wgslsmith_div_f32(var_1.b, var_1.b));
    var var_5 = Struct_5(Struct_3(var_4.a, Struct_1(0i, _wgslsmith_f_op_f32(trunc(416f)), !var_1.c, ~5791u | u_input.a.x), ~var_0.x, _wgslsmith_f_op_f32(ceil(var_4.b.b))), Struct_3(Struct_2(reverseBits(var_4.a.a), var_4.b, min(0i >> (u_input.a.x % 32u), 4804i), var_4.b, select(select(var_4.a.e, var_4.a.e, vec4<bool>(true, var_2.x, var_2.x, false)), vec4<bool>(true, var_2.x, false, true), true)), Struct_1(countOneBits(abs(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(561f, 377f)), false, var_1.d), 0i, var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, var_5.b.a.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_4.b.b, 135f))), ~vec4<u32>(var_4.a.b.d, 12181u, ~14958u, firstTrailingBit(4294967295u) | u_input.a.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~21869u, ~var_5.b.a.b.d, u_input.a.x, ~1u), ~min(vec4<u32>(var_4.a.b.d, var_1.d, 4294967295u, var_5.a.b.d), vec4<u32>(65316u, var_4.b.d, var_4.b.d, u_input.a.x))), 11992u, 76232u));
}

