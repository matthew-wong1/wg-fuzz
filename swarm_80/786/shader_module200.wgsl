struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: f32 = -1000f;

var<private> global2: array<bool, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<i32> {
    global2 = array<bool, 14>();
    var var_0 = countOneBits(select(4941i, firstLeadingBit(u_input.b.x), true));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(258f + 760f)))) - _wgslsmith_f_op_f32(ceil(-1160f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1407f, 103f, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -196f)))));
    var var_1 = global0[_wgslsmith_index_u32(81550u, 31u)];
    var var_2 = u_input.a.xw;
    return u_input.b.zx;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(337f * arg_1.c))) * arg_1.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.c, arg_1.c)) * _wgslsmith_f_op_f32(f32(-1f) * -1011f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2190f * arg_1.c))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(0u, 391u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(31274u, 50038u), _wgslsmith_mult_vec2_u32(vec2<u32>(52617u, 102818u), vec2<u32>(0u, 0u))), 14u)])));
    var var_1 = Struct_3(Struct_2(Struct_1(all(vec2<bool>(true, true)) || !global2[_wgslsmith_index_u32(0u, 14u)], -func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, 1254f, true)) + _wgslsmith_f_op_f32(-var_0))), arg_1, vec2<i32>(-19204i, func_3().x), vec4<u32>(_wgslsmith_add_u32(44747u, 0u), firstLeadingBit(8963u), _wgslsmith_mult_u32(10864u, 43259u), ~1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), Struct_1(true, -max(arg_1.b, arg_0.zw), arg_1.c)), Struct_1(false, _wgslsmith_mult_vec2_i32(u_input.b.xy, firstLeadingBit(vec2<i32>(1i, u_input.b.x)) | select(vec2<i32>(-1i, arg_1.b.x), arg_0.wy, false)), -769f), _wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.b.x, _wgslsmith_sub_i32(arg_0.x, -32591i), 27254i, abs(arg_1.b.x)), reverseBits(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(arg_1.b.x, -2147483647i, arg_0.x, arg_0.x)))) | (vec4<i32>(firstTrailingBit(-2147483647i), _wgslsmith_div_i32(-4337i, u_input.b.x), 2147483647i, ~u_input.b.x) | _wgslsmith_sub_vec4_i32(vec4<i32>(-21602i, u_input.b.x, 0i, arg_1.b.x), arg_0)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -740f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c))), -253f), arg_1);
    var var_2 = Struct_5(~(-_wgslsmith_div_i32(-1i, u_input.b.x)) << (var_1.a.d.x % 32u), Struct_4(_wgslsmith_div_i32(_wgslsmith_sub_i32(-21971i ^ var_1.a.c.x, -arg_1.b.x), arg_0.x), var_1.b.a, _wgslsmith_mod_u32(var_1.a.d.x, _wgslsmith_mod_u32(max(var_1.a.d.x, var_1.a.d.x), ~var_1.a.d.x)), Struct_1(true, -_wgslsmith_mult_vec2_i32(var_1.c.yz, vec2<i32>(arg_1.b.x, 80553i)), 1912f), arg_1), _wgslsmith_f_op_f32(trunc(var_1.d.x)));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~var_2.b.c), 14u)];
    let var_4 = min(6451u, 4294967295u);
    return Struct_3(var_1.a, var_2.b.e, u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1951f, -1000f, 1f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_f32(-arg_1.c), -328f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1249f, var_1.a.e.c, -1091f))))), true)), Struct_1(!any(vec2<bool>(true, var_1.b.a)), _wgslsmith_div_vec2_i32(var_2.b.e.b, select(var_1.a.b.b, vec2<i32>(u_input.a.x, 0i), vec2<bool>(true, var_1.e.a))) | ~(-u_input.b.xx), _wgslsmith_div_f32(-301f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1604f, var_1.e.c)))))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(0i, -2147483647i) << (arg_1.a.d.x % 32u);
    var var_1 = global2[_wgslsmith_index_u32(select(arg_1.a.d.x, _wgslsmith_div_u32(71289u, select(_wgslsmith_add_u32(0u, 43053u) & arg_1.a.d.x, ~arg_1.a.d.x, any(vec2<bool>(true, true)))), arg_1.b.a), 14u)];
    return arg_1.a;
}

