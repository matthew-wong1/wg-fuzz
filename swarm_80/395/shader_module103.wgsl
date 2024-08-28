struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1551f;

var<private> global1: array<f32, 19> = array<f32, 19>(1028f, -1000f, 303f, -1408f, 284f, -392f, -903f, -354f, -1319f, 3156f, 798f, -209f, -975f, 145f, -1215f, -1227f, 1287f, 717f, -140f);

var<private> global2: Struct_1;

var<private> global3: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    global1 = array<f32, 19>();
    let var_0 = abs(abs(global2.a));
    var var_1 = Struct_3(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(arg_0.x, 19u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 19u)])))))), Struct_1(max(var_0, global2.a), -603f, (global2.c && (global2.d.x || global2.d.x)) && any(global2.d), vec4<bool>(any(vec2<bool>(global2.c, global2.c)), true, !any(vec4<bool>(global2.d.x, true, false, true)), true), -u_input.c ^ 32024i), global2.d.xzy, !global2.d.zww, vec2<u32>(~1203u, 1u));
    let var_2 = countOneBits(abs(vec4<u32>(43786u, ~4294967295u, countOneBits(49712u), 17077u) << ((select(vec4<u32>(49052u, 53954u, 2972u, 4294967295u), vec4<u32>(15640u, arg_0.x, 0u, arg_0.x), var_1.c.x) ^ (vec4<u32>(var_1.e.x, var_1.e.x, u_input.d, 0u) ^ vec4<u32>(u_input.b.x, 1u, arg_0.x, var_1.e.x))) % vec4<u32>(32u))));
    var var_3 = select(global2.d, !(!global2.d), !select(!(!var_1.b.d), global2.d, var_1.b.d));
    return any(vec4<bool>(!(var_0.x >= _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, global2.a.x), vec3<i32>(1i, var_0.x, u_input.c))), true, false, select(0u <= ~var_2.x, any(global2.d), true)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_3 {
    global0 = 1155f;
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, arg_1.x, _wgslsmith_div_f32(global2.b, arg_1.x)));
    let var_1 = !select(true, any(global2.d.wy), _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(select(arg_1.x, -129f, global2.d.x)))) > arg_0);
    let var_2 = arg_2.x;
    var var_3 = Struct_2(true);
    return Struct_3(1641f, Struct_1(select(global2.a, vec2<i32>(~u_input.a, global2.e >> (arg_2.x % 32u)), false), var_0.x, all(global2.d.ww), global2.d, _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(0i), -33261i, ~(-30528i), u_input.c), (vec4<i32>(u_input.c, u_input.c, global2.e, global2.a.x) | vec4<i32>(16282i, u_input.a, 0i, 26561i)) | ~vec4<i32>(0i, global2.e, -24198i, 19190i))), select(!select(vec3<bool>(true, false, false), select(global2.d.yyw, global2.d.xxw, vec3<bool>(global2.c, false, global2.d.x)), false), global2.d.zyx, func_3(min(vec3<u32>(var_2, u_input.d, arg_2.x), vec3<u32>(arg_2.x, 62249u, 49729u)))), select(select(select(!global2.d.xzx, vec3<bool>(var_1, var_1, global2.c), select(var_3.a, global2.d.x, true)), select(global2.d.ywx, !global2.d.wwy, !var_3.a), global2.c), !select(vec3<bool>(var_1, true, false), vec3<bool>(var_1, true, true), global2.d.zzx), all(vec4<bool>(global2.d.x, var_1, true, var_1)) || func_3(vec3<u32>(4294967295u, 39002u, var_2))), vec2<u32>(0u, max(1u, var_2)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<i32>) -> i32 {
    let var_0 = vec4<i32>(-1i, firstTrailingBit(~_wgslsmith_div_i32(u_input.a, abs(2571i))), ~arg_3.x, reverseBits(-953i));
    let var_1 = Struct_2(false);
    let var_2 = abs(~(~vec3<u32>(arg_2.e.x, _wgslsmith_add_u32(arg_2.e.x, 4294967295u), 29624u)));
    global2 = Struct_1(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(global2.a, vec2<i32>(arg_3.x, var_0.x)), vec2<i32>(-24390i, 1i)), global2.b, ~max(var_2.x, select(36321u, 0u, false)) < select(~arg_2.e.x, 29258u, arg_1.b.d.x), !select(select(func_2(328f, vec3<f32>(-117f, 1200f, arg_1.a), vec4<u32>(68259u, var_2.x, u_input.d, arg_2.e.x)).b.d, vec4<bool>(false, false, var_1.a, true), !vec4<bool>(false, arg_1.d.x, var_1.a, false)), vec4<bool>(all(vec3<bool>(false, arg_2.d.x, true)), all(arg_2.c.yy), true, false), arg_2.d.x), ~1i);
    global3 = ~(~arg_1.b.a.x << (_wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(arg_1.e.x, arg_1.e.x)), 0u) % 32u));
    return u_input.a;
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = ~min(-((vec3<i32>(u_input.a, -2147483647i, -1i) << (vec3<u32>(113543u, u_input.b.x, 0u) % vec3<u32>(32u))) << (~vec3<u32>(4294967295u, 1u, u_input.b.x) % vec3<u32>(32u))), vec3<i32>(31067i, 51264i, func_4(vec3<u32>(arg_0, u_input.d, u_input.b.x), func_2(global2.b, vec3<f32>(-1008f, global1[_wgslsmith_index_u32(arg_0, 19u)], 409f), vec4<u32>(arg_0, 0u, 1u, 4294967295u)), Struct_3(183f, Struct_1(vec2<i32>(global2.e, global2.e), global1[_wgslsmith_index_u32(3698u, 19u)], global2.d.x, global2.d, global2.e), global2.d.wyy, vec3<bool>(global2.d.x, global2.d.x, global2.c), vec2<u32>(1u, arg_0)), vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i))));
    let var_1 = _wgslsmith_add_i32(global2.a.x, firstLeadingBit(17353i));
    global1 = array<f32, 19>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(-global2.b)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~10681u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), 19u)]))) * global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(u_input.b), ~select(vec2<u32>(41957u, u_input.b.x), vec2<u32>(8594u, arg_0), vec2<bool>(global2.c, true)))), 19u)]);
    var var_2 = any(!select(!vec4<bool>(global2.c, global2.d.x, true, true), !vec4<bool>(global2.c, global2.d.x, global2.c, global2.c), global2.d.x));
    return select(global2.d.wxw, global2.d.zxx, !(u_input.d == _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, 0u, 52u), max(vec4<u32>(arg_0, 70215u, u_input.d, 4294967295u), vec4<u32>(arg_0, 42259u, 1u, 1u)))));
}

