struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 1u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec4<bool>) -> vec2<f32> {
    global1 = 4294967295u;
    global0 = arg_2.x;
    let var_0 = 1i;
    let var_1 = arg_1;
    global1 = ~1989u;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.yy - arg_1.b.d.a.yx) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xy) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2514f, arg_0.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: bool) -> u32 {
    global0 = arg_2 | !arg_2;
    var var_0 = vec3<u32>(4294967295u, _wgslsmith_dot_vec2_u32(~arg_0.b.a.xy, arg_0.b.a.zz), arg_0.b.a.x);
    let var_1 = vec2<u32>(firstTrailingBit(max(arg_0.b.a.x, _wgslsmith_dot_vec3_u32(arg_0.b.a, arg_0.b.a))), _wgslsmith_mod_u32(~1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(~var_0.x, u_input.a), ~arg_0.b.a.x)));
    global1 = ~select(~_wgslsmith_dot_vec4_u32(max(vec4<u32>(2677u, arg_0.b.a.x, var_1.x, 49480u), vec4<u32>(var_0.x, var_0.x, 4294967295u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(71823u, u_input.a, u_input.a, 46920u), vec4<u32>(28713u, u_input.a, var_0.x, 18090u))), ~(~60982u), arg_2);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-706f)) + -1060f);
    return 9730u;
}

