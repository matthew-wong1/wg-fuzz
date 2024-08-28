struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> f32 {
    let var_0 = !vec4<bool>(!any(vec3<bool>(true, false, false)), all(vec4<bool>(all(vec4<bool>(false, true, false, false)), any(vec2<bool>(true, false)), false, true)), any(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))), !select(false, true, false) || true);
    global0 = array<i32, 14>();
    global0 = array<i32, 14>();
    let var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(abs(_wgslsmith_mod_vec2_i32(~vec2<i32>(0i, 2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]))), vec2<i32>(reverseBits(~9524i), select(4776i, -global0[_wgslsmith_index_u32(u_input.b, 14u)], false)), ~vec2<i32>(-1i << (u_input.a.x % 32u), global0[_wgslsmith_index_u32(u_input.b, 14u)])), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, 1u) << (vec4<u32>(0u, u_input.a.x, 17369u, u_input.b) % vec4<u32>(32u)), vec4<u32>(1u, u_input.b, 4294967295u, 4294967295u)) ^ vec4<u32>(~41153u << (~u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, u_input.a.x))), ~(~1u), 4294967295u));
    return _wgslsmith_f_op_f32(f32(-1f) * -824f);
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = any(vec3<bool>(true, true, true));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-229f, var_0), vec2<f32>(-1285f, -1580f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))) * vec2<f32>(-612f, _wgslsmith_f_op_f32(var_0 + var_0))) * vec2<f32>(155f, var_0)));
    let var_3 = 807f;
    let var_4 = Struct_4(var_3, var_1, Struct_1(arg_0.zx, min(~vec4<u32>(u_input.b, 30962u, u_input.a.x, 0u), ~vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b))));
    return var_4;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> bool {
    var var_0 = arg_1.c.a.x;
    let var_1 = Struct_2(arg_1.c, 1u, func_1(~(-(~vec4<i32>(-5987i, -50708i, arg_1.c.a.x, -17310i)))).c, arg_1.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, 251f, arg_2)))))));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) - var_1.e.x), _wgslsmith_f_op_f32(-2213f - _wgslsmith_f_op_f32(arg_2 * -357f))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-841f + arg_2), 1f), arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3)) + _wgslsmith_f_op_f32(sign(var_1.e.x)))))));
    let var_4 = Struct_3(_wgslsmith_add_i32(-1i, 2147483647i), _wgslsmith_f_op_f32(-arg_1.a), func_1(firstLeadingBit(vec4<i32>(848i, -global0[_wgslsmith_index_u32(var_1.a.b.x, 14u)], arg_1.c.a.x, var_1.a.a.x))).c, Struct_2(func_1(countOneBits(vec4<i32>(var_1.c.a.x, arg_1.c.a.x, var_1.a.a.x, global0[_wgslsmith_index_u32(48156u, 14u)]))).c, ~_wgslsmith_clamp_u32(~u_input.a.x, var_1.b, u_input.b), arg_1.c, func_1(vec4<i32>(arg_1.c.a.x, select(arg_1.c.a.x, arg_1.c.a.x, true), 0i, var_1.a.a.x)).c, var_1.e), arg_1.c);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), func_1(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], 24488i, global0[_wgslsmith_index_u32(11508u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)])), -891f, _wgslsmith_f_op_f32(floor(-488f))))), true, any(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)] >= -1i, all(vec2<bool>(false, false)), all(vec2<bool>(false, false)), true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))));
    let var_1 = Struct_3(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(83429u), u_input.a.x ^ ~27415u), 14u)], select(_wgslsmith_dot_vec4_i32(vec4<i32>(814i, global0[_wgslsmith_index_u32(1354u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(0u, 14u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], -2147483647i, -1i)) << (min(u_input.a.x, u_input.b) % 32u), 26657i, func_3(var_0.yzz, Struct_4(613f, false, Struct_1(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.b, 14u)]), vec4<u32>(1u, u_input.b, 17219u, 87661u))), _wgslsmith_div_f32(431f, 137f), -1000f))), -152f, func_1(select(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(16847u, 14u)], 2147483647i, 1601i, -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)])), -vec4<i32>(30154i, 25989i, global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), select(select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, true, false, false), false), vec4<bool>(false, true, var_0.x, var_0.x), select(var_0.x, var_0.x, var_0.x)))).c, Struct_2(Struct_1(firstTrailingBit(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], global0[_wgslsmith_index_u32(u_input.a.x, 14u)])), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 45656u), u_input.a), select(30437u, 33776u, var_0.x), 38480u, u_input.b)), 1u, func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_add_vec4_i32(vec4<i32>(-17563i, global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], 0i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(8799u, 14u)], 52417i, -639i)))).c, Struct_1(countOneBits(vec2<i32>(38565i, global0[_wgslsmith_index_u32(4294967295u, 14u)]) | vec2<i32>(-2147483647i, -2318i)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(39041u, 1u, 10135u, 51158u), vec4<u32>(4294967295u, 32543u, u_input.a.x, 59378u)), min(vec4<u32>(u_input.b, 0u, 1u, u_input.b), vec4<u32>(100537u, u_input.b, u_input.b, 1u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-221f - -1172f) - _wgslsmith_f_op_f32(trunc(1004f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-894f, 997f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-417f + 1803f)))), func_1(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(2002u, 14u)], 0i, 24667i, -11260i) | vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], -72169i, global0[_wgslsmith_index_u32(0u, 14u)], 0i)), vec4<i32>(1i, -16100i & global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 1i, _wgslsmith_clamp_i32(1i, -24230i, global0[_wgslsmith_index_u32(u_input.a.x, 14u)])))).c);
    var var_2 = !select(vec2<bool>(func_3(!var_0.zyy, func_1(vec4<i32>(8748i, var_1.e.a.x, -2147483647i, global0[_wgslsmith_index_u32(var_1.c.b.x, 14u)])), _wgslsmith_f_op_f32(floor(var_1.d.e.x)), _wgslsmith_f_op_f32(floor(var_1.d.e.x))), -6331i < _wgslsmith_dot_vec2_i32(vec2<i32>(-14245i, 0i), var_1.e.a)), var_0.zx, var_0.x);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - -713f) * var_1.d.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-659f + 1000f)))), true, Struct_1(~var_1.e.a, vec4<u32>(~33353u, ~(~u_input.a.x), 0u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~var_1.d.d.b.x, countOneBits(var_3.c.b.x)), ~(var_3.c.a.x >> (max(countOneBits(var_1.c.b.x), abs(var_3.c.b.x)) % 32u)), var_3.c.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(~(-48595i), max(0i, var_3.c.a.x)), func_1(~vec4<i32>(var_3.c.a.x, 26950i, var_3.c.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 14u)])).c.a.x, _wgslsmith_mult_i32(1i, abs(-1254i)), 13319i), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(-14405i, var_1.d.c.a.x, var_3.c.a.x, 15724i), vec4<i32>(global0[_wgslsmith_index_u32(var_3.c.b.x, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], 1i, 1i) << (var_1.e.b % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * 233f))) - -1862f));
}

