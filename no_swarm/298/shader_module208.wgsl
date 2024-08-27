struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(14559u, 0u);

var<private> global1: vec4<bool>;

var<private> global2: Struct_2 = Struct_2(vec2<u32>(3520u, 26517u), -1142f, 0u, 11910u, vec4<bool>(false, true, false, false));

var<private> global3: Struct_4;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32) -> u32 {
    global1 = !vec4<bool>(any(vec4<bool>(true, any(global2.e), false, all(global2.e.xyy))), select(global1.x, all(global2.e), select(select(global1.x, global1.x, false), true, global0.x < global0.x)), all(global1.xx), true);
    let var_0 = vec2<bool>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(max(1000f, arg_0))) * _wgslsmith_f_op_f32(-arg_0)) == 442f);
    let var_1 = -53759i;
    global3 = Struct_4(Struct_3(~(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_f32(1330f * -527f)))), _wgslsmith_f_op_f32(round(1427f)));
    global0 = max(_wgslsmith_clamp_vec2_u32(abs(min(vec2<u32>(79443u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 62532u), vec2<u32>(u_input.b, 4294967295u)))), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~global2.a, _wgslsmith_clamp_vec2_u32(global2.a, vec2<u32>(4294967295u, u_input.b), global2.a)), countOneBits(global2.a)), vec2<u32>(_wgslsmith_mult_u32(1u, 85061u), global0.x)), max(global2.a, global2.a));
    return 46244u;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<f32>) -> vec3<f32> {
    var var_0 = !(!(-1i <= _wgslsmith_clamp_i32(u_input.a.x ^ u_input.a.x, u_input.a.x, min(2147483647i, 29638i))));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(16082i, 5991i, arg_2.b.x, -1i), vec4<i32>(-2147483647i, -2147483647i, -11160i, -2147483647i), global2.e.x == false)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global3.a.a, -9745i, 1i), ~global3.a.a, global3.a.a, _wgslsmith_sub_i32(arg_2.b.x, 7769i)), vec4<i32>(reverseBits(-12963i), -6912i, _wgslsmith_dot_vec2_i32(arg_2.b.yy, vec2<i32>(global3.a.a, -1i)), i32(-1i) * -2147483647i))), _wgslsmith_sub_i32(~(-25244i << (~u_input.b % 32u)), firstTrailingBit(-u_input.a.x & arg_2.b.x)));
    let var_2 = Struct_4(global3.a, arg_0.x);
    var_0 = all(!select(select(select(global1.wwz, vec3<bool>(global2.e.x, true, global1.x), false), select(global1.zzx, vec3<bool>(true, true, global2.e.x), false), vec3<bool>(global1.x, true, arg_2.a)), !select(vec3<bool>(false, true, arg_2.a), vec3<bool>(global2.e.x, true, true), global2.e.wzw), arg_2.a));
    return arg_3;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.b)), _wgslsmith_f_op_f32(round(-678f)), 496f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b, global2.b, 1186f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.b, -1290f, global2.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, 2044f, 1000f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, global3.b, global2.b) - vec3<f32>(1082f, global3.a.b, global3.a.b)))))), vec2<u32>(global2.d, _wgslsmith_sub_u32(func_3(_wgslsmith_div_f32(-161f, 1000f)), _wgslsmith_clamp_u32(global0.x & 14776u, ~76757u, func_3(global2.b)))), Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), u_input.a) < -(global3.a.a >> (arg_1 % 32u)), abs(-(~vec3<i32>(global3.a.a, 2147483647i, 7917i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -658f), global3.a.b, any(vec4<bool>(global2.e.x, true, arg_0.x, global2.e.x)) | arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1854f, global2.b), global3.a.b, _wgslsmith_f_op_f32(global3.b * global2.b))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1754f, global2.b, global3.b) * vec3<f32>(-232f, global3.b, 1000f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-270f, global3.a.b, 571f)))))))));
    let var_1 = var_0.yy;
    global1 = global2.e;
    let var_2 = global3.a;
    var var_3 = Struct_5(false, u_input.a.x, vec2<i32>(-49552i, _wgslsmith_add_i32(var_2.a << (reverseBits(u_input.b) % 32u), -1i)), select(arg_0.x, (reverseBits(global3.a.a) != (9494i ^ var_2.a)) && true, !(true & !global1.x)), Struct_3(~_wgslsmith_add_i32(u_input.a.x, -21737i), _wgslsmith_f_op_f32(f32(-1f) * -2014f)));
    return Struct_4(global3.a, _wgslsmith_f_op_f32(-global2.b));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec3<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i << ((_wgslsmith_mult_u32(u_input.b, global0.x) & reverseBits(0u)) % 32u), countOneBits(global3.a.a), _wgslsmith_clamp_i32(-55754i, global3.a.a & -2147483647i, u_input.a.x)), (-select(vec3<i32>(u_input.a.x, 31916i, global3.a.a), vec3<i32>(global3.a.a, 41815i, global3.a.a), global2.e.ywy) << (firstTrailingBit(countOneBits(vec3<u32>(0u, u_input.b, u_input.b))) % vec3<u32>(32u))) >> (vec3<u32>(~u_input.b, 1u, global2.c) % vec3<u32>(32u)));
    global2 = Struct_2(countOneBits(global2.a), global3.a.b, global2.c, ~(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(51812u, 0u, 4294967295u, 74782u), vec4<u32>(0u, global0.x, global0.x, 72855u)))), global2.e);
    global1 = vec4<bool>(global1.x, arg_1.x, all(vec4<bool>(arg_1.x, global1.x, all(vec4<bool>(global2.e.x, true, global2.e.x, global2.e.x)), true)), arg_1.x);
    let var_1 = abs(u_input.b);
    global1 = !select(select(!(!global2.e), select(select(global2.e, global2.e, global2.e), select(global2.e, global2.e, vec4<bool>(global1.x, true, global1.x, global1.x)), !global2.e), global2.e), global2.e, select(select(global2.e, vec4<bool>(global2.e.x, false, false, false), select(vec4<bool>(arg_1.x, global2.e.x, true, true), global2.e, vec4<bool>(true, false, true, false))), vec4<bool>(global1.x, global2.e.x, all(global2.e), var_0.x > -1i), global2.e));
    return _wgslsmith_f_op_vec3_f32(arg_2 * _wgslsmith_f_op_vec3_f32(-vec3<f32>(186f, _wgslsmith_f_op_f32(1358f + 1f), global2.b)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = -(~(~(~vec3<i32>(0i, -1i, -4065i))));
    let var_1 = global2.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_5(func_2(global1.wzw, ~(_wgslsmith_div_u32(u_input.b, 34907u) | global2.d)), select(select(select(!arg_0.e.zy, select(arg_0.e.xw, global1.wz, global2.e.ww), global2.e.xx), global1.wx, arg_0.e.xx), select(vec2<bool>(global1.x, true), vec2<bool>(false, global2.a.x > 3714u), select(global2.e.zz, select(vec2<bool>(true, arg_0.e.x), global2.e.yy, global2.e.x), global1.x)), select(!global2.e.yz, global2.e.zw, vec2<bool>(!global1.x, global2.e.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.b, global2.b, global2.b)))))));
    global0 = vec2<u32>(reverseBits(firstLeadingBit(~58327u)), u_input.b);
    let var_3 = func_2(vec3<bool>(false, true, false), ~(~(~104983u) | ~max(u_input.b, u_input.b)));
    return Struct_2(arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b))), global2.d, min(28166u, _wgslsmith_dot_vec4_u32(~vec4<u32>(36789u, global0.x, global2.c, global2.d), vec4<u32>(global0.x, 28934u ^ u_input.b, ~global2.a.x, 1u))), select(vec4<bool>(select(!arg_0.e.x, arg_0.b < var_2.x, global2.e.x), select(true, arg_0.e.x, select(arg_0.e.x, false, arg_0.e.x)), true, any(select(vec3<bool>(global1.x, false, true), global1.zzz, global2.e.x))), !vec4<bool>(false, global1.x, select(true, true, global1.x), arg_0.e.x != arg_0.e.x), !arg_0.e));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> u32 {
    global3 = Struct_4(func_2(vec3<bool>(!select(global1.x, global2.e.x, arg_0.e.x), global2.e.x, arg_1 < -2568f), ~(~20074u)).a, -367f);
    global0 = select(global2.a, select(arg_0.a, ~_wgslsmith_clamp_vec2_u32(global2.a, vec2<u32>(arg_0.c, arg_2), vec2<u32>(arg_0.c, 4294967295u) >> (vec2<u32>(arg_2, global2.d) % vec2<u32>(32u))), !global2.e.wx), func_1(arg_0).e.x);
    global3 = Struct_4(Struct_3(firstLeadingBit(~(-38198i)), 880f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.b, global2.b))), _wgslsmith_f_op_f32(-arg_1))));
    var var_0 = arg_0.e.yyy;
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-735f, _wgslsmith_f_op_f32(1000f - -1311f), global2.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b, -1016f, -1318f) + _wgslsmith_div_vec3_f32(vec3<f32>(-1151f, -124f, -588f), vec3<f32>(-647f, 464f, 1000f)))), true))));
    return 4294967295u;
}

