struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<bool>(false, false), -52913i), Struct_1(vec2<bool>(true, true), i32(-2147483648)), Struct_1(vec2<bool>(true, false), -18942i), Struct_1(vec2<bool>(false, false), 19742i), Struct_1(vec2<bool>(true, false), -36967i), Struct_1(vec2<bool>(false, false), 2147483647i), Struct_1(vec2<bool>(false, true), -14838i), Struct_1(vec2<bool>(true, true), -52258i), Struct_1(vec2<bool>(false, true), 60935i), Struct_1(vec2<bool>(true, true), 0i), Struct_1(vec2<bool>(true, false), 6994i), Struct_1(vec2<bool>(false, false), 38884i), Struct_1(vec2<bool>(true, false), -17234i), Struct_1(vec2<bool>(true, true), 2147483647i), Struct_1(vec2<bool>(true, true), -16600i), Struct_1(vec2<bool>(true, false), -38655i), Struct_1(vec2<bool>(false, true), -1i), Struct_1(vec2<bool>(false, false), 40690i));

var<private> global1: array<f32, 26> = array<f32, 26>(701f, -827f, 1355f, 1304f, -371f, 1338f, 1128f, -794f, 1667f, 910f, 1000f, 284f, -2122f, -1414f, -888f, -307f, 324f, -120f, 575f, 221f, -1530f, 1870f, -639f, 2272f, 1350f, -497f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_div_f32(685f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 26u)]))));
    let var_1 = Struct_2(Struct_1(arg_0.ww, _wgslsmith_mod_i32(firstTrailingBit(-2147483647i), u_input.d) >> (~(~u_input.e) % 32u)), true);
    let var_2 = global0[_wgslsmith_index_u32(u_input.e, 18u)];
    var var_3 = u_input.e;
    global1 = array<f32, 26>();
    return ~vec3<u32>(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 159886u, u_input.e, 0u), vec4<u32>(u_input.e, 0u, u_input.e, u_input.e)), arg_0), firstTrailingBit(vec4<u32>(u_input.e, u_input.e, 1u, u_input.e) >> (vec4<u32>(u_input.e, 6523u, 38398u, u_input.e) % vec4<u32>(32u)))), u_input.e, 11728u);
}

fn func_2(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 48114u, 44268u), vec3<u32>(0u, 30687u, arg_0.x)), _wgslsmith_sub_vec3_u32(arg_0.wzz, vec3<u32>(4294967295u, arg_0.x, 43809u))) >> (vec3<u32>(1774u, ~arg_0.x, u_input.e) % vec3<u32>(32u)), ~func_3(vec4<bool>(true, true, true, true), Struct_3(global1[_wgslsmith_index_u32(u_input.e, 26u)], -419f))), 18u)], true);
    global1 = array<f32, 26>();
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.e, 26u)], -989f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.e, 26u)], global1[_wgslsmith_index_u32(u_input.e, 26u)])), vec2<f32>(-423f, -585f), !vec2<bool>(var_0.b, var_0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(18935u, 26u)], global1[_wgslsmith_index_u32(arg_0.x, 26u)]) - vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(40261u, 26u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.e, 26u)], global1[_wgslsmith_index_u32(u_input.e, 26u)]) + vec2<f32>(global1[_wgslsmith_index_u32(arg_0.x, 26u)], 743f))))));
    return var_0.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    global1 = array<f32, 26>();
    global0 = array<Struct_1, 18>();
    global1 = array<f32, 26>();
    let var_0 = all(vec3<bool>(!(arg_2 && true), false, arg_0.a.a.x));
    let var_1 = arg_0;
    return var_1;
}

