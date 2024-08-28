struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: vec2<bool>,
    d: Struct_4,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, -438f, true);

var<private> global1: array<bool, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    global0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~max(u_input.a, u_input.a), vec3<u32>(_wgslsmith_sub_u32(63987u, u_input.a.x), 20073u, global0.a)), _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(~4294967295u, firstLeadingBit(1610u)))), -604f, !global0.c);
    var var_0 = Struct_5(Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(-884f - 280f), _wgslsmith_f_op_f32(906f + global0.b)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -451f, global0.b), vec3<f32>(global0.b, -1711f, global0.b), global0.c)), vec3<f32>(1326f, 1000f, arg_1)))), 1848f, vec2<bool>(false, global1[_wgslsmith_index_u32(global0.a, 3u)]), Struct_4(global0.a, Struct_1(_wgslsmith_div_u32(11608u, ~global0.a), 1325f, global1[_wgslsmith_index_u32(1u >> (u_input.a.x % 32u), 3u)]), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(664f, global0.b, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.b))), 1740f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-148f)))), ~u_input.a.x), vec4<i32>(abs(1i), arg_0.x, u_input.b, ~arg_0.x));
    let var_1 = var_0.d.b;
    return global0.b;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: f32) -> u32 {
    var var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2.a))), arg_2.a));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))) + _wgslsmith_div_f32(var_0.a.x, 1f));
    global0 = Struct_1(18225u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1694f), _wgslsmith_f_op_f32(865f * _wgslsmith_f_op_f32(abs(arg_2.a.x))), global1[_wgslsmith_index_u32(min(u_input.a.x, 33086u), 3u)])))), false);
    global0 = Struct_1(_wgslsmith_mult_u32(global0.a, firstLeadingBit(~u_input.a.x) << (~(arg_1.x >> (4294967295u % 32u)) % 32u)), _wgslsmith_f_op_f32(abs(982f)), global0.c);
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, arg_2.a.x, 956f))), vec3<f32>(global0.b, arg_3, 410f))))));
    return global0.a;
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = abs(-16468i);
    global0 = Struct_1(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), global0.b, vec4<bool>(arg_0.x, false, arg_0.x, true))), global0.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 402f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1781f, global0.b), vec2<f32>(-1699f, 592f)))), abs(u_input.a.yx), Struct_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(449f, 756f, 442f)))), global0.b), global0.b, global1[_wgslsmith_index_u32(1u, 3u)]);
    global0 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.a.yz, ~vec2<u32>(17683u, 39868u)), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * -113f) + _wgslsmith_f_op_f32(max(680f, -860f))), arg_0.x);
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(~(~select(vec4<u32>(u_input.a.x, global0.a, 1u, global0.a), vec4<u32>(u_input.a.x, 0u, global0.a, 1u), vec4<bool>(false, true, global0.c, false))), ~vec4<u32>(u_input.a.x, abs(global0.a), 4055u, _wgslsmith_div_u32(u_input.a.x, global0.a))), 1472f, !(!(false || global0.c)) | arg_0.x);
    global1 = array<bool, 3>();
    return Struct_1(_wgslsmith_dot_vec2_u32(~u_input.a.xy, vec2<u32>(u_input.a.x, countOneBits(~4294967295u))), global0.b, true);
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, arg_2.b) * vec2<f32>(arg_2.b, 514f)))), vec2<u32>(21090u, select(4294967295u, u_input.a.x, arg_2.c)), Struct_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b, global0.b, 2707f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.b, arg_2.b)) - arg_2.b)), 36028u), select(0u, global0.a & ~24003u, ~arg_2.a == ~0u) | global0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-544f, -718f, global0.b, global0.b)) + vec4<f32>(global0.b, global0.b, -224f, global0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, global0.b, 1286f, -961f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -599f), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(max(global0.b, global0.b)))))));
    global0 = arg_2;
    var var_2 = -(~select(-abs(vec3<i32>(arg_1.x, arg_1.x, -2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.x, arg_0, -37984i), vec3<i32>(u_input.b, -39154i, 11670i)) | select(vec3<i32>(1i, arg_1.x, arg_1.x), vec3<i32>(arg_1.x, arg_1.x, -2147483647i), true), vec3<bool>(arg_2.c, any(vec2<bool>(global0.c, global0.c)), true)));
    global1 = array<bool, 3>();
    return Struct_4(arg_2.a, arg_2, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1) * vec4<f32>(-610f, var_1.x, _wgslsmith_div_f32(-409f, -599f), _wgslsmith_f_op_f32(floor(global0.b)))))), global0.a);
}

