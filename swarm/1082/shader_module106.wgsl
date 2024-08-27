struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec4<u32> {
    var var_0 = select((1u | _wgslsmith_clamp_u32(1u, u_input.c, 12411u)) << (u_input.c % 32u), ~(u_input.c & 4294967295u), true || any(vec3<bool>(true, false, true))) & max(0u, ~(~u_input.c));
    let var_1 = 80631u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 11813u, 0u), ~firstTrailingBit(abs(vec3<u32>(48696u, 0u, u_input.c))));
    var_0 = _wgslsmith_mult_u32(~countOneBits(var_1), 31182u);
    var_0 = _wgslsmith_div_u32(0u, u_input.c);
    let var_2 = Struct_2(_wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(u_input.d, -1i), -1i), -_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 1i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.a), vec2<i32>(u_input.b, u_input.d)))), ~vec3<u32>(44630u, u_input.c, 1u));
    return _wgslsmith_div_vec4_u32(~abs(~(vec4<u32>(var_1, 0u, 4294967295u, var_2.b.x) ^ vec4<u32>(u_input.c, 47443u, var_1, 0u))), _wgslsmith_clamp_vec4_u32(select(~(~vec4<u32>(var_2.b.x, var_2.b.x, 4294967295u, u_input.c)), vec4<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1), vec2<u32>(u_input.c, 12435u)), u_input.c, var_2.b.x >> (4294967295u % 32u)), false), abs(vec4<u32>(max(var_2.b.x, u_input.c), var_1 >> (0u % 32u), abs(u_input.c), reverseBits(u_input.c))), vec4<u32>(4294967295u, 1u, var_2.b.x, var_1)));
}

fn func_2() -> vec3<i32> {
    var var_0 = min(~countOneBits(~(~vec4<u32>(u_input.c, 1u, 73u, 35270u))), func_3());
    var var_1 = Struct_1(40803u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(386f))))));
    return select(abs(vec3<i32>(countOneBits(0i), u_input.d, -(u_input.b >> (11671u % 32u)))), firstTrailingBit(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.d, 47581i, -43289i) | min(vec3<i32>(-1i, u_input.a, u_input.b), vec3<i32>(u_input.d, u_input.d, 49911i)), ~vec3<i32>(0i, u_input.a, -11216i) >> (var_0.zwx % vec3<u32>(32u)))), true);
}

fn func_1() -> f32 {
    var var_0 = func_2();
    var_0 = min(abs(vec3<i32>(-u_input.a, abs(countOneBits(u_input.b)), var_0.x)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, var_0.x, -2147483647i), vec3<i32>(-7555i, 0i, u_input.b)) >> (vec3<u32>(59270u, u_input.c, u_input.c) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(1i, 2147483647i, u_input.b)) << (vec3<u32>(_wgslsmith_clamp_u32(1u, abs(u_input.c), u_input.c), ~u_input.c, 28029u) % vec3<u32>(32u)));
    let var_1 = Struct_1(1u, vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1128f), _wgslsmith_f_op_f32(409f - 1543f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-515f * -1000f)) - _wgslsmith_f_op_f32(-1580f * _wgslsmith_f_op_f32(step(535f, -119f))))));
    var_0 = firstTrailingBit(-abs(firstTrailingBit(vec3<i32>(-1i, u_input.a, -2147483647i) << (vec3<u32>(26413u, 101718u, 0u) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_sub_vec4_i32(~firstTrailingBit(vec4<i32>(var_0.x, _wgslsmith_clamp_i32(1i, u_input.a, -1i), var_0.x << (var_1.a % 32u), ~0i)), _wgslsmith_div_vec4_i32(-vec4<i32>(-u_input.a, _wgslsmith_mod_i32(var_0.x, 5944i), u_input.a, var_0.x), -vec4<i32>(u_input.a, abs(1i), _wgslsmith_add_i32(-2224i, 0i), -1i)));
    return -1457f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(30715u, vec2<f32>(_wgslsmith_div_f32(-281f, _wgslsmith_f_op_f32(min(-875f, -806f))), _wgslsmith_f_op_f32(func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-627f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(-1429f + var_0.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -456f, var_0.b.x))))), vec3<u32>(1u, var_0.a, var_0.a) | abs((vec3<u32>(u_input.c, u_input.c, 0u) & vec3<u32>(u_input.c, u_input.c, var_0.a)) >> (~vec3<u32>(27625u, u_input.c, 26090u) % vec3<u32>(32u))), u_input.a);
}

