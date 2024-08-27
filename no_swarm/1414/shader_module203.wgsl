struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_mult_vec3_u32(firstTrailingBit(min(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c) | u_input.c), reverseBits(vec3<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), u_input.c.x, u_input.c.x))) & ~(u_input.c | vec3<u32>(u_input.c.x, 37747u ^ u_input.c.x, 4294967295u));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-734f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-349f, 121f)), _wgslsmith_f_op_f32(sign(-1000f))))))));
    var var_2 = true;
    let var_3 = !(!vec4<bool>(true, select(false, any(vec4<bool>(true, false, true, false)), true), any(vec2<bool>(true, true)), any(vec3<bool>(false, true, false))));
    let var_4 = vec4<bool>(var_3.x, var_3.x, !any(vec4<bool>(any(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)), var_3.x, !var_3.x, !var_3.x)), true);
    return ~_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, ~0u, 1u), u_input.c));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = arg_2.c.x;
    let var_1 = vec4<u32>(~_wgslsmith_add_u32(func_3(), 0u), ~(~(~_wgslsmith_mod_u32(8883u, var_0))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_2.c.x, 4294967295u), _wgslsmith_add_u32(1u, ~(~1u))), 32219u);
    global0 = ~arg_2.a.c;
    return arg_2.d.b;
}

fn func_1() -> i32 {
    var var_0 = vec3<u32>(1u, u_input.c.x, 1u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(156f)), -1035f, _wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, false), Struct_1(vec3<f32>(1000f, -961f, 630f), -318f, u_input.a.x, false), Struct_2(Struct_1(vec3<f32>(-1000f, -1000f, 524f), 1000f, u_input.a.x, false), Struct_1(vec3<f32>(-311f, -1392f, -544f), 1809f, 21291i, false), vec2<u32>(1u, u_input.c.x), Struct_1(vec3<f32>(1017f, -1000f, 2333f), 488f, 2147483647i, true)), u_input.c.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-601f, 188f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1075f * 1381f) + 1355f), _wgslsmith_f_op_f32(f32(-1f) * -541f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(281f - -375f))), -25370i, any(vec3<bool>(all(vec2<bool>(false, true)) & true, all(vec3<bool>(false, false, false)) | false, !any(vec4<bool>(true, true, false, false)))));
    var var_2 = vec3<bool>(any(!select(select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(false, var_1.d), vec2<bool>(false, var_1.d)), vec2<bool>(true, false), select(true, var_1.d, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, -34108i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1.c, var_1.c), u_input.b)), ~(vec3<i32>(-29211i, var_1.c, 45294i) >> (vec3<u32>(var_0.x, 0u, var_0.x) % vec3<u32>(32u)))) == -2147483647i, select(!(46434i < u_input.b.x), true | (firstLeadingBit(17882i) >= _wgslsmith_sub_i32(66900i, var_1.c)), var_1.d));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(709f, var_1.a.x, -920f, -659f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(166f, var_1.b, var_1.b, var_1.b), vec4<f32>(var_1.a.x, 967f, var_1.a.x, 242f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1068f, var_1.a.x, var_1.a.x, var_1.b)))) - vec4<f32>(_wgslsmith_f_op_f32(-484f - -1248f), -137f, _wgslsmith_f_op_f32(step(var_1.b, var_1.a.x)), _wgslsmith_f_op_f32(sign(var_1.a.x))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(470f, 1125f, 1025f, 1002f) * vec4<f32>(-414f, -618f, 1000f, var_1.b)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2063f, var_1.b, -142f, var_1.a.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1039f, var_1.b, var_1.a.x, var_1.b), vec4<f32>(var_1.b, -614f, var_1.b, var_1.b)))))))));
    var var_4 = false;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = u_input.c.x;
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-6089i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, -1i, 2147483647i, 1i)), abs(vec4<i32>(u_input.b.x, -12053i, u_input.b.x, u_input.a.x))), firstTrailingBit(u_input.b.x | u_input.b.x)), u_input.a.x, u_input.b.x), vec4<i32>(_wgslsmith_clamp_i32(max(-1i, u_input.b.x), u_input.b.x, u_input.b.x), ~0i, u_input.b.x, func_1()));
    var var_2 = 48825u;
    let var_3 = Struct_5(select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), Struct_4(u_input.c.x, Struct_2(Struct_1(vec3<f32>(-549f, 878f, -210f), -1167f, 1i, true), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(398f, 275f, -740f), vec3<f32>(-470f, 1211f, -1187f)), _wgslsmith_f_op_f32(f32(-1f) * -295f), u_input.b.x, true), select(vec2<u32>(8258u, u_input.c.x), min(u_input.c.xy, vec2<u32>(u_input.c.x, u_input.c.x)), true), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-426f, 1368f, 2347f)), _wgslsmith_f_op_f32(1000f + 325f), u_input.a.x & -13773i, u_input.c.x == u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_3.b.b.c.x << ((select(var_3.b.a, u_input.c.x, var_3.b.b.a.d) >> (~4294967295u % 32u)) % 32u), ~var_3.b.b.c.x));
}

