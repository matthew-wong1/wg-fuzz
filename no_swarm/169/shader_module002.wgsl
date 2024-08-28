struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_2 {
    global0 = array<vec2<f32>, 9>();
    let var_0 = 1i;
    var var_1 = _wgslsmith_mod_i32(15268i, u_input.d.x);
    var var_2 = Struct_4(vec3<bool>(all(vec3<bool>(true, arg_1.x, 44888i != arg_0.a.x)), true, arg_1.x));
    global0 = array<vec2<f32>, 9>();
    return Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1003f, -2236f, arg_2.x, 997f)) - vec4<f32>(1442f, -965f, arg_2.x, -199f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -797f, arg_2.x) * vec4<f32>(112f, arg_2.x, -241f, arg_2.x)), vec4<f32>(arg_2.x, 718f, 1255f, arg_2.x)))));
}

fn func_3(arg_0: Struct_2) -> Struct_4 {
    var var_0 = func_2(arg_0.a, select(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), select(vec3<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(false, true, true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(vec3<bool>(false, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 2941f, _wgslsmith_f_op_f32(f32(-1f) * -874f)) * _wgslsmith_f_op_vec3_f32(-arg_0.b.xyz))).b.x;
    var var_1 = Struct_4(!vec3<bool>(!all(vec3<bool>(true, true, false)), u_input.b.x > -1i, true));
    let var_2 = var_1.a.x;
    let var_3 = arg_0;
    var_1 = Struct_4(vec3<bool>(false, any(vec4<bool>(false, true, var_1.a.x || var_1.a.x, all(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x)))), !(-483f > _wgslsmith_f_op_f32(var_3.b.x + arg_0.b.x))));
    return Struct_4(!select(vec3<bool>(!var_1.a.x, any(vec4<bool>(false, var_1.a.x, var_1.a.x, var_1.a.x)), !var_1.a.x), var_1.a, true));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> Struct_4 {
    let var_0 = arg_1.a;
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    return Struct_4(select(!var_0, arg_1.a, arg_1.a.x));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(func_3(func_2(Struct_1(vec2<i32>(0i, 31497i) << (vec2<u32>(u_input.a, 40607u) % vec2<u32>(32u)), vec4<u32>(0u, u_input.e, u_input.e, 120527u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(106f, -1119f, -469f))))), func_3(func_2(Struct_1(-vec2<i32>(u_input.d.x, -2493i), vec4<u32>(u_input.e, 14737u, 4294967295u, u_input.a) & vec4<u32>(0u, u_input.a, 26652u, 54961u)), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false)), vec3<f32>(-799f, _wgslsmith_f_op_f32(434f * 124f), _wgslsmith_f_op_f32(f32(-1f) * -1528f)))));
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    global0 = array<vec2<f32>, 9>();
    return func_2(func_2(func_2(func_2(func_2(Struct_1(u_input.c.zz, vec4<u32>(8232u, u_input.a, u_input.a, u_input.e)), var_0.a, vec3<f32>(-269f, 209f, -1000f)).a, var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(825f, 860f, 971f) + vec3<f32>(-576f, 969f, 252f))).a, !vec3<bool>(var_0.a.x, false, var_0.a.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(877f, 1000f, -1023f)), vec3<f32>(1000f, 1000f, 1000f)))).a, !var_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1082f, -175f, 849f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, -707f, 746f)))).a, !(!select(var_0.a, vec3<bool>(true, false, false), func_4(Struct_4(var_0.a), Struct_4(vec3<bool>(var_0.a.x, false, false))).a.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1297f, 2087f, 940f))))))))).a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<i32>) -> vec2<i32> {
    var var_0 = Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)));
    var var_1 = u_input.d.x != arg_0.a.x;
    var var_2 = true;
    var var_3 = arg_0.b.x;
    var_0 = func_2(func_1(), func_4(func_3(func_2(func_1(), func_3(Struct_2(Struct_1(vec2<i32>(2147483647i, 1i), arg_0.b), var_0.b)).a, _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, arg_1.x, 510f), arg_1.xzx))), Struct_4(func_4(Struct_4(vec3<bool>(true, true, false)), Struct_4(vec3<bool>(true, false, true))).a)).a, func_2(Struct_1(_wgslsmith_mult_vec2_i32(~var_0.a.a, reverseBits(var_0.a.a)), _wgslsmith_div_vec4_u32(func_1().b, arg_0.b | arg_0.b)), vec3<bool>(true, true, true), arg_1.yxw).b.zyx);
    return var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(729f, 982f, 1173f, 1000f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-108f, -1095f, -381f, 922f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1936f, _wgslsmith_f_op_f32(min(-2655f, -1316f)), _wgslsmith_f_op_f32(trunc(-1268f)), -1000f)))), func_2(Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 15565i), u_input.d), u_input.b.yy), countOneBits(vec4<u32>(u_input.a, 4294967295u, 0u, 4294967295u)) ^ ~vec4<u32>(u_input.e, 40381u, 35916u, u_input.a)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(109f)), _wgslsmith_f_op_f32(-180f - -255f), _wgslsmith_div_f32(1000f, -1000f))))).b.x, ~(-(~_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(u_input.c.x, u_input.d.x, -1i)))));
    global0 = array<vec2<f32>, 9>();
    let var_1 = Struct_3(_wgslsmith_add_vec2_i32(select(~vec2<i32>(u_input.b.x, u_input.d.x), vec2<i32>(2147483647i, u_input.d.x) ^ -vec2<i32>(u_input.d.x, 5829i), true), abs(abs(u_input.c.xz))));
    let var_2 = func_2(Struct_1(-u_input.b.yy, ~select(vec4<u32>(u_input.a, u_input.a, 1u, u_input.e), vec4<u32>(u_input.e, u_input.e, u_input.a, u_input.e), any(vec4<bool>(false, true, true, true)))), select(func_3(func_2(func_2(Struct_1(vec2<i32>(var_1.a.x, 45166i), vec4<u32>(0u, 20885u, 101123u, 24167u)), vec3<bool>(false, true, true), vec3<f32>(-1058f, 557f, 868f)).a, vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(432f, -1000f, 1089f), vec3<f32>(1000f, 116f, 775f))))).a, !func_3(Struct_2(Struct_1(u_input.b.xz, vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.e)), vec4<f32>(260f, 1000f, 162f, -684f))).a, vec3<bool>(false, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-578f, func_2(Struct_1(u_input.d, vec4<u32>(0u, u_input.e, u_input.a, u_input.a)), vec3<bool>(true, false, false), vec3<f32>(887f, 1455f, 100f)).b.x)), _wgslsmith_f_op_f32(min(625f, _wgslsmith_f_op_f32(f32(-1f) * -225f))), _wgslsmith_f_op_f32(177f + -425f)));
    var_0 = var_1.a;
    let var_3 = func_2(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(-21019i, 7594i), firstLeadingBit(vec2<i32>(var_0.x, 2147483647i))), ~var_2.a.b), func_4(func_4(Struct_4(vec3<bool>(true, true, true)), Struct_4(vec3<bool>(false, false, true))), func_4(Struct_4(func_4(Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(true, false, false))).a), func_4(func_4(Struct_4(vec3<bool>(false, true, false)), Struct_4(vec3<bool>(false, false, false))), func_3(var_2)))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-357f, var_2.b.x), _wgslsmith_f_op_f32(var_2.b.x + -335f), 601f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.x, 2285f, var_2.b.x)) * _wgslsmith_f_op_vec3_f32(abs(var_2.b.zyy)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_add_u32(countOneBits(15246u), 8043u)), 170f, var_3.a.b.zwz);
}

