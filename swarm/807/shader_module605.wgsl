struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = (-46283i >> (u_input.b.x % 32u)) << (u_input.b.x % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_f_op_f32(min(arg_0.x, 1488f))), _wgslsmith_f_op_f32(exp2(arg_1.b.x)), -1052f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.b.x)), _wgslsmith_f_op_f32(round(1966f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1370f, 557f, 109f, arg_2.b.x))) + _wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(arg_1.b.x, 333f, 270f, -517f))), _wgslsmith_f_op_vec4_f32(arg_1.b * _wgslsmith_f_op_vec4_f32(global0.b - arg_1.b)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(489f + -322f))), 732f, global0.b.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.b))) - arg_2.b)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 3045f, arg_2.b.x, -257f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -777f, 960f, global0.b.x) * vec4<f32>(-1180f, arg_2.b.x, -1000f, -306f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.x + global0.b.x), arg_2.b.x, arg_0.x, -170f)), _wgslsmith_f_op_vec4_f32(-arg_2.b))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1371f)), arg_0.x, _wgslsmith_f_op_f32(global0.b.x + arg_1.b.x), -1104f) - global0.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(-258f * 706f), 1327f, arg_0.x))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_0, var_1.xzz)), _wgslsmith_f_op_vec3_f32(abs(global0.b.xwx)));
    return u_input.c.yy;
}

