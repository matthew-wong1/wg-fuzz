struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: bool) -> vec2<bool> {
    var var_0 = min(_wgslsmith_div_vec3_u32(firstLeadingBit(abs(vec3<u32>(u_input.b, 0u, 63815u))), countOneBits(firstTrailingBit(vec3<u32>(1u, 47062u, u_input.b))) >> (~vec3<u32>(25735u, 17437u, 4294967295u) % vec3<u32>(32u))), ~vec3<u32>(_wgslsmith_clamp_u32(13741u, 1u, u_input.b), _wgslsmith_sub_u32(u_input.b << (u_input.b % 32u), 75550u), ~(~u_input.d.x)));
    let var_1 = Struct_1(firstTrailingBit(~1i), !(_wgslsmith_f_op_f32(ceil(278f)) >= 880f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1068f - -1281f))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-781f * 691f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(835f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_3 | any(arg_1.wyx)))));
    var_0 = countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.d.x, abs(u_input.b), ~0u), _wgslsmith_sub_vec3_u32(~vec3<u32>(9702u, 4294967295u, var_0.x), firstLeadingBit(vec3<u32>(u_input.b, 4065u, 25866u)))) & _wgslsmith_mult_vec3_u32(~(vec3<u32>(13165u, u_input.b, u_input.b) & vec3<u32>(var_0.x, 4294967295u, 15631u)), abs(~vec3<u32>(var_0.x, 39448u, u_input.d.x))));
    let var_2 = _wgslsmith_mod_vec2_i32(arg_2.yz, _wgslsmith_mult_vec2_i32(~u_input.c.wy, ~reverseBits(countOneBits(arg_0.zx))));
    var var_3 = u_input.b;
    return vec2<bool>(arg_1.x, true);
}

fn func_2() -> Struct_1 {
    var var_0 = select(func_3(u_input.c ^ (_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.a, 2147483647i, u_input.c.x)) & u_input.c), vec4<bool>(all(vec2<bool>(true, true)), true, u_input.b > _wgslsmith_div_u32(6411u, u_input.d.x), true & (u_input.b <= u_input.b)), vec4<i32>(~u_input.a << ((u_input.b ^ u_input.b) % 32u), u_input.a, firstLeadingBit(-u_input.c.x), 8935i), false), vec2<bool>(!all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), true), !select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), select(func_3(vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, u_input.a), vec4<bool>(true, false, false, true), vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.c.x), false), vec2<bool>(true, true), true)));
    var_0 = select(func_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 0i), u_input.c.yzz), i32(-1i) * -u_input.a, u_input.a, 43560i), !(!select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, false, false, true))), reverseBits(u_input.c), var_0.x | true), select(vec2<bool>(true, ~u_input.b != 1u), vec2<bool>(var_0.x, var_0.x | true), false), vec2<bool>(true, true));
    var_0 = vec2<bool>(var_0.x, 247f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-887f))));
    var var_1 = _wgslsmith_add_u32(~select(_wgslsmith_mod_u32(~89917u, 1u), _wgslsmith_clamp_u32(abs(u_input.b), ~u_input.d.x, _wgslsmith_add_u32(u_input.d.x, u_input.b)), all(select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), false))), 13115u);
    var var_2 = Struct_1(u_input.a, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(269f, 1053f, -680f, -320f))) + vec4<f32>(_wgslsmith_f_op_f32(select(-2330f, 2671f, var_0.x)), _wgslsmith_f_op_f32(abs(604f)), 1000f, 296f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-743f, 520f, 284f, -1000f), vec4<f32>(-1558f, 1011f, -1356f, 970f)), vec4<f32>(176f, 860f, -153f, 1842f), func_3(vec4<i32>(-1i, u_input.a, u_input.a, u_input.c.x), vec4<bool>(true, false, false, var_0.x), u_input.c, false).x))))));
    return Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, -27689i & u_input.c.x), _wgslsmith_mult_vec2_i32(~select(u_input.c.wy, vec2<i32>(-2147483647i, u_input.c.x), var_2.b), u_input.c.xw)), true, vec4<f32>(-334f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.c.x, -290f), 301f), var_2.c.x, 356f));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = firstLeadingBit(countOneBits(u_input.c)) >> (~(reverseBits(~vec4<u32>(1u, u_input.d.x, 5733u, u_input.b)) & ~vec4<u32>(0u, 34279u, 1u, 51807u)) % vec4<u32>(32u));
    let var_1 = u_input.c;
    let var_2 = func_2();
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(-var_1, u_input.c), var_1.x), -vec2<i32>(select(32627i, reverseBits(var_0.x), arg_1.b), -2147483647i));
    var var_4 = Struct_1(max(max(select(i32(-1i) * -42771i, var_3, true), var_2.a), -(~1i ^ _wgslsmith_sub_i32(var_3, -58608i))), !arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.c.x, 819f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x - arg_0) - _wgslsmith_f_op_f32(344f + 604f))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(296f, arg_1.c.x)) + _wgslsmith_f_op_f32(1291f - arg_1.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2593f) - _wgslsmith_f_op_f32(1820f + arg_0))), 2306f));
    return vec4<u32>(_wgslsmith_sub_u32(~u_input.d.x, 206u), ~51789u, select(~u_input.b, abs(0u), var_2.b), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.a);
    var var_1 = min(vec4<u32>(_wgslsmith_div_u32(0u, u_input.b << (_wgslsmith_add_u32(0u, 8565u) % 32u)), ~12076u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), u_input.d)) ^ u_input.b, ~_wgslsmith_div_u32(u_input.d.x, u_input.b)), select(func_1(115f, Struct_1(-1483i, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1234f, 614f, 1715f, -1429f)))), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 0u), vec4<u32>(4262u, 20466u, u_input.d.x, u_input.d.x)), firstTrailingBit(vec4<u32>(u_input.d.x, u_input.d.x, 5154u, 36298u))) >> (~func_1(291f, Struct_1(-13872i, true, vec4<f32>(154f, 413f, 1205f, -963f))) % vec4<u32>(32u)), true));
    let var_2 = Struct_1(-_wgslsmith_add_i32(u_input.a, 1i), true, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 124f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-351f, 1000f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-398f)))), _wgslsmith_f_op_f32(710f * -107f)));
    var_0 = firstLeadingBit(u_input.c.x);
    let var_3 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(countOneBits(firstTrailingBit(u_input.c.wx)), ~vec2<i32>(2147483647i, var_2.a)), _wgslsmith_clamp_i32(firstTrailingBit(~u_input.c.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.a, var_2.a, var_2.a, -2147483647i), u_input.c), abs(u_input.c.x))), var_2.b, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x - 848f) * _wgslsmith_div_f32(var_2.c.x, var_2.c.x)) + _wgslsmith_f_op_f32(trunc(var_2.c.x))), var_2.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2718f)));
    var_0 = ~reverseBits(-(i32(-1i) * -1i));
    let x = u_input.a;
    s_output = StorageBuffer(17858u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(min(var_3.c.x, var_2.c.x)), var_2.c.x, 309f))), var_2.c), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.c.x, var_3.c.x)) - -712f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.c.x, -708f, false))), _wgslsmith_f_op_f32(-var_2.c.x)), 1u ^ var_1.x);
}

