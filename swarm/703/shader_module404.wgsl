struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(33013u, 0u, 60756u), vec3<u32>(0u, 4294967295u, 14780u), vec3<u32>(28265u, 85224u, 25549u), vec3<u32>(0u, 40540u, 39191u), vec3<u32>(15502u, 4294967295u, 4294967295u), vec3<u32>(0u, 51289u, 0u), vec3<u32>(49351u, 4294967295u, 4294967295u), vec3<u32>(1u, 61537u, 19511u), vec3<u32>(0u, 66511u, 1u), vec3<u32>(35873u, 0u, 1u), vec3<u32>(88994u, 0u, 0u), vec3<u32>(60088u, 0u, 83165u), vec3<u32>(1u, 54667u, 35578u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(275f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(309f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1056f), -1758f))))));
    var var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.zz, _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 21322u), u_input.d.xy, vec2<u32>(47328u, 36137u))), _wgslsmith_mult_vec2_u32(u_input.d.zz, ~(~u_input.a.yy)), vec2<u32>(1u, u_input.a.x)) | ~_wgslsmith_mod_vec2_u32(u_input.d.zx, reverseBits(vec2<u32>(u_input.a.x, 1u)));
    let var_2 = Struct_1(~_wgslsmith_mod_vec3_i32(~(-vec3<i32>(1i, u_input.b, 2147483647i)), ~vec3<i32>(u_input.c.x, 2734i, u_input.e)), !select(vec2<bool>(true & arg_0.x, any(arg_0)), vec2<bool>(!arg_0.x, !arg_0.x), ~var_1.x >= 877u), !arg_0.x);
    var var_3 = u_input.d.xx;
    var var_4 = any(!arg_0);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_1.x), _wgslsmith_mult_vec2_u32(u_input.d.wz, vec2<u32>(u_input.a.x, var_1.x >> (u_input.d.x % 32u)))) >> (1u % 32u);
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(vec3<i32>(u_input.b, _wgslsmith_mult_i32(arg_0, 1i), ~u_input.e)), vec2<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), true)), u_input.a.x >= ~func_3(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-236f)) - 1102f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -2039f) * -1631f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -592f)))));
    global0 = array<vec3<u32>, 13>();
    let var_1 = max(countOneBits(arg_0), var_0.a.x) ^ (i32(-1i) * -61287i);
    let var_2 = true;
    global0 = array<vec3<u32>, 13>();
    return Struct_1(~(vec3<i32>(arg_0, -arg_0, -var_1) & ~(vec3<i32>(var_0.a.x, -2147483647i, 26020i) & vec3<i32>(0i, var_1, u_input.b))), vec2<bool>(any(var_0.b), var_2), false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = !arg_1.b.x;
    let var_1 = arg_1.b;
    var var_2 = _wgslsmith_div_vec4_u32(u_input.d, u_input.d);
    return arg_1;
}

fn func_1(arg_0: f32) -> vec3<bool> {
    global0 = array<vec3<u32>, 13>();
    let var_0 = func_4(func_2(u_input.e), func_2(_wgslsmith_mod_i32(u_input.b, -min(u_input.e, -1i))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(564f)), arg_0, all(vec2<bool>(false, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, -1633f), vec3<f32>(907f, 734f, arg_0), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -1145f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, 1688f, -260f), vec3<f32>(-1342f, 1181f, arg_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))), u_input.b << (~35288u % 32u));
    global0 = array<vec3<u32>, 13>();
    var var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 13u)] >> (u_input.a % vec3<u32>(32u));
    let var_2 = Struct_1(vec3<i32>(var_0.a.x, func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, var_0.a.x, -19160i, u_input.e), vec4<i32>(u_input.c.x, 23272i, -16274i, var_0.a.x)) | 1i).a.x, ~(-1i)), !(!var_0.b), func_2(u_input.b >> (var_1.x % 32u)).b.x);
    return !select(vec3<bool>(all(vec2<bool>(var_0.b.x, true)), true, var_2.b.x), select(!vec3<bool>(true, var_2.c, var_2.b.x), vec3<bool>(var_2.c, select(var_2.b.x, false, var_2.c), any(vec4<bool>(var_0.c, true, var_2.b.x, true))), select(!vec3<bool>(var_0.c, var_0.b.x, false), !vec3<bool>(var_2.c, true, true), vec3<bool>(true, true, var_2.c))), var_0.c);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = arg_1;
    global0 = array<vec3<u32>, 13>();
    let var_1 = func_2(var_0.a.x);
    global0 = array<vec3<u32>, 13>();
    let var_2 = ~select(u_input.a.x, 1u, !var_1.b.x);
    return var_0;
}

