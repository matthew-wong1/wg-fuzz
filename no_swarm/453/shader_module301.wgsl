struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = Struct_2(select(u_input.d.x, u_input.c.x, !all(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, false, false)))), Struct_1(-909f, _wgslsmith_clamp_vec3_u32(select(u_input.c | vec3<u32>(49745u, 18132u, u_input.c.x), u_input.c, vec3<bool>(false, arg_0, true)), vec3<u32>(_wgslsmith_add_u32(1u, u_input.d.x), countOneBits(u_input.d.x), 18017u), ~(vec3<u32>(4294967295u, 0u, 160748u) & vec3<u32>(u_input.c.x, 15523u, 9918u))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(-2147483647i, u_input.a.x)) & vec2<i32>(u_input.b, u_input.b), max(vec2<i32>(arg_1, u_input.a.x), u_input.a | vec2<i32>(1i, arg_1))), ~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 0i, -16219i, -23274i), vec4<i32>(arg_1, arg_1, u_input.a.x, 33029i)))), Struct_1(-568f, firstLeadingBit(vec3<u32>(79825u, ~u_input.c.x, 61339u)), u_input.a.x, _wgslsmith_mod_vec4_i32(vec4<i32>(-41264i, arg_1, 0i, -32360i) >> (vec4<u32>(u_input.c.x, 32862u, 4294967295u, 4294967295u) % vec4<u32>(32u)), abs(vec4<i32>(arg_1, u_input.a.x, -2147483647i, arg_1)) & firstTrailingBit(vec4<i32>(arg_1, arg_1, arg_1, 0i)))));
    var var_1 = !vec4<bool>(all(vec2<bool>(false, true & arg_0)), arg_0, false, true);
    let var_2 = ~var_0.b.b;
    var_0 = Struct_2(reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.b.x, u_input.c.x, 1u, 41786u), vec4<u32>(u_input.c.x, 48337u, 8600u, 10926u)) ^ u_input.c.x, (var_0.a >> (var_0.a % 32u)) ^ max(4294967295u, 1u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-775f * var_0.b.a) + -754f)), ~(select(vec3<u32>(var_2.x, 17982u, var_2.x), var_2, vec3<bool>(true, arg_0, arg_0)) >> (var_2 % vec3<u32>(32u))), ~arg_1, var_0.b.d), var_0.c);
    var_1 = select(vec4<bool>(all(!vec3<bool>(false, arg_0, false)), any(var_1.xyz), !(var_0.c.a > -1000f) && var_1.x, !any(var_1.wzz)), !(!select(vec4<bool>(var_1.x, arg_0, arg_0, arg_0), select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_1.x, false, arg_0, false), vec4<bool>(arg_0, arg_0, arg_0, var_1.x)), select(vec4<bool>(var_1.x, true, false, arg_0), vec4<bool>(true, arg_0, var_1.x, false), var_1.x))), !select(select(select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(arg_0, var_1.x, arg_0, false), false), select(vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(true, false, var_1.x, arg_0), true), !vec4<bool>(false, true, arg_0, var_1.x)), !(!vec4<bool>(false, true, true, arg_0)), false));
    return ~27540u;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<u32>(u_input.c.x, 1u) & u_input.c.xz;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1678f + 1642f)))), vec3<u32>(var_0.x, ~4294967295u, func_3(all(vec3<bool>(false, true, true)) | true, 2147483647i)), ~0i & u_input.a.x, ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -26779i, -1i, 1i) & vec4<i32>(0i, -1i, 20749i, u_input.b), ~vec4<i32>(46611i, -19685i, 17429i, u_input.b), reverseBits(vec4<i32>(0i, u_input.b, u_input.a.x, -36418i))) >> (reverseBits(vec4<u32>(u_input.d.x, 45685u, 30476u, 4294967295u)) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(ceil(-532f));
    var var_3 = _wgslsmith_f_op_f32(round(-215f));
    var var_4 = firstTrailingBit(_wgslsmith_div_i32(u_input.b, max(abs(-var_1.d.x), i32(-1i) * -2147483647i)));
    return Struct_1(var_1.a, firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(27994u, var_1.b.x, u_input.c.x)), vec3<u32>(var_1.b.x, var_0.x, var_0.x) & var_1.b), func_3(false, min(var_1.c, 67504i)), 53053u)), var_1.d.x, (~max(vec4<i32>(-436i, 2147483647i, -1i, u_input.b), var_1.d) | vec4<i32>(var_1.d.x, ~0i, ~2147483647i, firstTrailingBit(u_input.b))) | var_1.d);
}

fn func_1() -> bool {
    var var_0 = u_input.d.x;
    var var_1 = Struct_2(u_input.c.x, func_2(), func_2());
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.b.a)), _wgslsmith_div_f32(-749f, -1000f)))), -446f) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a, 272f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c.a, var_1.b.a), vec2<f32>(var_1.c.a, var_1.b.a), false)))))));
    return any(select(vec3<bool>(!(u_input.b >= u_input.b), true, all(vec3<bool>(true, true, true))), vec3<bool>(_wgslsmith_mod_i32(var_1.b.d.x, 0i) > ~29680i, all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), false), all(vec3<bool>(true, true, any(vec4<bool>(true, true, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-1423f, _wgslsmith_f_op_f32(108f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1140f) - _wgslsmith_f_op_f32(step(-493f, -1327f))), -363f))));
    let var_1 = select(select(!vec2<bool>(all(vec4<bool>(true, true, false, true)), true), !vec2<bool>(true, func_1()), false), vec2<bool>(any(vec3<bool>(true, true, false)), true), !all(vec3<bool>(true, true, false)));
    var var_2 = Struct_1(var_0, min(vec3<u32>(u_input.c.x, ~u_input.d.x, ~1u), u_input.c), 78052i, countOneBits(-_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, u_input.a.x, 85629i, 57855i), vec4<i32>(u_input.b, u_input.a.x, u_input.a.x, -26217i) << (vec4<u32>(u_input.c.x, u_input.c.x, 1u, 56145u) % vec4<u32>(32u)))));
    var_2 = Struct_1(529f, abs(vec3<u32>(_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 0u >> (var_2.b.x % 32u)), ~var_2.b.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, var_2.b.x), u_input.c.xx))), reverseBits(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(var_2.d, var_2.d), _wgslsmith_mod_i32(-13604i, -12429i))), abs(var_2.d));
    var_2 = Struct_1(_wgslsmith_f_op_f32(sign(1603f)), ~_wgslsmith_clamp_vec3_u32(var_2.b >> (var_2.b % vec3<u32>(32u)), var_2.b | vec3<u32>(52868u, var_2.b.x, 4294967295u), ~u_input.c) >> (~(vec3<u32>(1u, var_2.b.x, 15587u) << ((vec3<u32>(4294967295u, var_2.b.x, u_input.c.x) << (vec3<u32>(u_input.d.x, 17892u, 60340u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), reverseBits(-firstTrailingBit(u_input.a.x)), var_2.d);
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.wzw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(1054f * 377f), _wgslsmith_f_op_f32(1452f - 280f), 1f), vec4<f32>(_wgslsmith_f_op_f32(step(var_0, -326f)), _wgslsmith_f_op_f32(var_0 * var_0), 1f, _wgslsmith_f_op_f32(step(var_2.a, var_3.a))), select(!var_1.x, !var_1.x, var_2.c >= -39945i)))));
}

