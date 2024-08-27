struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<u32, 27> = array<u32, 27>(1u, 1u, 52604u, 0u, 43231u, 39619u, 0u, 36728u, 39119u, 24907u, 4294967295u, 30313u, 0u, 0u, 15583u, 15384u, 26041u, 38425u, 4294967295u, 4294967295u, 90678u, 4294967295u, 24278u, 1u, 45377u, 4294967295u, 67140u);

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(!(!global2.a.a) && ((all(vec4<bool>(global2.a.a, true, global2.a.a, global2.b.a)) != any(vec2<bool>(false, global2.a.a))) | !(global2.a.a != global2.b.a)));
    var var_1 = select(vec4<bool>(var_0.a || !(!global2.a.a), var_0.a, var_0.a, any(vec2<bool>(global2.e > global2.d.x, global2.b.a & global2.b.a))), select(select(vec4<bool>(var_0.a, !global2.b.a, false, var_0.a), !vec4<bool>(var_0.a, global2.a.a, global2.b.a, false), select(!vec4<bool>(var_0.a, true, true, true), select(vec4<bool>(global2.b.a, global2.b.a, global2.a.a, false), vec4<bool>(var_0.a, global2.b.a, global2.b.a, global2.a.a), global2.b.a), var_0.a)), select(select(select(vec4<bool>(var_0.a, false, true, false), vec4<bool>(false, var_0.a, var_0.a, true), vec4<bool>(var_0.a, global2.b.a, global2.a.a, global2.a.a)), select(vec4<bool>(true, var_0.a, var_0.a, var_0.a), vec4<bool>(var_0.a, true, var_0.a, true), true), true), select(select(vec4<bool>(true, global2.a.a, global2.a.a, var_0.a), vec4<bool>(global2.b.a, global2.a.a, global2.a.a, true), true), vec4<bool>(false, true, var_0.a, var_0.a), all(vec2<bool>(true, false))), -1327f != _wgslsmith_f_op_f32(ceil(global2.e))), global2.e == global2.e), global2.a.a);
    let var_2 = ~global1[_wgslsmith_index_u32(4782u, 27u)];
    global2 = Struct_2(global2.b, Struct_1(any(select(var_1.xzx, !var_1.wwy, all(vec2<bool>(var_1.x, var_1.x))))), vec4<i32>(_wgslsmith_dot_vec4_i32(global2.c, ~(-global2.c)), -abs(u_input.a.x << (global1[_wgslsmith_index_u32(0u, 27u)] % 32u)), -2147483647i, -1i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.d * global2.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-766f, 540f, 744f) * vec3<f32>(global2.e, global2.d.x, 1000f))) + global2.d)), -1526f);
    var var_3 = Struct_1(!(1u < _wgslsmith_dot_vec3_u32(u_input.c.zyx, select(u_input.c.xyz, vec3<u32>(1u, u_input.b, u_input.b), true))));
    return var_1.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: i32, arg_3: i32) -> vec4<i32> {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_mod_i32(~arg_0.x | _wgslsmith_div_i32(-2147483647i, min(~arg_3, arg_3)), _wgslsmith_sub_i32(1i, ~_wgslsmith_mult_i32(~(-1866i), ~(-15323i))));
    global2 = Struct_2(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.x, arg_3, arg_2), vec4<i32>(arg_3, 2147483647i, arg_2, 37978i)), _wgslsmith_mod_i32(-2147483647i, 5169i), ~global2.c.x) >= arg_0.x), global2.b, select(_wgslsmith_mod_vec4_i32(-global2.c, vec4<i32>(0i, ~(-24835i), ~1i, select(39050i, arg_2, global2.b.a))), _wgslsmith_mult_vec4_i32(firstTrailingBit(global2.c), firstLeadingBit(vec4<i32>(arg_3, var_1, arg_3, 0i)) | vec4<i32>(global2.c.x, arg_2, arg_0.x, arg_3)), !select(select(vec4<bool>(global2.a.a, false, true, true), vec4<bool>(false, true, global2.b.a, global2.b.a), vec4<bool>(false, true, global2.a.a, false)), !vec4<bool>(true, global2.a.a, false, true), select(vec4<bool>(global2.b.a, global2.a.a, global2.a.a, false), vec4<bool>(true, global2.a.a, global2.b.a, false), vec4<bool>(global2.a.a, true, global2.b.a, false)))), _wgslsmith_f_op_vec3_f32(round(arg_1.xxx)), global2.d.x);
    var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 27u)];
    global1 = array<u32, 27>();
    return select(~reverseBits(global2.c | vec4<i32>(-2147483647i, 0i, arg_0.x, global2.c.x)) | (vec4<i32>(-1i) * -(~global2.c)), -_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -1i, _wgslsmith_mod_i32(var_1, arg_3), _wgslsmith_div_i32(arg_3, -29742i)), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, -15079i), -2188i, -17887i, global2.c.x)), func_3());
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    global0 = true;
    global2 = Struct_2(global3[_wgslsmith_index_u32(u_input.c.x, 16u)], arg_2.a, ~func_2(-_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.c.x, 26583i), arg_2.c.xx), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d.x, 1142f, arg_2.e, -742f) * vec4<f32>(485f, 910f, 1046f, arg_1.e)))), _wgslsmith_add_i32(-arg_2.c.x, 1i), -1i), _wgslsmith_f_op_vec3_f32(arg_1.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e, -1671f, arg_0.d.x)))) - _wgslsmith_f_op_vec3_f32(exp2(global2.d)))), _wgslsmith_f_op_f32(321f - 1122f));
    global3 = array<Struct_1, 16>();
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 24136u, 43459u ^ global1[_wgslsmith_index_u32(u_input.b, 27u)]), ~u_input.b & _wgslsmith_sub_u32(u_input.c.x, global1[_wgslsmith_index_u32(53486u, 27u)]), 0u), select(abs(u_input.c.zyw), ~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(u_input.c.x, 27u)], u_input.c.x), vec3<bool>(arg_1.a.a, true, any(vec2<bool>(arg_2.a.a, true)))) >> (((u_input.c.zxx | select(u_input.c.yyz, u_input.c.zww, true)) | min(select(u_input.c.xzx, vec3<u32>(global1[_wgslsmith_index_u32(0u, 27u)], 1u, 1u), arg_0.b.a), vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], 1u, 0u))) % vec3<u32>(32u)));
    global2 = Struct_2(arg_2.a, arg_1.b, vec4<i32>(16570i, _wgslsmith_dot_vec3_i32(vec3<i32>(abs(arg_0.c.x), _wgslsmith_mod_i32(15802i, u_input.a.x), ~(-8879i)), ~vec3<i32>(arg_0.c.x, -28180i, 17892i)), -abs(global2.c.x), 1i), vec3<f32>(_wgslsmith_f_op_f32(round(1361f)), _wgslsmith_f_op_f32(-1322f * _wgslsmith_f_op_f32(f32(-1f) * -617f)), 991f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * arg_2.e) * arg_0.e)));
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: i32) -> Struct_1 {
    global0 = !((_wgslsmith_clamp_i32(~arg_2, 3104i, arg_2) >= -arg_1) | !(global2.a.a | !global2.a.a));
    var var_0 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4805u, u_input.b, global1[_wgslsmith_index_u32(16168u, 27u)]), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)], u_input.c.x)), _wgslsmith_add_u32(1u, 69209u), select(global2.a.a, false, true)), 27u)] <= (_wgslsmith_mod_u32(72512u, 23038u) & u_input.c.x)), Struct_1(global2.a.a), global2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.d) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.e, global2.e, global2.e), vec3<f32>(420f, global2.e, -712f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -717f), _wgslsmith_f_op_f32(-global2.e), global2.d.x)) + _wgslsmith_f_op_vec3_f32(global2.d + _wgslsmith_f_op_vec3_f32(vec3<f32>(187f, global2.d.x, global2.e) - _wgslsmith_f_op_vec3_f32(global2.d - vec3<f32>(global2.d.x, global2.d.x, 483f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-627f, -1245f))));
    let var_1 = !(!global2.a.a);
    global1 = array<u32, 27>();
    var var_2 = Struct_2(Struct_1(global2.a.a), Struct_1(all(vec2<bool>(false, 1034f <= var_0.e))), -(vec4<i32>(-1i) * -var_0.c), var_0.d, global2.e);
    return Struct_1(all(select(arg_0, select(vec2<bool>(var_0.b.a, var_2.a.a), arg_0, !arg_0), var_1)));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    global0 = any(vec2<bool>(!(select(arg_3.a, true, arg_3.a) | true), arg_3.a));
    global2 = Struct_2(func_4(vec2<bool>(false, true), func_2(u_input.a ^ u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1550f, -102f, 404f, global2.d.x)) * vec4<f32>(1177f, -1000f, 276f, 1000f)), -54673i, select(func_2(vec2<i32>(-17918i, global2.c.x), vec4<f32>(1000f, -314f, global2.e, 162f), 2147483647i, -1i).x, global2.c.x, !arg_3.a)).x, 13811i), func_4(vec2<bool>(false, all(select(vec2<bool>(true, arg_3.a), vec2<bool>(arg_3.a, global2.a.a), global2.a.a))), firstLeadingBit(arg_1), arg_0 | global2.c.x), firstLeadingBit(global2.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-774f, _wgslsmith_f_op_f32(min(-184f, 1233f)), _wgslsmith_f_op_f32(global2.e + global2.e)), global2.d))), -627f);
    var var_0 = -arg_0;
    var var_1 = vec3<u32>(u_input.c.x, u_input.b, 1u);
    var_1 = u_input.c.wxw;
    return Struct_2(arg_3, global2.b, func_2(vec2<i32>(-42198i, countOneBits(39729i) ^ (arg_1 >> (global1[_wgslsmith_index_u32(var_1.x, 27u)] % 32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-519f, global2.e, -269f, global2.d.x))), vec4<f32>(global2.d.x, -1578f, _wgslsmith_f_op_f32(ceil(-1471f)), 639f), true)), 1i, -countOneBits(min(1i, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global2.d))))), _wgslsmith_f_op_f32(trunc(1255f)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> StorageBuffer {
    global1 = array<u32, 27>();
    global3 = array<Struct_1, 16>();
    let var_0 = Struct_1(false);
    var var_1 = arg_0;
    var var_2 = 4294967295u;
    return StorageBuffer(_wgslsmith_f_op_f32(-824f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - var_1.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~133813u, firstLeadingBit(4294967295u), 1u);
    let var_1 = global2.c.xx;
    let var_2 = _wgslsmith_div_i32(-20609i, -_wgslsmith_div_i32(-var_1.x, -38235i)) << (var_0.x % 32u);
    let x = u_input.a;
    s_output = func_6(func_5(var_1.x, global2.c.x, u_input.a.x, func_4(select(select(vec2<bool>(global2.b.a, global2.b.a), vec2<bool>(true, true), true), !vec2<bool>(true, global2.a.a), func_1(Struct_2(global2.b, Struct_1(global2.a.a), vec4<i32>(u_input.a.x, -32309i, 5049i, -23132i), vec3<f32>(-1623f, -489f, -2284f), global2.e), Struct_2(global3[_wgslsmith_index_u32(104u, 16u)], Struct_1(global2.b.a), global2.c, global2.d, global2.e), Struct_2(Struct_1(global2.a.a), global2.a, global2.c, global2.d, global2.d.x))), _wgslsmith_mult_i32(abs(u_input.a.x), -8738i), _wgslsmith_dot_vec3_i32(global2.c.yyy, firstLeadingBit(global2.c.xww)))), global3[_wgslsmith_index_u32(13037u, 16u)]);
}

