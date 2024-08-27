struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<f32>(-1227f, -132f, 1755f, -369f), vec3<i32>(2147483647i, 2147483647i, -31569i), 0u), Struct_1(vec4<f32>(-1000f, -162f, -840f, 852f), vec3<i32>(0i, -13686i, -1i), 1u), Struct_1(vec4<f32>(971f, 939f, 870f, 729f), vec3<i32>(32215i, i32(-2147483648), -9386i), 21383u), Struct_1(vec4<f32>(567f, 1087f, 363f, 930f), vec3<i32>(23898i, -9936i, 0i), 4294967295u), Struct_1(vec4<f32>(2572f, -1664f, -1460f, 1000f), vec3<i32>(-59795i, 75260i, 0i), 0u), Struct_1(vec4<f32>(-298f, 1762f, 221f, 1000f), vec3<i32>(-27817i, 68189i, 57481i), 15874u), Struct_1(vec4<f32>(-831f, -332f, 1107f, 1127f), vec3<i32>(1i, -66971i, 16476i), 0u), Struct_1(vec4<f32>(310f, 172f, -2676f, 111f), vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), 8959u), Struct_1(vec4<f32>(-434f, -1000f, -2027f, 510f), vec3<i32>(10047i, -19613i, -51252i), 46105u), Struct_1(vec4<f32>(1347f, -1110f, -502f, 776f), vec3<i32>(-15553i, 2147483647i, 2147483647i), 15829u), Struct_1(vec4<f32>(1029f, -1338f, 1183f, 779f), vec3<i32>(i32(-2147483648), 0i, 8423i), 1u), Struct_1(vec4<f32>(1137f, -1648f, -250f, 606f), vec3<i32>(-48763i, -59629i, 17857i), 0u), Struct_1(vec4<f32>(432f, 216f, -3230f, 746f), vec3<i32>(65235i, 1i, -44090i), 0u), Struct_1(vec4<f32>(714f, 1173f, -729f, 923f), vec3<i32>(1i, -9383i, -85161i), 0u), Struct_1(vec4<f32>(-293f, -403f, 603f, 507f), vec3<i32>(1i, 12731i, -21582i), 52043u), Struct_1(vec4<f32>(441f, 1000f, 423f, 592f), vec3<i32>(1i, -1i, 0i), 4294967295u), Struct_1(vec4<f32>(-153f, -690f, 665f, 867f), vec3<i32>(-1i, -24722i, 23228i), 4294967295u), Struct_1(vec4<f32>(756f, -192f, -757f, 509f), vec3<i32>(2147483647i, 43631i, -1006i), 12119u));

