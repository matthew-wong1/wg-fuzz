struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11> = array<u32, 11>(33768u, 0u, 4294967295u, 30967u, 30117u, 0u, 1u, 53841u, 18246u, 0u, 77228u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = Struct_2(vec4<i32>(-u_input.b, u_input.d, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, 21140i), vec3<i32>(2147483647i, u_input.b, -1i)) & firstLeadingBit(21033i), u_input.c), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, -2147483647i, 3831i), abs(vec3<i32>(247i, u_input.c, u_input.b))), vec3<i32>(-32029i, 0i, u_input.c) >> (~arg_0 % vec3<u32>(32u)))), arg_2, Struct_1(~(~arg_0.x), true, vec3<u32>(~_wgslsmith_mod_u32(24568u, 1u), abs(~arg_0.x), global0[_wgslsmith_index_u32(33493u, 11u)]), arg_1, vec4<i32>(-29531i, _wgslsmith_mult_i32(reverseBits(2147483647i), u_input.d), -86198i, _wgslsmith_add_i32(1i, _wgslsmith_sub_i32(u_input.c, u_input.b)))));
    global0 = array<u32, 11>();
    global0 = array<u32, 11>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f + arg_2) * _wgslsmith_f_op_f32(trunc(var_0.b))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, -957f)));
    let var_2 = any(select(select(vec4<bool>(all(vec2<bool>(var_0.c.b, true)), !var_0.c.b, var_0.c.d, 4294967295u <= u_input.a.x), vec4<bool>(var_0.c.d, !var_0.c.b, true, 1i < u_input.d), !(!vec4<bool>(false, arg_1, true, true))), vec4<bool>(!arg_1, all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, var_0.c.d), vec4<bool>(true, false, var_0.c.d, false))), arg_1, true), !(!(!vec4<bool>(false, var_0.c.b, arg_1, arg_1)))));
    return arg_1;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: f32, arg_3: f32) -> vec3<u32> {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 11u)] >> (~abs(arg_0.a.c.x | arg_0.a.c.x) % 32u), true, ~arg_0.a.c, all(!(!select(vec4<bool>(arg_0.a.b, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, false, arg_1), true))), select(vec4<i32>(arg_0.a.e.x, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-31056i, 38233i, -16583i, -51473i), arg_0.a.e) ^ (arg_0.a.e.x << (arg_0.a.a % 32u)), select(arg_0.a.e.x, arg_0.a.e.x, false)), ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.b, 1i, arg_0.a.e.x), vec4<i32>(-32358i, -30557i, -2147483647i, u_input.b)), 28197i, u_input.d << (u_input.a.x % 32u), select(u_input.c, -38512i, arg_0.a.d)), !select(vec4<bool>(arg_1, arg_0.a.b, false, true), !vec4<bool>(arg_0.a.b, arg_0.a.b, false, arg_1), select(vec4<bool>(arg_1, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.a.d, true, false, arg_0.a.d)))));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(max(_wgslsmith_mult_i32(2147483647i >> (var_0.c.x % 32u), -arg_0.a.e.x), -1i), ~arg_0.a.e.x), abs(1i), -9540i);
    global0 = array<u32, 11>();
    let var_2 = arg_0;
    var var_3 = -_wgslsmith_clamp_vec2_i32(max(firstLeadingBit(var_2.a.e.xw), ~(-var_2.a.e.yx)), -(~(-vec2<i32>(var_2.a.e.x, -1i))), -var_0.e.zx);
    return firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(~(~32952u), min(~28121u, ~43444u)), _wgslsmith_dot_vec2_u32(~reverseBits(var_0.c.zy), vec2<u32>(abs(global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~u_input.a.x, 11u)], 11u)])), _wgslsmith_dot_vec2_u32(max(u_input.a, reverseBits(vec2<u32>(72396u, var_2.a.c.x))), ~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a.a, 11u)], 11u)], var_2.a.a))));
}

