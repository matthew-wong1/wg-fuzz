struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-421f - -509f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-446f, 1000f)), _wgslsmith_f_op_f32(ceil(-866f)))), 1f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1016f, -449f))), 1153f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-209f, -551f, 234f, -132f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-403f, -1109f, 1088f, -998f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(509f, -3106f, 1568f, -111f), vec4<f32>(-182f, -862f, 1024f, -1047f))))))), all(vec2<bool>(true, true)), ~(-2147483647i)));
    let var_1 = vec3<i32>(var_0.b.d << (max(firstLeadingBit(firstTrailingBit(40704u)), ~4294967295u) % 32u), 5049i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, countOneBits(var_0.b.d), i32(-1i) * -19670i, var_0.b.d | 1i), vec4<i32>(~9917i, var_0.b.d & 7146i, ~var_0.b.d, var_0.b.d)));
    var var_2 = ~64641u;
    var var_3 = var_1;
    var var_4 = u_input.a.yww;
    return Struct_4(var_3.xz, var_0.b.b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = u_input.a.wx;
    global0 = array<vec3<f32>, 25>();
    var var_1 = 2147483647i;
    var var_2 = vec3<i32>(-arg_1.d.b.d, arg_0.d.b.d, arg_1.e.d) ^ ~((~vec3<i32>(53841i, 78i, arg_2.d) >> (select(u_input.a.yyw, vec3<u32>(arg_1.c, var_0.x, u_input.a.x), false) % vec3<u32>(32u))) & vec3<i32>(~(-2147483647i), arg_1.d.b.d, arg_0.b.d));
    global0 = array<vec3<f32>, 25>();
    return _wgslsmith_f_op_vec4_f32(arg_0.a.b.b * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1012f + arg_2.a.x), _wgslsmith_f_op_f32(-arg_2.b.x), arg_1.e.b.x, _wgslsmith_f_op_f32(min(arg_1.d.a.x, -1436f)))), arg_0.b.b)));
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = select(!(!(_wgslsmith_f_op_f32(abs(arg_0.a.x)) > _wgslsmith_f_op_f32(abs(-441f)))), firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), countOneBits(u_input.a.x))) >= (~(~u_input.a.x) & 33134u), all(vec3<bool>(false, any(vec3<bool>(true, arg_0.b.c, false)), arg_0.b.c)) | (arg_2.a.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f - arg_2.b.x))));
    var var_1 = func_2();
    var_1 = Struct_4(-(~(vec2<i32>(-1i) * -var_1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(arg_0, arg_0.b, 1u, arg_0, Struct_1(arg_0.a, var_1.b, true, 1i)), Struct_3(Struct_2(var_1.b.yw, arg_0.b), Struct_1(arg_0.a, arg_2.b, true, var_1.a.x), 66160u, arg_0, Struct_1(vec2<f32>(arg_0.a.x, -954f), vec4<f32>(-1017f, arg_0.b.b.x, var_1.b.x, -587f), true, arg_0.b.d)), arg_2)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(arg_2.b, arg_0.b.b)))) * var_1.b));
    global0 = array<vec3<f32>, 25>();
    var var_2 = arg_2;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.x, 1000f, var_2.a.x, arg_0.a.x), arg_0.b.b))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(arg_0.b.b)), _wgslsmith_f_op_vec4_f32(-var_2.b)))) * var_2.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f * 127f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - 623f) * 546f), -1480f) * arg_2.b));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_5 {
    global0 = array<vec3<f32>, 25>();
    global0 = array<vec3<f32>, 25>();
    let var_0 = -1000f == arg_0.b.x;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -1057f) - 622f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2499f, arg_1.x))) * arg_0.b.x)));
    let var_2 = !(!(!vec2<bool>(true, var_0)));
    return Struct_5(vec2<bool>(var_2.x, true), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-998f, 855f), arg_1))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(554f, -455f)), _wgslsmith_f_op_vec4_f32(floor(arg_0.b)), true, abs(-13029i))), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(arg_0.b.ww, vec2<f32>(937f, -1322f))))), arg_0.b, any(select(vec2<bool>(false, var_0), vec2<bool>(var_2.x, var_2.x), false)), select(arg_0.a.x << (0u % 32u), i32(-1i) * -62143i, !var_2.x)), u_input.a.x, Struct_2(_wgslsmith_f_op_vec2_f32(sign(arg_0.b.yz)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) * vec2<f32>(arg_1.x, arg_1.x)), vec4<f32>(arg_0.b.x, arg_0.b.x, -335f, -936f), arg_0.b.x >= arg_0.b.x, _wgslsmith_mod_i32(arg_2.x, -2147483647i))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_0.b.x, var_1, -1146f), vec4<f32>(663f, -684f, arg_1.x, 1040f)), select(!var_0, true, var_0), arg_2.x >> (u_input.a.x % 32u))), vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.a.xw), 3213u, select(_wgslsmith_clamp_u32(abs(u_input.a.x), reverseBits(4294967295u), firstTrailingBit(u_input.a.x)), _wgslsmith_mult_u32(min(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, 23903u, 19979u))), var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(~(~vec2<i32>(22963i, -36070i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec2<f32>(1387f, 902f), Struct_1(vec2<f32>(-467f, 418f), vec4<f32>(-1908f, 2861f, -411f, -197f), true, 11901i)), -338f, Struct_1(vec2<f32>(-1026f, 1770f), vec4<f32>(1685f, 2067f, 1610f, -1792f), false, 19581i))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-126f)), _wgslsmith_f_op_f32(-func_2().b.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-3287f, 3043f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(890f, 1760f)))))), vec3<i32>(1i, 1i, 1i));
    let var_1 = vec3<bool>(any(vec4<bool>(false, false, all(select(vec3<bool>(var_0.b.d.b.c, true, var_0.a.x), vec3<bool>(false, false, var_0.a.x), vec3<bool>(var_0.b.b.c, var_0.a.x, false))), true & !var_0.b.b.c)), false, true | all(select(!vec3<bool>(var_0.a.x, var_0.a.x, var_0.b.a.b.c), select(vec3<bool>(true, var_0.b.e.c, true), vec3<bool>(var_0.a.x, true, true), vec3<bool>(false, false, var_0.b.a.b.c)), vec3<bool>(true, var_0.a.x, var_0.b.d.b.c))));
    let var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(func_4(Struct_4(max(vec2<i32>(var_2, var_0.b.d.b.d), vec2<i32>(var_2, 1i)), var_0.b.d.b.b), vec2<f32>(-1203f, _wgslsmith_f_op_f32(-var_0.b.d.b.a.x)), -(~vec3<i32>(0i, 2147483647i, var_2))).b, Struct_3(var_0.b.a, func_4(func_2(), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(679f, 1595f), vec2<f32>(var_0.b.d.b.b.x, -1270f))), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.a.b.d, 2297i, -2147483647i), vec3<i32>(var_2, var_0.b.b.d, var_2), vec3<i32>(var_0.b.e.d, 2147483647i, 21344i))).b.e, _wgslsmith_div_u32(14646u, 4294967295u), Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b.d.b.b.x, 2001f))), Struct_1(vec2<f32>(var_0.b.e.b.x, var_0.b.b.b.x), var_0.b.d.b.b, var_0.b.e.c, 0i)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.b.b.x, var_0.b.a.a.x), var_0.b.b.b.wy, var_1.xz)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.a.b.b.x, var_0.b.b.a.x, -1826f, 1000f), vec4<f32>(var_0.b.a.a.x, 1223f, 405f, -235f), vec4<bool>(false, true, false, false))), any(vec3<bool>(var_0.b.d.b.c, var_0.a.x, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 44199i, var_0.b.e.d), vec3<i32>(13129i, -2147483647i, var_0.b.e.d)))), func_4(Struct_4(vec2<i32>(var_0.b.b.d, var_0.b.b.d), _wgslsmith_f_op_vec4_f32(-var_0.b.d.b.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec4_f32(func_3(var_0.b, var_0.b, var_0.b.d.b)).zz, var_0.b.d.a, vec2<bool>(var_1.x, true))), vec3<i32>(var_0.b.b.d, _wgslsmith_div_i32(var_2, var_2), var_2)).b.e)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2().b * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.d.b.b.x, var_0.b.d.b.a.x, 302f, var_0.b.b.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1402f, 2136f, -1291f, -2546f)))))));
    let var_4 = ~63486i;
    var var_5 = u_input.a.x >> (23291u % 32u);
    var var_6 = !all(!select(!vec4<bool>(true, true, var_1.x, var_1.x), !vec4<bool>(true, false, true, var_0.a.x), select(var_0.b.d.b.c, false, var_1.x)));
    global0 = array<vec3<f32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mult_u32(4294967295u | u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), ~0u, u_input.a.x, 1u), u_input.a, 45686i, ~_wgslsmith_mult_vec3_u32(u_input.a.wyz, ~reverseBits(u_input.a.wzx)));
}

