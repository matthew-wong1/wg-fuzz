struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true));

var<private> global1: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(634f, 4294967295u), Struct_3(-917f, 0u), Struct_3(335f, 1458u), Struct_3(-245f, 15744u), Struct_3(353f, 24053u), Struct_3(606f, 4294967295u), Struct_3(829f, 0u), Struct_3(2038f, 25523u), Struct_3(1173f, 0u), Struct_3(940f, 60583u), Struct_3(209f, 1u), Struct_3(284f, 73007u), Struct_3(-141f, 4294967295u), Struct_3(404f, 14162u), Struct_3(-1000f, 34553u), Struct_3(1000f, 1u), Struct_3(1316f, 0u), Struct_3(1751f, 9002u), Struct_3(1338f, 1u), Struct_3(-1261f, 0u), Struct_3(2003f, 4294967295u), Struct_3(109f, 45999u), Struct_3(1535f, 98156u), Struct_3(1208f, 16580u), Struct_3(-588f, 77820u), Struct_3(-243f, 4294967295u));

var<private> global2: i32 = 14028i;

var<private> global3: Struct_1;

var<private> global4: Struct_2;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<f32> {
    global0 = array<vec3<bool>, 27>();
    let var_0 = 1u;
    let var_1 = -(~(-1i));
    let var_2 = Struct_4(vec2<i32>(13254i, _wgslsmith_sub_i32(~var_1, 1i)), global4.e, vec3<bool>(false & (_wgslsmith_mult_i32(var_1, var_1) <= min(u_input.a.x, global4.a.x)), any(vec3<bool>(any(vec2<bool>(global3.b, false)), true, !global3.b)), global3.b), 47954u, 1305u);
    var var_3 = u_input.b.wz;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-148f, global4.d.x, arg_0) * vec3<f32>(arg_0, -117f, var_2.b.a)), _wgslsmith_div_vec3_f32(global4.d.wyx, vec3<f32>(global3.a, arg_0, -400f))), global4.d.yyx, !var_2.c)) + vec3<f32>(_wgslsmith_f_op_f32(-global3.a), -564f, -1670f));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>) -> u32 {
    var var_0 = 1i;
    global4 = Struct_2(abs(-vec3<i32>(-32078i, -2147483647i, arg_1.x) >> (~u_input.b.wwz % vec3<u32>(32u))), ~(~(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(38206u, 1u, 1u, global3.c)))), abs(u_input.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1514f, global4.e.a, global4.e.b)) + _wgslsmith_f_op_f32(floor(global4.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) - -517f), global3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1689f)) * _wgslsmith_f_op_vec3_f32(func_3(global4.d.x)).x)), global4.d)), global4.e);
    let var_1 = Struct_2(-vec3<i32>(max(-8205i, -55023i), global4.a.x, 2147483647i), countOneBits(min(_wgslsmith_sub_u32(60200u, 1u), abs(0u))), vec2<i32>(-1i) * -(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 49999i), arg_1.yx) ^ select(vec2<i32>(-22848i, -2147483647i), global4.c, vec2<bool>(false, global4.e.b))), global4.d, global4.e);
    let var_2 = !(!vec4<bool>(firstLeadingBit(arg_1.x) != 0i, false, true, false));
    global2 = _wgslsmith_mult_i32((_wgslsmith_clamp_i32(~arg_1.x, ~2147483647i, u_input.a.x >> (global3.c % 32u)) | max(i32(-1i) * -2147483647i, -global4.c.x)) | -(~(u_input.a.x << (u_input.b.x % 32u))), abs(~_wgslsmith_div_i32(20252i, u_input.c) | var_1.a.x));
    return ~(~(19340u | min(global3.c, 0u)) << (max(firstLeadingBit(~u_input.b.x), firstTrailingBit(global3.c & global3.c)) % 32u));
}

fn func_2(arg_0: bool) -> vec2<i32> {
    var var_0 = -573f;
    var var_1 = -3380f;
    var var_2 = Struct_4(countOneBits(~(~(~global4.c))), global4.e, vec3<bool>(true, true, false), 1u, ~firstTrailingBit(u_input.b.x));
    let var_3 = Struct_4(vec2<i32>(_wgslsmith_mult_i32(var_2.a.x, -1i & global4.a.x), -abs(~16500i)), Struct_1(_wgslsmith_f_op_f32(370f * 1110f), any(!(!vec4<bool>(true, false, var_2.b.b, false))), ~(~u_input.b.x) & ~_wgslsmith_mult_u32(global4.b, 76420u)), vec3<bool>(_wgslsmith_clamp_u32(92532u << (global4.b % 32u), ~u_input.b.x, firstTrailingBit(global4.e.c)) > (1u >> (var_2.d % 32u)), true, !(!(!global4.e.b))), func_4(_wgslsmith_f_op_vec3_f32(func_3(2276f)), select(vec4<i32>(0i, u_input.c | global4.a.x, 56666i ^ u_input.a.x, _wgslsmith_div_i32(var_2.a.x, -6481i)), select(vec4<i32>(var_2.a.x, global4.a.x, -2032i, 0i), vec4<i32>(2147483647i, global4.a.x, 3477i, 2147483647i), false) << (u_input.b % vec4<u32>(32u)), !global4.e.b)), ~(~1u));
    var_2 = var_3;
    return vec2<i32>(-4883i, ~(u_input.c >> (0u % 32u)));
}