fn func_2() -> f32 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, -1904f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(393f, -1441f) + -521f), 857f)));
    let var_0 = Struct_1(any(!vec2<bool>(global0.a || true, select(false, true, true))), global0.b);
    let var_1 = -330f;
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec3_i32(u_input.c.zxz, u_input.c.wwy), _wgslsmith_clamp_i32(0i << (u_input.b.x % 32u), -1i, select(u_input.a, u_input.c.x, true))), select(~u_input.c.yx, u_input.c.xx, select(!vec2<bool>(var_0.a, false), select(vec2<bool>(global0.a, global0.a), vec2<bool>(true, var_0.a), true), false))) | _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.yzx, vec3<i32>(23982i, 2147483647i, u_input.c.x) | vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), 2147483647i), func_3(vec3<f32>(_wgslsmith_f_op_f32(round(-219f)), var_1, _wgslsmith_f_op_f32(min(2183f, -305f))), Struct_1(true || var_0.a, _wgslsmith_f_op_vec4_f32(var_0.b * global0.b)), Struct_1(1097f <= var_0.b.x, _wgslsmith_f_op_vec4_f32(-var_0.b))));
    var var_3 = 370f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(336f + var_1))), _wgslsmith_f_op_f32(sign(919f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>) -> f32 {
    global0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(765f, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.b.x), global0.b.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) + vec4<f32>(-1263f, -2263f, global0.b.x, global0.b.x))), any(!(!arg_0.xy)))));
    var var_0 = arg_1;
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * global0.b)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.b.x, global0.b.x, 109f, 2896f))), true))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), var_1.b.x, any(vec2<bool>(false, false)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, 2374f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))))));
    var var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(38626u, 26106u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~(~vec3<u32>(u_input.b.x, 104595u, 52761u))) >> (vec3<u32>(firstLeadingBit(~u_input.b.x), ~4294967295u >> (u_input.b.x % 32u), reverseBits(u_input.b.x)) % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(u_input.b.x, 99009u, u_input.b.x)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + global0.b.x))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_i32(0i, 0i);
    global0 = Struct_1(true, global0.b);
    global0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(192f, arg_0.x, 149f, arg_0.x))) * arg_0) + _wgslsmith_f_op_vec4_f32(-global0.b)))));
    global0 = Struct_1(arg_2.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - global0.b.x))), _wgslsmith_f_op_f32(func_1(!(!vec3<bool>(arg_2.x, false, true)), vec4<bool>(any(arg_2), global0.a, true, !arg_2.x))), global0.b.x, arg_0.x));
    var var_1 = Struct_1(!(select(abs(u_input.b.x), u_input.b.x, u_input.b.x >= 51558u) < (u_input.b.x << (u_input.b.x % 32u))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1401f + -233f), -429f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))))), 1177f, 1112f, 940f));
    return select(vec4<bool>(any(vec3<bool>(true, arg_2.x, global0.a)), all(vec2<bool>(global0.a, false)) && !(false || var_1.a), !(!any(vec3<bool>(true, arg_2.x, true))), select(global0.a, true, var_1.a)), select(!vec4<bool>(any(vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x)), true, global0.a, true), !select(vec4<bool>(var_1.a, arg_2.x, true, true), !vec4<bool>(true, true, var_1.a, true), u_input.b.x >= 0u), var_1.a), var_1.a);
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    global0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(-global0.b));
    global0 = Struct_1(arg_1.x, vec4<f32>(-468f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1535f - -1245f), _wgslsmith_f_op_f32(func_1(vec3<bool>(arg_1.x, arg_0, global0.a), arg_1))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x)))), 1496f, -1238f));
    var var_0 = Struct_1(any(!select(select(vec3<bool>(true, global0.a, global0.a), arg_1.wyz, vec3<bool>(false, arg_0, false)), func_4(global0.b, u_input.c.wyw, arg_1.zx).xxy, vec3<bool>(false, false, true))), global0.b);
    var var_1 = reverseBits(vec2<i32>(u_input.c.x, _wgslsmith_mod_i32(18607i, 2147483647i) << (_wgslsmith_div_u32(u_input.b.x, 36966u) % 32u))) & func_3(global0.b.wwy, Struct_1(all(arg_1.wy), vec4<f32>(958f, _wgslsmith_f_op_f32(select(var_0.b.x, arg_2.x, false)), _wgslsmith_f_op_f32(1405f * arg_2.x), _wgslsmith_f_op_f32(-var_0.b.x))), Struct_1(abs(9317i) > -u_input.a, vec4<f32>(_wgslsmith_f_op_f32(arg_2.x - var_0.b.x), global0.b.x, _wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)), 1f)));
    global0 = Struct_1(arg_1.x | false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, 826f)) * arg_2.x), global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.x)) * 1356f), arg_2.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.b * vec4<f32>(arg_2.x, -1440f, var_0.b.x, arg_2.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, -1000f, arg_2.x))))));
    return Struct_1(false & arg_1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, global0.b.x, -627f, _wgslsmith_f_op_f32(step(arg_2.x, 1178f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (1i | u_input.c.x) == -31213i;
    let var_1 = 1f;
    global0 = func_5(true, !func_4(vec4<f32>(_wgslsmith_f_op_f32(265f + 395f), _wgslsmith_f_op_f32(1067f + var_1), var_1, _wgslsmith_f_op_f32(func_1(vec3<bool>(false, global0.a, false), vec4<bool>(false, var_0, true, var_0)))), vec3<i32>(1i, u_input.a, min(u_input.a, u_input.c.x)), !select(vec2<bool>(false, var_0), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.xw) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, -142f) + global0.b.x), var_1)), global0.a);
    let var_2 = 44258i;
    let var_3 = var_2;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global0.b.yzw))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(422f, global0.b.x, global0.b.x), vec3<f32>(var_1, -770f, -745f), true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-754f, -1475f, var_1), _wgslsmith_f_op_vec3_f32(-global0.b.xww)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.zyz)))));
    let var_5 = Struct_1(global0.a, global0.b);
    var var_6 = vec4<bool>(true, false, var_0, any(select(select(vec4<bool>(false, var_0, global0.a, false), vec4<bool>(true, global0.a, global0.a, true), vec4<bool>(true, false, var_0, true)), !vec4<bool>(true, global0.a, var_0, global0.a), !vec4<bool>(global0.a, global0.a, true, global0.a))) | (1u <= ((u_input.b.x ^ 5120u) & (4294967295u << (0u % 32u)))));
    var_4 = var_5.b.wzw;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-730f, 1004f))) * 869f), vec2<i32>(-(var_3 ^ u_input.c.x), var_3 | -var_3) ^ vec2<i32>(var_2, u_input.a), 28692u);
}

