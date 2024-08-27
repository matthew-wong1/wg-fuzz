struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-1135f, Struct_1(4294967295u), Struct_1(4294967295u), 45690i), Struct_2(651f, Struct_1(35353u), Struct_1(66299u), -1i), Struct_2(-1640f, Struct_1(0u), Struct_1(20248u), 26013i), Struct_2(357f, Struct_1(4294967295u), Struct_1(0u), 1i), Struct_2(560f, Struct_1(56520u), Struct_1(1u), 59849i), Struct_2(417f, Struct_1(0u), Struct_1(4294967295u), 460i), Struct_2(-1716f, Struct_1(56293u), Struct_1(9651u), -8960i), Struct_2(520f, Struct_1(4294967295u), Struct_1(4294967295u), 3577i), Struct_2(-682f, Struct_1(0u), Struct_1(12492u), -11154i), Struct_2(1088f, Struct_1(4294967295u), Struct_1(1u), 0i), Struct_2(-643f, Struct_1(18608u), Struct_1(1u), 0i), Struct_2(1145f, Struct_1(0u), Struct_1(1u), 1i), Struct_2(898f, Struct_1(8824u), Struct_1(10095u), 1i), Struct_2(1820f, Struct_1(0u), Struct_1(0u), -3067i));

var<private> global1: vec4<i32>;

var<private> global2: vec2<f32> = vec2<f32>(149f, 485f);

var<private> global3: array<vec4<f32>, 6>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: bool) -> f32 {
    var var_0 = all(select(!(!select(vec3<bool>(arg_0, false, true), vec3<bool>(false, arg_0, false), arg_0)), vec3<bool>(true, true, _wgslsmith_f_op_f32(global2.x + -1111f) <= _wgslsmith_f_op_f32(ceil(arg_2))), any(select(vec2<bool>(arg_3, arg_0), !vec2<bool>(arg_3, false), !vec2<bool>(true, arg_0)))));
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    var_0 = true | select(!(!(arg_0 | false)), all(!vec4<bool>(arg_0, true, arg_3, true)) || false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))) != _wgslsmith_f_op_f32(ceil(arg_1)));
    var var_1 = vec2<bool>(true, true || (!select(arg_0, arg_3, true) && !all(vec3<bool>(arg_3, arg_0, arg_3))));
    return arg_1;
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-global2.x)), Struct_1(~abs(~0u)), Struct_1(4294967295u), global1.x);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(false, _wgslsmith_f_op_f32(-var_0.a), global2.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), true))))));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(false, -1000f, global2.x, true)))), _wgslsmith_f_op_f32(-global2.x))))), var_0.b, Struct_1(_wgslsmith_add_u32(_wgslsmith_mod_u32(~var_0.b.a, 1u), countOneBits(var_0.c.a | 4294967295u))), _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(82128i, 0i, var_0.d, var_0.d), ~vec4<i32>(var_0.d, 57284i, 0i, var_0.d)), vec4<i32>(~global1.x ^ ~var_0.d, _wgslsmith_sub_i32(var_0.d >> (u_input.c % 32u), var_0.d >> (u_input.a.x % 32u)), reverseBits(_wgslsmith_clamp_i32(global1.x, var_0.d, -38602i)), 1i)));
    var var_3 = ~var_2.b.a;
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1007f, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1490f, -1940f))))));
    return select(!vec4<bool>(true, true, any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), vec4<bool>(true, true, true, true), all(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true))));
}

fn func_4(arg_0: vec4<bool>) -> Struct_3 {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, -391f) - _wgslsmith_f_op_f32(ceil(823f))))), -766f);
    var var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(u_input.b << (vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.c) % vec4<u32>(32u))), u_input.b), u_input.b);
    let var_1 = _wgslsmith_mult_i32(global1.x, -42566i);
    let var_2 = Struct_2(global2.x, Struct_1(1u), Struct_1(reverseBits(117179u)), reverseBits(~(~_wgslsmith_div_i32(var_1, global1.x))));
    global0 = array<Struct_2, 14>();
    return Struct_3(var_2.c, var_2.c, var_2.c, ~(~(~(~vec2<u32>(4294967295u, var_2.c.a)))));
}

fn func_1(arg_0: i32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = func_4(select(func_2(), select(vec4<bool>(true, true, true, true), func_2(), all(func_2().xz)), true));
    global0 = array<Struct_2, 14>();
    return func_4(vec4<bool>(true, false, true, _wgslsmith_f_op_f32(abs(global2.x)) > global2.x)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(15062i, 2147483647i, 65336i, global1.x);
    global1 = -vec4<i32>(_wgslsmith_sub_i32(-1i, 2147483647i), _wgslsmith_clamp_i32(2147483647i, ~(global1.x & 1i), global1.x), firstTrailingBit(global1.x), global1.x);
    var var_0 = 0i;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x + -910f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(round(162f)))) + _wgslsmith_f_op_f32(-global2.x)), global2.x);
    var var_2 = ~_wgslsmith_div_i32(~16833i, 1i);
    var_2 = 2147483647i;
    let var_3 = func_1(-2147483647i, Struct_4(reverseBits(vec4<u32>(u_input.b.x | u_input.c, u_input.a.x, u_input.c, _wgslsmith_clamp_u32(0u, 1u, u_input.b.x)))));
    let var_4 = var_3.a;
    var var_5 = func_4(select(!select(func_2(), func_2(), vec4<bool>(true, false, true, false)), vec4<bool>(true || (var_1.x == var_1.x), true, all(vec4<bool>(true, true, true, true)), true), !(true || any(vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(max(global1.x, global1.x), _wgslsmith_clamp_i32(global1.x, 1i, global1.x), global1.x, -1i), vec4<i32>(-1i) * -vec4<i32>(0i, 1i, global1.x, -14178i)), (~vec4<i32>(global1.x, global1.x, global1.x, 1i) ^ ~vec4<i32>(global1.x, global1.x, 1i, 47686i)) | vec4<i32>(abs(0i), global1.x, ~global1.x, -34025i)), global1.ww | (vec2<i32>(0i | global1.x, min(2147483647i, global1.x)) << (_wgslsmith_div_vec2_u32(select(vec2<u32>(16096u, 0u), vec2<u32>(var_4, var_4), vec2<bool>(false, true)), _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(var_4, 6993u))) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-global2.x));
}

