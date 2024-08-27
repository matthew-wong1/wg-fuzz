struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 16147u;

var<private> global1: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(11936i, -1i, -9248i), vec3<i32>(i32(-2147483648), -732i, -25343i), vec3<i32>(-1i, -1i, -53156i), vec3<i32>(95276i, 1i, -1735i), vec3<i32>(1i, -23096i, -1i), vec3<i32>(-9806i, 1495i, 0i), vec3<i32>(-70993i, -2975i, 9879i), vec3<i32>(1i, 2139i, -1i), vec3<i32>(0i, -5751i, -15584i), vec3<i32>(0i, 35482i, -1i), vec3<i32>(-16099i, -14346i, 49910i), vec3<i32>(17789i, 48718i, 2147483647i), vec3<i32>(2147483647i, 59984i, 25i), vec3<i32>(-1i, 13151i, 2147483647i), vec3<i32>(-1i, 55786i, -60069i), vec3<i32>(-13869i, 1i, 57012i), vec3<i32>(-10483i, 1i, -16539i), vec3<i32>(-1i, 60646i, -69721i), vec3<i32>(i32(-2147483648), -5897i, 2147483647i), vec3<i32>(-1i, -1i, 23211i), vec3<i32>(-30305i, i32(-2147483648), -9776i), vec3<i32>(1i, 48669i, 26349i), vec3<i32>(29351i, -53839i, i32(-2147483648)), vec3<i32>(1i, -3872i, 23408i), vec3<i32>(-12273i, -1i, -35780i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: u32) -> vec3<f32> {
    let var_0 = firstTrailingBit(~u_input.a);
    return _wgslsmith_f_op_vec3_f32(arg_1.b.e - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-949f, _wgslsmith_f_op_f32(min(1698f, _wgslsmith_f_op_f32(sign(-1021f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), arg_1.b.d.x)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    global0 = arg_0.x;
    global1 = array<vec3<i32>, 25>();
    var var_0 = Struct_1(vec3<f32>(1115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_2)), _wgslsmith_f_op_f32(arg_2 * arg_2)))), _wgslsmith_f_op_f32(-arg_2)), ~arg_0.x, !all(vec4<bool>(true, true, arg_3.x, !arg_3.x)), vec2<f32>(-1531f, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(arg_2 - 1371f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -102f, arg_2) + vec3<f32>(-1062f, -499f, 1262f)) * _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(1u, u_input.e, arg_0.x, 4294967295u), Struct_2(arg_0.x, Struct_1(vec3<f32>(arg_2, arg_2, -550f), 0u, arg_3.x, vec2<f32>(arg_2, -1492f), vec3<f32>(-956f, 3234f, -1730f)), vec4<bool>(arg_3.x, arg_3.x, true, true)), vec2<f32>(arg_2, arg_2), u_input.e))))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(countOneBits(vec4<u32>(u_input.e, 25226u, arg_0.x, u_input.e)), Struct_2(arg_0.x, Struct_1(vec3<f32>(arg_2, 1000f, 994f), 22670u, false, vec2<f32>(arg_2, arg_2), vec3<f32>(arg_2, arg_2, 1077f)), vec4<bool>(true, true, arg_3.x, true)), vec2<f32>(-855f, 1627f), _wgslsmith_dot_vec2_u32(arg_0, arg_0))).x, arg_2, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-1060f + arg_2))), !vec3<bool>(any(vec3<bool>(arg_3.x, true, arg_3.x)), true, arg_3.x))));
    let var_1 = vec3<u32>(reverseBits(~u_input.e), ~u_input.e, 24766u);
    global0 = max(~(~42430u), ~0u);
    return arg_2;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_div_i32(5314i, _wgslsmith_mult_i32(~(u_input.b >> (~u_input.e % 32u)), ~17449i));
    var var_1 = vec4<f32>(287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(465f, -260f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(633f, _wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.e, u_input.e), vec2<i32>(-2147483647i, u_input.c), -632f, vec2<bool>(false, false))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-340f - -1864f) + 1629f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1265f, -1000f))))));
    let var_2 = Struct_2(u_input.e, Struct_1(_wgslsmith_f_op_vec3_f32(var_1.xxw - vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(min(-2075f, -466f)), var_1.x)), ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, u_input.e, 1320u, u_input.e)), ~vec4<u32>(1u, 57272u, 58848u, u_input.e)), true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1569f + var_1.x)), var_1.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.xxw), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1230f, var_1.x)), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(u_input.e, 13720u, 51685u, 28650u), Struct_2(4294967295u, Struct_1(vec3<f32>(1158f, var_1.x, var_1.x), 23000u, true, vec2<f32>(var_1.x, -683f), var_1.zwy), vec4<bool>(true, false, false, true)), var_1.zx, u_input.e)))))), !vec4<bool>(true, all(vec3<bool>(false, false, false)), !all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true))));
    var var_3 = any(select(vec4<bool>(any(var_2.c.xy), var_2.c.x, var_2.b.c, select(true, false, true)), !var_2.c, vec4<bool>(var_2.b.c, false && var_2.c.x, all(vec4<bool>(false, var_2.b.c, true, false)), any(var_2.c.wxx))));
    let var_4 = var_2;
    return ~_wgslsmith_sub_u32(1u << (_wgslsmith_sub_u32(var_4.b.b ^ var_4.b.b, var_4.a) % 32u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.e;
    global0 = abs(abs(~33671u));
    global1 = array<vec3<i32>, 25>();
    let var_0 = Struct_2(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.e, u_input.e) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e, u_input.e), vec3<u32>(5531u, u_input.e, u_input.e)) % 32u), func_1())), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(_wgslsmith_div_f32(-310f, 1233f), -690f, _wgslsmith_f_op_f32(floor(-241f)))), _wgslsmith_sub_u32(u_input.e, u_input.e), all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(186f + -796f) - _wgslsmith_f_op_f32(-1000f + -563f)), -395f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(689f + -700f) + -713f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-716f, 1433f)) + _wgslsmith_div_f32(-836f, -713f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1195f * -317f) - -845f))), !vec4<bool>(true, 2002i < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 0i), u_input.a.yw), false, any(vec4<bool>(true, true, true, true))));
    global0 = 0u;
    var var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 0i, -u_input.c, 2147483647i ^ u_input.a.x) | max(vec4<i32>(u_input.a.x, 0i, 40193i, u_input.b), vec4<i32>(u_input.c, -21131i, u_input.a.x, -14544i)), ~((vec4<i32>(u_input.b, 17177i, u_input.d, 1i) ^ vec4<i32>(u_input.a.x, u_input.c, u_input.b, -2147483647i)) >> (vec4<u32>(var_0.b.b, 9772u, 1u, 1u) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.e.x * _wgslsmith_f_op_f32(var_0.b.d.x * var_0.b.e.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.d) + _wgslsmith_f_op_vec2_f32(-var_1.d)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2376f, -1083f)))), vec2<bool>(any(var_0.c), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.b.a.x, -1435f)))))), max(-_wgslsmith_mult_i32(34375i, 1i), 2147483647i) & u_input.d);
}

