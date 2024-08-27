struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: u32 = 1u;

var<private> global2: array<i32, 30>;

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_2(0u), vec4<f32>(2379f, -178f, -576f, -731f), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), Struct_3(Struct_2(22823u), vec4<f32>(-2338f, 1171f, 515f, 286f), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), Struct_3(Struct_2(1707u), vec4<f32>(-1000f, -225f, 591f, -601f), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), Struct_3(Struct_2(4294967295u), vec4<f32>(232f, 1574f, -765f, -1000f), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), Struct_3(Struct_2(4294967295u), vec4<f32>(-726f, 433f, -2238f, -1671f), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), Struct_3(Struct_2(27970u), vec4<f32>(-1697f, 916f, 790f, 133f), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), Struct_3(Struct_2(20897u), vec4<f32>(986f, -452f, -605f, 163f), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), Struct_3(Struct_2(4294967295u), vec4<f32>(-902f, 871f, 727f, 1000f), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), Struct_3(Struct_2(33419u), vec4<f32>(872f, -937f, -730f, 447f), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), Struct_3(Struct_2(4294967295u), vec4<f32>(690f, 1000f, 299f, -1000f), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_3(Struct_2(107990u), vec4<f32>(591f, -800f, -737f, 1564f), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), Struct_3(Struct_2(41195u), vec4<f32>(225f, 172f, 140f, 515f), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), Struct_3(Struct_2(4294967295u), vec4<f32>(-415f, -1000f, -639f, -821f), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), Struct_3(Struct_2(6604u), vec4<f32>(-714f, 364f, 1129f, 1472f), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), Struct_3(Struct_2(25012u), vec4<f32>(-962f, 338f, -1188f, 816f), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), Struct_3(Struct_2(112716u), vec4<f32>(-608f, -1779f, -718f, -1101f), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), Struct_3(Struct_2(0u), vec4<f32>(590f, -333f, -1575f, -1000f), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), Struct_3(Struct_2(36923u), vec4<f32>(-537f, -1296f, -599f, 398f), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), Struct_3(Struct_2(128598u), vec4<f32>(248f, -706f, -2331f, 426f), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), Struct_3(Struct_2(26299u), vec4<f32>(1886f, 656f, -1621f, -1957f), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), Struct_3(Struct_2(6597u), vec4<f32>(1721f, 406f, -2767f, 315f), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), Struct_3(Struct_2(4294967295u), vec4<f32>(1000f, -2042f, -1009f, 662f), vec3<bool>(true, true, true), vec3<bool>(false, false, true)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(arg_1.a.a ^ (1u | (4294967295u >> (_wgslsmith_add_u32(arg_0.x, arg_1.a.a) % 32u))), 45063u, select(all(vec4<bool>(!arg_1.c.x, false, 426f < global0[_wgslsmith_index_u32(arg_0.x, 3u)], arg_1.c.x)), true, arg_1.d.x || true), ~vec4<u32>(abs(_wgslsmith_dot_vec3_u32(arg_0.yxx, arg_0.xxx)), abs(~4294967295u), _wgslsmith_sub_u32(~arg_1.a.a, ~4294967295u), ~1u));
    global3 = array<Struct_3, 22>();
    return var_0;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = 0i;
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.c, u_input.a.zy);
    global0 = array<f32, 3>();
    let var_2 = true == !select(arg_0.x & !arg_0.x, false, false);
    return ~10451u;
}

