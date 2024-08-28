struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(52814u, 13942u, 104047u, 4294967295u)), Struct_1(vec4<u32>(93991u, 2067u, 1u, 58584u)));

var<private> global1: array<i32, 24> = array<i32, 24>(-52111i, 1i, 1i, 7038i, -23231i, -44391i, 0i, i32(-2147483648), -2482i, 2147483647i, -60538i, -132i, 3442i, 2147483647i, 7539i, 7705i, 0i, 2147483647i, 2147483647i, 44116i, 0i, 8354i, 2147483647i, 1i);

var<private> global2: array<bool, 29>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(8041u, 28215u, 0u, 6550u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = global0.a.a.xx;
    let var_1 = ~(~vec4<u32>(48367u, max(~10630u, ~var_0.x), 40596u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 5070u, 31539u), vec3<u32>(4294967295u, var_0.x, global3.a.x)) % 32u), 1u));
    global3 = Struct_1(vec4<u32>(u_input.a.x, u_input.c, 53930u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(48330u, 32967u) >> (var_1.wz % vec2<u32>(32u)))));
    let var_2 = Struct_2(global0.b, Struct_1(vec4<u32>(~abs(1u), 1u, select(_wgslsmith_div_u32(57088u, global0.b.a.x), abs(43371u), global2[_wgslsmith_index_u32(0u, 29u)]), u_input.c)));
    var var_3 = any(!arg_0.a.zy);
    return _wgslsmith_f_op_f32(min(-1796f, -1387f));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(vec4<f32>(-1972f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<bool>(false, true, true)))) * _wgslsmith_div_f32(_wgslsmith_div_f32(471f, -564f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f) * _wgslsmith_f_op_f32(select(821f, 281f, false)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(446f - 1808f))))));
    let var_1 = any(select(vec4<bool>(!(u_input.c >= global0.a.a.x), global2[_wgslsmith_index_u32(select(global0.b.a.x, u_input.c, false) ^ _wgslsmith_div_u32(15239u, 4294967295u), 29u)], true | global2[_wgslsmith_index_u32(global0.a.a.x, 29u)], all(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(50665u, 29u)], false, global2[_wgslsmith_index_u32(global3.a.x, 29u)]))), select(!vec4<bool>(global2[_wgslsmith_index_u32(46266u, 29u)], false, true, false), select(vec4<bool>(global2[_wgslsmith_index_u32(83465u, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)], false, true), !vec4<bool>(true, global2[_wgslsmith_index_u32(global0.b.a.x, 29u)], global2[_wgslsmith_index_u32(0u, 29u)], global2[_wgslsmith_index_u32(u_input.a.x, 29u)]), !vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], true, true)), select(!vec4<bool>(global2[_wgslsmith_index_u32(arg_1.x, 29u)], false, global2[_wgslsmith_index_u32(arg_1.x, 29u)], global2[_wgslsmith_index_u32(arg_0.a.x, 29u)]), vec4<bool>(global2[_wgslsmith_index_u32(global3.a.x, 29u)], true, global2[_wgslsmith_index_u32(u_input.c, 29u)], global2[_wgslsmith_index_u32(global0.a.a.x, 29u)]), any(vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0.a.x, 29u)], false)))), false));
    let var_2 = Struct_4(!(!select(!vec3<bool>(var_1, true, var_1), vec3<bool>(false, false, global2[_wgslsmith_index_u32(1u, 29u)]), vec3<bool>(var_1, global2[_wgslsmith_index_u32(1u, 29u)], global2[_wgslsmith_index_u32(u_input.c, 29u)]))));
    let var_3 = !select(vec4<bool>(any(!var_2.a.zy), var_1, global2[_wgslsmith_index_u32(abs(global0.b.a.x), 29u)], !(641f > var_0.a.x)), vec4<bool>(!(!global2[_wgslsmith_index_u32(arg_1.x, 29u)]), all(var_2.a), true, var_2.a.x), true);
    let var_4 = Struct_5(var_0.a.x, ~(vec3<u32>(~0u, global0.a.a.x, firstLeadingBit(1u)) ^ (vec3<u32>(arg_1.x, 36802u, 1u) >> (abs(arg_1) % vec3<u32>(32u)))), ~(~(-global1[_wgslsmith_index_u32(0u, 24u)]) >> (min(abs(global3.a.x), abs(5288u)) % 32u)));
    return Struct_1(~reverseBits(select(~global3.a, ~arg_0.a, vec4<bool>(true, var_2.a.x, global2[_wgslsmith_index_u32(global3.a.x, 29u)], var_3.x))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(~global3.a.x, ~abs(u_input.a.x)), global0.a.a.wx);
    global2 = array<bool, 29>();
    var var_1 = global0.a.a.x;
    var var_2 = Struct_2(Struct_1(global3.a), global0.a);
    var var_3 = -207f;
    return arg_0;
}

