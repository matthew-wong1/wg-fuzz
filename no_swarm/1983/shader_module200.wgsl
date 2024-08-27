struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: bool = true;

var<private> global2: u32 = 1u;

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_2(Struct_1(0i, true), Struct_1(i32(-2147483648), false), Struct_1(1i, false), -313f), Struct_2(Struct_1(0i, true), Struct_1(2147483647i, true), Struct_1(-1i, false), -1000f), vec3<f32>(-1238f, -1000f, -745f), Struct_1(20109i, true), false), Struct_3(Struct_2(Struct_1(-47332i, false), Struct_1(21162i, false), Struct_1(0i, false), 2308f), Struct_2(Struct_1(2147483647i, true), Struct_1(0i, false), Struct_1(9682i, false), -217f), vec3<f32>(-349f, 147f, -1362f), Struct_1(0i, false), false), Struct_3(Struct_2(Struct_1(-1i, true), Struct_1(0i, false), Struct_1(11332i, false), 884f), Struct_2(Struct_1(1i, true), Struct_1(1i, false), Struct_1(-8743i, true), -1064f), vec3<f32>(-193f, -125f, -168f), Struct_1(-17183i, false), true), Struct_3(Struct_2(Struct_1(2147483647i, true), Struct_1(-1i, false), Struct_1(26180i, true), -1531f), Struct_2(Struct_1(-42638i, false), Struct_1(5656i, false), Struct_1(-27954i, false), 926f), vec3<f32>(199f, -1325f, -1116f), Struct_1(-14226i, true), false), Struct_3(Struct_2(Struct_1(-17494i, false), Struct_1(2147483647i, true), Struct_1(-10803i, false), 320f), Struct_2(Struct_1(0i, true), Struct_1(-70371i, false), Struct_1(8744i, true), -1594f), vec3<f32>(-136f, -576f, 1189f), Struct_1(-62303i, false), true), Struct_3(Struct_2(Struct_1(2147483647i, true), Struct_1(38211i, true), Struct_1(40293i, false), -1231f), Struct_2(Struct_1(8596i, true), Struct_1(1i, true), Struct_1(1174i, true), 437f), vec3<f32>(127f, -351f, -1000f), Struct_1(0i, false), false), Struct_3(Struct_2(Struct_1(13540i, true), Struct_1(-1i, true), Struct_1(22129i, false), -1000f), Struct_2(Struct_1(i32(-2147483648), true), Struct_1(23060i, false), Struct_1(1i, true), 2389f), vec3<f32>(-371f, 175f, 187f), Struct_1(23213i, true), false), Struct_3(Struct_2(Struct_1(-1i, false), Struct_1(77982i, false), Struct_1(35088i, false), 802f), Struct_2(Struct_1(17687i, false), Struct_1(-1i, false), Struct_1(85424i, true), 1756f), vec3<f32>(-229f, -269f, -199f), Struct_1(16249i, true), false), Struct_3(Struct_2(Struct_1(1i, true), Struct_1(2147483647i, true), Struct_1(41403i, true), 1032f), Struct_2(Struct_1(-7569i, true), Struct_1(1i, false), Struct_1(-1i, false), 1095f), vec3<f32>(-587f, -644f, -777f), Struct_1(-1i, false), true), Struct_3(Struct_2(Struct_1(-9261i, true), Struct_1(1i, false), Struct_1(38595i, false), 962f), Struct_2(Struct_1(i32(-2147483648), true), Struct_1(-5954i, false), Struct_1(1i, false), -606f), vec3<f32>(-534f, 1295f, 1561f), Struct_1(-51465i, true), false), Struct_3(Struct_2(Struct_1(-4073i, false), Struct_1(i32(-2147483648), false), Struct_1(2147483647i, true), 1467f), Struct_2(Struct_1(-1i, true), Struct_1(0i, false), Struct_1(0i, true), 366f), vec3<f32>(207f, -241f, 174f), Struct_1(0i, true), true), Struct_3(Struct_2(Struct_1(40740i, true), Struct_1(0i, false), Struct_1(-15080i, true), -679f), Struct_2(Struct_1(55954i, true), Struct_1(1880i, false), Struct_1(2147483647i, false), 525f), vec3<f32>(-1140f, -1489f, -568f), Struct_1(2147483647i, true), false), Struct_3(Struct_2(Struct_1(1i, false), Struct_1(0i, true), Struct_1(1i, true), 497f), Struct_2(Struct_1(5984i, true), Struct_1(0i, true), Struct_1(0i, false), -148f), vec3<f32>(1157f, 562f, -1000f), Struct_1(-1i, false), true), Struct_3(Struct_2(Struct_1(-6806i, false), Struct_1(2147483647i, false), Struct_1(i32(-2147483648), false), -136f), Struct_2(Struct_1(-1i, false), Struct_1(1i, true), Struct_1(0i, true), -693f), vec3<f32>(-137f, 1000f, -1204f), Struct_1(2147483647i, false), false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    var var_0 = ~_wgslsmith_add_i32(-u_input.b.x, (u_input.b.x | u_input.b.x) | firstTrailingBit(~29639i));
    let var_1 = Struct_4(vec4<u32>(44259u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, arg_0), select(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(14394u, u_input.a), vec2<bool>(false, false))), ~select(u_input.a, 4294967295u, false), ~1u) ^ max(select(vec4<u32>(u_input.a, 43699u, 1u, 69224u), ~vec4<u32>(1u, 4294967295u, u_input.a, u_input.a), true), ~(~vec4<u32>(0u, 4294967295u, 0u, 47594u))), Struct_2(Struct_1(u_input.b.x, all(vec4<bool>(true, true, true, true))), Struct_1(abs(_wgslsmith_mod_i32(0i, u_input.b.x)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), true))), Struct_1(_wgslsmith_clamp_i32(-u_input.b.x, 24240i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -4034i), u_input.b.zx)), all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1884f), _wgslsmith_div_f32(var_1.b.d, var_1.b.d), -422f, _wgslsmith_f_op_f32(step(global0.x, -329f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.d, 367f, -1788f, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(546f, -2178f, -636f, 3359f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-501f, -116f, global0.x, global0.x))), any(vec2<bool>(var_1.b.c.b, var_1.b.a.b))))), select(vec4<bool>(!var_1.b.c.b, false, true, false), !(!vec4<bool>(var_1.b.c.b, false, var_1.b.a.b, false)), !vec4<bool>(var_1.b.a.b, var_1.b.c.b, var_1.b.a.b, var_1.b.b.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-809f, -687f, global0.x, global0.x), vec4<f32>(-1487f, 242f, -623f, -887f), var_1.b.a.b))))))));
    let var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(min(0u, _wgslsmith_div_u32(arg_0, 0u)), countOneBits(var_1.a.x), 0u, ~firstTrailingBit(var_1.a.x)), ~(~(~var_1.a))), var_1.a);
    global3 = array<Struct_3, 14>();
    return vec4<i32>(-1i) * -(-(~vec4<i32>(-2147483647i, -22828i, -1i, u_input.b.x)) << (vec4<u32>(countOneBits(602u), u_input.a, abs(30044u), _wgslsmith_clamp_u32(0u, arg_0, var_2)) % vec4<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: u32) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1245f, global0.x, 401f, -228f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1731f, 1833f, global0.x, -454f)))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(810f, global0.x, global0.x, 375f) - vec4<f32>(global0.x, global0.x, 213f, -1628f)))), !select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(true, true, false, arg_0), vec4<bool>(false, true, arg_0, false)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-164f + -1000f), global0.x, _wgslsmith_f_op_f32(ceil(-2523f)), _wgslsmith_f_op_f32(global0.x - 1987f)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - 262f) * global0.x), -1234f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(791f - _wgslsmith_f_op_f32(f32(-1f) * -714f))), _wgslsmith_f_op_f32(-global0.x)));
    let var_0 = _wgslsmith_dot_vec4_i32(-(~(~func_3(arg_1))), ~(-vec4<i32>(-2147483647i, _wgslsmith_add_i32(0i, 2147483647i), ~u_input.b.x, ~11897i)));
    global3 = array<Struct_3, 14>();
    global2 = ~_wgslsmith_mult_u32(u_input.a, 1u);
    global3 = array<Struct_3, 14>();
    return 329f;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = 104743u;
    var var_1 = var_0 << (0u % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-607f, _wgslsmith_f_op_f32(f32(-1f) * -100f), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(func_2(true, 39774u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-442f, arg_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(select(-170f, -414f, true)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, global0.x, global0.x, arg_0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1107f, -1427f, _wgslsmith_f_op_f32(f32(-1f) * -762f), _wgslsmith_f_op_f32(abs(global0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1146f, global0.x, 1348f, arg_0.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, arg_0.x, global0.x, -344f)))))));
    let var_3 = ((i32(-1i) * -39600i) | u_input.b.x) >> (4294967295u % 32u);
    var var_4 = !vec3<bool>(any(vec2<bool>(true, true)), firstTrailingBit(32568u | u_input.a) > 80957u, true);
    return -960f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    global1 = false;
    global0 = vec4<f32>(_wgslsmith_div_f32(-1819f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 963f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(1586f, -933f)))))), global0.x, _wgslsmith_f_op_f32(-global0.x), global0.x);
    global3 = array<Struct_3, 14>();
    var var_0 = select(vec4<bool>(false, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), true || any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), true), vec4<bool>(any(vec2<bool>(true, true)), select(false, firstLeadingBit(u_input.b.x) >= -u_input.b.x, false), all(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, true)), true), vec4<bool>(min(u_input.b.x, u_input.b.x) <= -31994i, true, true, true));
    global2 = _wgslsmith_div_u32(u_input.a, ~(~(51222u ^ u_input.a)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(562f, global0.x))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(700f, _wgslsmith_f_op_f32(exp2(global0.x)))))), -270f, _wgslsmith_f_op_f32(f32(-1f) * -832f), 937f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.www, var_1.xyw)))))), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(global0.x * var_1.x), -324f));
}