fn func_3() -> u32 {
    let var_0 = !(-2147483647i > countOneBits(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(25904u, 30u)], ~global2[_wgslsmith_index_u32(0u, 30u)])));
    global0 = array<f32, 3>();
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(790f, 484f) - vec2<f32>(1639f, 1453f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(524f, -631f), vec2<f32>(-1829f, -1585f)))) * vec2<f32>(_wgslsmith_f_op_f32(trunc(748f)), -646f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -359f), global0[_wgslsmith_index_u32(func_1(~vec4<u32>(60680u, 1u, 19454u, 44553u), Struct_3(Struct_2(21098u), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(24616u, 3u)], global0[_wgslsmith_index_u32(6208u, 3u)], global0[_wgslsmith_index_u32(4485u, 3u)]), vec3<bool>(true, true, false), vec3<bool>(false, var_0, false))).d.x, 3u)]))));
    var var_2 = vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(13048u, countOneBits(_wgslsmith_clamp_u32(4294967295u, 0u, 1u))), _wgslsmith_mod_vec2_u32(vec2<u32>(11232u, 31746u), ~vec2<u32>(1u, 9586u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), min(func_2(vec4<bool>(true, false, false, var_0), Struct_1(0u, 1u, false, vec4<u32>(1u, 23658u, 27018u, 4294967295u)), any(vec4<bool>(false, false, true, false))), _wgslsmith_sub_u32(~10456u, select(0u, 57224u, false))) << (4294967295u % 32u));
    let var_3 = Struct_2(0u);
    return 19605u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(26576u != func_2(vec4<bool>(true, true, true, true), func_1(vec4<u32>(32409u, 41199u, 1u, 59128u), Struct_3(Struct_2(0u), vec4<f32>(-1466f, global0[_wgslsmith_index_u32(0u, 3u)], -490f, global0[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), true), all(vec4<bool>(true, true, true, true)), true);
    let var_1 = !select(vec3<bool>(false, var_0.x, true), select(!select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(global2[_wgslsmith_index_u32(47611u, 30u)] != u_input.c.x, var_0.x, var_0.x), var_0.x), !vec3<bool>(var_0.x, true, true));
    var var_2 = (reverseBits(func_2(!vec4<bool>(var_0.x, false, false, true), Struct_1(4294967295u, 6746u, var_1.x, vec4<u32>(35680u, 1u, 35150u, 16333u)), var_0.x)) | _wgslsmith_div_u32(1u, 84875u)) & func_3();
    let var_3 = select(select(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.a, min(u_input.a, u_input.a)), global2[_wgslsmith_index_u32(~1u, 30u)], u_input.a.x, ~u_input.a.x), vec4<i32>(u_input.b, 61153i, -1i, global2[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(89536u, 8251u), vec2<u32>(0u, 4294967295u)), 1u), 30u)]), true), abs(vec4<i32>(2147483647i, 1i, global2[_wgslsmith_index_u32(17004u, 30u)], -_wgslsmith_add_i32(global2[_wgslsmith_index_u32(338u, 30u)], 10916i))), true);
    global1 = func_1(vec4<u32>(func_3(), _wgslsmith_mod_u32(~0u, 93861u), 18723u, abs(~reverseBits(4294967295u))), Struct_3(Struct_2(min(abs(30007u), ~0u)), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(50120u, 3u)] - global0[_wgslsmith_index_u32(~1u, 3u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 3u)], -1000f)), _wgslsmith_f_op_f32(sign(-221f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]) + _wgslsmith_f_op_f32(sign(-2166f)))), !vec3<bool>(false, select(var_0.x, var_1.x, false), any(vec4<bool>(true, var_1.x, false, var_0.x))), vec3<bool>(all(vec2<bool>(true, var_0.x)), var_0.x, any(vec3<bool>(true, true, var_1.x))))).b;
    let var_4 = global0[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(12238u, func_2(!vec4<bool>(var_0.x, var_0.x, true, false), Struct_1(11989u, 38714u, true, vec4<u32>(1101u, 5630u, 23997u, 0u)), any(var_1))) | 1u), 3u)];
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 3u)])), 599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(2639u, 3u)] - _wgslsmith_f_op_f32(f32(-1f) * -1572f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(4962u, 3u)], -888f))))) - vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(31225u, 3u)] + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(66430u, 3u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1886f)), global0[_wgslsmith_index_u32(7371u, 3u)], -1309f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -(~vec2<i32>(2147483647i, u_input.b)), min(var_3.yy & var_3.wx, vec2<i32>(u_input.b, ~2147483647i))), _wgslsmith_add_i32(-31704i, _wgslsmith_div_i32(~1i, (28182i << (0u % 32u)) << (1u % 32u))), func_3(), _wgslsmith_mult_u32(1u, reverseBits(1u)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_5.yxw)), _wgslsmith_f_op_vec3_f32(-var_5.wwx), true)))));
}

