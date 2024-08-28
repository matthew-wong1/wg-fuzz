struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: Struct_4;

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = Struct_1(57264u != (_wgslsmith_dot_vec3_u32(global1.b.zxy ^ global0.b.d.b.xyy, ~vec3<u32>(u_input.e, global0.b.d.b.x, 1u)) | ~select(u_input.e, 4294967295u, false)), global0.b.d.b, ~_wgslsmith_dot_vec4_u32(global1.b & global0.b.d.b, ~global0.b.d.b) >> (43601u % 32u), global0.a);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-global1.d), Struct_2(vec3<i32>(firstLeadingBit(51241i) ^ ~global0.b.b.x, -u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(4274i, 6750i, global0.b.a.x, global0.b.c.x), vec4<i32>(u_input.b.x, global0.b.b.x, 0i, global0.b.c.x)) | -global0.b.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(max(global0.b.a.x, 2147483647i), min(global0.b.a.x, 0i), global0.b.c.x, _wgslsmith_mult_i32(-21691i, u_input.b.x)), global0.b.c, (vec4<i32>(48267i, u_input.b.x, u_input.b.x, -21330i) << (global0.b.d.b % vec4<u32>(32u))) >> (var_0.b % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(1i, -26766i, u_input.d.x, 33680i), global0.b.d), (var_0.a | false) & true);
    let var_2 = select(vec3<bool>(false, false, false), !vec3<bool>(true, any(select(vec3<bool>(true, false, var_1.b.d.a), vec3<bool>(global0.b.d.a, global0.c, var_1.c), true)), !any(vec4<bool>(global1.a, false, var_1.b.d.a, var_0.a))), select(!select(vec3<bool>(var_0.a, false, false), !vec3<bool>(true, var_0.a, false), vec3<bool>(false, var_1.b.d.a, var_0.a)), vec3<bool>(global1.a & var_0.a, !(!var_1.c), global0.c), global0.b.d.a));
    var_0 = var_1.b.d;
    var_0 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -596f)) >= _wgslsmith_f_op_f32(abs(global0.b.d.d))), abs(global0.b.d.b), _wgslsmith_sub_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mod_u32(12765u, 1u)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 4294967295u, 1376u, 4294967295u), vec4<u32>(var_1.b.d.b.x, var_1.b.d.b.x, var_1.b.d.b.x, 11687u)), _wgslsmith_sub_u32(u_input.e, 4294967295u))), u_input.a.x), var_0.d);
    return global0.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    var var_0 = Struct_3(Struct_1(true, firstTrailingBit(_wgslsmith_clamp_vec4_u32(global0.b.d.b, arg_1.b.d.b, vec4<u32>(1u, 0u, 45118u, u_input.a.x))), ~countOneBits(arg_2.b.d.c), -547f), arg_2.b, arg_2.b.d, ~vec2<u32>(max(abs(global0.b.d.b.x), arg_1.b.d.b.x >> (arg_1.b.d.b.x % 32u)), 1026u), vec3<f32>(193f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-657f + arg_2.a), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_div_f32(-430f, _wgslsmith_f_op_f32(-global1.d))));
    var var_1 = 187f;
    var var_2 = select(global1.b << (max(_wgslsmith_clamp_vec4_u32(var_0.c.b, ~global1.b, ~arg_2.b.d.b), arg_1.b.d.b) % vec4<u32>(32u)), ~var_0.c.b, vec4<bool>(select(!arg_2.c, -1i >= arg_1.b.b.x, !arg_0.x) || any(arg_0), all(!vec4<bool>(false, arg_2.b.d.a, false, false)), !all(select(vec3<bool>(false, true, global1.a), vec3<bool>(false, true, global0.b.d.a), true)), arg_0.x));
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(928f)), -1171f)) - 1023f)), _wgslsmith_f_op_f32(-var_0.c.d));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, arg_1.a, var_3.x, arg_1.b.d.d) + vec4<f32>(global1.d, global0.b.d.d, var_0.c.d, global0.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, 1285f, global0.a, arg_2.a) - vec4<f32>(global1.d, var_0.e.x, 1000f, -214f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2088f, 295f, 526f, arg_1.b.d.d), vec4<f32>(arg_1.a, var_3.x, arg_2.a, -1000f)))))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.b.b.x, var_0.b.c.x), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_0.b.a.x), vec2<i32>(u_input.b.x, global0.b.c.x))), var_0.b.a.x, arg_1.b.a.x, u_input.d.x), _wgslsmith_mod_vec4_i32(u_input.b, arg_2.b.c) << (max(firstTrailingBit(var_0.a.b), global1.b << (var_0.b.d.b % vec4<u32>(32u))) % vec4<u32>(32u))) != _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, ~(arg_2.b.a.x | 1i)), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, var_0.b.b.x | 2147483647i, -66466i), -arg_2.b.c.x));
}

