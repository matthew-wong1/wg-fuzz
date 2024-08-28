struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: vec4<f32>;

var<private> global3: array<i32, 3> = array<i32, 3>(-1i, 17388i, 0i);

var<private> global4: array<Struct_2, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_u32(select(vec3<u32>(global0.x, u_input.d, global0.x), ~vec3<u32>(u_input.e.x, u_input.d, 26421u), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) << ((firstLeadingBit(vec3<u32>(u_input.e.x, 12873u, 0u)) ^ ~vec3<u32>(4294967295u, 1u, 1u)) % vec3<u32>(32u)), ~vec3<u32>(u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global0.x), vec3<u32>(u_input.e.x, global0.x, 0u)), _wgslsmith_mult_u32(global0.x, 19441u))), !vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true));
    let var_1 = Struct_1(false);
    global1 = array<Struct_2, 18>();
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global2.x) * vec4<f32>(global2.x, 950f, 100f, -1728f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1084f, 1000f, 1394f, global2.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, 1137f, global2.x, global2.x), vec4<f32>(1674f, -363f, 697f, -1550f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, 139f) * vec4<f32>(global2.x, -393f, global2.x, -1277f))))));
    let var_2 = u_input.b;
    return global2.x;
}

fn func_2() -> bool {
    var var_0 = ~_wgslsmith_div_u32(firstTrailingBit(global0.x & 76413u), abs(~(~20503u)));
    global3 = array<i32, 3>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-global2.xww);
    let var_2 = vec2<bool>(any(select(vec3<bool>(true, true, select(false, false, true)), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 3u)] >= -23562i, false), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(func_3()) == global2.x);
    var var_3 = global2.zxz;
    return false;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_1 {
    return Struct_1(arg_2.b.x);
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(max(global2.x, -365f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.wz + vec2<f32>(global2.x, 751f))))), global2.x, Struct_2(~vec3<u32>(4294967295u, ~global0.x, 1u << (u_input.d % 32u)), vec3<bool>(func_2(), true, true)), _wgslsmith_div_vec3_u32(vec3<u32>(38799u, 91055u, 1u), min(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 45148u, global0.x), vec3<u32>(global0.x, 13627u, 16335u)), vec3<u32>(1u, 4294967295u, u_input.e.x))) ^ (vec3<u32>(70089u, ~65183u, global0.x) >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(95820u, 48918u, 68735u), ~vec3<u32>(u_input.e.x, u_input.e.x, u_input.d)) % vec3<u32>(32u))));
    global1 = array<Struct_2, 18>();
    let var_1 = -(vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e.x, 0u) ^ 1u, 3u)], _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(0u, 3u)], u_input.a.x), u_input.b.x) ^ vec3<i32>(~1i, u_input.a.x, global3[_wgslsmith_index_u32(~4294967295u, 3u)]));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1220f, global2.x, -307f) * vec4<f32>(1218f, global2.x, 589f, 1107f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1590f - -108f)), _wgslsmith_f_op_f32(-1f), 267f, global2.x), true)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) - _wgslsmith_f_op_f32(-416f + -694f)) + 1000f), Struct_1(false)), _wgslsmith_clamp_i32(i32(-1i) * -max(-34016i, global3[_wgslsmith_index_u32(global0.x, 3u)]), var_1.x, -531i));
    var var_3 = var_2.b;
    return Struct_4(_wgslsmith_f_op_vec4_f32(var_2.a - vec4<f32>(2000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-324f)), 780f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-851f, 586f)), _wgslsmith_f_op_f32(global2.x + -412f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1000f, -1637f)))))), var_2.b, var_2.c);
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_4) -> vec2<u32> {
    global3 = array<i32, 3>();
    let var_0 = u_input.a.yw;
    let var_1 = ~vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.d, 1u, u_input.e.x, u_input.e.x), vec4<u32>(12301u, 1u, 4294967295u, 21408u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, arg_1, 1u, 0u), vec4<u32>(0u, u_input.d, global0.x, 35638u), vec4<u32>(global0.x, 0u, 0u, 41228u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, arg_1, global0.x), vec3<u32>(global0.x, global0.x, 4294967295u)), _wgslsmith_dot_vec2_u32(u_input.e, global0.yx), _wgslsmith_mult_u32(arg_1, 4294967295u), ~1u)), 28226u);
    let var_2 = false;
    global2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(func_1(-arg_2.c).b.a, arg_0.x, -129f, _wgslsmith_f_op_f32(sign(-804f)))));
    return reverseBits(reverseBits(global0.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.yzy + vec3<f32>(-928f, 206f, -194f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(global2.zxw)))), vec3<bool>(false, all(vec4<bool>(false, true, true, true)), true))), ~select(global0.x, u_input.e.x, true), func_1(global3[_wgslsmith_index_u32(~3989u, 3u)]));
    var var_1 = 1654f;
    let var_2 = vec3<bool>(true, func_2(), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.yz)) - vec2<f32>(-958f, _wgslsmith_f_op_f32(abs(347f)))), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), global4[_wgslsmith_index_u32(firstLeadingBit(global0.x), 8u)], vec3<u32>(max(68917u >> (1u % 32u), reverseBits(var_0.x)), 1u, ~global0.x)).a);
    var var_3 = var_2.x;
    let var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2194f, -307f, 460f, 785f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, global2.x, 228f, global2.x), vec4<f32>(735f, global2.x, -1339f, -1839f)))))))), Struct_3(global2.x, func_1(u_input.c.x).b.b), ~_wgslsmith_add_i32(abs(_wgslsmith_mod_i32(-25804i, global3[_wgslsmith_index_u32(0u, 3u)])), 20779i ^ u_input.c.x));
    var var_5 = vec4<u32>(_wgslsmith_mod_u32(global0.x ^ 0u, u_input.d), ~(var_0.x ^ max(var_0.x, 56828u)), 1u, 1u) >> (abs(~vec4<u32>(global0.x, 39741u, _wgslsmith_add_u32(44373u, 1u), max(u_input.e.x, u_input.d))) % vec4<u32>(32u));
    global0 = ~(~min(var_5.wxy, min(var_5.xzx, vec3<u32>(u_input.e.x, var_5.x, 99034u)))) | ~select(max(~vec3<u32>(var_0.x, 45722u, var_0.x), max(var_5.wzx, vec3<u32>(global0.x, 45482u, global0.x))), _wgslsmith_add_vec3_u32(select(var_5.www, vec3<u32>(43172u, u_input.e.x, var_5.x), true), vec3<u32>(var_5.x, var_5.x, global0.x)), !vec3<bool>(false, var_2.x, var_2.x));
    var_3 = all(select(select(!vec4<bool>(true, var_2.x, var_4.b.b.a, var_2.x), select(!vec4<bool>(var_2.x, true, false, var_4.b.b.a), vec4<bool>(false, true, false, true), vec4<bool>(var_4.b.b.a, false, var_2.x, false)), !all(vec4<bool>(false, var_4.b.b.a, var_2.x, var_4.b.b.a))), select(select(!vec4<bool>(var_2.x, false, var_4.b.b.a, var_2.x), !vec4<bool>(var_2.x, true, var_4.b.b.a, false), var_4.b.b.a), select(!vec4<bool>(var_4.b.b.a, false, true, var_2.x), !vec4<bool>(var_4.b.b.a, false, var_4.b.b.a, var_2.x), select(false, true, var_2.x)), select(vec4<bool>(true, var_4.b.b.a, true, var_2.x), select(vec4<bool>(var_4.b.b.a, var_2.x, var_2.x, var_4.b.b.a), vec4<bool>(var_4.b.b.a, true, false, true), vec4<bool>(var_4.b.b.a, var_4.b.b.a, false, var_4.b.b.a)), !vec4<bool>(false, var_4.b.b.a, var_4.b.b.a, true))), vec4<bool>(true, var_4.b.b.a, var_2.x, var_2.x)));
    let var_6 = -29149i < (u_input.c.x | min(_wgslsmith_div_i32(~(-47230i), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i, -2147483647i, -56i, u_input.b.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global3[_wgslsmith_index_u32(1u, 3u)], 0i) | u_input.c.zxz, _wgslsmith_mult_vec3_i32(u_input.c.xwy, vec3<i32>(u_input.c.x, -12844i, var_4.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec2<i32>(global3[_wgslsmith_index_u32(20752u ^ global0.x, 3u)], -12974i & var_4.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), var_4.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), var_4.b.a))) + _wgslsmith_div_vec3_f32(global2.zzy, vec3<f32>(var_4.a.x, var_4.a.x, -559f))), 1538f, vec3<i32>(-1i, reverseBits(-16001i), -(~1i)));
}

