struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = Struct_3(select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)), 1u, Struct_2(Struct_1(vec4<i32>(1i, 1i, 1i, 1i), true), Struct_1(vec4<i32>(abs(0i), min(2147483647i, -2147483647i), ~34513i, reverseBits(-1i)), true), Struct_1(abs(reverseBits(vec4<i32>(-1i, 15021i, -66446i, 4542i))), false)), Struct_2(Struct_1(vec4<i32>(1i, 1i, 1i, 1i), false), Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, -29676i, -20099i, 0i), ~vec4<i32>(-2147483647i, 40995i, 1i, 2147483647i)), true), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(2147483647i, -5681i, -9511i, 0i))), true)));
    let var_1 = Struct_1(-var_0.c.a.a, false & !(!var_0.d.b.b));
    global0 = select(24926u, 52563u, var_1.b);
    global0 = abs(10709u);
    let var_2 = vec3<i32>(0i, -9315i, i32(-1i) * -firstLeadingBit(var_0.d.b.a.x & var_0.c.a.a.x));
    return vec2<bool>((((var_0.b >= 1u) | true) & any(select(var_0.a, var_0.a, var_1.b))) && false, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.c.a.a.xww, var_0.d.a.a.xzz), _wgslsmith_add_vec3_i32(vec3<i32>(var_2.x, 0i, var_2.x), vec3<i32>(var_1.a.x, 2147483647i, 2147483647i))), var_1.a.www ^ vec3<i32>(0i, 0i, -34075i)) != 0i);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<bool> {
    global0 = max(~u_input.a.x, ~u_input.a.x) ^ countOneBits(~u_input.a.x);
    var var_0 = _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(191f - arg_0.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x))))));
    var var_1 = Struct_2(Struct_1(~arg_2.a, arg_2.b), arg_2, Struct_1(_wgslsmith_add_vec4_i32(arg_2.a, arg_2.a), arg_1.x));
    var var_2 = Struct_2(arg_2, arg_2, arg_2);
    var var_3 = 0u;
    return arg_1;
}

