struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: f32 = -518f;

var<private> global3: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> i32 {
    global3 = array<vec3<bool>, 29>();
    var var_0 = vec2<bool>(arg_0.b.x, arg_0.b.x);
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(arg_0.a.x, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.c, 1u, u_input.c, 0u), vec4<u32>(u_input.a.x, 4294967295u, arg_0.a.x, 38734u), false), _wgslsmith_mult_vec4_u32(vec4<u32>(14097u, 8399u, 23374u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, arg_0.a.x, u_input.c)) >> (~vec4<u32>(arg_0.a.x, arg_2.a.x, arg_2.a.x, arg_0.a.x) % vec4<u32>(32u)))), 108820u, ~8073u, 1u);
    global2 = -275f;
    return countOneBits(u_input.d.x);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    global3 = array<vec3<bool>, 29>();
    var var_0 = countOneBits(_wgslsmith_mod_i32(2147483647i, func_3(Struct_2(_wgslsmith_clamp_vec3_u32(arg_0.a, vec3<u32>(73481u, u_input.e, 83868u), arg_0.a), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_0.c, false), arg_1.c.x & true, Struct_1(arg_0.d.a, vec4<f32>(arg_2.x, arg_1.b.x, -692f, -284f), vec4<bool>(arg_0.d.d, false, false, true), arg_0.d.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1294f, arg_0.d.a.x, 1000f) * arg_0.d.b.xxw)), arg_0)));
    let var_1 = all(vec2<bool>(true, false));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_1.b.x, arg_0.d.a.x) - vec4<f32>(-501f, 361f, arg_1.b.x, -1166f))), vec4<f32>(_wgslsmith_f_op_f32(floor(-358f)), -1614f, arg_1.b.x, _wgslsmith_f_op_f32(-arg_0.d.a.x)), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.d.a)), select(select(select(vec4<bool>(arg_0.d.c.x, true, false, false), select(vec4<bool>(arg_0.d.d, arg_1.c.x, arg_0.d.d, arg_0.c), vec4<bool>(false, arg_1.c.x, arg_0.d.d, false), false), arg_0.d.c.x & true), !vec4<bool>(arg_1.c.x, arg_1.d, var_1, false), !arg_1.c), !arg_1.c, var_1), false);
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(955f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -312f) * _wgslsmith_f_op_f32(-arg_2.x)), !(arg_1.a.x > 310f))))));
    return arg_0;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    let var_0 = arg_2;
    global1 = array<vec2<bool>, 17>();
    var var_1 = var_0.b;
    global0 = ~u_input.d;
    var_1 = !(!vec4<bool>(false, arg_2.c, min(35754u, var_0.a.x) > arg_2.a.x, true));
    return _wgslsmith_f_op_f32(min(1653f, var_0.d.a.x));
}

fn func_1() -> vec4<f32> {
    let var_0 = u_input.e;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(376f * 1107f)), -1252f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.d.yyx >> (vec3<u32>(103849u, 0u, u_input.e) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1038f, -1558f))), func_2(Struct_2(vec3<u32>(54793u, 63312u, u_input.c), vec4<bool>(true, false, false, false), true, Struct_1(vec4<f32>(-1000f, -1443f, 225f, 969f), vec4<f32>(1078f, -1448f, -1072f, -557f), vec4<bool>(false, false, false, false), true)), Struct_1(vec4<f32>(-942f, -898f, -1000f, -1217f), vec4<f32>(725f, 545f, -153f, -456f), vec4<bool>(false, false, false, true), true), vec3<f32>(-543f, -179f, 1459f)), Struct_1(vec4<f32>(-126f, -430f, -1142f, 355f), vec4<f32>(-1000f, -202f, 1032f, 148f), vec4<bool>(true, false, false, false), true)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -300f)))), _wgslsmith_f_op_f32(-885f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))));
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(~(~vec3<u32>(0u, _wgslsmith_add_u32(u_input.e, 0u), reverseBits(4294967295u))), select(arg_0.c, arg_0.c, select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.c.x, arg_0.c.x, false, true), select(arg_0.c, vec4<bool>(true, arg_0.c.x, false, false), vec4<bool>(arg_0.d, arg_0.d, false, arg_0.c.x))), vec4<bool>(true, func_2(Struct_2(vec3<u32>(u_input.c, u_input.e, u_input.c), vec4<bool>(arg_0.d, false, false, true), arg_0.d, arg_0), arg_0, vec3<f32>(arg_0.a.x, -871f, -671f)).d.d, false, arg_0.c.x == true), _wgslsmith_f_op_f32(-672f - -2280f) != arg_0.a.x)), arg_0.d, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0.b, vec4<f32>(arg_0.b.x, -214f, arg_0.a.x, arg_0.a.x))) + vec4<f32>(arg_0.b.x, arg_0.a.x, arg_0.b.x, arg_0.b.x))), arg_0.b, vec4<bool>(true, true, true, true), arg_0.d));
    let var_1 = var_0.d.a.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * 1000f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(312f + 915f), -2521f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a.x), arg_0.a.x)), all(!select(vec3<bool>(var_0.d.d, arg_0.d, true), var_0.d.c.xwx, arg_0.d)))), -885f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(u_input.d.yzy, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.b.x, var_0.d.b.x))), Struct_2(vec3<u32>(var_0.a.x, 52563u, 4294967295u), vec4<bool>(true, false, arg_0.c.x, arg_0.d), false, Struct_1(var_0.d.a, vec4<f32>(var_0.d.b.x, 212f, -925f, var_0.d.a.x), var_0.d.c, true)), func_2(Struct_2(var_0.a, var_0.d.c, var_0.b.x, Struct_1(var_0.d.a, vec4<f32>(-1239f, var_0.d.a.x, var_0.d.a.x, -1011f), var_0.d.c, false)), Struct_1(var_0.d.b, vec4<f32>(arg_0.b.x, arg_0.b.x, var_0.d.a.x, -324f), var_0.d.c, arg_0.d), arg_0.b.wzx).d)), -490f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1()).x));
    global2 = var_2.x;
    var_0 = Struct_2(vec3<u32>(_wgslsmith_mult_u32(~48171u, ~u_input.a.x) >> (firstTrailingBit(49430u) % 32u), _wgslsmith_mult_u32(firstTrailingBit(4294967295u), 1u), 69044u), arg_0.c, arg_0.d, var_0.d);
    return 2480f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -606f;
    global2 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_5(Struct_1(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-628f, 1037f, -1000f, 512f), vec4<f32>(-1209f, -1252f, 762f, -552f)) + _wgslsmith_f_op_vec4_f32(func_1())), vec4<bool>(true, true, true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_2(Struct_2(vec3<u32>(0u, u_input.c, u_input.a.x), vec4<bool>(true, true, false, true), true, Struct_1(vec4<f32>(-1208f, 102f, 1684f, -427f), vec4<f32>(1233f, -1000f, -1850f, -1000f), vec4<bool>(true, true, true, false), false)), Struct_1(vec4<f32>(617f, 1000f, -1158f, -3014f), vec4<f32>(1326f, 879f, 1450f, -1000f), vec4<bool>(true, false, true, true), false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1554f, -515f, -310f) + vec3<f32>(1044f, 513f, -822f))).a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1718f, 1f, _wgslsmith_f_op_f32(-190f + _wgslsmith_f_op_f32(1332f + -363f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) + _wgslsmith_f_op_f32(min(-1077f, -232f))))), global0.zy);
}

