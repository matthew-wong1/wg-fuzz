struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    var var_0 = vec3<bool>(true || !(!all(vec3<bool>(true, false, false))), false, false);
    var var_1 = !(!select(select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(false, false, var_0.x), var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x || var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, true)), select(vec3<bool>(var_0.x, var_0.x, var_0.x), select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, true, false), vec3<bool>(true, var_0.x, false)), !vec3<bool>(true, true, var_0.x))));
    var_1 = !vec3<bool>(all(!vec3<bool>(var_0.x, var_1.x, true)), !all(vec2<bool>(true, var_0.x)), var_0.x);
    var var_2 = Struct_1(_wgslsmith_sub_i32(firstTrailingBit(arg_0), 38597i), vec4<i32>(firstLeadingBit(-(-35741i << (1u % 32u))), 30481i, ~abs(_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c)), _wgslsmith_sub_i32(abs(1i | u_input.c), arg_0 | _wgslsmith_clamp_i32(arg_0, -1i, arg_0))), vec3<i32>(~u_input.c, max(abs(_wgslsmith_mod_i32(11151i, 2147483647i)), u_input.c), ~(~2117i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(887f, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1918f, arg_1, arg_1) - vec3<f32>(425f, -170f, 881f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    var var_3 = abs(var_2.b.zzx);
    return firstTrailingBit(abs(i32(-1i) * -2147483647i));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    let var_0 = 0i;
    var var_1 = Struct_1(var_0 & _wgslsmith_mult_i32(16019i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, 51131i), vec4<i32>(2147483647i, 0i, -8657i, var_0)), var_0, reverseBits(u_input.c))), vec4<i32>(_wgslsmith_clamp_i32(var_0 >> (_wgslsmith_mod_u32(23146u, 7064u) % 32u), 20391i, var_0), select(i32(-1i) * -var_0, 0i | u_input.c, true), _wgslsmith_mult_i32(-u_input.c, -2147483647i), min(_wgslsmith_mod_i32(-13391i, ~(-2147483647i)), _wgslsmith_mod_i32(abs(-4140i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, -1546i), vec3<i32>(var_0, var_0, -1i))))), vec3<i32>(func_3(u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -989f)), u_input.c, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(1i, 37276i)))) << ((select(~vec3<u32>(u_input.b.x, 4294967295u, arg_0), vec3<u32>(4294967295u, u_input.b.x, 3468u), false) & select(vec3<u32>(u_input.e.x, arg_0, arg_0), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 37542u, arg_0), vec3<u32>(arg_0, u_input.e.x, 4294967295u)), all(vec3<bool>(false, true, true)))) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1231f)))), _wgslsmith_f_op_f32(-204f - _wgslsmith_f_op_f32(f32(-1f) * -1931f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3934f) + -1000f), _wgslsmith_f_op_f32(step(-569f, 196f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(423f, -418f) + _wgslsmith_f_op_f32(1000f - -1677f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2095f) + _wgslsmith_f_op_f32(956f - -198f)))));
    let var_2 = 0i != select(var_1.b.x ^ abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.a, u_input.c, 0i), var_1.b)), var_1.b.x, (_wgslsmith_sub_i32(2147483647i, var_1.b.x) ^ -6205i) < ~_wgslsmith_mod_i32(-2147483647i, var_0));
    var var_3 = false;
    var_1 = Struct_1(firstTrailingBit(19633i), var_1.b, ~var_1.b.zzz, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(371f, var_1.d.x, var_1.d.x) + var_1.d))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.e, -1505f)), _wgslsmith_div_f32(var_1.e, var_1.e)), var_1.d.x, -1053f))), _wgslsmith_f_op_f32(round(-641f)));
    return var_1.c;
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.e;
    var var_1 = Struct_1(-32396i, (vec4<i32>(-1i) * -(vec4<i32>(0i, u_input.c, 786i, 2147483647i) << (vec4<u32>(u_input.d, var_0.x, u_input.b.x, 23230u) % vec4<u32>(32u)))) << (~max(vec4<u32>(u_input.b.x, 4294967295u, 0u, u_input.b.x), ~vec4<u32>(var_0.x, 0u, u_input.b.x, u_input.e.x)) % vec4<u32>(32u)), vec3<i32>(u_input.c, countOneBits(reverseBits(2147483647i)), _wgslsmith_dot_vec3_i32(select(func_2(1u), ~vec3<i32>(-16455i, u_input.c, u_input.c), vec3<bool>(true, true, false)), -(vec3<i32>(-1i, 0i, 1i) << (vec3<u32>(1u, 0u, u_input.b.x) % vec3<u32>(32u))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -109f), -993f, _wgslsmith_f_op_f32(-842f - 691f)) - vec3<f32>(1351f, _wgslsmith_f_op_f32(1108f - -317f), _wgslsmith_f_op_f32(f32(-1f) * -541f))))), -572f);
    var_1 = Struct_1(select(-var_1.a & _wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.c.x, u_input.c), 2147483647i), 1i, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))) && true), _wgslsmith_clamp_vec4_i32(var_1.b, reverseBits(var_1.b), vec4<i32>(1i, 2147483647i, ~abs(u_input.c), min(func_2(78604u).x, u_input.c))), select(var_1.c ^ vec3<i32>(countOneBits(0i), u_input.c >> (var_0.x % 32u), 37509i), firstTrailingBit(vec3<i32>(var_1.a ^ 28708i, firstLeadingBit(-48223i), -2147483647i)), vec3<bool>(u_input.c <= -u_input.c, true, !any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-735f, var_1.d.x, -224f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.e, 101f, 641f), var_1.d)), true))), 1273f);
    let var_2 = ~((2147483647i >> (abs(var_0.x << (40731u % 32u)) % 32u)) | var_1.a);
    let var_3 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 17357u, ~var_0.x), vec3<u32>(var_0.x ^ u_input.e.x, _wgslsmith_mult_u32(var_0.x, 14402u), var_0.x ^ 31181u)), vec3<u32>(min(0u, ~u_input.e.x), ~max(0u, 45553u), 1u), ~vec3<u32>(0u, ~103337u, 111809u >> (var_0.x % 32u)));
    return Struct_1(var_2 << (var_3.x % 32u), var_1.b, select(abs(vec3<i32>(2147483647i, -23760i, 1i)), ~var_1.c, vec3<bool>(_wgslsmith_mod_u32(u_input.a, var_0.x) < reverseBits(u_input.b.x), var_1.c.x > func_2(1u).x, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-588f)), var_1.d.x, var_1.d.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(948f, var_1.d.x, var_1.e), _wgslsmith_f_op_vec3_f32(var_1.d - var_1.d)))), -1332f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> StorageBuffer {
    let var_0 = arg_0.c.x | arg_0.b.x;
    return StorageBuffer(arg_0.c.xx, abs(func_1().b), arg_0.c.x, countOneBits(32138u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-11714i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.c, 0i), vec2<i32>(u_input.c, u_input.c), vec2<bool>(true, true)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.c), vec2<i32>(0i, u_input.c))), u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 36428i) | vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c))), 0i));
    let x = u_input.a;
    s_output = func_4(func_1(), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-387f * -270f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-963f + -615f), 1f)))));
}