fn func_1() -> vec4<i32> {
    global1 = global0.b.d;
    let var_0 = !(select(true, global0.c, global0.c) | global1.a) || all(vec2<bool>(func_2(vec2<bool>(true, global1.a), Struct_4(global0.a, Struct_2(global0.b.b.wwx, vec4<i32>(global0.b.a.x, 1i, 23237i, global0.b.c.x), u_input.b, Struct_1(global0.c, vec4<u32>(global1.b.x, global0.b.d.c, u_input.c.x, 41673u), global1.b.x, global1.d)), global1.a), Struct_4(-515f, Struct_2(vec3<i32>(global0.b.a.x, u_input.b.x, 46539i), global0.b.b, vec4<i32>(4334i, -8439i, 1i, u_input.d.x), global0.b.d), global1.a)), true));
    var var_1 = Struct_4(-218f, global0.b, false | global1.a);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 561f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(924f + global0.b.d.d), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - global0.a), var_1.a)))));
    global0 = Struct_4(1468f, Struct_2(vec3<i32>(abs(global0.b.b.x), _wgslsmith_dot_vec3_i32(var_1.b.b.xzz, vec3<i32>(global0.b.b.x, var_1.b.a.x, u_input.b.x)) & u_input.b.x, -2147483647i), vec4<i32>(_wgslsmith_mult_i32(-21774i, var_1.b.b.x), ~var_1.b.c.x, global0.b.b.x, ~1i), vec4<i32>(-52541i, _wgslsmith_sub_i32(-2147483647i, abs(u_input.d.x)), abs(6424i), 1i | global0.b.c.x), Struct_1(any(select(vec2<bool>(var_0, var_0), vec2<bool>(true, global1.a), true)), ~global1.b, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-612f, var_1.b.d.d))))), true | (var_1.b.d.b.x > _wgslsmith_add_u32(0u, u_input.a.x)));
    return reverseBits(vec4<i32>(global0.b.a.x, -countOneBits(-39947i << (var_1.b.d.c % 32u)), global0.b.c.x & ~(-31465i << (global0.b.d.b.x % 32u)), global0.b.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec2_u32(~(~global0.b.d.b.yz), global1.b.wy) ^ ~vec2<u32>(23164u, _wgslsmith_mult_u32(min(1u, global0.b.d.b.x), u_input.a.x | global1.b.x));
    let var_1 = Struct_2(u_input.b.zww, _wgslsmith_mult_vec4_i32(max(abs(abs(vec4<i32>(global0.b.b.x, 2147483647i, u_input.b.x, u_input.d.x))), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 12825i, 0i, u_input.d.x), u_input.b) | func_1()), ~vec4<i32>(u_input.d.x, abs(u_input.d.x), u_input.d.x >> (17313u % 32u), 36250i)), vec4<i32>(-1i, abs(global0.b.c.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0.b.a.x, 25414i) | min(-34625i, global0.b.c.x), 1i), firstTrailingBit(1i)), global0.b.d);
    let var_2 = select(vec2<bool>(true, true), vec2<bool>(any(select(!vec3<bool>(global1.a, var_1.d.a, global1.a), select(vec3<bool>(global0.c, global1.a, true), vec3<bool>(global1.a, var_1.d.a, global1.a), false), !global1.a)), any(vec3<bool>(false, true, global0.c))), !select(vec2<bool>(func_2(vec2<bool>(global0.b.d.a, global1.a), Struct_4(global0.a, var_1, true), Struct_4(964f, Struct_2(var_1.a, global0.b.b, vec4<i32>(global0.b.b.x, -2147483647i, 15030i, -2147483647i), var_1.d), global1.a)), true), select(select(vec2<bool>(global0.b.d.a, var_1.d.a), vec2<bool>(global0.c, true), global1.a), !vec2<bool>(false, global1.a), vec2<bool>(global0.c, false)), vec2<bool>(global1.a || true, global1.a)));
    var var_3 = vec2<f32>(_wgslsmith_div_f32(global1.d, -189f), _wgslsmith_div_f32(-400f, _wgslsmith_f_op_f32(-global0.a)));
    global0 = Struct_4(_wgslsmith_f_op_f32(-182f - _wgslsmith_f_op_f32(step(-451f, _wgslsmith_f_op_f32(sign(554f))))), Struct_2(vec3<i32>(var_1.b.x, var_1.b.x, ~_wgslsmith_add_i32(u_input.d.x, var_1.c.x)), abs(~vec4<i32>(u_input.d.x, -2147483647i, 6147i, var_1.a.x)), vec4<i32>(func_1().x, abs(global0.b.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.c.x, u_input.d.x, -91141i), ~vec4<i32>(var_1.a.x, var_1.b.x, 26088i, var_1.b.x)), _wgslsmith_mod_i32(var_1.b.x, _wgslsmith_mult_i32(-3922i, 2383i))), var_1.d), any(!vec2<bool>(false, any(vec3<bool>(true, false, false)))));
    var var_4 = global0.b;
    var var_5 = 1652f;
    var var_6 = global0.b.d.a;
    let var_7 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_4.d.d + var_1.d.d), global0.b.d.d, global0.a, _wgslsmith_div_f32(-102f, global1.d))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-423f, -213f, _wgslsmith_div_f32(-1634f, global0.b.d.d), -107f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1233f, global0.b.d.d, 2413f, var_4.d.d)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_7), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_7))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_7 + var_7)), !(!global1.a))), true)));
}

