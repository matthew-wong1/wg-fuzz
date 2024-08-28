struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)));

var<private> global1: array<f32, 20>;

var<private> global2: array<vec4<bool>, 26> = array<vec4<bool>, 26>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true));

var<private> global3: i32;

var<private> global4: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(-1000f, 1000f, -361f), vec3<f32>(1000f, 397f, 579f), vec3<f32>(847f, -1000f, -352f), vec3<f32>(-2871f, 816f, -542f), vec3<f32>(-2211f, -742f, 1172f), vec3<f32>(-1000f, 254f, 366f), vec3<f32>(1717f, 944f, -420f), vec3<f32>(427f, -595f, 833f), vec3<f32>(-509f, 107f, 1376f), vec3<f32>(1000f, -1407f, -1000f), vec3<f32>(-157f, -1261f, 1211f), vec3<f32>(289f, -422f, -1357f), vec3<f32>(161f, -672f, -765f), vec3<f32>(233f, 902f, -598f), vec3<f32>(437f, -111f, -1000f), vec3<f32>(-313f, -1039f, -1400f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    global2 = array<vec4<bool>, 26>();
    return arg_1.c;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = Struct_4(Struct_1(false, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(u_input.b.x, 2147483647i, u_input.a.x)), firstTrailingBit(vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x) | u_input.b)), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), func_3(global1[_wgslsmith_index_u32(arg_0.x, 20u)], Struct_1(true, u_input.a.zww, vec3<bool>(false, true, false), 47106u))), ~(~(~arg_0.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(4467u, 44171u, 3751u, 114336u), ~max(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 56114u), ~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u))));
    global4 = array<vec3<f32>, 16>();
    let var_1 = Struct_3(select(vec2<bool>(var_0.a.a, var_0.a.c.x), !var_0.a.c.zz, any(select(var_0.a.c.xz, func_3(-544f, var_0.a).yx, func_3(global1[_wgslsmith_index_u32(arg_0.x, 20u)], var_0.a).zx))));
    global3 = abs(_wgslsmith_sub_i32(~(-var_0.a.b.x), abs(~(~u_input.a.x))));
    let var_2 = Struct_5(Struct_3(var_1.a), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(var_0.b, arg_0.x), select(abs(25211u), ~var_0.a.d, var_1.a.x)), ~(~arg_0.x), 21u), 872f, u_input.b.x);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c - global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_div_u32(arg_0.x, 0u), arg_0.x), 20u)]))));
}

