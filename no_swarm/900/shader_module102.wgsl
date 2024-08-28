struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 9362i;

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(59886i, -7878i, 0i, i32(-2147483648)), vec4<i32>(-29619i, 25226i, -25416i, 1i), vec4<i32>(-9614i, 4841i, 2147483647i, -3349i), vec4<i32>(59657i, 20949i, 47825i, i32(-2147483648)), vec4<i32>(0i, -55000i, -1i, 4603i), vec4<i32>(-32273i, -33190i, 0i, -1i), vec4<i32>(1i, -1i, 26158i, 23932i), vec4<i32>(69836i, 33285i, i32(-2147483648), 72032i), vec4<i32>(-7124i, 1i, -3677i, 31323i), vec4<i32>(19866i, 75912i, 32656i, 2147483647i), vec4<i32>(-3205i, 0i, 1i, -27987i), vec4<i32>(35550i, 70838i, -1i, 0i), vec4<i32>(-51461i, 0i, -37339i, 0i), vec4<i32>(31439i, -2737i, -1724i, -15899i), vec4<i32>(0i, -9862i, 0i, i32(-2147483648)), vec4<i32>(-27283i, -9734i, -669i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, 0i, 2147483647i), vec4<i32>(-53234i, 12974i, -31624i, -1i), vec4<i32>(1i, -15456i, -21367i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 0i), vec4<i32>(2147483647i, 22499i, -44693i, 2147483647i), vec4<i32>(2147483647i, 1i, -1i, -9273i), vec4<i32>(62433i, 67986i, -6120i, 1i), vec4<i32>(-42101i, 1i, 1i, -28428i), vec4<i32>(-3113i, 1i, 0i, 58071i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: Struct_4) -> vec4<f32> {
    global0 = -arg_3.a.b.b.x;
    var var_0 = arg_3.a.b.b.x >= 10422i;
    var var_1 = _wgslsmith_mod_vec4_u32(firstTrailingBit(~_wgslsmith_mult_vec4_u32(arg_0, arg_0)), arg_3.a.b.a);
    let var_2 = arg_3.a.b;
    let var_3 = arg_3.c;
    return _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, arg_3.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.a.a - -1755f))) + arg_3.a.a), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1426f, 744f, -1945f, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.a.a, -1000f, 432f, arg_3.a.a), vec4<f32>(-1277f, -871f, global1.x, -1169f)))))))));
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: vec2<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(func_3(firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1493u), arg_0.a.b.a), vec4<u32>(u_input.a, 69090u, 27936u, u_input.a) | vec4<u32>(1u, u_input.a, 121628u, 56098u))) << (vec4<u32>(u_input.a, ~(~u_input.a), max(u_input.a, ~u_input.a), ~4294967295u) % vec4<u32>(32u)), i32(-1i) * -(i32(-1i) * -arg_0.a.b.b.x), ~u_input.a << (~14708u % 32u), Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.a))), arg_0.a.b, arg_0.b, !select(vec3<bool>(false, arg_0.a.c, true), vec3<bool>(arg_0.a.d.x, false, true), vec3<bool>(false, true, arg_0.a.c))), arg_2.x, arg_0.c)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -2187f, global1.x, -318f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-729f, arg_0.a.a, -1710f, 2098f)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.a))), _wgslsmith_f_op_f32(f32(-1f) * -771f), -972f, 518f)));
    let var_0 = arg_0.a.b;
    let var_1 = select(arg_0.a.b.b.xy, select(max(vec2<i32>(37897i, 44561i), var_0.b.yz), var_0.b.zx, true), arg_2.x);
    var var_2 = arg_0.a;
    return Struct_1(select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 8826u, var_2.b.a.x, 12120u), firstLeadingBit(_wgslsmith_add_vec4_u32(var_2.b.a, var_2.b.a)), vec4<u32>(var_0.a.x, u_input.a, u_input.a, var_2.b.a.x) | (vec4<u32>(1u, 1u, 1u, u_input.a) & var_0.a)), var_0.a, true), -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.b.b.x, ~(-2147483647i), ~var_0.b.x, 214i), ~countOneBits(arg_0.a.b.b)));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<bool>) -> u32 {
    let var_0 = ~(~(arg_2.b.a.x & arg_2.b.a.x));
    var var_1 = abs(max(_wgslsmith_mult_i32(-(~35434i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.b.b.x, -46832i, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(46074i, arg_2.b.b.x, 14828i), arg_1.a.b.b.zwx))), arg_2.b.b.x));
    var var_2 = -201f;
    return 1u;
}

