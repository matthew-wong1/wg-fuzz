struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(-692f, 214f), _wgslsmith_div_f32(1838f, 2508f), -1557f, -853f))))));
    var var_2 = _wgslsmith_clamp_i32(~(-1i), ~41010i, _wgslsmith_sub_i32(min(-11340i, 2147483647i), reverseBits(_wgslsmith_mult_i32(~0i, ~(-1443i)))));
    var_2 = ~(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i)), vec3<i32>(-1i, -23032i, u_input.b.x)) & _wgslsmith_div_i32(var_0, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 8274i, -2147483647i), vec3<i32>(var_0, 1i, u_input.b.x)))));
    return select(vec4<i32>(~(countOneBits(var_0) << (25881u % 32u)), min(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0, 1i), 0i), 48798i), -2147483647i, firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-20785i, 0i), vec2<i32>(-6695i, u_input.b.x)), -vec2<i32>(u_input.b.x, var_0)))), vec4<i32>(~var_0 << (u_input.a % 32u), _wgslsmith_mod_i32(~u_input.b.x, -6255i >> (_wgslsmith_mult_u32(0u, 0u) % 32u)), ~(~_wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), u_input.b.x), arg_0);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_2(_wgslsmith_mod_vec4_i32(func_3(true), -abs(-vec4<i32>(u_input.b.x, -1i, -1i, 60030i))), 47800u, any(vec3<bool>(true, true, true)) || any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), ~min(vec4<i32>(-1i, 32299i, u_input.b.x, u_input.b.x), ~vec4<i32>(0i, u_input.b.x, -18109i, 2460i)) & _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.b.x)), ~min(vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, 1i, -19564i))), 1i);
    var var_1 = Struct_1(max(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(85977u, 16960u), vec2<u32>(u_input.a, 71824u)) >> (~vec2<u32>(var_0.b, 31507u) % vec2<u32>(32u))), min(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, var_0.b), vec2<u32>(4294967295u, u_input.a))), firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) | vec2<u32>(1u, 4294967295u))));
    let var_2 = Struct_2(countOneBits(abs((vec4<i32>(-23557i, var_0.d.x, u_input.b.x, var_0.d.x) >> (vec4<u32>(u_input.a, 15026u, u_input.a, 32738u) % vec4<u32>(32u))) & var_0.a)), ~var_0.b, var_0.c, select(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(14509i, u_input.b.x)), u_input.b.x, -(~u_input.b.x), 1i >> (~var_1.a.x % 32u)), var_0.a, select(vec4<bool>(all(vec3<bool>(var_0.c, false, var_0.c)), any(vec4<bool>(var_0.c, true, var_0.c, var_0.c)), false, true), !(!vec4<bool>(var_0.c, true, var_0.c, false)), false)), _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), select(var_0.a.zy, vec2<i32>(var_0.d.x, var_0.d.x), vec2<bool>(true, true)))), ~(-var_0.a.yz)));
    var_1 = Struct_1(var_1.a);
    var var_3 = u_input.b.xy;
    return _wgslsmith_sub_u32(~_wgslsmith_div_u32(abs(1u), firstTrailingBit(u_input.a)), _wgslsmith_div_u32(~1u, 1u));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-541f + 1701f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(abs(124f))), _wgslsmith_f_op_f32(f32(-1f) * -1237f))));
    var var_1 = _wgslsmith_mult_u32(u_input.a >> (31965u % 32u), _wgslsmith_sub_u32(u_input.a, ~func_2(1u)));
    let var_2 = _wgslsmith_clamp_u32(~select(~1u, abs(u_input.a), abs(u_input.b.x) <= _wgslsmith_add_i32(u_input.b.x, -2147483647i)), u_input.a, ~(~(~u_input.a)));
    let var_3 = var_0.x;
    var var_4 = Struct_1(~vec2<u32>(var_2, var_2) ^ ~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(var_2, 54663u)), vec2<u32>(var_2, 12101u) >> (vec2<u32>(0u, var_2) % vec2<u32>(32u))));
    return func_3(!all(vec3<bool>(true, true, true))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~(~vec3<u32>(u_input.a, 1u, u_input.a) << ((vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)))) << ((vec3<u32>(54539u, u_input.a, 34214u) | _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), abs(vec3<u32>(u_input.a, u_input.a, 1u)) >> (abs(vec3<u32>(u_input.a, 13191u, u_input.a)) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var var_1 = select(~_wgslsmith_mod_i32(u_input.b.x, func_1()), 0i, !(false || all(vec3<bool>(false, false, true))));
    var_0 = abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a, var_0.x, u_input.a), vec4<u32>(19529u, u_input.a, var_0.x, u_input.a)), u_input.a, var_0.x >> (var_0.x % 32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(55747u, 38573u, 86978u), vec3<u32>(6825u, 48610u, var_0.x), vec3<u32>(var_0.x, u_input.a, 67808u)), ~(~vec3<u32>(39579u, var_0.x, var_0.x)))) ^ ~abs(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(61365u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, 14815u)), select(vec3<u32>(19516u, var_0.x, var_0.x), vec3<u32>(u_input.a, var_0.x, 14121u), false)));
    var_0 = vec3<u32>(~reverseBits(0u), _wgslsmith_div_u32(reverseBits(var_0.x), var_0.x), 18173u);
    var_1 = _wgslsmith_mult_i32(u_input.b.x | -1i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), u_input.b.x);
}

