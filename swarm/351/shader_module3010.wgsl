struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    global0 = u_input.a;
    global0 = ~_wgslsmith_mult_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, 0i, u_input.c, -1i), vec4<i32>(u_input.c, global0.x, 41205i, -60500i), vec4<i32>(global0.x, -1979i, u_input.c, u_input.b)) & ~firstTrailingBit(vec4<i32>(2147483647i, -70893i, 2147483647i, 2147483647i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global0.x, 24391i, global0.x), u_input.a ^ vec4<i32>(1i, global0.x, u_input.c, global0.x)));
    let var_0 = -1006f;
    global0 = abs(vec4<i32>(global0.x, 0i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, select(global0.x, u_input.c, true), global0.x, ~15503i), -u_input.a)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.d), -2453f)), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), max(u_input.d.yx, reverseBits(vec2<u32>(4294967295u & u_input.e.x, _wgslsmith_mod_u32(63916u, 28527u)))), Struct_2(Struct_1(true, true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1384f)), _wgslsmith_f_op_f32(floor(arg_0.d))))), Struct_1(true, true, _wgslsmith_f_op_f32(325f + arg_0.a.c)), arg_0.c, -1365f));
    return true & any(select(arg_1, arg_1, true));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: bool) -> i32 {
    global0 = u_input.a;
    let var_0 = Struct_3(arg_1, i32(-1i) * -global0.x, ~select(firstTrailingBit(vec2<u32>(u_input.e.x, u_input.d.x)), ~u_input.e.yz, all(vec4<bool>(true, arg_2, arg_2, arg_2))), Struct_2(Struct_1(any(!vec2<bool>(arg_2, true)), any(vec4<bool>(true, arg_2, false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f) - _wgslsmith_f_op_f32(288f * 166f))), Struct_1(func_3(Struct_2(Struct_1(false, false, arg_0), Struct_1(arg_2, arg_2, 369f), vec4<f32>(arg_0, arg_1, 115f, arg_1), arg_1), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), arg_2)), all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) * _wgslsmith_f_op_f32(round(arg_1)))), vec4<f32>(-377f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(floor(-398f))), _wgslsmith_f_op_f32(-1034f * 381f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), arg_1));
    let var_1 = min(var_0.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(34708u, 0u, var_0.c.x, var_0.c.x), vec4<u32>(4294967295u, 25692u, u_input.e.x, 34208u)), countOneBits(u_input.d), u_input.d), u_input.d)) >> (20121u % 32u);
    global0 = -u_input.a;
    var var_2 = u_input.a.x;
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.b, u_input.a.x), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(~global0.x, 1i, abs(0i), var_0.b)));
}

fn func_1() -> Struct_4 {
    let var_0 = u_input.d.x;
    global0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(_wgslsmith_mod_i32(2147483647i, -1i), min(u_input.a.x, ~u_input.c), 0i, global0.x)), vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, 13341i, u_input.a.x, 1i) | u_input.a), vec4<i32>(_wgslsmith_mult_i32(u_input.c | -49349i, func_2(576f, 794f, true)), -2067i, 0i, ~max(u_input.a.x, global0.x)) ^ vec4<i32>(-func_2(187f, -503f, true), ~firstLeadingBit(-53620i), global0.x, 0i));
    let var_1 = Struct_4(select(select(vec4<bool>(any(vec4<bool>(false, false, true, false)), true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), all(vec3<bool>(false, false, true))), select(vec4<bool>(true, var_0 == 43174u, true, false), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), all(vec2<bool>(true, true)) || any(vec4<bool>(true, false, true, false))), true || func_3(Struct_2(Struct_1(false, true, -971f), Struct_1(true, false, 202f), vec4<f32>(-835f, -1575f, -121f, 2097f), 1077f), select(vec2<bool>(true, true), vec2<bool>(false, false), true))), Struct_1(_wgslsmith_add_i32(-1i, global0.x) > global0.x, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1574f * -1000f)))))), Struct_2(Struct_1((-2147483647i == u_input.b) == true, !all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-195f - -367f)), Struct_1(true, true, _wgslsmith_f_op_f32(-560f + _wgslsmith_f_op_f32(f32(-1f) * -1543f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-597f + 470f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(663f)))), _wgslsmith_f_op_f32(f32(-1f) * -1105f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1101f, -1386f) - _wgslsmith_f_op_f32(468f + -485f))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(trunc(1f))))));
    var var_2 = ~_wgslsmith_add_vec2_i32(vec2<i32>(4834i, i32(-1i) * -2147483647i), max(~global0.zz ^ vec2<i32>(9032i, -18449i), vec2<i32>(-2147483647i, countOneBits(u_input.b))));
    global0 = _wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(-u_input.a, u_input.a), firstLeadingBit(vec4<i32>(reverseBits(u_input.c), _wgslsmith_mod_i32(-7844i, var_2.x), var_2.x, var_2.x) >> (vec4<u32>(~var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 32618u), u_input.e.xx), var_0 ^ var_0, _wgslsmith_clamp_u32(5536u, u_input.e.x, u_input.e.x)) % vec4<u32>(32u))), u_input.a);
    return Struct_4(var_1.a, var_1.c.a, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1519f), _wgslsmith_sub_i32(u_input.c, u_input.a.x), _wgslsmith_mult_vec2_u32(select(reverseBits(vec2<u32>(4294967295u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), vec2<u32>(u_input.e.x, u_input.d.x)), select(var_0.a.yy, select(var_0.a.wy, vec2<bool>(var_0.b.b, true), var_0.c.b.b), var_0.b.b)), _wgslsmith_sub_vec2_u32(u_input.d.zx, select(~vec2<u32>(0u, u_input.e.x), ~vec2<u32>(u_input.e.x, u_input.d.x), !vec2<bool>(var_0.a.x, false)))), Struct_2(Struct_1(!select(var_0.c.b.b, var_0.b.b, var_0.b.a), all(vec4<bool>(true, true, var_0.c.b.a, false)), var_0.c.a.c), func_1().b, _wgslsmith_div_vec4_f32(var_0.c.c, var_0.c.c), var_0.c.c.x));
    var_1 = Struct_3(-595f, _wgslsmith_sub_i32(~(-(i32(-1i) * -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, 1i & global0.x, func_2(var_1.d.d, 951f, false)), u_input.a.wwy)), var_1.c, var_1.d);
    var var_2 = select(~max(~reverseBits(vec2<u32>(0u, 0u)), _wgslsmith_add_vec2_u32(~u_input.e.xz, min(var_1.c, u_input.d.zy))), vec2<u32>(var_1.c.x, var_1.c.x), false);
    global0 = vec4<i32>(-var_1.b, -firstTrailingBit(24316i), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(var_1.b, global0.x, -52077i, -2147483647i))), u_input.a, abs(u_input.a)), (vec4<i32>(-1i) * -vec4<i32>(45989i, var_1.b, 0i, global0.x)) & vec4<i32>(var_1.b, abs(u_input.b), u_input.c, abs(15450i))), 9881i);
    global0 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(1i), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_div_i32(~var_1.b, var_1.b), -1i, _wgslsmith_div_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.xzw, global0.yxy)), 6861i), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_1.b, -52821i, var_1.b, -2147483647i) | ~u_input.a, _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(var_1.b, global0.x, 15435i, 0i)))), ~firstLeadingBit(~max(24445u, 4294967295u)), vec3<u32>(~(select(var_2.x, var_2.x, true) ^ 62780u), u_input.d.x, u_input.d.x));
}

