struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-959f, 1197f, -1987f), vec3<f32>(-920f, 1489f, -1428f), vec3<f32>(632f, 1544f, -813f), vec3<f32>(-165f, 304f, 1000f), vec3<f32>(1358f, -404f, 1692f), vec3<f32>(-1264f, 166f, 1000f), vec3<f32>(-252f, 1218f, 247f), vec3<f32>(1737f, -1651f, -1706f), vec3<f32>(-1000f, 1465f, -219f), vec3<f32>(-996f, 414f, -380f));

var<private> global1: array<bool, 32> = array<bool, 32>(false, true, false, false, true, false, true, true, true, true, false, false, false, true, false, true, true, false, true, true, false, false, true, true, true, true, true, false, true, false, true, true);

var<private> global2: array<bool, 18> = array<bool, 18>(true, false, true, false, true, true, true, true, true, false, false, true, true, false, false, true, true, false);

var<private> global3: array<vec4<bool>, 5>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = 0u;
    let var_1 = Struct_1(vec3<f32>(-368f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.d))), arg_1.x)), _wgslsmith_f_op_f32(-305f * arg_2.d)), vec3<i32>(countOneBits(arg_2.b.x), ~reverseBits(firstLeadingBit(40907i)), countOneBits(arg_3)), countOneBits(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.c), vec2<u32>(var_0, arg_0)) ^ arg_0)), arg_1.x, true);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a), arg_2.b & vec3<i32>(0i & -var_1.b.x, abs(arg_3), _wgslsmith_div_i32(min(-1i, var_1.b.x), arg_3)), ~arg_0, 1535f, var_1.e);
    let var_3 = vec2<bool>(select(!(!global2[_wgslsmith_index_u32(arg_2.c, 18u)]) || false, all(vec3<bool>(!global2[_wgslsmith_index_u32(43817u, 18u)], true, var_1.e)), var_1.e), all(select(select(vec2<bool>(false, false), !vec2<bool>(arg_2.e, false), !vec2<bool>(var_1.e, global1[_wgslsmith_index_u32(1u, 32u)])), select(select(vec2<bool>(var_2.e, false), vec2<bool>(var_1.e, true), vec2<bool>(true, arg_2.e)), !vec2<bool>(arg_2.e, true), select(vec2<bool>(arg_2.e, var_1.e), vec2<bool>(global2[_wgslsmith_index_u32(95864u, 18u)], var_2.e), false)), _wgslsmith_sub_i32(arg_3, 1i) != ~var_2.b.x)));
    var var_4 = arg_1.x;
    return _wgslsmith_f_op_f32(round(-1007f));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<bool> {
    global2 = array<bool, 18>();
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_1.a, vec3<f32>(arg_0.x, arg_0.x, arg_1.d))))))), arg_1.b, 4294967295u, _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) * 1000f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, -846f) - _wgslsmith_f_op_f32(func_3(39136u, arg_0, Struct_1(var_0.a, var_0.b, 64342u, -472f, false), 13212i))))), !(!global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, abs(u_input.a)), 18u)]));
    let var_3 = true;
    return !(!(!(!select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(var_0.c, 18u)], var_3), vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.c, 18u)])))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> bool {
    global0 = array<vec3<f32>, 10>();
    let var_0 = select(!select(func_2(_wgslsmith_f_op_vec2_f32(arg_2.a.yx * vec2<f32>(arg_2.d, arg_2.a.x)), Struct_1(vec3<f32>(arg_2.a.x, arg_2.d, 787f), vec3<i32>(arg_0, 2147483647i, -39557i), 0u, arg_2.d, global2[_wgslsmith_index_u32(arg_2.c, 18u)])), vec2<bool>(!arg_2.e, arg_2.e), arg_2.e), select(vec2<bool>(true, arg_2.e), vec2<bool>(false, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3, 1u), 32u)] | (true && global2[_wgslsmith_index_u32(4294967295u, 18u)])), all(!global3[_wgslsmith_index_u32(arg_3, 5u)]) | any(vec4<bool>(true, arg_2.e, global2[_wgslsmith_index_u32(arg_1, 18u)], true))), vec2<bool>(arg_2.e, !(arg_2.e && !global2[_wgslsmith_index_u32(16787u, 18u)])));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1358f + _wgslsmith_f_op_f32(trunc(611f))), _wgslsmith_div_f32(629f, _wgslsmith_f_op_f32(min(arg_2.d, 862f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_3, vec2<f32>(-415f, 411f), Struct_1(vec3<f32>(-1000f, arg_2.a.x, arg_2.d), vec3<i32>(2147483647i, arg_2.b.x, 2051i), 1u, -244f, false), arg_0))))), arg_2.b, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-462f, 929f, global1[_wgslsmith_index_u32(0u, 32u)])) + arg_2.d), global1[_wgslsmith_index_u32(3490u, 32u)]);
    let var_2 = arg_2.a.yy;
    let var_3 = var_1.b.xx;
    return all(func_2(var_1.a.zx, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2011f), 329f, arg_2.d), vec3<i32>(~0i, arg_2.b.x, var_3.x), select(var_1.c, u_input.a & 1u, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-675f - var_2.x))), !all(global3[_wgslsmith_index_u32(39105u, 5u)]))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = min(arg_1.b, vec3<i32>(_wgslsmith_add_i32(1i, arg_1.b.x), -2147483647i ^ arg_1.b.x, -_wgslsmith_sub_i32(_wgslsmith_add_i32(-40863i, arg_1.b.x), 21319i)));
    global2 = array<bool, 18>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * arg_1.d)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.d - -135f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) + -826f))));
    var var_2 = _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(489f - _wgslsmith_f_op_f32(step(arg_1.d, 1576f))));
    var var_3 = -1726f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - _wgslsmith_f_op_f32(-arg_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2784f))), -1747f)), _wgslsmith_mult_vec3_i32((_wgslsmith_div_vec3_i32(var_0, var_0) | _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, 1i, var_0.x), vec3<i32>(arg_1.b.x, arg_1.b.x, 1i))) | ~_wgslsmith_div_vec3_i32(var_0, vec3<i32>(arg_1.b.x, var_0.x, arg_1.b.x)), vec3<i32>(abs(0i << (u_input.a % 32u)), ~_wgslsmith_dot_vec3_i32(arg_1.b, arg_1.b), _wgslsmith_dot_vec3_i32(arg_1.b, arg_1.b) & arg_1.b.x)), 1u >> (1u % 32u), _wgslsmith_div_f32(1360f, _wgslsmith_f_op_f32(select(655f, -1930f, false))), true);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    return arg_0;
}