fn func_1() -> vec2<u32> {
    global0 = array<vec3<bool>, 31>();
    global2 = array<bool, 14>();
    var var_0 = 4811u;
    var_0 = ~(~1u);
    var var_1 = func_4(u_input.b.x, func_2(vec4<i32>(38427i, u_input.a.x, _wgslsmith_add_i32(u_input.b.x, u_input.b.x) ^ -17759i, _wgslsmith_div_i32(-22661i, -1i | u_input.b.x)), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(79662u, 1u, 34611u), vec3<u32>(7868u, 1u, 1u)), 1u), 14u)], -u_input.b.xz, -1360f)));
    return var_1.d.zy;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 14>();
    let var_0 = _wgslsmith_mod_vec2_u32(~countOneBits(func_1()), min(vec2<u32>(func_4(u_input.b.x << (69975u % 32u), Struct_3(Struct_2(Struct_1(false, u_input.a.zx, -224f), Struct_1(false, u_input.a.yx, 482f), vec2<i32>(u_input.b.x, 36107i), vec4<u32>(38492u, 1u, 17721u, 10556u), Struct_1(global2[_wgslsmith_index_u32(80208u, 14u)], u_input.b.yx, -1000f)), Struct_1(true, vec2<i32>(0i, -8125i), 1000f), u_input.a, vec3<f32>(223f, -193f, -929f), Struct_1(false, u_input.a.wx, -413f))).d.x, ~(~0u)), func_4(firstLeadingBit(func_3().x), func_2(vec4<i32>(u_input.b.x, -43169i, u_input.a.x, u_input.b.x), func_4(u_input.a.x, Struct_3(Struct_2(Struct_1(true, vec2<i32>(-15726i, u_input.a.x), -1586f), Struct_1(global2[_wgslsmith_index_u32(23978u, 14u)], vec2<i32>(-31796i, 1i), 1000f), vec2<i32>(-20528i, u_input.b.x), vec4<u32>(50410u, 4294967295u, 4294967295u, 1u), Struct_1(global2[_wgslsmith_index_u32(60201u, 14u)], vec2<i32>(u_input.a.x, 2147483647i), -831f)), Struct_1(true, u_input.b.zx, 1000f), u_input.a, vec3<f32>(-1250f, -1478f, 888f), Struct_1(global2[_wgslsmith_index_u32(26551u, 14u)], u_input.b.yy, -233f))).b)).d.yz));
    global0 = array<vec3<bool>, 31>();
    global2 = array<bool, 14>();
    global0 = array<vec3<bool>, 31>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) - 731f);
    let var_1 = select(!vec4<bool>(!global2[_wgslsmith_index_u32(7492u, 14u)] & (u_input.b.x != u_input.b.x), func_4(~(-14094i), Struct_3(Struct_2(Struct_1(false, u_input.a.yy, 1348f), Struct_1(true, vec2<i32>(u_input.a.x, u_input.b.x), 1316f), u_input.b.yz, vec4<u32>(25081u, var_0.x, var_0.x, var_0.x), Struct_1(global2[_wgslsmith_index_u32(0u, 14u)], vec2<i32>(2147483647i, u_input.b.x), 1397f)), Struct_1(false, vec2<i32>(2147483647i, u_input.a.x), -1000f), u_input.a, vec3<f32>(386f, 511f, -551f), Struct_1(global2[_wgslsmith_index_u32(var_0.x, 14u)], u_input.b.xz, 153f))).a.a, u_input.a.x <= 2147483647i, any(vec2<bool>(global2[_wgslsmith_index_u32(50987u, 14u)], true))), vec4<bool>(!(global2[_wgslsmith_index_u32(~var_0.x, 14u)] && global2[_wgslsmith_index_u32(~5465u, 14u)]), any(vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 14u)], false, global2[_wgslsmith_index_u32(var_0.x, 14u)])), !global2[_wgslsmith_index_u32(22378u, 14u)], any(vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 14u)], false, global2[_wgslsmith_index_u32(36599u, 14u)])))), global2[_wgslsmith_index_u32(var_0.x, 14u)], !(-2147483647i != u_input.b.x) & !all(vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 14u)], global2[_wgslsmith_index_u32(var_0.x, 14u)], false))), !(!select(!vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(4294967295u, 14u)]), !vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(var_0.x, 14u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 14u)], global2[_wgslsmith_index_u32(0u, 14u)], false, global2[_wgslsmith_index_u32(13224u, 14u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 14u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 14u)], true, global2[_wgslsmith_index_u32(11470u, 14u)], true)))));
    global0 = array<vec3<bool>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_4(1i, func_2(reverseBits(u_input.a), Struct_1(var_1.x, vec2<i32>(12915i, u_input.a.x), -232f))).d.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-935f, -1084f) - vec2<f32>(1000f, 453f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-491f, 919f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -965f), -387f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(272f, 180f)) * _wgslsmith_div_vec2_f32(vec2<f32>(563f, -114f), vec2<f32>(1426f, -847f))) - vec2<f32>(-213f, _wgslsmith_f_op_f32(1255f + -1166f)))), vec3<i32>(-(u_input.a.x | -u_input.a.x), -(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(u_input.a.x, 18628i)) ^ 17968i), u_input.a.x), _wgslsmith_div_f32(1772f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-281f + -204f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, -1193f, 1158f, -899f))))));
}