fn func_5(arg_0: u32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = arg_0;
    var var_1 = 19806u >= arg_0;
    global1 = array<f32, 19>();
    let var_2 = arg_3.c;
    var var_3 = func_2(_wgslsmith_f_op_f32(max(func_2(global2.b, vec3<f32>(2194f, 470f, -1339f), vec4<u32>(0u, ~1u, arg_2.x, ~35243u)).b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(709f - -623f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(-1218f - arg_3.b), -1702f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1071f, arg_3.b, arg_3.b) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.b, 569f, 924f), vec3<f32>(845f, -1525f, 2616f))))), ~vec4<u32>(2933u, _wgslsmith_clamp_u32(u_input.b.x ^ arg_0, ~1u, func_2(global2.b, vec3<f32>(291f, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(63896u, 19u)]), vec4<u32>(u_input.d, 1u, 0u, 4314u)).e.x), arg_0, 0u)).b;
    return ~select(countOneBits(vec3<u32>(arg_2.x << (4294967295u % 32u), _wgslsmith_mult_u32(54407u, arg_0), arg_2.x)), vec3<u32>(arg_2.x, 1u, ~42995u), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = func_5(u_input.d, func_1(1u), min(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(101941u, 1u, 1850u), ~vec3<u32>(u_input.d, u_input.b.x, u_input.b.x), vec3<u32>(u_input.d, 37959u, u_input.b.x)), abs(vec3<u32>(u_input.b.x, firstLeadingBit(u_input.d), 9263u))), func_2(-1708f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(217f, -636f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d, 19u)], -120f), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 19u)])), ~vec4<u32>(u_input.d, ~1819u, _wgslsmith_add_u32(u_input.b.x, u_input.d), 15205u)).b);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 0u), 19u)]) - func_2(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 19u)])), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(69400u, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], 1000f) - vec3<f32>(global2.b, global1[_wgslsmith_index_u32(var_1.x, 19u)], global1[_wgslsmith_index_u32(var_1.x, 19u)])), vec3<f32>(global2.b, global1[_wgslsmith_index_u32(var_1.x, 19u)], global1[_wgslsmith_index_u32(var_1.x, 19u)]))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 59053u, u_input.d, 2948u), vec4<u32>(u_input.d, var_1.x, 50481u, u_input.b.x))).a), Struct_1(vec2<i32>(-1i) * -abs(vec2<i32>(global2.a.x, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-441f + _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.d, 19u)])))), !global2.d.x, global2.d, u_input.a), func_1(_wgslsmith_mult_u32(u_input.b.x, abs(~u_input.d))), func_1(~var_1.x), vec2<u32>(var_1.x, ~(~(~58668u))));
    var var_3 = Struct_2(!all(func_2(global2.b, vec3<f32>(global1[_wgslsmith_index_u32(15931u, 19u)], global2.b, var_2.b.b), ~vec4<u32>(28837u, u_input.b.x, 8177u, 67544u)).c.yy));
    global2 = func_2(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-971f, global1[_wgslsmith_index_u32(var_2.e.x, 19u)])), vec3<f32>(-1290f, _wgslsmith_f_op_f32(trunc(-100f)), func_2(var_2.b.b, vec3<f32>(630f, global1[_wgslsmith_index_u32(var_1.x, 19u)], global2.b), vec4<u32>(var_1.x, u_input.d, var_1.x, 1u)).b.b), select(reverseBits(vec4<u32>(var_2.e.x, var_1.x, 1870u, var_1.x)), ~vec4<u32>(var_2.e.x, 14198u, u_input.b.x, var_2.e.x), select(vec4<bool>(false, true, var_2.d.x, var_3.a), vec4<bool>(false, false, global2.d.x, var_0), false))).b.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, 100f, var_2.b.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1595f, var_2.b.b, var_2.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, -814f, global2.b) * vec3<f32>(global2.b, global1[_wgslsmith_index_u32(64730u, 19u)], var_2.b.b))), vec3<bool>(0u <= var_1.x, false, true))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-1258f, global1[_wgslsmith_index_u32(var_2.e.x, 19u)], global1[_wgslsmith_index_u32(15154u, 19u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.b, global2.b, global1[_wgslsmith_index_u32(var_1.x, 19u)]) + vec3<f32>(global2.b, global1[_wgslsmith_index_u32(3852u, 19u)], -1000f))))), select(var_2.c, select(vec3<bool>(true, true, var_0), var_2.d, vec3<bool>(false, var_3.a, global2.d.x)), !select(vec3<bool>(false, true, false), vec3<bool>(true, global2.c, var_0), true)))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(82852u, 6000u, 36527u ^ var_2.e.x, 1u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(14342u, 4294967295u, var_2.e.x, 24962u), vec4<u32>(u_input.b.x, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 57661u, 101901u, 0u))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 48122u, var_1.x, 17930u), vec4<u32>(0u, u_input.d, u_input.d, 5140u)), ~vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), !(!var_2.b.c) && (true | var_3.a))).b;
    global1 = array<f32, 19>();
    let var_4 = countOneBits(vec4<i32>(global2.a.x, u_input.c, u_input.c, select(func_4(var_1, Struct_3(global1[_wgslsmith_index_u32(17826u, 19u)], var_2.b, vec3<bool>(var_0, true, false), global2.d.xyz, var_1.xx), Struct_3(var_2.b.b, Struct_1(var_2.b.a, -1502f, false, vec4<bool>(var_0, global2.c, global2.d.x, true), u_input.c), global2.d.zww, vec3<bool>(var_2.c.x, var_3.a, false), vec2<u32>(var_1.x, var_1.x)), vec4<i32>(var_2.b.e, global2.e, 35290i, u_input.c)) ^ ~var_2.b.a.x, 1i, true)));
    let var_5 = Struct_2(var_0);
    var var_6 = select(!vec4<bool>(_wgslsmith_sub_i32(global2.a.x, var_2.b.a.x) < var_2.b.e, false, !(var_2.e.x >= var_2.e.x), 53812u > ~var_1.x), select(var_2.b.d, !var_2.b.d, true & ((true & var_3.a) && true)), var_2.b.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(var_4.x, -94922i), reverseBits(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 28149u, 0u, var_1.x), vec4<u32>(1u, 4294967295u, 30673u, 56943u)), ~vec4<u32>(var_1.x, var_1.x, 39703u, 83690u)), ~(~u_input.d))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(18314u, 22541u, var_1.x), 32588u), vec2<u32>(_wgslsmith_clamp_u32(u_input.d, var_2.e.x, var_2.e.x), func_2(-1873f, vec3<f32>(var_2.b.b, var_2.a, var_2.b.b), vec4<u32>(1u, 0u, var_1.x, 4294967295u)).e.x)), vec2<u32>(4294967295u, u_input.d), abs(~select(u_input.b, var_2.e, var_6.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-783f, 185f) + _wgslsmith_f_op_f32(f32(-1f) * -637f)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_1.yz, u_input.b), 19u)]) - global1[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec3_u32(var_1, var_1)), 19u)]), ~vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1353i, var_4.x, var_2.b.a.x), vec3<i32>(18214i, u_input.c, -39897i)), var_4.wzx), ~(-31201i)));
}

