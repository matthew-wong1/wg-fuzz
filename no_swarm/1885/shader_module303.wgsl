struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26> = array<vec2<bool>, 26>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<u32, 26> = array<u32, 26>(85230u, 0u, 59018u, 1u, 6817u, 73475u, 43534u, 22328u, 626u, 0u, 1u, 79054u, 4294967295u, 52893u, 3064u, 0u, 0u, 15900u, 0u, 24561u, 61933u, 4294967295u, 1u, 28385u, 4294967295u, 35126u);

var<private> global2: array<i32, 14> = array<i32, 14>(23206i, 7752i, 25970i, 1i, 1i, -26303i, i32(-2147483648), 28469i, -14173i, -39977i, 67888i, 35456i, i32(-2147483648), 1i);

var<private> global3: bool;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<i32>) -> bool {
    global1 = array<u32, 26>();
    let var_0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u << (u_input.c % 32u), 11496u, ~global1[_wgslsmith_index_u32(1u, 26u)], u_input.b.x), max(vec4<u32>(u_input.c, 1u, u_input.d, u_input.d), vec4<u32>(67322u, global1[_wgslsmith_index_u32(0u, 26u)], u_input.c, 0u))) & 0u, global0[_wgslsmith_index_u32(5465u, 26u)], Struct_1(vec2<f32>(_wgslsmith_div_f32(2011f, -2834f), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-681f * 323f))), !all(select(vec4<bool>(false, false, true, arg_1.b), vec4<bool>(true, false, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, false, false))), global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(31381u, 0u, global1[_wgslsmith_index_u32(17537u, 26u)], 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(4294967295u, 26u)], 4294967295u, u_input.d), vec4<u32>(39419u, 10942u, 0u, 1u)))), 14u)]), arg_0);
    let var_1 = Struct_3(var_0.b, true, 39535u);
    var var_2 = Struct_2(1u, select(var_0.b, vec2<bool>(all(!vec3<bool>(var_1.b, var_0.c.b, false)), false), vec2<bool>(true, var_1.a.x)), var_0.c, arg_0);
    let var_3 = _wgslsmith_mod_u32(u_input.c, ~_wgslsmith_clamp_u32(min(abs(u_input.d), var_0.a), ~u_input.b.x, reverseBits(~var_2.a)));
    return !var_2.b.x;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -203f) + vec2<f32>(-356f, 617f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-635f, -1291f), vec2<f32>(-383f, -1000f)))))), all(vec4<bool>(true, func_3(4980i, Struct_1(vec2<f32>(111f, -286f), false, arg_0.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-780f, 107f), vec2<f32>(118f, 729f))), arg_0), !all(vec4<bool>(false, false, true, false)), _wgslsmith_div_i32(1i, 2147483647i) != arg_0.x)), -15961i);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.a))))), select(!all(!vec4<bool>(true, false, true, var_0.b)), true, all(!select(vec4<bool>(var_0.b, var_0.b, true, var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(false, var_0.b, var_0.b, var_0.b)))), var_0.c | (var_0.c ^ 1i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x)));
    var var_2 = Struct_3(vec2<bool>(true, func_3(reverseBits(select(1i, 7425i, true)), Struct_1(var_0.a, 1111u > u_input.c, _wgslsmith_mult_i32(31174i, var_0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 905f) - var_0.a)), -_wgslsmith_clamp_vec4_i32(arg_0, arg_0, vec4<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(114778u, 26u)], 14u)], -2147483647i, -52540i, global2[_wgslsmith_index_u32(1u, 14u)])))), any(vec2<bool>(all(vec3<bool>(var_0.b, false, false)), func_3(-10980i, Struct_1(vec2<f32>(var_0.a.x, var_1), var_0.b, 9793i), var_0.a, vec4<i32>(arg_0.x, -40681i, -27012i, -7987i) >> (vec4<u32>(3167u, u_input.d, 4097u, u_input.d) % vec4<u32>(32u))))), ~(~(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 44353u, 73026u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40372u, 26u)], 26u)]), vec4<u32>(57003u, global1[_wgslsmith_index_u32(u_input.d, 26u)], u_input.d, u_input.c)), 26u)] ^ _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.zx))));
    global2 = array<i32, 14>();
    return Struct_1(var_0.a, 1706f != _wgslsmith_f_op_f32(828f - var_0.a.x), abs(arg_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_1) -> bool {
    return abs(abs(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18009u, 26u)], 26u)] | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], 26u)]), 14u)])) <= arg_3.c;
}

