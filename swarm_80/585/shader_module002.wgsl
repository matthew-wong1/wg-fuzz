struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = Struct_2(vec3<i32>(_wgslsmith_div_i32(2147483647i, u_input.a), u_input.a, _wgslsmith_add_i32(-1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, -9397i), -u_input.a))));
    var var_1 = select(vec2<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)))), !vec2<bool>(all(vec3<bool>(true, true, true)), false), true);
    let var_2 = any(vec4<bool>(true & !any(vec3<bool>(var_1.x, true, true)), !(!var_1.x), var_1.x & false, var_1.x));
    var var_3 = !(!select(select(vec3<bool>(var_1.x, true, true), !vec3<bool>(false, true, var_2), !vec3<bool>(var_1.x, var_2, var_1.x)), vec3<bool>(any(vec3<bool>(false, var_2, var_2)), false, all(vec3<bool>(var_1.x, true, true))), !vec3<bool>(true, false, var_1.x)));
    let var_4 = 4294967295u;
    return select(vec4<bool>(abs(~14689u) >= (_wgslsmith_dot_vec2_u32(vec2<u32>(11026u, 1u), vec2<u32>(1u, var_4)) ^ 1u), select(_wgslsmith_sub_i32(arg_1.x, 1i) > -6582i, !(var_1.x != true), select(arg_1.x, arg_1.x, var_3.x) < _wgslsmith_add_i32(arg_1.x, 10267i)), var_2, ~(~var_4) <= var_4), !select(select(!vec4<bool>(false, var_2, var_1.x, false), select(vec4<bool>(var_1.x, var_3.x, var_3.x, var_1.x), vec4<bool>(var_1.x, var_3.x, true, var_3.x), true), select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_2, var_3.x, false, var_1.x))), !vec4<bool>(var_3.x, var_1.x, var_3.x, var_3.x), var_3.x), vec4<bool>(var_1.x, var_2, var_1.x, false));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    let var_0 = arg_0.b ^ (~(~arg_1.a.x) | arg_1.a.x);
    let var_1 = select(arg_0.a.xy, func_3(~_wgslsmith_add_u32(72518u, arg_1.a.x), vec4<i32>(i32(-1i) * -12652i, 1i, ~0i, arg_1.c.x) ^ ((vec4<i32>(0i, u_input.a, u_input.a, 2147483647i) ^ arg_1.c) ^ (vec4<i32>(-1i, u_input.a, 2147483647i, arg_1.c.x) & vec4<i32>(u_input.a, 25228i, -7361i, -1i)))).xw, vec2<bool>(true, true));
    var var_2 = !arg_0.a.x;
    var_2 = ~(~_wgslsmith_clamp_u32(arg_1.a.x, ~14399u, 0u)) != 1u;
    var var_3 = func_3(arg_1.a.x, arg_1.c).x;
    return 20824i;
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> vec3<i32> {
    let var_0 = Struct_2(arg_0.a);
    var var_1 = func_4(Struct_3(func_3(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 8625u), vec2<u32>(4294967295u, 1u)), vec4<i32>(arg_0.a.x, select(1i, 55925i, arg_1), ~7158i, arg_0.a.x ^ -23737i)), min(2039u, 1u)), Struct_1(_wgslsmith_add_vec4_u32(select(firstLeadingBit(vec4<u32>(0u, 23393u, 4294967295u, 0u)), ~vec4<u32>(0u, 1u, 4294967295u, 56964u), select(vec4<bool>(true, arg_1, false, false), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1))), ~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1520f, -574f) * vec2<f32>(1000f, 1214f))))), vec4<i32>(0i, _wgslsmith_sub_i32(34212i, -78665i), u_input.a, firstLeadingBit(arg_0.a.x << (4524u % 32u))), vec2<i32>(_wgslsmith_mod_i32(u_input.a, var_0.a.x), _wgslsmith_clamp_i32(arg_0.a.x, arg_0.a.x, 4738i)) & vec2<i32>(_wgslsmith_div_i32(var_0.a.x, u_input.a), -2147483647i)));
    var_1 = arg_0.a.x;
    var_1 = var_0.a.x;
    var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.a.xz, firstLeadingBit(_wgslsmith_clamp_vec2_i32(arg_0.a.yy, ~arg_0.a.zx, var_0.a.yx))), _wgslsmith_div_vec2_i32(reverseBits(arg_0.a.zz), select(arg_0.a.yz, abs(-var_0.a.yy), false)));
    return max(select(reverseBits(~vec3<i32>(arg_0.a.x, var_0.a.x, -1i)), vec3<i32>(_wgslsmith_add_i32(var_0.a.x, 0i) ^ -11573i, -_wgslsmith_sub_i32(-2147483647i, -9549i), max(var_0.a.x, ~arg_0.a.x)), !vec3<bool>(select(arg_1, arg_1, arg_1), true, any(vec2<bool>(true, arg_1)))), var_0.a);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, arg_0.a.x), _wgslsmith_add_i32(arg_0.a.x, -1i)) >> (4294967295u % 32u);
    let var_1 = arg_1.c;
    let var_2 = 2147483647i;
    let var_3 = any(vec2<bool>(true, true));
    let var_4 = arg_1;
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(Struct_2(~(func_2(Struct_2(vec3<i32>(-2147483647i, -1i, -3338i)), false) | ~vec3<i32>(1i, u_input.a, u_input.a))), Struct_1(vec4<u32>(max(8098u, 0u), 7986u, 0u, _wgslsmith_div_u32(4294967295u, 83912u)) << (vec4<u32>(_wgslsmith_clamp_u32(1u, 4294967295u, 29043u), 0u << (0u % 32u), 1u, ~66129u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-1395f)), _wgslsmith_f_op_f32(-2036f + 1298f))), -(~(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), -vec2<i32>(~u_input.a, func_2(Struct_2(vec3<i32>(u_input.a, u_input.a, u_input.a)), true).x)));
    return Struct_1(var_0.a, var_0.b, reverseBits(_wgslsmith_sub_vec4_i32(var_0.c, firstTrailingBit(vec4<i32>(var_0.c.x, u_input.a, var_0.c.x, 1i)))), var_0.d);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<u32>) -> vec4<bool> {
    let var_0 = arg_1;
    let var_1 = var_0.c.yw;
    let var_2 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.d.x, -56353i, _wgslsmith_add_i32(-22676i, u_input.a)) & vec3<i32>(0i, abs(1i), -24043i), var_0.c.xxw));
    var var_3 = Struct_2(min(~select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, var_1.x, 0i), var_2.a, arg_1.c.xxy), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_0.d.x, -10493i), vec3<i32>(-1i, -1i, u_input.a), var_2.a), arg_0.a.xwy), vec3<i32>(1i, ~var_1.x, func_1().d.x) & ~(arg_1.c.yzw << (arg_1.a.xzx % vec3<u32>(32u)))));
    var var_4 = !(arg_0.a.x || arg_0.a.x);
    return vec4<bool>(all(!vec4<bool>(true, var_1.x <= var_0.d.x, true, all(arg_0.a))), select(select(1i <= _wgslsmith_div_i32(arg_1.d.x, var_2.a.x), arg_0.a.x && false, !any(vec2<bool>(true, arg_0.a.x))), !arg_2.a.x, arg_2.a.x), !(-_wgslsmith_div_i32(var_2.a.x, -22148i) != 1i), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_3(vec4<bool>(true, true, true, true), 331u), func_1(), Struct_3(vec4<bool>(false, _wgslsmith_f_op_f32(select(774f, 1131f, true)) >= 651f, true, !any(vec4<bool>(false, true, true, true))), 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(select(54192u, 53272u, true)), ~1u, firstTrailingBit(_wgslsmith_div_u32(1u, 4294967295u)), countOneBits(~106089u)), ~(~vec4<u32>(0u, 26870u, 12194u, 7981u))));
    var var_1 = Struct_3(!func_6(Struct_3(func_6(Struct_3(vec4<bool>(var_0.x, var_0.x, false, var_0.x), 4294967295u), Struct_1(vec4<u32>(34451u, 72337u, 57428u, 0u), vec2<f32>(2091f, 146f), vec4<i32>(58531i, 0i, u_input.a, -25499i), vec2<i32>(u_input.a, u_input.a)), Struct_3(var_0, 16596u), vec4<u32>(64000u, 108404u, 83537u, 4294967295u)), abs(4294967295u)), func_5(Struct_2(vec3<i32>(1i, 7342i, u_input.a)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1u), vec2<f32>(-636f, 244f), vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec2<i32>(u_input.a, -9995i))), Struct_3(vec4<bool>(var_0.x, false, var_0.x, false), 0u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_u32(1u, select(48709u, 95052u, true)));
    var_1 = Struct_3(var_0, 12692u);
    let var_2 = false;
    let var_3 = -reverseBits(-_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, -26874i, u_input.a), vec4<i32>(36708i, 10525i, u_input.a, -14139i)), ~vec4<i32>(28528i, u_input.a, u_input.a, u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1356f, 1000f, -1442f))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-737f, -788f, -2435f))))))));
}

