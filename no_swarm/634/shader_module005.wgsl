struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(860f, -1565f), vec3<f32>(998f, -2031f, 914f), true, vec3<f32>(-385f, 1416f, 224f), 28034u), Struct_1(vec2<f32>(933f, 1000f), vec3<f32>(138f, 191f, -842f), false, vec3<f32>(-512f, -1970f, 1912f), 4294967295u));

var<private> global3: bool;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-697f, -131f))))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -734f), _wgslsmith_f_op_f32(139f + -946f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-559f, 305f, _wgslsmith_f_op_f32(1538f - -514f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1437f, -177f, 723f), vec3<f32>(156f, -916f, 1354f))))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(424f, -158f, 513f))))), u_input.a));
    var var_1 = Struct_4(var_0.b, Struct_2(var_0.b.d.yz, Struct_1(vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(-var_0.a.x)), vec3<f32>(1518f, _wgslsmith_f_op_f32(trunc(var_0.b.d.x)), var_0.a.x), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(928f, var_0.a.x, 1779f) - var_0.b.b) * _wgslsmith_f_op_vec3_f32(-var_0.b.b)), ~var_0.b.e)), vec2<i32>(firstLeadingBit(-u_input.b | _wgslsmith_clamp_i32(1i, u_input.d, 1399i)), ~countOneBits(u_input.b)));
    global1 = array<Struct_3, 20>();
    global0 = arg_0.x;
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.a), var_0.a, !arg_0.zz)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a.b.x))), var_1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.x - 621f) * _wgslsmith_div_f32(var_1.b.a.x, var_0.a.x))), all(!arg_0.xx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a.d + var_1.a.b) * vec3<f32>(296f, var_0.b.b.x, var_0.b.a.x))), u_input.a), Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(-557f, 1089f))))), Struct_1(var_0.a, var_0.b.d, var_1.b.b.c, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-915f, var_0.b.b.x, 1000f))), ~4294967295u)), ~var_1.c | _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.e, vec2<i32>(10817i, var_1.c.x)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.x, u_input.d), u_input.e)), var_1.c));
    return all(vec2<bool>(var_2.b.b.c, true)) || all(select(vec4<bool>(var_1.b.b.c | false, any(vec4<bool>(false, true, true, var_2.b.b.c)), true, true), select(vec4<bool>(var_1.a.c, false, false, false), select(vec4<bool>(false, arg_0.x, false, true), vec4<bool>(var_2.b.b.c, false, false, true), var_1.a.c), false), all(select(arg_0, vec3<bool>(true, var_1.a.c, arg_0.x), arg_0))));
}

