struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-628f, 258f);

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(-26566i, 3829u, false), Struct_1(-6648i, 19292u, false), Struct_1(-33366i, 4294967295u, false), Struct_1(10722i, 80603u, false), Struct_1(0i, 41732u, true), Struct_1(17880i, 4294967295u, true), Struct_1(2147483647i, 0u, false), Struct_1(-6416i, 11121u, false), Struct_1(11659i, 4294967295u, true), Struct_1(-19319i, 29194u, false), Struct_1(-10305i, 4294967295u, true), Struct_1(-1i, 71798u, true), Struct_1(24324i, 30062u, false), Struct_1(1i, 30020u, false), Struct_1(2147483647i, 52278u, true), Struct_1(0i, 26531u, true), Struct_1(19998i, 4294967295u, true), Struct_1(-1i, 73u, false), Struct_1(i32(-2147483648), 0u, true));

var<private> global2: Struct_3;

var<private> global3: i32 = -20462i;

var<private> global4: array<Struct_3, 9>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<u32> {
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-891f)))))));
    global1 = array<Struct_1, 19>();
    global2 = global4[_wgslsmith_index_u32(global2.e.c.b, 9u)];
    return ~(vec3<u32>(~4294967295u, 13685u, reverseBits(~global2.e.b.b)) ^ _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global2.d.a.b, global2.e.b.b, 4294967295u), firstTrailingBit(vec3<u32>(global2.b.b, 11470u, 1u)), ~vec3<u32>(81762u, 47929u, 0u)), ~(~vec3<u32>(u_input.a, global2.d.c.b, u_input.b))));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    let var_0 = 0i;
    var var_1 = vec4<i32>(global2.e.d.x | ~(-1i), 1i, -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~(-18954i), ~var_0), -_wgslsmith_add_i32(-7366i, 10914i), -1i), arg_1.a.b.a);
    var var_2 = Struct_4(global2.a, -951f);
    let var_3 = !select(!select(!vec2<bool>(arg_1.a.c.c, true), vec2<bool>(false, arg_1.a.c.c), vec2<bool>(var_2.a.c.c, var_2.a.a.c)), vec2<bool>((arg_2 < arg_2) && global2.e.b.c, all(!vec4<bool>(true, arg_1.a.b.c, true, true))), vec2<bool>(global2.a.b.c, true));
    var var_4 = 4294967295u;
    return arg_1.a.a.a;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -106f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1178f))));
    var var_1 = Struct_1(func_4(global2.e.d.x, Struct_4(Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, global2.e.c.b), 19u)], Struct_1(global2.b.a, 17170u, global2.b.c), Struct_1(-70516i, 13259u, true), vec4<i32>(global2.d.a.a, global2.a.d.x, 2147483647i, global2.b.a)), 993f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -617f))), _wgslsmith_mult_vec3_u32(~vec3<u32>(global2.e.c.b, global2.a.c.b, 4294967295u) & func_3(), _wgslsmith_div_vec3_u32(~vec3<u32>(global2.d.b.b, 0u, 20962u), ~vec3<u32>(global2.e.a.b, u_input.a, u_input.a)))), ~_wgslsmith_clamp_u32(~(global2.b.b << (47397u % 32u)), _wgslsmith_div_u32(global2.d.b.b, ~4294967295u), _wgslsmith_mod_u32(u_input.b, _wgslsmith_sub_u32(1u, 1u))), true);
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_clamp_u32(6745u, 1u, var_1.b)), countOneBits(vec2<u32>(global2.b.b, var_1.b)))) | 4885u;
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(~14404u)), global2.b.b << (abs(firstLeadingBit(countOneBits(0u))) % 32u)), 19u)];
    return Struct_4(global2.d, global0.x);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> bool {
    let var_0 = vec3<u32>(max(_wgslsmith_sub_u32(abs(global2.d.a.b), u_input.b), arg_0.a.b.b) ^ 4294967295u, _wgslsmith_sub_u32(arg_1.b.b, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(22370u, 96177u, global2.d.c.b)))), 1u);
    let var_1 = global2.a.a;
    let var_2 = _wgslsmith_add_u32(func_2().a.c.b | arg_1.d.c.b, reverseBits(26156u));
    global4 = array<Struct_3, 9>();
    let var_3 = vec3<u32>(global2.d.a.b, 1u, func_2().a.c.b ^ 30741u);
    return all(!(!(!vec3<bool>(arg_0.a.a.c, global2.c, true)))) | true;
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: vec3<u32>) -> Struct_1 {
    global1 = array<Struct_1, 19>();
    var var_0 = false && func_5(func_2(), global4[_wgslsmith_index_u32(arg_3.x, 9u)]);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 761f), _wgslsmith_f_op_f32(abs(global0.x))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(869f + -188f), _wgslsmith_f_op_f32(global0.x + global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 2063f)))));
    let var_2 = global2.d;
    var var_3 = arg_2;
    return Struct_1(-_wgslsmith_clamp_i32(-1i | abs(global2.a.b.a), ~23123i, abs(_wgslsmith_sub_i32(-41128i, -1i))), 31894u, !((!arg_0 && arg_0) | ((1i << (var_2.c.b % 32u)) != 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(true, -global2.e.d.xy, true, firstLeadingBit(~(~vec3<u32>(1u, u_input.a, 4294967295u)))), Struct_1(0i, _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(33438u, 5280u, global2.e.b.b)), vec3<u32>(u_input.a, ~8296u, 16126u & global2.d.a.b)), true), global2.b, ~global2.e.d << (~vec4<u32>(12184u, global2.e.b.b, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global2.b.b, 33018u), vec3<u32>(u_input.a, u_input.a, 1u))) % vec4<u32>(32u)));
    global1 = array<Struct_1, 19>();
    global2 = global4[_wgslsmith_index_u32(var_0.c.b, 9u)];
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(abs(var_0.a.a) & func_4(global2.b.a, Struct_4(Struct_2(global1[_wgslsmith_index_u32(global2.d.b.b, 19u)], var_0.b, Struct_1(var_0.d.x, 0u, var_0.c.c), global2.d.d), 448f), 1f, ~vec3<u32>(var_0.b.b, var_0.a.b, var_0.b.b)), abs(~(-global2.d.b.a)), ~countOneBits(_wgslsmith_sub_i32(global2.d.a.a, global2.d.d.x)), -func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.e.c.a, global2.a.a.a, 1595i, var_0.c.a), global2.a.d), Struct_4(Struct_2(var_0.b, Struct_1(-2147483647i, 29484u, false), Struct_1(-33763i, var_0.b.b, global2.a.b.c), global2.a.d), -114f), _wgslsmith_f_op_f32(-global0.x), vec3<u32>(var_0.b.b, u_input.a, var_0.c.b) | vec3<u32>(u_input.b, var_0.c.b, u_input.a))), -_wgslsmith_mod_vec4_i32(vec4<i32>(global2.d.b.a, var_0.d.x, -2147483647i, var_0.a.a), vec4<i32>(var_0.b.a, global2.b.a, var_0.d.x, global2.e.d.x)) & vec4<i32>(~_wgslsmith_clamp_i32(global2.e.b.a, 27638i, 41101i), (0i << (var_0.c.b % 32u)) & -2147483647i, firstLeadingBit(_wgslsmith_mod_i32(-1i, var_0.b.a)), func_1(any(vec4<bool>(global2.b.c, global2.b.c, false, false)), ~global2.a.d.zz, select(true, global2.b.c, var_0.c.c), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.b, u_input.b, var_0.c.b), vec3<u32>(u_input.b, 61236u, 4294967295u))).a));
    let var_2 = select(select(!vec3<bool>(func_1(true, vec2<i32>(var_1.x, -42243i), true, vec3<u32>(u_input.a, 1u, 1u)).c, false, var_0.b.a < -5455i), !select(!vec3<bool>(var_0.c.c, false, false), vec3<bool>(global2.b.c, var_0.c.c, false), true | global2.e.c.c), select(!select(vec3<bool>(false, global2.b.c, global2.c), vec3<bool>(global2.a.a.c, true, global2.a.b.c), vec3<bool>(var_0.c.c, true, var_0.a.c)), vec3<bool>(any(vec3<bool>(var_0.c.c, global2.e.c.c, true)), !global2.e.a.c, global2.a.a.c), global2.b.c)), !vec3<bool>(_wgslsmith_f_op_f32(round(global0.x)) < global0.x, true, !(!var_0.c.c)), vec3<bool>(_wgslsmith_add_u32(u_input.b, ~27749u) >= _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 8272u), _wgslsmith_mult_u32(global2.b.b, 0u)), global2.d.c.c, all(!vec3<bool>(var_0.b.c, false, var_0.c.c))));
    var var_3 = global2.e.d;
    global3 = abs(abs(-global2.b.a));
    let var_4 = func_1(false, max(var_3.yx, firstTrailingBit((vec2<i32>(var_0.a.a, 1i) & var_0.d.yy) >> (min(vec2<u32>(global2.a.b.b, global2.d.a.b), vec2<u32>(1u, u_input.b)) % vec2<u32>(32u)))), func_2().a.c.c, vec3<u32>(~(~(~0u)), _wgslsmith_add_u32(1u, global2.b.b), ~(~_wgslsmith_mod_u32(71216u, u_input.a))));
    global1 = array<Struct_1, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-2749f, _wgslsmith_div_f32(-124f, _wgslsmith_f_op_f32(f32(-1f) * -216f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

