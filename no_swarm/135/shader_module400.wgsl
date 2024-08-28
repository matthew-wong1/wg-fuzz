struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> Struct_1 {
    var var_0 = select(!(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), -372f < arg_1.a.a.x)), vec3<bool>(!all(vec3<bool>(true, true, true)), false, false), vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1471f + arg_1.b.c.a.x), arg_1.b.b.a.x, true)) >= _wgslsmith_f_op_f32(arg_1.a.a.x * _wgslsmith_f_op_f32(step(180f, 570f))), true, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b.b.a * _wgslsmith_f_op_vec4_f32(vec4<f32>(976f, 1000f, 278f, arg_1.a.a.x) + vec4<f32>(317f, 1000f, -875f, arg_1.a.b)))), arg_1.a.a.x);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = max(_wgslsmith_mult_vec3_i32(-min(~vec3<i32>(arg_2.e, -53022i, -44949i), vec3<i32>(arg_0.e, u_input.d, arg_2.c)), _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.d.x, 1i, arg_2.d.x), vec3<i32>(u_input.d, arg_0.e, 2147483647i)), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(30756i, arg_2.d.x, arg_2.c), vec3<i32>(2147483647i, arg_0.d.x, -2147483647i))), ~(-vec3<i32>(-1i, 26073i, u_input.d)))), _wgslsmith_mod_vec3_i32(max(~vec3<i32>(arg_2.e, 0i, arg_0.d.x), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-23472i, u_input.a.x, -1i), vec3<i32>(-2147483647i, -74857i, -57688i)), firstLeadingBit(vec3<i32>(11290i, arg_0.e, arg_0.c)))), _wgslsmith_add_vec3_i32(select(vec3<i32>(0i, arg_0.e, 8120i), vec3<i32>(28654i, arg_0.c, 14031i), arg_0.a), vec3<i32>(0i, arg_0.c, 17383i)) ^ abs(-vec3<i32>(u_input.d, u_input.d, arg_0.e))));
    var var_1 = any(!select(vec4<bool>(true, true, arg_2.a, any(vec3<bool>(arg_0.a, true, arg_0.a))), vec4<bool>(true, false, false, arg_0.a & true), false));
    let var_2 = !select(select(vec3<bool>(!arg_2.a, true, true), !(!vec3<bool>(arg_2.a, arg_0.a, arg_0.a)), arg_0.a), !select(vec3<bool>(true, arg_0.a, arg_2.a), !vec3<bool>(false, false, arg_2.a), arg_0.a && false), select(vec3<bool>(arg_2.a, any(vec3<bool>(false, false, arg_2.a)), true == arg_0.a), vec3<bool>(!arg_0.a, true, false), select(select(vec3<bool>(arg_2.a, false, true), vec3<bool>(false, arg_2.a, false), vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), select(vec3<bool>(arg_0.a, true, arg_2.a), vec3<bool>(false, false, arg_2.a), true), !arg_2.a)));
    let var_3 = arg_1;
    var var_4 = Struct_4(~(~select(_wgslsmith_add_u32(4294967295u, u_input.b), u_input.b, var_2.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b.a) - _wgslsmith_f_op_vec4_f32(floor(arg_0.b.a)))), _wgslsmith_f_op_vec4_f32(select(arg_0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b.a + vec4<f32>(arg_0.b.a.x, arg_0.b.b, arg_0.b.a.x, 492f)) * _wgslsmith_f_op_vec4_f32(max(arg_0.b.a, vec4<f32>(-438f, -760f, arg_0.b.a.x, 1421f)))), select(!vec4<bool>(false, arg_2.a, arg_0.a, var_2.x), vec4<bool>(true, true, false, false), arg_2.a))), vec4<bool>(!(!var_2.x), false, select(arg_2.a, false, arg_2.a) | true, _wgslsmith_sub_i32(arg_0.e, -21044i) > -u_input.a.x))), Struct_3(arg_2.b.b, arg_0.b, func_2(firstTrailingBit(max(u_input.d, 1i)), Struct_5(Struct_1(vec4<f32>(arg_2.b.a.x, 246f, arg_0.b.b, -377f), -1796f), Struct_3(arg_0.b.b, Struct_1(vec4<f32>(828f, -1652f, 752f, -1232f), -1397f), arg_2.b)))), ~arg_1);
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1100f, arg_2.b.b, 446f, -172f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_4.b))), true)))), 950f);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = firstLeadingBit(select(_wgslsmith_add_vec3_u32(u_input.c.xyw, u_input.c.wwy), ~vec3<u32>(~0u, _wgslsmith_add_u32(9260u, 0u), u_input.b), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false)) & all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true)))));
    var var_1 = vec3<i32>(-1i) * -(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.d), _wgslsmith_mod_i32(-2147483647i, arg_1.x), u_input.d) | abs(vec3<i32>(2147483647i, 0i, u_input.d)));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, arg_1.x, u_input.a.x), arg_1 << (u_input.c.zzz % vec3<u32>(32u))), -6864i, _wgslsmith_sub_i32(abs(u_input.a.x), firstLeadingBit(abs(arg_1.x)))), arg_1);
    var_1 = firstLeadingBit(vec3<i32>(0i, var_1.x, -1i));
    var_1 = max(select(arg_1, ~reverseBits(arg_1), vec3<bool>(select(false, true, true), false, true)) & _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, 21818i, arg_1.x), _wgslsmith_clamp_vec3_i32(arg_1, vec3<i32>(u_input.d, 55971i, var_1.x), arg_1) | select(vec3<i32>(1i, -43428i, 0i), vec3<i32>(7948i, 0i, 2147483647i), false)), arg_1);
    return arg_2;
}

