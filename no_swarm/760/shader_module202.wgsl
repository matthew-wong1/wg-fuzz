struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: array<Struct_2, 15>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_add_u32(57680u, u_input.a.x);
    global0 = array<Struct_2, 2>();
    let var_1 = vec3<u32>(u_input.b.x, ~(~65667u), ~reverseBits(var_0));
    global1 = array<Struct_2, 15>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(-205f, 183f)), _wgslsmith_f_op_f32(1877f + 1318f), _wgslsmith_f_op_f32(582f + 1689f))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(var_0), 74159u) >> (var_1.zx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(96662u, 4294967295u), vec2<u32>(29856u, 28550u)), vec2<u32>(0u, var_0)) >> (firstLeadingBit(~var_1.zz) % vec2<u32>(32u))), 2u)], Struct_2(Struct_1(~_wgslsmith_add_vec2_u32(var_1.xy, u_input.a.zy)), Struct_1(~(vec2<u32>(var_1.x, var_1.x) ^ vec2<u32>(var_0, var_1.x)))));
    return firstTrailingBit(~reverseBits(var_1.x));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: bool) -> vec3<u32> {
    var var_0 = arg_0;
    var var_1 = Struct_2(Struct_1(~u_input.b.yz), Struct_1(firstLeadingBit(~(~vec2<u32>(1u, u_input.b.x)))));
    global0 = array<Struct_2, 2>();
    var var_2 = vec4<bool>(4294967295u > ~(u_input.e & (52253u >> (var_1.a.a.x % 32u))), false, true, any(vec4<bool>(true, true, any(!vec4<bool>(true, true, arg_3, arg_3)), select(true, all(vec4<bool>(arg_3, true, false, arg_3)), true))));
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(31325u, ~55074u), func_3()), 15u)];
    return ~(~firstTrailingBit(~vec3<u32>(u_input.b.x, 1u, var_1.b.a.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_3.b.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.c.a)))))));
    let var_1 = -22714i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(1810f * 1412f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(620f * 2015f))), arg_3.d.x, arg_0.x) * vec4<f32>(_wgslsmith_f_op_f32(abs(arg_3.c.a.x)), var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.a + -1292f))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(200f)), 810f), arg_0.x, var_0.x));
    global1 = array<Struct_2, 15>();
    var var_3 = Struct_4(var_0.x, arg_3.c, Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.b.a), var_2.wxx), global0[_wgslsmith_index_u32(1u, 2u)], Struct_2(arg_3.c.b.a, arg_3.b.b.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.x, var_2.x), _wgslsmith_f_op_vec2_f32(-var_0.zx))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1766f, arg_3.a))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(410f, arg_0.x)))))))), 37758i);
    return var_3.b;
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -274f))))), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(144f, -1768f) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(363f, 562f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1769f, 1030f) - vec2<f32>(914f, 127f)))), abs(u_input.b.zy), func_2(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1329f, -150f, 216f)))), vec2<f32>(1f, 1f), true), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f) * 181f), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1574f, 1696f, 316f)), Struct_2(Struct_1(u_input.a.yx), Struct_1(vec2<u32>(22549u, 0u))), Struct_2(Struct_1(vec2<u32>(0u, 0u)), Struct_1(u_input.a.yz))), Struct_3(vec3<f32>(1f, 1f, 1f), global1[_wgslsmith_index_u32(62850u, 15u)], global1[_wgslsmith_index_u32(49995u, 15u)]), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(393f, -620f))), _wgslsmith_clamp_i32(~(-2147483647i), u_input.c, u_input.d.x & u_input.d.x))), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(1978f - 412f))), _wgslsmith_mod_vec2_u32(vec2<u32>(35377u, ~4294967295u), vec2<u32>(u_input.b.x, ~u_input.b.x)), ~vec3<u32>(38097u, 4294967295u, 10672u), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-406f - 319f)), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-165f, 435f, -1016f) * vec3<f32>(-168f, -1662f, 1607f)), global1[_wgslsmith_index_u32(~10186u, 15u)], global0[_wgslsmith_index_u32(~48698u, 2u)]), Struct_3(vec3<f32>(-2118f, -1019f, 1698f), global1[_wgslsmith_index_u32(abs(1u), 15u)], func_4(vec2<f32>(-1000f, -1880f), vec2<u32>(1u, 0u), u_input.b, Struct_4(-1323f, Struct_3(vec3<f32>(-319f, -301f, -858f), Struct_2(Struct_1(vec2<u32>(u_input.b.x, 0u)), Struct_1(u_input.b.xy)), Struct_2(Struct_1(u_input.a.xz), Struct_1(vec2<u32>(u_input.e, u_input.a.x)))), Struct_3(vec3<f32>(948f, 1097f, -540f), global1[_wgslsmith_index_u32(u_input.a.x, 15u)], Struct_2(Struct_1(u_input.a.yy), Struct_1(vec2<u32>(4294967295u, 35884u)))), vec2<f32>(916f, 298f), u_input.c)).c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1896f, -1000f)), vec2<f32>(-382f, -1871f)), 4761i)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-390f, 439f)) + _wgslsmith_div_f32(-1549f, -760f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-599f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-388f, 1255f) * vec2<f32>(678f, 330f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, 733f) - vec2<f32>(968f, -813f)), vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(step(-416f, -804f)), _wgslsmith_f_op_f32(sign(157f)))))), ~u_input.c);
    return vec4<i32>(select(-10620i, -_wgslsmith_dot_vec2_i32(u_input.d.xx | vec2<i32>(0i, var_0.e), countOneBits(vec2<i32>(-2147483647i, 64155i))), 50339u > u_input.a.x), u_input.c, max(u_input.d.x, var_0.e ^ u_input.c), _wgslsmith_add_i32(0i, 27539i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.b.xx);
    global1 = array<Struct_2, 15>();
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(530f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(279f))), _wgslsmith_f_op_f32(150f + _wgslsmith_f_op_f32(649f - 210f)), 233f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-513f))), 1668f, -474f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 107f, -353f, -607f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(120f, 160f, -1000f, -1361f)), vec4<f32>(-758f, 169f, 1245f, -750f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1271f, -177f, -700f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(select(447f, 289f, true)), _wgslsmith_f_op_f32(800f * -1906f), _wgslsmith_f_op_f32(f32(-1f) * -924f), 655f), true))), false));
    let var_2 = (vec4<i32>(-1i) * -select(vec4<i32>(u_input.c, u_input.d.x, 0i, u_input.c), vec4<i32>(48308i, -50510i, u_input.c, 0i) ^ vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), any(vec4<bool>(false, true, false, false)))) ^ (-(~vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.c)) ^ -func_1());
    var var_3 = Struct_1(vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(0u, 9073u)) ^ countOneBits(var_0.a.x), ~min(~1u, 67303u)));
    var var_4 = true;
    var var_5 = vec4<bool>(true, false, true, true);
    var var_6 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_4(vec2<f32>(var_1.x, -1990f), vec2<u32>(22523u, u_input.a.x) >> (vec2<u32>(4294967295u, var_3.a.x) % vec2<u32>(32u)), firstLeadingBit(u_input.b), Struct_4(-917f, Struct_3(var_1.wzx, global0[_wgslsmith_index_u32(var_3.a.x, 2u)], Struct_2(Struct_1(u_input.b.yy), Struct_1(vec2<u32>(20577u, var_0.a.x)))), Struct_3(vec3<f32>(var_1.x, 927f, var_1.x), Struct_2(Struct_1(vec2<u32>(u_input.a.x, u_input.b.x)), Struct_1(var_3.a)), global1[_wgslsmith_index_u32(var_0.a.x, 15u)]), var_1.yz, 1i)).a.x * 691f), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.x))))) - _wgslsmith_f_op_vec3_f32(-var_1.zwz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(660f, _wgslsmith_f_op_f32(max(var_6.x, -806f)), -1317f, _wgslsmith_f_op_f32(186f * -523f)))), u_input.d.x);
}

