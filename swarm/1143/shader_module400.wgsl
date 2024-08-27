struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = i32(-2147483648);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: i32, arg_1: bool) -> vec2<i32> {
    var var_0 = -1391f;
    return ~u_input.c.yx << (vec2<u32>(min(_wgslsmith_mult_u32(reverseBits(u_input.e.x), 34882u), reverseBits(u_input.a)), 1086u) % vec2<u32>(32u));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-687f, _wgslsmith_f_op_f32(f32(-1f) * -1179f), 424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(300f + 409f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1455f, -1643f, -1116f, 549f)) - vec4<f32>(1711f, -763f, -1961f, 514f)))), -vec4<i32>((u_input.c.x & -1i) >> (~u_input.e.x % 32u), -2147483647i, func_2(u_input.d.x, arg_0).x, u_input.d.x >> (~84742u % 32u)), true, arg_0);
    let var_1 = abs(vec3<u32>(u_input.a & u_input.a, ~abs(_wgslsmith_add_u32(u_input.a, 0u)), 36286u));
    var var_2 = true;
    var var_3 = (~select(firstLeadingBit(u_input.d.yz), u_input.b.yy, any(vec4<bool>(true, arg_0, false, var_0.c))) & -_wgslsmith_clamp_vec2_i32(u_input.b.wy, vec2<i32>(1i, u_input.c.x), abs(u_input.d.xz))) >> (var_1.xx % vec2<u32>(32u));
    let var_4 = var_0;
    return func_2(_wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(var_0.b.zy, vec2<i32>(-19797i, 2147483647i), vec2<i32>(-10775i, 0i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(36460i, var_4.b.x), u_input.b.wx)) >> (~u_input.a % 32u), var_0.d).x;
}

fn func_1() -> Struct_1 {
    global1 = min(u_input.b.x, -u_input.b.x);
    var var_0 = false;
    let var_1 = ~func_2(_wgslsmith_sub_i32(u_input.d.x, u_input.c.x), !(u_input.e.x != min(u_input.e.x, u_input.a)));
    var_0 = true;
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(floor(-113f))))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(980f, 708f, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1074f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1249f - -283f) - _wgslsmith_f_op_f32(round(-1872f)))))), vec4<i32>(~(-(~u_input.b.x)), -_wgslsmith_clamp_i32(~37623i, -1i << (u_input.a % 32u), ~var_1.x), 2147483647i, min(_wgslsmith_sub_i32(abs(u_input.d.x), u_input.d.x), (i32(-1i) * -1i) & func_3(false))), true, all(vec3<bool>(false, any(vec4<bool>(true, true, false, true)), true)) && true);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(var_2.a.x - 1108f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.a.x, var_2.a.x, var_2.d)) * -1874f), var_2.a.x)), _wgslsmith_f_op_f32(var_2.a.x - _wgslsmith_f_op_f32(var_2.a.x - var_2.a.x))), var_2.b, ((false != all(vec3<bool>(true, true, var_2.d))) & false) & var_2.d, false);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, u_input.a, u_input.e.x), vec3<u32>(u_input.a, u_input.a, u_input.e.x)), vec3<u32>(u_input.a, u_input.e.x, u_input.e.x)), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a, 63341u), ~u_input.e.x, u_input.e.x), firstLeadingBit(~vec3<u32>(20918u, 8607u, u_input.e.x)))), _wgslsmith_div_u32(~15028u, u_input.a));
    global1 = 0i;
    let var_1 = arg_0;
    let var_2 = u_input.a;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(793f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-434f + 2705f)))))));
    global1 = 1i;
    global1 = ~_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_sub_i32(u_input.d.x, u_input.d.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_div_f32(var_0, -2222f), _wgslsmith_f_op_f32(-616f - var_0), _wgslsmith_f_op_f32(trunc(var_0))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, _wgslsmith_f_op_f32(abs(-233f)), _wgslsmith_f_op_f32(-197f * var_0), -1007f) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-885f - -1210f)))), ~u_input.b, true, all(vec2<bool>(!all(vec4<bool>(true, true, false, false)), _wgslsmith_sub_i32(u_input.c.x, u_input.c.x) == _wgslsmith_div_i32(u_input.d.x, 0i))));
    global1 = _wgslsmith_div_i32(var_1.b.x, _wgslsmith_dot_vec2_i32(u_input.d.zy, _wgslsmith_clamp_vec2_i32(u_input.b.xz, -min(var_1.b.wx, vec2<i32>(-1i, -24936i)), -_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(var_1.b.x, 3602i)))));
    let var_2 = func_4(func_1());
    global0 = _wgslsmith_sub_u32(firstTrailingBit(u_input.a), u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(i32(-1i) * -var_2.b.x), ~firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.b.x, u_input.b.x, -1i, 33626i), var_2.b)));
}

