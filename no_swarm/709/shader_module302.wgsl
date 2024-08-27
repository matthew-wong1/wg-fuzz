struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<bool>(-1217f <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-722f + 311f))), _wgslsmith_mult_u32(u_input.c, u_input.c) != u_input.c);
    let var_1 = Struct_2(Struct_1(select(vec3<bool>(true, true, var_0.x), !vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), var_0.x)), ~(~(vec2<u32>(u_input.c, u_input.c) & vec2<u32>(u_input.c, u_input.c))), all(global0[_wgslsmith_index_u32(u_input.c, 24u)]), max(vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.a), vec3<i32>(-11612i, u_input.a, u_input.b)), _wgslsmith_clamp_i32(u_input.b, 32306i, u_input.a), u_input.a & -31362i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -2147483647i, 1i, 39527i), _wgslsmith_div_vec4_i32(vec4<i32>(-76031i, u_input.a, u_input.a, u_input.b), vec4<i32>(0i, -23919i, u_input.b, -3381i)), -vec4<i32>(u_input.b, -29995i, u_input.b, u_input.a)))), Struct_1(select(vec3<bool>(1u >= u_input.c, var_0.x, false), !(!vec3<bool>(false, var_0.x, true)), true), reverseBits(countOneBits(vec2<u32>(0u, u_input.c))) | (reverseBits(vec2<u32>(u_input.c, u_input.c)) & ~vec2<u32>(1u, u_input.c)), var_0.x, _wgslsmith_div_vec4_i32(-select(vec4<i32>(-10922i, u_input.b, -13939i, 1i), vec4<i32>(u_input.b, u_input.b, u_input.b, -40426i), var_0.x), ~vec4<i32>(u_input.b, 62207i, 0i, -33598i))));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-440f, -508f)));
    var_2 = var_1;
    return select(!vec3<bool>(any(vec2<bool>(false, var_0.x)), true, select(var_0.x || var_2.b.c, var_1.a.a.x, any(vec2<bool>(false, var_2.a.c)))), vec3<bool>(true, true, true && var_2.a.a.x), vec3<bool>(any(select(var_1.b.a, select(vec3<bool>(true, true, true), vec3<bool>(true, var_2.a.c, false), vec3<bool>(var_2.b.a.x, false, var_0.x)), select(var_1.a.a, var_1.a.a, false))), any(!vec3<bool>(false, var_2.a.c, var_1.b.a.x)) && true, any(select(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(65159u, 24u)], global0[_wgslsmith_index_u32(countOneBits(var_2.b.b.x), 24u)]))));
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<bool>, 24>();
    let var_0 = Struct_2(Struct_1(!select(func_3(), vec3<bool>(true, true, true), true), _wgslsmith_mult_vec2_u32(firstTrailingBit(~vec2<u32>(4294967295u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(27028u, u_input.c)) << (~vec2<u32>(65040u, 1u) % vec2<u32>(32u))), (func_3().x || true) && all(vec2<bool>(true, true)), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(1i, -1i, 1i, -1i), vec4<i32>(u_input.a, -8093i, 36524i, -31080i)) ^ -vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.b), ~vec4<i32>(0i, u_input.a, -1120i, u_input.a), ~firstTrailingBit(vec4<i32>(u_input.a, u_input.a, 19401i, -23695i)))), Struct_1(vec3<bool>(true, true, true), vec2<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), _wgslsmith_add_u32(1u, 13188u)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), vec4<i32>(max(-u_input.b, select(u_input.b, u_input.a, false)), -_wgslsmith_div_i32(0i, u_input.a), u_input.a, abs(u_input.b))));
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1233f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f)))))));
    return Struct_2(Struct_1(func_3(), abs(~(~vec2<u32>(28637u, u_input.c))), any(!(!var_0.b.a.zz)), var_0.a.d), Struct_1(!vec3<bool>(-16306i < u_input.a, any(vec3<bool>(false, var_0.a.a.x, false)), u_input.b >= 3459i), ~var_0.b.b, select(true | (var_0.b.a.x | var_0.b.c), true, (18991u >> (var_0.b.b.x % 32u)) <= ~u_input.c), _wgslsmith_mult_vec4_i32(var_0.b.d | var_0.a.d, vec4<i32>(_wgslsmith_mod_i32(u_input.a, var_0.b.d.x), i32(-1i) * -9016i, u_input.b & -27416i, abs(var_0.b.d.x)))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    var var_0 = vec4<u32>(max(u_input.c, arg_0.a.b.x), arg_0.a.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~u_input.c, 1u, ~u_input.c), ~vec4<u32>(4294967295u, 23442u, arg_0.b.b.x, 0u)), u_input.c);
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_1 {
    return func_2().a;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<i32>) -> vec2<bool> {
    global0 = array<vec4<bool>, 24>();
    let var_0 = func_5(func_4(func_2()), arg_2.x, Struct_2(func_2().a, Struct_1(select(!arg_0.a, select(vec3<bool>(true, arg_0.a.x, arg_0.a.x), arg_0.a, arg_0.a), func_3()), _wgslsmith_add_vec2_u32(vec2<u32>(78173u, u_input.c), ~vec2<u32>(4294967295u, 0u)), false, vec4<i32>(u_input.a, arg_2.x, arg_0.d.x, u_input.a) & arg_0.d)), arg_2);
    let var_1 = arg_0.a.yx;
    global0 = array<vec4<bool>, 24>();
    global0 = array<vec4<bool>, 24>();
    return select(func_4(Struct_2(arg_0, var_0)).b.a.zx, select(vec2<bool>(any(vec4<bool>(false, false, true, false)), var_1.x), func_2().a.a.yz, !arg_0.a.x), true);
}

