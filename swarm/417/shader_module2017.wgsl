struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec4<f32>(1000f, -862f, -1631f, -702f), vec4<bool>(false, false, false, true), false), -1523f, Struct_1(vec4<f32>(403f, -1145f, 270f, 238f), vec4<bool>(false, false, true, true), true), Struct_1(vec4<f32>(-341f, -111f, 602f, 1553f), vec4<bool>(true, false, false, true), false), Struct_1(vec4<f32>(-410f, -364f, 1145f, 493f), vec4<bool>(true, true, false, false), true)), Struct_2(Struct_1(vec4<f32>(111f, -280f, -1000f, 753f), vec4<bool>(true, true, false, false), true), 431f, Struct_1(vec4<f32>(1670f, 779f, -388f, 980f), vec4<bool>(true, true, false, true), true), Struct_1(vec4<f32>(-1000f, -3081f, -737f, 1336f), vec4<bool>(true, true, true, true), false), Struct_1(vec4<f32>(-313f, -366f, 919f, -540f), vec4<bool>(true, false, true, false), false)), Struct_2(Struct_1(vec4<f32>(-1423f, 352f, -1000f, -661f), vec4<bool>(false, true, true, false), true), -1319f, Struct_1(vec4<f32>(1631f, 796f, -567f, -185f), vec4<bool>(true, true, true, true), false), Struct_1(vec4<f32>(-815f, 745f, -302f, -543f), vec4<bool>(true, true, true, false), false), Struct_1(vec4<f32>(960f, -1000f, -1909f, 963f), vec4<bool>(true, true, true, true), false)), Struct_2(Struct_1(vec4<f32>(-1212f, 520f, 574f, -1000f), vec4<bool>(false, false, true, false), true), -340f, Struct_1(vec4<f32>(-286f, 1302f, -198f, -1000f), vec4<bool>(true, false, true, true), true), Struct_1(vec4<f32>(-487f, -1878f, 633f, -108f), vec4<bool>(false, false, true, true), true), Struct_1(vec4<f32>(1109f, -441f, -401f, -1000f), vec4<bool>(true, true, true, true), true)), Struct_2(Struct_1(vec4<f32>(854f, -354f, -195f, -1218f), vec4<bool>(false, false, false, false), false), 1474f, Struct_1(vec4<f32>(1509f, 848f, -789f, 450f), vec4<bool>(false, false, true, true), false), Struct_1(vec4<f32>(-1000f, -411f, 970f, 313f), vec4<bool>(true, false, true, false), true), Struct_1(vec4<f32>(962f, -938f, -855f, -1020f), vec4<bool>(false, false, false, false), false)), Struct_2(Struct_1(vec4<f32>(-625f, -985f, 1000f, 1276f), vec4<bool>(true, false, true, true), true), 556f, Struct_1(vec4<f32>(-645f, 1000f, -689f, 829f), vec4<bool>(false, false, true, false), false), Struct_1(vec4<f32>(121f, 515f, 318f, -1044f), vec4<bool>(true, true, false, false), false), Struct_1(vec4<f32>(692f, 728f, 588f, 1354f), vec4<bool>(true, false, true, false), false)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<Struct_2, 6>();
    var var_0 = ~u_input.a;
    let var_1 = global0[_wgslsmith_index_u32((var_0.x << (1u % 32u)) ^ reverseBits(62195u), 6u)];
    let var_2 = var_1.e.c;
    return var_1.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = 1i;
    var var_2 = select(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)) != -2022f, false, false);
    let var_3 = ~(~firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(arg_0.wxz, arg_0.yxx))));
    global0 = array<Struct_2, 6>();
    return !(!(!vec4<bool>(func_1(4577i).c, all(vec2<bool>(true, false)), func_1(1i).c, true)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<u32>) -> i32 {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-256f, -1436f, -1178f, 317f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-385f, -425f, -256f, -1649f), vec4<f32>(2372f, 528f, 1206f, 522f)))), func_2(vec4<u32>(u_input.a.x, u_input.c, 29294u, 40573u), vec3<f32>(319f, -407f, -1610f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1055f, 959f, -2090f, 378f), vec4<f32>(-536f, -639f, 1421f, -1056f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-594f, 402f, -163f, 369f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -208f, -794f, -1069f), vec4<f32>(-328f, -790f, -372f, -1137f)))), func_2(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(181f, -284f, -1000f), vec3<f32>(382f, 934f, -854f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(124f, 1000f, -1820f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1738f, 1000f, -1642f))))), false);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) * _wgslsmith_f_op_f32(var_0.a.x * -1012f)), func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(u_input.d, u_input.e, -7675i))).a.x, var_0.a.x, _wgslsmith_f_op_f32(floor(1826f))))), func_1(arg_0 & ~u_input.d).b, _wgslsmith_f_op_f32(-1000f - -1151f) < _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.x)))));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = !vec2<bool>(true && arg_2.b.x, arg_2.b.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, 950f) + -156f)) * _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(arg_2.a.x - arg_1.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a.x))))));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(func_1(~u_input.d).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.x, arg_2.a.x, var_0.x))), true)))), -1538f));
    let var_2 = abs(_wgslsmith_add_vec2_i32(reverseBits(u_input.b) << ((vec2<u32>(u_input.c, 55815u) ^ _wgslsmith_add_vec2_u32(u_input.a, u_input.a)) % vec2<u32>(32u)), ~(~u_input.b)));
    var var_3 = !(!(!var_0.x));
    return StorageBuffer(vec3<i32>(_wgslsmith_mult_i32(24183i, arg_0), var_2.x, -18455i), _wgslsmith_div_vec2_u32(u_input.a, u_input.a), func_1(reverseBits(-_wgslsmith_dot_vec2_i32(vec2<i32>(-63740i, arg_0), vec2<i32>(-37311i, 2147483647i)))).a.yy, vec2<i32>(_wgslsmith_mod_i32(-1i, max(-20282i, arg_0)) | ~max(var_2.x, 4774i), u_input.b.x), _wgslsmith_f_op_f32(-arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 6>();
    var var_0 = func_1(-2147483647i);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(940f, var_0.a.x, -253f, -1090f)) * _wgslsmith_f_op_vec4_f32(var_0.a + var_0.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1743f, var_0.a.x, 281f, 744f)), _wgslsmith_f_op_vec4_f32(-var_0.a)))), !(!vec4<bool>(true, u_input.a.x > u_input.a.x, false, u_input.e != -21084i)), any(var_0.b.zy));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f + 725f))))), var_0.a.x));
    let x = u_input.a;
    s_output = func_4(19849i, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), -506f, 939f))), func_2(firstLeadingBit(vec4<u32>(u_input.c, 49647u, 4294967295u, u_input.a.x)), var_0.a.wxz), var_0.b.x), func_1(_wgslsmith_mult_i32(func_3(~1i, vec4<u32>(4294967295u, u_input.c, 17475u, 39721u), u_input.a), -3807i)));
}

