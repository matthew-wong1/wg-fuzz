struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1() -> Struct_1 {
    let var_0 = 175076u;
    let var_1 = ~_wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(4294967295u, u_input.b.x, var_0))), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(174u, 4294967295u, 18281u), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(var_0, u_input.b.x, 4294967295u)))));
    var var_2 = _wgslsmith_f_op_f32(floor(1f));
    let var_3 = u_input.b;
    var var_4 = 1f;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(154f - 287f), _wgslsmith_f_op_f32(1147f - -206f))))));
}

fn func_3(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-401f, -1647f, true)) - _wgslsmith_f_op_f32(select(-1000f, 1169f, false)))) + -1177f) + 119f);
    var var_1 = _wgslsmith_mult_vec2_u32(abs(min(u_input.c << (~vec2<u32>(4294967295u, 47258u) % vec2<u32>(32u)), u_input.a.xz)), ~u_input.c);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1084f)) + -162f), -984f);
    var_1 = u_input.a.xx;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, _wgslsmith_f_op_f32(1414f + _wgslsmith_f_op_f32(f32(-1f) * -284f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2763f, 1764f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-105f, -2386f)) - vec2<f32>(646f, 999f)))))));
    return func_1();
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3.a;
    var_0 = func_3(u_input.b.x);
    var_0 = func_1();
    var_0 = Struct_1(_wgslsmith_f_op_f32(select(-185f, func_3(24606u).a, false)));
    let var_1 = arg_3.b;
    return Struct_1(-557f);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(1516f + -1308f))))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1829f)), func_2(19042i, reverseBits(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.e), vec3<i32>(-1i, u_input.d, u_input.d)))), vec4<f32>(933f, arg_1.a, arg_1.a, _wgslsmith_f_op_f32(961f * _wgslsmith_f_op_f32(arg_1.a - var_0.b.a))), Struct_2(func_1(), func_3(firstTrailingBit(u_input.c.x)))));
    var var_1 = Struct_1(1016f);
    var_1 = func_1();
    let var_2 = u_input.a.x;
    return Struct_1(-1000f);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = vec3<i32>(-u_input.e, firstLeadingBit(min(abs(_wgslsmith_mult_i32(0i, u_input.e)), u_input.d | firstTrailingBit(9149i))), i32(-1i) * -49566i);
    var var_1 = Struct_1(-244f);
    let var_2 = _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, 17197i ^ ~var_0.x, u_input.e, var_0.x), firstLeadingBit(~firstLeadingBit(vec4<i32>(0i, -63598i, var_0.x, u_input.e) ^ vec4<i32>(39626i, u_input.d, -68974i, var_0.x))));
    let var_3 = var_0.x >> (((u_input.c.x >> (1u % 32u)) & u_input.c.x) % 32u);
    var var_4 = arg_1;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 23946u;
    let var_1 = func_5(func_4(min(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -41835i), vec2<i32>(u_input.d, u_input.e) << (u_input.c % vec2<u32>(32u))), u_input.d), func_2(u_input.e, 0i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1493f, -631f, 541f, 441f)), Struct_2(func_1(), Struct_1(-666f)))), !vec4<bool>(false, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), select(false, true, true) & any(vec3<bool>(false, true, false))));
    var var_2 = ~u_input.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_2.x, min(var_2.x << (49353u % 32u), u_input.b.x), _wgslsmith_div_u32(~(~u_input.b.x), 0u)), vec2<i32>(11707i, -31672i) << (_wgslsmith_sub_vec2_u32(u_input.b.yy, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b.x), u_input.b.zx), u_input.b.x)) % vec2<u32>(32u)), vec3<i32>(select(-1i, 0i, u_input.a.x > 92361u), ~u_input.d << (countOneBits(1u) % 32u), u_input.d) ^ -_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(29522i, u_input.d, u_input.e)), vec3<i32>(-1i, u_input.d, u_input.d)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c.x, 24291u ^ var_2.x), ~max(~vec2<u32>(var_2.x, var_2.x), vec2<u32>(var_2.x, u_input.a.x))), _wgslsmith_dot_vec3_u32(~reverseBits(select(vec3<u32>(u_input.c.x, 0u, var_2.x), u_input.a, vec3<bool>(true, false, true))), vec3<u32>(_wgslsmith_add_u32(u_input.c.x | 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 54002u, 1u), u_input.a)), var_2.x, u_input.c.x)));
}

