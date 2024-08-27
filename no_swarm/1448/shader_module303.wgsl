struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -859f)));
}

fn func_1(arg_0: Struct_4) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(arg_0.c.a, ~_wgslsmith_mult_vec3_u32(vec3<u32>(32127u, u_input.c, 19512u) >> (abs(arg_0.c.a) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_add_u32(u_input.c, arg_0.a.a.x), _wgslsmith_div_u32(2739u, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.a, u_input.a)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-398f)), arg_0.a.b.x));
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(479f, arg_0.a.c.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1602f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(any(vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) * _wgslsmith_f_op_f32(2227f + -425f))))), -442f);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(arg_0.a.b.wy)));
    return ~_wgslsmith_clamp_u32(u_input.c, u_input.b.x, 1u);
}

fn func_3() -> i32 {
    let var_0 = Struct_1(reverseBits(_wgslsmith_mult_vec2_i32(~vec2<i32>(-4490i, 2147483647i), ~vec2<i32>(u_input.d, u_input.d))) >> (select(_wgslsmith_sub_vec2_u32(u_input.b.yy, u_input.b.yy), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 0u), u_input.b.xy), true) % vec2<u32>(32u)), (26514i & ~(~u_input.d)) | ~_wgslsmith_sub_i32(u_input.d, u_input.d), ~(min(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-2147483647i, -2147483647i)) ^ -vec2<i32>(u_input.d, u_input.d)) << (firstLeadingBit(abs(u_input.b.yx)) % vec2<u32>(32u)));
    return min(u_input.d, ~(-5542i));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5) -> u32 {
    var var_0 = reverseBits(1u);
    let var_1 = Struct_2(_wgslsmith_div_vec3_u32(arg_1.c.a, vec3<u32>(abs(arg_1.c.a.x) << (1u % 32u), ~u_input.c, arg_1.c.a.x)), min(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(arg_1.a.b, -1i, u_input.d, -5188i)), ~_wgslsmith_mod_vec4_i32(arg_1.c.b, vec4<i32>(u_input.d, 51676i, -2147483647i, 0i))), arg_1.c.b));
    var_0 = ~arg_1.c.a.x;
    return 40286u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(~_wgslsmith_div_u32(u_input.a, abs(u_input.b.x)), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, u_input.c), u_input.b.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 4294967295u, 1u, u_input.b.x), vec4<u32>(u_input.a, u_input.a & 4294967295u, ~21271u, ~u_input.a)), u_input.a);
    var var_1 = 4294967295u;
    var_1 = 1u;
    var_1 = 4294967295u;
    var var_2 = func_4(vec3<u32>(u_input.a, _wgslsmith_mult_u32(~(~u_input.a), _wgslsmith_add_u32(21999u, func_1(Struct_4(Struct_3(var_0.wyx, vec4<f32>(457f, 165f, -806f, -670f), vec2<f32>(746f, 639f), u_input.d), Struct_1(vec2<i32>(7051i, u_input.d), u_input.d, vec2<i32>(u_input.d, 36203i)), Struct_2(vec3<u32>(var_0.x, var_0.x, 59483u), vec4<i32>(u_input.d, u_input.d, u_input.d, 2147483647i)), vec4<i32>(u_input.d, 20105i, 8578i, u_input.d))))), abs(_wgslsmith_sub_u32(~2578u, 0u))), Struct_5(Struct_1(select(vec2<i32>(-4670i, u_input.d), vec2<i32>(u_input.d, 0i), vec2<bool>(true, false)) & vec2<i32>(-21457i, u_input.d), func_3(), vec2<i32>(firstTrailingBit(u_input.d), u_input.d)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.d, -80698i), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.d), vec3<i32>(2147483647i, u_input.d, -13192i), vec3<i32>(-1i, u_input.d, 27158i))), Struct_2(vec3<u32>(~44490u, var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), u_input.b.zy)), reverseBits(firstTrailingBit(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, _wgslsmith_div_f32(128f, 277f), -386f, 1348f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(3150f, 337f, -2106f, 1194f))), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-188f - -131f), _wgslsmith_f_op_f32(trunc(-1455f)), _wgslsmith_f_op_f32(878f * -1198f), _wgslsmith_f_op_f32(f32(-1f) * -257f)))));
    var var_3 = var_0.x;
    var var_4 = firstTrailingBit(vec3<i32>(-func_3(), 0i, ~(-8514i)));
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-671f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-135f, 2856f)), 1320f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 2484f)) + _wgslsmith_f_op_f32(853f * 401f)))), 1000f, countOneBits(countOneBits(reverseBits(var_4.zz | vec2<i32>(-1i, -4034i)))));
}