fn func_7(arg_0: u32, arg_1: Struct_2) -> vec4<bool> {
    global2 = arg_1;
    let var_0 = func_1(func_1(func_1(func_1(func_1(arg_1))))).e.xzx;
    let var_1 = countOneBits(~min(_wgslsmith_div_vec4_u32(vec4<u32>(global2.c, 1u, global0.x, 38714u) ^ vec4<u32>(arg_0, 46470u, 1u, global0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_1.c, global2.a.x, global2.c), vec4<u32>(49016u, 0u, 1u, 0u))), vec4<u32>(4294967295u, arg_1.d, 24829u, arg_1.a.x) << (vec4<u32>(arg_1.a.x, 4294967295u, 20376u, 0u) % vec4<u32>(32u))));
    let var_2 = Struct_1(all(vec3<bool>(all(!arg_1.e), global2.e.x, true & !global1.x)), reverseBits(~(-vec3<i32>(80812i, -41451i, 2147483647i))), global2.b);
    var var_3 = vec3<f32>(_wgslsmith_div_f32(func_2(!(!vec3<bool>(true, true, global1.x)), firstLeadingBit(~var_1.x)).b, _wgslsmith_f_op_f32(-global3.a.b)), 626f, 653f);
    return global2.e;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_7(max(reverseBits(u_input.b), func_6(func_1(Struct_2(global2.a, -515f, 1u, 37339u, global2.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.b) + _wgslsmith_f_op_f32(-global2.b)), select(u_input.b >> (1u % 32u), func_1(Struct_2(global2.a, global3.a.b, u_input.b, global2.d, vec4<bool>(global1.x, true, false, global1.x))).c, global2.b < 1173f))), Struct_2(~global2.a, _wgslsmith_f_op_vec3_f32(func_5(Struct_4(func_2(global1.yyz, global0.x).a, -1144f), select(!vec2<bool>(global2.e.x, global1.x), func_1(Struct_2(global2.a, -661f, global2.d, 0u, global2.e)).e.yy, global2.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1163f, global2.b, global2.b))))).x, global0.x << (u_input.b % 32u), global0.x, !func_1(func_1(Struct_2(vec2<u32>(u_input.b, 25710u), global2.b, u_input.b, 16323u, vec4<bool>(false, true, global1.x, global2.e.x)))).e));
    global3 = Struct_4(global3.a, global2.b);
    let var_0 = vec4<bool>(func_7(0u, Struct_2(max(reverseBits(global2.a), _wgslsmith_div_vec2_u32(global2.a, global2.a)), 1000f, ~(0u ^ u_input.b), ~func_6(Struct_2(global2.a, 357f, u_input.b, 0u, vec4<bool>(global1.x, global2.e.x, true, true)), global3.a.b, 1u), !(!vec4<bool>(true, false, global1.x, global1.x)))).x, all(!global2.e), global1.x, ((abs(-10148i) | u_input.a.x) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, global0.x, u_input.b), vec3<u32>(u_input.b, 86629u, 53972u)) % 32u)) != u_input.a.x);
    let var_1 = select(!global1.yx, func_1(Struct_2(~(~global2.a), _wgslsmith_f_op_f32(-global2.b), 0u, global0.x, vec4<bool>(var_0.x != global2.e.x, !global1.x, all(global2.e), global1.x))).e.yx, var_0.x);
    var var_2 = ~vec3<i32>(firstTrailingBit(u_input.a.x ^ u_input.a.x), -_wgslsmith_add_i32(global3.a.a, global3.a.a), global3.a.a) ^ (vec3<i32>(-1i) * -(~(vec3<i32>(global3.a.a, 1i, u_input.a.x) >> (vec3<u32>(1u, u_input.b, 1u) % vec3<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.b, 1000f, 901f, global2.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, 1518f, global3.b, global3.b) + vec4<f32>(global2.b, -1000f, 1412f, -894f))))))) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.a.b, 1152f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.a.b))), global3.a.b), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(612f, -1866f, -1000f, global3.a.b), vec4<f32>(global3.a.b, -1317f, 159f, -1507f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-846f, global3.b, 1000f, global2.b) * vec4<f32>(373f, -253f, 1112f, 1299f)), select(global1.x, global1.x, true))), vec4<f32>(841f, _wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(select(global2.b, global2.b, var_1.x)), _wgslsmith_f_op_f32(round(global3.b))), func_7(~45288u, func_1(Struct_2(global2.a, global2.b, u_input.b, u_input.b, vec4<bool>(global2.e.x, global1.x, true, true))))))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(689f, global2.b, 1080f) - var_3.wwz), abs(abs(vec2<u32>(global0.x, global2.d))), Struct_1(any(vec3<bool>(global2.e.x, false, true)), _wgslsmith_add_vec3_i32(vec3<i32>(global3.a.a, global3.a.a, -60726i), vec3<i32>(-1i, u_input.a.x, var_2.x)), -267f), var_3.zyw)).x - -785f) + _wgslsmith_div_f32(global2.b, -414f));
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_4, _wgslsmith_f_op_f32(trunc(global2.b)))), _wgslsmith_div_f32(566f, _wgslsmith_f_op_f32(-var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global2.a));
}