fn func_1() -> vec2<bool> {
    let var_0 = max(_wgslsmith_add_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 26u)], 14u)], ~49273i), -vec2<i32>(-2147483647i, u_input.a.x) ^ -u_input.a.yz), u_input.a.yz);
    let var_1 = Struct_2(1u, vec2<bool>(all(vec3<bool>(true, any(vec4<bool>(true, true, true, false)), var_0.x > -1i)), !func_4(func_2(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 14u)], var_0.x, 31018i, 11576i)), vec4<bool>(true, true, false, true), 1288f, Struct_1(vec2<f32>(1025f, 793f), false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 26u)], 14u)]))), func_2(-vec4<i32>(countOneBits(u_input.a.x), 1i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u >> (u_input.c % 32u), 26u)], 14u)], i32(-1i) * -2147483647i)), _wgslsmith_mult_i32(73515i, 3753i & (_wgslsmith_add_i32(u_input.a.x, u_input.a.x) & 22574i)));
    let var_2 = Struct_3(vec2<bool>(any(vec2<bool>(select(true, var_1.c.b, var_1.b.x), false || var_1.c.b)), var_1.c.b), all(vec3<bool>(true & var_1.c.b, any(vec3<bool>(var_1.b.x, true, var_1.b.x)), false)) & !var_1.b.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, u_input.d), 8627u << (global1[_wgslsmith_index_u32(~1u, 26u)] % 32u), ~(~45936u << (countOneBits(u_input.c) % 32u))));
    global0 = array<vec2<bool>, 26>();
    let var_3 = min(15839u, select(abs(_wgslsmith_clamp_u32(0u, 4294967295u, 0u)), ~(~1u), all(select(vec3<bool>(var_2.b, false, var_1.b.x), vec3<bool>(false, var_1.c.b, false), var_2.a.x))) ^ 4309u);
    return vec2<bool>(!(_wgslsmith_sub_i32(-var_0.x, -global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 14u)]) > (i32(-1i) * -46171i)), !(!(global2[_wgslsmith_index_u32(var_3 ^ var_3, 14u)] <= var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = any(vec3<bool>(false, true && any(func_1()), true));
    let var_0 = func_2(vec4<i32>(2147483647i, u_input.a.x | -1i, abs(global2[_wgslsmith_index_u32(min(4294967295u, ~u_input.b.x), 14u)]), u_input.a.x));
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    var var_1 = func_1();
    var_1 = global0[_wgslsmith_index_u32(4294967295u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(((~u_input.b ^ vec3<u32>(0u, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(292u, 26u)], 26u)])) << ((~u_input.b >> (vec3<u32>(global1[_wgslsmith_index_u32(0u, 26u)], 35492u, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u))) << (firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_sub_u32(u_input.b.x, 1u), ~global1[_wgslsmith_index_u32(0u, 26u)])) % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 77259u), u_input.b.xz), u_input.b.xz), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(var_0.a.x, -117f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - -780f) - _wgslsmith_div_f32(var_0.a.x, -993f)), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(sign(var_0.a.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(var_0.a.x)), var_0.a.x, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-242f, _wgslsmith_f_op_f32(-921f - var_0.a.x), 367f, _wgslsmith_f_op_f32(f32(-1f) * -246f))))));
}

