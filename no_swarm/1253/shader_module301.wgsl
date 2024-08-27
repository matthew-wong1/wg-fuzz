struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: array<vec3<f32>, 30> = array<vec3<f32>, 30>(vec3<f32>(-150f, 650f, 211f), vec3<f32>(259f, 1577f, 259f), vec3<f32>(-186f, -675f, 398f), vec3<f32>(-742f, 645f, -314f), vec3<f32>(-711f, 1671f, 396f), vec3<f32>(-515f, -339f, -1000f), vec3<f32>(225f, -608f, -459f), vec3<f32>(-172f, 567f, 349f), vec3<f32>(-157f, 577f, -840f), vec3<f32>(1994f, 1039f, 483f), vec3<f32>(-1224f, -491f, -133f), vec3<f32>(-1000f, -2115f, -332f), vec3<f32>(-344f, -732f, -1000f), vec3<f32>(177f, 2352f, 313f), vec3<f32>(872f, -540f, -438f), vec3<f32>(-1516f, 229f, -506f), vec3<f32>(-1009f, -1389f, 1133f), vec3<f32>(-1592f, -259f, -361f), vec3<f32>(-1073f, -117f, -959f), vec3<f32>(3375f, -236f, 975f), vec3<f32>(1037f, 611f, -907f), vec3<f32>(-2319f, 968f, 824f), vec3<f32>(1000f, -143f, -632f), vec3<f32>(562f, 1068f, 315f), vec3<f32>(734f, -1000f, -1480f), vec3<f32>(-1056f, -1000f, -708f), vec3<f32>(-621f, 245f, 153f), vec3<f32>(325f, 840f, -872f), vec3<f32>(-1131f, -1369f, 479f), vec3<f32>(417f, -544f, -618f));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = all(vec4<bool>(-abs(-1i) < u_input.b, all(vec3<bool>(all(vec2<bool>(true, true)), true, true)), any(vec3<bool>(true, true, true)), true));
    global0 = array<vec2<bool>, 30>();
    let var_1 = Struct_2(u_input.d, select(select(vec4<bool>(62659u == u_input.d.x, true, true, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), vec4<bool>(true, (-1i <= u_input.c.x) | true, false, abs(0u) != _wgslsmith_div_u32(1u, u_input.a)), all(select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.d.x), 30u)], false))));
    var_0 = var_1.b.x;
    var var_2 = _wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(countOneBits(select(vec4<u32>(var_1.a.x, 6203u, u_input.a, var_1.a.x), u_input.d, var_1.b)), vec4<u32>(countOneBits(var_1.a.x), _wgslsmith_div_u32(var_1.a.x, 2678u), 1u, ~4294967295u))), u_input.d);
    return -(-u_input.b << (1u % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-227f, 1014f)))), -641f, -1335f, _wgslsmith_f_op_f32(f32(-1f) * -435f)), 52246u, all(!global0[_wgslsmith_index_u32(1779u, 30u)]), u_input.c.xx);
    let var_1 = abs(-_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.b, var_0.d.x, 3384i, -43450i), vec4<i32>(arg_1, arg_1, var_0.d.x, -18720i), vec4<bool>(arg_0.b.x, false, false, false)), vec4<i32>(-1i, -2147483647i, u_input.c.x, arg_1)), firstLeadingBit(vec4<i32>(1i, var_0.d.x, arg_1, arg_1))));
    let var_2 = Struct_1(var_0.a, ~(arg_0.a.x & ~reverseBits(var_0.b)), u_input.b > func_3(var_1.x), u_input.c.xx);
    let var_3 = var_2.a.x;
    global1 = array<vec3<f32>, 30>();
    return 4294967295u;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(vec4<u32>(~func_2(Struct_2(u_input.d, vec4<bool>(false, false, false, true)), u_input.c.x), ~firstLeadingBit(u_input.d.x), u_input.d.x, _wgslsmith_dot_vec2_u32(~u_input.d.xz, u_input.d.xx)) & u_input.d, vec4<bool>(!(true & any(vec4<bool>(false, false, true, true))), true, true, !(1u > u_input.a)));
    let var_1 = 554f;
    var var_2 = 4294967295u;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(333f, 282f, var_1, var_1))))))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.d.x, 25702u)), select(vec2<u32>(_wgslsmith_add_u32(0u, 0u), _wgslsmith_sub_u32(11554u, u_input.d.x)), min(~vec2<u32>(1u, 25420u), min(var_0.a.ww, vec2<u32>(var_0.a.x, 56830u))), global0[_wgslsmith_index_u32(58574u, 30u)])), false, ~(~vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.c.yy), -29285i)));
    global0 = array<vec2<bool>, 30>();
    return Struct_1(var_3.a, ~(~38225u), true, firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(var_3.d, arg_0.wz), firstTrailingBit(~39264i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~_wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.b, u_input.c.x, 0i), vec4<i32>(u_input.c.x, -1i, u_input.c.x, 50332i)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 1i, 2147483647i, 32839i), vec4<i32>(u_input.b, u_input.c.x, 21964i, u_input.b)), reverseBits(vec4<i32>(u_input.b, 15081i, u_input.c.x, 20212i)))));
    global1 = array<vec3<f32>, 30>();
    let var_1 = vec2<i32>(u_input.c.x, var_0.d.x);
    let var_2 = Struct_3(var_0, 9843u);
    global0 = array<vec2<bool>, 30>();
    global0 = array<vec2<bool>, 30>();
    let var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~u_input.d.xwx, select(vec3<u32>(u_input.d.x, u_input.a, var_0.b), u_input.d.xxx, true)), max(~(u_input.d.xyy << (vec3<u32>(6214u, var_2.b, 0u) % vec3<u32>(32u))), u_input.d.zyy)), var_0.b);
    global1 = array<vec3<f32>, 30>();
    global1 = array<vec3<f32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a.x, countOneBits(select(min(u_input.d.yyw, _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, var_0.b), vec3<u32>(u_input.a, var_3.x, 1688u))), firstLeadingBit(u_input.d.wyy ^ u_input.d.zxz), select(select(vec3<bool>(false, var_2.a.c, true), vec3<bool>(true, var_2.a.c, false), var_0.c), !vec3<bool>(true, var_2.a.c, var_2.a.c), vec3<bool>(false, var_2.a.c, var_2.a.c)))), var_2.b, -_wgslsmith_add_vec3_i32(vec3<i32>(~2147483647i, -25063i, var_1.x << (u_input.d.x % 32u)), reverseBits(u_input.c) | ~u_input.c));
}

