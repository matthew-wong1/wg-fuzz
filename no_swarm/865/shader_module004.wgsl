struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> i32 {
    var var_0 = select(!vec3<bool>(true, arg_2, true), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(arg_2, arg_2, true), true)), vec3<bool>(arg_2, any(select(vec2<bool>(true, false), vec2<bool>(arg_2, true), vec2<bool>(true, false))), true), arg_2), true);
    var_0 = select(vec3<bool>(arg_2, any(vec3<bool>(all(vec3<bool>(arg_2, arg_2, false)), true, true)), !(!all(vec3<bool>(var_0.x, arg_2, false)))), !select(select(vec3<bool>(arg_2, arg_2, false), select(vec3<bool>(arg_2, var_0.x, false), vec3<bool>(var_0.x, false, true), true), var_0.x), select(vec3<bool>(true, arg_2, var_0.x), !vec3<bool>(true, var_0.x, arg_2), select(vec3<bool>(false, false, false), vec3<bool>(arg_2, arg_2, true), true)), all(!vec4<bool>(var_0.x, arg_2, false, arg_2))), true);
    let var_1 = arg_1;
    var var_2 = 1u;
    var_2 = u_input.a.x;
    return arg_1.a.x;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(reverseBits(countOneBits(~vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x))), vec3<i32>(max(u_input.d.x, u_input.d.x), -func_3(22511u, Struct_3(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), false), u_input.d.x)), false, all(select(vec2<bool>(all(vec3<bool>(false, true, true)), any(vec3<bool>(true, true, false))), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))), -2147483647i, !vec3<bool>(all(vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(step(797f, 748f)) > -1118f, false));
    var var_1 = !(!select(select(var_0.e, select(vec3<bool>(var_0.b, var_0.b, var_0.e.x), vec3<bool>(false, var_0.e.x, true), var_0.e), any(vec3<bool>(true, var_0.b, false))), var_0.e, all(!var_0.e)));
    var var_2 = Struct_1(reverseBits(-(~_wgslsmith_mod_vec3_i32(u_input.d.zxz, vec3<i32>(-1i, 0i, 2147483647i)))), select(false, true, -2695f == _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(775f, 930f), _wgslsmith_f_op_f32(round(-1029f))))), true || var_1.x, -abs(abs(34216i)) << (u_input.a.x % 32u), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(var_0.b, true, var_1.x), var_0.e, vec3<bool>(true, true, true)), true), !select(vec3<bool>(false, var_1.x, false), var_0.e, vec3<bool>(true, true, var_1.x)), var_0.c));
    var_1 = var_0.e;
    var var_3 = vec3<u32>(95931u, 4294967295u, _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(4294967295u, 23595u >> (u_input.a.x % 32u))) << (~firstLeadingBit(max(u_input.c.x, u_input.c.x)) % 32u));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(sign(-539f)), 713f, _wgslsmith_f_op_f32(round(-249f))))))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-493f + 1348f)), -872f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1822f))))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    let var_0 = select(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.d.x, 1i, -71360i), vec4<i32>(7932i, arg_3.d.d, 37775i, arg_2.a.x))) & vec4<i32>(firstTrailingBit(arg_3.d.d) >> (_wgslsmith_mod_u32(arg_3.c.x, arg_3.c.x) % 32u), min(arg_3.d.a.x << (1u % 32u), _wgslsmith_dot_vec3_i32(arg_3.d.a, vec3<i32>(-6031i, 0i, arg_3.d.d))), -48024i, ~_wgslsmith_div_i32(arg_3.d.d, u_input.d.x)), ~(select(u_input.d, vec4<i32>(-54122i, 1i, 1i, u_input.d.x), true) >> (vec4<u32>(1u, u_input.c.x, 0u, u_input.c.x) % vec4<u32>(32u))) & u_input.d, arg_3.d.c && (arg_3.d.b != true));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -606f);
    var_1 = arg_1.x;
    var var_2 = -715f;
    var_1 = -1119f;
    return arg_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = func_4(Struct_3(-reverseBits(firstTrailingBit(vec3<i32>(4349i, 0i, 39736i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.x, 584f, 635f, -806f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1437f, arg_0.x, -465f, arg_0.x))))) + vec4<f32>(-917f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1471f)), arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_3(arg_2.a), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-300f, 142f, -348f, -441f), vec4<f32>(-221f, -236f, -653f, 424f))) - vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1679f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, -1477f, 941f, 1263f), vec4<f32>(1000f, -402f, arg_0.x, 1717f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1614f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yx * vec2<f32>(arg_0.x, arg_0.x))), vec3<u32>(4294967295u, 0u, ~0u), arg_1));
    let var_1 = arg_2.e.zz;
    let var_2 = func_4(func_4(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1299f))), var_0, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), arg_0.x, 1066f, arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(max(arg_0.x, 483f)), _wgslsmith_f_op_f32(-arg_0.x)), vec3<u32>(u_input.c.x, firstLeadingBit(0u), u_input.b.x), Struct_1(var_0.a, true, !var_1.x, 1i, arg_2.e))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(sign(arg_0.x)), all(vec4<bool>(false, false, arg_2.e.x, arg_1.e.x)))), 815f, arg_0.x, arg_0.x) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(256f, arg_0.x, arg_0.x, -373f) + vec4<f32>(arg_0.x, -947f, 140f, arg_0.x)))))), Struct_3(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-37708i, 1i), var_0.a.xx)), func_4(func_4(Struct_3(u_input.d.wwz), vec4<f32>(arg_0.x, -167f, -842f, arg_0.x), var_0, Struct_2(vec4<f32>(1181f, 1431f, 742f, -219f), arg_0.yy, u_input.c, arg_1)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, 473f, arg_0.x, arg_0.x))), func_4(var_0, vec4<f32>(arg_0.x, arg_0.x, 1036f, arg_0.x), var_0, Struct_2(vec4<f32>(arg_0.x, -1433f, -130f, -1375f), vec2<f32>(arg_0.x, -2370f), vec3<u32>(u_input.c.x, u_input.c.x, 13106u), arg_2)), Struct_2(vec4<f32>(-958f, 1271f, 441f, arg_0.x), arg_0.yz, vec3<u32>(16714u, u_input.c.x, u_input.c.x), Struct_1(vec3<i32>(16338i, 37442i, arg_1.a.x), arg_1.e.x, var_1.x, arg_3, arg_1.e))).a)), Struct_2(vec4<f32>(1144f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -848f), arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(524f)))), _wgslsmith_add_vec3_u32(u_input.c, ~u_input.c) ^ vec3<u32>(1u, 4294967295u, u_input.a.x), arg_2));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-315f, arg_0.x, arg_0.x, -2602f), vec4<f32>(arg_0.x, 755f, arg_0.x, -527f), vec4<bool>(arg_2.c, true, var_1.x, var_1.x))))))), arg_0.xz, u_input.c, Struct_1(vec3<i32>(1i, _wgslsmith_add_i32(~u_input.d.x, u_input.d.x), _wgslsmith_div_i32(u_input.d.x, arg_2.a.x)), any(select(vec2<bool>(arg_1.b, arg_1.c), select(vec2<bool>(false, arg_2.e.x), var_1, var_1.x), arg_1.c)), all(arg_1.e.yz), func_3(~reverseBits(112893u), var_2, !var_1.x), vec3<bool>(var_1.x, arg_2.b, arg_2.c)));
    let var_4 = !(!arg_1.e);
    return _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, all(arg_2.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d ^ _wgslsmith_div_vec4_i32(u_input.d | ~u_input.d, abs(vec4<i32>(-20738i, u_input.d.x, u_input.d.x, 719i) & -vec4<i32>(0i, 0i, u_input.d.x, 2147483647i)));
    var var_1 = ~(~u_input.a.x);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-768f * 142f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1704f)) + _wgslsmith_f_op_f32(1233f * 684f)))), _wgslsmith_f_op_f32(210f * _wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-619f, -162f, -473f), vec3<f32>(392f, -1349f, -1053f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-937f, 519f, -401f))), Struct_1(-u_input.d.wyy, false, true, u_input.d.x, vec3<bool>(true, true, true)), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_0.x, -6114i), vec3<i32>(-35413i, var_0.x, var_0.x)), true, true, 1i, vec3<bool>(true, true, true)), var_0.x))), -996f, _wgslsmith_f_op_f32(894f + -868f));
    var var_3 = abs(~u_input.a);
    var_1 = ~21651u;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_i32(max(countOneBits(vec3<i32>(11617i, -5004i, 2147483647i)), var_0.yww & var_0.zxz), ~var_0.yww), firstLeadingBit(_wgslsmith_mult_i32(func_3(~var_3.x, Struct_3(vec3<i32>(-1i, -2147483647i, var_0.x)), false), firstTrailingBit(func_3(u_input.a.x, Struct_3(vec3<i32>(var_0.x, u_input.d.x, u_input.d.x)), true)))), 1u, var_2.x);
}

