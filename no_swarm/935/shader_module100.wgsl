struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: Struct_3,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: u32) -> f32 {
    global0 = array<Struct_5, 4>();
    global0 = array<Struct_5, 4>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1143f, 861f, -1089f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-788f, 1179f, -1000f, -1113f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-975f, 150f, -389f, 194f) - vec4<f32>(1545f, -769f, 1000f, 528f)))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1318f, 1521f, 537f, 1135f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1305f, 851f, -1573f, -707f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(1761f, 1020f, -842f, 730f), vec4<f32>(-1626f, 435f, -157f, 326f)))))));
    global0 = array<Struct_5, 4>();
    global0 = array<Struct_5, 4>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(482f)))) + _wgslsmith_f_op_f32(max(-874f, var_0.x)));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(~vec4<i32>(34074i, 41896i, -15146i, 2594i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, u_input.a), vec4<u32>(60195u, 0u, 42764u, 0u)) % vec4<u32>(32u)), Struct_4(Struct_3(vec4<u32>(u_input.a, u_input.a, 20879u, u_input.a), 27726u, vec3<bool>(true, true, true))), ~u_input.a)), 295f)));
    var var_1 = _wgslsmith_div_i32(-8759i << (_wgslsmith_mod_u32(~u_input.a, countOneBits(u_input.a)) % 32u), _wgslsmith_mult_i32(firstTrailingBit(0i), _wgslsmith_div_i32(-14234i, 32290i) << (max(1u, u_input.a) % 32u))) | _wgslsmith_sub_i32(-countOneBits(2147483647i << (0u % 32u)), -2147483647i);
    var var_2 = select(select(vec2<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true))), false), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(all(vec4<bool>(false, true, true, false)), true), true), !(any(vec3<bool>(false, true, true)) | true)), vec2<bool>(select(false, all(vec2<bool>(false, true)) && true, true), any(vec4<bool>(true, true, true, true))), !any(!select(vec2<bool>(false, true), vec2<bool>(true, true), false)));
    let var_3 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(15441u, 1u), reverseBits(vec2<u32>(u_input.a, u_input.a & 0u))), !(!(!vec4<bool>(false, true, var_2.x, true))), vec2<bool>(select(true, true & select(var_2.x, var_2.x, false), any(select(vec4<bool>(var_2.x, false, false, true), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(true, false, var_2.x, true)))), !var_2.x), max(91972u, ~abs(1u)));
    var_2 = var_3.c;
    return Struct_3(vec4<u32>(~var_3.d, ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(33351u, 7835u))), u_input.a, ~abs(24920u) & (u_input.a ^ ~u_input.a)), var_3.a, var_3.b.xyw);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 168f, -417f));
    let var_1 = Struct_5(-1i, vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 182f))), _wgslsmith_f_op_f32(abs(-185f)), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), func_2(), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~(vec3<i32>(-31266i, arg_0, 26324i) & vec3<i32>(arg_0, arg_0, arg_0)), -_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(-1i, arg_0, arg_0))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, arg_0, -27647i), countOneBits(vec3<i32>(arg_0, 0i, arg_0))), _wgslsmith_mult_vec3_i32(min(vec3<i32>(-57885i, arg_0, arg_0), vec3<i32>(-42209i, 0i, arg_0)), vec3<i32>(15192i, 2147483647i, 0i)), ~vec3<i32>(0i, -1i, -52225i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), arg_0);
    let var_2 = _wgslsmith_sub_i32(-1i, ~reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0, 0i, 0i), vec4<i32>(arg_0, arg_0, var_1.d.x, arg_0))));
    global0 = array<Struct_5, 4>();
    let var_3 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))) <= var_1.b.x);
    return func_2().b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = array<Struct_5, 4>();
    global0 = array<Struct_5, 4>();
    var var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -611f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(541f))))) && true;
    let var_1 = Struct_2(55377u, !vec4<bool>(arg_2.b >= 61514u, true, ~0i < _wgslsmith_mod_i32(0i, arg_2.a), arg_1.c), !vec2<bool>(true, !arg_2.c), arg_1.b);
    var var_2 = true;
    return all(func_2().c) & true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = vec4<bool>(41909u >= u_input.a, !func_4(_wgslsmith_sub_u32(func_1(-44630i), ~u_input.a), Struct_1(_wgslsmith_sub_i32(0i, -23208i), _wgslsmith_sub_u32(67178u, 0u), true), Struct_1(2147483647i >> (u_input.a % 32u), ~42571u, true)), (true || !func_4(33955u, Struct_1(-2818i, 6966u, false), Struct_1(1i, 4294967295u, true))) && all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f * -277f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(645f)) - _wgslsmith_div_f32(-1136f, -649f))) > -487f);
    var var_2 = !var_1.x && all(select(var_1.zz, vec2<bool>(true, var_1.x && true), true));
    let var_3 = abs(vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(u_input.a, u_input.a))), reverseBits(min(vec2<u32>(11615u, 4294967295u), vec2<u32>(23928u, u_input.a)))), select(~reverseBits(u_input.a), countOneBits(~u_input.a), any(vec3<bool>(false, false, true)))));
    var var_4 = vec4<i32>(_wgslsmith_div_i32(~35545i, -55785i), _wgslsmith_dot_vec4_i32(countOneBits(reverseBits(vec4<i32>(1i, 1i, 1i, 1i))), firstTrailingBit(countOneBits(vec4<i32>(21980i, -13556i, -1i, -30550i)))), abs(~(~1i)), -_wgslsmith_sub_i32(abs(_wgslsmith_clamp_i32(-50228i, 1i, -2147483647i)), ~_wgslsmith_mod_i32(32017i, 3250i)));
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -136f), -1883f, -228f, 1000f), vec3<u32>(firstTrailingBit(var_5.b), 4294967295u, u_input.a & ~16161u), var_4.yyy, select(abs(max(vec4<i32>(0i, var_4.x, -28133i, var_4.x), vec4<i32>(26021i, 0i, 1i, 35247i) << (var_5.a % vec4<u32>(32u)))), ~abs(-vec4<i32>(var_4.x, -22923i, -2147483647i, var_4.x)), select(!(!var_1), !(!vec4<bool>(var_1.x, true, var_1.x, var_1.x)), true | all(vec4<bool>(true, false, var_5.c.x, false)))));
}