fn func_1(arg_0: Struct_3) -> u32 {
    global0 = array<vec3<bool>, 27>();
    global2 = -30145i;
    let var_0 = vec3<f32>(-1508f, arg_0.a, -594f);
    var var_1 = max(vec2<i32>(-2147483647i & (-u_input.c ^ min(global4.c.x, 1i)), _wgslsmith_mod_i32(-3068i, ~25145i) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53743u, u_input.b.x, 18806u), u_input.b) ^ ~u_input.b.x) % 32u)), -_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(func_2(false), min(vec2<i32>(global4.c.x, 29781i), global4.a.zz), ~global4.a.yy), ~vec2<i32>(u_input.c, 12361i)));
    let var_2 = global4.d;
    return select(_wgslsmith_sub_u32(u_input.b.x, 16174u), _wgslsmith_dot_vec3_u32(countOneBits(~u_input.b.yyx << (_wgslsmith_mod_vec3_u32(u_input.b.yxy, vec3<u32>(global4.e.c, 47358u, 11347u)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(u_input.b.yww, vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(24734u, 1u, global4.b, 34792u)), 1u, 1u))), global3.b | select(false || global3.b, !any(vec2<bool>(false, true)), global4.e.b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(~global4.a, func_1(global1[_wgslsmith_index_u32(~4294967295u, 26u)]), vec2<i32>(-1i) * -min(vec2<i32>(3642i, u_input.c), max(global4.a.yy, vec2<i32>(global4.c.x, -2147483647i))), _wgslsmith_div_vec4_f32(global4.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.d.x, 1309f, 111f, -806f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global4.e.a, global3.a, -213f, global4.d.x))), _wgslsmith_f_op_vec4_f32(select(global4.d, global4.d, vec4<bool>(false, global3.b, false, true))), global4.e.b)))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global3.a)))), global3.b, func_4(vec3<f32>(-2012f, global4.d.x, _wgslsmith_f_op_f32(-global3.a)), ~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -636i, 0i, -20208i), vec4<i32>(10561i, global4.a.x, -35765i, -47251i)))));
    var var_0 = abs(abs(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -44322i, global4.c.x, u_input.c), vec4<i32>(global4.c.x, 1i, 27756i, global4.a.x))) & max(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 39515i, u_input.c, global4.c.x), abs(vec4<i32>(1i, 37810i, 13388i, u_input.a.x)), vec4<i32>(global4.c.x, 2147483647i, 1i, global4.a.x)), vec4<i32>(u_input.a.x ^ u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.c.x, global4.a.x), u_input.a), 2147483647i, i32(-1i) * -30156i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(global4.d.zy, _wgslsmith_f_op_vec2_f32(global4.d.wy - _wgslsmith_f_op_vec2_f32(global4.d.xw + global4.d.yw)), !(!vec2<bool>(global4.e.b, true)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.d.wz) + global4.d.xy));
    var var_2 = _wgslsmith_sub_vec2_i32(-countOneBits(-vec2<i32>(2048i, 0i)), vec2<i32>(~_wgslsmith_add_i32(14612i, 41715i) >> (_wgslsmith_dot_vec2_u32(u_input.b.xx, vec2<u32>(1u, u_input.b.x) << (u_input.b.yy % vec2<u32>(32u))) % 32u), max(57756i, ~(~(-2147483647i)))));
    var_0 = select(vec4<i32>(var_2.x, 0i & ~var_0.x, ~(0i << (firstTrailingBit(global4.e.c) % 32u)), -reverseBits(var_2.x)), vec4<i32>(2147483647i, -2147483647i, global4.c.x, abs(_wgslsmith_add_i32(var_2.x, u_input.a.x) << (~u_input.b.x % 32u))), select(vec4<bool>(global4.e.b || select(false, global4.e.b, true), all(!vec4<bool>(true, true, global3.b, global4.e.b)), all(vec3<bool>(global3.b, true, true)), all(global0[_wgslsmith_index_u32(select(global3.c, global3.c, false), 27u)])), vec4<bool>(global3.b, false, !(!global3.b), !(!global3.b)), true));
    global2 = countOneBits(var_2.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-194f, 1757f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d.x - 1288f))), _wgslsmith_div_f32(726f, 161f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1000f, var_1.x, global4.e.a) * vec4<f32>(global3.a, var_1.x, var_1.x, -221f))) + global4.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-367f, -503f, global3.a, var_1.x))), !global3.b));
    let var_4 = var_1;
    let var_5 = ~_wgslsmith_clamp_vec2_u32(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 10770u), vec2<u32>(global4.b, 4294967295u))), _wgslsmith_clamp_vec2_u32(u_input.b.yy, u_input.b.yw, ~vec2<u32>(global4.e.c, u_input.b.x)), firstLeadingBit(vec2<u32>(~global4.b, ~global4.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(2147483647i, -2147483647i, var_0.x), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(global4.c.x, 0i)), -var_2.x, 0i), vec4<i32>(var_0.x, u_input.a.x, u_input.c, var_2.x)) >> (~firstTrailingBit(select(u_input.b, vec4<u32>(1u, 4294967295u, global4.e.c, 9186u), vec4<bool>(global3.b, global4.e.b, global3.b, global3.b))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), abs(~(~min(vec4<i32>(13754i, 33759i, 21823i, var_2.x), vec4<i32>(40098i, u_input.c, -2147483647i, 6555i)))), var_3.xxx);
}

