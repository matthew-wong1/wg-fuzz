struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(1315f, -396f), vec2<f32>(1188f, -1422f), vec2<f32>(-142f, 1817f), vec2<f32>(-2667f, -991f), vec2<f32>(-1035f, -1773f), vec2<f32>(-257f, 1000f), vec2<f32>(615f, 609f), vec2<f32>(1138f, 1069f), vec2<f32>(-1144f, 1090f), vec2<f32>(873f, -416f), vec2<f32>(158f, -159f), vec2<f32>(-243f, -360f), vec2<f32>(-1338f, -1196f));

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<i32>, 27>;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> bool {
    global3 = array<vec3<i32>, 27>();
    var var_0 = false;
    let var_1 = Struct_2(Struct_1(global4.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(global4.d, 14u)], 1305f) * _wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(54329u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global4.c))))), (any(vec3<bool>(global4.c, false, global4.c)) || (global4.c || false)) && any(select(vec3<bool>(true, false, true), vec3<bool>(false, global4.c, global4.c), vec3<bool>(global4.c, false, false))), 0u, 21959i ^ u_input.a.x));
    var var_2 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(reverseBits(reverseBits(vec4<u32>(global2.x, var_1.a.d, global4.d, u_input.b.x))), max(min(vec4<u32>(u_input.b.x, var_1.a.d, 4294967295u, 4294967295u), vec4<u32>(31042u, 1u, global4.d, 0u)), reverseBits(vec4<u32>(51066u, var_1.a.d, global2.x, u_input.b.x)))), u_input.b.x);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1000f * -717f), global4.b, true, global4.d, _wgslsmith_add_i32(u_input.a.x, -23546i)));
    return true;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    global3 = array<vec3<i32>, 27>();
    global1 = array<vec2<f32>, 13>();
    global2 = vec4<u32>(28476u, arg_3.a.d, 4857u, _wgslsmith_mod_u32(_wgslsmith_add_u32(abs(global4.d), global2.x), ~(u_input.b.x | ~global4.d)));
    let var_0 = arg_3.a;
    let var_1 = global2.x;
    return vec2<bool>(all(select(vec2<bool>(any(vec4<bool>(var_0.c, arg_0, true, false)), true), select(vec2<bool>(true, true), select(vec2<bool>(global4.c, true), vec2<bool>(false, false), true), true), true && func_3())), var_0.c);
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = !func_2(893f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-751f - global0[_wgslsmith_index_u32(7795u, 14u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-764f, arg_1.x, global4.a, 1032f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1219f, -1278f, global0[_wgslsmith_index_u32(0u, 14u)], global4.a) - vec4<f32>(-1089f, global4.b.x, global4.a, global4.b.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global2.x, 14u)], 479f, global0[_wgslsmith_index_u32(53617u, 14u)], global0[_wgslsmith_index_u32(28893u, 14u)])), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1130f, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], -1050f, global0[_wgslsmith_index_u32(u_input.b.x, 14u)]))))), _wgslsmith_sub_i32(_wgslsmith_add_i32(global4.e, 1i) >> (firstLeadingBit(global4.d) % 32u), u_input.a.x), Struct_2(Struct_1(global4.a, _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(global2.x, 13u)] + global1[_wgslsmith_index_u32(23737u, 13u)]), true, ~1u, -3649i)));
    var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_1);
    global1 = array<vec2<f32>, 13>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 14u)] + arg_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1318f)), 299f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_1.x) + _wgslsmith_f_op_f32(849f * 1283f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(arg_0), 14u)] - _wgslsmith_f_op_f32(-509f * 1183f)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(min(global4.d, u_input.b.x), 14u)] - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 75580u, 27126u), 14u)] + global4.b.x)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1444f - _wgslsmith_f_op_f32(915f + 2110f))))));
    return Struct_1(-250f, global4.b, global4.c, u_input.b.x, abs(_wgslsmith_dot_vec3_i32(u_input.a.xxw, global3[_wgslsmith_index_u32(reverseBits(u_input.b.x), 27u)])));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(836f, 205f, true)), _wgslsmith_f_op_vec2_f32(-arg_2.b), !(firstLeadingBit(arg_1.a.d) < arg_2.d), arg_2.d, i32(-1i) * -((arg_1.a.e >> (global2.x % 32u)) & -1i));
    global1 = array<vec2<f32>, 13>();
    global3 = array<vec3<i32>, 27>();
    global3 = array<vec3<i32>, 27>();
    var var_1 = arg_3.a;
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.a.wy, Struct_2(func_1(~_wgslsmith_clamp_u32(global2.x, 1u, u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(global2.x, 14u)], -1455f)) * vec3<f32>(661f, -745f, global0[_wgslsmith_index_u32(1u, 14u)])))), Struct_1(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(46414u, 13u)], global4.b, vec2<bool>(true, func_2(false, vec4<f32>(1059f, 2133f, -612f, -681f), 22661i, Struct_2(Struct_1(1888f, vec2<f32>(global0[_wgslsmith_index_u32(3617u, 14u)], -646f), true, global2.x, -96685i))).x))), any(!func_2(false, vec4<f32>(global0[_wgslsmith_index_u32(56917u, 14u)], -597f, global4.a, 571f), global4.e, Struct_2(Struct_1(global4.a, vec2<f32>(300f, -485f), false, global2.x, 1842i)))), firstTrailingBit(_wgslsmith_sub_u32(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(1u, global2.x)))), func_1(global4.d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2767f, 535f, 588f))))).e), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-1395f)), global4.b, global4.c && (19044i > u_input.a.x), 13231u, -2147483647i)));
    var var_1 = abs(countOneBits(~(~u_input.b.yz))) & vec2<u32>(1u, 11153u);
    var var_2 = func_1(~global4.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 271f, var_0.b.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1383f, var_0.b.x, -1726f) - vec3<f32>(global0[_wgslsmith_index_u32(var_0.d, 14u)], -168f, -306f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-857f))))));
    global2 = firstLeadingBit(select(vec4<u32>(~50408u ^ var_1.x, 102658u, 67279u, var_2.d), ~vec4<u32>(842u, ~1u, global4.d, func_1(u_input.b.x, vec3<f32>(-220f, var_2.b.x, global4.a)).d), any(vec2<bool>(true, true))));
    var var_3 = -334f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, var_2.b.x, 1031f, var_0.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(395f, 167f, -1182f, -1848f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-115f, var_2.b.x, var_2.b.x, -1000f), vec4<f32>(-308f, -855f, 1209f, -935f), vec4<bool>(false, true, false, global4.c))))), vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(501f)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.d, 14u)] + var_0.b.x)), _wgslsmith_f_op_f32(step(global4.a, func_1(10633u, vec3<f32>(406f, -1993f, 431f)).a)), func_4(countOneBits(u_input.a.zy), Struct_2(Struct_1(997f, var_0.b, var_2.c, 6357u, -2147483647i)), var_0, Struct_2(Struct_1(-310f, vec2<f32>(global0[_wgslsmith_index_u32(var_1.x, 14u)], global4.a), var_0.c, var_2.d, global4.e))).b.x)), vec3<u32>(1u, 1u, 10701u), vec2<i32>(30887i, ~var_0.e), _wgslsmith_add_u32(max(global4.d, 1u), min(4294967295u, ~(~var_0.d))), var_2.d | ~global4.d);
}

