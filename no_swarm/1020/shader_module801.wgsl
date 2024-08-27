struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, true, true, false, true, true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32) -> vec3<u32> {
    return (u_input.c.wzz & u_input.b) & vec3<u32>(17079u, 1u, _wgslsmith_mult_u32(4442u, firstLeadingBit(_wgslsmith_mod_u32(arg_1, 58529u))));
}

fn func_2() -> Struct_2 {
    global0 = array<bool, 7>();
    let var_0 = ~(~(vec3<i32>(1i, 1i, 1i) & max(max(vec3<i32>(23953i, -4630i, 0i), vec3<i32>(1i, -1i, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(20863i, -41283i, -2465i), vec3<i32>(-226i, -24005i, 2147483647i), vec3<i32>(-49880i, -11425i, -70790i)))));
    var var_1 = Struct_1(u_input.c.wzw);
    var_1 = Struct_1(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-569f, _wgslsmith_f_op_f32(f32(-1f) * -1752f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(226f, -619f) - vec2<f32>(1014f, 705f)))), ~(~firstLeadingBit(var_1.a.x))));
    var var_2 = vec4<i32>(var_0.x, min(_wgslsmith_sub_i32(-var_0.x | var_0.x, -(~1i)), 1i), ~firstLeadingBit(7698i), ~(~(-(~var_0.x))));
    return Struct_2(u_input.c | ~(~u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-356f, _wgslsmith_f_op_f32(round(413f)), -941f)))), !(!select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 7u)], false), !global0[_wgslsmith_index_u32(var_1.a.x, 7u)])));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = firstLeadingBit(~(~(~vec4<i32>(-1i, 0i, arg_0.x, arg_0.x))));
    var var_1 = u_input.c.x;
    global0 = array<bool, 7>();
    let var_2 = Struct_4(true);
    var_1 = u_input.a.x;
    return -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, _wgslsmith_sub_i32(var_0.x, 0i)), var_0.zw), i32(-1i) * -(var_0.x << (1u % 32u)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec2<bool>) -> u32 {
    var var_0 = ~(~(~(~u_input.c.xxw)));
    let var_1 = ~(~vec4<u32>(15941u, ~u_input.c.x, ~var_0.x, var_0.x));
    var var_2 = _wgslsmith_div_i32(max(min(arg_0.x << (u_input.d.x % 32u), 0i) | arg_0.x, arg_0.x), arg_0.x >> (~min(abs(var_1.x), 0u) % 32u));
    var_2 = arg_0.x;
    let var_3 = Struct_1(_wgslsmith_sub_vec3_u32(firstLeadingBit(countOneBits(var_1.yyx)), vec3<u32>(_wgslsmith_mult_u32(var_1.x, var_1.x), 1u, 1u)) << (vec3<u32>(0u, 1u >> ((var_0.x >> (5915u % 32u)) % 32u), u_input.a.x) % vec3<u32>(32u)));
    return abs(~max(~max(4294967295u, var_3.a.x), 8621u));
}

fn func_1() -> vec3<u32> {
    let var_0 = any(!select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 7u)], true, false), !select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(39358u, 7u)], global0[_wgslsmith_index_u32(u_input.e.x, 7u)]), false), global0[_wgslsmith_index_u32(~1u, 7u)] || true));
    var var_1 = min((~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 47052u, u_input.d.x, u_input.b.x), vec4<u32>(0u, 32490u, u_input.c.x, 47790u)) & ~min(u_input.c, u_input.c)) & u_input.c, u_input.c);
    var_1 = vec4<u32>(func_5(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, -17623i)), func_4(~vec2<i32>(22830i, -10704i), !vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(53725u, 7u)]), Struct_1(u_input.e), func_2())), Struct_4(true), vec2<bool>(all(!vec2<bool>(false, global0[_wgslsmith_index_u32(9700u, 7u)])), true)), var_1.x, u_input.e.x, u_input.a.x);
    var var_2 = true;
    var var_3 = Struct_3(vec3<bool>(all(vec2<bool>(false, false)) | true, any(!vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 7u)])), true), func_2());
    return var_1.wyx;
}

fn func_6(arg_0: vec3<u32>) -> Struct_4 {
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    return Struct_4(true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 7>();
    let var_0 = _wgslsmith_mod_i32(abs(~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -7178i, -1i, -21010i), vec4<i32>(2147483647i, 19774i, -2147483647i, -2147483647i)), vec4<i32>(-1i, -22155i, -8013i, 17650i))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(-48926i, -44400i, -2147483647i)), -vec3<i32>(i32(-1i) * -2147483647i, firstTrailingBit(53079i), 1i)));
    global0 = array<bool, 7>();
    let var_1 = func_6(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~abs(u_input.c))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-574f)))), _wgslsmith_f_op_f32(f32(-1f) * -1760f), -1300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(732f)) + _wgslsmith_f_op_f32(963f + 643f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1428f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -624f, _wgslsmith_f_op_f32(f32(-1f) * -1380f)))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(~var_0, -2147483647i)), _wgslsmith_mod_i32(abs(var_0), abs(var_0)) & _wgslsmith_sub_i32(~var_0, var_0 ^ 0i), _wgslsmith_add_i32(_wgslsmith_add_i32(0i, var_0), _wgslsmith_mult_i32(-9713i, -1i)) ^ 2147483647i), -select(var_0, var_0, false), vec3<i32>(_wgslsmith_add_i32(-4069i, _wgslsmith_div_i32(var_0, _wgslsmith_clamp_i32(1i, var_0, var_0))), 2147483647i, ~_wgslsmith_mult_i32(var_0 & 2523i, ~var_0)));
}

