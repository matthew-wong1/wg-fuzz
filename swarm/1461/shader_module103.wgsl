struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    let var_0 = arg_2.b;
    var var_1 = arg_2;
    let var_2 = Struct_1(58705u, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), var_0.x, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))), select(i32(-1i) * -_wgslsmith_div_i32(37990i, -1i), arg_2.c, !arg_1.x), var_1.a, ~abs(arg_0.e));
    var_1 = arg_2;
    var_1 = arg_2;
    return true;
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_sub_u32(min(firstLeadingBit(8705u), 41145u), firstLeadingBit(firstTrailingBit(reverseBits(34158u)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-336f, -109f, _wgslsmith_f_op_f32(1027f * 1049f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1105f))))))), ~u_input.a.x, ~_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 18752u), vec2<u32>(47056u, 0u))), max(~60418u, _wgslsmith_dot_vec2_u32(vec2<u32>(20413u, 4294967295u), vec2<u32>(32137u, 85095u)))), vec4<u32>(4294967295u, 31467u, 1u, _wgslsmith_mult_u32(select(reverseBits(0u), 51811u, true), ~_wgslsmith_mod_u32(4294967295u, 18266u))));
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(var_0.e.zy), ~vec2<u32>(var_0.a, 80850u), vec2<u32>(7787u, var_0.d)), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, var_0.d), _wgslsmith_clamp_vec2_u32(var_0.e.xz, vec2<u32>(22067u, 15890u), var_0.e.zx)))), _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(-599f, var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + 157f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + 992f))))), -(~var_0.c), 45630u, var_0.e);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(var_0.b + _wgslsmith_f_op_vec4_f32(-var_0.b)), _wgslsmith_mult_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-11093i, -1i, var_0.c, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-3997i, 2147483647i, var_0.c, var_0.c), vec4<i32>(var_0.c, 16964i, -1i, -31897i))), ~1i), _wgslsmith_mult_u32(var_0.e.x, ~(~reverseBits(11969u))), _wgslsmith_add_vec4_u32(vec4<u32>(~var_0.d ^ var_0.e.x, firstTrailingBit(~12812u), var_0.d, ~countOneBits(25936u)), max(var_0.e, ~(~var_0.e))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0.a, var_0.e.x, var_0.e.x, 1u) | vec4<u32>(var_0.a, 1u, var_0.a, var_0.a), reverseBits(var_0.e)), var_0.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(987f, var_0.b.x, -156f, -435f))))), 0i, 22335u | (var_0.e.x & 1u), ~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.e, max(vec4<u32>(58015u, var_0.d, 4294967295u, var_0.d), vec4<u32>(1u, var_0.e.x, 12241u, var_0.d))), var_0.e));
    var_0 = Struct_1(var_0.d, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f * var_0.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1535f * 997f)))), _wgslsmith_f_op_f32(select(870f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-881f, -755f))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(exp2(var_0.b.x))), u_input.a.x, select(var_0.d, var_0.e.x, select(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))), true, true)), ~vec4<u32>(0u, ~var_0.a, var_0.e.x, 14369u));
    return ~u_input.a << (~firstLeadingBit(abs(var_0.e.zx | vec2<u32>(0u, 1u))) % vec2<u32>(32u));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x), arg_1.b.x, arg_1.b.x) + vec3<f32>(arg_1.b.x, arg_1.b.x, 293f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.b.yyz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.b.wzw, vec3<f32>(501f, arg_1.b.x, -2105f), true)) * _wgslsmith_f_op_vec3_f32(-arg_1.b.xyy)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)))));
    var var_1 = func_3();
    let var_2 = arg_1.c;
    var_1 = vec2<i32>(_wgslsmith_add_i32(~(var_2 & func_3().x), ~(-arg_1.c)), ~(~_wgslsmith_dot_vec3_i32(-vec3<i32>(var_2, 77147i, var_2), ~vec3<i32>(-2732i, arg_0, -112358i))));
    var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(reverseBits(var_2) | 2147483647i, ~15803i), vec2<i32>(func_3().x, _wgslsmith_dot_vec2_i32(~(~u_input.a), ~u_input.a)));
    return Struct_1(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mod_u32(arg_1.d, arg_1.d)), arg_1.d), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_1.b))), arg_1.b)), ~_wgslsmith_add_i32(_wgslsmith_add_i32(-20115i, select(27098i, 51767i, false)), arg_1.c), arg_1.e.x, arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(vec2<bool>(_wgslsmith_clamp_u32(25371u, 47413u, 4294967295u) <= 4294967295u, func_1(Struct_1(16u, vec4<f32>(-1000f, -1074f, 213f, 284f), u_input.a.x, 4294967295u, vec4<u32>(0u, 33923u, 1u, 78224u)), vec2<bool>(true, false), Struct_1(21428u, vec4<f32>(1772f, -1282f, -535f, 815f), u_input.a.x, 53928u, vec4<u32>(8415u, 0u, 0u, 4294967295u))) & false));
    var var_1 = func_2(27248i, Struct_1(7349u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(989f, -1000f, 1452f, -857f) - vec4<f32>(-580f, 1165f, 2294f, -966f)), vec4<f32>(1000f, -185f, 1000f, 2255f), !vec4<bool>(var_0, true, false, var_0)))), -(~u_input.a.x), 8600u, abs(vec4<u32>(~4294967295u, 53404u, 1u, ~24289u))));
    var_1 = Struct_1(select(var_1.a, ~(_wgslsmith_div_u32(var_1.a, 44002u) & (0u << (var_1.a % 32u))), false), _wgslsmith_f_op_vec4_f32(-var_1.b), 47032i, var_1.d, var_1.e);
    var var_2 = _wgslsmith_div_vec2_f32(var_1.b.xw, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, -568f) - vec2<f32>(var_1.b.x, 379f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_1.b.x)), all(vec4<bool>(true, var_0, false, var_0)))))))));
    var var_3 = ~max(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 6524i, var_1.c) | vec3<i32>(var_1.c, var_1.c, u_input.a.x), select(select(vec3<i32>(-22812i, -65130i, var_1.c), vec3<i32>(u_input.a.x, u_input.a.x, 25978i), true), ~vec3<i32>(-1i, -2147483647i, u_input.a.x), var_0)), min(~vec3<i32>(var_1.c, -1i, -57924i), max(abs(vec3<i32>(45856i, -14608i, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-40940i, 0i, -47138i), vec3<i32>(var_1.c, u_input.a.x, u_input.a.x)))));
    var var_4 = all(!vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -288f) <= _wgslsmith_f_op_f32(floor(750f)), var_0, !(var_1.a != 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_1.b.zxz)), var_1.b.wzx)), select(1u, var_1.a, !(true & (var_0 && true))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.wz) * var_1.b.xz)))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(69424u, 0u), vec2<u32>(var_1.d, var_1.a))), var_1.e.zz), ~(~var_1.e.wx)), var_1.b.wwx);
}

