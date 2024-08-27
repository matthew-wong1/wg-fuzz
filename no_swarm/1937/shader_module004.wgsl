struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    var var_0 = u_input.a >> (1u % 32u);
    var var_1 = Struct_4(Struct_1(_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.b, 17681i), vec4<i32>(-31073i, u_input.b, 48167i, -33545i))), 0i), true, 18039u), (10046u >= u_input.a) != true, Struct_1(-firstTrailingBit(-1i), true, u_input.a), vec2<i32>(_wgslsmith_add_i32(~2222i, ~u_input.b), -33183i), Struct_3(select(abs(vec2<i32>(-32396i, u_input.b) ^ vec2<i32>(u_input.b, 0i)), reverseBits(select(vec2<i32>(-14205i, u_input.b), vec2<i32>(2147483647i, 41329i), vec2<bool>(true, false))), true), u_input.b));
    var var_2 = Struct_4(Struct_1(-_wgslsmith_div_i32(var_1.c.a, -49178i), !all(vec4<bool>(true, true, true, true)), 66206u), any(select(select(!vec3<bool>(var_1.c.b, var_1.b, var_1.c.b), !vec3<bool>(false, var_1.b, var_1.c.b), var_1.a.b), !(!vec3<bool>(true, var_1.a.b, var_1.c.b)), !vec3<bool>(false, true, var_1.b))), Struct_1(var_1.c.a, (!var_1.a.b & true) && any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(var_1.a.b, false))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_1.c.c, 1u) ^ vec2<u32>(u_input.a, u_input.a), vec2<u32>(40261u, 36995u), vec2<bool>(true, false)), firstLeadingBit(firstTrailingBit(vec2<u32>(var_1.a.c, 0u))))), select(abs(~vec2<i32>(u_input.b, var_1.d.x)), var_1.e.a, false), var_1.e);
    var var_3 = -abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-16116i, -48037i), var_1.e.a & var_2.e.a));
    var var_4 = vec3<i32>(_wgslsmith_add_i32(u_input.b, 1i), -528i, min(~(~min(u_input.b, u_input.b)), var_2.e.b << (u_input.a % 32u)));
    return ~vec4<i32>(_wgslsmith_clamp_i32(1i, u_input.b << (44244u % 32u), -2147483647i), 35696i, _wgslsmith_sub_i32(-64859i, -26622i), max(-u_input.b, -1i)) >> (_wgslsmith_sub_vec4_u32(max(~vec4<u32>(8178u, var_1.c.c, 0u, 23392u), countOneBits(vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u) ^ vec4<u32>(13828u, u_input.a, var_2.c.c, 67015u))), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.c, 4294967295u, min(21908u, 64809u), ~0u), vec4<u32>(var_2.a.c ^ var_2.a.c, reverseBits(12899u), 1u, _wgslsmith_clamp_u32(var_1.c.c, var_1.c.c, u_input.a)))) % vec4<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = func_3();
    var var_1 = Struct_5(Struct_2(~firstLeadingBit(1u), Struct_1(~u_input.b, true, u_input.a), countOneBits(~min(vec3<u32>(69652u, u_input.a, 1u), vec3<u32>(3258u, 42337u, u_input.a)))), Struct_2(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), abs(u_input.a)), u_input.a, 27902u), Struct_1(~max(2147483647i, var_0.x), true, u_input.a), ~(~vec3<u32>(0u, 0u, 1u))));
    return var_1.a;
}

fn func_1() -> u32 {
    var var_0 = func_2();
    var_0 = Struct_2(~max(select(u_input.a, ~91610u, true), 81387u), var_0.b, vec3<u32>(~(~35634u), u_input.a, ~_wgslsmith_dot_vec2_u32(var_0.c.xz, var_0.c.yz)));
    var_0 = func_2();
    var var_1 = _wgslsmith_sub_u32(u_input.a >> (firstTrailingBit(_wgslsmith_mod_u32(55682u, _wgslsmith_mod_u32(38866u, u_input.a))) % 32u), ~40234u);
    var_0 = func_2();
    return ~countOneBits(~(~var_0.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(0i, 43773i, u_input.b, 1i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), firstTrailingBit(vec4<i32>(-50487i, u_input.b, u_input.b, 26423i))), _wgslsmith_sub_i32(u_input.b, u_input.b) << (select(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), true) % 32u)), true, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 1590u, ~u_input.a, 47734u >> (1u % 32u)), ~vec4<u32>(24428u, u_input.a, 69033u, u_input.a)) << (u_input.a % 32u));
    let var_1 = _wgslsmith_sub_u32(~(~(var_0.c & 1u)) ^ 29712u, func_1());
    let var_2 = Struct_4(var_0, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_0.a, -1i, u_input.b), ~vec4<i32>(-18048i, 17011i, var_0.a, u_input.b)) != _wgslsmith_mod_i32(~(10407i >> (u_input.a % 32u)), 32098i), func_2().b, ~vec2<i32>(reverseBits(_wgslsmith_clamp_i32(-22541i, u_input.b, -41386i)), var_0.a), Struct_3(vec2<i32>(select(~(-1i), 1i, var_0.b), -17943i), u_input.b));
    var var_3 = func_2();
    let var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-346f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-107f + 398f), _wgslsmith_f_op_f32(round(-1587f))))), _wgslsmith_div_f32(599f, 590f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1122f, -888f))), _wgslsmith_f_op_f32(f32(-1f) * -444f))))), var_2.a.b));
    let var_5 = var_3.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(var_4, _wgslsmith_f_op_f32(var_4 * -233f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_4, 1917f)))), var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) - var_4)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4, var_4, -1068f, -270f))) + vec4<f32>(-1778f, 1677f, -275f, var_4)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4, var_4, 309f, var_4))))))), reverseBits(~countOneBits(vec2<i32>(0i, u_input.b)) | vec2<i32>(var_0.a, abs(var_2.d.x))));
}