fn func_1() -> vec4<f32> {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(384f, -978f, 1451f, 1569f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1821f, 183f, global1.x) * vec4<f32>(global1.x, -384f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, global1.x, -767f, 1000f)))))))));
    let var_0 = 19185u << (func_4(countOneBits(_wgslsmith_sub_u32(u_input.a, 14014u)) >= ~4294967295u, Struct_4(Struct_3(-854f, func_2(Struct_4(Struct_3(226f, Struct_1(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a), vec4<i32>(-11141i, -7519i, -5169i, 11178i)), true, vec3<bool>(false, true, false)), false, vec4<bool>(false, true, true, false)), false, vec2<bool>(false, false)), true, vec3<bool>(true, true, true)), true, select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), Struct_3(global1.x, func_2(Struct_4(Struct_3(-987f, Struct_1(vec4<u32>(0u, u_input.a, u_input.a, 0u), global2[_wgslsmith_index_u32(4294967295u, 25u)]), false, vec3<bool>(true, false, false)), false, vec4<bool>(true, true, true, false)), true, vec2<bool>(true, true)), false, vec3<bool>(false, any(vec2<bool>(false, false)), select(true, true, false))), !vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true, true)) % 32u);
    let var_1 = select(all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(all(vec2<bool>(true, true)), true, true), false)), u_input.a < ~var_0, true);
    let var_2 = func_2(Struct_4(Struct_3(-531f, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a, var_0, 0u), vec4<u32>(var_0, 14758u, var_0, var_0)), -global2[_wgslsmith_index_u32(var_0, 25u)]), !select(var_1, false, var_1), vec3<bool>(true, true, true)), var_1, !select(select(vec4<bool>(true, true, false, var_1), vec4<bool>(var_1, false, true, false), vec4<bool>(var_1, false, var_1, true)), select(vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(false, var_1, true, false), vec4<bool>(var_1, false, false, var_1)), vec4<bool>(var_1, true, var_1, true))), false, vec2<bool>((var_1 != false) | !(var_1 | var_1), var_1 || true)).b.yww;
    global0 = var_2.x;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(~abs(firstTrailingBit(vec4<u32>(0u, 1u, u_input.a, 0u))), var_2.x | _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, var_2.x), -var_2.zz), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(8054u, 84571u), vec2<u32>(13358u, 4294967295u), vec2<u32>(u_input.a, var_0))), Struct_4(Struct_3(_wgslsmith_f_op_f32(ceil(global1.x)), Struct_1(vec4<u32>(u_input.a, u_input.a, 21506u, var_0), vec4<i32>(-6534i, -33903i, -21857i, var_2.x)), true, !vec3<bool>(var_1, false, var_1)), true, select(vec4<bool>(false, true, false, false), !vec4<bool>(var_1, var_1, false, var_1), true))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1269f, arg_2.a.x, _wgslsmith_f_op_f32(-arg_2.a.x), global1.x), _wgslsmith_f_op_vec4_f32(exp2(arg_0))));
    global0 = -2147483647i;
    global1 = arg_0;
    var var_0 = _wgslsmith_sub_vec4_u32(~min(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(arg_1.a, arg_1.a), arg_1.a), ~arg_1.a), vec4<u32>(_wgslsmith_mult_u32(arg_1.a.x, 36831u), abs(~(~20907u)), arg_1.a.x, 49367u));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - -439f) - _wgslsmith_f_op_f32(trunc(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2363f)) * _wgslsmith_f_op_f32(ceil(arg_2.a.x))), _wgslsmith_f_op_f32(sign(-1659f)), global1.x)));
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 25>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(781f, 1216f, -1508f, 268f) + vec4<f32>(1739f, global1.x, -982f, global1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(586f, -1158f, global1.x, -1025f) * vec4<f32>(global1.x, 556f, -1072f, 765f)), vec4<f32>(global1.x, global1.x, global1.x, global1.x)))));
    global1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1314f), global1.x, 1260f, _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()))), func_2(Struct_4(Struct_3(-458f, Struct_1(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), global2[_wgslsmith_index_u32(45249u, 25u)]), true, vec3<bool>(true, false, false)), true, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), true, vec2<bool>(false, true)), Struct_2(global1.wzw))));
    var var_0 = Struct_3(415f, func_2(Struct_4(Struct_3(_wgslsmith_f_op_f32(1000f * global1.x), func_2(Struct_4(Struct_3(global1.x, Struct_1(vec4<u32>(u_input.a, u_input.a, 1u, 1u), vec4<i32>(-1272i, -15529i, 33748i, 0i)), true, vec3<bool>(true, true, false)), true, vec4<bool>(false, false, true, false)), true, vec2<bool>(true, true)), true, select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), true, vec4<bool>(true, u_input.a >= 483u, any(vec2<bool>(false, false)), any(vec4<bool>(false, true, false, false)))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))) && true, select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), !select(vec2<bool>(true, true), vec2<bool>(false, false), false))), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec4_f32(func_3(abs(vec4<u32>(u_input.a, u_input.a, 32535u, 75838u)), -55777i >> (1u % 32u), ~u_input.a, Struct_4(Struct_3(-538f, Struct_1(vec4<u32>(u_input.a, u_input.a, 49525u, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 25u)]), true, vec3<bool>(true, false, true)), false, vec4<bool>(true, false, false, true)))), func_2(Struct_4(Struct_3(global1.x, Struct_1(vec4<u32>(49949u, 13689u, u_input.a, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 25u)]), false, vec3<bool>(false, false, true)), false, vec4<bool>(false, false, false, false)), true, vec2<bool>(true, true)), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -472f, -554f) * global1.xyz)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1375f) * 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f))), !vec3<bool>(any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), false, false));
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(floor(1000f)), Struct_1(vec4<u32>(countOneBits(4294967295u), _wgslsmith_sub_u32(0u, u_input.a), 78720u, var_0.b.a.x ^ 4294967295u), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(var_0.b.b.x, -1i, 35466i, 65873i)), global2[_wgslsmith_index_u32(5714u, 25u)])), true, var_0.d), all(select(select(var_0.d.xy, vec2<bool>(var_0.d.x, var_0.c), var_0.c), !var_0.d.xz, !var_0.d.xz)) && var_0.c, !(!select(vec4<bool>(var_0.c, var_0.d.x, var_0.d.x, true), vec4<bool>(var_0.c, true, true, var_0.d.x), var_0.d.x)));
    var_0 = Struct_3(960f, var_1.a.b, select(var_1.c.x, all(var_1.c), var_1.a.d.x), select(!var_0.d, var_1.a.d, !vec3<bool>(var_1.b, any(var_0.d.zx), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_1.a.b.a.x | _wgslsmith_clamp_u32(u_input.a, 1u, 4294967295u), 63233u, 4294967295u), _wgslsmith_sub_i32(-(~firstTrailingBit(var_1.a.b.b.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~var_0.b.b.xw, var_1.a.b.b.xz), vec2<i32>(2147483647i, var_0.b.b.x))));
}

