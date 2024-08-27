struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(vec2<u32>(100192u, 78715u), false), -488f), Struct_2(Struct_1(vec2<u32>(18968u, 5390u), true), -184f), Struct_2(Struct_1(vec2<u32>(23311u, 3796u), true), 277f), Struct_2(Struct_1(vec2<u32>(21181u, 4294967295u), false), -1680f), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), false), -1354f), Struct_2(Struct_1(vec2<u32>(4294967295u, 71146u), true), -230f), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), true), 710f), Struct_2(Struct_1(vec2<u32>(0u, 26865u), false), 1044f), Struct_2(Struct_1(vec2<u32>(37417u, 1u), true), -303f), Struct_2(Struct_1(vec2<u32>(12193u, 1u), false), -484f), Struct_2(Struct_1(vec2<u32>(11358u, 11890u), false), 1000f), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), false), -281f), Struct_2(Struct_1(vec2<u32>(40558u, 71179u), false), -1813f), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), false), -227f), Struct_2(Struct_1(vec2<u32>(0u, 27806u), true), 849f), Struct_2(Struct_1(vec2<u32>(4294967295u, 23575u), true), 1180f), Struct_2(Struct_1(vec2<u32>(4294967295u, 10389u), true), 127f), Struct_2(Struct_1(vec2<u32>(1u, 0u), true), -279f), Struct_2(Struct_1(vec2<u32>(19267u, 12362u), true), -1473f));

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec2<u32>(1u, 1u), true), -1157f), Struct_2(Struct_1(vec2<u32>(35989u, 8194u), false), -1489f), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), false), 954f), Struct_2(Struct_1(vec2<u32>(10117u, 21432u), true), -1297f), Struct_2(Struct_1(vec2<u32>(0u, 61287u), false), 448f), Struct_2(Struct_1(vec2<u32>(0u, 123019u), true), 1466f), Struct_2(Struct_1(vec2<u32>(4294967295u, 77108u), true), 1375f), Struct_2(Struct_1(vec2<u32>(42078u, 6226u), false), -1838f), Struct_2(Struct_1(vec2<u32>(1u, 5588u), true), 597f), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), true), 518f), Struct_2(Struct_1(vec2<u32>(4294967295u, 21191u), false), 173f), Struct_2(Struct_1(vec2<u32>(4294967295u, 61030u), true), -312f), Struct_2(Struct_1(vec2<u32>(0u, 5852u), false), 149f), Struct_2(Struct_1(vec2<u32>(1u, 29912u), true), -1487f));

var<private> global2: vec3<i32> = vec3<i32>(0i, -1i, 8568i);

var<private> global3: array<u32, 16>;

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>) -> vec2<i32> {
    global3 = array<u32, 16>();
    let var_0 = true;
    global3 = array<u32, 16>();
    let var_1 = ~(~vec2<u32>(global4.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global4.a.x, global4.a.x, 32835u), vec3<u32>(global4.a.x, global3[_wgslsmith_index_u32(58064u, 16u)], 1u)), ~vec3<u32>(4294967295u, 34981u, global4.a.x))));
    var var_2 = Struct_2(Struct_1(~vec2<u32>(8595u << (0u % 32u), 108837u), !(!select(var_0, var_0, global4.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-612f, 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1078f)), _wgslsmith_f_op_f32(1f * 2319f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(610f))), 1124f)));
    return firstTrailingBit(abs(_wgslsmith_sub_vec2_i32(min(global2.xy, arg_0.yy), global2.zx)));
}

