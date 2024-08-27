struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    return arg_0;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = -397f == _wgslsmith_f_op_f32(select(-584f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2, 409f))))), arg_1.a.e.x));
    var_0 = arg_1.a.e.x;
    var_0 = all(select(!vec3<bool>(all(arg_1.a.b), u_input.b.x != 4294967295u, 0u > arg_3.a.d), vec3<bool>(!(arg_0.c.a.b.x | true), any(select(vec2<bool>(arg_0.c.a.e.x, arg_3.a.e.x), arg_3.a.e, arg_3.a.e.x)), true), arg_0.c.a.c.x != 1i));
    var_0 = any(arg_0.c.a.a);
    var var_1 = _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mult_u32(arg_0.b, arg_1.a.d)) ^ ~u_input.c.x, 47804u);
    return Struct_3(1u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -1422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1152f - 1012f)))))), func_2(Struct_4(vec2<bool>(arg_3.a.e.x, all(arg_0.c.a.e)), arg_3.a.d, func_2(Struct_4(vec2<bool>(true, false), 50575u, Struct_2(arg_1.a))).c)).c, func_2(func_2(arg_0)).c.a, u_input.c);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.xw + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.x, arg_0.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zx)))), arg_0.yy);
    let var_2 = Struct_5(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-u_input.d.x), u_input.a.x, 5206i), arg_1.d.c.xzw), all(!(!vec4<bool>(false, false, arg_1.d.a.x, true))), arg_1.d.a, func_3(func_2(Struct_4(vec2<bool>(true, true), arg_1.c.a.d | u_input.c.x, Struct_2(Struct_1(arg_1.c.a.a, vec2<bool>(arg_1.d.e.x, arg_1.c.a.b.x), u_input.d, 4294967295u, arg_1.d.e)))), func_2(Struct_4(select(arg_1.c.a.e, vec2<bool>(false, arg_1.c.a.e.x), vec2<bool>(true, arg_1.c.a.b.x)), ~arg_1.e.x, Struct_2(Struct_1(vec4<bool>(false, arg_1.c.a.b.x, true, arg_1.d.b.x), arg_1.c.a.e, u_input.d, arg_1.c.a.d, vec2<bool>(true, arg_1.d.e.x))))).c, _wgslsmith_f_op_f32(select(var_1.x, arg_0.x, arg_1.d.a.x)), func_2(func_2(func_2(Struct_4(arg_1.c.a.e, 25927u, arg_1.c)))).c), arg_1);
    let var_3 = ~(~(~vec3<u32>(firstTrailingBit(u_input.c.x), 1u, 4294967295u)));
    let var_4 = func_3(Struct_4(select(var_2.d.d.e, vec2<bool>(var_2.e.c.a.c.x >= -22928i, all(var_2.d.c.a.e)), true), abs(arg_1.e.x), arg_1.c), Struct_2(var_2.d.d), -102f, arg_1.c).c.a.a.xzw;
    return var_2.d;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_3) -> f32 {
    let var_0 = arg_2.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1007f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(921f, 770f)), arg_2.b.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-341f - arg_2.b.x), 1743f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -485f)) + -302f)));
    let var_2 = firstLeadingBit(var_0.a.d);
    let var_3 = 1i << (1u % 32u);
    var var_4 = func_1(arg_2.b, Struct_3(arg_2.e.x, vec4<f32>(396f, _wgslsmith_f_op_f32(abs(var_1.x)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), func_2(func_2(Struct_4(arg_1, 21606u, arg_2.c))).c, Struct_1(vec4<bool>(arg_1.x, true, false & arg_2.d.a.x, any(vec2<bool>(true, var_0.a.e.x))), arg_1, arg_0, u_input.b.x, !(!vec2<bool>(arg_1.x, false))), max(~(~u_input.b), arg_2.e))).c.a.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.b.x))) * _wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.c.x, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-586f))), _wgslsmith_f_op_f32(func_4(abs(vec4<i32>(20937i, u_input.d.x, u_input.d.x, -1i)), vec2<bool>(true, true), func_1(vec4<f32>(-1015f, 302f, 343f, -1672f), Struct_3(u_input.b.x, vec4<f32>(-1000f, -877f, -126f, -428f), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(true, true), u_input.d, u_input.b.x, vec2<bool>(false, false))), Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(false, true), u_input.d, u_input.c.x, vec2<bool>(true, false)), u_input.c)))), 515f, _wgslsmith_f_op_f32(min(2184f, _wgslsmith_f_op_f32(-786f + 1954f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-112f, -1000f, 1137f, 676f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(566f, -1378f, -1000f, 1490f) + vec4<f32>(1000f, -1689f, 486f, -711f))))), Struct_2(Struct_1(vec4<bool>(all(vec3<bool>(true, true, true)), true, any(vec4<bool>(false, false, true, false)), any(vec3<bool>(false, false, false))), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), ~reverseBits(vec4<i32>(-30332i, u_input.a.x, -444i, 47915i)), firstLeadingBit(u_input.c.x), vec2<bool>(true, false))), Struct_1(select(select(func_1(vec4<f32>(-1284f, 340f, 846f, 654f), Struct_3(4294967295u, vec4<f32>(-1000f, -1000f, 1389f, -568f), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec2<bool>(true, true), u_input.d, 37239u, vec2<bool>(false, false))), Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(false, true), vec4<i32>(u_input.d.x, u_input.a.x, 1i, u_input.d.x), u_input.c.x, vec2<bool>(true, false)), vec4<u32>(43093u, 4294967295u, 2102u, 68897u))).c.a.a, func_1(vec4<f32>(-1160f, 809f, 1866f, 1000f), Struct_3(52580u, vec4<f32>(-3206f, 241f, -843f, -1667f), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(false, true), u_input.d, 1u, vec2<bool>(false, true))), Struct_1(vec4<bool>(true, false, false, false), vec2<bool>(false, false), u_input.d, u_input.b.x, vec2<bool>(true, false)), vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.c.x))).c.a.a, true), vec4<bool>(any(vec2<bool>(false, false)), true, func_2(Struct_4(vec2<bool>(false, false), u_input.c.x, Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec4<i32>(36649i, 10220i, u_input.d.x, u_input.a.x), u_input.c.x, vec2<bool>(true, false))))).a.x, true), true), select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), u_input.d, 1u, vec2<bool>(true, true)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, 1u), u_input.c), ~vec4<u32>(u_input.b.x, u_input.c.x, 4294967295u, 9222u), abs(func_3(Struct_4(vec2<bool>(true, true), 4294967295u, Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, true), u_input.d, 4294967295u, vec2<bool>(false, false)))), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec2<bool>(true, false), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), 5831u, vec2<bool>(true, false))), -377f, Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec2<bool>(false, true), u_input.d, 80008u, vec2<bool>(true, false)))).e)), ~(~func_1(vec4<f32>(-757f, -556f, -544f, -1558f), Struct_3(u_input.c.x, vec4<f32>(1000f, 988f, 150f, 1209f), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<bool>(false, true), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), u_input.c.x, vec2<bool>(false, true))), Struct_1(vec4<bool>(true, false, true, true), vec2<bool>(false, false), u_input.d, u_input.b.x, vec2<bool>(false, true)), vec4<u32>(u_input.b.x, 1376u, u_input.b.x, u_input.b.x))).e)));
    var var_1 = _wgslsmith_dot_vec4_i32(~u_input.d, -(~vec4<i32>(-2147483647i, 14561i, -14282i, u_input.a.x) << (vec4<u32>(var_0.d.d, var_0.c.a.d, var_0.e.x, 0u) % vec4<u32>(32u))) & u_input.d);
    let var_2 = func_2(func_2(func_2(func_2(func_2(Struct_4(var_0.d.b, var_0.d.d, var_0.c)))))).c.a.d;
    var var_3 = var_0.c.a.c.xzx;
    let var_4 = Struct_5(max(var_3.x, firstLeadingBit(func_1(var_0.b, Struct_3(u_input.b.x, vec4<f32>(1270f, var_0.b.x, -2759f, 1786f), Struct_2(var_0.c.a), Struct_1(var_0.c.a.a, var_0.c.a.e, vec4<i32>(var_0.d.c.x, -2147483647i, var_0.d.c.x, var_3.x), 28012u, var_0.c.a.e), u_input.c)).d.c.x)) >> ((1u & firstTrailingBit(var_0.c.a.d)) % 32u), !(any(func_2(Struct_4(var_0.d.a.wz, 1u, Struct_2(var_0.d))).c.a.a.zxz) && false), !var_0.d.a, func_1(var_0.b, func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, -1298f, 494f, var_0.b.x))), func_1(var_0.b, func_1(vec4<f32>(-446f, 1461f, -1166f, var_0.b.x), Struct_3(0u, vec4<f32>(1104f, 193f, var_0.b.x, var_0.b.x), Struct_2(Struct_1(vec4<bool>(true, true, var_0.d.e.x, false), vec2<bool>(false, var_0.c.a.a.x), vec4<i32>(-41126i, 1i, 0i, var_0.c.a.c.x), var_2, var_0.c.a.b)), var_0.d, var_0.e))))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x - -141f), _wgslsmith_f_op_f32(func_4(vec4<i32>(var_0.d.c.x, u_input.d.x, var_0.d.c.x, -1i), vec2<bool>(false, false), Struct_3(33089u, vec4<f32>(var_0.b.x, 1000f, -398f, var_0.b.x), Struct_2(var_0.c.a), Struct_1(vec4<bool>(var_0.c.a.e.x, false, var_0.d.a.x, var_0.c.a.e.x), vec2<bool>(var_0.c.a.a.x, false), u_input.d, 1u, var_0.c.a.e), vec4<u32>(1u, 0u, 19658u, var_2)))))), func_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(-503f)), var_0.b.x, _wgslsmith_div_f32(1525f, var_0.b.x), _wgslsmith_f_op_f32(317f - var_0.b.x)), Struct_3(var_0.c.a.d, var_0.b, func_3(Struct_4(var_0.d.e, var_2, Struct_2(Struct_1(vec4<bool>(var_0.c.a.b.x, var_0.d.a.x, var_0.c.a.a.x, var_0.d.a.x), var_0.d.e, u_input.d, 1u, vec2<bool>(true, true)))), var_0.c, var_0.b.x, var_0.c).c, func_3(Struct_4(var_0.d.a.ww, 1269u, Struct_2(var_0.d)), var_0.c, 282f, Struct_2(Struct_1(var_0.c.a.a, vec2<bool>(true, var_0.c.a.b.x), vec4<i32>(26697i, 1i, var_3.x, var_3.x), var_2, vec2<bool>(true, var_0.d.b.x)))).c.a, _wgslsmith_sub_vec4_u32(var_0.e, var_0.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(max(1u, var_0.d.d), var_2, var_0.e.x, var_0.d.d), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_4.e.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - -430f) + -1365f)), 43485u, func_2(func_2(Struct_4(func_1(var_0.b, Struct_3(var_4.e.e.x, vec4<f32>(-1175f, var_4.d.b.x, 1057f, -374f), var_0.c, Struct_1(vec4<bool>(true, true, var_0.c.a.b.x, var_0.d.b.x), var_4.e.c.a.a.wx, var_0.d.c, 7688u, vec2<bool>(var_4.b, true)), vec4<u32>(1u, 16944u, 1u, 44219u))).c.a.b, var_0.e.x, func_3(Struct_4(vec2<bool>(var_4.e.c.a.a.x, var_4.d.c.a.b.x), var_0.e.x, Struct_2(var_0.c.a)), Struct_2(Struct_1(vec4<bool>(true, false, false, var_0.c.a.a.x), vec2<bool>(false, true), var_0.c.a.c, 5085u, var_0.d.e)), 211f, Struct_2(var_4.d.c.a)).c))).c.a.c.yyz);
}

