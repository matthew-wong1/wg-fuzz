struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec3<u32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(0i, 4294967295u)), Struct_2(Struct_1(34901i, 1364u)), Struct_2(Struct_1(i32(-2147483648), 0u)), Struct_2(Struct_1(728i, 12197u)), Struct_2(Struct_1(-50237i, 46673u)), Struct_2(Struct_1(2147483647i, 4294967295u)), Struct_2(Struct_1(0i, 47771u)), Struct_2(Struct_1(38375i, 14779u)), Struct_2(Struct_1(26109i, 1u)), Struct_2(Struct_1(4828i, 8695u)), Struct_2(Struct_1(i32(-2147483648), 4294967295u)), Struct_2(Struct_1(11049i, 42194u)), Struct_2(Struct_1(i32(-2147483648), 40905u)), Struct_2(Struct_1(-1i, 4776u)), Struct_2(Struct_1(i32(-2147483648), 4294967295u)), Struct_2(Struct_1(-1i, 710u)), Struct_2(Struct_1(2147483647i, 12842u)), Struct_2(Struct_1(53192i, 4294967295u)), Struct_2(Struct_1(1i, 67410u)), Struct_2(Struct_1(-28908i, 4294967295u)), Struct_2(Struct_1(46979i, 40812u)), Struct_2(Struct_1(-22333i, 4294967295u)), Struct_2(Struct_1(-2548i, 66897u)), Struct_2(Struct_1(0i, 0u)), Struct_2(Struct_1(-55509i, 4294967295u)), Struct_2(Struct_1(i32(-2147483648), 26137u)), Struct_2(Struct_1(22767i, 1u)), Struct_2(Struct_1(2147483647i, 0u)), Struct_2(Struct_1(11978i, 12790u)));

var<private> global1: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -602f, arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(952f, -1312f, arg_0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1000f))) + vec3<f32>(-1442f, arg_0, arg_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 814f, arg_0), vec3<f32>(arg_0, 384f, arg_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(108f, arg_0, arg_0))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, arg_0, -510f))), vec3<f32>(arg_0, arg_0, arg_0), true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1020f, arg_0, arg_0) - vec3<f32>(arg_0, -1000f, arg_0)))))));
    let var_1 = Struct_5(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(45225u, 4294967295u, u_input.b.x) >> (vec3<u32>(20636u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), u_input.b.xzy) >> (min(u_input.b.yzy, u_input.b.ywz) % vec3<u32>(32u)), vec3<u32>(~(~38713u), 1u, ~_wgslsmith_div_u32(5641u, 1u))), all(vec2<bool>(false, true)) & (firstLeadingBit(_wgslsmith_sub_i32(1i, u_input.d.x)) >= -_wgslsmith_mod_i32(u_input.d.x, u_input.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1461f, -460f, -2088f, 1637f)) * vec4<f32>(arg_0, arg_0, 147f, 142f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2190f, 437f, arg_0, var_0.x))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, arg_0, -387f, arg_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(665f, -962f, -1648f, var_0.x) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 232f, var_0.x, 1488f), vec4<f32>(arg_0, arg_0, -146f, arg_0))), true && (u_input.a.x == 104724u)))), u_input.d.x, 39066u);
    global0 = array<Struct_2, 29>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-var_1.c);
    global0 = array<Struct_2, 29>();
    return var_1.b;
}

fn func_2(arg_0: Struct_5) -> Struct_3 {
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(arg_0.a & _wgslsmith_dot_vec4_u32(abs(u_input.b), vec4<u32>(u_input.b.x, 1u, ~arg_0.a, u_input.b.x)), 29u)], true);
    var var_1 = vec2<bool>(true, !func_3(_wgslsmith_f_op_f32(select(arg_0.c.x, 624f, var_0.b))) | all(select(select(vec3<bool>(false, arg_0.b, true), vec3<bool>(true, var_0.b, arg_0.b), false), vec3<bool>(false, true, arg_0.b), select(vec3<bool>(false, false, var_0.b), vec3<bool>(arg_0.b, arg_0.b, var_0.b), vec3<bool>(true, arg_0.b, var_0.b)))));
    global0 = array<Struct_2, 29>();
    var var_2 = var_0;
    var var_3 = arg_0.d;
    return Struct_3(var_2.a, false);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_2 {
    global1 = arg_2.a & true;
    let var_0 = func_2(Struct_5(13346u, u_input.c < u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-245f, arg_2.d.x, 1060f, arg_2.c), vec4<f32>(121f, arg_2.c, -334f, arg_2.b), select(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a), vec4<bool>(true, arg_2.a, arg_2.a, arg_2.a), true))) + vec4<f32>(arg_0.x, 861f, -376f, 151f)), abs(u_input.d.x), min(u_input.a.x, ~abs(u_input.b.x))));
    global1 = !(!(!(!arg_2.a)));
    global1 = !(!(2422f >= _wgslsmith_f_op_f32(round(302f))));
    var var_1 = firstLeadingBit(~u_input.a);
    return func_2(Struct_5(17228u, false, arg_2.d, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.a.a.a, u_input.d.x, arg_1.x), min(vec3<i32>(2147483647i, arg_1.x, u_input.c) ^ u_input.d.zzz, u_input.d.yyw)), arg_2.e.x)).a;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>, arg_3: bool) -> f32 {
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(473f, -1000f) - vec2<f32>(1179f, 186f)))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2095f, 548f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1717f, -613f), vec2<f32>(446f, -610f), arg_3)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(210f, -971f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(962f, 325f)))), -355f));
    global0 = array<Struct_2, 29>();
    let var_1 = func_2(Struct_5(_wgslsmith_mult_u32(24605u, arg_0.a.b), false, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(270f, _wgslsmith_f_op_f32(-2812f * -812f), var_0.x, _wgslsmith_f_op_f32(max(var_0.x, -155f))))), countOneBits(1i), _wgslsmith_sub_u32(4294967295u, 4294967295u)));
    return -469f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 29>();
    global0 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(368f)) * _wgslsmith_f_op_f32(trunc(-141f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1754f, 492f)) * _wgslsmith_f_op_f32(f32(-1f) * -1279f)), _wgslsmith_f_op_f32(func_4(func_1(vec3<f32>(-1935f, 562f, 128f), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 1913i), Struct_4(false, 1311f, 236f, vec4<f32>(-909f, 1038f, -1067f, 428f), u_input.b.wyx)), ~u_input.b.x, u_input.d.zxz, u_input.a.x < u_input.a.x))))));
    global0 = array<Struct_2, 29>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mod_u32(countOneBits(1u), ~u_input.b.x)) >> ((1u & reverseBits(u_input.a.x)) % 32u), 29u)];
    global0 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(25219u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, 1798f, -1328f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(128f, 288f, 1084f, var_0.x)))))) * vec4<f32>(-1105f, _wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(trunc(-1580f)))), u_input.d, reverseBits(-33892i));
}

