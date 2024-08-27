struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec3<u32>,
    d: u32,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<f32>(-582f, 1366f), vec4<f32>(817f, 320f, 974f, -1000f), vec4<u32>(41145u, 1u, 92466u, 1u), 1u));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> vec3<i32> {
    global0 = array<Struct_2, 13>();
    global1 = array<Struct_1, 1>();
    global0 = array<Struct_2, 13>();
    global1 = array<Struct_1, 1>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(485f, 1363f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 1016f, 337f, -522f)))))))), vec4<u32>(select(~64208u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 25873u), vec2<u32>(4294967295u, 0u)), true), ~max(0u, 0u), ~73010u, ~1u) >> (vec4<u32>(0u | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(30960u, 6256u)), ~1u, 2780u, 1u) % vec4<u32>(32u)), min(~1u, max(0u, reverseBits(1u))));
    return -(~_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, arg_2) | countOneBits(vec3<i32>(-2147483647i, 2147483647i, arg_0)), vec3<i32>(arg_2, ~arg_0, firstTrailingBit(arg_2))));
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> u32 {
    let var_0 = arg_0.b;
    let var_1 = Struct_3(!(!select(vec2<bool>(true, false), !arg_0.b.a, var_0.a.x)));
    var var_2 = Struct_5(arg_0, 1i, func_3(-19483i, Struct_3(select(!var_1.a, vec2<bool>(false, false), true)), 39i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-777f)))) + _wgslsmith_f_op_f32(-arg_0.a.x))));
    var_2 = Struct_5(arg_0, -45618i, -vec3<i32>(-var_2.c.x, min(2147483647i, -65706i), u_input.a.x));
    return 45804u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1029f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1264f - -1866f))))))));
    let var_1 = !(!(!vec4<bool>(true, false, true, arg_1.x <= u_input.a.x)));
    global1 = array<Struct_1, 1>();
    global0 = array<Struct_2, 13>();
    let var_2 = !select(!any(!var_1.xz), var_1.x, true);
    return global0[_wgslsmith_index_u32(select(4294967295u, arg_0.x << (~_wgslsmith_clamp_u32(firstTrailingBit(33890u), arg_0.x >> (arg_0.x % 32u), ~arg_0.x) % 32u), (!any(vec4<bool>(true, false, var_1.x, var_1.x)) && (any(var_1.zx) && true)) & !(~u_input.a.x >= firstTrailingBit(u_input.a.x))), 13u)];
}

fn func_1() -> vec3<bool> {
    global1 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_f_op_f32(select(-854f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(999f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1425f, 154f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(222f))))) <= -233f;
    var var_1 = func_4(vec2<u32>(0u, ~firstTrailingBit(func_2(Struct_4(vec4<f32>(-590f, -790f, -562f, -341f), Struct_3(vec2<bool>(false, var_0)), vec3<u32>(0u, 24544u, 1u), 7571u, false), 41519u))), vec2<i32>(~u_input.a.x, 1i));
    global1 = array<Struct_1, 1>();
    global0 = array<Struct_2, 13>();
    return vec3<bool>(!all(select(select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(true, var_0, var_1.c, true), false), select(vec4<bool>(true, var_1.c, true, true), vec4<bool>(var_1.c, var_0, true, var_0), var_1.c), any(vec3<bool>(var_0, var_0, true)))), false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 43178i;
    var var_1 = vec4<bool>(false, select(true, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), vec2<u32>(27994u, 4294967295u)) > ~select(13776u, 27718u, true), all(func_1())), func_1().x, all(!vec4<bool>(1i < u_input.a.x, false, true, true)));
    var var_2 = _wgslsmith_f_op_f32(-460f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -494f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -576f))), _wgslsmith_f_op_f32(abs(1000f))));
    var var_3 = true;
    var var_4 = Struct_5(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(351f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(118f - 275f))), 300f, 245f), Struct_3(var_1.zy), vec3<u32>(firstTrailingBit(4294967295u), ~34399u, ~min(4294967295u, 17727u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(1u, 1u, 1u))), all(!select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, var_1.x), var_1.x))), -13082i, func_3(u_input.a.x, Struct_3(select(var_1.zz, var_1.wz, false)), func_3(~u_input.a.x, Struct_3(vec2<bool>(true, var_1.x)), func_3(-2147483647i, Struct_3(var_1.wy), -5680i, -1111f).x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1079f), _wgslsmith_div_f32(-1465f, -173f))) | (_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x) >> (vec3<u32>(13174u, 127575u, 0u) % vec3<u32>(32u)), vec3<i32>(-2147483647i, -28400i, -15994i) ^ vec3<i32>(13261i, 33376i, u_input.a.x), vec3<i32>(35162i, 39212i, u_input.a.x)) & select(firstLeadingBit(vec3<i32>(u_input.a.x, 1i, u_input.a.x)), min(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(-2147483647i, -39014i, u_input.a.x)), !var_1.x)));
    var_3 = true;
    var var_5 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-var_4.a.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.a.x - var_4.a.a.x) * -3274f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_4.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, -608f, var_4.a.a.x, var_4.a.a.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, var_4.a.a.x, var_4.a.a.x, 227f))))), _wgslsmith_mult_vec4_u32(abs(~(~vec4<u32>(var_4.a.d, var_4.a.c.x, 37077u, 36971u))), vec4<u32>(59197u, var_4.a.c.x, 56409u, var_4.a.d)), max(var_4.a.c.x, ~abs(var_4.a.c.x)));
    let var_6 = _wgslsmith_f_op_f32(ceil(var_5.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(reverseBits(-(~vec4<i32>(-11496i, 44310i, 2147483647i, var_4.c.x))), select(firstLeadingBit(vec4<i32>(-29768i, u_input.a.x, 0i, var_4.b)), min(_wgslsmith_add_vec4_i32(vec4<i32>(-17295i, 1i, var_4.b, -19086i), vec4<i32>(var_4.c.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_4.b, var_4.b, -60771i), vec4<i32>(13638i, u_input.a.x, 14634i, -2147483647i))), select(!vec4<bool>(false, true, var_4.a.b.a.x, true), select(vec4<bool>(var_4.a.b.a.x, var_1.x, var_4.a.b.a.x, true), vec4<bool>(var_4.a.e, var_1.x, var_1.x, var_4.a.b.a.x), vec4<bool>(true, var_4.a.b.a.x, true, false)), !var_4.a.e)), vec4<bool>(!(u_input.a.x >= 43220i), func_1().x, 2147483647i < ~var_4.c.x, var_1.x)), 2147483647i, vec3<i32>(_wgslsmith_div_i32(-2147483647i, var_4.b), _wgslsmith_mod_i32(var_4.b | u_input.a.x, -95150i), -_wgslsmith_sub_i32(0i, u_input.a.x)) << (select(vec3<u32>(27461u, var_4.a.c.x, 2066u) & ~vec3<u32>(0u, var_4.a.c.x, var_5.c.x), vec3<u32>(var_4.a.d, ~var_4.a.d, max(var_4.a.c.x, var_4.a.c.x)), select(var_1.wwx, select(vec3<bool>(true, true, var_4.a.b.a.x), var_1.xwx, vec3<bool>(false, var_1.x, false)), func_1())) % vec3<u32>(32u)));
}

