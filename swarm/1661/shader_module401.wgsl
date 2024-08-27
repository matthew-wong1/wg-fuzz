struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), -10157i), true, true, 62815u);

var<private> global2: Struct_1;

var<private> global3: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = arg_2;
    let var_1 = arg_2;
    var_0 = var_1;
    let var_2 = var_1;
    let var_3 = 0i;
    return ~0u;
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f) * 392f) + _wgslsmith_f_op_f32(trunc(-153f)))));
    global0 = ~countOneBits(reverseBits(max(firstTrailingBit(vec2<u32>(global0.x, global2.d)), vec2<u32>(1u, global2.d) | vec2<u32>(global0.x, global0.x))));
    global2 = Struct_1(-vec2<i32>(3467i, global2.a.x), global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-730f * -482f)) + 578f) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0)), var_0), func_2(!vec2<bool>(true, any(vec4<bool>(global2.b, true, global1.c, true))), vec4<bool>(var_0 < _wgslsmith_f_op_f32(-var_0), !all(vec4<bool>(false, true, global2.b, global2.c)), true, any(!global3[_wgslsmith_index_u32(global0.x, 6u)])), Struct_1(-abs(global2.a), !all(vec4<bool>(global2.b, true, false, false)), global1.c, ~(~4294967295u)), global2.d << (43726u % 32u)));
    global2 = Struct_1(~vec2<i32>(_wgslsmith_add_i32(-u_input.b.x, -1i), -u_input.a ^ ~u_input.a), any(vec3<bool>(true | global2.c, true, all(vec4<bool>(global1.b, global2.b, global2.c, false)))) & true, all(!(!(!global3[_wgslsmith_index_u32(0u, 6u)]))), _wgslsmith_clamp_u32(0u, 7832u, global2.d));
    let var_1 = vec2<bool>(true, all(select(select(vec4<bool>(global1.b, false, global1.b, global2.c), !vec4<bool>(global2.b, true, false, false), vec4<bool>(global1.b, global1.c, false, false)), vec4<bool>(!global1.c, !global1.b, global2.b, !global1.b), all(vec3<bool>(true, global1.c, false)) || true)));
    return ~vec4<u32>(_wgslsmith_add_u32(firstTrailingBit(firstTrailingBit(global2.d)), 82748u), global2.d | global0.x, ~(~4294967295u), 1u);
}

fn func_4(arg_0: vec4<u32>) -> bool {
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_add_i32(2147483647i, global2.a.x), ~global2.a.x), ~_wgslsmith_clamp_u32(33724u, _wgslsmith_dot_vec2_u32(arg_0.zx, vec2<u32>(global1.d, global1.d)), 1u) == 8015u, true, ~global0.x);
    let var_1 = vec4<f32>(-1416f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f) * 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(111f)) - _wgslsmith_f_op_f32(f32(-1f) * -1010f))), 222f, _wgslsmith_f_op_f32(ceil(-119f)));
    global0 = arg_0.wy;
    let var_2 = ~select(func_2(global3[_wgslsmith_index_u32(global0.x ^ var_0.d, 6u)], select(select(vec4<bool>(var_0.c, global1.b, global1.c, true), vec4<bool>(global1.b, global1.c, true, false), false), !vec4<bool>(true, global2.c, false, true), !vec4<bool>(var_0.b, false, var_0.b, var_0.c)), Struct_1(vec2<i32>(u_input.a, 15850i) & global2.a, true, global2.b, _wgslsmith_sub_u32(11493u, 0u)), ~_wgslsmith_sub_u32(29836u, global0.x)), ~0u, 33697u > _wgslsmith_div_u32(firstTrailingBit(global0.x), func_2(vec2<bool>(global2.b, var_0.b), vec4<bool>(var_0.b, var_0.c, global2.b, false), Struct_1(vec2<i32>(global1.a.x, -2147483647i), false, false, global0.x), 18823u)));
    let var_3 = vec2<i32>(u_input.b.x, abs(-91293i));
    return any(vec3<bool>(true, var_0.c, all(!global3[_wgslsmith_index_u32(global0.x, 6u)])));
}

