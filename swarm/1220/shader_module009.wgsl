struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: i32, arg_3: Struct_2) -> bool {
    var var_0 = i32(-1i) * -_wgslsmith_div_i32(~(i32(-1i) * -1i), _wgslsmith_mod_i32(arg_2, 0i));
    return false;
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = countOneBits((-u_input.a << (~arg_0 % 32u)) & (u_input.b >> (arg_0 % 32u)));
    global1 = array<Struct_3, 27>();
    global0 = Struct_2(_wgslsmith_f_op_f32(-global0.a));
    var var_1 = max(min(min(~(-vec4<i32>(u_input.a, 10219i, u_input.a, u_input.b)), ~(vec4<i32>(73396i, u_input.b, 36527i, 1i) | vec4<i32>(1i, u_input.a, 2147483647i, var_0))), -_wgslsmith_add_vec4_i32(~vec4<i32>(-2147483647i, var_0, -36547i, var_0), vec4<i32>(var_0, -1i, var_0, var_0))), -(~vec4<i32>(_wgslsmith_mod_i32(var_0, 44361i), ~12016i, var_0, -1i)));
    global0 = Struct_2(global0.a);
    return min(31035u, min(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), ~4294967295u, 1u), ~1u) & abs(12413u));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_clamp_i32(min(_wgslsmith_dot_vec3_i32(arg_2.a, arg_2.a), _wgslsmith_mult_i32(u_input.a & (arg_1 & u_input.a), 4731i)), arg_2.a.x, ~0i);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a * 2462f))))));
    var var_2 = Struct_2(-2058f);
    var var_3 = true;
    global1 = array<Struct_3, 27>();
    return vec4<bool>(!func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-602f, global0.a, var_2.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a, -948f, var_1.a), vec3<f32>(global0.a, -922f, 694f), vec3<bool>(arg_2.c.x, arg_2.c.x, true))), !arg_2.c.x)), arg_2.a, 1i, Struct_2(_wgslsmith_f_op_f32(1374f * var_2.a))), arg_2.b, !all(select(vec3<bool>(arg_2.c.x, false, false), arg_2.c, arg_2.c)) | false, true);
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = select(!func_4(_wgslsmith_mult_u32(0u, func_3(0u)), _wgslsmith_add_i32(0i, arg_1.b & 49090i), Struct_1(vec3<i32>(u_input.b, arg_1.b, -58046i) ^ vec3<i32>(arg_1.b, u_input.a, arg_1.b), false, select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), arg_0), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, 2147483647i), vec2<i32>(-30884i, arg_1.b)))), !(!select(!vec4<bool>(arg_0, arg_0, true, arg_0), !vec4<bool>(arg_0, false, true, arg_0), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0, false, true, true), vec4<bool>(false, arg_0, true, arg_0)))), all(!select(func_4(37510u, -2147483647i, Struct_1(vec3<i32>(arg_1.b, arg_1.b, 2147483647i), arg_0, vec3<bool>(true, false, arg_0), vec4<u32>(4294967295u, 1u, 17574u, 1u), u_input.a)).zzw, !vec3<bool>(true, arg_0, arg_0), func_4(4294967295u, arg_1.b, Struct_1(vec3<i32>(-2627i, -41559i, -1i), true, vec3<bool>(arg_0, false, false), vec4<u32>(1u, 1u, 17986u, 1u), u_input.a)).wyx)));
    var_0 = func_4(1u, _wgslsmith_clamp_i32(select(arg_1.b, ~(~2649i), (1223f >= global0.a) || arg_0), _wgslsmith_div_i32(countOneBits(-44391i), max(i32(-1i) * -1i, arg_1.b)), u_input.a), Struct_1(vec3<i32>(countOneBits(~u_input.a), arg_1.b, ~11226i), !var_0.x, vec3<bool>(!(false & arg_0), arg_0, true), vec4<u32>(1u, 1u, 1u, 1u), select(-2147483647i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, arg_1.b, -22437i), vec4<i32>(u_input.b, arg_1.b, 2147483647i, arg_1.b)), ~arg_1.b, func_1(vec3<f32>(-1000f, arg_1.a.a, 158f), select(vec3<i32>(-1072i, u_input.b, 19406i), vec3<i32>(-1i, arg_1.b, -18881i), var_0.wzz), countOneBits(u_input.b), Struct_2(368f)))));
    let var_1 = 0u;
    let var_2 = !(!vec3<bool>((global0.a > arg_1.a.a) && func_4(49598u, u_input.b, Struct_1(vec3<i32>(-45370i, -51404i, arg_1.b), arg_0, vec3<bool>(arg_0, true, false), vec4<u32>(0u, 25993u, 0u, 57748u), -1i)).x, (arg_1.a.a > -614f) | true, any(!vec3<bool>(var_0.x, var_0.x, arg_0))));
    global1 = array<Struct_3, 27>();
    return vec4<u32>(var_1, var_1, ~4294967295u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1 & var_1, 4294967295u ^ var_1, var_1, ~var_1)), max(firstTrailingBit(vec4<u32>(var_1, 0u, 67889u, var_1)), abs(vec4<u32>(82485u, var_1, var_1, 35073u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec4<bool>(select(any(vec4<bool>(false, true, false, true)), true, any(vec3<bool>(false, true, false))), select(true, false, false) | (u_input.b != 0i), false, func_1(vec3<f32>(1000f, -1138f, -880f), vec3<i32>(u_input.a, u_input.a, u_input.b), -2147483647i, Struct_2(global0.a)) & any(vec3<bool>(true, true, true))));
    var var_1 = Struct_2(-296f);
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global0.a))))), ~(-u_input.a) >> (4294967295u % 32u));
    global1 = array<Struct_3, 27>();
    var var_3 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~func_2(true, global1[_wgslsmith_index_u32(4294967295u, 27u)]), ~vec4<u32>(0u, 12383u, 35524u, 22329u)), vec4<u32>(~func_3(12707u), ~func_3(89255u), _wgslsmith_div_u32(min(35008u, 1u), firstLeadingBit(37075u)), 1u));
    var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(select(~(~var_3.yz), ~_wgslsmith_mod_vec2_u32(var_3.zw, var_3.yz), var_0), func_2(_wgslsmith_f_op_f32(trunc(1039f)) == _wgslsmith_f_op_f32(-var_1.a), Struct_3(Struct_2(1177f), -15278i)).ww), var_3.x, _wgslsmith_mult_u32(36123u, ~_wgslsmith_dot_vec3_u32(var_3.xyz, func_2(var_0, global1[_wgslsmith_index_u32(var_3.x, 27u)]).yww)), 4294967295u);
    let var_4 = func_4(~(~(~var_3.x)), 1i, Struct_1(vec3<i32>(abs(~1i), i32(-1i) * -2147483647i, 1i), var_0, select(!select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, false, true), var_0), !(!vec3<bool>(var_0, false, true)), true || var_0), ~vec4<u32>(31748u >> (var_3.x % 32u), 0u, var_3.x, _wgslsmith_add_u32(0u, 20337u)), _wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, u_input.a), vec2<i32>(u_input.b, u_input.b)) ^ -25550i))).wy;
    global0 = var_2.a;
    let var_5 = vec4<bool>(any(select(func_4(1u, -u_input.a, Struct_1(vec3<i32>(1i, -1i, 0i), var_4.x, vec3<bool>(true, false, false), vec4<u32>(var_3.x, 0u, var_3.x, var_3.x), u_input.b)).zyw, select(select(vec3<bool>(var_0, false, false), vec3<bool>(true, false, true), vec3<bool>(false, var_0, var_0)), vec3<bool>(var_4.x, true, var_4.x), !vec3<bool>(false, var_0, var_4.x)), select(false, true, true) & true)), all(vec3<bool>(var_0, var_4.x && false, true)) || func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, var_2.a.a, var_1.a)), ~vec3<i32>(u_input.a, -2147483647i, var_2.b), var_2.b, var_2.a), all(var_4), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec2_u32(var_3.wx, vec2<u32>(var_3.x, var_3.x))), var_3.x, _wgslsmith_dot_vec3_u32(~var_3.zwx, ~(vec3<u32>(0u, var_3.x, 4294967295u) | vec3<u32>(var_3.x, var_3.x, 1u)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(-1518f * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -730f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(154f))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_2.a.a)), 748f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_div_f32(var_2.a.a, global0.a), true))))));
}