fn func_4(arg_0: f32) -> vec3<bool> {
    let var_0 = vec4<bool>(false, !(!all(vec3<bool>(true, true, true))), any(vec3<bool>(all(vec3<bool>(false, false, true)), true, true)), !(all(vec3<bool>(true, true, true)) & (_wgslsmith_f_op_f32(sign(arg_0)) > -1609f)));
    global1 = array<f32, 20>();
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_div_f32(-2551f, arg_0), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~abs(40484u), 20u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(7638u, _wgslsmith_sub_u32(16051u, 1u)), 20u)])), arg_0, 8896i);
    global0 = array<Struct_3, 24>();
    global3 = _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, -21899i), -15151i), var_1.c);
    return vec3<bool>(true || !(!(-20282i == var_1.c)), func_3(global1[_wgslsmith_index_u32(0u, 20u)], Struct_1((var_0.x && true) & var_0.x, select(vec3<i32>(-1i, u_input.b.x, -8378i), vec3<i32>(0i, 0i, var_1.c) >> (vec3<u32>(0u, 1u, 1u) % vec3<u32>(32u)), !var_0.x), vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)] < -1083f, var_0.x, !var_0.x), 58887u >> (0u % 32u))).x, var_0.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = -7348i;
    let var_1 = Struct_1(arg_2.x, u_input.a.zxz, select(func_4(_wgslsmith_f_op_f32(func_2(countOneBits(vec3<u32>(10257u, 100733u, 224u))))), !(!vec3<bool>(arg_2.x, arg_3.x, arg_2.x)), arg_2.x | true), firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), reverseBits(~vec3<u32>(114361u, 1u, 32539u)))));
    var var_2 = ~(~abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(4751u, var_1.d, 0u), vec3<u32>(var_1.d, 5527u, 1u))));
    global1 = array<f32, 20>();
    var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~var_2.x, var_2.x, 14734u), abs(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(4294967295u, var_2.x, 46577u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 37498u, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.d, 1u, 0u), vec3<u32>(var_2.x, 33582u, 4294967295u))))), _wgslsmith_add_vec3_u32(~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_1.d, var_2.x), vec3<u32>(4294967295u, var_2.x, 106695u))), firstLeadingBit((vec3<u32>(2001u, var_1.d, 85033u) << (vec3<u32>(var_1.d, 40511u, 0u) % vec3<u32>(32u))) | vec3<u32>(20788u, 4294967295u, 56546u))));
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(0u, 20u)], 1231f, -237f, -2159f) + vec4<f32>(global1[_wgslsmith_index_u32(15144u, 20u)], global1[_wgslsmith_index_u32(var_2.x, 20u)], global1[_wgslsmith_index_u32(var_2.x, 20u)], -1405f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -921f, global1[_wgslsmith_index_u32(var_1.d, 20u)], global1[_wgslsmith_index_u32(54872u, 20u)])) * vec4<f32>(460f, _wgslsmith_f_op_f32(arg_0.x - -640f), _wgslsmith_f_op_f32(f32(-1f) * -642f), 1533f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(33884u, 20u)])) + global1[_wgslsmith_index_u32(max(var_2.x >> (var_2.x % 32u), var_2.x), 20u)]) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.d, 20u)]) - arg_0.x)), 39252i);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    let var_0 = !arg_0.a.c.x;
    var var_1 = arg_0.a.c.x;
    var var_2 = vec3<bool>(arg_0.a.a, true, !(!(!any(vec4<bool>(true, true, var_0, var_0)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-313f, _wgslsmith_f_op_f32(f32(-1f) * -527f), arg_1.a.x, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(arg_0.a.d, 20u)], arg_1.a.x))) * arg_1.a))), arg_2.b, ~reverseBits(45818i));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = Struct_4(Struct_1(!arg_2, arg_1.xwx >> ((select(vec3<u32>(4294967295u, 1u, 11440u), vec3<u32>(4294967295u, 3129u, 1u), vec3<bool>(false, false, false)) ^ max(vec3<u32>(4294967295u, 18185u, 16148u), vec3<u32>(4294967295u, 27128u, 4294967295u))) % vec3<u32>(32u)), !vec3<bool>(true, arg_2, false), 1u), 1u);
    var_0 = Struct_4(Struct_1(true, countOneBits(vec3<i32>(abs(20566i), -arg_0.c, -31571i)), select(var_0.a.c, vec3<bool>(any(var_0.a.c.zz), true, arg_2), true), ~_wgslsmith_clamp_u32(0u, 0u, var_0.b) & var_0.a.d), ~var_0.b);
    let var_1 = var_0.b;
    var_0 = Struct_4(var_0.a, var_0.a.d);
    let var_2 = vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 38174u, 4294967295u), vec3<u32>(40073u, var_0.a.d, var_0.b), arg_2), vec3<u32>(var_0.b, 3308u, var_0.a.d)), var_0.a.d), 53592u, 42987u);
    return _wgslsmith_f_op_vec4_f32(arg_0.a + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(var_2.x, 20u)], -1554f, arg_0.b, global1[_wgslsmith_index_u32(4294967295u, 20u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_6(func_5(Struct_4(Struct_1(false, u_input.b, vec3<bool>(true, false, true), 4294967295u), 0u), func_1(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(1u, 20u)]), u_input.b.x, vec4<bool>(false, true, false, false), vec2<bool>(true, true)), Struct_2(vec4<f32>(-724f, 1594f, 684f, global1[_wgslsmith_index_u32(39329u, 20u)]), global1[_wgslsmith_index_u32(1u, 20u)], 1i)), u_input.a, 1i <= _wgslsmith_add_i32(u_input.b.x, u_input.a.x), Struct_3(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))))), func_1(vec2<f32>(_wgslsmith_f_op_f32(-1356f + global1[_wgslsmith_index_u32(0u, 20u)]), global1[_wgslsmith_index_u32(25283u << (0u % 32u), 20u)]), u_input.a.x, vec4<bool>(true, any(vec2<bool>(true, false)), func_3(294f, Struct_1(false, vec3<i32>(39691i, 0i, -11525i), vec3<bool>(false, true, false), 0u)).x, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), true)).a)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~_wgslsmith_add_u32(1u, 7244u)), 20u)], select(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, 0i), vec3<i32>(u_input.a.x, 37460i, -26477i)) ^ (u_input.a.x << (58283u % 32u)), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))) | -func_5(Struct_4(Struct_1(false, u_input.a.xzw, vec3<bool>(true, false, false), 1u), 2998u), Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(115397u, 20u)], -526f, global1[_wgslsmith_index_u32(19931u, 20u)]), global1[_wgslsmith_index_u32(5638u, 20u)], 0i), func_5(Struct_4(Struct_1(false, u_input.a.yyx, vec3<bool>(true, false, false), 52419u), 43025u), Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(7462u, 20u)], 930f, -881f, -2120f), -1560f, u_input.a.x), Struct_2(vec4<f32>(global1[_wgslsmith_index_u32(0u, 20u)], global1[_wgslsmith_index_u32(68504u, 20u)], 1077f, global1[_wgslsmith_index_u32(42887u, 20u)]), global1[_wgslsmith_index_u32(4294967295u, 20u)], u_input.a.x))).c);
    var var_1 = Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(13320u, _wgslsmith_mult_u32(17669u, 1u)) & firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 30182u, 0u), vec4<u32>(6055u, 10673u, 0u, 35589u))), ~(~30228u >> (1u % 32u))), 24u)], countOneBits(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(13070u, 37863u, 1u, 41397u), vec4<u32>(10599u, 1u, 1u, 30072u)), max(48166u, 1u))) ^ vec3<u32>(1u, 74702u, abs(18561u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-872f))) + -1052f), u_input.b.x);
    var var_2 = -var_1.d;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(840f)), var_1.c, 266f, -1856f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a * var_0.a) * vec4<f32>(global1[_wgslsmith_index_u32(1u, 20u)], var_0.a.x, 1276f, -1307f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-704f, _wgslsmith_f_op_f32(1950f - global1[_wgslsmith_index_u32(var_1.b.x, 20u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0.a.yx, -5503i, vec4<bool>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, var_1.a.a.x), var_1.a.a).b * 563f))), -_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(0i, -79001i, u_input.a.x, u_input.b.x)), ~u_input.a), max(u_input.a.x, _wgslsmith_sub_i32(3029i, u_input.a.x))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(var_3.a))))) + _wgslsmith_f_op_vec4_f32(-var_3.a)), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(45390i << (abs(var_1.b.x) % 32u), 1i), -14809i));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_u32(var_1.b.x, var_1.b.x), ~firstTrailingBit(1u)), vec2<i32>(_wgslsmith_clamp_i32(1i | u_input.b.x, ~abs(30465i), var_0.c), var_3.c), 1218f, vec2<u32>(reverseBits(reverseBits(~4294967295u)), _wgslsmith_dot_vec2_u32(var_1.b.xz, abs(vec2<u32>(var_1.b.x, var_1.b.x)) & var_1.b.xz)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(62361u, 20u)]), _wgslsmith_f_op_f32(floor(var_0.a.x)), -391f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1[_wgslsmith_index_u32(var_1.b.x, 20u)], 1205f, 144f)))))));
}

