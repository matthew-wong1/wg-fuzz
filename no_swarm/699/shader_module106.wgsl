struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1544f, 143f);

var<private> global1: array<bool, 21>;

var<private> global2: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_3(vec3<u32>(11115u, 19907u, 13212u), -1280f)), Struct_4(Struct_3(vec3<u32>(4018u, 35896u, 1u), -1275f)), Struct_4(Struct_3(vec3<u32>(0u, 62562u, 0u), 1631f)), Struct_4(Struct_3(vec3<u32>(28682u, 0u, 4294967295u), 1078f)), Struct_4(Struct_3(vec3<u32>(2588u, 35650u, 4294967295u), 629f)), Struct_4(Struct_3(vec3<u32>(4294967295u, 49976u, 4294967295u), 610f)), Struct_4(Struct_3(vec3<u32>(4294967295u, 13519u, 0u), -1922f)), Struct_4(Struct_3(vec3<u32>(0u, 35966u, 0u), 1000f)), Struct_4(Struct_3(vec3<u32>(106640u, 4294967295u, 41758u), 116f)), Struct_4(Struct_3(vec3<u32>(11556u, 10281u, 63925u), -442f)), Struct_4(Struct_3(vec3<u32>(0u, 4294967295u, 1u), -612f)), Struct_4(Struct_3(vec3<u32>(15998u, 16832u, 4294967295u), 225f)), Struct_4(Struct_3(vec3<u32>(1u, 12836u, 1341u), -1202f)), Struct_4(Struct_3(vec3<u32>(11946u, 1u, 4294967295u), 361f)), Struct_4(Struct_3(vec3<u32>(0u, 10548u, 0u), -358f)), Struct_4(Struct_3(vec3<u32>(1u, 1u, 1208u), -217f)), Struct_4(Struct_3(vec3<u32>(1u, 1u, 0u), 381f)), Struct_4(Struct_3(vec3<u32>(48508u, 0u, 9448u), 417f)), Struct_4(Struct_3(vec3<u32>(20914u, 12447u, 28573u), 499f)), Struct_4(Struct_3(vec3<u32>(4294967295u, 1u, 30199u), -163f)), Struct_4(Struct_3(vec3<u32>(1u, 0u, 11020u), 190f)), Struct_4(Struct_3(vec3<u32>(4294967295u, 4294967295u, 0u), 142f)));

var<private> global3: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_5, arg_3: i32) -> u32 {
    global2 = array<Struct_4, 22>();
    global2 = array<Struct_4, 22>();
    let var_0 = arg_2.a;
    global2 = array<Struct_4, 22>();
    var var_1 = _wgslsmith_f_op_f32(round(-123f)) == _wgslsmith_f_op_f32(floor(162f));
    return 8337u;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: f32) -> u32 {
    global3 = ~_wgslsmith_div_vec2_u32(~(~max(arg_0.a.zz, arg_0.a.xy)), arg_0.a.yz);
    global1 = array<bool, 21>();
    global0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1408f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3, 1000f), vec2<f32>(arg_0.b, global0.x), true)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-857f, arg_0.b) * vec2<f32>(340f, arg_3))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1116f, 933f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 718f) - vec2<f32>(arg_0.b, global0.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(476f, 407f), vec2<f32>(arg_2, 1305f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(404f, global0.x) - vec2<f32>(598f, arg_0.b)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_div_f32(-1144f, -1242f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(985f - arg_3)))));
    var var_0 = _wgslsmith_dot_vec4_i32(-(_wgslsmith_sub_vec4_i32(min(vec4<i32>(1i, arg_1, arg_1, arg_1), vec4<i32>(0i, 2147483647i, 1i, -2147483647i)), vec4<i32>(-2147483647i, arg_1, arg_1, -2147483647i)) << (reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, arg_0.a.x, 1425u), vec4<u32>(56670u, 18658u, 34265u, arg_0.a.x))) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(-1i, arg_1))), ~firstLeadingBit(arg_1), 44628i, _wgslsmith_clamp_i32(-arg_1, ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(arg_1, 40819i, arg_1)), arg_1)));
    return global3.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>) -> f32 {
    global1 = array<bool, 21>();
    var var_0 = Struct_3(u_input.a, global0.x);
    let var_1 = _wgslsmith_div_i32(_wgslsmith_mod_i32(5660i, _wgslsmith_sub_i32(reverseBits(countOneBits(arg_0.x)), 1i)), select(arg_0.x, 2147483647i, global1[_wgslsmith_index_u32(select(var_0.a.x, func_2(4294967295u, arg_1.x, Struct_5(Struct_3(var_0.a, global0.x), var_0.a, global3.x, vec2<u32>(93520u, u_input.a.x), Struct_4(Struct_3(vec3<u32>(0u, var_0.a.x, 46340u), 1531f))), -arg_0.x), true), 21u)]));
    let var_2 = _wgslsmith_mult_u32(~abs(global3.x), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, 789u) ^ ~4294967295u, abs(func_3(Struct_3(vec3<u32>(26622u, var_0.a.x, global3.x), global0.x), -21175i, -2460f, -651f))));
    global1 = array<bool, 21>();
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1868f - 496f) * _wgslsmith_f_op_f32(-global0.x)), global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 1152f, false)) - global0.x))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<i32>(70908i, 0i, 0i, -1i), var_0.xxz))), -455f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, -304f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1883f, -1357f), vec2<f32>(-344f, global0.x)))));
    var var_1 = Struct_2(true);
    var_1 = Struct_2(var_1.a);
    var_1 = Struct_2(true);
    global0 = var_0.xx;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + global0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(global0.x + 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
}

