struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(42220i, 3175i, -24419i, i32(-2147483648));

var<private> global1: Struct_5;

var<private> global2: array<Struct_5, 30>;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

var<private> global4: array<f32, 21>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> vec2<bool> {
    let var_0 = 17921i;
    return select(vec2<bool>(true, ~_wgslsmith_mult_i32(12137i, -13257i) <= _wgslsmith_div_i32(abs(1i), global0.x)), select(vec2<bool>(global1.b.x, !arg_0.a.x != false), select(global1.b.yz, select(vec2<bool>(true, true), !vec2<bool>(arg_0.a.x, true), true), !(!global3.x)), arg_0.a.yz), !(0u != u_input.c.x));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global2 = array<Struct_5, 30>();
    global3 = select(select(select(!vec2<bool>(true, global3.x), vec2<bool>(false, !global1.a.a.x), true), select(global1.a.a.xz, select(vec2<bool>(true, true), vec2<bool>(true, true), !global1.b.yz), !any(vec3<bool>(false, global1.b.x, global3.x))), global3.x), func_3(Struct_3(global1.b.xxz, vec3<bool>(global1.b.x, true, all(global1.b))), global1.a.d), false);
    var var_0 = Struct_4(global1.c.x, select(!vec3<bool>(false, true, any(vec4<bool>(global3.x, false, true, true))), !(!(!vec3<bool>(true, global1.a.b, global3.x))), vec3<bool>(true, true, all(vec4<bool>(true, true, global3.x, global1.a.a.x)))), Struct_1(firstLeadingBit(_wgslsmith_clamp_vec2_u32(arg_0.zy >> (u_input.c.xx % vec2<u32>(32u)), arg_0.yz, vec2<u32>(global1.a.c.x, 6168u))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(0u, 21u)], global4[_wgslsmith_index_u32(u_input.c.x, 21u)]), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(61911u, 28767u, u_input.c.x), vec3<u32>(u_input.c.x, global1.a.c.x, 22960u)), 21u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global1.a.c.x, 21u)] + 137f), _wgslsmith_f_op_f32(select(global1.a.d.x, -353f, false))), vec4<f32>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(2846u, global1.a.c.x, global1.a.c.x), arg_0), 21u)], global1.e.x, _wgslsmith_f_op_f32(trunc(-235f)), _wgslsmith_f_op_f32(1529f + -1480f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4[_wgslsmith_index_u32(0u, 21u)], global4[_wgslsmith_index_u32(19123u, 21u)], -1415f, global1.c.x)))) * vec4<f32>(-780f, global1.e.x, _wgslsmith_f_op_f32(-global1.c.x), -1000f)), ~global1.a.c & abs(min(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(4294967295u, arg_0.x))), global1.a.a.zx), vec4<i32>(~_wgslsmith_sub_i32(~u_input.b, i32(-1i) * -1i), ~global1.d.x, -20656i, 5004i));
    let var_1 = !select(!select(global1.b, global1.b, true), select(global1.b, select(!vec4<bool>(true, true, global1.a.b, false), global1.b, !global1.b), vec4<bool>(true, true, true, global3.x)), true);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(14045u, var_0.c.a.x, ~33007u, global1.a.c.x), min(vec4<u32>(0u, select(0u, 21015u, true), var_0.c.a.x, u_input.c.x | 4294967295u), max(~abs(vec4<u32>(u_input.c.x, 71598u, arg_0.x, 4294967295u)), vec4<u32>(var_0.c.a.x, _wgslsmith_dot_vec2_u32(var_0.c.d, global1.a.c), countOneBits(var_0.c.d.x), abs(1u))))), 30u)];
    return Struct_3(select(!var_1.yzw, global1.b.wxy, select(!(!var_1.xyy), select(select(vec3<bool>(global3.x, var_1.x, global1.a.b), global1.b.yzy, true), select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(true, var_1.x, true), var_0.b), global3.x), global1.a.a)), !vec3<bool>(all(global1.b.zx) & any(vec2<bool>(false, false)), var_0.c.e.x, var_0.c.e.x));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> u32 {
    var var_0 = -min(min(vec4<i32>(countOneBits(0i), 25080i, 42747i, _wgslsmith_sub_i32(1i, 24456i)), vec4<i32>(-45352i, ~u_input.a.x, ~global0.x, global0.x ^ global1.d.x)), vec4<i32>(global1.d.x, _wgslsmith_dot_vec3_i32(global0.xxx, vec3<i32>(global0.x, global1.d.x, u_input.b)), abs(select(0i, -19070i, arg_1.b.x)), global1.d.x));
    global0 = min(max(select(global1.d, -vec4<i32>(2147483647i, 0i, 0i, -7290i), all(global1.b.zxw)), ~firstLeadingBit(vec4<i32>(1i, -61186i, 0i, 2147483647i))), global1.d << (abs(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 28522u, 1u), vec4<u32>(u_input.c.x, 11720u, 4294967295u, 465u)), ~vec4<u32>(28766u, 1u, 39456u, u_input.c.x))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_mult_i32(2147483647i, _wgslsmith_mult_i32(-countOneBits(i32(-1i) * -66580i), 0i));
    global3 = vec2<bool>(global1.b.x, any(!(!global1.b)));
    global4 = array<f32, 21>();
    return _wgslsmith_add_u32(29189u, 52181u ^ _wgslsmith_add_u32(u_input.c.x, u_input.c.x));
}

