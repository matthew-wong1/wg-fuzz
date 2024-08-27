struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_4(Struct_2(true, _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(0i, 32091i, arg_0.x)), arg_0), min(firstLeadingBit(u_input.a), ~65683u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1127f * arg_2.x))));
    let var_1 = Struct_2(true, countOneBits(-1i), 0u, arg_2.x);
    let var_2 = vec4<i32>(-(i32(-1i) * -firstLeadingBit(1i)), 25609i, abs(_wgslsmith_sub_i32(15805i, ~u_input.b.x)), -18765i);
    return _wgslsmith_f_op_f32(floor(var_0.a.d));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = vec2<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 48733u), ~vec2<u32>(u_input.a, 38485u))), 1u);
    var var_1 = firstTrailingBit(vec3<u32>(u_input.a, select(u_input.a, 1u, arg_0), var_0.x));
    let var_2 = -1i;
    var var_3 = _wgslsmith_clamp_u32(u_input.a, 0u, var_1.x) | _wgslsmith_mod_u32(var_1.x, 1u);
    var_3 = _wgslsmith_dot_vec3_u32(~(~reverseBits(vec3<u32>(u_input.a, var_1.x, 4471u))) | vec3<u32>(~(~1u), select(29027u, 1u, true), ~u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_0.x, 0u), _wgslsmith_mult_u32(var_0.x, u_input.a), u_input.a | var_0.x), ~(~vec3<u32>(4294967295u, 13812u, var_1.x))) & ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, u_input.a, 33880u), vec3<u32>(1u, 21727u, var_1.x)), _wgslsmith_div_u32(var_1.x, var_0.x), _wgslsmith_mult_u32(48504u, 47699u)));
    return Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c, -_wgslsmith_mult_vec2_i32(vec2<i32>(-5584i, 24005i), u_input.b)), -_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_2, u_input.c.x), vec2<i32>(arg_1, 1i)), abs(vec2<i32>(-1i, -14498i)))), true, ~min(reverseBits(vec4<u32>(33962u, var_1.x, 37357u, 53395u)), vec4<u32>(~4294967295u, 0u >> (u_input.a % 32u), firstLeadingBit(u_input.a), var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(603f)), _wgslsmith_f_op_f32(-546f * 1000f), _wgslsmith_f_op_f32(func_3(vec3<i32>(-7280i, 0i, u_input.c.x), vec3<i32>(var_2, 1i, arg_1), vec3<f32>(-267f, 678f, -1000f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1504f, -1015f, 541f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1482f, -928f, -748f) + vec3<f32>(434f, -612f, -1204f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1206f, -1000f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1824f, 1601f, -822f), vec3<f32>(-547f, -376f, -950f))))))), u_input.c);
}

fn func_1() -> Struct_1 {
    var var_0 = false;
    var var_1 = u_input.c.x;
    let var_2 = Struct_2(false, -(~u_input.c.x), max(45052u, 60859u), -1889f);
    var var_3 = func_2(any(vec4<bool>(var_2.a, true, !any(vec4<bool>(var_2.a, false, true, var_2.a)), false)), u_input.b.x & (i32(-1i) * -_wgslsmith_mult_i32(var_2.b, var_2.b)));
    return Struct_1(_wgslsmith_add_i32(28633i, -(u_input.b.x << (1u % 32u)) ^ -15545i), var_2.a, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), 61471u >> (var_3.c.x % 32u)), 4294967295u), var_3.c.x ^ ~u_input.a, abs(~(~1u)), ~36259u), var_3.d, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = Struct_4(Struct_2(~_wgslsmith_clamp_u32(var_0.c.x, 118236u, u_input.a) <= 1u, max(1i, u_input.c.x), 0u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(312f, _wgslsmith_f_op_f32(-var_0.d.x)), true))));
    var var_2 = ~(~(_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.b, var_0.e.x, 60064i), vec3<i32>(-2147483647i, var_1.a.b, var_1.a.b)) << (vec3<u32>(_wgslsmith_mod_u32(var_0.c.x, 62929u), countOneBits(41355u), var_1.a.c) % vec3<u32>(32u))));
    let var_3 = Struct_1(var_2.x, !all(!(!vec4<bool>(false, false, true, var_0.b))), abs(~(vec4<u32>(var_1.a.c, var_0.c.x, 29101u, 4294967295u) & (vec4<u32>(u_input.a, var_1.a.c, 53474u, 4294967295u) & vec4<u32>(var_0.c.x, 0u, u_input.a, 4294967295u)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -233f), -1461f), _wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(var_2.x, ~max(2147483647i, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(0u, var_1.a.c, true), abs(_wgslsmith_mult_vec4_u32(var_0.c, vec4<u32>(38667u, _wgslsmith_mult_u32(var_3.c.x, var_3.c.x), var_1.a.c & var_3.c.x, func_2(var_1.a.a, var_1.a.b).c.x))), vec2<u32>(~min(var_3.c.x, func_2(var_1.a.a, 10408i).c.x), ~(~(~var_3.c.x))));
}