fn func_2(arg_0: i32) -> Struct_3 {
    return Struct_3(func_4(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2790f, _wgslsmith_f_op_f32(f32(-1f) * -135f)))), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-812f, -1000f, -1877f)))), Struct_1(vec4<i32>(-1i) * -vec4<i32>(1i, arg_0, 2147483647i, arg_0), false)), _wgslsmith_div_u32(u_input.a.x, 46965u), Struct_2(Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0, arg_0, 2147483647i), vec4<i32>(-11948i, arg_0, arg_0, arg_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0, arg_0, arg_0), vec4<i32>(0i, -1i, -1i, -16762i)), 1i, _wgslsmith_sub_i32(-1i, 0i)), true), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(8763i, -1291i, 1i, arg_0), ~vec4<i32>(arg_0, arg_0, -6935i, -1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, arg_0), vec2<i32>(2147483647i, arg_0)) >= 0i), Struct_1(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, arg_0, 2147483647i, 45403i)), reverseBits(vec4<i32>(2147483647i, -44920i, -1i, arg_0))), _wgslsmith_sub_u32(24317u, u_input.a.x) <= ~0u)), Struct_2(Struct_1(-vec4<i32>(1i, -2147483647i, 1i, arg_0) << (vec4<u32>(46521u, 4294967295u, 4903u, u_input.a.x) % vec4<u32>(32u)), !func_3(vec3<f32>(1025f, 1000f, -508f)).x), Struct_1(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_0, -39679i, arg_0, arg_0), vec4<i32>(arg_0, arg_0, -10121i, -20361i)), true), Struct_1(-select(vec4<i32>(1i, arg_0, 0i, arg_0), vec4<i32>(-38635i, -1i, -1i, -15083i), false), true)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> u32 {
    let var_0 = arg_1.b;
    var var_1 = func_2(_wgslsmith_clamp_i32(arg_1.c.c.a.x, -arg_1.d.b.a.x >> (~30037u % 32u), arg_1.d.b.a.x)).d;
    global0 = max(firstLeadingBit(4294967295u), var_0);
    var var_2 = Struct_1(-var_1.b.a, any(vec3<bool>(true, func_2(-46833i).c.c.b, !(!arg_3.a.b))));
    var var_3 = func_2(~(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.c.a.x, 11067i) << (u_input.a.zx % vec2<u32>(32u)), var_1.b.a.yz) << (arg_1.b % 32u)));
    return arg_2;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a.zy;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1085f);
    let var_2 = vec3<f32>(var_1, -306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(477f - -2489f) * _wgslsmith_f_op_f32(-var_1))));
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-677f, -1000f, -1278f, var_2.x))))))));
    global0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_0.x, 19524u, countOneBits(u_input.a.x)), ~_wgslsmith_mult_u32(4294967295u, var_0.x), u_input.a.x), vec3<u32>(func_5(vec2<f32>(-1138f, 689f), func_2(11157i), func_2(-11825i).b, func_2(1i).d), var_0.x, select(78165u, ~1011u, true)));
    return func_2(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-12223i, 0i), vec2<i32>(1i, 1i)) | (i32(-1i) * -200i))).c.c;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1046f)))));
    global0 = arg_0.b;
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(~12375u, 1u, countOneBits(~arg_0.b), 1u), select(vec4<u32>(1u >> (arg_0.b % 32u), 1u, arg_0.b, abs(u_input.a.x)), firstLeadingBit(reverseBits(vec4<u32>(78221u, 27182u, 4294967295u, arg_0.b))), select(!vec4<bool>(true, arg_0.c.a.b, true, arg_2.b), vec4<bool>(arg_1.b, false, arg_0.c.b.b, true), select(vec4<bool>(arg_1.b, arg_1.b, true, false), vec4<bool>(true, true, false, arg_2.b), false))) | vec4<u32>(arg_0.b, _wgslsmith_mult_u32(arg_0.b, 67653u ^ u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.b, arg_0.b, arg_0.b), vec4<u32>(28895u, u_input.a.x, 57325u, arg_0.b)), ~u_input.a.x));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), !func_6(Struct_3(vec2<bool>(false, true), 1u, Struct_2(Struct_1(vec4<i32>(1i, 106078i, 81899i, -9140i), false), Struct_1(vec4<i32>(-2147483647i, 2147483647i, -35193i, -2147483647i), false), Struct_1(vec4<i32>(-1i, 0i, -19870i, -865i), false)), Struct_2(Struct_1(vec4<i32>(-53499i, 2147483647i, 4797i, -1i), true), Struct_1(vec4<i32>(0i, -27827i, 1i, 12897i), false), Struct_1(vec4<i32>(-1i, -17982i, 0i, -1i), false))), Struct_1(vec4<i32>(2147483647i, 7898i, 1i, 0i), true), func_1())), u_input.a.x, Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), true), Struct_1(_wgslsmith_add_vec4_i32(select(vec4<i32>(-3037i, 2147483647i, 1i, 9692i), vec4<i32>(2147483647i, 11730i, 2147483647i, 4693i), vec4<bool>(false, false, true, false)), vec4<i32>(-80493i, -1i, 2147483647i, -1i)), func_6(func_2(8832i), func_1(), Struct_1(vec4<i32>(2147483647i, 19578i, -2147483647i, 2147483647i), false)).x), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 15809i, 33614i, -47294i) << (vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(4842i, -11114i, 2147483647i, -1i)), true)), Struct_2(func_2(1i).c.c, Struct_1(vec4<i32>(1i, 1i, 1i, 1i), true), Struct_1(firstTrailingBit(min(vec4<i32>(-2147483647i, 0i, -17172i, -25073i), vec4<i32>(1i, 23715i, -1i, 29613i))), ~1u != _wgslsmith_sub_u32(u_input.a.x, 1881u))));
    global0 = 43995u;
    global0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1667f))))), _wgslsmith_f_op_f32(-1180f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1056f))))), Struct_3(!select(func_6(Struct_3(var_0.a, 31855u, var_0.d, Struct_2(Struct_1(vec4<i32>(var_0.d.b.a.x, var_0.c.a.a.x, 59527i, var_0.d.c.a.x), var_0.a.x), var_0.c.b, var_0.c.a)), var_0.d.a, var_0.d.b), vec2<bool>(var_0.c.a.b, var_0.c.a.b), func_3(vec3<f32>(787f, 2932f, -1267f))), ~96165u, Struct_2(Struct_1(-var_0.d.a.a, !var_0.a.x), Struct_1(vec4<i32>(var_0.c.a.a.x, -12913i, var_0.c.c.a.x, -2147483647i), true), var_0.d.a), var_0.c), _wgslsmith_sub_u32(~firstTrailingBit(~1u), ~_wgslsmith_clamp_u32(4294967295u, 65777u, ~u_input.a.x)), Struct_2(var_0.d.a, func_1(), Struct_1(~vec4<i32>(var_0.d.c.a.x, var_0.d.c.a.x, 12978i, var_0.c.a.a.x), true || var_0.c.a.b)));
    let var_1 = var_0;
    var var_2 = var_0.d;
    let var_3 = firstTrailingBit(u_input.a.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-190f, -1224f)))))), vec4<u32>(select(~u_input.a.x, 0u, true | var_2.b.b), _wgslsmith_div_u32(~4294967295u, ~12704u), ~3496u ^ _wgslsmith_add_u32(98236u, var_0.b), _wgslsmith_div_u32(firstTrailingBit(var_3.x), 29317u)) & _wgslsmith_add_vec4_u32(max(max(vec4<u32>(41722u, 4294967295u, var_3.x, var_3.x), vec4<u32>(62370u, var_0.b, var_3.x, var_1.b)), vec4<u32>(0u, 846u, 17306u, 1u)), vec4<u32>(var_0.b, 0u, 47607u, 36742u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 42137u, 4294967295u, 0u), vec4<u32>(93395u, 1u, var_1.b, 0u))), 6787u, _wgslsmith_div_vec2_u32(~(~_wgslsmith_mod_vec2_u32(var_3, var_3)), u_input.a.yy), vec2<f32>(1965f, -786f));
}