fn func_1(arg_0: bool) -> vec2<u32> {
    let var_0 = func_4(Struct_2(Struct_1(func_2(~vec4<u32>(u_input.e, 6649u, u_input.e, u_input.e)), ~u_input.d), false), _wgslsmith_div_vec2_u32(min(vec2<u32>(_wgslsmith_add_u32(1u, u_input.e), 0u), abs(abs(vec2<u32>(71866u, u_input.e)))), ~vec2<u32>(~44675u, u_input.e << (34054u % 32u))), select(arg_0, false, true & arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(u_input.e, 26u)]), vec2<f32>(2167f, global1[_wgslsmith_index_u32(u_input.e, 26u)]))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.e, 26u)], 1992f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 26u)], -446f))), !vec2<bool>(true, arg_0)))));
    let var_1 = (~(-firstTrailingBit(u_input.a.yx)) ^ _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(u_input.b.zz), u_input.a.zz), u_input.a.xz)) ^ countOneBits(select(vec2<i32>(-36806i, u_input.a.x), vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(0i, var_0.a.b)), vec2<bool>(select(arg_0, var_0.b, false), arg_0)));
    global1 = array<f32, 26>();
    var var_2 = arg_0;
    var var_3 = vec2<u32>(u_input.e, 2474u);
    return max(abs(vec2<u32>(_wgslsmith_add_u32(var_3.x >> (4294967295u % 32u), 11141u), firstTrailingBit(4294967295u & var_3.x))), vec2<u32>(~var_3.x << (_wgslsmith_add_u32(~u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_3.x), vec2<u32>(u_input.e, var_3.x))) % 32u), ~func_3(select(vec4<bool>(arg_0, false, true, true), vec4<bool>(true, false, false, false), false), Struct_3(-1284f, 1849f)).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.e, _wgslsmith_mod_u32(~u_input.e, 9118u), u_input.e | 1u, 1u);
    let var_1 = func_1(false) >> (_wgslsmith_clamp_vec2_u32(var_0.zz & func_3(vec4<bool>(true, true, true, true), Struct_3(global1[_wgslsmith_index_u32(u_input.e, 26u)], -553f)).zx, _wgslsmith_clamp_vec2_u32(var_0.ww, var_0.yw, select(var_0.zz, vec2<u32>(4294967295u, 4294967295u), func_4(Struct_2(Struct_1(vec2<bool>(true, false), u_input.d), true), vec2<u32>(u_input.e, u_input.e), true, vec2<f32>(-1091f, global1[_wgslsmith_index_u32(var_0.x, 26u)])).a.a)), vec2<u32>(u_input.e, _wgslsmith_mod_u32(32780u >> (0u % 32u), 1u | u_input.e))) % vec2<u32>(32u));
    let var_2 = any(select(vec3<bool>(!(var_0.x != 23170u), true, false), !vec3<bool>(true, true, func_4(Struct_2(Struct_1(vec2<bool>(false, true), 20343i), true), vec2<u32>(var_1.x, 0u), false, vec2<f32>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)])).b), true));
    var var_3 = vec3<f32>(global1[_wgslsmith_index_u32(~(~u_input.e), 26u)], -1000f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u << (var_1.x % 32u), 1u, ~var_1.x), ~reverseBits(var_0.zyx)), 26u)])));
    global0 = array<Struct_1, 18>();
    var var_4 = func_4(func_4(func_4(func_4(func_4(Struct_2(Struct_1(vec2<bool>(var_2, var_2), u_input.c), var_2), vec2<u32>(27859u, 4294967295u), var_2, vec2<f32>(281f, 115f)), vec2<u32>(1u, var_0.x), !var_2, _wgslsmith_f_op_vec2_f32(ceil(var_3.yx))), vec2<u32>(var_1.x >> (4294967295u % 32u), var_1.x), select(any(vec4<bool>(false, var_2, true, false)), all(vec4<bool>(var_2, false, false, false)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(980f, var_3.x))))), _wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, var_1.x), var_1, true), countOneBits(~vec2<u32>(2820u, var_0.x))), !(!(!var_2)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1418f + 134f), -692f) * var_3.zy)), ~var_0.wy, ~abs(27235u) < (min(var_1.x, 75420u) << (var_1.x % 32u)), _wgslsmith_f_op_vec2_f32(-var_3.xz)).a;
    global0 = array<Struct_1, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.ywx << (~var_0.yzx % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 26u)] * -328f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(u_input.e, 26u)])))), _wgslsmith_f_op_f32(sign(713f))) * vec4<f32>(_wgslsmith_f_op_f32(581f * 1247f), _wgslsmith_f_op_f32(1285f - global1[_wgslsmith_index_u32(var_1.x, 26u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(17256u, 26u)]), _wgslsmith_f_op_f32(-var_3.x))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-164f, -737f)), _wgslsmith_f_op_f32(var_3.x - var_3.x))))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~4294967295u), 26u)]), -1315f));
}

