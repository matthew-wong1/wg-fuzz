struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(643f, -262f), vec2<f32>(663f, -984f), vec2<f32>(-1506f, -351f), vec2<f32>(292f, 1347f), vec2<f32>(787f, -1354f), vec2<f32>(452f, 1000f), vec2<f32>(1092f, 602f), vec2<f32>(264f, -805f), vec2<f32>(-370f, 404f), vec2<f32>(-338f, -953f), vec2<f32>(-758f, -172f), vec2<f32>(-762f, 158f), vec2<f32>(854f, 1510f), vec2<f32>(-1000f, -1141f), vec2<f32>(-329f, 508f), vec2<f32>(370f, -1000f), vec2<f32>(696f, 368f), vec2<f32>(-1184f, -400f), vec2<f32>(1614f, 179f), vec2<f32>(-1439f, 1160f), vec2<f32>(378f, -111f), vec2<f32>(144f, 1399f), vec2<f32>(1339f, 184f), vec2<f32>(-949f, -453f), vec2<f32>(268f, -1221f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = Struct_2(arg_1.c);
    let var_1 = arg_1.c.x;
    global1 = array<vec2<f32>, 25>();
    global1 = array<vec2<f32>, 25>();
    global0 = array<u32, 3>();
    return reverseBits(vec3<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a, -21192i), vec2<i32>(u_input.c, u_input.c))), arg_1.a, -u_input.c) | vec3<i32>(-arg_1.a & _wgslsmith_div_i32(arg_0.a, 0i), -1i, _wgslsmith_sub_i32(-arg_1.a, 1i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec2<f32> {
    var var_0 = 11756i < u_input.c;
    global1 = array<vec2<f32>, 25>();
    global0 = array<u32, 3>();
    let var_1 = ~(abs(select(vec3<u32>(48493u, global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 3u)], 3u)], 3u)]), vec3<u32>(u_input.a, 0u, 1u), vec3<bool>(true, true, true)) << ((vec3<u32>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 25482u) | vec3<u32>(u_input.a, u_input.a, 1u)) % vec3<u32>(32u))) ^ select(countOneBits(vec3<u32>(4294967295u, 10947u, 4294967295u) | vec3<u32>(global0[_wgslsmith_index_u32(4805u, 3u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 3u)], 3u)])), vec3<u32>(1u, 1u, 1u), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)))));
    let var_2 = Struct_1(min(arg_2.x, abs(-47110i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(390f, 266f) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(global1[_wgslsmith_index_u32(u_input.b, 25u)]))))), vec3<f32>(-906f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, -783f))), arg_0));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(31046u, 25u)])))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 3u)], var_1.x, u_input.b), 25u)]))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_0.x, min(-vec4<i32>(-28102i, 65144i, -73367i, arg_1.a), ~vec4<i32>(3908i, 966i, arg_1.a, u_input.c)) ^ -vec4<i32>(0i, u_input.c, -12060i, u_input.c), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(1833i, arg_1.a, u_input.c)), func_2(Struct_1(2147483647i, arg_0.xy, arg_0), Struct_1(34892i, arg_1.b, vec3<f32>(arg_0.x, arg_0.x, arg_1.c.x)))) ^ vec3<i32>(select(arg_1.a, 12998i, true), _wgslsmith_add_i32(arg_1.a, arg_1.a), min(arg_1.a, 1i)))));
    global0 = array<u32, 3>();
    let var_1 = _wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]) << (vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], 2277u) % vec2<u32>(32u)), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], 32924u), firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)])))) >> (~vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 3u)], ~global0[_wgslsmith_index_u32(u_input.a, 3u)]) % vec2<u32>(32u)), vec2<u32>(31997u, _wgslsmith_add_u32(65355u, ~global0[_wgslsmith_index_u32(u_input.b, 3u)] >> (max(0u, global0[_wgslsmith_index_u32(11261u, 3u)]) % 32u))));
    var var_2 = global1[_wgslsmith_index_u32(2188u, 25u)];
    global1 = array<vec2<f32>, 25>();
    return 20908u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    global1 = array<vec2<f32>, 25>();
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(964f, 2059f, -591f)))))), _wgslsmith_sub_vec4_u32(vec4<u32>(90340u, 1u, _wgslsmith_add_u32(0u, 0u) | _wgslsmith_add_u32(u_input.a, u_input.b), 70577u), ~vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 3u)], 1u), ~1u, global0[_wgslsmith_index_u32(func_1(vec3<f32>(127f, -907f, -506f), Struct_1(u_input.c, global1[_wgslsmith_index_u32(1u, 25u)], vec3<f32>(-675f, 678f, 522f))), 3u)], _wgslsmith_dot_vec3_u32(vec3<u32>(28518u, 53807u, global0[_wgslsmith_index_u32(u_input.b, 3u)]), vec3<u32>(1u, global0[_wgslsmith_index_u32(0u, 3u)], 13673u)))), select(vec3<bool>(true, true, all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), true));
    let var_1 = Struct_5(func_2(Struct_1(~u_input.c, _wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(11965u, 25u)]), _wgslsmith_f_op_vec3_f32(-var_0.a.a)), Struct_1(56240i, vec2<f32>(var_0.a.a.x, 846f), var_0.a.a)).yy | (~vec2<i32>(1i, 1i) << ((countOneBits(var_0.b.yz) & vec2<u32>(36766u, 29403u)) % vec2<u32>(32u))), Struct_4(all(vec4<bool>(!var_0.c.x, var_0.c.x, true, true)), select(var_0.c, var_0.c, true), all(vec3<bool>(var_0.c.x, any(vec3<bool>(false, false, true)), false)), _wgslsmith_dot_vec4_i32(-min(vec4<i32>(u_input.c, 0i, -67348i, u_input.c), vec4<i32>(u_input.c, 0i, u_input.c, u_input.c)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-21497i, -1i, u_input.c, 3587i), vec4<i32>(-1i, u_input.c, 53699i, u_input.c)), select(vec4<i32>(u_input.c, -6986i, u_input.c, -24070i), vec4<i32>(-2147483647i, u_input.c, -37453i, u_input.c), vec4<bool>(var_0.c.x, true, var_0.c.x, true)))), -604f), var_0, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(-var_0.a.a.x), -abs(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)) | _wgslsmith_div_vec4_i32(-vec4<i32>(30050i, u_input.c, u_input.c, 0i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, -2266i, -1i, u_input.c), vec4<i32>(4470i, u_input.c, u_input.c, u_input.c), vec4<i32>(0i, -37907i, 2147483647i, 2147483647i))), select(countOneBits(-vec3<i32>(-31102i, u_input.c, u_input.c)), vec3<i32>(u_input.c, -u_input.c, -50129i), vec3<bool>(var_0.c.x, true, global0[_wgslsmith_index_u32(u_input.b, 3u)] < u_input.a)))).x);
    var var_2 = Struct_3(var_1.c.a, _wgslsmith_mult_vec4_u32(~vec4<u32>(62663u, 26932u, 84346u, 0u) | ~(var_0.b | var_0.b), var_0.b), !vec3<bool>(~var_1.a.x >= -u_input.c, var_0.c.x, true));
    let var_3 = ~_wgslsmith_mult_u32(u_input.b, 87949u >> (select(~u_input.a, 5692u, select(true, true, var_2.c.x)) % 32u));
    global0 = array<u32, 3>();
    var var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.a.x)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1292f, var_1.d) - _wgslsmith_f_op_f32(sign(var_0.a.a.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1084f, 344f, 764f) * var_0.a.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<i32>(-1i, 18273i, var_1.a.x | 10113i, _wgslsmith_dot_vec4_i32(firstTrailingBit(select(vec4<i32>(2147483647i, 10529i, var_1.a.x, u_input.c), vec4<i32>(2147483647i, -14643i, 1i, -1i), true)), select(countOneBits(vec4<i32>(0i, u_input.c, 29796i, u_input.c)), -vec4<i32>(-2147483647i, var_1.a.x, 30713i, -2147483647i), select(vec4<bool>(false, false, false, false), vec4<bool>(var_2.c.x, true, var_0.c.x, var_2.c.x), vec4<bool>(var_1.c.c.x, var_1.c.c.x, var_2.c.x, var_0.c.x))))));
}