fn func_1() -> Struct_3 {
    global0 = Struct_2(global0.b, global0.b);
    global0 = func_4(Struct_2(func_2(Struct_1(~vec4<u32>(global3.a.x, 8364u, 1u, 0u)), _wgslsmith_sub_vec3_u32(global0.a.a.xyx >> (vec3<u32>(global0.a.a.x, 4294967295u, global3.a.x) % vec3<u32>(32u)), ~global0.a.a.wwx)), func_2(global0.b, ~vec3<u32>(4294967295u, 62950u, u_input.a.x))), !global2[_wgslsmith_index_u32(~u_input.a.x, 29u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(702f)), _wgslsmith_f_op_f32(min(802f, -1850f)), _wgslsmith_f_op_f32(ceil(-651f))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(1731f)), _wgslsmith_f_op_f32(f32(-1f) * -364f), 1692f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(164f, -913f, 235f), vec3<f32>(-842f, 1269f, 1132f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-719f, 1202f, -1124f)))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-272f, -2151f, 141f)))))));
    var var_0 = min(-16638i, _wgslsmith_clamp_i32(-18106i, 1i, _wgslsmith_sub_i32(u_input.b, 1i)) | -1i) | global1[_wgslsmith_index_u32(firstLeadingBit(~(~_wgslsmith_dot_vec3_u32(global0.a.a.yzw, global3.a.xyz))), 24u)];
    var var_1 = func_4(func_4(Struct_2(Struct_1(func_4(Struct_2(global0.a, global0.a), global2[_wgslsmith_index_u32(4294967295u, 29u)], vec3<f32>(-697f, 269f, -672f)).a.a), global0.b), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(969f - -997f), _wgslsmith_f_op_f32(ceil(1698f)), -1265f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, -1409f, 787f))))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -460f, 1894f), vec3<f32>(-183f, 1133f, -590f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1246f, -553f, 767f)))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-192f, 1943f, -335f), vec3<f32>(315f, 1118f, -1000f)) * vec3<f32>(815f, 1219f, -1441f))))));
    global2 = array<bool, 29>();
    return Struct_3(vec4<f32>(237f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_4(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 29u)], global2[_wgslsmith_index_u32(u_input.a.x, 29u)], false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1814f + 1065f), 1f, global2[_wgslsmith_index_u32(u_input.c, 29u)]))), _wgslsmith_f_op_f32(ceil(214f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 18206i;
    let var_1 = global0.a;
    global2 = array<bool, 29>();
    var var_2 = Struct_2(global0.b, Struct_1(select(var_1.a, global3.a, vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(14976u, 29u)] | false))));
    let var_3 = func_1();
    let var_4 = true;
    var var_5 = true && (false & all(select(select(vec3<bool>(var_4, global2[_wgslsmith_index_u32(global3.a.x, 29u)], false), vec3<bool>(global2[_wgslsmith_index_u32(10334u, 29u)], global2[_wgslsmith_index_u32(4294967295u, 29u)], false), vec3<bool>(var_4, var_4, true)), select(vec3<bool>(false, var_4, true), vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 29u)], var_4), global2[_wgslsmith_index_u32(4294967295u, 29u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(var_1.a.x, 29u)], var_4))));
    let var_6 = ~(vec2<i32>(u_input.b, 1i) & max(vec2<i32>(min(global1[_wgslsmith_index_u32(global3.a.x, 24u)], global1[_wgslsmith_index_u32(global3.a.x, 24u)]), global1[_wgslsmith_index_u32(var_1.a.x, 24u)] << (global3.a.x % 32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(23772u, 24u)], u_input.b), vec2<i32>(global1[_wgslsmith_index_u32(global3.a.x, 24u)], -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(21020u, select(_wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(global0.a.a.wzz, var_2.a.a.wwy)), func_4(func_4(Struct_2(Struct_1(vec4<u32>(0u, 1u, 0u, 4294967295u)), var_2.a), false, vec3<f32>(-672f, 1219f, var_3.a.x)), var_6.x <= u_input.b, _wgslsmith_f_op_vec3_f32(-var_3.a.ywy)).b.a.x, all(vec3<bool>(true, true, true)))), ~firstTrailingBit(44746u), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.a.ywy >> (var_1.a.xyy % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, global3.a.x, 4294967295u), vec3<u32>(4294967295u, 1u, 1u))), ~vec3<u32>(57726u, u_input.c, 4294967295u)));
}

