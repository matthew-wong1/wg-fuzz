struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 829f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(1696f)), 1641f, _wgslsmith_f_op_f32(139f - 1625f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(544f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1318f, 566f)), _wgslsmith_f_op_f32(f32(-1f) * -206f))))), 1000f));
    let var_1 = ~(firstTrailingBit(9717u) >> (u_input.a % 32u));
    var var_2 = -1i;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))));
    var var_4 = Struct_1(min(select(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(2147483647i, 33229i))), u_input.b, true), -u_input.b), vec4<f32>(-906f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2358f - _wgslsmith_f_op_f32(step(732f, -2486f)))), _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(ceil(204f))), true, all(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(floor(-1342f));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(u_input.b, 0i) == u_input.b)))));
    var var_0 = vec4<f32>(-537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-603f - 1000f))))), _wgslsmith_f_op_f32(func_3(any(vec3<bool>(true, any(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, false, false, false)))))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(~u_input.b, -u_input.b), _wgslsmith_add_i32(u_input.b, reverseBits(~u_input.b)));
    global0 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-276f - -341f), -886f);
    return Struct_1(-abs(~_wgslsmith_mod_i32(u_input.b, -2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))), var_2.x)), all(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), u_input.b == -1i, true)), all(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(select(259f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(arg_3.b.x + -700f)) + _wgslsmith_f_op_f32(var_0.b.x + arg_0.b.x)), _wgslsmith_f_op_f32(-arg_2.x)), true));
    let var_1 = Struct_1(-1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_3.b))))), ((_wgslsmith_sub_u32(u_input.a, u_input.a) << (abs(u_input.a) % 32u)) >= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 4294967295u) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)), max(vec3<u32>(u_input.a, 64514u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))) && all(!select(vec4<bool>(var_0.c, false, var_0.c, arg_1), vec4<bool>(false, arg_0.c, arg_1, true), vec4<bool>(false, true, arg_3.d, arg_1))), !(!select(true, !arg_0.c, arg_3.c || false)));
    let var_2 = vec4<i32>(-1i, -min(firstTrailingBit(-2147483647i), abs(-6231i << (u_input.a % 32u))), (~var_0.a ^ firstLeadingBit(var_0.a >> (u_input.a % 32u))) >> (45465u % 32u), abs(i32(-1i) * -abs(-1i)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -613f))));
    return arg_3;
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) * arg_2.b.x);
    return func_4(func_4(arg_2, !arg_2.c, _wgslsmith_f_op_vec3_f32(-arg_2.b.zxw), Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 7338i, 1i, -5863i), ~vec4<i32>(u_input.b, arg_2.a, -22434i, -2147483647i)), arg_2.b, (-1i >= u_input.b) == arg_0.x, true)), arg_2.c, arg_2.b.yxw, func_2());
}

fn func_1() -> f32 {
    var var_0 = func_5(select(vec3<bool>(true, true, true), vec3<bool>(!(3283u >= u_input.a), !all(vec4<bool>(false, true, false, false)), true), !vec3<bool>(all(vec4<bool>(true, true, true, true)), select(false, false, true), true)), 9526u, func_4(Struct_1(_wgslsmith_mod_i32(u_input.b >> (1u % 32u), -1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1086f, -363f, -1190f, 1106f))), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), true), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-161f, 808f, -308f), vec3<f32>(689f, -108f, -567f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1339f, 2897f, 100f), vec3<f32>(787f, -474f, -624f))))), func_2()));
    var_0 = func_4(func_2(), !all(select(select(vec2<bool>(var_0.c, true), vec2<bool>(true, true), var_0.c), select(vec2<bool>(true, var_0.d), vec2<bool>(true, true), vec2<bool>(var_0.d, var_0.d)), !vec2<bool>(true, var_0.c))), _wgslsmith_f_op_vec3_f32(-var_0.b.yyz), Struct_1(2147483647i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.b, vec4<f32>(1260f, var_0.b.x, var_0.b.x, -1964f))) * var_0.b), _wgslsmith_f_op_vec4_f32(-func_4(Struct_1(1i, vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), true, var_0.c), var_0.c, var_0.b.zzy, Struct_1(var_0.a, vec4<f32>(971f, -568f, var_0.b.x, var_0.b.x), var_0.c, var_0.c)).b)), var_0.c, false));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.b.x)) * _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -783f))));
    var var_2 = false;
    return _wgslsmith_f_op_f32(f32(-1f) * -848f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(func_1());
    global0 = _wgslsmith_f_op_f32(func_3(false));
    let var_0 = func_4(Struct_1(u_input.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-118f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1542f * 237f)), 232f, _wgslsmith_f_op_f32(func_1())), true, (all(vec3<bool>(true, false, false)) && true) | all(vec4<bool>(true, false, false, true))), abs(_wgslsmith_sub_u32(u_input.a, u_input.a) | select(1u, u_input.a, false)) > ~abs(1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1356f)), 456f, func_2().b.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(397f, -464f, -1092f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1007f, -1022f, 123f), vec3<f32>(-1062f, -1283f, -133f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1470f, 1026f, 614f) + vec3<f32>(586f, -1876f, -2078f)))))), Struct_1(-u_input.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(112f, 2058f, _wgslsmith_f_op_f32(-1644f * -1756f), -340f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-263f, -362f, 704f, -327f), vec4<f32>(801f, 245f, -1222f, -1617f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1122f, -772f, -1505f, -1489f)))), vec4<bool>(true, false, true, true))), ~(u_input.b ^ -26081i) <= 0i, false));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    let var_1 = ~firstLeadingBit(12785u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -360f, var_0.b.x, -1000f) + vec4<f32>(var_0.b.x, -2448f, 1171f, var_0.b.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -564f) + var_0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-895f, 1380f, var_0.b.x, var_0.b.x) * vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 1607f)), 22391u >= var_1)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1327f, var_0.b.x, 717f, var_0.b.x) - var_0.b) - var_0.b))), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + -496f) * 1f))), reverseBits(~u_input.a), var_0.b.wz, var_1 | var_1);
}

