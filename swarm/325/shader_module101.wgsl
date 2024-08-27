struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    var var_0 = !(!(!(!(0u < arg_0.c.x))));
    var_0 = all(arg_1.e);
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-398f - arg_1.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.c, arg_1.c)), 1f)))));
    var_0 = select(all(arg_1.e.xx), false, false);
    var_0 = !(u_input.b.x == 14317i);
    return var_1.x;
}

fn func_2(arg_0: f32, arg_1: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), 204f), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(arg_0 - 447f)), 1417f))) > _wgslsmith_f_op_f32(_wgslsmith_div_f32(-263f, _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(func_3(Struct_1(u_input.d, u_input.c.x, vec4<u32>(u_input.d.x, u_input.c.x, u_input.d.x, 4294967295u), vec4<u32>(1u, u_input.d.x, 4294967295u, u_input.d.x)), Struct_3(Struct_1(u_input.c.yzy, u_input.c.x, vec4<u32>(u_input.c.x, 50379u, 5754u, 1u), vec4<u32>(u_input.d.x, 62102u, u_input.d.x, u_input.c.x)), Struct_2(vec2<u32>(19625u, u_input.c.x), Struct_1(vec3<u32>(u_input.c.x, 4294967295u, 62673u), u_input.c.x, vec4<u32>(u_input.c.x, 50041u, u_input.c.x, u_input.d.x), vec4<u32>(1u, u_input.c.x, 0u, 4294967295u)), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 192u), 62965u, u_input.c, vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.c.x))), 429f, vec4<u32>(4294967295u, u_input.c.x, 0u, u_input.d.x), vec3<bool>(true, true, false)))))) - 1975f);
    var var_1 = Struct_1(u_input.d, _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), 42922u), ~abs(~(~vec4<u32>(u_input.d.x, 130520u, u_input.c.x, 16613u))), ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, u_input.c.x, 85764u), vec4<u32>(14600u, 1u, 57515u, u_input.c.x), u_input.c) ^ vec4<u32>(4294967295u, 25565u, 7747u, u_input.c.x)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.d.x, u_input.c.x >> (4294967295u % 32u), u_input.d.x >> (u_input.c.x % 32u), 28520u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 68355u), u_input.c), ~u_input.c | vec4<u32>(42377u, u_input.d.x, 4294967295u, u_input.c.x)));
    let var_2 = !(!(!(!vec4<bool>(var_0, true, false, var_0))));
    var_1 = Struct_1(abs(u_input.c.xzy), var_1.b, ~max(u_input.c, vec4<u32>(~11370u, ~var_1.b, 1u, min(4294967295u, var_1.d.x))), ~max(~u_input.c, u_input.c));
    let var_3 = vec2<i32>(select(firstTrailingBit(firstTrailingBit(u_input.b.x)), ~(i32(-1i) * -2147483647i), any(var_2)), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.b.yx | vec2<i32>(u_input.a, -3057i))) & ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-8096i, 64067i, 16132i), u_input.b), _wgslsmith_sub_i32(arg_1, u_input.a)));
    return select(select(var_2, var_2, !select(!var_2, var_2, true)), !(!var_2), all(vec2<bool>(true, true)));
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_3(Struct_1(u_input.c.xww, select(0u, _wgslsmith_div_u32(1u, 0u >> (u_input.c.x % 32u)), all(func_2(393f, 1i))), (u_input.c << (u_input.c % vec4<u32>(32u))) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c.x, 1u, u_input.c.x), vec4<u32>(u_input.c.x, 29645u, 4294967295u, 1u)) ^ vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)) % vec4<u32>(32u)), vec4<u32>(0u, select(abs(u_input.c.x), u_input.d.x, u_input.a == u_input.a), min(~9093u, firstTrailingBit(49153u)), u_input.c.x)), Struct_2(~abs(vec2<u32>(11422u, u_input.d.x)), Struct_1(abs(vec3<u32>(0u, 5336u, u_input.d.x)), u_input.c.x, u_input.c ^ firstTrailingBit(vec4<u32>(u_input.c.x, 0u, u_input.d.x, u_input.d.x)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, 45750u, 25853u), u_input.c), ~u_input.c)), Struct_1(_wgslsmith_mod_vec3_u32(u_input.d, u_input.c.xyx) >> (vec3<u32>(1u, u_input.c.x, 84280u) % vec3<u32>(32u)), u_input.c.x, abs(vec4<u32>(6745u, 0u, u_input.d.x, 0u)) | u_input.c, u_input.c)), 1000f, u_input.c, !select(vec3<bool>(true, true, true), func_2(-1000f, -u_input.a).xww, any(vec3<bool>(false, true, true))));
    return Struct_3(var_0.b.b, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(524f, var_0.c) + 350f), select(vec4<u32>(_wgslsmith_mult_u32(40030u, var_0.a.b), 0u, var_0.a.b, 0u | var_0.b.c.c.x) & (~vec4<u32>(1u, u_input.c.x, var_0.d.x, u_input.c.x) << (~u_input.c % vec4<u32>(32u))), ~(~vec4<u32>(var_0.a.a.x, var_0.b.b.c.x, 1u, 28809u)), vec4<bool>(true, true, all(!vec4<bool>(true, var_0.e.x, var_0.e.x, false)), var_0.e.x && any(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, true)))), select(func_2(1488f, abs(_wgslsmith_add_i32(u_input.a, u_input.a))).xww, select(var_0.e, select(vec3<bool>(var_0.e.x, var_0.e.x, false), vec3<bool>(false, false, var_0.e.x), var_0.e.x), vec3<bool>(any(vec4<bool>(true, var_0.e.x, var_0.e.x, true)), !var_0.e.x, false)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(Struct_1(select(_wgslsmith_sub_vec3_u32(vec3<u32>(14013u, 23270u, var_0.d.x) >> (vec3<u32>(56049u, 1u, var_0.b.b.d.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.d.x, 4294967295u), vec3<u32>(0u, u_input.d.x, 36045u))), u_input.d, !(!var_0.e.x)), var_0.d.x, u_input.c & ~vec4<u32>(u_input.d.x, 93551u, u_input.d.x, u_input.c.x), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.a.c, vec4<u32>(u_input.d.x, u_input.c.x, 40441u, 35164u)), min(vec4<u32>(var_0.b.b.d.x, 53051u, var_0.d.x, 0u), u_input.c))), var_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-866f * 1142f)))))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_0.b.b.a.x | var_0.d.x, select(var_0.a.a.x, 4294967295u, var_0.e.x)), 0u, u_input.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(58442u, var_0.b.b.c.x, 928u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, var_0.b.c.d.x, 35741u), u_input.c.xww, vec3<u32>(1u, var_0.a.c.x, 37408u)))), vec4<u32>(~4294967295u, _wgslsmith_mod_u32(38233u, min(var_0.a.c.x, 11355u)), 5672u, reverseBits(1u))), vec3<bool>(_wgslsmith_mult_i32(u_input.a, 20123i) < -1i, !(!var_0.e.x), !(!(0u < u_input.d.x))));
    let var_1 = var_0.e.yy;
    var var_2 = Struct_2(u_input.c.zw, func_1().a, func_1().b.b);
    var_2 = Struct_2(select(~u_input.c.yx & vec2<u32>(var_0.b.b.d.x, 4294967295u), ~(~u_input.d.xx), select(vec2<bool>(var_0.e.x, func_2(466f, 24089i).x), var_0.e.zy, u_input.b.x <= -10859i)), var_0.b.c, var_0.b.c);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(var_2.a.x, 54574u)), vec2<u32>(0u, var_0.d.x)));
}