fn func_2() -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(firstTrailingBit(u_input.a.x >> (0u % 32u)), u_input.a.x)), vec2<u32>(global0[_wgslsmith_index_u32(abs(firstLeadingBit(1u)), 11u)], _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(76346u, 0u, 0u), vec3<u32>(29710u, 73546u, global0[_wgslsmith_index_u32(u_input.a.x, 11u)])), reverseBits(1u)), ~(vec3<u32>(u_input.a.x, u_input.a.x, 24779u) >> (vec3<u32>(global0[_wgslsmith_index_u32(1u, 11u)], u_input.a.x, u_input.a.x) % vec3<u32>(32u))))));
    global0 = array<u32, 11>();
    var var_2 = Struct_1(0u, true, ~func_4(Struct_4(Struct_1(var_1.x, false, vec3<u32>(29062u, global0[_wgslsmith_index_u32(var_1.x, 11u)], global0[_wgslsmith_index_u32(var_1.x, 11u)]), var_0, vec4<i32>(u_input.b, -1i, u_input.c, -17913i))), func_3(vec3<u32>(80724u, var_1.x, u_input.a.x) >> (vec3<u32>(var_1.x, var_1.x, 37839u) % vec3<u32>(32u)), true, -1337f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(918f, -601f)))), !all(vec3<bool>(!var_0, global0[_wgslsmith_index_u32(u_input.a.x, 11u)] <= global0[_wgslsmith_index_u32(36191u, 11u)], select(false, false, false))), _wgslsmith_add_vec4_i32(~select(vec4<i32>(u_input.d, -2147483647i, u_input.d, 14194i), firstTrailingBit(vec4<i32>(-24232i, -27803i, u_input.d, -29332i)), var_0 & var_0), ~vec4<i32>(u_input.b, 5928i, u_input.d, 11855i) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4505u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 11u)], 11u)])) % vec4<u32>(32u))));
    let var_3 = 1223f;
    return (~4294967295u | _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(36550u, 20166u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a, 11u)], 11u)], u_input.a.x), ~vec4<u32>(var_1.x, u_input.a.x, global0[_wgslsmith_index_u32(0u, 11u)], 53389u)))) | func_4(Struct_4(Struct_1(select(39122u, 4294967295u, false), var_2.d, vec3<u32>(var_1.x, var_1.x, var_2.c.x), 519f == var_3, -var_2.e)), true | var_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(var_3 + -919f)))), -315f).x;
}

fn func_1() -> Struct_3 {
    let var_0 = ~vec3<i32>(-524i, -u_input.d, -1i);
    let var_1 = Struct_3(~func_2(), Struct_2(max(firstLeadingBit(~vec4<i32>(var_0.x, u_input.d, u_input.b, -7028i)), vec4<i32>(var_0.x, abs(-2147483647i), _wgslsmith_div_i32(u_input.d, var_0.x), abs(u_input.c))), 1f, Struct_1(_wgslsmith_sub_u32(~19808u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], u_input.a.x)), any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), ~vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), all(vec4<bool>(true, true, true, true)), vec4<i32>(~var_0.x, 1i, u_input.c, var_0.x))), vec4<u32>(4294967295u, ~func_2(), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~u_input.a.x | 0u, 11u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)] % 32u), 11u)]), ~(~_wgslsmith_div_u32(u_input.a.x, global0[_wgslsmith_index_u32(18267u, 11u)]))));
    let var_2 = -select(-select(select(vec4<i32>(var_0.x, var_1.b.c.e.x, -3678i, -2147483647i), vec4<i32>(u_input.d, 5592i, -1i, -1i), vec4<bool>(false, true, var_1.b.c.d, false)), var_1.b.c.e, !var_1.b.c.d), _wgslsmith_div_vec4_i32(var_1.b.c.e, var_1.b.a), !((global0[_wgslsmith_index_u32(28916u, 11u)] == u_input.a.x) | true));
    global0 = array<u32, 11>();
    let var_3 = Struct_4(var_1.b.c);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 46835u | ~(~(~42899u ^ ~global0[_wgslsmith_index_u32(1u, 11u)]));
    global0 = array<u32, 11>();
    var_0 = 32656u;
    global0 = array<u32, 11>();
    let var_1 = func_1();
    global0 = array<u32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(max(select(var_1.b.a.x & u_input.d, _wgslsmith_mult_i32(var_1.b.a.x, 1465i), false) & min(~(-12986i), ~(-7530i)), 2147483647i), var_1.b.c.c, 2147483647i);
}

