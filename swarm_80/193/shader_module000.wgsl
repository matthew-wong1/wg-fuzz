struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
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

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 2>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    var var_0 = _wgslsmith_div_i32(0i, global0.b.c.x);
    global1 = array<vec2<u32>, 2>();
    return vec4<bool>(arg_0.x, any(!arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(632f, -1179f) - _wgslsmith_f_op_f32(floor(1288f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1075f + -1000f))) == -605f, any(!(!(!vec4<bool>(global0.b.a, false, true, arg_0.x)))));
}

fn func_2() -> i32 {
    var var_0 = firstLeadingBit(vec3<i32>(0i, _wgslsmith_add_i32(firstTrailingBit(~u_input.b.x), 0i | u_input.a.x), u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(915f, 1527f, -612f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(546f, 128f, 2088f))) + vec3<f32>(1000f, -1617f, -840f)), vec3<f32>(_wgslsmith_f_op_f32(select(594f, -1027f, global0.b.a)), _wgslsmith_f_op_f32(644f - -971f), -545f)))), vec3<f32>(-738f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(357f + -1000f) + -1198f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2233f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1795f * -629f) - _wgslsmith_f_op_f32(step(285f, 212f))))), vec3<bool>(false, _wgslsmith_mod_u32(0u, min(u_input.c.x, 4294967295u)) < (~4294967295u << (~u_input.c.x % 32u)), any(func_3(!vec2<bool>(true, global0.b.a))))));
    let var_2 = ~vec3<u32>(u_input.c.x | 0u, u_input.c.x, 1u);
    return u_input.a.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<i32>) -> i32 {
    let var_0 = firstTrailingBit(reverseBits(select(~(u_input.c & vec3<u32>(u_input.c.x, 0u, 27577u)), ~(~vec3<u32>(29730u, u_input.c.x, u_input.c.x)), arg_0.x)));
    var var_1 = global0.e;
    var var_2 = -37492i;
    var var_3 = -abs(_wgslsmith_sub_vec3_i32(var_1.c.yzx, ~var_1.c.wxw));
    return ~max(0i, ~func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(1i, global0.e, _wgslsmith_sub_vec4_i32(~vec4<i32>(func_1(vec3<bool>(global0.e.a, global0.e.a, true), vec3<bool>(true, false, true), 1i, vec3<i32>(2147483647i, u_input.b.x, u_input.b.x)), global0.d.x & u_input.a.x, -6028i, i32(-1i) * -2147483647i), global0.b.c), ~global0.e.c.xwy, Struct_1(true, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-57287i, -28027i)), vec2<i32>(-1i, _wgslsmith_add_i32(34604i, 42212i))), min(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.e.d, u_input.a.x, u_input.b.x, global0.c.x), vec4<i32>(u_input.b.x, global0.d.x, -2147483647i, u_input.a.x), global0.e.c)), -firstLeadingBit(vec4<i32>(-2147483647i, 1i, -10473i, u_input.a.x))), u_input.a.x));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1357f, _wgslsmith_f_op_f32(f32(-1f) * -207f)))));
    let var_1 = Struct_2(max(func_2(), global0.c.x), Struct_1(global0.b.a, -11085i, _wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(-u_input.b, abs(vec4<i32>(global0.c.x, 0i, global0.b.b, -2147483647i)))), u_input.b.x << (26737u % 32u)), ~reverseBits(vec4<i32>(~u_input.b.x, _wgslsmith_add_i32(2147483647i, global0.c.x), -1i, ~1i)), ~u_input.a, Struct_1(!select(false, global0.b.a, global0.b.a) && true, u_input.a.x, vec4<i32>(abs(u_input.b.x), -8459i, min(global0.b.b, u_input.a.x), 1i) << ((select(vec4<u32>(14302u, u_input.c.x, 55976u, 4294967295u), vec4<u32>(6468u, u_input.c.x, 0u, 1u), vec4<bool>(global0.e.a, global0.b.a, false, true)) ^ (vec4<u32>(4294967295u, 0u, 60270u, 34380u) >> (vec4<u32>(0u, u_input.c.x, 4294967295u, u_input.c.x) % vec4<u32>(32u)))) % vec4<u32>(32u)), -1i));
    let var_2 = max(2147483647i, select(42590i, var_1.a, true));
    let var_3 = true;
    let var_4 = firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(abs(max(u_input.c.x, 14960u)), 35366u, _wgslsmith_add_u32(0u >> (u_input.c.x % 32u), ~u_input.c.x)), ~select(reverseBits(vec3<u32>(u_input.c.x, u_input.c.x, 570u)), ~u_input.c, all(vec4<bool>(false, var_1.e.a, var_1.b.a, false)))));
    let var_5 = Struct_2(u_input.a.x, Struct_1(func_3(vec2<bool>(!var_1.b.a, any(vec2<bool>(true, true)))).x, -global0.e.c.x, vec4<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), global0.d.x, i32(-1i) * -u_input.b.x, ~(-1i)), -13455i), vec4<i32>(_wgslsmith_mod_i32(~global0.e.c.x, ~1i), 16101i, firstLeadingBit(-max(-2147483647i, var_2)), var_2), vec3<i32>(_wgslsmith_mod_i32(~var_2, 75678i), _wgslsmith_dot_vec3_i32(select(global0.d, reverseBits(vec3<i32>(var_1.d.x, global0.a, -1i)), vec3<bool>(var_3, var_3, var_3)), -(~u_input.a)), -_wgslsmith_sub_i32(func_1(vec3<bool>(true, false, var_1.e.a), vec3<bool>(global0.e.a, false, global0.b.a), -2147483647i, vec3<i32>(u_input.a.x, global0.a, 46063i)), -1i)), Struct_1((var_4.x < _wgslsmith_add_u32(u_input.c.x, var_4.x)) | (global0.b.a & !var_3), global0.d.x, vec4<i32>(-1i) * -vec4<i32>(global0.e.d, global0.c.x, 1i, -11947i), func_1(select(select(vec3<bool>(var_1.e.a, false, global0.e.a), vec3<bool>(var_3, global0.b.a, false), var_1.e.a), select(vec3<bool>(false, var_1.e.a, true), vec3<bool>(true, true, true), var_3), false), !select(vec3<bool>(global0.b.a, var_3, false), vec3<bool>(var_3, false, global0.b.a), vec3<bool>(var_3, true, var_1.b.a)), ~(i32(-1i) * -2147483647i), u_input.a)));
    let var_6 = firstTrailingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(~firstLeadingBit(vec3<u32>(u_input.c.x, 1u, var_4.x))), min(_wgslsmith_mult_vec3_u32(~var_4, ~u_input.c), select(u_input.c, var_4, select(vec3<bool>(var_1.e.a, true, var_1.e.a), vec3<bool>(var_1.e.a, global0.b.a, true), vec3<bool>(global0.e.a, true, var_1.b.a))))));
    let var_7 = vec4<u32>(var_4.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_6, var_4.x), vec2<u32>(~u_input.c.x, var_6)), var_6, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(34680u);
}

