struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<i32> {
    return -(~_wgslsmith_mod_vec2_i32(countOneBits(select(vec2<i32>(-73281i, u_input.c.x), u_input.c.zy, true)), ~(-u_input.c.zy)));
}

fn func_2(arg_0: bool) -> i32 {
    let var_0 = select(61282u, u_input.a, true);
    let var_1 = Struct_2(func_3(), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), countOneBits(vec4<u32>(45986u << (0u % 32u), 4294967295u, _wgslsmith_add_u32(var_0, 18571u), _wgslsmith_dot_vec4_u32(vec4<u32>(63653u, u_input.b.x, 4294967295u, var_0), vec4<u32>(var_0, u_input.a, 21824u, u_input.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(861f - 362f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-668f * 1000f), _wgslsmith_f_op_f32(select(-1418f, -1733f, arg_0))))), _wgslsmith_f_op_f32(max(-1144f, 1f)), 1108f), vec2<f32>(_wgslsmith_f_op_f32(round(-542f)), -486f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -151f))), 894f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(239f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, -145f, 277f, -658f))))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.c.x, var_1.c.x))), var_1.d.x, var_1.d.x))), u_input.c.x, vec3<f32>(492f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(var_1.e.x + _wgslsmith_f_op_f32(floor(var_1.e.x))))), _wgslsmith_f_op_f32(1581f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)))), _wgslsmith_f_op_f32(f32(-1f) * -164f));
    var var_3 = vec3<i32>(~1i, var_1.a.x, abs(_wgslsmith_mult_i32(0i, _wgslsmith_dot_vec2_i32(var_1.a, vec2<i32>(-2147483647i, -2147483647i)) >> (u_input.a % 32u))));
    let var_4 = var_2.c.yz;
    return reverseBits(_wgslsmith_mult_i32(1i << (_wgslsmith_div_u32(u_input.b.x >> (2033u % 32u), ~4294967295u) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, var_1.a.x), _wgslsmith_div_vec2_i32(var_3.zy, vec2<i32>(-25835i, u_input.c.x)), -var_3.zx), vec2<i32>(0i, -18026i) & var_3.xx)));
}

fn func_1() -> vec2<f32> {
    var var_0 = vec3<i32>(u_input.c.x, ~(~u_input.c.x), abs(u_input.c.x));
    var_0 = _wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(~(i32(-1i) * -u_input.c.x), var_0.x, func_2(false)));
    var var_1 = min(~reverseBits(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.b.xw, vec2<u32>(u_input.a, 1u)), 34491u & u_input.a, ~4294967295u, ~1u)), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), firstTrailingBit(u_input.b)), ~(44745u << (u_input.b.x % 32u)), firstLeadingBit(4294967295u), ~u_input.a) << (vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a) % vec4<u32>(32u)));
    var_1 = countOneBits(u_input.b);
    var_0 = select(~countOneBits(select(vec3<i32>(-7594i, 2147483647i, var_0.x), vec3<i32>(var_0.x, 5065i, 2147483647i) & vec3<i32>(var_0.x, 1i, u_input.c.x), true)), vec3<i32>(6266i, 2147483647i, _wgslsmith_dot_vec4_i32(~(vec4<i32>(-59871i, var_0.x, 2147483647i, 44016i) & vec4<i32>(var_0.x, u_input.c.x, u_input.c.x, 2147483647i)), vec4<i32>(0i, -2147483647i, _wgslsmith_sub_i32(u_input.c.x, u_input.c.x), firstLeadingBit(2147483647i)))), vec3<bool>(true, true, true));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-1824f, -1876f), vec2<f32>(334f, 271f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1796f, -843f) + vec2<f32>(708f, 931f)))) - vec2<f32>(1f, 1f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(vec2<i32>(-1i) * -u_input.c.zx), _wgslsmith_mult_vec4_u32(vec4<u32>((u_input.a | u_input.a) & _wgslsmith_sub_u32(39528u, u_input.a), u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, 0u, 0u) & u_input.a, ~0u), ~(~(~u_input.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-427f, -291f, _wgslsmith_f_op_f32(floor(872f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, -1000f)) - _wgslsmith_f_op_vec2_f32(func_1())) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-370f, -608f), vec2<f32>(-192f, -1000f)) + vec2<f32>(1f, 1f)))), vec4<f32>(1750f, -1436f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(863f, 248f)), 1438f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(459f))))), 1081f));
    var_0 = Struct_2((firstTrailingBit(~var_0.a) << (countOneBits(reverseBits(vec2<u32>(57004u, 1u))) % vec2<u32>(32u))) & ((~vec2<i32>(1i, var_0.a.x) << (vec2<u32>(4294967295u, 8839u) % vec2<u32>(32u))) ^ var_0.a), u_input.b, vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(357f + var_0.c.x) + _wgslsmith_f_op_f32(abs(var_0.d.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.c.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -176f), _wgslsmith_f_op_f32(var_0.e.x * -642f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.e.x, var_0.e.x))), vec2<bool>(true, true))) + _wgslsmith_f_op_vec2_f32(func_1())), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), -1314f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, var_0.e.x)))), var_0.d.x));
    var var_1 = -28422i;
    let var_2 = _wgslsmith_f_op_f32(step(-380f, var_0.c.x));
    var var_3 = Struct_1(vec2<bool>(!(-1281f >= _wgslsmith_f_op_f32(205f - var_2)), true), 66341u ^ u_input.b.x, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 171f, var_2))), firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), 1i), ~0i, _wgslsmith_mult_i32(-9319i, ~var_0.a.x))), _wgslsmith_sub_vec2_u32(~(~abs(var_0.b.zx)), firstTrailingBit(~vec2<u32>(var_0.b.x, 57812u))), min(~firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(var_0.b.x ^ 4294967295u, ~29065u) & vec2<u32>(var_3.b, reverseBits(0u))), vec4<u32>(var_3.b, countOneBits(~u_input.a ^ _wgslsmith_div_u32(u_input.b.x, var_3.c)), 4294967295u, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x), 11090u)));
}