fn func_6(arg_0: Struct_4) -> Struct_2 {
    var var_0 = reverseBits(~(~(~(u_input.a.yx ^ u_input.a.zz))));
    let var_1 = ~(~u_input.a.zz);
    let var_2 = min(-(~vec3<i32>(~u_input.b, u_input.b, u_input.b)), ~vec3<i32>(-firstTrailingBit(u_input.b), u_input.b, u_input.b));
    global0 = Struct_1(~(~global0.a), _wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(1275f - -1519f)), !(1u > ~u_input.a.x));
    var var_3 = arg_0;
    return Struct_2(_wgslsmith_div_u32(var_3.b.a | _wgslsmith_dot_vec3_u32(abs(u_input.a), vec3<u32>(5715u, global0.a, 1u)), ~(~_wgslsmith_clamp_u32(u_input.a.x, var_0.x, 4294967295u))), Struct_1(~1u, 753f, false));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = func_6(func_5(_wgslsmith_mod_i32(arg_0, ~u_input.b), vec2<i32>(max(~arg_0, -1i), arg_0), func_2(!select(vec2<bool>(global0.c, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec2<bool>(false, false), false))));
    var var_1 = 2157f;
    var_1 = global0.b;
    return Struct_1(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-770f, _wgslsmith_f_op_f32(-arg_1))), vec2<u32>(~select(u_input.a.x, 0u, var_0.b.c), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a, 12673u, 1u, 68222u) >> (vec4<u32>(u_input.a.x, u_input.a.x, 234u, 26983u) % vec4<u32>(32u)), ~vec4<u32>(0u, 0u, u_input.a.x, 1u))), Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(591f, 933f, global0.b), vec3<f32>(global0.b, var_0.b.b, -1036f))))), _wgslsmith_f_op_f32(trunc(func_2(!vec2<bool>(false, global1[_wgslsmith_index_u32(global0.a, 3u)])).b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(314f * global0.b)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(251f + var_0.b.b) * -978f))), any(!select(vec2<bool>(var_0.b.c, false), select(vec2<bool>(global0.c, true), vec2<bool>(true, var_0.b.c), vec2<bool>(true, global0.c)), global1[_wgslsmith_index_u32(firstLeadingBit(global0.a), 3u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~0i, global0.b);
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), u_input.a.yz)), min(~vec2<u32>(62875u, var_0.a), ~u_input.a.yz)), vec2<u32>(abs(5888u), ~u_input.a.x) & vec2<u32>(1533u, 48969u >> (u_input.a.x % 32u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -548f)))), !(!((global0.c || false) & !global1[_wgslsmith_index_u32(var_0.a, 3u)])));
    global0 = Struct_1(~_wgslsmith_add_u32(1u, firstLeadingBit(~1u)), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-717f - _wgslsmith_f_op_f32(-var_0.b)) * _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(min(global0.b, -910f))))), var_0.c);
    let var_1 = Struct_5(Struct_3(vec3<f32>(_wgslsmith_div_f32(var_0.b, -1307f), -194f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b))), var_0.b), !select(!vec2<bool>(true, var_0.c), vec2<bool>(func_2(vec2<bool>(global0.c, var_0.c)).c, true), var_0.c && !global0.c), Struct_4(~(~u_input.a.x << (_wgslsmith_mult_u32(37986u, global0.a) % 32u)), Struct_1(~_wgslsmith_div_u32(29971u, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], true)) & !global1[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_div_vec4_f32(vec4<f32>(-289f, 1485f, _wgslsmith_f_op_f32(exp2(global0.b)), 850f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(169f, -1000f, global0.b, -613f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2348f, var_0.b, -569f, 774f)))), ~(~0u) ^ ~_wgslsmith_mod_u32(var_0.a, 47285u)), vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(-1i, _wgslsmith_sub_i32(u_input.b, u_input.b))), ~(~24957i), u_input.b));
    var var_2 = func_5(-var_1.e.x, vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -18199i, var_1.e.x, u_input.b), _wgslsmith_mult_i32(u_input.b, var_1.e.x)), Struct_1(_wgslsmith_mod_u32(firstTrailingBit(select(var_1.d.a, 6221u, global1[_wgslsmith_index_u32(u_input.a.x, 3u)])), ~(~var_1.d.b.a)), _wgslsmith_f_op_f32(-446f * var_1.d.c.x), global1[_wgslsmith_index_u32(global0.a, 3u)])).c.wyz;
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(func_5(-20907i, vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.b), u_input.b), var_1.d.b).c.xzw)), 1890f, _wgslsmith_div_vec3_i32(var_1.e.wyx, abs(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_1.e.x, u_input.b), var_1.e.wxz)) << (vec3<u32>(var_3, 12147u, ~0u) % vec3<u32>(32u))));
}

