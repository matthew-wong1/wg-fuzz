struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(17138i, 7279i, 22027i, 28131i);

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(15685u, 30892u), vec2<u32>(0u, 0u), vec2<u32>(17407u, 4294967295u), vec2<u32>(143786u, 0u), vec2<u32>(27115u, 4294967295u), vec2<u32>(1u, 34428u), vec2<u32>(0u, 19500u), vec2<u32>(29302u, 22618u), vec2<u32>(1u, 4294967295u), vec2<u32>(76944u, 1u), vec2<u32>(85741u, 4294967295u), vec2<u32>(16123u, 0u), vec2<u32>(38992u, 72816u), vec2<u32>(0u, 1u), vec2<u32>(10221u, 0u), vec2<u32>(33552u, 1322u), vec2<u32>(4294967295u, 56266u), vec2<u32>(1u, 1u), vec2<u32>(59246u, 76322u), vec2<u32>(33144u, 4294967295u), vec2<u32>(4294967295u, 45161u), vec2<u32>(29217u, 7812u), vec2<u32>(4294967295u, 39332u), vec2<u32>(1u, 66377u), vec2<u32>(0u, 1u));

var<private> global2: vec2<f32> = vec2<f32>(-168f, 900f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4) -> Struct_1 {
    var var_0 = 2147483647i;
    let var_1 = ~(~14538u);
    global2 = arg_1.a.a.zx;
    return Struct_1(1820u, ~(~countOneBits(34744u & var_1)));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, arg_0, arg_1)) * 1100f), arg_0)), arg_0);
    var var_0 = reverseBits(~global0.zz);
    var var_1 = Struct_2(Struct_1(u_input.a, ~(~firstLeadingBit(0u))), Struct_1(u_input.b, u_input.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(509f, 922f, global2.x, global2.x)))))))));
    global1 = array<vec2<u32>, 25>();
    return _wgslsmith_add_i32(_wgslsmith_mult_i32((i32(-1i) * -2147483647i) & firstTrailingBit(var_0.x), -10573i) & _wgslsmith_mult_i32(abs(abs(global0.x)), -(~(-2147483647i))), reverseBits(-32969i));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, 1u));
    global0 = ~(~(~_wgslsmith_sub_vec4_i32(min(vec4<i32>(global0.x, u_input.d.x, 2147483647i, u_input.d.x), vec4<i32>(u_input.d.x, 1i, global0.x, 1i)), reverseBits(vec4<i32>(5819i, arg_0.x, u_input.d.x, -23496i)))));
    let var_1 = -530f;
    var var_2 = func_2(Struct_5(46204i, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.d.x, -34819i), vec2<i32>(arg_0.x, arg_0.x), true), global0.wy | vec2<i32>(0i, u_input.d.x)), arg_0, ~u_input.d)), Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-646f, -1794f, global2.x))))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + global2.x) - global2.x)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-974f, var_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, global2.x))))));
    return func_2(Struct_5(_wgslsmith_clamp_i32(arg_0.x, func_3(_wgslsmith_f_op_f32(sign(var_1)), true), global0.x), abs(global0.zx)), Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(304f, -319f, 639f), vec3<f32>(var_1, global2.x, 1706f), false))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_5, arg_3: i32) -> i32 {
    var var_0 = Struct_1(u_input.a, 56570u);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, arg_1)), -335f);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(_wgslsmith_sub_i32(min(_wgslsmith_add_i32(u_input.d.x, 1i), _wgslsmith_mod_i32(42759i >> (u_input.a % 32u), -21827i)), select(-19106i, ~0i, true) << (u_input.c.x % 32u)), select(~(-2147483647i | (global0.x | global0.x)), 35267i, true), ~global0.x & func_4(Struct_2(Struct_1(u_input.a, u_input.b), func_1(vec2<i32>(-1i, u_input.d.x))), _wgslsmith_f_op_f32(-global2.x), Struct_5(-954i, global0.yw), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 0i, 0i, global0.x), vec4<i32>(44695i, 0i, -7807i, -1i)))), _wgslsmith_div_i32(0i, u_input.d.x) | u_input.d.x);
    var var_0 = !(-59736i >= (_wgslsmith_add_i32(global0.x, _wgslsmith_sub_i32(-2147483647i, -2147483647i)) >> (~8455u % 32u)));
    var_0 = any(!select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), true));
    let var_1 = Struct_5(reverseBits(_wgslsmith_add_i32(global0.x & global0.x, firstLeadingBit(0i))) << (_wgslsmith_clamp_u32(~u_input.b, u_input.b, u_input.b) % 32u), vec2<i32>(-1i, -(~u_input.d.x) >> (u_input.a % 32u)));
    var_0 = false;
    var var_2 = global2.x;
    let var_3 = Struct_2(Struct_1(~65700u, ~abs(u_input.b | u_input.a)), Struct_1(_wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(u_input.b, u_input.c.x), u_input.a), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, -808f, _wgslsmith_f_op_f32(round(-1079f))), vec3<f32>(_wgslsmith_f_op_f32(max(1188f, global2.x)), _wgslsmith_f_op_f32(global2.x + 1162f), 168f), true))), _wgslsmith_mod_i32(-2147483647i, 0i << (u_input.b % 32u)), vec4<u32>(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(22501u, 0u, 24680u)), ~u_input.c), _wgslsmith_div_u32(0u, u_input.b), 4294967295u, _wgslsmith_clamp_u32(u_input.b ^ (4294967295u | var_3.a.b), _wgslsmith_mod_u32(u_input.a, var_3.a.b), min(func_1(vec2<i32>(2147483647i, global0.x)).a, 1u))), reverseBits(reverseBits(73121u)));
}

