struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-1000f, -1000f), vec2<f32>(172f, 1304f), vec2<f32>(-1000f, 707f), vec2<f32>(-381f, 101f), vec2<f32>(-1101f, 116f));

var<private> global1: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(1000f, 1000f, -2241f), vec2<bool>(true, true), vec3<bool>(false, true, false));

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, 1i, -29228i, 6095i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    global1 = array<vec3<bool>, 10>();
    var var_0 = global2.a;
    var var_1 = Struct_2(arg_0.a, arg_1 > u_input.a.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-var_1.a.a);
    let var_2 = vec3<u32>(~36121u >> (1u % 32u), _wgslsmith_add_u32(~(~0u), 21274u), ~1u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 17933u, 24108u, 0u)), vec4<u32>(1u, 4294967295u, 37366u, 7495u))), firstTrailingBit(~vec3<u32>(1u, 1u, 1u)));
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec3<f32>) -> u32 {
    global1 = array<vec3<bool>, 10>();
    var var_0 = vec4<i32>(global3.x, _wgslsmith_dot_vec3_i32(u_input.a.zyw, vec3<i32>(firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), 1i, u_input.a.x)), -(~global3.x), (global3.x & global3.x) << (~_wgslsmith_clamp_u32(~1u, ~59608u, _wgslsmith_clamp_u32(1u, 24587u, 832u)) % 32u));
    var var_1 = firstLeadingBit(firstLeadingBit(-2147483647i));
    global0 = array<vec2<f32>, 5>();
    var var_2 = max(global3.yz, abs(u_input.a.yz) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    return firstTrailingBit(~firstLeadingBit(30587u));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_mod_u32(func_4(!func_3(Struct_2(Struct_1(global2.a, vec2<bool>(global2.b.x, arg_0), vec3<bool>(global2.b.x, true, arg_0)), arg_0), 2147483647i), Struct_2(Struct_1(vec3<f32>(1000f, global2.a.x, 200f), vec2<bool>(true, true), vec3<bool>(global2.b.x, true, global2.c.x)), true), all(global2.c.zy), global2.a) & _wgslsmith_dot_vec4_u32(firstLeadingBit(countOneBits(vec4<u32>(86429u, 0u, 8936u, 4294967295u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(54400u, 4294967295u, 0u), vec3<u32>(13484u, 48538u, 0u)), 4294967295u, _wgslsmith_mult_u32(22810u, 60310u), 1u)), min(1u, abs(~(~1u))));
    let var_1 = select(!(!global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 1u), 10u)]), select(select(!global2.c, select(!global1[_wgslsmith_index_u32(0u, 10u)], select(vec3<bool>(global2.b.x, global2.b.x, global2.c.x), global1[_wgslsmith_index_u32(37681u, 10u)], arg_0), select(global2.c, global1[_wgslsmith_index_u32(96789u, 10u)], global2.c)), false), global1[_wgslsmith_index_u32(abs(firstLeadingBit(4294967295u)), 10u)], !global2.c.x), global1[_wgslsmith_index_u32(9403u, 10u)]);
    let var_2 = !select(select(select(!vec4<bool>(arg_0, arg_0, global2.b.x, var_1.x), vec4<bool>(false, arg_0, true, false), select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(true, false, true, false), false)), select(!vec4<bool>(true, var_1.x, true, global2.c.x), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true)), !select(vec4<bool>(true, true, var_1.x, global2.b.x), vec4<bool>(true, var_1.x, var_1.x, global2.b.x), false)), select(!select(vec4<bool>(global2.b.x, global2.b.x, false, global2.c.x), vec4<bool>(false, global2.c.x, arg_0, var_1.x), true), select(vec4<bool>(var_1.x, true, true, arg_0), select(vec4<bool>(false, global2.b.x, var_1.x, false), vec4<bool>(global2.b.x, true, false, false), true), !vec4<bool>(var_1.x, true, true, false)), var_1.x), select(vec4<bool>(arg_0 | global2.b.x, any(vec4<bool>(global2.c.x, var_1.x, var_1.x, var_1.x)), var_1.x, arg_0), vec4<bool>(true, any(vec4<bool>(false, true, arg_0, true)), func_3(Struct_2(Struct_1(vec3<f32>(global2.a.x, 3163f, 1034f), global2.b, global2.c), global2.c.x), arg_1.x), all(vec3<bool>(false, arg_0, arg_0))), vec4<bool>(all(var_1.xy), all(vec4<bool>(var_1.x, true, true, false)), false, arg_0)));
    global1 = array<vec3<bool>, 10>();
    global1 = array<vec3<bool>, 10>();
    return Struct_3(!(!vec3<bool>(any(vec3<bool>(true, false, true)), select(arg_0, var_1.x, global2.b.x), var_2.x)), _wgslsmith_f_op_f32(-global2.a.x), firstLeadingBit(-abs(global3.x) | _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), u_input.a)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = func_2(!(_wgslsmith_f_op_f32(-arg_0.b) <= -208f), -global3.zzy);
    var var_1 = vec2<i32>(_wgslsmith_div_i32(countOneBits(arg_3.c) & (var_0.c ^ arg_0.c), var_0.c), -50727i) ^ u_input.a.ww;
    let var_2 = _wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_clamp_i32(var_1.x, reverseBits(arg_2.c), -3574i), ~_wgslsmith_add_i32(0i, var_1.x)), abs(~_wgslsmith_mod_vec2_i32(u_input.a.xx, vec2<i32>(global3.x, -1i))));
    let var_3 = arg_1;
    var var_4 = vec2<u32>(~96184u, ~firstTrailingBit(33298u));
    return Struct_1(_wgslsmith_f_op_vec3_f32(global2.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1450f, arg_3.b, -921f)))))), select(func_2(func_3(var_3, i32(-1i) * -37188i), vec3<i32>(~69736i, -112i, ~(-2147483647i))).a.zx, func_2(!func_2(arg_3.a.x, global3.zyx).a.x, firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_2, 15280i, 6165i), vec3<i32>(52213i, 2147483647i, 44300i)))).a.xy, !var_0.a.x), !select(select(vec3<bool>(true, arg_3.a.x, arg_2.a.x), arg_2.a, vec3<bool>(false, false, true)), vec3<bool>(!arg_2.a.x, arg_3.a.x, true), vec3<bool>(arg_0.a.x, true, var_4.x == var_4.x)));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1) -> u32 {
    global3 = vec4<i32>(0i, 17301i, _wgslsmith_dot_vec4_i32(~(~vec4<i32>(5073i, global3.x, u_input.a.x, u_input.a.x)), u_input.a), _wgslsmith_dot_vec3_i32(-(~u_input.a.zyz), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, 6196i, 16674i), vec3<i32>(arg_0.c, global3.x, -2147483647i), u_input.a.wyw)) & _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, global3.x, u_input.a.x, -1i)), max(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) | u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c, global3.x, arg_0.c, arg_0.c), vec4<i32>(u_input.a.x, -31781i, u_input.a.x, -2147483647i)))));
    global2 = func_1(func_2(false, -firstTrailingBit(~global3.wzy)), Struct_2(arg_2, !(!all(vec2<bool>(arg_2.b.x, true)))), Struct_3(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1125f), _wgslsmith_div_f32(arg_1.x, 897f), false))), arg_0.c), func_2(arg_0.a.x, countOneBits(~(u_input.a.yxx << (vec3<u32>(34708u, 43665u, 58206u) % vec3<u32>(32u))))));
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(arg_2.a.x - arg_1.x)), 293f)))));
    global1 = array<vec3<bool>, 10>();
    var var_1 = max(select(-global3.wzy, firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.c, -90416i, -30086i), u_input.a.ywy)), arg_2.c.x), vec3<i32>(~(1i >> (1u % 32u)), -(~(-13999i)), 54111i >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(11180u, 28721u), _wgslsmith_clamp_vec2_u32(vec2<u32>(31356u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4452u, 38508u))) % 32u)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global3.xzx) << ((~select(vec3<u32>(4294967295u, 0u, 33385u), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(true, global2.c.x, false), global2.c, false)) << (~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = array<vec2<f32>, 5>();
    let var_1 = max(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(~abs(0u), func_5(Struct_3(vec3<bool>(true, global2.b.x, false), global2.a.x, 17840i), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a.x, 657f, -216f, -606f))), func_1(Struct_3(global1[_wgslsmith_index_u32(29459u, 10u)], global2.a.x, 2147483647i), Struct_2(Struct_1(global2.a, global2.b, global1[_wgslsmith_index_u32(0u, 10u)]), global2.c.x), Struct_3(global2.c, -1949f, u_input.a.x), Struct_3(global1[_wgslsmith_index_u32(13195u, 10u)], 2171f, -27585i))), 0u)), vec3<u32>(~func_4(global2.a.x != global2.a.x, Struct_2(Struct_1(global2.a, global2.b, vec3<bool>(global2.c.x, global2.c.x, global2.b.x)), true), !global2.b.x, vec3<f32>(global2.a.x, global2.a.x, global2.a.x)), 1u, func_4(func_2(global2.b.x || global2.b.x, _wgslsmith_sub_vec3_i32(u_input.a.zyx, vec3<i32>(-28147i, var_0.x, -38832i))).a.x, Struct_2(Struct_1(vec3<f32>(617f, -139f, -801f), global2.b, vec3<bool>(false, true, false)), func_3(Struct_2(Struct_1(vec3<f32>(global2.a.x, global2.a.x, global2.a.x), vec2<bool>(false, true), vec3<bool>(false, false, global2.b.x)), global2.c.x), 1i)), true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a.x, global2.a.x, -1165f), vec3<f32>(691f, 1000f, 284f), vec3<bool>(false, true, global2.c.x))))))));
    let var_2 = -1245f;
    let var_3 = global2.b.x;
    global3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zx, reverseBits(_wgslsmith_mod_i32(_wgslsmith_add_i32(54418i, _wgslsmith_mult_i32(1i, -1i)), var_0.x)), var_1.yy);
}

