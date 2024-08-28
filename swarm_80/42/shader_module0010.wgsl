struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.a, ~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a))), reverseBits(vec3<u32>(~1u, _wgslsmith_mult_u32(41205u, u_input.a), 4294967295u))), _wgslsmith_sub_vec3_u32(vec3<u32>(~(~u_input.a), _wgslsmith_clamp_u32(abs(1u), u_input.a << (u_input.a % 32u), ~u_input.a), u_input.a), abs(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(61067u, 39157u, 4294967295u), vec3<u32>(0u, u_input.a, 80862u)), ~u_input.a, 0u))));
    var var_1 = ~1u;
    var_1 = ~max(~u_input.a, _wgslsmith_dot_vec2_u32(~(~var_0.a.yz), _wgslsmith_div_vec2_u32(~vec2<u32>(32510u, 1u), vec2<u32>(0u, u_input.a))));
    var_1 = ~4294967295u;
    var_1 = 0u;
    return arg_2;
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> vec2<u32> {
    var var_0 = 1u;
    var_0 = ~0u;
    var_0 = arg_0;
    var var_1 = Struct_2(select(min(-_wgslsmith_clamp_vec4_i32(vec4<i32>(5345i, 0i, u_input.b, u_input.e.x), vec4<i32>(2147483647i, -1i, 8818i, -4372i), vec4<i32>(u_input.d.x, 63751i, -1i, -10465i)), ~abs(vec4<i32>(u_input.e.x, 0i, 18753i, u_input.b))), firstTrailingBit(~_wgslsmith_sub_vec4_i32(vec4<i32>(-6394i, u_input.e.x, u_input.c.x, u_input.c.x), vec4<i32>(1i, 0i, 50650i, u_input.e.x))), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))), -(2147483647i & ~(-u_input.c.x)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1927f, -421f, -313f, 1563f))), _wgslsmith_f_op_f32(f32(-1f) * -1753f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-579f, 1000f, -520f))), vec4<i32>(47188i, 19979i, -51360i, u_input.b))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(893f, 124f, -671f)))), ~(4240u << ((arg_1.x & u_input.a) % 32u)), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, false)), true), vec2<bool>(true, true))), vec3<i32>(_wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(u_input.c.x, 2147483647i, -1i), min(~0i, select(u_input.d.x, u_input.d.x, false)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b, u_input.c.x), select(1111i, 2147483647i, false), u_input.d.x)), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(0i, u_input.b, 7012i, -52968i)), select(reverseBits(vec4<i32>(u_input.d.x, -11505i, u_input.b, -22739i)), vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.c.x) & vec4<i32>(-15636i, -2147483647i, u_input.e.x, u_input.b), vec4<bool>(true, true, true, true))), -u_input.e.x));
    let var_2 = all(select(select(vec2<bool>(var_1.c.c.x & var_1.c.c.x, true), vec2<bool>(all(vec2<bool>(var_1.c.c.x, var_1.c.c.x)), true), var_1.c.c.x), !var_1.c.c, true));
    return ~select(select(~firstLeadingBit(vec2<u32>(1u, 66428u)), firstLeadingBit(arg_1.xy), false), vec2<u32>(0u, ~4294967295u), var_2 & true);
}

fn func_1() -> Struct_2 {
    var var_0 = min(min(_wgslsmith_mult_vec4_u32(min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 36513u, 1651u)), ~vec4<u32>(25963u, u_input.a, u_input.a, u_input.a)), ~reverseBits(vec4<u32>(4294967295u, 4294967295u, 1u, 43370u))), countOneBits(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)))), vec4<u32>(u_input.a, 119601u, u_input.a, 1u));
    let var_1 = all(!vec3<bool>(false, !select(false, true, false), all(vec4<bool>(false, false, false, false))));
    var var_2 = func_2(var_0.x, ~vec3<u32>(_wgslsmith_sub_u32(~u_input.a, ~39109u), var_0.x, _wgslsmith_mod_u32(1u, var_0.x)));
    let var_3 = 1i;
    var var_4 = u_input.c;
    return Struct_2(reverseBits(vec4<i32>(-(i32(-1i) * -2147483647i), -countOneBits(2147483647i), _wgslsmith_add_i32(-8477i, u_input.c.x), firstTrailingBit(var_3))), ~2147483647i, Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-135f, 426f, -648f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(644f, 1000f, 1325f))))), 4294967295u, vec2<bool>(_wgslsmith_div_u32(var_0.x, var_0.x) <= (var_2.x ^ var_2.x), var_1)), vec3<i32>(max(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(21018i, u_input.d.x, var_4.x), vec3<i32>(var_3, var_4.x, u_input.e.x)), ~2147483647i), 0i), firstLeadingBit(-var_3 << (_wgslsmith_dot_vec3_u32(var_0.yyz, vec3<u32>(u_input.a, 1u, 4294967295u)) % 32u)), 22498i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = var_0.c.c.x;
    let var_2 = u_input.a;
    let var_3 = 1u;
    var var_4 = vec4<bool>(!all(select(!vec3<bool>(var_1, true, var_1), vec3<bool>(var_0.c.c.x, false, true), any(vec3<bool>(var_0.c.c.x, true, var_0.c.c.x)))), var_1, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec4<i32>(u_input.e.x, -3366i, -abs(min(u_input.d.x, u_input.c.x)), -4385i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a.x, var_0.c.a.x, 1149f))) * var_0.c.a), vec3<f32>(-170f, _wgslsmith_f_op_f32(f32(-1f) * -562f), 1351f)), reverseBits(max(0i, 642i)));
}

