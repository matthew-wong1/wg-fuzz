struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 38882i;

var<private> global1: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(vec3<u32>(9478u, 17922u, 1u), Struct_1(vec4<u32>(32719u, 1u, 26632u, 1u), false, vec3<f32>(-268f, -488f, 161f), vec3<bool>(false, false, false), vec3<u32>(1u, 18485u, 26660u))), Struct_4(vec3<u32>(700u, 86499u, 1u), Struct_1(vec4<u32>(58431u, 0u, 83875u, 71801u), true, vec3<f32>(431f, -714f, 1625f), vec3<bool>(false, true, true), vec3<u32>(50480u, 10749u, 99107u))), Struct_4(vec3<u32>(723u, 23525u, 8779u), Struct_1(vec4<u32>(1u, 43198u, 4294967295u, 0u), false, vec3<f32>(131f, -1087f, 637f), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 1u, 1u))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_2(~reverseBits(u_input.c.zz));
    var var_1 = select(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), true), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, u_input.a < 57306i), false), vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), true, true)), vec3<bool>(arg_0.x != _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), -2147483647i), countOneBits(select(20587u, var_0.a.x, true)) <= var_0.a.x, !any(vec3<bool>(true, true, true))), !vec3<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), false != all(vec2<bool>(true, false)), false));
    global1 = array<Struct_4, 3>();
    var_1 = select(!select(vec3<bool>(var_1.x, true, 1u != u_input.b), vec3<bool>(u_input.a <= arg_0.x, true, false), var_1.x), vec3<bool>(!all(vec3<bool>(true, false, true)), !(u_input.c.x > 0u) & var_1.x, false), select(select(vec3<bool>(var_1.x || var_1.x, !var_1.x, any(var_1.xx)), vec3<bool>(true, true, false), !(!vec3<bool>(var_1.x, var_1.x, false))), vec3<bool>(var_1.x, select(var_1.x, var_1.x & var_1.x, 1u == u_input.c.x), true), var_1.x != var_1.x));
    let var_2 = var_1.x;
    return 4294967295u;
}

fn func_2(arg_0: bool) -> Struct_3 {
    global1 = array<Struct_4, 3>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(944f, 407f, -1156f, 185f), vec4<f32>(-1000f, -317f, 145f, -776f)))))));
    global0 = u_input.a;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-395f, -219f, false)) - var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))));
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b, ~u_input.b), _wgslsmith_dot_vec3_u32(~u_input.c.zwz, ~vec3<u32>(u_input.c.x, 17280u, 30550u))), 11503u, ~countOneBits(u_input.b), 0u), all(select(!(!vec3<bool>(true, arg_0, arg_0)), vec3<bool>(true, true, !arg_0), any(!vec3<bool>(arg_0, arg_0, false)))), _wgslsmith_f_op_vec3_f32(-var_0.zyw), !vec3<bool>(!arg_0 && arg_0, true, arg_0), vec3<u32>(u_input.c.x, 1u, _wgslsmith_mult_u32(func_3(vec2<i32>(2147483647i, u_input.a)) >> (u_input.b % 32u), u_input.b)));
    return Struct_3(199f);
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = func_2(all(vec2<bool>(true, true)) | (_wgslsmith_sub_i32(1i, u_input.a) < u_input.a));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(305f, -1356f)), 111f, 834f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1140f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(447f, _wgslsmith_f_op_f32(select(-954f, var_0.a, true)), true)) + _wgslsmith_f_op_f32(min(func_2(false).a, _wgslsmith_f_op_f32(-1000f + var_0.a))))));
    var_0 = func_2(false);
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.a, _wgslsmith_mult_i32(2147483647i, u_input.a), u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a) & min(vec3<i32>(7258i, -13777i, 36479i), vec3<i32>(2147483647i, -2147483647i, u_input.a)), firstLeadingBit(select(vec3<i32>(u_input.a, 24054i, 2147483647i), vec3<i32>(2147483647i, -10714i, u_input.a), true)))), _wgslsmith_mult_vec3_i32(vec3<i32>(-firstTrailingBit(u_input.a), _wgslsmith_sub_i32(-u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a)), u_input.a), abs(abs(vec3<i32>(u_input.a, 11884i, u_input.a)))));
    var_2 = select(vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a, -2147483647i >> (0u % 32u)), vec3<i32>(_wgslsmith_sub_i32(-(~var_2.x), -2147483647i), u_input.a, abs(0i)), true);
    return select(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) >= func_2(true).a, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, all(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), false)), true)), _wgslsmith_f_op_f32(min(-1350f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1564f))))) == -1000f, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-160f)) + _wgslsmith_f_op_f32(f32(-1f) * -642f)))));
    global0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(sign(321f));
    global1 = array<Struct_4, 3>();
    let var_2 = var_0.zy;
    global0 = firstLeadingBit(u_input.a);
    global1 = array<Struct_4, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1)), _wgslsmith_f_op_f32(var_1 * -157f)))), ~(~vec3<u32>(u_input.c.x, 47193u, ~24779u)), _wgslsmith_div_u32(u_input.b, _wgslsmith_dot_vec3_u32(min(u_input.c.xxy, vec3<u32>(1u, u_input.c.x, 1864u)), u_input.c.zyz)), -_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a), min(firstLeadingBit(vec2<i32>(u_input.a, 1i)), vec2<i32>(0i, 0i))));
}

