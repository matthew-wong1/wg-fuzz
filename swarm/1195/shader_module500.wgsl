struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = ~(~_wgslsmith_div_u32(0u, u_input.b));
    var var_1 = 309f <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1f))));
    global1 = array<Struct_4, 32>();
    global0 = 245f;
    let var_2 = arg_0.e;
    return !(!select(vec3<bool>(-644f >= arg_0.e.b.x, true, arg_0.e.a), vec3<bool>(true, var_2.a, arg_0.a.x), !select(vec3<bool>(arg_2.d, false, true), vec3<bool>(true, arg_0.e.a, arg_2.d), arg_2.a.x)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: f32) -> Struct_3 {
    global1 = array<Struct_4, 32>();
    var var_0 = !(!func_3(Struct_2(vec2<bool>(true, true), arg_3, _wgslsmith_f_op_f32(min(-184f, 579f)), true, Struct_1(false, vec2<f32>(arg_1.x, 1057f))), (vec2<i32>(u_input.c.x, u_input.c.x) & vec2<i32>(0i, u_input.c.x)) | -u_input.d.zy, Struct_2(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), -2536f, _wgslsmith_f_op_f32(abs(880f)), false, Struct_1(false, vec2<f32>(1674f, -390f)))));
    var var_1 = Struct_2(var_0.yz, -379f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(448f))), any(vec3<bool>(true, true, true)) & (_wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_f_op_f32(376f * _wgslsmith_f_op_f32(trunc(637f)))), Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, 1147f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_3))) - _wgslsmith_div_vec2_f32(arg_1.wy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-429f, -1117f))))));
    var var_2 = Struct_5(Struct_3(Struct_1(all(select(vec4<bool>(false, var_1.a.x, true, var_1.a.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, true, false, false))), arg_2.xx), true, vec3<bool>(select(!var_1.a.x, var_1.a.x | var_0.x, true), 0i > countOneBits(u_input.d.x), true), vec4<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(1102f, arg_1.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_3))), 1413f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1317f, arg_3))))), vec3<i32>(-14775i, _wgslsmith_dot_vec3_i32(vec3<i32>(-39562i, u_input.c.x, -1i), vec3<i32>(u_input.c.x, u_input.d.x, u_input.c.x)) & (u_input.c.x >> (arg_0 % 32u)), -u_input.c.x)), max(vec3<u32>(4294967295u, max(16419u >> (0u % 32u), ~1u), _wgslsmith_div_u32(arg_0 ^ 1u, 1u)), ~(vec3<u32>(u_input.a.x, u_input.b, 1u) | ~vec3<u32>(4294967295u, 61527u, 30588u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1024f, -1028f, var_1.b)), arg_1.zzx)));
    var_0 = vec3<bool>(func_3(Struct_2(vec2<bool>(any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_2.a.b), _wgslsmith_f_op_f32(-arg_3), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1405f, 1524f)), -726f), true, var_1.e), u_input.c, Struct_2(func_3(Struct_2(var_0.xy, 131f, var_1.b, false, var_2.a.a), vec2<i32>(var_2.a.e.x, u_input.d.x) << (var_2.b.yz % vec2<u32>(32u)), Struct_2(vec2<bool>(var_1.e.a, var_1.d), arg_3, arg_2.x, var_2.a.b, Struct_1(true, vec2<f32>(-206f, -306f)))).xz, arg_3, arg_2.x, var_0.x, Struct_1(true, _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, arg_3), vec2<f32>(arg_3, -933f))))).x, any(!var_2.a.c) & true, var_0.x);
    return var_2.a;
}

fn func_1() -> Struct_3 {
    global0 = -1934f;
    global1 = array<Struct_4, 32>();
    let var_0 = true;
    global1 = array<Struct_4, 32>();
    global1 = array<Struct_4, 32>();
    return func_2(21849u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(754f, -250f)), -2553f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-102f * _wgslsmith_f_op_f32(f32(-1f) * -413f)))), -504f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1118f, 967f)) * _wgslsmith_f_op_f32(sign(1460f))) - _wgslsmith_f_op_f32(-196f + 1022f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1046f, -944f, 228f, -1025f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-530f, -1597f, 171f, -884f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, -340f, -501f, -1264f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1357f, 1712f, -115f, -1654f))))), vec4<bool>(select(true, any(vec3<bool>(var_0, var_0, var_0)), !var_0), var_0, true, true))), 407f);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_5) -> StorageBuffer {
    global1 = array<Struct_4, 32>();
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b + vec2<f32>(_wgslsmith_div_f32(arg_1.b.x, -2529f), _wgslsmith_f_op_f32(arg_3.c.x - -1096f)))) + arg_2.a.b);
    let var_2 = func_1();
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-264f, 1291f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.a.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.b, vec2<f32>(arg_1.b.x, arg_3.a.a.b.x))))) * _wgslsmith_f_op_vec2_f32(var_2.a.b * _wgslsmith_f_op_vec2_f32(-arg_1.b))));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.a.b.x, arg_3.c.x), 1f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_3.c.x, 1133f)), _wgslsmith_f_op_f32(floor(1063f))))), _wgslsmith_f_op_f32(-arg_2.a.b.x)), -(-arg_3.a.e.x >> (_wgslsmith_sub_u32(arg_3.b.x, var_0.x) % 32u)), _wgslsmith_add_u32(abs(select(_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(2818u, 31850u, var_0.x), var_0.yxw), arg_3.a.a.a)), ~select(17757u, 4294967295u, arg_3.a.a.a) << (~select(0u, 0u, arg_2.a.a) % 32u)), arg_2.e.xy, arg_3.a.d.yx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -373f;
    var var_0 = -_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(0i, -22614i, u_input.c.x), _wgslsmith_dot_vec2_i32(u_input.c, u_input.d.wz)), reverseBits(firstLeadingBit(u_input.d.x))) != u_input.d.x;
    let var_1 = u_input.d.wx;
    let var_2 = Struct_3(Struct_1(true, vec2<f32>(_wgslsmith_f_op_f32(select(-403f, _wgslsmith_f_op_f32(f32(-1f) * -1798f), true)), 1508f)), !(!any(vec4<bool>(true, false, false, true))), vec3<bool>(true, true, !(!any(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(2263f)), _wgslsmith_f_op_f32(1000f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1124f), -647f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(2021f, -707f)), _wgslsmith_f_op_f32(f32(-1f) * -1783f), -1961f, _wgslsmith_f_op_f32(f32(-1f) * -564f)), vec4<f32>(1144f, _wgslsmith_f_op_f32(max(793f, -398f)), 950f, _wgslsmith_f_op_f32(step(1686f, -674f)))))), vec3<i32>(firstTrailingBit(~u_input.c.x | 0i), -50996i, 11066i << (u_input.a.x % 32u)));
    var var_3 = !vec3<bool>(!var_2.a.a, false, false);
    let x = u_input.a;
    s_output = func_4(-1000f, Struct_1(var_3.x, vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2923f)) + _wgslsmith_f_op_f32(-var_2.d.x)))), func_1(), Struct_5(var_2, vec3<u32>(firstLeadingBit(4294967295u), ~(70854u << (1u % 32u)), 89724u), _wgslsmith_f_op_vec3_f32(sign(var_2.d.xxw))));
}

