struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    var var_0 = vec4<bool>(u_input.c.x == 35752u, global0[_wgslsmith_index_u32(~27914u, 5u)], all(select(vec4<bool>(true, !global0[_wgslsmith_index_u32(u_input.c.x, 5u)], any(vec3<bool>(true, true, global0[_wgslsmith_index_u32(62366u, 5u)])), global0[_wgslsmith_index_u32(max(u_input.b.x, 1u), 5u)]), !select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], true, false, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, true, global0[_wgslsmith_index_u32(45824u, 5u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)])), all(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], true), global0[_wgslsmith_index_u32(u_input.c.x, 5u)])))), !(global0[_wgslsmith_index_u32(countOneBits(1u), 5u)] & (false && any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], true)))));
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(-752f)), Struct_2(Struct_1(~(~83621u), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1943f, 1653f), vec2<f32>(1692f, -3024f)) - _wgslsmith_div_vec2_f32(vec2<f32>(142f, 753f), vec2<f32>(364f, -147f)))), u_input.a, vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(1640f + _wgslsmith_f_op_f32(-1203f + 724f))), Struct_1(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1261f, -988f) * vec2<f32>(384f, -440f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 374f))))), var_0.zz), u_input.b.yz, reverseBits(-5159i), Struct_1(~abs(~u_input.b.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-174f, -333f))))))));
    var var_2 = ~firstTrailingBit(vec2<i32>(50761i, abs(var_1.b.b.x)));
    return select(var_0.yyy, var_0.yyx, any(vec2<bool>(!select(var_1.b.e.x, global0[_wgslsmith_index_u32(38342u, 5u)], true), !global0[_wgslsmith_index_u32(~var_1.b.a.a, 5u)])));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_4) -> bool {
    global0 = array<bool, 5>();
    let var_0 = !(!func_3());
    global0 = array<bool, 5>();
    let var_1 = vec3<i32>(1i, _wgslsmith_div_i32(-13025i, arg_3.b), -1i);
    var var_2 = vec2<i32>(_wgslsmith_mult_i32(select(max(-33113i, _wgslsmith_div_i32(1i, u_input.d)), -22178i, true), 0i), 0i);
    return any(!(!select(var_0.zx, var_0.xy, select(var_0.xy, vec2<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(arg_2.x, 5u)])))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = abs(~(~vec4<u32>(u_input.b.x, ~1u, _wgslsmith_add_u32(u_input.b.x, 4294967295u), u_input.c.x)));
    let var_1 = countOneBits(~abs(firstTrailingBit(select(vec3<u32>(1u, 4294967295u, 30389u), var_0.wzz, false))));
    let var_2 = vec3<i32>(~_wgslsmith_dot_vec3_i32(min(~vec3<i32>(arg_3.c.x, arg_3.c.x, arg_3.b), _wgslsmith_div_vec3_i32(vec3<i32>(-22537i, -7419i, -31608i), vec3<i32>(arg_1, -94601i, arg_1))), ~(vec3<i32>(u_input.a.x, -33922i, u_input.d) | vec3<i32>(1384i, arg_3.c.x, arg_1))), countOneBits(-48906i), -3547i);
    global0 = array<bool, 5>();
    var var_3 = Struct_3(arg_0, Struct_2(Struct_1(var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(467f, -129f) * vec2<f32>(1508f, 685f)))), reverseBits(vec2<i32>(u_input.a.x | var_2.x, -13058i)), vec2<f32>(735f, 980f), Struct_1(~arg_3.a, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, arg_0)))), arg_2.xx), max(var_1.xx, vec2<u32>(var_1.x, u_input.c.x)), u_input.d, Struct_1(485u, vec2<f32>(_wgslsmith_f_op_f32(trunc(913f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1629f)), _wgslsmith_f_op_f32(1662f + arg_0)))));
    return Struct_2(Struct_1(3492u, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_3.e.b)))), vec2<i32>(arg_3.b, 1i), _wgslsmith_f_op_vec2_f32(ceil(var_3.e.b)), Struct_1(u_input.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-996f * 441f), -1505f))), !select(vec2<bool>(!arg_2.x, true), vec2<bool>(185f > var_3.b.c.x, true), ~var_2.x >= arg_1));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> Struct_2 {
    let var_0 = abs(u_input.d >> (_wgslsmith_sub_u32(~arg_1.x, u_input.c.x) % 32u));
    return func_4(-388f, abs(u_input.a.x), select(!vec4<bool>(true, func_2(-895f, false, vec2<u32>(u_input.c.x, 0u), Struct_4(arg_2, 1294i, vec2<i32>(var_0, 2147483647i))), global0[_wgslsmith_index_u32(1u, 5u)] || global0[_wgslsmith_index_u32(arg_2, 5u)], arg_2 < arg_1.x), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(19905u, 5u)], global0[_wgslsmith_index_u32(13932u, 5u)], global0[_wgslsmith_index_u32(arg_1.x, 5u)], global0[_wgslsmith_index_u32(arg_1.x, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(59248u, 5u)], true, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(5661u, 5u)]), false), !vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], false, false), !global0[_wgslsmith_index_u32(0u, 5u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], false, global0[_wgslsmith_index_u32(68298u, 5u)]), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_2, 5u)], global0[_wgslsmith_index_u32(arg_1.x, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(27933u, 5u)], global0[_wgslsmith_index_u32(arg_2, 5u)]), global0[_wgslsmith_index_u32(1206u, 5u)]), arg_0 <= 744f), -665f >= arg_0), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(arg_2, 1u), arg_2, ~u_input.b.x, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.c.zwx, vec3<u32>(61365u, 0u, 87336u)), abs(arg_2), 1u, 1u)), 5u)]), Struct_4(arg_2, abs(_wgslsmith_add_i32(_wgslsmith_sub_i32(0i, u_input.d), var_0 & u_input.a.x)), ~u_input.a));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global0 = array<bool, 5>();
    let var_0 = false;
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_1 = ~u_input.a.x;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    var var_0 = func_5(Struct_3(_wgslsmith_f_op_f32(-838f + _wgslsmith_f_op_f32(-210f * _wgslsmith_f_op_f32(abs(-1735f)))), func_1(-804f, vec2<u32>(20384u, 62355u), 37830u), u_input.c.yz, -1i, Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(24787u, 0u), u_input.c.wx), vec2<f32>(_wgslsmith_f_op_f32(313f + 284f), _wgslsmith_f_op_f32(f32(-1f) * -127f)))), -25528i, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -273f), -686f, !global0[_wgslsmith_index_u32(u_input.b.x, 5u)])) - _wgslsmith_f_op_f32(trunc(-171f))), i32(-1i) * -1i, select(vec4<bool>(true, func_1(1760f, u_input.c.zx, u_input.c.x).e.x, global0[_wgslsmith_index_u32(u_input.b.x, 5u)], true), vec4<bool>(global0[_wgslsmith_index_u32(~4294967295u, 5u)], global0[_wgslsmith_index_u32(4294967295u | u_input.c.x, 5u)], !global0[_wgslsmith_index_u32(39881u, 5u)], true), (u_input.c.x >= u_input.b.x) & global0[_wgslsmith_index_u32(0u, 5u)]), Struct_4(3640u, u_input.a.x, (u_input.a & vec2<i32>(-2147483647i, 62528i)) >> (min(u_input.c.xw, u_input.c.yw) % vec2<u32>(32u)))).d);
    global0 = array<bool, 5>();
    var var_1 = Struct_4(var_0.a >> ((~u_input.c.x & min(u_input.b.x << (0u % 32u), var_0.a)) % 32u), u_input.a.x, vec2<i32>(-9999i, u_input.a.x & min(~(-1i), _wgslsmith_div_i32(u_input.a.x, -9062i))));
    global0 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x >> (52742u % 32u), -7370i, var_1.c.x), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(u_input.d, -1i, var_1.c.x)), -vec3<i32>(var_1.b, 63233i, u_input.a.x))) & (-select(vec3<i32>(-22923i, 2147483647i, var_1.b), vec3<i32>(1i, var_1.c.x, -44719i), true) & firstLeadingBit(vec3<i32>(8616i, u_input.a.x, u_input.d) >> (u_input.b % vec3<u32>(32u)))));
}

