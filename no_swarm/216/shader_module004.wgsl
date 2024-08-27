struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> Struct_3 {
    global0 = any(vec2<bool>(true, true));
    let var_0 = Struct_1(1i, u_input.d, true, ~firstTrailingBit(select(_wgslsmith_mod_u32(u_input.d, 4294967295u), ~u_input.d, true)));
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1206f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1947f + -2514f))))));
    return var_1;
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> vec4<bool> {
    let var_0 = Struct_5(_wgslsmith_mult_u32(~u_input.d, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(3516u, u_input.d, u_input.d, u_input.a.x), vec4<u32>(0u, 46712u, 4294967295u, 52323u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x))), arg_0.a.x), arg_0);
    var var_1 = ~(~(i32(-1i) * -(~(-1i))));
    let var_2 = vec2<f32>(arg_0.a.x, var_0.c.a.x);
    var var_3 = vec4<i32>(~(~arg_2), -10000i, _wgslsmith_mod_i32(1i, ~3089i), i32(-1i) * -2147483647i);
    var var_4 = firstTrailingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_0.a, u_input.d), 6525u, 0u), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 0u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(47564u, var_0.a, var_0.a), vec3<u32>(58372u, u_input.a.x, 46393u), vec3<u32>(var_0.a, var_0.a, 118437u)))), vec3<u32>(7431u << ((0u | var_0.a) % 32u), abs(~u_input.d), u_input.a.x)));
    return !select(!(!(!vec4<bool>(arg_1, arg_1, arg_1, false))), vec4<bool>(all(select(vec3<bool>(true, arg_1, false), vec3<bool>(false, true, arg_1), arg_1)), arg_1, true, (var_0.a | var_4.x) < (var_0.a & var_0.a)), !arg_1);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_5, arg_3: Struct_2) -> u32 {
    var var_0 = any(func_3(func_2(), any(!vec4<bool>(true, arg_0, arg_3.a.c, false)), arg_3.a.a));
    global0 = !(false && arg_3.a.c);
    let var_1 = arg_2;
    let var_2 = Struct_4(select(arg_3.b, !select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_3.a.c, arg_3.a.c), arg_3.b), arg_3.b), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(82168u, 15204u, 20997u, 1u)), ~min(vec4<u32>(1u, 9087u, 4294967295u, 1u), vec4<u32>(4294967295u, arg_3.c, 24402u, var_1.a)), vec4<u32>(arg_2.a, arg_3.a.d, u_input.a.x, arg_2.a) >> (vec4<u32>(var_1.a, u_input.a.x, arg_3.c, arg_3.c) % vec4<u32>(32u))), ~(~(~vec4<u32>(u_input.d, 4294967295u, var_1.a, arg_3.c)))));
    let var_3 = !vec2<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2129f))) != _wgslsmith_f_op_f32(-1047f - -1000f));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))) | true, any(vec4<bool>(func_1(false, 2502f, Struct_5(4294967295u, -1000f, Struct_3(vec3<f32>(-174f, -1000f, -1102f))), Struct_2(Struct_1(0i, 4294967295u, true, u_input.d), vec2<bool>(false, true), 14208u)) < ~43526u, !(0i > u_input.c.x), !select(true, false, true), true)), true);
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2207f - 1000f) + _wgslsmith_f_op_f32(select(1276f, -633f, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1194f))), vec2<f32>(1f, 401f));
    var var_2 = _wgslsmith_mult_i32(5630i, ~(~0i));
    let var_3 = select(!vec2<bool>(any(vec4<bool>(false, false, true, true)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), select(vec2<bool>(true, (-1i < u_input.b.x) && true), !select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(Struct_3(vec3<f32>(var_1.x, -410f, var_1.x)), false, -1i).wy), !all(vec3<bool>(true, true, true))), vec2<bool>(any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), false))), true));
    var_2 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer((i32(-1i) * -_wgslsmith_add_i32(44152i, -2147483647i)) & ~(u_input.c.x & (i32(-1i) * -30390i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-327f, var_1.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(591f, var_1.x), vec2<f32>(var_1.x, -391f), vec2<bool>(true, false)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(640f, 354f, var_1.x, -1395f), vec4<f32>(-547f, 1000f, var_1.x, -1000f), vec4<bool>(var_3.x, var_3.x, var_3.x, true)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 688f, -465f, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -189f, -1256f, -3645f) - vec4<f32>(var_1.x, -1684f, var_1.x, 567f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1332f, var_1.x, -1000f, var_1.x) + vec4<f32>(var_1.x, 259f, var_1.x, -625f)) + _wgslsmith_div_vec4_f32(vec4<f32>(149f, -1860f, -1090f, var_1.x), vec4<f32>(619f, var_1.x, -396f, 848f))))));
}