fn func_6(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = !(!(!func_4(Struct_1(vec3<i32>(-60144i, u_input.c.x, 2147483647i), vec2<bool>(arg_0.c, arg_0.b.x), arg_0.b.x), arg_0, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 710f, 1000f))), 0i & arg_0.a.x).b));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1187f);
    let var_2 = func_4(func_5(select(select(vec3<bool>(arg_0.c, true, false), !vec3<bool>(true, arg_0.c, true), vec3<bool>(var_0.x, false, true)), !func_1(687f), var_0.x), func_4(Struct_1(-arg_0.a, vec2<bool>(true, arg_0.b.x), arg_0.c), Struct_1(-arg_0.a, func_5(vec3<bool>(var_0.x, true, false), Struct_1(vec3<i32>(-76033i, arg_0.a.x, 28587i), arg_0.b, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec4<bool>(arg_0.c, true, var_0.x, arg_0.c)).b, var_0.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(337f, 208f, 533f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1527f, 1000f, 702f) * vec3<f32>(1343f, -2359f, -261f)), true)), _wgslsmith_mult_i32(arg_0.a.x, abs(u_input.b))), vec3<bool>(any(vec4<bool>(var_0.x, false, true, true)), any(func_2(-2147483647i).b), true), vec4<bool>(false, !var_0.x, true, false)), func_4(Struct_1(~countOneBits(arg_0.a), arg_0.b, arg_0.b.x), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1598f, -1078f, 550f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(401f, 987f, -253f) + vec3<f32>(-143f, 1000f, 1967f)))), _wgslsmith_mult_i32(i32(-1i) * -1i, -42386i) >> (min(min(36170u, u_input.a.x), select(4294967295u, u_input.a.x, true)) % 32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-252f)))), _wgslsmith_div_f32(-379f, -1037f), -484f), select(~_wgslsmith_clamp_i32(21577i, func_5(vec3<bool>(false, var_0.x, arg_0.c), Struct_1(arg_0.a, arg_0.b, true), vec3<bool>(false, arg_0.c, false), vec4<bool>(true, false, arg_0.b.x, var_0.x)).a.x, -18973i | u_input.e), arg_0.a.x, arg_0.b.x && arg_0.c));
    let var_3 = ~3429u;
    var_0 = vec2<bool>(false, arg_0.c);
    return vec3<i32>(_wgslsmith_dot_vec2_i32(~u_input.c, select(u_input.c, vec2<i32>(arg_0.a.x, -1i), true) & firstLeadingBit(arg_0.a.yz)), 0i, -27127i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_6(func_5(select(vec3<bool>(true, true, true), func_1(-684f), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), func_2(1i), vec3<bool>(true, any(vec4<bool>(false, false, true, true)), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)))), !(!(!func_2(3938i).b)), !(!any(func_2(17225i).b)));
    var var_1 = Struct_1(var_0.a, func_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2262f))), Struct_1(_wgslsmith_mult_vec3_i32(~var_0.a, vec3<i32>(-2147483647i, u_input.e, var_0.a.x)), func_4(func_5(vec3<bool>(var_0.c, var_0.c, var_0.c), Struct_1(var_0.a, vec2<bool>(true, var_0.b.x), false), vec3<bool>(false, true, var_0.b.x), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(24066i, u_input.c.x, -2147483647i), var_0.b, var_0.b.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1129f, -398f, -573f), vec3<f32>(1815f, 179f, 357f))), 19610i).b, true), !vec3<bool>(any(vec3<bool>(var_0.c, false, false)), true, func_2(var_0.a.x).c), vec4<bool>(!(var_0.c || var_0.c), !(!var_0.b.x), func_2(-74759i).b.x, all(vec3<bool>(false, false, var_0.b.x)))).b, true || (-var_0.a.x <= ~(-42167i)));
    let var_2 = Struct_1(-(vec3<i32>(var_1.a.x, 51053i, 1i) & ~var_1.a) & (_wgslsmith_add_vec3_i32(~vec3<i32>(var_1.a.x, 0i, -1i), vec3<i32>(527i, -13381i, var_1.a.x)) << (_wgslsmith_mult_vec3_u32(~vec3<u32>(61441u, u_input.d.x, 55578u), vec3<u32>(u_input.a.x, 5412u, 96162u)) % vec3<u32>(32u))), !(!vec2<bool>(any(vec4<bool>(var_1.c, var_0.b.x, var_0.c, false)), all(vec4<bool>(true, true, var_0.c, false)))), true);
    var var_3 = var_2;
    var_3 = func_5(select(select(!vec3<bool>(true, var_0.b.x, false), func_1(-149f), vec3<bool>(true, true, false)), vec3<bool>(true & any(vec4<bool>(var_0.b.x, false, true, var_0.b.x)), var_3.c, u_input.a.x < u_input.a.x), select(vec3<bool>(var_0.c & var_0.b.x, false, true), !vec3<bool>(false, false, var_2.c), vec3<bool>(false, true, false))), Struct_1(var_3.a, !var_1.b, !(var_2.c & false)), func_1(_wgslsmith_div_f32(-1354f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-293f * -1377f))))), vec4<bool>(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) > (_wgslsmith_div_u32(u_input.d.x, 66213u) | (56920u << (u_input.d.x % 32u))), true, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, vec2<f32>(-381f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1367f))))), -_wgslsmith_clamp_vec3_i32(~var_1.a, vec3<i32>(func_6(var_2).x, -1i, var_0.a.x), vec3<i32>(var_1.a.x, 1i, var_1.a.x)), firstTrailingBit(countOneBits(vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, 4294967295u), _wgslsmith_sub_u32(u_input.a.x, 1u), u_input.d.x << (0u % 32u), _wgslsmith_clamp_u32(36214u, 4294967295u, 4294967295u)))));
}