fn func_1() -> bool {
    var var_0 = vec3<i32>(u_input.b.x, global2.a.x, global1.a.x ^ -_wgslsmith_sub_i32(16802i | global1.a.x, -2147483647i ^ u_input.a));
    global0 = ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(func_2(global3[_wgslsmith_index_u32(global2.d, 6u)], vec4<bool>(true, global1.b, true, global2.c), Struct_1(vec2<i32>(var_0.x, 1i), false, true, 40868u), 4294967295u), global1.d & global2.d), ~(_wgslsmith_div_vec2_u32(vec2<u32>(35513u, global0.x), vec2<u32>(global2.d, global2.d)) >> (vec2<u32>(4294967295u, global2.d) % vec2<u32>(32u))), ~vec2<u32>(global1.d, 4294967295u));
    global1 = Struct_1(vec2<i32>(var_0.x, -max(~global1.a.x, select(-2147483647i, -1i, true))), !(!global2.c), !(!(all(vec3<bool>(global1.c, global2.b, global1.b)) & global1.b)), global2.d);
    let var_1 = vec3<bool>(global2.c != false, func_4(max(~(~vec4<u32>(global1.d, 0u, 30353u, global1.d)), func_3() | _wgslsmith_add_vec4_u32(vec4<u32>(28327u, global0.x, 0u, 1u), vec4<u32>(0u, 1u, global0.x, 13732u)))), !(_wgslsmith_clamp_i32(-4484i, -2147483647i, global1.a.x) == _wgslsmith_mod_i32(1i, -global1.a.x)));
    var var_2 = Struct_1(firstTrailingBit(-select(vec2<i32>(-11400i, var_0.x), global1.a, all(vec2<bool>(var_1.x, var_1.x)))), -2147483647i < ~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), !(((global2.d < global1.d) || !global1.c) && (abs(-2147483647i) <= global1.a.x)), ~(1u ^ (min(1u, 0u) >> (abs(global0.x) % 32u))));
    return !var_1.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = false;
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(~_wgslsmith_mult_i32(reverseBits(u_input.b.x), arg_2.a.x), _wgslsmith_dot_vec2_i32(arg_0.a, _wgslsmith_mod_vec2_i32(firstTrailingBit(arg_2.a), ~u_input.b.xy)), 0i), u_input.b.xxx);
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(5289i, -2147483647i, 1i), var_1.x), any(select(select(!vec4<bool>(arg_0.b, false, global2.c, arg_2.c), select(vec4<bool>(true, false, false, false), vec4<bool>(global1.c, arg_2.c, false, true), vec4<bool>(true, false, true, global2.b)), global2.b), vec4<bool>(true, arg_0.b, !arg_0.c, true), func_1())), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1560f + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-183f))))) != _wgslsmith_div_f32(125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - 506f)), _wgslsmith_mult_u32(~7123u, global1.d));
    let var_3 = 38125u;
    var var_4 = true;
    return arg_0;
}

fn func_6(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> StorageBuffer {
    global3 = array<vec2<bool>, 6>();
    global3 = array<vec2<bool>, 6>();
    var var_0 = ~(global1.a.x >> (4773u % 32u));
    var var_1 = func_5(Struct_1(min(u_input.b.wx, arg_2.a), 1u >= _wgslsmith_add_u32(_wgslsmith_div_u32(0u, global2.d), _wgslsmith_add_u32(global1.d, 4294967295u)), func_5(func_5(arg_2, firstTrailingBit(vec2<u32>(14440u, 0u)), arg_2, ~1i), ~(~vec2<u32>(arg_3.x, global2.d)), Struct_1(vec2<i32>(global1.a.x, global2.a.x), true, arg_2.c, 48950u), _wgslsmith_dot_vec4_i32(-u_input.b, u_input.b)).b, ~global2.d), arg_3, Struct_1(_wgslsmith_add_vec2_i32(abs(arg_2.a), _wgslsmith_div_vec2_i32(global1.a, abs(vec2<i32>(global1.a.x, u_input.b.x)))), global1.c, true & (-2413f > _wgslsmith_f_op_f32(abs(arg_1.x))), 34898u), abs(firstTrailingBit(1i)));
    var var_2 = arg_2;
    return StorageBuffer(var_1.a.x, vec2<i32>(_wgslsmith_sub_i32(1i, ~global2.a.x), arg_0), ~_wgslsmith_add_i32(var_2.a.x, _wgslsmith_sub_i32(-23789i, min(var_2.a.x, -30421i))), arg_1.x, arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(25208u, global2.d), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global2.d)))));
    global0 = vec2<u32>(~(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(29496u, global0.x, 1u), vec3<u32>(global0.x, 13097u, 1u)), _wgslsmith_mod_u32(4294967295u, 116631u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(16957u, global2.d, 1u) & vec3<u32>(global2.d, 0u, global1.d), _wgslsmith_mult_vec3_u32(vec3<u32>(61508u, 23724u, global2.d), vec3<u32>(55415u, global1.d, global1.d))) % 32u)), global1.d);
    var var_0 = -2147483647i;
    global1 = Struct_1(~(vec2<i32>(~36714i, u_input.a >> (global0.x % 32u)) >> (firstTrailingBit(abs(vec2<u32>(5987u, global1.d))) % vec2<u32>(32u))), !(true == global2.b), true, 9280u);
    global0 = _wgslsmith_mult_vec2_u32(vec2<u32>(abs(global0.x), _wgslsmith_sub_u32(global2.d, _wgslsmith_clamp_u32(18408u, min(global2.d, global1.d), _wgslsmith_add_u32(global2.d, global2.d)))), ~(~select(vec2<u32>(global2.d, global0.x), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.d, 0u), vec2<u32>(global2.d, global1.d)), global1.b)));
    let x = u_input.a;
    s_output = func_6(i32(-1i) * -1i, _wgslsmith_div_vec4_f32(vec4<f32>(672f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1085f)), 439f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1649f, 943f)) + _wgslsmith_div_f32(1724f, -403f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-233f, -606f, 2255f, -753f)))), func_5(Struct_1(u_input.b.yw, all(vec4<bool>(false, global1.c, false, global2.b)), global1.b, global1.d), vec2<u32>(global1.d, _wgslsmith_sub_u32(global0.x, abs(4294967295u))), Struct_1(global2.a ^ -global2.a, func_1(), select(global2.b, global1.b, global1.c) | global1.c, abs(~4294967295u)), _wgslsmith_mod_i32(select(~(-1i), global2.a.x, global1.c), -15684i)), vec2<u32>(66256u, global0.x | _wgslsmith_mult_u32(1u, global0.x)) >> (~vec2<u32>(_wgslsmith_mult_u32(global1.d, 46287u), global1.d) % vec2<u32>(32u)));
}