fn func_1() -> Struct_4 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(global1.a.c.x, abs(1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~4537u, ~32619u), vec2<u32>(0u, global1.a.c.x))) << (min(func_4(-1i, func_2(u_input.c)) ^ _wgslsmith_mod_u32(1047u, select(0u, 26392u, true)), max(countOneBits(u_input.c.x) ^ abs(u_input.c.x), global1.a.c.x)) % 32u), 21u)];
    global1 = Struct_5(global1.a, vec4<bool>(countOneBits(select(global1.d.x, 42608i, false)) > -17923i, false, all(global1.b), !(global3.x | global1.b.x)), global1.c, vec4<i32>(28897i, reverseBits(1i), global0.x, -81196i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global1.a.d * global1.c)))));
    var var_1 = Struct_3(global1.b.xzw, select(global1.b.yxw, vec3<bool>(_wgslsmith_clamp_u32(u_input.c.x, global1.a.c.x, global1.a.c.x) >= ~global1.a.c.x, false, global3.x), _wgslsmith_dot_vec3_u32(u_input.c | vec3<u32>(global1.a.c.x, 34655u, 1u), u_input.c) < 51540u));
    let var_2 = ~global0.x;
    var_1 = func_2(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(select(u_input.c, vec3<u32>(global1.a.c.x, 4294967295u, 36299u), all(global1.b)), u_input.c), ~53562u));
    return Struct_4(global4[_wgslsmith_index_u32(1u, 21u)], vec3<bool>(!((global1.d.x << (u_input.c.x % 32u)) < (56791i << (1u % 32u))), !(!var_1.a.x), var_1.b.x), Struct_1(global1.a.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1044f, _wgslsmith_f_op_f32(339f - -484f), -1423f, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.c.x, 21u)]))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f)), _wgslsmith_div_f32(1682f, _wgslsmith_f_op_f32(min(630f, global4[_wgslsmith_index_u32(global1.a.c.x, 21u)]))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~u_input.c.x, 21u)] - 778f), -718f), vec2<u32>(~firstLeadingBit(24660u), global1.a.c.x), !vec2<bool>(true, global1.a.a.x)), _wgslsmith_clamp_vec4_i32(firstLeadingBit(~vec4<i32>(92197i, global0.x, -2147483647i, global1.d.x)), reverseBits(global1.d), firstLeadingBit(global1.d)));
}

fn func_5(arg_0: Struct_4) -> u32 {
    let var_0 = ~select(~select(global0.yz, ~u_input.a, !global1.b.ww), global0.xz, !global1.b.zw);
    var var_1 = func_3(Struct_3(!arg_0.b, global1.a.a), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), arg_0.a), -538f, 232f)).x;
    var var_2 = vec4<i32>(-global1.d.x, 1i, global1.d.x, global0.x) | ~(~arg_0.d | _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, global1.d.x, global1.d.x, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 41535i, var_0.x, -10314i), vec4<i32>(arg_0.d.x, global1.d.x, 1i, 2276i))));
    var var_3 = ~(vec4<i32>(-49007i, _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.x, 41756i), -var_2.wy), _wgslsmith_dot_vec2_i32(var_2.wz, u_input.a), global0.x) | _wgslsmith_div_vec4_i32(arg_0.d << (vec4<u32>(global1.a.c.x, u_input.c.x, arg_0.c.a.x, global1.a.c.x) % vec4<u32>(32u)), reverseBits(reverseBits(vec4<i32>(1655i, -2147483647i, 2147483647i, var_2.x)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-global1.e);
    return 42538u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(4294967295u, func_5(func_1()));
    let var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(var_0, 4294967295u, global1.a.c.x)) << (abs(~vec3<u32>(12264u, 0u, var_0)) % vec3<u32>(32u)), ~vec3<u32>(1u, u_input.c.x, select(1u, 0u, global1.b.x))), abs(vec3<u32>(min(var_0, ~var_0), ~(~global1.a.c.x), _wgslsmith_add_u32(var_0 << (0u % 32u), ~0u))));
    global3 = select(select(vec2<bool>(~(-11614i) >= abs(u_input.b), global3.x), !vec2<bool>(true, global3.x), func_2(~(vec3<u32>(var_1.x, global1.a.c.x, 1u) & u_input.c)).b.xz), !vec2<bool>(!func_2(vec3<u32>(4294967295u, var_1.x, u_input.c.x)).a.x, select(-38876i, global0.x, false) > max(-24083i, u_input.b)), global0.x < -34070i);
    global3 = vec2<bool>(global3.x, true);
    global2 = array<Struct_5, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32((-1i & (global1.d.x >> (4294967295u % 32u))) ^ ~global0.x, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(u_input.b, -4331i), firstTrailingBit(global0.x)) >> (44215u % 32u)), ~(~1u) | _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x, ~var_0), abs(0u)), _wgslsmith_f_op_vec4_f32(-func_1().c.c));
}

