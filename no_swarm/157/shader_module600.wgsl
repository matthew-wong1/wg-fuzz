struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec4<i32> {
    global0 = !global1.c != all(!(!(!vec3<bool>(global1.c, global1.c, global1.c))));
    global0 = any(select(select(vec2<bool>(false || global1.c, any(vec3<bool>(global1.c, global1.c, global1.c))), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(global1.c, true)), global1.c)), !vec2<bool>(true, any(vec4<bool>(global1.c, global1.c, true, false))), !all(!vec4<bool>(global1.c, global1.c, global1.c, false))));
    var var_0 = Struct_2(vec4<i32>(2147483647i, 2147483647i, 2147483647i ^ global1.b, reverseBits(7041i)), u_input.b.x, (0u >> (u_input.d % 32u)) >> (_wgslsmith_div_u32(u_input.c, ~u_input.c) % 32u), firstLeadingBit(firstLeadingBit(~42029u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1509f, -1950f, -449f))))))));
    var var_1 = global1.c;
    let var_2 = Struct_2(select(~_wgslsmith_add_vec4_i32(var_0.a, var_0.a), vec4<i32>(_wgslsmith_add_i32(u_input.b.x, 2147483647i), i32(-1i) * -1780i, 2967i, 1i), vec4<bool>(select(true, global1.c, true), !global1.c, true, global1.c)) ^ ~var_0.a, ~select(-(global1.a.x ^ 0i), ~var_0.a.x, countOneBits(var_0.c) <= var_0.d), var_0.d >> (_wgslsmith_mult_u32(abs(select(var_0.d, u_input.d, false)), 46415u) % 32u), _wgslsmith_dot_vec3_u32(select(~(~vec3<u32>(u_input.c, 4508u, 34654u)), max(select(vec3<u32>(u_input.d, 1u, 0u), vec3<u32>(19059u, 97216u, u_input.d), false), ~vec3<u32>(30583u, var_0.c, 40935u)), !vec3<bool>(global1.c, true, global1.c)), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.d, 57273u) >> (vec3<u32>(var_0.c, var_0.d, var_0.c) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c, var_0.d, 9862u), vec3<u32>(u_input.c, 42043u, 4294967295u))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, _wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-var_0.e.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.e.x, -193f))));
    return var_2.a;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global1.a | u_input.b, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~func_3(), -(~vec4<i32>(global1.b, u_input.b.x, 1i, 32545i))), _wgslsmith_mod_i32(global1.a.x, 11203i)), true);
    global0 = false;
    global1 = var_0;
    var var_1 = global1.a.x;
    let var_2 = Struct_1(-vec3<i32>(-1i, _wgslsmith_add_i32(abs(-66274i), abs(u_input.b.x)), -2147483647i), _wgslsmith_dot_vec3_i32(global1.a, u_input.b), false);
    return Struct_1(u_input.b >> (~abs(~vec3<u32>(u_input.d, u_input.c, 4294967295u)) % vec3<u32>(32u)), 0i, false);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 591f)));
    var var_1 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_2.a, ~(~arg_2.b), arg_2.b), arg_2.a, arg_2.b & max(arg_2.a >> (vec4<u32>(0u, 0u, 1u, arg_2.a.x) % vec4<u32>(32u)), vec4<u32>(u_input.d, 43681u, arg_2.b.x, u_input.c) << (arg_2.b % vec4<u32>(32u))));
    var_1 = ~min(arg_2.a, arg_2.a);
    return arg_1;
}

