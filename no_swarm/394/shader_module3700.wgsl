struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_3(arg_1);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x + var_0.a.e.x)))), arg_1);
    let var_2 = var_0.a.b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(arg_1.e));
    var_1 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.e.x * var_0.a.e.x))), arg_1);
    return abs(var_0.a.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = func_3(vec3<bool>(true, -1555f == _wgslsmith_f_op_f32(sign(-775f)), any(vec2<bool>(u_input.d <= -1i, any(vec2<bool>(true, false))))), Struct_1(u_input.a & u_input.a, vec4<bool>(true, any(vec2<bool>(true, true)), false, true), ~_wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.a.yyz), u_input.a.xyy << (vec3<u32>(11880u, 32551u, 32151u) % vec3<u32>(32u))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 4951u), min(vec2<u32>(u_input.c, 0u), vec2<u32>(1u, u_input.c))), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, 58488u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(9380u, u_input.c)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1170f, 187f, -603f, -1498f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-154f, -1879f, 850f, 526f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-429f, -172f, -2056f, 800f), vec4<f32>(-117f, -365f, 1141f, 843f), false))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(2176f)), _wgslsmith_f_op_f32(sign(-1464f)), _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(-2119f * -293f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(773f, 2238f, 959f, -869f)), vec4<f32>(1903f, -841f, 762f, 1000f))))));
    let var_2 = Struct_1(vec4<i32>(~1i, -1i >> ((_wgslsmith_mod_u32(11040u, 46606u) >> (firstTrailingBit(u_input.c) % 32u)) % 32u), 13726i, ~reverseBits(-21291i) << (u_input.c % 32u)), vec4<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), any(vec4<bool>(true, true, true, true)), true, _wgslsmith_sub_u32(u_input.c << (u_input.c % 32u), ~u_input.c) == ~u_input.c), reverseBits(vec3<i32>(_wgslsmith_mult_i32(func_3(vec3<bool>(true, true, false), Struct_1(u_input.a, vec4<bool>(false, false, false, true), vec3<i32>(1i, 1i, var_0), 67514u, var_1)), -50759i), countOneBits(u_input.b.x), 1i)), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), countOneBits(~vec2<u32>(6966u, u_input.c)))), _wgslsmith_f_op_vec4_f32(select(var_1, _wgslsmith_f_op_vec4_f32(-var_1), false)));
    var var_3 = var_1.zw;
    var_3 = _wgslsmith_div_vec2_f32(var_1.wy, var_1.zw);
    return Struct_1(select(u_input.a << (vec4<u32>(~2862u, u_input.c, _wgslsmith_mult_u32(var_2.d, 1u), u_input.c) % vec4<u32>(32u)), ~(-(var_2.a ^ vec4<i32>(u_input.d, 0i, var_0, 1i))), vec4<bool>(-var_0 != -73275i, true, !(var_2.e.x < var_1.x), true)), vec4<bool>(all(vec2<bool>(true, var_2.b.x || false)), var_2.b.x, true, any(!vec2<bool>(false, var_2.b.x))), abs(u_input.a.yyw & firstTrailingBit(vec3<i32>(-1i, 1i, -1i))), ~abs(u_input.c), vec4<f32>(-672f, -1000f, 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(483f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(816f - 1071f)))))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_1(_wgslsmith_div_vec4_i32(var_0.a, vec4<i32>(~u_input.d, 2147483647i ^ u_input.d, 63106i, reverseBits(2147483647i))), var_0.b, vec3<i32>(min(29244i, u_input.b.x >> (1u % 32u)), ~min(0i, u_input.b.x), 0i), u_input.c << (abs(firstLeadingBit(0u)) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, var_0.e.x, var_0.e.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(353f, -430f, -374f, 173f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a, -1475f)) - _wgslsmith_f_op_f32(-func_2().e.x));
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2096f);
    var var_3 = !select(var_1.b.b.wzz, vec3<bool>(all(select(var_0.b.wzz, var_1.b.b.xwy, var_0.b.x)), all(var_0.b.wz), var_0.e.x == -871f), select(all(!var_1.b.b), any(select(vec4<bool>(true, var_0.b.x, true, var_0.b.x), var_1.b.b, vec4<bool>(true, true, false, var_0.b.x))), true));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 2147483647i;
    var var_2 = Struct_4(Struct_3(Struct_1(u_input.a, !var_0.b.b, vec3<i32>(var_0.b.a.x, 6217i, ~(-40092i)), u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b.e) * vec4<f32>(var_0.a, -1000f, 2264f, 2251f)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), Struct_1(select(vec4<i32>(40819i, u_input.a.x, var_0.b.a.x, 0i) & vec4<i32>(-24368i, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x), vec4<i32>(u_input.b.x, -9964i, 1i, u_input.d), func_1().b.b), var_0.b.b, func_1().b.a.wyz, ~1u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.b.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.e.x, 517f, -586f, var_0.b.e.x) * var_0.b.e))))));
    var var_3 = ~(max(~vec3<u32>(var_2.b.b.d, u_input.c, var_2.b.b.d), vec3<u32>(u_input.c, _wgslsmith_div_u32(var_2.b.b.d, 52160u), reverseBits(var_2.b.b.d))) | min(firstTrailingBit(max(vec3<u32>(1u, u_input.c, 76202u), vec3<u32>(2871u, 4294967295u, u_input.c))), vec3<u32>(0u, ~39549u, ~53358u)));
    var_3 = abs(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, var_0.b.d), 22638u, _wgslsmith_mult_u32(u_input.c, ~123449u)), firstLeadingBit(vec3<u32>(var_2.b.b.d, 23199u >> (var_3.x % 32u), var_2.b.b.d))));
    let var_4 = ~var_0.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.a.a.e.x, 718f)))), var_0.b.e.x), var_0.b.e.x, var_0.b.e);
}