fn func_2() -> bool {
    global0 = false;
    var var_0 = u_input.b;
    global3 = all(select(vec4<bool>(all(vec2<bool>(true, false)), select(false, true, true), select(false, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), true, true, true))) || select(any(vec3<bool>(func_3(vec3<bool>(true, true, true)), func_3(vec3<bool>(false, true, false)), true)), !select(all(vec3<bool>(false, true, false)), true, all(vec2<bool>(false, false))), true);
    var var_1 = true & !select(true, !(u_input.b > -2147483647i), true == (1u >= u_input.c));
    var var_2 = Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(24836i, u_input.d, -31165i), vec3<i32>(u_input.d, 2147483647i, u_input.e.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.e.x, u_input.d), vec3<i32>(0i, u_input.b, -32543i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e.x, u_input.d, u_input.b) << (vec3<u32>(7113u, u_input.c, 0u) % vec3<u32>(32u)), max(vec3<i32>(-7085i, u_input.d, -2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.e.x)), -vec3<i32>(0i, u_input.b, u_input.e.x))) >= countOneBits(u_input.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(587f)) - -1062f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(197f, -123f)), 766f))))), u_input.e, Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(112f, _wgslsmith_f_op_f32(1956f - -1383f))), global2[_wgslsmith_index_u32(55438u, 2u)]));
    return var_2.d.b.c;
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec4<u32>(firstTrailingBit(~abs(~arg_1.x)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 55143u, 1u), max(arg_1, arg_1), _wgslsmith_clamp_vec3_u32(arg_1, vec3<u32>(arg_1.x, arg_1.x, 52818u), vec3<u32>(0u, arg_1.x, arg_1.x))), arg_1), arg_3.b.e, arg_1.x);
    var var_1 = select(vec3<bool>(arg_3.b.c, true, arg_3.b.c), arg_0.a.wzw, all(select(select(vec3<bool>(arg_0.a.x, false, arg_0.a.x), vec3<bool>(true, false, arg_3.b.c), vec3<bool>(false, false, true)), vec3<bool>(true, arg_0.a.x, true), arg_0.a.wzy)));
    let var_2 = select(arg_0.a, !arg_0.a, vec4<bool>(any(vec4<bool>(true, true, true, any(arg_0.a))), !arg_3.b.c, func_3(vec3<bool>(arg_3.b.c, true, true)), any(arg_0.a.xzx)));
    var var_3 = u_input.e.x;
    global3 = arg_0.a.x;
    return Struct_2(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-1567f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3.b.b.x))))), Struct_1(arg_2.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(144f, arg_3.b.a.x, arg_2.x) * arg_2) + vec3<f32>(arg_3.b.a.x, arg_2.x, 1222f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-241f, arg_3.b.d.x, 657f), arg_3.b.b))))), !var_1.x, arg_3.b.d, arg_3.b.e));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, _wgslsmith_div_f32(1000f, -231f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, -772f, -1522f))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1877f, -1307f, 2093f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(394f, 1417f, -1702f), vec3<f32>(-1192f, -2504f, -400f), true)), all(vec4<bool>(true, true, true, false))))), firstLeadingBit(~(u_input.a >> (arg_2 % 32u)))), func_4(Struct_5(vec4<bool>(true, false, true, func_2())), (arg_1 >> (vec3<u32>(u_input.c, 4294967295u, arg_1.x) % vec3<u32>(32u))) << (abs(vec3<u32>(42737u, 55665u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(989f, 1000f, -681f)) + vec3<f32>(416f, _wgslsmith_f_op_f32(ceil(-1316f)), _wgslsmith_f_op_f32(trunc(-285f)))), Struct_2(vec2<f32>(-466f, -2016f), global2[_wgslsmith_index_u32(arg_2, 2u)])), ~_wgslsmith_sub_vec2_i32(u_input.e, u_input.e | u_input.e));
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1011f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1657f * -1019f), var_1.b.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1132f - _wgslsmith_div_f32(var_1.b.b.x, 2401f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(475f - 550f)))));
    var var_3 = var_2.yy;
    var_1 = var_0.b;
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(firstTrailingBit(var_0.a.e), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(46217u, 44040u, u_input.c), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.e, var_1.b.e, var_0.b.b.e), arg_1)))), ~_wgslsmith_mult_u32(select(abs(var_1.b.e), var_1.b.e, !var_0.b.b.c), 42435u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true != (all(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))) && (func_1(u_input.b, ~vec3<u32>(u_input.c, u_input.a, 4294967295u), 96456u) < u_input.c));
    var var_0 = Struct_5(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, false, true)), u_input.a <= 0u, false), select(0u != u_input.c, true, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-955f, 1000f, 126f, 1238f) * vec4<f32>(1848f, -1363f, -920f, 952f)) - vec4<f32>(630f, 1454f, -1672f, -827f))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_4(Struct_5(var_0.a), vec3<u32>(u_input.c, 10323u, 1u), vec3<f32>(242f, -1000f, -488f), Struct_2(vec2<f32>(1105f, -394f), global2[_wgslsmith_index_u32(u_input.a, 2u)])).b.a.x), -2114f), -765f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1793f, -752f))), 849f));
    var_0 = Struct_5(var_0.a);
    let var_2 = func_4(Struct_5(vec4<bool>(true, !(var_0.a.x & false), var_0.a.x, true)), ~reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.a), vec3<u32>(u_input.a, 84689u, 1964u)), select(vec3<u32>(37554u, 82440u, u_input.a), vec3<u32>(u_input.c, u_input.c, u_input.c), var_0.a.yyz), vec3<u32>(1u, 0u, u_input.a))), vec3<f32>(var_1.x, 299f, var_1.x), Struct_2(var_1.xw, func_4(Struct_5(var_0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(123214u, u_input.c, 87831u)) | (vec3<u32>(u_input.a, u_input.a, 4294967295u) ^ vec3<u32>(1u, u_input.a, 1u)), var_1.yxw, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -197f) * var_1.xz), Struct_1(vec2<f32>(var_1.x, 263f), var_1.yxy, false, vec3<f32>(var_1.x, var_1.x, -1143f), u_input.c))).b));
    var var_3 = Struct_3(!all(!(!vec4<bool>(true, var_2.b.c, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_1.x)))), countOneBits(_wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.d), u_input.e), vec2<i32>(-21571i, -u_input.e.x))), Struct_2(var_2.b.d.zz, func_4(Struct_5(!var_0.a), firstLeadingBit(~vec3<u32>(u_input.a, 4294967295u, 8189u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.ywy * vec3<f32>(var_2.a.x, -521f, -877f)), _wgslsmith_f_op_vec3_f32(floor(var_1.xzw)), var_0.a.xwy)), var_2).b));
    global2 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.b * -860f));
}

