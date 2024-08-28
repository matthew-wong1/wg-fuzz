struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1) -> bool {
    let var_0 = u_input.c;
    var var_1 = u_input.c.x;
    var_1 = -58339i;
    var_1 = _wgslsmith_clamp_i32(arg_0.b.a.x, reverseBits(28606i), 31740i);
    var_1 = firstTrailingBit(i32(-1i) * -1i);
    return arg_0.c.a;
}

fn func_3() -> vec3<i32> {
    var var_0 = abs(~1u) & _wgslsmith_mult_u32(countOneBits(13685u & (u_input.b.x | u_input.b.x)), u_input.b.x);
    var_0 = ~4294967295u;
    let var_1 = min(vec2<i32>(-_wgslsmith_div_i32(-u_input.d.x, u_input.c.x), ~(-1i) ^ (0i ^ (u_input.d.x | u_input.d.x))), (vec2<i32>(-1i) * -(vec2<i32>(u_input.c.x, 15044i) | u_input.d)) & (_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, 1i), -u_input.d) >> (vec2<u32>(~27242u, u_input.a.x) % vec2<u32>(32u))));
    var var_2 = Struct_4(Struct_3(max(u_input.a.yz, max(u_input.a.yx, u_input.b.xx) << (max(u_input.a.yw, u_input.b.xy) % vec2<u32>(32u))), Struct_2(vec3<i32>(~2147483647i, -2147483647i, -2147483647i), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 26508u, u_input.b.x, u_input.a.x), vec4<u32>(u_input.b.x, u_input.b.x, 22364u, u_input.b.x)), true, Struct_1(true)), Struct_1(func_1(Struct_3(vec2<u32>(u_input.b.x, u_input.b.x), Struct_2(vec3<i32>(40048i, 2147483647i, -34148i), u_input.a, false, Struct_1(false)), Struct_1(true), Struct_1(false), vec2<f32>(-2186f, 863f)), Struct_4(Struct_3(u_input.a.zw, Struct_2(u_input.c, vec4<u32>(0u, u_input.a.x, 0u, u_input.a.x), true, Struct_1(false)), Struct_1(false), Struct_1(false), vec2<f32>(632f, -954f)), Struct_1(true), Struct_2(u_input.c, vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b.x), true, Struct_1(true)), Struct_1(false), u_input.c), Struct_1(false))), Struct_1(true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1047f, -878f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1071f, -1425f), vec2<f32>(-304f, -887f))))))), Struct_1(1i < _wgslsmith_mult_i32(abs(-9611i), u_input.d.x)), Struct_2(vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_add_vec3_i32(u_input.c, u_input.c)), _wgslsmith_add_i32(-var_1.x, ~u_input.d.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(0u, 4294967295u, u_input.b.x, 74258u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, 5387u), u_input.b)), _wgslsmith_clamp_vec4_u32(u_input.b, reverseBits(vec4<u32>(4294967295u, 1u, 85386u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.b.x, 14868u, 70349u))), false, Struct_1(all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false))))), Struct_1(!all(vec2<bool>(true, true))), vec3<i32>(var_1.x, u_input.c.x, _wgslsmith_mod_i32(-65850i, max(_wgslsmith_mod_i32(var_1.x, -1i), 25081i))));
    var var_3 = 1u;
    return select(_wgslsmith_mult_vec3_i32(abs(var_2.a.b.a), -firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, u_input.d.x, -2147483647i), vec3<i32>(var_1.x, 2147483647i, 0i)))), vec3<i32>(-50827i, 0i ^ ~_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(1i, u_input.d.x)), _wgslsmith_sub_i32(0i, _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, -2147483647i), 19029i))), true);
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_4(Struct_3(~u_input.a.zz, Struct_2(func_3(), (u_input.a >> (u_input.a % vec4<u32>(32u))) ^ ~vec4<u32>(37977u, u_input.b.x, 1u, 4294967295u), true, Struct_1(true)), Struct_1(1i < ~u_input.c.x), Struct_1(false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1082f, -755f) * vec2<f32>(-1094f, 293f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(503f, -1000f), vec2<f32>(-241f, -627f))), true)))), Struct_1(!(_wgslsmith_f_op_f32(round(-804f)) <= _wgslsmith_f_op_f32(select(-739f, 1028f, false)))), Struct_2(-(~u_input.c << (~vec3<u32>(4294967295u, 23411u, 14483u) % vec3<u32>(32u))), ~(~vec4<u32>(u_input.b.x, u_input.b.x, 788u, 1u)), true, Struct_1(_wgslsmith_f_op_f32(max(-1589f, -3002f)) >= _wgslsmith_f_op_f32(trunc(-196f)))), Struct_1(true), u_input.c);
    var var_1 = var_0;
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_f32(min(-330f, var_1.a.e.x));
    return var_2.a;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec2<i32>) -> bool {
    let var_0 = vec2<u32>(min(arg_1.a.x, ~4294967295u), abs(4294967295u)) | arg_1.a;
    var var_1 = arg_1.e.x;
    var var_2 = arg_1.c;
    var var_3 = _wgslsmith_dot_vec2_u32(max(max(~arg_1.a, arg_1.a), vec2<u32>(var_0.x, _wgslsmith_clamp_u32(var_0.x, arg_1.a.x, arg_1.b.b.x))), u_input.a.yx) < var_0.x;
    var_3 = -438f <= arg_1.e.x;
    return select(-13182i, _wgslsmith_sub_i32(u_input.d.x, arg_3.x), any(vec4<bool>(false, false, arg_1.b.d.a, any(vec3<bool>(true, arg_2.x, arg_2.x))))) < 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~firstLeadingBit(13581i));
    let var_1 = ~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(~(24902u ^ u_input.a.x), abs(firstLeadingBit(u_input.b.x)), ~u_input.a.x, u_input.a.x));
    var var_2 = select(~vec4<i32>(-2147483647i, ~var_0, -68614i, _wgslsmith_clamp_i32(1i, ~u_input.d.x, var_0 & 2147483647i)), vec4<i32>(u_input.c.x, u_input.d.x, max(0i, ~(~u_input.d.x)), u_input.d.x), !vec4<bool>(false, !all(vec3<bool>(true, true, true)), func_4(func_1(Struct_3(u_input.b.wx, Struct_2(u_input.c, vec4<u32>(0u, u_input.b.x, 4294967295u, 27035u), true, Struct_1(true)), Struct_1(false), Struct_1(true), vec2<f32>(-1062f, 2033f)), Struct_4(Struct_3(u_input.b.wy, Struct_2(vec3<i32>(58398i, 18752i, var_0), vec4<u32>(106937u, 1u, var_1.x, var_1.x), true, Struct_1(true)), Struct_1(false), Struct_1(false), vec2<f32>(-899f, -501f)), Struct_1(true), Struct_2(vec3<i32>(var_0, var_0, u_input.d.x), u_input.b, true, Struct_1(false)), Struct_1(false), u_input.c), Struct_1(true)), func_2(), vec2<bool>(true, true), u_input.c.zz >> (vec2<u32>(var_1.x, 27028u) % vec2<u32>(32u))), true));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-302f))));
    var_2 = _wgslsmith_add_vec4_i32((min(vec4<i32>(var_0, var_0, 1i, u_input.d.x), vec4<i32>(var_2.x, 23227i, 31342i, 2147483647i)) & ~vec4<i32>(21117i, var_2.x, var_0, u_input.c.x)) << (~vec4<u32>(41889u, 0u, u_input.a.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(~(-38828i), u_input.c.x), select(75036i, min(-2147483647i, u_input.c.x), true), i32(-1i) * -2147483647i, u_input.d.x)) & vec4<i32>(_wgslsmith_div_i32(var_0, var_0), var_2.x, -_wgslsmith_add_i32(-var_2.x, _wgslsmith_add_i32(-40945i, var_2.x)), func_3().x);
    var var_4 = var_2.x;
    var_2 = vec4<i32>(-func_2().b.a.x, abs(var_0), var_0, u_input.c.x);
    var var_5 = _wgslsmith_f_op_f32(666f - var_3);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3, var_3, _wgslsmith_f_op_f32(select(535f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-668f, var_3)) + -1060f), true))), ~(~(~(var_2.x ^ 2147483647i))), -1778f, -9948i);
}

