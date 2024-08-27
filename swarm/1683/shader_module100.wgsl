struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-27820i, 36292i);

var<private> global1: vec2<bool>;

var<private> global2: array<i32, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(vec2<bool>(arg_1.c.a.x, arg_1.c.a.x), ~arg_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1294f - _wgslsmith_f_op_f32(floor(arg_1.c.c.x))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(235f + arg_0.c.x) * -1683f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.c.x - arg_1.a.c.x) + _wgslsmith_f_op_f32(-1000f - arg_1.a.c.x)))));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1354f))) + var_1.c.x);
    return var_0.a;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global1 = select(func_3(Struct_1(vec2<bool>(true, any(vec3<bool>(global1.x, global1.x, global1.x))), vec2<u32>(reverseBits(37740u), firstTrailingBit(u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(403f, -206f, -759f, -1197f) - vec4<f32>(-879f, 1000f, -1309f, -1000f)))), Struct_2(Struct_1(!vec2<bool>(global1.x, global1.x), arg_0, vec4<f32>(-731f, 1786f, 352f, 164f)), global1.x, Struct_1(select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, false), global1.x), firstLeadingBit(vec2<u32>(4294967295u, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-435f, -781f, -733f, -1000f) * vec4<f32>(1616f, -757f, -590f, 272f))), countOneBits(_wgslsmith_mult_u32(53295u, u_input.c)))), !vec2<bool>(true, global1.x), any(!select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), select(vec4<bool>(true, global1.x, true, false), vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, global1.x, true, true)), global1.x)));
    global0 = vec2<i32>(-30979i, countOneBits(1i));
    var var_0 = Struct_1(func_3(Struct_1(vec2<bool>(true, true), arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(171f, 1668f, 125f, 172f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1976f, -357f, 109f, 297f) - vec4<f32>(729f, -847f, 468f, 1578f)))), Struct_2(Struct_1(vec2<bool>(global1.x, global1.x), arg_0, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-651f, -217f, 1192f, -303f)))), global1.x, Struct_1(func_3(Struct_1(vec2<bool>(true, global1.x), vec2<u32>(u_input.a, u_input.c), vec4<f32>(-467f, -1019f, 734f, 599f)), Struct_2(Struct_1(vec2<bool>(global1.x, true), vec2<u32>(6995u, arg_0.x), vec4<f32>(-602f, -203f, -1691f, -429f)), true, Struct_1(vec2<bool>(false, false), vec2<u32>(97666u, u_input.a), vec4<f32>(-764f, 460f, -666f, 1102f)), 8045u)), reverseBits(arg_0), _wgslsmith_div_vec4_f32(vec4<f32>(562f, -729f, -394f, -1317f), vec4<f32>(2969f, 975f, 812f, 1139f))), _wgslsmith_div_u32(reverseBits(u_input.a), _wgslsmith_mult_u32(arg_0.x, 9268u)))), vec2<u32>(~101489u, u_input.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1804f + -388f), 1278f, _wgslsmith_f_op_f32(-1000f + -911f), -1811f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1754f, 1000f, -1867f, 1403f), vec4<f32>(1521f, -823f, 1117f, 833f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(477f, -578f, -511f, -981f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-800f, -623f, 550f, 1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-3044f, -731f, -288f, 1505f))) * vec4<f32>(667f, 2734f, -323f, 166f)))));
    let var_1 = false;
    let var_2 = vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(floor(1298f)), -560f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x))))));
    return Struct_1(!vec2<bool>(~u_input.c == var_0.b.x, all(select(vec3<bool>(false, false, global1.x), vec3<bool>(true, false, var_0.a.x), var_0.a.x))), ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(89995u, arg_0.x), vec2<u32>(0u, 29611u)))), var_2);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    global2 = array<i32, 30>();
    let var_0 = arg_1.c;
    var var_1 = Struct_2(func_2(arg_1.b), true, arg_1, arg_0.x);
    var_1 = Struct_2(var_1.c, var_1.c.a.x, var_1.a, ~abs(var_1.a.b.x));
    return 4294967295u;
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = max(-global2[_wgslsmith_index_u32(func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, arg_0.b.x), arg_0.b), func_2(vec2<u32>(arg_0.b.x, 4294967295u)), arg_0.c.x) | ~arg_0.b.x, 30u)], ~_wgslsmith_sub_i32(40309i, global0.x) | ~31797i);
    var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(min(-u_input.b.xw, -u_input.b.yz), (u_input.b.yw >> (vec2<u32>(u_input.a, arg_0.b.x) % vec2<u32>(32u))) << (vec2<u32>(24658u, u_input.c) % vec2<u32>(32u))), -2147483647i), 1i);
    let var_1 = Struct_2(arg_0, ~(76190u >> ((0u & u_input.c) % 32u)) <= ~func_2(~arg_0.b).b.x, Struct_1(func_3(func_2(arg_0.b), Struct_2(func_2(arg_0.b), select(false, false, arg_0.a.x), func_2(arg_0.b), 4294967295u)), vec2<u32>(17858u, ~arg_0.b.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.c.x, -1000f, -2256f) - _wgslsmith_f_op_vec4_f32(arg_0.c - arg_0.c))))), select(2355u, u_input.c, arg_0.a.x));
    var var_2 = global2[_wgslsmith_index_u32(~(var_1.d ^ countOneBits(select(_wgslsmith_mod_u32(9416u, u_input.a), 40417u, false))), 30u)];
    var var_3 = ~(~var_1.a.b.x);
    return ~(vec2<u32>(34665u ^ u_input.c, ~_wgslsmith_clamp_u32(u_input.c, u_input.a, 57170u)) ^ vec2<u32>(u_input.a, ~(~arg_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x;
    let var_1 = u_input.c;
    var var_2 = vec2<bool>(global1.x, global1.x);
    let var_3 = Struct_1(select(vec2<bool>(!all(vec3<bool>(var_2.x, global1.x, true)), all(select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, var_2.x, true)))), !select(vec2<bool>(true, true), !vec2<bool>(true, global1.x), var_2.x), vec2<bool>(true, true)), min(firstLeadingBit(func_1(Struct_1(vec2<bool>(true, global1.x), vec2<u32>(1u, var_1), vec4<f32>(-171f, 499f, -187f, -1000f)))), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.a), max(~vec2<u32>(u_input.c, 26032u), min(vec2<u32>(u_input.c, var_1), vec2<u32>(0u, u_input.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(436f, -236f, -1507f, -1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1570f, 751f, -1000f, -205f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1349f, -759f, 1000f, -1948f) * vec4<f32>(-429f, 264f, 354f, -2591f))))));
    let var_4 = global1.x | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1937f))) == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)), -159f)));
    let var_5 = vec4<bool>(!(var_3.a.x || (global2[_wgslsmith_index_u32(123509u, 30u)] < -u_input.b.x)), false, func_3(var_3, Struct_2(var_3, var_2.x, var_3, 48357u)).x, !(~1u >= abs(_wgslsmith_dot_vec3_u32(vec3<u32>(26916u, 24833u, var_1), vec3<u32>(var_1, 110613u, 2718u)))));
    var var_6 = Struct_1(var_5.xw, func_2(var_3.b).b, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(204f, -157f, var_3.c.x), vec3<f32>(-1317f, 161f, -2365f)))) - var_6.c.zwz) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-888f, var_3.c.x, _wgslsmith_div_f32(var_6.c.x, var_6.c.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(220f, var_3.c.x, var_3.c.x), vec3<f32>(554f, var_6.c.x, -1680f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1277f));
}