fn func_6(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1882f), _wgslsmith_f_op_f32(178f * arg_3))), _wgslsmith_f_op_f32(-arg_0.x))) * 1000f);
    global3 = array<vec4<bool>, 5>();
    let var_1 = ~(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(arg_2.c, 15960u, 68287u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_2.c, 28473u, arg_2.c), ~vec4<u32>(16025u, 1u, arg_1, u_input.a))) ^ (~firstTrailingBit(vec4<u32>(0u, arg_2.c, arg_2.c, 9669u)) | ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_1, u_input.a, arg_2.c), vec4<u32>(37702u, 0u, 0u, 31958u))));
    let var_2 = u_input.a;
    var var_3 = select(false, false, !(!(global2[_wgslsmith_index_u32(19986u, 18u)] && arg_2.e) == true));
    return func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(52221u, ~(~arg_2.c), _wgslsmith_clamp_u32(var_2 << (arg_2.c % 32u), _wgslsmith_sub_u32(arg_2.c, 1u), var_2)), ~(~var_1.wzx)), arg_2, true, func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f) * -1110f), 880f), func_4(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2, arg_1, var_2), vec3<u32>(37397u, 33061u, arg_1)), var_1.wzw), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3, arg_2.d, -574f))), arg_2.b << (vec3<u32>(70874u, 89932u, 825u) % vec3<u32>(32u)), firstLeadingBit(1301u), _wgslsmith_f_op_f32(func_3(arg_1, arg_2.a.yy, Struct_1(global0[_wgslsmith_index_u32(1u, 10u)], vec3<i32>(-17077i, arg_2.b.x, arg_2.b.x), u_input.a, 1189f, arg_2.e), 1i)), all(vec2<bool>(global1[_wgslsmith_index_u32(62936u, 32u)], global2[_wgslsmith_index_u32(arg_1, 18u)]))), !global1[_wgslsmith_index_u32(0u, 32u)], vec2<bool>(global2[_wgslsmith_index_u32(101059u, 18u)], true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-967f, 1596f, -1719f), _wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(1u, 10u)])), any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(1u, 18u)])))) - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(6248u, u_input.a, 12151u), vec3<u32>(u_input.a, 0u, u_input.a)) | u_input.a, 10u)]) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1737f, -1207f) + global0[_wgslsmith_index_u32(1u, 10u)]), global0[_wgslsmith_index_u32(~u_input.a, 10u)]))), u_input.a, func_5(func_4(vec3<u32>(u_input.a, 31467u, min(10671u, u_input.a)), Struct_1(vec3<f32>(-759f, -851f, 675f), vec3<i32>(19264i, -49444i, 21464i), ~u_input.a, -1323f, func_1(1i, u_input.a, Struct_1(global0[_wgslsmith_index_u32(u_input.a, 10u)], vec3<i32>(1i, 1i, 2147483647i), 68030u, 886f, global1[_wgslsmith_index_u32(0u, 32u)]), u_input.a)), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(71833u, 22432u), 32u)], vec2<bool>(global2[_wgslsmith_index_u32(~u_input.a, 18u)], !global1[_wgslsmith_index_u32(27720u, 32u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -188f))) + _wgslsmith_div_vec2_f32(vec2<f32>(1341f, 1000f), vec2<f32>(1000f, 1000f))), _wgslsmith_f_op_f32(max(-895f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(565f, -683f))))), ((vec2<i32>(-1i, 2147483647i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) ^ ~vec2<i32>(28807i, -4115i)) << (~firstLeadingBit(vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_1 = vec4<u32>(~(~25092u), 1u, 0u, func_5(Struct_1(vec3<f32>(327f, _wgslsmith_f_op_f32(select(-1008f, 472f, global1[_wgslsmith_index_u32(u_input.a, 32u)])), _wgslsmith_f_op_f32(1000f - 444f)), vec3<i32>(var_0.b.x, 0i, 25024i), ~var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d)) + _wgslsmith_f_op_f32(-var_0.d)), 0u <= ~u_input.a), _wgslsmith_f_op_vec2_f32(func_6(global0[_wgslsmith_index_u32(~0u, 10u)], firstLeadingBit(4294967295u), func_5(var_0, var_0.a.xy, var_0.d, vec2<i32>(0i, var_0.b.x)), -454f).a.xx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.yy))), -722f, vec2<i32>(var_0.b.x, var_0.b.x << (7201u % 32u)) ^ firstTrailingBit(_wgslsmith_mod_vec2_i32(var_0.b.xx, var_0.b.zz))).c);
    var var_2 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(~2922u >> (var_0.c % 32u), 10u)]))), 37522u & _wgslsmith_mod_u32(~12539u, u_input.a), func_4(~vec3<u32>(u_input.a, ~24350u, var_1.x), Struct_1(func_6(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(338f, var_0.d, var_0.a.x)), 14512u, Struct_1(vec3<f32>(599f, 614f, var_0.a.x), var_0.b, 0u, 2445f, true), _wgslsmith_f_op_f32(f32(-1f) * -354f)).a, -vec3<i32>(2147483647i, var_0.b.x, var_0.b.x), 32383u, -1309f, any(global3[_wgslsmith_index_u32(var_0.c, 5u)])), !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 4294967295u, 40121u, 4294967295u), vec4<u32>(var_0.c, var_1.x, 23636u, var_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, var_1.x, u_input.a, 3598u), vec4<u32>(0u, 17260u, 61609u, var_0.c))), 18u)], vec2<bool>(false, global2[_wgslsmith_index_u32(~(~var_1.x), 18u)])), _wgslsmith_f_op_f32(-var_0.d));
    var var_3 = vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(-var_0.b.x), ~(~(-14663i))), var_0.b.x, var_0.b.x ^ _wgslsmith_add_i32(2147483647i, func_6(_wgslsmith_f_op_vec3_f32(-var_0.a), abs(var_0.c), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 10u)], var_2.b, 4294967295u, -705f, var_2.e), -1086f).b.x));
    var var_4 = 0i;
    let var_5 = var_0;
    var_1 = vec4<u32>(~_wgslsmith_sub_u32(countOneBits(abs(1u)), var_0.c), 4294967295u, 1u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.x);
}

