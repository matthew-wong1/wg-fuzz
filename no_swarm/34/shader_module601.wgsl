struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    var var_0 = -51389i;
    let var_1 = true;
    var_0 = -1176i;
    let var_2 = true;
    var_0 = -1i << (select(~517u, countOneBits(15929u), var_1) % 32u);
    return ~(~vec3<i32>((arg_1 & arg_1) << (9804u % 32u), 2147483647i, ~1i));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_3(Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.a & 4009u, u_input.a, u_input.a)), Struct_1(abs(reverseBits(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-435f, 421f, -1827f, 1536f), vec4<f32>(322f, 878f, -417f, 265f), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-958f, -394f, 590f, 859f)), all(vec3<bool>(false, true, true)) || false))), 15069u | u_input.a, !select(true, true, !all(vec2<bool>(false, false))));
    var var_1 = max(u_input.a, countOneBits(countOneBits(1u) & max(0u ^ var_0.a.b.a.x, 46017u)));
    var var_2 = -780f;
    let var_3 = vec3<bool>(false, var_0.c, all(!vec4<bool>(all(vec2<bool>(var_0.c, var_0.c)), true, select(true, false, false), true)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x));
    return _wgslsmith_f_op_vec4_f32(-var_0.a.c);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = 4294967295u;
    let var_1 = Struct_3(Struct_2(arg_1.a, Struct_1(~vec4<u32>(var_0, 48352u, arg_0.a.a.x, 1u)), _wgslsmith_f_op_vec4_f32(func_3())), _wgslsmith_div_u32(u_input.a, _wgslsmith_mult_u32(0u, u_input.a)), true);
    var var_2 = vec3<i32>(_wgslsmith_div_i32(66006i, _wgslsmith_mult_i32(60048i, max(-1i, 7999i))) | _wgslsmith_mod_i32(-8629i, _wgslsmith_div_i32(countOneBits(-47663i), _wgslsmith_clamp_i32(-27706i, -2147483647i, -1i))), _wgslsmith_div_i32(abs(i32(-1i) * -15588i), -40014i), 5842i & (25771i >> (countOneBits(select(0u, arg_1.a.a.x, var_1.c)) % 32u)));
    var var_3 = var_1.a.a;
    var var_4 = var_1.b;
    return _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_2.x, var_2.x), var_2.x, abs(var_2.x)), vec3<i32>(reverseBits(var_2.x >> (~56985u % 32u)), var_2.x, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(~(vec4<u32>(34711u, 54217u, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 0u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, 22661i >> (u_input.a % 32u)), -84652i >> ((u_input.a | 65615u) % 32u)) << (0u % 32u));
    var_0 = (_wgslsmith_sub_vec3_i32(func_2(Struct_2(Struct_1(vec4<u32>(u_input.a, 9187u, 1u, u_input.a)), Struct_1(vec4<u32>(1u, 1u, 59883u, u_input.a)), vec4<f32>(1000f, -605f, 560f, -883f)), Struct_2(Struct_1(vec4<u32>(u_input.a, u_input.a, 31191u, u_input.a)), Struct_1(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), vec4<f32>(-1705f, -179f, 820f, -306f))), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(var_0.x, var_0.x, -2147483647i)), vec3<i32>(-39972i, -56392i, var_0.x))) << (select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), ~vec3<u32>(52706u, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u) | vec3<u32>(u_input.a, u_input.a, u_input.a)), true) % vec3<u32>(32u))) ^ select(vec3<i32>(~(-1i) >> ((u_input.a ^ 4294967295u) % 32u), -1i, _wgslsmith_clamp_i32(~31543i, ~var_0.x, -var_0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, ~(-15347i), _wgslsmith_mod_i32(0i, var_0.x)), countOneBits(vec3<i32>(var_0.x, var_0.x, var_0.x))), !vec3<bool>(true, all(vec4<bool>(true, true, true, false)), false));
    let var_1 = Struct_3(Struct_2(Struct_1(vec4<u32>(firstTrailingBit(49347u), 0u, _wgslsmith_clamp_u32(4294967295u, 35910u, u_input.a), 31502u)), Struct_1(countOneBits(vec4<u32>(u_input.a, 120476u, u_input.a, 17040u) << (vec4<u32>(0u, u_input.a, u_input.a, 44009u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(297f, -750f, 1331f, -1649f), vec4<f32>(-517f, -1643f, -2282f, 1000f), false)))))), ~(abs(_wgslsmith_mod_u32(u_input.a, u_input.a)) ^ _wgslsmith_mult_u32(abs(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), true);
    var var_2 = var_1.a;
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.c.x)) - var_1.a.c.x) + var_1.a.c.x) - _wgslsmith_f_op_f32(-var_2.c.x)), ~var_1.a.b.a.x);
}

