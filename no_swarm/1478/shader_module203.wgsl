struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(41406u, 4294967295u), vec2<u32>(4294967295u, 44830u), vec2<u32>(4294967295u, 0u), vec2<u32>(50866u, 4294967295u), vec2<u32>(3723u, 31978u), vec2<u32>(2968u, 4294967295u), vec2<u32>(67730u, 23699u), vec2<u32>(4294967295u, 33137u));

var<private> global1: array<vec2<f32>, 26>;

var<private> global2: vec3<f32> = vec3<f32>(-501f, 1037f, 1000f);

var<private> global3: vec4<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    global0 = array<vec2<u32>, 8>();
    global0 = array<vec2<u32>, 8>();
    let var_0 = vec2<u32>(1u, 48707u);
    let var_1 = u_input.a;
    global0 = array<vec2<u32>, 8>();
    return vec3<bool>(max(~(u_input.a ^ global3.x), var_1) != var_1, _wgslsmith_f_op_f32(-global2.x) != global2.x, _wgslsmith_add_i32(~(-u_input.a), -select(global3.x, 12586i, true)) > _wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.a, 8389i, global3.x, global3.x)), -vec4<i32>(-20384i, 1i, 8140i, -2147483647i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(40943i, -1i, -1i, 41488i), vec4<i32>(-34173i, u_input.a, u_input.a, u_input.a))));
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_2(arg_2.a.c, vec3<bool>(false, arg_2.c.b.x, true | (~arg_2.c.c.a.x < 2147483647i)), arg_2.c.a);
    global3 = vec4<i32>(1i, firstTrailingBit(global3.x >> (var_0.a.b % 32u)), global3.x, global3.x);
    global1 = array<vec2<f32>, 26>();
    global1 = array<vec2<f32>, 26>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(675f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2495f + arg_1.x), arg_2.d))), 1599f);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(285f + 271f))), -1000f, select(u_input.a, u_input.a, var_0.b.x) <= 0i)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1229f)) - _wgslsmith_f_op_f32(var_1.x * arg_2.e))))));
}

fn func_2(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(func_4(true, vec2<f32>(global2.x, _wgslsmith_f_op_f32(round(597f))), Struct_3(Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, global3.x), vec2<i32>(u_input.a, 5487i)), 1u), arg_0, Struct_1(global3.yx, reverseBits(7565u))), global3.x, Struct_2(Struct_1(global3.yy, 0u), !arg_0, Struct_1(global3.zx, 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1224f, global2.x) + _wgslsmith_div_f32(global2.x, global2.x)), any(func_3()))), -745f)));
    var var_1 = min(vec2<u32>(~1u, 1u), abs(vec2<u32>(_wgslsmith_mod_u32(1u, 39071u), 18747u)));
    let var_2 = Struct_5(arg_0.xx, Struct_2(Struct_1(global3.yw, 1u), !(!arg_0), Struct_1(global3.yx, var_1.x)));
    var_1 = global0[_wgslsmith_index_u32(min(~var_1.x, 0u) ^ 1u, 8u)];
    let var_3 = Struct_4(select(_wgslsmith_div_vec4_u32(vec4<u32>(abs(54501u), ~var_1.x, 1u, 1u), vec4<u32>(var_2.b.c.b | var_1.x, _wgslsmith_mult_u32(var_1.x, 87204u), _wgslsmith_mod_u32(12413u, 32970u), _wgslsmith_mult_u32(var_2.b.c.b, var_1.x))), ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(51856u, 32661u, var_2.b.c.b, 1u), vec4<u32>(var_2.b.a.b, 0u, var_2.b.a.b, 1u))), any(!select(arg_0.zx, arg_0.yx, vec2<bool>(true, arg_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1364f, global2.x, global2.x)))));
    return !var_2.b.b;
}

