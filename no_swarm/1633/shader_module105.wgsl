struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: u32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(1163f, -1214f, 1465f), vec3<f32>(-1291f, 1820f, 1950f), vec3<f32>(1211f, 746f, 989f), vec3<f32>(-816f, -759f, 459f), vec3<f32>(1209f, -921f, -158f), vec3<f32>(761f, -447f, -2164f), vec3<f32>(303f, 1000f, -1257f), vec3<f32>(550f, -2178f, -947f), vec3<f32>(-887f, 1499f, 673f), vec3<f32>(798f, -1000f, 2045f), vec3<f32>(307f, 1000f, 1621f), vec3<f32>(-3726f, 199f, 620f), vec3<f32>(1000f, 1000f, -600f), vec3<f32>(593f, -1000f, 1442f), vec3<f32>(-1002f, 519f, -179f), vec3<f32>(-807f, 231f, -515f));

var<private> global1: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(27216u, 134085u, 55529u), vec3<u32>(1u, 34743u, 0u), vec3<u32>(0u, 23976u, 1423u), vec3<u32>(50888u, 2992u, 5800u), vec3<u32>(1u, 4294967295u, 32237u), vec3<u32>(0u, 48055u, 4294967295u), vec3<u32>(39260u, 0u, 1u), vec3<u32>(83758u, 22068u, 72550u), vec3<u32>(1u, 21215u, 4294967295u), vec3<u32>(4294967295u, 1u, 45702u), vec3<u32>(11867u, 0u, 4294967295u), vec3<u32>(29685u, 4294967295u, 24838u), vec3<u32>(0u, 0u, 24721u), vec3<u32>(6390u, 4294967295u, 21108u), vec3<u32>(4294967295u, 1u, 55611u), vec3<u32>(0u, 78551u, 4294967295u), vec3<u32>(75944u, 12039u, 1u), vec3<u32>(1u, 25386u, 22091u), vec3<u32>(0u, 22281u, 62314u), vec3<u32>(0u, 33779u, 1u), vec3<u32>(1u, 4344u, 16952u), vec3<u32>(63381u, 34280u, 24922u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(24090u, 4294967295u, 92542u), vec3<u32>(0u, 1u, 1938u), vec3<u32>(44789u, 19767u, 0u), vec3<u32>(5762u, 40028u, 0u), vec3<u32>(4294967295u, 55201u, 4294967295u), vec3<u32>(15667u, 24988u, 40880u), vec3<u32>(83464u, 4294967295u, 22209u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    global0 = array<vec3<f32>, 16>();
    var var_0 = false;
    let var_1 = true;
    let var_2 = u_input.c;
    global0 = array<vec3<f32>, 16>();
    return Struct_2(abs(-1579i));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_1.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1677f) + _wgslsmith_f_op_f32(arg_1.x * -146f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1.x)), arg_0))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1276f, 677f) + _wgslsmith_f_op_f32(1164f - arg_0))), _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -375f))))), vec3<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(-20713i, -35864i, arg_3.a, 63970i), vec4<i32>(arg_3.a, 2147483647i, 705i, -2147483647i)) | u_input.b.x, arg_3.a << (min(u_input.a.x, 17413u) % 32u), true), -21819i, u_input.b.x), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_3.a, -15848i, -27588i << (0u % 32u), arg_3.a)), vec4<i32>(arg_3.a, _wgslsmith_mod_i32(arg_3.a, u_input.b.x), arg_3.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 32307i, u_input.b.x) >> (u_input.a % vec3<u32>(32u)), ~vec3<i32>(-14307i, 5703i, u_input.b.x)))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, firstTrailingBit(0u & u_input.a.x)), ~u_input.a.x));
    let var_2 = var_0;
    var var_3 = u_input.b.x;
    var var_4 = Struct_4(global0[_wgslsmith_index_u32(~(~1u), 16u)]);
    return select(!vec3<bool>(!(true || var_1.a), ~2443i != -u_input.b.x, any(!vec4<bool>(false, arg_2, true, var_1.a))), select(select(vec3<bool>(u_input.a.x <= var_1.e, arg_2, all(vec2<bool>(var_1.a, false))), !vec3<bool>(true, arg_2, false), arg_2), select(vec3<bool>(var_1.a, !var_1.a, true), select(vec3<bool>(var_1.a, true, arg_2), select(vec3<bool>(true, false, var_1.a), vec3<bool>(true, var_1.a, false), false), arg_2), select(!vec3<bool>(var_1.a, false, false), !vec3<bool>(arg_2, false, arg_2), arg_2)), select(vec3<bool>(true, true, var_1.e > 4294967295u), select(!vec3<bool>(var_1.a, false, false), select(vec3<bool>(arg_2, var_1.a, arg_2), vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, true, true)), !vec3<bool>(true, false, arg_2)), select(vec3<bool>(true, true, true), !vec3<bool>(var_1.a, arg_2, true), true))), vec3<bool>(var_1.a, all(select(vec4<bool>(var_1.a, arg_2, false, false), vec4<bool>(arg_2, false, true, var_1.a), var_1.a)) | select(var_1.a, all(vec2<bool>(arg_2, var_1.a)), !arg_2), true));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = !(!select(vec2<bool>(true, true), !(!vec2<bool>(arg_0, false)), false));
    var var_1 = select(!(!select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, arg_0, arg_0), false), select(vec3<bool>(arg_0, var_0.x, var_0.x), vec3<bool>(true, var_0.x, false), var_0.x), true)), select(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(882f, -1153f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-545f, -524f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-371f, -435f))), all(vec3<bool>(false, arg_0, var_0.x)) & var_0.x, func_2(vec3<i32>(1i, u_input.b.x, 2147483647i))), select(vec3<bool>(any(vec3<bool>(var_0.x, false, var_0.x)), true, any(vec4<bool>(var_0.x, false, var_0.x, false))), !(!vec3<bool>(false, true, var_0.x)), !func_3(1000f, vec2<f32>(1499f, -737f), false, Struct_2(20243i))), !select(vec3<bool>(false, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, false), false)), select(select(func_3(_wgslsmith_f_op_f32(1000f + 671f), vec2<f32>(-2548f, -1026f), !arg_0, func_2(vec3<i32>(2147483647i, 4563i, -39576i))), select(vec3<bool>(false, var_0.x, arg_0), func_3(2034f, vec2<f32>(1000f, -1379f), var_0.x, Struct_2(0i)), false), false && any(vec4<bool>(true, false, arg_0, var_0.x))), !vec3<bool>(true, false, any(vec4<bool>(arg_0, var_0.x, arg_0, arg_0))), var_0.x));
    var_0 = !select(vec2<bool>(!var_1.x, true), vec2<bool>(true, false), !var_1.x || (_wgslsmith_f_op_f32(round(1547f)) > _wgslsmith_f_op_f32(-368f * -1637f)));
    var var_2 = firstTrailingBit(_wgslsmith_mult_i32(-u_input.b.x, u_input.b.x));
    var_0 = var_1.zx;
    return Struct_1(select(!(!var_0.x) != !select(arg_0, true, false), func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1319f, 447f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(789f, -700f), vec2<f32>(1000f, 651f)) - vec2<f32>(1628f, 362f)), var_0.x, func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, -22581i, -13415i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))).x, ~(u_input.c << (u_input.a.x % 32u)) < min(~u_input.c, ~u_input.c)), 415f, reverseBits((vec3<i32>(u_input.b.x, -9697i, u_input.b.x) >> (vec3<u32>(8837u, 51118u, 20693u) % vec3<u32>(32u))) ^ ~vec3<i32>(9683i, 1i, -5794i)), func_2(vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)).a, select(~(~_wgslsmith_clamp_u32(u_input.a.x, 20289u, 48236u)), 4294967295u, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(true);
    global1 = array<vec3<u32>, 30>();
    global0 = array<vec3<f32>, 16>();
    global1 = array<vec3<u32>, 30>();
    global1 = array<vec3<u32>, 30>();
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(389f, _wgslsmith_div_f32(func_1(var_0.a).b, _wgslsmith_f_op_f32(var_0.b - var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-176f, -231f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b, var_0.b, 839f), global0[_wgslsmith_index_u32(var_0.e, 16u)])))) + vec3<f32>(var_0.b, 708f, _wgslsmith_f_op_f32(step(var_0.b, 1222f))))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(u_input.c, 16u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-150f, var_1.a.x, -493f)), vec3<bool>(func_1(var_0.a).a, var_0.d <= -26362i, true))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(abs(49441u), 16u)] - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-821f, 152f, 430f))), var_1.a, all(vec4<bool>(true, true, true, true))))));
    global0 = array<vec3<f32>, 16>();
    var var_3 = Struct_2(~reverseBits(func_2(vec3<i32>(var_0.d, 7173i, 1i) << (vec3<u32>(4294967295u, u_input.a.x, 4294967295u) % vec3<u32>(32u))).a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(countOneBits(countOneBits(vec2<u32>(u_input.a.x, 1u))), u_input.a.zx), -326f, global0[_wgslsmith_index_u32(firstTrailingBit(~var_0.e << (min(max(34762u, u_input.a.x), u_input.c ^ 65554u) % 32u)), 16u)], ~min(17851i, _wgslsmith_dot_vec2_i32(u_input.b, min(u_input.b, var_0.c.zz))));
}