fn func_6(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: u32) -> vec3<u32> {
    var var_0 = func_4(Struct_2(func_5(Struct_2(func_4(Struct_2(Struct_1(vec3<bool>(arg_2.x, arg_0, arg_0), vec2<u32>(u_input.c, arg_3), false, vec4<i32>(u_input.b, u_input.a, 18100i, u_input.b)), Struct_1(vec3<bool>(true, false, false), vec2<u32>(1u, 1u), arg_0, vec4<i32>(-9301i, u_input.a, u_input.b, u_input.b)))).b, func_2().b), func_4(func_2()).b.d.x, func_4(func_4(Struct_2(Struct_1(vec3<bool>(true, true, arg_2.x), vec2<u32>(68766u, u_input.c), true, vec4<i32>(u_input.b, -26128i, -17470i, u_input.b)), Struct_1(vec3<bool>(arg_0, arg_2.x, arg_2.x), vec2<u32>(19699u, u_input.c), arg_0, vec4<i32>(u_input.a, -34514i, -49917i, 18619i))))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(arg_3, 15087u) % vec2<u32>(32u)), vec2<i32>(u_input.a, u_input.a))), Struct_1(vec3<bool>(true, true, true), vec2<u32>(arg_3, _wgslsmith_clamp_u32(0u, u_input.c, 1u)), false, vec4<i32>(_wgslsmith_add_i32(29954i, 1i), min(u_input.b, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 2147483647i, 21672i), vec4<i32>(7683i, 2147483647i, u_input.b, -14543i)), 2147483647i))));
    var_0 = func_2();
    let var_1 = 156f;
    var var_2 = var_1;
    let var_3 = -2147483647i;
    return ~vec3<u32>(~arg_3, ~arg_3, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0.a.b.x), vec3<u32>(arg_3, arg_3, 1u) ^ vec3<u32>(arg_3, 59444u, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(min(1u, 3710u), 4294967295u, _wgslsmith_div_u32(u_input.c, u_input.c)), func_6(false, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(174f, 1061f, 288f), vec3<f32>(1112f, -230f, -581f), true)), func_1(Struct_1(vec3<bool>(true, false, true), vec2<u32>(u_input.c, u_input.c), false, vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.b)), vec4<f32>(488f, -879f, -195f, 901f), vec2<i32>(u_input.b, u_input.a)), u_input.c), _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(49512u, u_input.c, u_input.c)), reverseBits(vec3<u32>(u_input.c, u_input.c, u_input.c)))), ~vec3<u32>(func_5(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(u_input.c, 38683u), true, vec4<i32>(59814i, u_input.b, 0i, -2147483647i)), Struct_1(vec3<bool>(true, true, false), vec2<u32>(u_input.c, u_input.c), false, vec4<i32>(u_input.b, -64698i, 2147483647i, u_input.a))), u_input.b, Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(15377u, 61545u), false, vec4<i32>(15512i, -13010i, -1i, u_input.b)), Struct_1(vec3<bool>(false, false, true), vec2<u32>(u_input.c, 0u), false, vec4<i32>(-1i, u_input.a, 1i, 1i))), vec2<i32>(u_input.a, u_input.a)).b.x, abs(10015u), _wgslsmith_add_u32(u_input.c, u_input.c)));
    var var_1 = 1543f;
    var var_2 = Struct_1(vec3<bool>(select(true, true, false), func_5(func_2(), 0i, func_4(Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<u32>(u_input.c, 1u), true, vec4<i32>(-9626i, -2147483647i, -2147483647i, u_input.a)), Struct_1(vec3<bool>(true, false, true), vec2<u32>(117865u, u_input.c), false, vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(19939i, 0i)), vec2<i32>(1i, 1i), vec2<i32>(1i, u_input.b))).c, ~(-1i) >= _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-46000i, u_input.b, 26053i), vec3<i32>(-10859i, u_input.b, u_input.b)), vec3<i32>(u_input.b, u_input.a, -1i))), reverseBits(vec2<u32>(~35490u, 11747u)), func_3().x, _wgslsmith_add_vec4_i32(vec4<i32>(-u_input.b, -5555i, -42986i, func_4(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(18789u, u_input.c), true, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(u_input.c, u_input.c), true, vec4<i32>(u_input.b, 40662i, u_input.b, 23089i)))).b.d.x) | (-vec4<i32>(0i, 5625i, u_input.b, u_input.b) & -vec4<i32>(u_input.b, 10186i, 2147483647i, 12878i)), -firstLeadingBit(func_5(Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, u_input.c), true, vec4<i32>(u_input.a, 2147483647i, 0i, u_input.a)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(u_input.c, u_input.c), false, vec4<i32>(-1i, 1i, u_input.b, u_input.b))), -2147483647i, Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(u_input.c, u_input.c), true, vec4<i32>(-6925i, u_input.b, -2147483647i, u_input.b)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(u_input.c, 69435u), true, vec4<i32>(u_input.a, -1i, u_input.b, u_input.b))), vec2<i32>(-2147483647i, u_input.b)).d)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1427f + -142f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(415f, -632f)))))))));
    var var_4 = !all(func_3().xz);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_1 = -424f;
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_2.b.x, ~var_2.b.x), u_input.c, var_2.b.x);
    var var_6 = Struct_1(vec3<bool>(false, var_2.a.x, !var_2.a.x), vec2<u32>(0u, ~var_2.b.x), false, vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(min(u_input.a, var_2.d.x)), _wgslsmith_dot_vec3_i32(var_2.d.wzx & vec3<i32>(-1i, 16012i, 1i), var_2.d.wzy)), -(-2768i & ~var_2.d.x), 2147483647i, countOneBits(32577i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(-countOneBits(var_2.d.xz), (vec2<i32>(u_input.a, var_6.d.x) & vec2<i32>(1i, var_2.d.x)) | _wgslsmith_div_vec2_i32(var_6.d.zy, vec2<i32>(var_6.d.x, 0i))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_6.d.x, -2147483647i), ~var_6.d.zz), ~(-1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_5), _wgslsmith_f_op_f32(var_5 - var_5))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_5))))), var_5));
}

