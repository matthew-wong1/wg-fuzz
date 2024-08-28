struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec4<i32>(1i, 3873i, i32(-2147483648), 50197i), Struct_1(vec4<f32>(-772f, 543f, 488f, -1887f), vec4<bool>(false, true, true, true), vec2<bool>(true, true), 1855f)), vec2<f32>(1661f, -1795f), vec3<f32>(-1303f, -731f, -1000f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    return global0.a.b;
}

fn func_3() -> Struct_1 {
    global0 = Struct_4(global0.a, _wgslsmith_f_op_vec2_f32(exp2(global0.b)), global0.a.b.a.wyy);
    let var_0 = Struct_2(vec4<i32>(~u_input.d, firstLeadingBit(-2147483647i), _wgslsmith_clamp_i32(global0.a.a.x, 1i, -firstTrailingBit(0i)), -36568i ^ global0.a.a.x), global0.a.b);
    global0 = Struct_4(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(global0.b.x, -1000f)), _wgslsmith_f_op_f32(exp2(var_0.b.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.b.a.yx))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, 1507f, var_0.b.a.x) + vec3<f32>(global0.b.x, -1000f, 1654f))).b.yx))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.d), 495f, _wgslsmith_f_op_f32(-var_0.b.d)));
    global0 = Struct_4(Struct_2(vec4<i32>(global0.a.a.x >> (u_input.b % 32u), max(-2147483647i, 1i), ~2996i ^ (var_0.a.x >> (114112u % 32u)), var_0.a.x), var_0.b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(min(var_0.b.a.x, var_0.b.d))), _wgslsmith_f_op_vec2_f32(var_0.b.a.xy + var_0.b.a.xy))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(func_2(var_0.b.a.www).a, _wgslsmith_f_op_vec4_f32(-global0.a.b.a))), vec4<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(ceil(-1577f)), _wgslsmith_f_op_f32(trunc(-393f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0.a.b.a.x))))), global0.a.b.c.x)) * _wgslsmith_f_op_vec4_f32(global0.a.b.a * var_0.b.a));
    return var_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = firstLeadingBit(~arg_2.xy);
    var_0 = vec2<i32>(arg_2.x, 11142i);
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(852f, global0.b.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2579f, arg_3.b.d))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.x))), -119f))));
    let var_2 = Struct_4(Struct_2(~(-(~arg_2)), func_2(arg_0.a.yxy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-996f, arg_1.d)), arg_0.a.xxy);
    let var_3 = var_2.a.a;
    return vec3<f32>(var_1.x, arg_0.d, -1059f);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_5(false);
    let var_1 = Struct_4(Struct_2(~(~max(vec4<i32>(u_input.d, u_input.a.x, 0i, 20271i), vec4<i32>(1i, 18689i, -61220i, -1i))), global0.a.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global0.a.b.d) - vec2<f32>(-872f, global0.b.x)) - global0.b) * global0.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(vec4<f32>(global0.a.b.a.x, 133f, global0.c.x, 665f), global0.a.b.b, global0.a.b.c, _wgslsmith_f_op_f32(global0.a.b.a.x + 682f)), func_2(_wgslsmith_f_op_vec3_f32(select(global0.a.b.a.ywx, vec3<f32>(global0.a.b.d, global0.b.x, 463f), vec3<bool>(true, false, true)))), vec4<i32>(global0.a.a.x, _wgslsmith_div_i32(global0.a.a.x, 34249i), -19042i, ~13473i), Struct_2(-global0.a.a, func_3()))), global0.c));
    var var_2 = ~reverseBits(vec3<u32>(1u ^ u_input.b, _wgslsmith_mod_u32(~4294967295u, u_input.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.c.x, 1u), firstTrailingBit(vec3<u32>(u_input.b, 4294967295u, u_input.b)))));
    global0 = Struct_4(Struct_2(vec4<i32>(-1i) * -select(vec4<i32>(2147483647i, global0.a.a.x, -25145i, 0i), vec4<i32>(global0.a.a.x, 35581i, 37811i, -27919i), global0.a.b.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a.b.a), vec4<bool>(!var_0.a, any(vec2<bool>(false, var_1.a.b.b.x)), 1u <= u_input.b, var_1.a.b.c.x != true), !vec2<bool>(false, var_0.a), _wgslsmith_f_op_f32(global0.b.x + 467f))), var_1.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c.x + -1886f), -169f)) + -989f), _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(round(func_3().a.x))), _wgslsmith_f_op_f32(-global0.b.x)));
    var_2 = vec3<u32>(~u_input.c.x, 0u, _wgslsmith_clamp_u32(~var_2.x << (_wgslsmith_mult_u32(~var_2.x, ~1u) % 32u), ~((15555u << (0u % 32u)) | var_2.x), ~_wgslsmith_mod_u32(~1u, ~u_input.c.x)));
    return func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.b.a.x, 1f, _wgslsmith_f_op_f32(-263f - -1508f))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c.x, 169f, 446f), arg_3.b.a.zxx, vec3<bool>(true, arg_3.b.b.x, false))))));
    global0 = Struct_4(global0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1221f, 576f) - arg_3.b.a.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_2.a.x))) * vec2<f32>(arg_3.b.d, arg_2.d)), _wgslsmith_f_op_vec2_f32(global0.c.zy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 504f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(func_3().d, var_0.x, arg_2.a.x))));
    let var_1 = _wgslsmith_div_i32(-23276i, global0.a.a.x);
    var var_2 = vec2<u32>(u_input.c.x, u_input.b);
    let var_3 = func_3();
    return _wgslsmith_mod_vec3_u32(select((countOneBits(vec3<u32>(u_input.c.x, var_2.x, 3364u)) & ~vec3<u32>(1u, 0u, 4294967295u)) | ~max(vec3<u32>(var_2.x, u_input.c.x, 29340u), vec3<u32>(56732u, u_input.b, 0u)), vec3<u32>(u_input.b, _wgslsmith_mult_u32(36757u, var_2.x), var_2.x >> (u_input.b % 32u)), 1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.a.x * arg_1.a.x))), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.b >> (45765u % 32u), ~var_2.x)), ~(~select(vec3<u32>(56677u, var_2.x, u_input.b), vec3<u32>(u_input.b, u_input.c.x, 51833u), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(global0.c.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, global0.b.x) - _wgslsmith_div_vec2_f32(vec2<f32>(831f, -120f), global0.a.b.a.wz))) - global0.a.b.a.xz), select(vec2<bool>(global0.a.b.c.x, global0.a.b.b.x), global0.a.b.b.zz, all(vec2<bool>(true, u_input.b >= 1u)))));
    var var_1 = vec3<u32>(u_input.b, 50879u, abs(~min(1u, 0u))) >> (~func_5(Struct_4(global0.a, global0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, var_0.x, global0.b.x))), func_1(), global0.a.b, Struct_2(u_input.a, func_1())) % vec3<u32>(32u));
    let var_2 = _wgslsmith_sub_vec2_u32(~u_input.c, select(vec2<u32>(4294967295u, ~1u), (vec2<u32>(1u, 4294967295u) << (firstLeadingBit(var_1.yz) % vec2<u32>(32u))) << ((~var_1.zy << (~u_input.c % vec2<u32>(32u))) % vec2<u32>(32u)), !global0.a.b.b.wx));
    var var_3 = _wgslsmith_add_i32(u_input.d, ~abs(global0.a.a.x) & -10260i);
    var var_4 = Struct_5(true);
    var_1 = ~abs(~vec3<u32>(~var_1.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), _wgslsmith_sub_u32(u_input.b, u_input.b)));
    var var_5 = Struct_4(global0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.a.b.d, _wgslsmith_f_op_f32(min(global0.b.x, global0.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0, global0.c.zy)))), any(func_1().b))), global0.c);
    var var_6 = func_3().b.zyy;
    var_5 = Struct_4(var_5.a, _wgslsmith_f_op_vec2_f32(-func_2(_wgslsmith_f_op_vec3_f32(var_5.c + global0.c)).a.wy), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_1(global0.a.b.a, global0.a.b.b, vec2<bool>(false, var_6.x), 1000f), global0.a.b, abs(vec4<i32>(2147483647i, -41722i, global0.a.a.x, global0.a.a.x)), Struct_2(u_input.a, global0.a.b)))), _wgslsmith_f_op_vec3_f32(var_5.c + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(642f, -1077f, 2055f), global0.c)))), any(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, abs(~(_wgslsmith_clamp_i32(-13637i, var_5.a.a.x, 1i) >> (~var_2.x % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(115f + -1000f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.x, -277f)))), _wgslsmith_f_op_f32(f32(-1f) * -205f)))), -1389f, global0.a.a.x);
}