fn func_2() -> vec3<u32> {
    var var_0 = max(func_3(u_input.c.wzz), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, 2147483647i) | global2.yy, vec2<i32>(-1i) * -u_input.c.yz)));
    var var_1 = 0u;
    global3 = array<u32, 16>();
    let var_2 = select(!(!vec3<bool>(true, any(vec2<bool>(true, true)), select(true, global4.b, global4.b))), !vec3<bool>(all(select(vec4<bool>(false, false, global4.b, false), vec4<bool>(false, false, true, false), true)), _wgslsmith_mod_i32(u_input.c.x, u_input.c.x) <= _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-41640i, var_0.x, 593i, 16795i)), _wgslsmith_f_op_f32(ceil(1000f)) <= _wgslsmith_f_op_f32(f32(-1f) * -465f)), !select(vec3<bool>(true, true, all(vec4<bool>(global4.b, false, global4.b, true))), !vec3<bool>(global4.b, false, global4.b), true));
    let var_3 = Struct_1(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(53985u, 1u) & global4.a, _wgslsmith_sub_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(62696u, 16u)], 16u)], 16u)], 1u), global4.a))) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global4.a.x) >> (vec2<u32>(1u, global3[_wgslsmith_index_u32(1u, 16u)]) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(global4.a.x, 4294967295u))) % vec2<u32>(32u)), global4.b);
    return ~vec3<u32>(global4.a.x, ~global4.a.x, ~1u);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_u32(~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15779u, 16u)], 16u)]), vec3<u32>(global3[_wgslsmith_index_u32(42004u, 16u)], 28117u, global4.a.x))), _wgslsmith_div_vec3_u32(func_2(), vec3<u32>(1788u, ~4294967295u, max(global3[_wgslsmith_index_u32(global4.a.x, 16u)], global4.a.x)))) >> (~(vec3<u32>(~49331u, _wgslsmith_mod_u32(30236u, global3[_wgslsmith_index_u32(4294967295u, 16u)]), ~global4.a.x) | select(_wgslsmith_add_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global4.a.x, 16u)], global4.a.x, global4.a.x), vec3<u32>(global4.a.x, global3[_wgslsmith_index_u32(72842u, 16u)], 27456u)), ~vec3<u32>(1u, 1u, global3[_wgslsmith_index_u32(global4.a.x, 16u)]), global4.b)) % vec3<u32>(32u));
    let var_1 = Struct_1(var_0.zz | ~global4.a, arg_0.x);
    let var_2 = 1u;
    global1 = array<Struct_2, 14>();
    var var_3 = u_input.c.zxy;
    return var_1;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(firstLeadingBit(min(1u, arg_0)) << (global4.a.x % 32u), ~countOneBits(4294967295u)), ~0u), 19u)];
    let var_1 = -42164i;
    global1 = array<Struct_2, 14>();
    global4 = Struct_1(vec2<u32>(var_0.a.a.x, ~4294967295u) & func_1(select(!vec3<bool>(false, var_0.a.b, false), !vec3<bool>(false, var_0.a.b, var_0.a.b), select(vec3<bool>(var_0.a.b, arg_2.a.b, arg_2.a.b), vec3<bool>(false, var_0.a.b, false), arg_2.a.b))).a, global4.b);
    global2 = abs(reverseBits(vec3<i32>(24248i, -23727i, select(-2147483647i, u_input.a.x, var_0.a.b)))) & vec3<i32>(-(max(2147483647i, u_input.a.x) | _wgslsmith_clamp_i32(var_1, 0i, u_input.a.x)), -global2.x, abs(28845i));
    return arg_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<Struct_2, 19>();
    global1 = array<Struct_2, 14>();
    global1 = array<Struct_2, 14>();
    let var_0 = _wgslsmith_mult_vec3_u32(arg_2, _wgslsmith_mult_vec3_u32(~(~(vec3<u32>(global3[_wgslsmith_index_u32(global4.a.x, 16u)], 0u, global3[_wgslsmith_index_u32(global4.a.x, 16u)]) >> (arg_2 % vec3<u32>(32u)))), vec3<u32>(arg_0.a.a.x, 19769u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0.a.a.x, 16u)], 16u)])));
    var var_1 = ~arg_0.a.a.x;
    return func_1(vec3<bool>(false & arg_0.a.b, true, arg_0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_5(Struct_2(func_4(34644u ^ global4.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(-2055f, -643f)), Struct_2(func_1(vec3<bool>(false, global4.b, true)), _wgslsmith_f_op_f32(min(-321f, 339f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1389f * _wgslsmith_f_op_f32(f32(-1f) * -2362f)))), u_input.b, vec3<u32>(abs(110272u), ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4.a.x, 1u), 16u)] << (0u % 32u), 16u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 16u)], 16u)]), vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(u_input.c.wxz, u_input.c.xwz), select(func_3(u_input.c.wzy).x, ~38366i ^ select(553i, 1i, global4.b), func_4(global4.a.x, vec2<f32>(-1606f, -1982f), Struct_2(Struct_1(global4.a, false), -2066f)).b | true), global2.x));
    let var_0 = global1[_wgslsmith_index_u32(46643u, 14u)];
    global4 = Struct_1(_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(var_0.a.a.x, 16u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16141u, 16u)], 16u)]), ~vec2<u32>(92814u, 81037u)), vec2<u32>(0u, _wgslsmith_add_u32(~var_0.a.a.x, global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(21567u, 16u)], 16u)]))), (func_5(Struct_2(var_0.a, -1730f), 14673i, vec3<u32>(4294967295u, 3403u, var_0.a.a.x), ~vec3<i32>(global2.x, 1i, global2.x)).b & (var_0.a.b == true)) || true);
    var var_1 = ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(17757u, 54016u)), 16u)], 16u)];
    var var_2 = var_0.a;
    global3 = array<u32, 16>();
    var var_3 = var_0.a;
    var var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}