fn func_2() -> f32 {
    global0 = true;
    let var_0 = Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 79781u, func_4(Struct_3(-55938i, Struct_2(vec3<u32>(1u, 31831u, u_input.a), Struct_1(vec3<f32>(1603f, -208f, 1252f), 235f, -1274f), -271f, Struct_1(vec3<f32>(1060f, 475f, -2345f), -923f, -1000f))), _wgslsmith_f_op_vec2_f32(func_3(vec4<f32>(591f, 852f, 228f, -1061f), Struct_3(0i, Struct_2(vec3<u32>(29421u, 53848u, 0u), Struct_1(vec3<f32>(1618f, -1376f, 346f), 1943f, 648f), 1001f, Struct_1(vec3<f32>(-770f, -614f, -1479f), 420f, 1368f))), vec4<bool>(true, false, false, false))), select(true, true, true))), ~(~(~vec3<u32>(47658u, 1u, 2933u)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(517f, -1114f, 793f) - vec3<f32>(-578f, -1685f, 238f)) - vec3<f32>(2057f, 875f, 216f)) - vec3<f32>(-1077f, -171f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(954f + -136f))), -1682f), -2652f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(139f)))), _wgslsmith_f_op_f32(-1000f + 608f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_div_f32(598f, 724f)))), 780f, -1698f));
    global1 = ~_wgslsmith_sub_u32(0u, _wgslsmith_add_u32(u_input.a, var_0.a.x >> (40631u % 32u))) >> (~var_0.a.x % 32u);
    global1 = _wgslsmith_sub_u32(~var_0.a.x, var_0.a.x);
    global0 = 0u != u_input.a;
    return var_0.d.b;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global1 = u_input.a;
    return Struct_2(max(~vec3<u32>(4294967295u, u_input.a, 4294967295u) | vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, u_input.a)), ~u_input.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a | u_input.a, ~u_input.a, ~u_input.a), ~vec3<u32>(u_input.a, 0u, 119887u) >> (~vec3<u32>(51202u, u_input.a, u_input.a) % vec3<u32>(32u)))), arg_2, arg_1.c, Struct_1(arg_1.a, arg_2.a.x, arg_1.c));
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = func_5(all(vec4<bool>(arg_0.x, _wgslsmith_f_op_f32(func_2()) < _wgslsmith_f_op_f32(round(-1403f)), false, arg_0.x)), Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(150f, _wgslsmith_f_op_f32(459f * 844f), _wgslsmith_f_op_f32(-130f - -1333f)))), -482f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-988f, 583f) - _wgslsmith_f_op_f32(f32(-1f) * -527f)))), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-147f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -1242f)))), -598f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1080f, 104f)) + _wgslsmith_f_op_f32(abs(-992f)))));
    global1 = ~(~u_input.a);
    let var_1 = select(u_input.b, vec4<i32>(~max(u_input.b.x, u_input.b.x), 38069i, (2147483647i ^ u_input.b.x) << (0u % 32u), ~(-1i)) | ~vec4<i32>(u_input.b.x, ~u_input.b.x, 27987i, reverseBits(u_input.b.x)), !arg_0.x || (-1197f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a.x * 191f) + var_0.c)));
    global0 = -(~_wgslsmith_sub_i32(countOneBits(65543i), u_input.b.x)) < 25081i;
    let var_2 = var_0.a.x;
    return !vec2<bool>(any(select(vec3<bool>(false, true, arg_0.x), arg_0, select(arg_0, arg_0, vec3<bool>(arg_0.x, false, arg_0.x)))), false);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    global0 = all(vec4<bool>(arg_0.x, true, false, any(select(select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, false, arg_0.x, true)))));
    let var_0 = func_5(false, func_5(false | select(true, true, arg_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(func_5(arg_0.x, arg_3, arg_3).b.a - vec3<f32>(arg_2.x, arg_3.a.x, -262f)), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1626f), _wgslsmith_f_op_f32(-arg_3.a.x)))), Struct_1(func_5(true, Struct_1(vec3<f32>(1422f, arg_2.x, arg_2.x), arg_2.x, -659f), func_5(true, arg_3, arg_3).b).b.a, arg_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(309f * 963f), _wgslsmith_div_f32(arg_2.x, -539f))))).b, Struct_1(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + arg_2.x), 521f))), _wgslsmith_f_op_f32(-arg_2.x)));
    global0 = all(!vec3<bool>(arg_0.x, func_1(vec3<bool>(arg_0.x, arg_0.x, false)).x && !arg_0.x, all(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -382f))))));
    global0 = arg_0.x;
    return _wgslsmith_div_i32(u_input.b.x, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(abs(-(~(-7773i))), i32(-1i) * -1i, min(u_input.b.x ^ u_input.b.x, _wgslsmith_clamp_i32(~35111i, 2147483647i, u_input.b.x)), func_6(select(func_1(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 63050u, u_input.a, u_input.a)), vec4<u32>(max(4294967295u, 0u), 26719u, u_input.a >> (u_input.a % 32u), ~u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-438f, 1556f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(669f, 843f)) * _wgslsmith_f_op_f32(f32(-1f) * -932f)), _wgslsmith_f_op_f32(min(-340f, 2533f)), 872f), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-442f, 651f, 962f), vec3<f32>(149f, -816f, 320f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1421f, 2138f, 868f)), true)), 661f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2269f, 494f), _wgslsmith_f_op_f32(f32(-1f) * -192f))))));
    let var_1 = Struct_2(~countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a)) << ((firstLeadingBit(vec3<u32>(13302u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 47711u, u_input.a), vec3<u32>(u_input.a, u_input.a, 15786u)) % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1293f, -2092f, 1565f)), 293f, _wgslsmith_f_op_f32(-274f * _wgslsmith_f_op_f32(f32(-1f) * -2081f))), -1790f, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1239f, 504f, -100f), vec3<f32>(-285f, -1566f, -1356f))))) + vec3<f32>(-753f, _wgslsmith_f_op_f32(round(-765f)), _wgslsmith_f_op_f32(sign(1902f)))), 250f, 395f));
    global0 = select(_wgslsmith_f_op_f32(f32(-1f) * -623f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1037f, 1615f, -1271f, -889f))), Struct_3(u_input.b.x, Struct_2(var_1.a, var_1.d, var_1.d.c, var_1.d)), vec4<bool>(true, true, true, true))).x - _wgslsmith_f_op_f32(-var_1.b.c)), true, true);
    var var_2 = func_5(~u_input.a < var_1.a.x, var_1.d, func_5(true, var_1.d, var_1.b).b);
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(-12970i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(518f, -948f) + var_1.b.a.zx) * _wgslsmith_f_op_vec2_f32(vec2<f32>(224f, var_2.d.a.x) - var_1.b.a.zy)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.d.b, var_2.c), var_2.b.a.yx)))), true))), firstLeadingBit(min(u_input.b.x << (u_input.a % 32u), ~u_input.b.x)), ~_wgslsmith_mod_i32(firstTrailingBit(var_0.x), u_input.b.x));
}