fn func_1() -> Struct_4 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = u_input.c.zzy;
    let var_2 = var_1.x;
    var var_3 = ~0u;
    let var_4 = var_0.x;
    return func_4(Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, -147f, 673f, -526f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2689f), -199f)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(815f, -108f) * _wgslsmith_f_op_f32(abs(-2019f))), func_2(u_input.a.x, Struct_5(Struct_1(vec4<f32>(-1393f, -1000f, 543f, 1656f), -427f), Struct_3(-905f, Struct_1(vec4<f32>(1023f, -170f, 430f, -1000f), 556f), Struct_1(vec4<f32>(-745f, -1125f, 813f, 691f), 1000f)))), func_3(Struct_2(false, Struct_1(vec4<f32>(932f, 1415f, 923f, -1095f), 265f), u_input.d, u_input.a, -26499i), _wgslsmith_div_u32(56332u, 13684u), Struct_2(var_4, Struct_1(vec4<f32>(1379f, 472f, -345f, 590f), 1000f), 81884i, u_input.a, 23915i)))), vec3<i32>(_wgslsmith_dot_vec4_i32(abs(abs(vec4<i32>(1i, u_input.a.x, u_input.d, 66242i))), vec4<i32>(u_input.a.x, -6454i, u_input.d, -23556i) << (select(vec4<u32>(4294967295u, u_input.c.x, var_2, 60785u), vec4<u32>(var_2, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, var_4, true)) % vec4<u32>(32u))), -8160i, min(-1i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(u_input.d, -18007i)), -u_input.a.x))), Struct_4(47715u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-712f, -1024f, -584f, -1000f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-187f, 1287f, 546f, 446f)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(909f, -606f, 245f, -622f)))))), Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-676f, 100f), _wgslsmith_f_op_f32(trunc(1868f)), true)), func_3(Struct_2(var_0.x, Struct_1(vec4<f32>(-1000f, 1515f, 1000f, -450f), 475f), 13878i, u_input.a, u_input.a.x), _wgslsmith_dot_vec3_u32(var_1, vec3<u32>(42697u, var_1.x, 0u)), Struct_2(false, Struct_1(vec4<f32>(550f, 1285f, -704f, -814f), 495f), u_input.d, u_input.a, 22399i)), Struct_1(vec4<f32>(1319f, 985f, 791f, 1000f), _wgslsmith_f_op_f32(ceil(-174f)))), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 29263u, 45640u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, var_1.x, var_2, 712u), u_input.c, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(u_input.a.x), u_input.d, -u_input.a.x & ~u_input.a.x), ((vec3<i32>(-2147483647i, u_input.a.x, 2147483647i) >> (vec3<u32>(u_input.c.x, u_input.b, 4294967295u) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(u_input.c.wzz, vec3<u32>(var_0.d, u_input.b, var_0.a)) % vec3<u32>(32u))) | ~vec3<i32>(1i, -2147483647i, u_input.a.x)), countOneBits(-abs(vec3<i32>(30856i, u_input.d, 2147483647i))) | select(-vec3<i32>(1i, 1i, 0i), abs(reverseBits(vec3<i32>(u_input.d, u_input.d, 25594i))), vec3<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(true, false, true)), true)));
    var var_2 = Struct_1(var_0.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + 1036f)), var_0.b.x))));
    let var_3 = abs(_wgslsmith_clamp_vec2_i32(u_input.a, abs(-vec2<i32>(24853i, var_1)), select(u_input.a, u_input.a << (u_input.c.yx % vec2<u32>(32u)), vec2<bool>(true, true)) | u_input.a));
    let var_4 = var_0.a;
    var_2 = func_4(Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.b, var_0.b)), var_2.a.x), Struct_3(_wgslsmith_div_f32(-563f, var_2.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(var_0.b)), 1766f), func_1().c.b)), -vec3<i32>(var_1, u_input.d, ~_wgslsmith_div_i32(2147483647i, u_input.d)), var_0).c.b;
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * vec4<f32>(-876f, -567f, var_2.b, var_2.a.x)))) + var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.wz);
}