fn func_5(arg_0: vec3<u32>, arg_1: bool) -> Struct_2 {
    let var_0 = countOneBits(global3.x);
    let var_1 = _wgslsmith_mult_vec3_i32(global3.wxy, -vec3<i32>(~(-2025i), 2147483647i | var_0, global3.x));
    global1 = array<vec2<f32>, 26>();
    let var_2 = Struct_5(!select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), any(vec3<bool>(arg_1, false, arg_1))), select(!vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), !vec2<bool>(arg_1, arg_1)), true), Struct_2(Struct_1(global3.yx, arg_0.x), select(!vec3<bool>(true, false, arg_1), select(func_2(vec3<bool>(false, true, true)), !vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1)), !func_3()), Struct_1(_wgslsmith_div_vec2_i32(global3.yx, _wgslsmith_div_vec2_i32(global3.wz, vec2<i32>(-2147483647i, 2147483647i))), (1602u << (arg_0.x % 32u)) ^ 72537u)));
    global2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * -1000f))), global2.x)));
    return var_2.b;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    var var_0 = func_5(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(31741u, 0u, 36439u), vec3<u32>(0u, 35818u, arg_0)), countOneBits(vec3<u32>(arg_0, 35428u, 49085u))) & select(select(vec3<u32>(4294967295u, arg_0, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 94565u, arg_1.b), vec3<u32>(0u, arg_1.b, arg_1.b)), vec3<bool>(true, false, true)), reverseBits(vec3<u32>(arg_1.b, 1u, arg_0)), vec3<bool>(true, true, true)), false & all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_2(vec3<bool>(true, true, true)))));
    let var_1 = arg_1.b;
    var_0 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(select(arg_1.a, vec2<i32>(-1i, arg_1.a.x), true), vec2<i32>(0i, _wgslsmith_div_i32(u_input.a, var_0.a.a.x))), countOneBits(arg_0 & var_0.c.b) ^ arg_1.b), var_0.b, Struct_1(_wgslsmith_sub_vec2_i32(var_0.c.a, ~abs(vec2<i32>(global3.x, 25891i))), var_0.a.b));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.yx - vec2<f32>(893f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, 111f) + global2.x))));
    let var_3 = Struct_5(!func_3().yx, Struct_2(var_0.c, var_0.b, arg_1));
    return Struct_3(Struct_2(func_5(vec3<u32>(0u, var_0.a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.b, 36080u, 113111u), vec3<u32>(22480u, var_3.b.a.b, 4294967295u))), true).a, var_0.b, var_0.c), -1i, var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-181f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2205f)) * _wgslsmith_f_op_f32(sign(-212f)))), _wgslsmith_div_f32(-961f, _wgslsmith_f_op_f32(f32(-1f) * -1347f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(reverseBits(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(0i, 2147483647i)), min(vec2<i32>(56953i, global3.x), global3.wx)))), 0u);
    var var_1 = firstLeadingBit(u_input.a);
    let var_2 = -1000f;
    global1 = array<vec2<f32>, 26>();
    var var_3 = false;
    let var_4 = Struct_4(~(~(~vec4<u32>(var_0.b, 4294967295u, var_0.b, var_0.b))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, 173f)) + var_2), _wgslsmith_f_op_f32(abs(var_2))))));
    var var_5 = func_1(var_4.a.x, Struct_1(var_0.a, _wgslsmith_add_u32(~var_4.a.x, ~var_4.a.x) >> (var_0.b % 32u)), global2.x);
    let var_6 = Struct_4(var_4.a, vec4<f32>(var_4.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1110f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1118f, var_5.e, var_5.a.b.x)))), 644f));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.a.b, vec3<u32>(~_wgslsmith_clamp_u32(5151u, reverseBits(55992u), 44994u), 36587u, select(1715u, var_4.a.x, !var_5.c.b.x) & 0u), ~(var_5.a.a.b << (var_6.a.x % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.b.yw) * vec2<f32>(-567f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(933f, 554f, false))))), -_wgslsmith_div_vec3_i32(global3.zwz, ~vec3<i32>(-1i, 2147483647i, 2147483647i)));
}

