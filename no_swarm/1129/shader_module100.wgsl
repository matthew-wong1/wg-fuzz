struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-167f, -284f, 1806f), vec3<f32>(-1000f, 533f, -329f), vec3<f32>(1234f, -604f, -804f), vec3<f32>(-908f, 1000f, 162f));

var<private> global1: array<vec4<f32>, 13>;

var<private> global2: bool;

var<private> global3: array<vec4<i32>, 31> = array<vec4<i32>, 31>(vec4<i32>(58003i, 38620i, -319i, -35053i), vec4<i32>(i32(-2147483648), -15967i, -1i, 32490i), vec4<i32>(1i, 17529i, 6798i, 1i), vec4<i32>(20926i, -4078i, i32(-2147483648), 1i), vec4<i32>(2147483647i, 2861i, -16998i, -12037i), vec4<i32>(1i, 2147483647i, -23357i, -7810i), vec4<i32>(12355i, 1i, -1i, 20152i), vec4<i32>(17371i, 0i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, 25831i, -1i), vec4<i32>(1i, 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(-8046i, 2147483647i, 0i, -1i), vec4<i32>(i32(-2147483648), 32870i, -1i, 0i), vec4<i32>(15735i, -12047i, -1i, 4533i), vec4<i32>(-24279i, -9272i, 1i, 2147483647i), vec4<i32>(1i, 0i, -1i, 0i), vec4<i32>(i32(-2147483648), -1i, -6293i, 17906i), vec4<i32>(30715i, -1i, 22924i, i32(-2147483648)), vec4<i32>(40508i, 17573i, 4286i, 2147483647i), vec4<i32>(-1i, 67587i, 8332i, 2147483647i), vec4<i32>(-3053i, 9716i, 11715i, 19795i), vec4<i32>(61058i, -1i, 2147483647i, 8772i), vec4<i32>(i32(-2147483648), -66985i, 0i, -6301i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -1i), vec4<i32>(17961i, 32193i, -29530i, 1i), vec4<i32>(10528i, 2147483647i, 56296i, i32(-2147483648)), vec4<i32>(24187i, 2147483647i, 2147483647i, 0i), vec4<i32>(0i, 54263i, i32(-2147483648), 0i), vec4<i32>(2147483647i, -34610i, 21150i, i32(-2147483648)), vec4<i32>(15047i, 1i, -1i, 0i), vec4<i32>(2147483647i, 2527i, -15038i, 2147483647i), vec4<i32>(1i, 1i, 75211i, -11759i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1038f, -407f)), vec2<f32>(-1000f, 449f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1368f)), -1620f)));
    global0 = array<vec3<f32>, 4>();
    let var_1 = u_input.b.x;
    return ~_wgslsmith_add_u32(1u, var_1);
}

fn func_3() -> bool {
    let var_0 = vec3<u32>(~4294967295u, _wgslsmith_div_u32(44356u, select(~(u_input.b.x | 4294967295u), _wgslsmith_sub_u32(~66203u, u_input.a.x), all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true)))), ~u_input.b.x);
    let var_1 = Struct_1(~(~_wgslsmith_dot_vec3_u32(~var_0, ~vec3<u32>(var_0.x, 22273u, u_input.b.x))), var_0.zy);
    global0 = array<vec3<f32>, 4>();
    let var_2 = !vec4<bool>(true, all(vec2<bool>(false, true)), all(vec2<bool>(any(vec4<bool>(false, false, true, false)), true)), true);
    var var_3 = select(vec4<bool>(var_2.x, var_2.x, false || (_wgslsmith_mult_i32(41966i, 50694i) >= select(-1i, -1i, false)), true || var_2.x), select(var_2, select(!(!var_2), var_2, all(select(var_2.yxz, vec3<bool>(var_2.x, var_2.x, false), var_2.x))), var_2.x), false);
    return true && !any(!var_2);
}