var<private> global1: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_4) -> vec2<f32> {
    global0 = array<Struct_1, 18>();
    var var_0 = (-40448i | arg_0.x) >> (countOneBits(~(~(~0u))) % 32u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.a.x) - -1271f);
    var var_2 = !select(select(vec4<bool>(true, arg_1.a.e.x, all(arg_1.a.e.yy), arg_1.a.e.x), select(vec4<bool>(false, arg_1.a.e.x, arg_1.a.e.x, arg_1.a.e.x), arg_1.a.e, vec4<bool>(true, true, true, true)), vec4<bool>(true | arg_1.a.e.x, arg_1.a.e.x, any(arg_1.a.e.yww), true)), vec4<bool>(true, any(select(vec2<bool>(arg_1.a.e.x, arg_1.a.e.x), vec2<bool>(arg_1.a.e.x, arg_1.a.e.x), false)), _wgslsmith_f_op_f32(var_1 * -673f) >= _wgslsmith_f_op_f32(arg_1.b.a.x + arg_1.a.b.a.x), true), any(!arg_1.a.e.yxx));
    let var_3 = vec2<f32>(-542f, arg_1.b.a.x);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, arg_1.a.b.a.x)), _wgslsmith_f_op_vec2_f32(-var_3))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(var_3.x)), -1379f)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3 - vec2<f32>(1470f, arg_1.a.b.a.x))))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(u_input.d, Struct_4(Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, 54252u)), max(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(26335u, u_input.a, 1u))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-197f, -299f, 2901f, -259f))), ~u_input.d, countOneBits(u_input.a)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 21876u), vec3<u32>(1u, 4294967295u, u_input.a)), vec2<f32>(458f, _wgslsmith_f_op_f32(291f - 103f)), vec4<bool>(select(true, true, false), all(vec3<bool>(true, false, false)), select(true, true, false), true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(126f, 519f, 496f, -354f)))), u_input.c, firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 1u))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1546f, var_0.x, var_0.x, var_0.x))))), ~u_input.c, ~u_input.a);
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = Struct_2(vec3<u32>(_wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a, ~(~(u_input.a | 0u))), func_2(), _wgslsmith_div_vec3_u32(abs(min(select(vec3<u32>(61000u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 25485u), vec3<bool>(true, true, true)), ~vec3<u32>(u_input.a, 0u, 4294967295u))), vec3<u32>(~58531u, u_input.a, ~u_input.a) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 20349u, u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.a, 19314u, 21952u) | vec3<u32>(u_input.a, 10557u, 11449u))), _wgslsmith_f_op_vec2_f32(func_3(-u_input.d, Struct_4(Struct_2(reverseBits(vec3<u32>(77787u, u_input.a, 4729u)), global0[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_mult_vec3_u32(vec3<u32>(41539u, u_input.a, 4294967295u), vec3<u32>(1u, 36431u, u_input.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1658f, -987f), vec2<f32>(-1295f, arg_0.x))), vec4<bool>(true, true, true, true)), func_2()))), !select(vec4<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)), true, arg_0.x < arg_0.x), vec4<bool>(true, false, true, false), true));
    let var_1 = Struct_3(var_0.e.x);
    var_0 = Struct_2(~vec3<u32>(~34716u, 0u, u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, (var_0.c.x ^ min(0u, u_input.a)) ^ _wgslsmith_div_u32(0u, ~52958u)), 18u)], var_0.c, _wgslsmith_f_op_vec2_f32(var_0.d - vec2<f32>(-330f, func_2().a.x)), select(!select(select(vec4<bool>(true, false, var_0.e.x, false), var_0.e, var_0.e), vec4<bool>(true, false, var_1.a, false), var_0.e), var_0.e, !select(vec4<bool>(var_1.a, true, false, var_1.a), vec4<bool>(var_0.e.x, var_0.e.x, true, var_1.a), all(vec2<bool>(var_1.a, true)))));
    var var_2 = -184f;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2302f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.a.x)))) * -1365f), -692f, arg_0.x);
    return Struct_3(any(select(!(!var_0.e.zx), select(!vec2<bool>(var_1.a, var_0.e.x), select(vec2<bool>(var_1.a, var_0.e.x), vec2<bool>(var_0.e.x, false), var_0.e.zw), var_0.e.zx), vec2<bool>(any(vec3<bool>(var_0.e.x, false, true)), any(var_0.e.zxz)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(1i, u_input.b), ~abs(u_input.d.x));
    let var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2679f, -1113f, 551f, 1000f), vec4<f32>(1000f, -243f, 722f, 960f), vec4<bool>(true, false, true, true))))))));
    let var_2 = _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(47441u, u_input.a, 102690u))), ~(~u_input.a))), abs(vec3<u32>(u_input.a, u_input.a | 2881u, u_input.a) | ~reverseBits(vec3<u32>(0u, u_input.a, u_input.a))));
    global1 = var_1.a;
    global1 = var_1.a;
    global1 = all(select(select(vec3<bool>(true, true | var_1.a, !var_1.a), select(!vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(true, true, true), var_1.a), func_1(vec4<f32>(-373f, 413f, -109f, -747f)).a), select(!(!vec3<bool>(false, var_1.a, true)), select(!vec3<bool>(var_1.a, false, var_1.a), select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(false, true, var_1.a), vec3<bool>(false, var_1.a, var_1.a)), var_1.a), select(!vec3<bool>(true, var_1.a, var_1.a), select(vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(true, true, false)), false)), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-155f * -854f)))), abs(0u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1538f, -1146f, 1000f, -284f) - vec4<f32>(1009f, -1052f, 724f, -1039f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-451f, 444f, -973f, -1000f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-583f * -1290f) + -599f), -779f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) - _wgslsmith_f_op_f32(-1000f - 784f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200f - 129f))))), vec3<i32>(var_0.x, u_input.c.x, -11890i), -vec2<i32>(-_wgslsmith_div_i32(17166i, u_input.c.x), var_0.x));
}

