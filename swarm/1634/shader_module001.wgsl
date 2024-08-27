struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), -28507i, -50574i);

var<private> global1: array<f32, 11>;

var<private> global2: Struct_2 = Struct_2(Struct_1(i32(-2147483648), vec3<f32>(171f, -1903f, 309f)), Struct_1(0i, vec3<f32>(-950f, 761f, -1309f)), Struct_1(-1i, vec3<f32>(-145f, 586f, 1415f)));

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

var<private> global4: vec4<f32> = vec4<f32>(219f, -692f, -931f, -313f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(global2.a.b.x, -192f), global2.c.b.x);
    var var_1 = Struct_1(abs(12871i), global4.yyz);
    global0 = ~(~select(vec3<i32>(-global2.c.a, 42831i, global2.b.a), ~vec3<i32>(arg_0, global0.x, global0.x) >> (vec3<u32>(u_input.b.x, 0u, u_input.b.x) % vec3<u32>(32u)), vec3<bool>(true, true, true)));
    var var_2 = global2.c;
    var var_3 = any(!vec3<bool>(!global3.x, arg_1, true));
    return -495f;
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_2 {
    var var_0 = -_wgslsmith_add_i32(1i, _wgslsmith_mod_i32(arg_1, min(552i, global0.x)));
    global0 = vec3<i32>(0i, ~abs(0i), 20711i);
    var var_1 = vec4<f32>(global2.c.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 11u)]))), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f))) * _wgslsmith_f_op_f32(-global2.b.b.x)));
    var var_2 = Struct_2(Struct_1(~(-2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.yzz * vec3<f32>(var_1.x, global2.b.b.x, -242f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global4.x, -1328f, global4.x), global4.wyw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(392f, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], global4.x)), vec3<bool>(arg_0, true, true))))), Struct_1(_wgslsmith_div_i32(_wgslsmith_clamp_i32(68547i, -2147483647i, 40201i), arg_1), vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(0u, u_input.b.x)), 11u)], 166f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f - 1000f) * 238f))), global2.c);
    var_2 = Struct_2(var_2.a, global2.b, var_2.c);
    return Struct_2(Struct_1(var_2.b.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-288f - -1266f) * 546f), global1[_wgslsmith_index_u32(~4294967295u, 11u)], _wgslsmith_f_op_f32(func_3(1i, var_2.a.b.x < global1[_wgslsmith_index_u32(u_input.b.x, 11u)])))), Struct_1(-var_2.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global4.wyy)), _wgslsmith_f_op_vec3_f32(vec3<f32>(107f, global4.x, global4.x) + global4.yzw)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.x, var_2.c.b.x, -477f), global4.xwx)))), Struct_1(abs(arg_1) | select(~32031i, abs(arg_1), true), var_2.a.b));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = abs(u_input.b.x);
    global0 = _wgslsmith_div_vec3_i32(max(~_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(arg_2.x, arg_2.x, arg_1.b.a)), -vec3<i32>(-17645i, -1i, -10071i), vec3<i32>(-1i, -16281i, arg_1.c.a)), select(-vec3<i32>(global0.x, 16454i, -3732i), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-51252i, -1i, arg_2.x), vec3<i32>(1i, arg_1.b.a, arg_1.a.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -13933i, arg_1.a.a), vec3<i32>(arg_1.a.a, arg_1.b.a, -2147483647i))), !vec3<bool>(global3.x, false, global3.x))), -vec3<i32>(global0.x, global0.x, global2.a.a));
    global4 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1743f)))), arg_1.b.b.x, _wgslsmith_f_op_f32(f32(-1f) * -567f))));
    var var_1 = Struct_2(arg_1.a, arg_1.b, func_2(false, _wgslsmith_clamp_i32((arg_2.x >> (8404u % 32u)) ^ min(arg_1.c.a, -14233i), 0i, 10742i)).c);
    let var_2 = u_input.c;
    return func_2(true, _wgslsmith_dot_vec2_i32(global0.zx, firstLeadingBit(_wgslsmith_add_vec2_i32(arg_2, vec2<i32>(var_1.c.a, arg_2.x)))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.x))), func_2(!(!(global3.x | true)), global2.c.a), _wgslsmith_mod_vec2_i32(-vec2<i32>(1i, min(-2147483647i, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.a, global2.b.a, -46969i), vec3<i32>(global2.c.a, -1i, global0.x)), _wgslsmith_add_i32(14710i, global0.x)), vec2<i32>(max(-44631i, 2147483647i), abs(global0.x)))));
    global0 = ~vec3<i32>(var_0.c.a, global0.x, _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global2.a.a, global0.x, global2.b.a), vec4<i32>(global2.b.a, global0.x, -1519i, -1i)), ~abs(-1305i)));
    global3 = !(!(!(!vec3<bool>(global3.x, true, global3.x))));
    let var_1 = var_0.a;
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1229f, global1[_wgslsmith_index_u32(u_input.a | 1u, 11u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 11u)]), -189f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1116f, global1[_wgslsmith_index_u32(19912u, 11u)], global1[_wgslsmith_index_u32(13236u, 11u)], global4.x), vec4<f32>(global4.x, 278f, var_1.b.x, global2.c.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, var_1.b.x, var_0.a.b.x, var_0.b.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.b.x, -271f, -852f, 984f) * vec4<f32>(global2.b.b.x, -1000f, global1[_wgslsmith_index_u32(u_input.a, 11u)], -1394f)))))));
    return Struct_2(var_0.c, Struct_1(-global0.x, _wgslsmith_f_op_vec3_f32(select(var_2.xxz, vec3<f32>(_wgslsmith_f_op_f32(sign(1661f)), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-global2.a.b.x)), true))), var_0.c);
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = global0.yz;
    var var_1 = func_1();
    var var_2 = arg_0.b;
    global0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~max(i32(-1i) * -1564i, global2.b.a), select(~_wgslsmith_clamp_i32(arg_0.a.a, 2147483647i, -61629i), -2147483647i, true), -33800i), firstLeadingBit(vec3<i32>(global0.x, ~var_1.b.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, global2.c.a), global0.yy))));
    global2 = func_4(func_2(global3.x, firstTrailingBit(func_1().a.a)).b.b.x, Struct_2(func_2(global3.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 14163i, -2147483647i), vec3<i32>(17188i, 0i, var_0.x)), -var_2.a)).b, var_1.c, func_4(_wgslsmith_f_op_f32(func_3(reverseBits(5108i), true)), arg_2, select(global0.zy | global0.yz, global0.yz, !global3.xx)).c), global0.yz);
    return abs(_wgslsmith_sub_vec3_i32(vec3<i32>((arg_2.c.a ^ global0.x) & global0.x, -var_1.c.a, arg_2.b.a), vec3<i32>(-(~var_2.a), func_1().b.a, 17853i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global0.xy);
    let var_1 = !select(global3.x & false, true, !(_wgslsmith_mod_i32(-1i, global0.x) <= -var_0.x));
    global0 = func_5(Struct_2(Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global4.wxz, global4.ywz))), Struct_1(0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c.b) + _wgslsmith_div_vec3_f32(vec3<f32>(-2094f, global4.x, -1005f), vec3<f32>(global2.c.b.x, global4.x, global2.c.b.x)))), global2.b), var_1, func_1());
    var var_2 = u_input.c.x;
    var var_3 = !(1i <= var_0.x);
    let var_4 = all(select(!select(select(vec4<bool>(global3.x, var_1, global3.x, var_1), vec4<bool>(global3.x, global3.x, var_1, var_1), true), select(vec4<bool>(false, var_1, var_1, global3.x), vec4<bool>(true, false, global3.x, true), vec4<bool>(true, var_1, global3.x, true)), vec4<bool>(false, false, global3.x, true)), !vec4<bool>(false, true == var_1, 2147483647i >= global0.x, global2.c.b.x < global1[_wgslsmith_index_u32(35128u, 11u)]), var_1));
    var var_5 = ~(~(vec3<i32>(-1i) * -(~vec3<i32>(global2.c.a, -34512i, global0.x))));
    global2 = Struct_2(Struct_1(~global0.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-func_1().b.b)))), Struct_1(global2.a.a, vec3<f32>(-667f, -707f, _wgslsmith_div_f32(811f, 409f))), global2.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(firstTrailingBit(u_input.b.x), _wgslsmith_mod_u32(u_input.a, max(u_input.a, ~0u))), -826f, global4.x, u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2141f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1206f - -1183f) - global4.x)))));
}