fn func_1() -> Struct_3 {
    global1 = func_4(~_wgslsmith_clamp_vec3_i32(global1.a, global1.a, -global1.a), func_2(), Struct_3(_wgslsmith_clamp_vec4_u32(abs(reverseBits(vec4<u32>(0u, 6149u, u_input.c, u_input.c))), vec4<u32>(_wgslsmith_add_u32(u_input.d, 41825u), _wgslsmith_div_u32(4294967295u, 1673u), _wgslsmith_clamp_u32(u_input.d, u_input.c, u_input.d), u_input.c), ~vec4<u32>(58065u, 25317u, 4294967295u, u_input.d) << (select(vec4<u32>(u_input.c, 52575u, 0u, 11984u), vec4<u32>(4294967295u, u_input.c, 80964u, 41867u), false) % vec4<u32>(32u))), ~vec4<u32>(~46052u, ~u_input.d, u_input.c, max(u_input.d, 11939u))));
    global0 = global1.c;
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-309f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1391f, _wgslsmith_f_op_f32(-463f + -498f))) + _wgslsmith_f_op_f32(f32(-1f) * -193f)))));
    global1 = func_4(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global1.b, 2498i) << (0u % 32u), global1.b, global1.a.x), -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, 13244i), select(vec3<i32>(global1.b, global1.b, 2147483647i), vec3<i32>(global1.a.x, global1.a.x, global1.b), vec3<bool>(false, false, global1.c)))), func_4(func_2().a, Struct_1(~(-vec3<i32>(global1.a.x, global1.a.x, 42072i)), abs(u_input.a) >> (~74960u % 32u), true), Struct_3(~(~vec4<u32>(43247u, 0u, u_input.d, 4294967295u)), max(vec4<u32>(0u, 1u, u_input.d, 13790u), firstLeadingBit(vec4<u32>(1u, 36507u, 1u, u_input.d))))), Struct_3(~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d, 4294967295u, 0u), vec4<u32>(u_input.d, 19889u, u_input.d, u_input.d))), reverseBits(max(vec4<u32>(u_input.d, 0u, 35217u, u_input.c), vec4<u32>(u_input.c, u_input.d, 4294967295u, u_input.c)))));
    global1 = Struct_1(~u_input.b, global1.b, any(!vec4<bool>(false, true, false, true | global1.c)));
    return Struct_3(~vec4<u32>(u_input.d, 1u, abs(firstLeadingBit(45889u)), _wgslsmith_mod_u32(u_input.d, u_input.c)), vec4<u32>(~max(30111u, 30965u), 14879u, reverseBits(17963u), _wgslsmith_add_u32(u_input.d, firstTrailingBit(~39862u))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_3(vec4<u32>(0u, _wgslsmith_mult_u32(3742u, 0u), (~arg_0.b.x >> (arg_0.a.x % 32u)) << (min(~12800u, 44944u) % 32u), ~(~_wgslsmith_dot_vec3_u32(arg_1, arg_0.a.yzx))), reverseBits(~func_1().b));
    let var_1 = Struct_1(vec3<i32>(~(global1.b | global1.b), countOneBits(arg_2 << (arg_1.x % 32u)), u_input.b.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4869u, ~27199u, max(arg_0.b.x, u_input.d)), vec3<u32>(0u ^ arg_0.b.x, ~1u, 46782u >> (u_input.c % 32u))) % vec3<u32>(32u)), -((global1.b | 18292i) >> (arg_0.b.x % 32u)), !(any(select(vec4<bool>(global1.c, global1.c, global1.c, global1.c), vec4<bool>(true, global1.c, global1.c, global1.c), vec4<bool>(true, global1.c, global1.c, false))) != (!global1.c != all(vec3<bool>(global1.c, global1.c, false)))));
    let var_2 = var_1.a.yy;
    let var_3 = vec2<bool>(false, ~(~_wgslsmith_div_i32(var_2.x, u_input.a)) > var_2.x);
    let var_4 = reverseBits(u_input.b.x);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(), ~vec3<u32>(_wgslsmith_mod_u32(u_input.d & 0u, abs(4294967295u)), u_input.d, 72031u), func_2().b, _wgslsmith_f_op_f32(round(-1000f)));
    let var_1 = u_input.c;
    global1 = Struct_1(-func_3().wyz, -1i, all(vec4<bool>(global1.c, _wgslsmith_f_op_f32(select(902f, -220f, false)) > _wgslsmith_f_op_f32(abs(-227f)), global1.c, !all(vec3<bool>(global1.c, global1.c, false)))));
    global0 = false;
    global0 = global1.c && global1.c;
    let var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(firstLeadingBit(func_1().b.yw))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2065f, _wgslsmith_f_op_f32(-155f - 309f), _wgslsmith_f_op_f32(f32(-1f) * -346f))))), _wgslsmith_mult_vec4_i32(select(max(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.b.x, 6900i), vec4<i32>(1i, u_input.b.x, -1i, 0i)), vec4<i32>(10489i, -22560i, u_input.a, 18170i)), ~vec4<i32>(1i, global1.a.x, u_input.b.x, global1.a.x), !select(vec4<bool>(global1.c, global1.c, false, global1.c), vec4<bool>(global1.c, global1.c, global1.c, global1.c), vec4<bool>(false, global1.c, false, global1.c))), vec4<i32>(~u_input.b.x | _wgslsmith_mod_i32(-1i, 25398i), ~global1.b ^ (i32(-1i) * -27766i), ~firstLeadingBit(global1.b), ~(u_input.a | 2147483647i))), _wgslsmith_f_op_f32(min(1f, 255f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(928f - 195f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-718f * -308f)))));
}

