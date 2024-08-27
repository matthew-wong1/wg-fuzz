struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec3<u32>(u_input.c, _wgslsmith_add_u32(countOneBits(0u), u_input.d), _wgslsmith_add_u32(firstTrailingBit(u_input.c), u_input.c)), u_input.b, _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(117295u, u_input.c, 4027u, u_input.d), vec4<u32>(21430u, 4294967295u, u_input.c, u_input.c) & vec4<u32>(41717u, u_input.d, u_input.d, 4294967295u), ~vec4<u32>(28099u, u_input.d, u_input.d, 68971u)) << (abs(vec4<u32>(u_input.c, u_input.d, u_input.c, u_input.d)) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_mult_u32(106619u, u_input.c), u_input.c, max(55524u, u_input.d), abs(4294967295u))), u_input.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1284f * -261f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(293f, 568f, true)), -878f))), any(vec3<bool>(true, true, true)) & true)));
    var_0 = Struct_1(min(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(16u, 73571u, u_input.c), vec3<u32>(39035u, var_0.c.x, 0u)), ~var_0.c.yww), abs(~var_0.c.yyx)) ^ abs(~select(vec3<u32>(34129u, 0u, var_0.d), var_0.a, vec3<bool>(false, true, true))), ~56489i, var_0.c, var_0.a.x, _wgslsmith_f_op_f32(-var_0.e));
    let var_1 = vec3<i32>(~2147483647i, i32(-1i) * -2147483647i, _wgslsmith_add_i32(-countOneBits(reverseBits(2147483647i)), var_0.b));
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(4263u, 0u, countOneBits(0u)), _wgslsmith_mult_vec3_u32(abs(var_0.c.xyy), firstLeadingBit(vec3<u32>(var_0.c.x, 1u, 41675u))) ^ select(~var_0.c.www, firstTrailingBit(vec3<u32>(13002u, var_0.d, 14522u)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), vec3<u32>(firstTrailingBit(~var_0.a.x), _wgslsmith_mod_u32(1u, 72164u), 105586u)), ~(-firstTrailingBit(1i)), ~(~vec4<u32>(min(4294967295u, var_0.d), var_0.d ^ var_0.d, 48352u, ~var_0.d)), select(u_input.c, 1u, true), _wgslsmith_f_op_f32(-686f * -111f));
    var_0 = Struct_1(max(~(~vec3<u32>(u_input.c, 100051u, var_2.d)), var_0.a ^ vec3<u32>(var_2.c.x, 1u, countOneBits(var_0.d))), var_2.b, var_0.c, ~(~var_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1475f));
    return 1u;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_div_u32(15085u, func_3());
    let var_1 = _wgslsmith_mult_vec4_u32(select(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 1u, 27716u, 1u), vec4<u32>(20826u, u_input.c, u_input.d, var_0)), vec4<u32>(u_input.c, 51542u, var_0, 22556u) << (vec4<u32>(u_input.d, u_input.d, var_0, 1u) % vec4<u32>(32u))), vec4<u32>(40873u, var_0, u_input.c, 27605u) << (firstLeadingBit(vec4<u32>(1u, 1u, u_input.d, 4294967295u)) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)) >> (abs(~_wgslsmith_add_vec4_u32(vec4<u32>(11331u, u_input.c, var_0, 4294967295u), vec4<u32>(var_0, var_0, u_input.c, 57712u))) % vec4<u32>(32u)), reverseBits((vec4<u32>(67767u, var_0, 34353u, 1u) << (~vec4<u32>(u_input.c, u_input.c, var_0, var_0) % vec4<u32>(32u))) & vec4<u32>(1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.c, 4294967295u)), ~var_0)));
    let var_2 = vec4<bool>(all(!vec4<bool>(false, true, all(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, true, true, true)))), all(!select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))), true & (40631u != max(_wgslsmith_dot_vec2_u32(var_1.wx, var_1.wy), 1u & var_1.x)), false);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(675f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1848f, 578f) + 271f), _wgslsmith_f_op_f32(max(-2907f, -520f)))), false))));
    let var_4 = var_2.zzx;
    return var_2.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~firstLeadingBit(abs(vec3<u32>(4294967295u, u_input.d, u_input.d)) | (vec3<u32>(u_input.c, u_input.c, 25667u) << (vec3<u32>(1u, 40183u, 96343u) % vec3<u32>(32u)))), u_input.a.x, ~(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, 23701u, u_input.d, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 1u, 0u, u_input.d), vec4<u32>(u_input.c, u_input.d, u_input.d, 4294967295u))) & ~vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d)), u_input.d & ~1u, -1163f);
    var var_1 = func_2(_wgslsmith_add_i32(~u_input.a.x, ~17335i));
    var_0 = Struct_1(var_0.c.ywy, firstTrailingBit(select(1i, reverseBits(u_input.a.x), select(false, true, all(vec3<bool>(true, false, false))))), vec4<u32>(reverseBits(~var_0.d) << (var_0.d % 32u), var_0.c.x, abs(min(~u_input.c, 4294967295u)), 4294967295u), ~(~(~_wgslsmith_dot_vec2_u32(var_0.c.zy, var_0.c.wz))), _wgslsmith_f_op_f32(min(809f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(var_0.e * var_0.e)))))));
    var var_2 = var_0.e;
    var var_3 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_0.c.www, vec3<u32>(1u, ~1u, ~u_input.c)), vec3<u32>(u_input.c, select(~11962u, abs(26014u), true), ~var_0.d)), _wgslsmith_add_i32(-14135i, -(u_input.a.x << (select(1u, u_input.c, false) % 32u))), var_0.c, _wgslsmith_mod_u32(0u, var_0.c.x), var_0.e);
    return Struct_1(vec3<u32>(4294967295u, var_3.c.x, _wgslsmith_sub_u32(~(var_0.d << (28937u % 32u)), 12243u)), u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.x, u_input.c, ~0u, var_3.c.x), _wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(var_0.c, var_0.c, vec4<u32>(1u, 0u, 7486u, 1u))), var_3.c)), 4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e - _wgslsmith_f_op_f32(abs(276f))) + var_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1567f - var_3.e) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-884f * var_3.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~(~(~select(var_1.c.yw, var_1.a.xx, true))));
}

