struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true));

var<private> global1: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(1445f, -313f, 1087f, 1000f), vec4<f32>(242f, -247f, -580f, 522f), vec4<f32>(552f, -272f, -162f, 199f), vec4<f32>(-538f, 526f, 713f, -840f), vec4<f32>(2035f, -995f, 782f, -1146f), vec4<f32>(-534f, 2700f, -1259f, -302f), vec4<f32>(-275f, 1000f, 982f, -1185f), vec4<f32>(1586f, -898f, -954f, 1000f), vec4<f32>(-1261f, 633f, -761f, 1000f), vec4<f32>(-535f, -451f, 1000f, -1597f), vec4<f32>(-1584f, 586f, -664f, 566f), vec4<f32>(271f, 311f, -1817f, -1000f), vec4<f32>(1000f, -1237f, -404f, 576f), vec4<f32>(-1000f, 1058f, -418f, 1050f), vec4<f32>(-187f, 152f, 621f, -2120f), vec4<f32>(-207f, 1000f, 436f, -655f), vec4<f32>(-541f, 772f, 1462f, 1473f), vec4<f32>(-1522f, 623f, -1503f, -1666f), vec4<f32>(-583f, 802f, -1389f, -533f), vec4<f32>(-863f, -107f, -2881f, 1000f), vec4<f32>(-337f, -850f, -1323f, -1000f), vec4<f32>(-1189f, -798f, 1031f, 2125f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    global1 = array<vec4<f32>, 22>();
    global1 = array<vec4<f32>, 22>();
    global1 = array<vec4<f32>, 22>();
    var var_0 = !vec3<bool>(all(global0[_wgslsmith_index_u32(89042u, 8u)]), select(abs(u_input.a.x), countOneBits(-2147483647i), true) == 0i, all(vec4<bool>(true, true, true, true)));
    let var_1 = select(!vec3<bool>(true, all(vec2<bool>(true, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(38984u, 2507u, 1u, 37377u), vec4<u32>(0u, 41715u, 0u, 40966u)) != _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 63465u), vec2<u32>(44580u, 1u))), vec3<bool>(!(~2147483647i < u_input.c.x), true, true), !(u_input.b <= u_input.a.x) | all(global0[_wgslsmith_index_u32(1u, 8u)]));
    return Struct_1(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 11609i, -34804i, u_input.a.x), u_input.a)) | u_input.c, !vec4<bool>(true, true, var_1.x, true), firstLeadingBit(0u), u_input.a.x ^ 0i, _wgslsmith_div_f32(1221f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(147f)) - _wgslsmith_f_op_f32(f32(-1f) * -1392f))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> f32 {
    global1 = array<vec4<f32>, 22>();
    var var_0 = 1u;
    global0 = array<vec3<bool>, 8>();
    var var_1 = Struct_1(~(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.e.d, arg_0.c.d), vec2<i32>(11318i, -25991i)))), select(arg_0.e.b, select(!func_2().b, arg_0.b.b, _wgslsmith_f_op_f32(-185f * arg_0.a.x) != arg_0.b.e), !(arg_0.b.c > 1u)), _wgslsmith_mod_u32(~(~(~arg_0.b.c)), arg_1), u_input.d & (u_input.d | -1736i), _wgslsmith_f_op_f32(-arg_0.a.x));
    let var_2 = var_1.d;
    return var_1.e;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = func_2();
    var var_1 = vec4<f32>(-1691f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2, -1670f), arg_0.d)))), arg_2, _wgslsmith_f_op_f32(func_3(arg_0, 4294967295u)));
    let var_2 = !(!(!(!(!vec3<bool>(var_0.b.x, true, var_0.b.x)))));
    var_0 = arg_0.c;
    global1 = array<vec4<f32>, 22>();
    return arg_2 <= -484f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(select(true, true, true), true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(0u, 8u)])), false), !vec4<bool>(true, true, select(true, true, false), func_1(Struct_2(vec3<f32>(209f, 1003f, 587f), Struct_1(u_input.c, vec4<bool>(true, true, false, false), 41960u, u_input.a.x, -1000f), Struct_1(vec2<i32>(-5707i, u_input.a.x), vec4<bool>(false, false, true, true), 37506u, -39073i, -335f), -103f, Struct_1(u_input.c, vec4<bool>(true, false, true, false), 27848u, -1i, 1000f)), u_input.a.x, -668f)), !vec4<bool>(any(vec4<bool>(false, true, false, true)), false, func_2().b.x, true)), func_2().a.x == _wgslsmith_dot_vec2_i32(u_input.a.yx, _wgslsmith_sub_vec2_i32(u_input.a.yy, ~u_input.c)));
    global1 = array<vec4<f32>, 22>();
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f * -931f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(1844f, -332f, -2582f), Struct_1(vec2<i32>(49629i, 0i), vec4<bool>(var_0.x, false, var_0.x, var_0.x), 38478u, u_input.b, 331f), Struct_1(vec2<i32>(-24791i, u_input.c.x), vec4<bool>(true, true, true, var_0.x), 35686u, 5533i, 886f), -756f, Struct_1(u_input.c, vec4<bool>(true, false, false, true), 24946u, u_input.b, 819f)), 26970u))), 1775f), Struct_1(u_input.c, !select(vec4<bool>(true, var_0.x, true, var_0.x), !vec4<bool>(true, false, var_0.x, false), var_0.x), 4294967295u, _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.b, u_input.a.x), vec4<i32>(u_input.d, -2147483647i, -23390i, u_input.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-533f - _wgslsmith_f_op_f32(sign(-395f)))))), func_2(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-760f - -174f))))), func_2());
    let var_2 = _wgslsmith_div_vec3_i32(u_input.a.zzx, vec3<i32>(var_1.c.d, _wgslsmith_mod_i32(countOneBits(u_input.c.x >> (10903u % 32u)), _wgslsmith_dot_vec4_i32(u_input.a, -vec4<i32>(-60904i, var_1.b.d, u_input.a.x, 23927i))), ~countOneBits(var_1.c.d)));
    let var_3 = ~abs(4294967295u);
    var var_4 = 2147483647i;
    var_1 = Struct_2(_wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(step(var_1.a, vec3<f32>(1397f, _wgslsmith_f_op_f32(-var_1.e.e), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_2(), var_1.b, _wgslsmith_div_f32(-1000f, var_1.d), Struct_1(var_2.xy, var_1.e.b, var_3, max(-(i32(-1i) * -27629i), var_2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d - -168f) + _wgslsmith_div_f32(-1677f, 1000f)), _wgslsmith_f_op_f32(max(1788f, -1350f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(max(69134u, var_3), firstTrailingBit(1u), firstLeadingBit(14849u), var_1.e.c), countOneBits(select(vec4<u32>(var_1.e.c, 4294967295u, 1u, var_1.c.c), vec4<u32>(var_3, 1u, var_1.e.c, var_3), true))), _wgslsmith_sub_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3, 24270u, var_3, 0u), vec4<u32>(4294967295u, 91841u, var_1.b.c, var_3)), vec4<u32>(1u, 14461u, 21556u, var_3)), abs(vec4<u32>(19739u, 32336u, 31540u, var_3))), select(~vec4<u32>(var_3, 4294967295u, var_1.e.c, var_1.e.c), _wgslsmith_div_vec4_u32(vec4<u32>(var_3, 0u, var_1.b.c, var_3) & vec4<u32>(var_3, var_3, var_1.e.c, 23551u), vec4<u32>(1u, var_1.e.c, 1u, var_3)), var_1.b.b)), u_input.a, ~_wgslsmith_div_u32(var_1.c.c, var_1.b.c));
}

