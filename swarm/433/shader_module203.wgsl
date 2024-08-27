struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_2(abs(4294967295u));
    return Struct_2(_wgslsmith_add_u32(u_input.a.x, 1u ^ (min(var_0.a, u_input.a.x) >> (10672u % 32u))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var_0 = Struct_1(reverseBits(abs(var_0.d)), arg_0.b, _wgslsmith_add_vec4_i32(abs(abs(arg_0.c) | vec4<i32>(-786i, arg_0.c.x, u_input.e, arg_0.c.x)), min(vec4<i32>(2147483647i, 2147483647i, var_0.c.x, 1i), arg_0.c) >> ((u_input.a << (vec4<u32>(39239u, var_0.a, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), u_input.a.x);
    var_0 = Struct_1(func_1(6253i).a, var_0.b, _wgslsmith_div_vec4_i32(select(vec4<i32>(-1i, arg_0.c.x, u_input.c.x, -1i) ^ firstTrailingBit(vec4<i32>(arg_0.c.x, 0i, -79847i, var_0.c.x)), arg_0.c ^ ~u_input.b, vec4<bool>(!var_0.b, all(vec4<bool>(true, false, false, arg_0.b)), var_0.b, !var_0.b)), _wgslsmith_mult_vec4_i32(~countOneBits(u_input.b), -vec4<i32>(var_0.c.x, arg_0.c.x, u_input.b.x, -29431i))), 0u);
    var var_1 = max(vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.d, arg_0.d, var_0.d, arg_0.a)), countOneBits(u_input.a.x)), func_1(var_0.c.x).a), _wgslsmith_sub_vec2_u32(vec2<u32>(~arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(7853u, u_input.d, 89977u, var_0.a), abs(vec4<u32>(var_0.a, u_input.a.x, 4294967295u, u_input.a.x)))), u_input.a.ww));
    let var_2 = u_input.a.x;
    return _wgslsmith_sub_i32(35176i, _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(arg_0.c, var_0.c) & -20578i, 2147483647i | var_0.c.x));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_2(u_input.a.x);
    var var_1 = func_1(-2147483647i);
    let var_2 = Struct_1(10136u, (!arg_0.x | arg_0.x) || true, u_input.b, ~firstLeadingBit(u_input.a.x));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -140f);
    var_1 = func_1(_wgslsmith_clamp_i32(-1i >> ((~var_1.a >> (71476u % 32u)) % 32u), var_2.c.x, reverseBits(11151i) >> (arg_1.a % 32u)));
    return _wgslsmith_dot_vec4_u32(countOneBits(~select(vec4<u32>(1u, 4294967295u, 1u, 43697u), u_input.a, vec4<bool>(var_2.b, false, true, arg_0.x))) & _wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_1.a, arg_1.a, arg_1.a, 43701u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, 34673u, var_1.a, 4294967295u), ~u_input.a)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-(u_input.c.x ^ -(u_input.b.x >> (0u % 32u))));
    var var_1 = func_1(23223i);
    var var_2 = func_1(func_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, var_1.a, 7381u), vec3<u32>(var_0.a, 1u, var_1.a)), 116898u), _wgslsmith_sub_u32(0u, var_1.a) >= (var_0.a << (0u % 32u)), u_input.b, 63289u)));
    var_1 = Struct_2(~func_1(-(i32(-1i) * -46377i)).a);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(237f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(886f + _wgslsmith_f_op_f32(433f - -1768f)) - 1400f)), _wgslsmith_div_f32(207f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1250f, 372f)), _wgslsmith_div_f32(-529f, 745f)))))), (true | (all(vec3<bool>(true, true, false)) || any(vec4<bool>(false, false, false, true)))) && true));
    var_2 = Struct_2(40326u);
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(389f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1665f - _wgslsmith_f_op_f32(abs(799f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-730f)) * _wgslsmith_f_op_f32(sign(845f)))))) - 1523f);
    var_0 = func_1(~(-firstTrailingBit(0i)));
    var_1 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.a.zy, max(vec2<u32>(func_3(vec3<bool>(true, false, false), Struct_2(u_input.d)), _wgslsmith_mult_u32(10224u, 161453u)), u_input.a.xz)));
    let x = u_input.a;
    s_output = StorageBuffer(1f, min(-vec3<i32>(func_2(Struct_1(1u, false, vec4<i32>(-12349i, u_input.c.x, u_input.b.x, u_input.c.x), 1u)), -9367i, _wgslsmith_sub_i32(u_input.b.x, 46566i)), u_input.c), 1i & -_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.c.x, u_input.b.x, 0i, 4473i), u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 42629i, u_input.e, u_input.e), vec4<i32>(u_input.c.x, 44461i, 1i, -53251i))), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.a, max(23181u, select(u_input.a.x, var_2.a, false)), u_input.a.x), abs(select(u_input.a.wxw, u_input.a.zzz, any(vec4<bool>(false, true, false, true)))), (countOneBits(vec3<u32>(8313u, var_2.a, 112522u)) ^ vec3<u32>(0u, 4294967295u, u_input.a.x)) << (u_input.a.wyw % vec3<u32>(32u))));
}