fn func_4(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> vec2<i32> {
    var var_0 = Struct_3(select(abs(19728i), -32989i, !arg_1.x), Struct_1(~41693u, ~u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, 1215f, arg_0, 1013f)))) - global1[_wgslsmith_index_u32(~min(~u_input.b.x, ~14190u), 13u)]), vec3<bool>(false & any(!arg_1), !arg_1.x, _wgslsmith_div_u32(0u, countOneBits(1u)) < countOneBits(~u_input.c)), arg_1);
    let var_1 = Struct_2(-61351i);
    global2 = all(vec4<bool>(any(!vec3<bool>(false, false, arg_1.x)), false, all(arg_1), true));
    let var_2 = Struct_2(-15584i);
    global2 = false;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(i32(-1i) * -26629i, -13257i), var_0.a), _wgslsmith_mod_vec2_i32(-(~(vec2<i32>(-39922i, var_1.a) ^ vec2<i32>(var_1.a, -74579i))), -_wgslsmith_div_vec2_i32(vec2<i32>(var_2.a, 24488i), vec2<i32>(var_0.a, 14457i)) | _wgslsmith_div_vec2_i32(vec2<i32>(var_0.a, -2147483647i), vec2<i32>(-2147483647i, var_2.a))));
}

fn func_5(arg_0: Struct_4) -> vec2<u32> {
    let var_0 = Struct_1(~_wgslsmith_dot_vec2_u32(~vec2<u32>(26048u, 60180u), min(vec2<u32>(1u, u_input.b.x), vec2<u32>(8780u, 1u) << (u_input.b % vec2<u32>(32u)))), ~(~u_input.b));
    var var_1 = _wgslsmith_mod_vec3_i32(arg_0.d.xxx, arg_0.d.zzx) & (vec3<i32>(1i << (1u % 32u), _wgslsmith_dot_vec3_i32(arg_0.d.xwx, firstLeadingBit(vec3<i32>(arg_0.d.x, arg_0.d.x, arg_0.a.x))), ~(~(-2147483647i))) & min(firstLeadingBit(vec3<i32>(-2147483647i, arg_0.c, arg_0.a.x)), (arg_0.d.wzx & vec3<i32>(arg_0.b.x, -16984i, arg_0.d.x)) | vec3<i32>(13375i, 11772i, arg_0.d.x)));
    var var_2 = ~_wgslsmith_sub_u32(~23141u, _wgslsmith_div_u32(~_wgslsmith_mod_u32(u_input.a.x, 31348u), var_0.b.x));
    global1 = array<vec4<f32>, 13>();
    var var_3 = ~158831u;
    return vec2<u32>(var_0.a, u_input.a.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> Struct_3 {
    global2 = false;
    var var_0 = func_5(Struct_4(func_4(1579f, vec4<bool>(any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), func_3(), true, true), false), abs(~(vec2<i32>(-2147483647i, -2147483647i) << (arg_0.b % vec2<u32>(32u)))), -(~select(-1i, 2147483647i, false)), global3[_wgslsmith_index_u32(1u << (_wgslsmith_clamp_u32(arg_2, ~0u, _wgslsmith_clamp_u32(arg_0.a, 80035u, 0u)) % 32u), 31u)]));
    let var_1 = select(select(select(select(arg_1, arg_1, u_input.a.x != 1u), arg_1, any(vec2<bool>(false, arg_1.x))), vec2<bool>(true, arg_1.x || all(arg_1)), select(arg_1, vec2<bool>(arg_1.x, arg_0.b.x < 1322u), false)), arg_1, select(arg_1, vec2<bool>(true, !any(vec2<bool>(false, arg_1.x))), !select(vec2<bool>(false, arg_1.x), arg_1, !arg_1)));
    let var_2 = arg_0;
    let var_3 = ~func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)) + 872f), !select(!vec4<bool>(true, var_1.x, true, true), !vec4<bool>(arg_1.x, false, false, true), select(vec4<bool>(true, var_1.x, false, arg_1.x), vec4<bool>(true, false, false, true), var_1.x)), var_1.x && (false && select(var_1.x, var_1.x, var_1.x))).x;
    return Struct_3(var_3, Struct_1(15672u, arg_0.b), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 0u), 13u)], select(select(vec3<bool>(true, arg_1.x, 65744u != u_input.a.x), vec3<bool>(false == var_1.x, any(vec2<bool>(true, false)), !var_1.x), false), select(select(!vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(arg_1.x, false, var_1.x), select(vec3<bool>(true, var_1.x, true), vec3<bool>(true, false, arg_1.x), arg_1.x)), !(!vec3<bool>(false, var_1.x, true)), any(vec3<bool>(arg_1.x, arg_1.x, var_1.x))), vec3<bool>(true, arg_1.x, true)), vec4<bool>(false, any(!(!vec3<bool>(arg_1.x, arg_1.x, false))), var_1.x, !(~u_input.b.x != _wgslsmith_mod_u32(var_2.a, u_input.b.x))));
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> bool {
    let var_0 = arg_1.d.x;
    var var_1 = func_2(func_2(arg_1.b, vec2<bool>(!(!arg_1.d.x), select(arg_1.a > arg_1.a, all(vec4<bool>(var_0, arg_1.d.x, var_0, false)), true)), _wgslsmith_mod_u32(func_2(Struct_1(u_input.a.x, vec2<u32>(arg_3, arg_1.b.a)), arg_1.d.xx, arg_0.x).b.b.x, arg_1.b.b.x & u_input.a.x) | 0u).b, !select(!arg_1.d.zx, arg_1.e.ww, !vec2<bool>(arg_1.e.x, false)), arg_3).e.wx;
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-836f, -1401f, _wgslsmith_f_op_f32(f32(-1f) * -1213f)))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x), _wgslsmith_f_op_f32(max(1152f, arg_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -231f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.x, -646f, arg_1.c.x) + global0[_wgslsmith_index_u32(u_input.c, 4u)])))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.c - vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-488f, 509f, 1791f, var_2.a.x) * arg_1.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1.c)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1915f, var_2.a.x, -918f, arg_1.c.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(53520u, 13u)]))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + -424f) + _wgslsmith_f_op_f32(-893f + arg_1.c.x)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_6(select(vec2<u32>(select(func_1(), u_input.a.x, true), ~_wgslsmith_sub_u32(u_input.c, u_input.c)), u_input.b, !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), true), any(vec3<bool>(false, true, false)))), func_2(Struct_1(~firstTrailingBit(10866u), u_input.b), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), u_input.c | _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, u_input.a), u_input.a)), 1i, 82055u);
    global3 = array<vec4<i32>, 31>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-725f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1651f - -1286f)), false)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-145f)), _wgslsmith_f_op_f32(-532f - 1219f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(265f + -1340f) - _wgslsmith_f_op_f32(select(-1000f, -795f, true)))))));
    global1 = array<vec4<f32>, 13>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(19766u, vec2<u32>(53589u, 1u)), vec2<bool>(true, true), u_input.b.x).c.wz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -152f))))), _wgslsmith_f_op_vec2_f32(trunc(func_2(Struct_1(u_input.c, u_input.b), vec2<bool>(true, true), u_input.a.x).c.zx))) - vec2<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(399f)))));
    let var_2 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), firstTrailingBit(-vec2<i32>(-59539i, 0i)), _wgslsmith_add_vec2_i32(-select(vec2<i32>(25124i, 38044i), vec2<i32>(-1i, 57550i), true), select(vec2<i32>(2147483647i, 53340i), ~vec2<i32>(-31516i, -2147483647i), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1191f, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1194f, 271f) * global0[_wgslsmith_index_u32(u_input.b.x, 4u)]) * global0[_wgslsmith_index_u32(1u, 4u)])))), ~abs(_wgslsmith_div_u32(u_input.a.x, 0u) | _wgslsmith_mod_u32(32064u, u_input.a.x)), ~((~vec4<i32>(21548i, 2147483647i, var_2.x, var_2.x) & -global3[_wgslsmith_index_u32(22192u, 31u)]) & global3[_wgslsmith_index_u32(18061u, 31u)]), var_0);
}

