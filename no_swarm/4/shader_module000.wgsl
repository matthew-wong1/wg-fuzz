struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -38779i;

var<private> global1: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(0i, 3401i, 57361i), vec3<i32>(-42691i, 3500i, i32(-2147483648)), vec3<i32>(97598i, -19384i, -264i), vec3<i32>(1299i, i32(-2147483648), -1549i), vec3<i32>(9140i, 0i, 18604i), vec3<i32>(0i, 2147483647i, 95i), vec3<i32>(0i, 0i, -12778i), vec3<i32>(-22086i, 35404i, 6441i), vec3<i32>(0i, 2147483647i, 0i), vec3<i32>(-20573i, 36140i, 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> f32 {
    global0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(max(28207i, -89017i), -2147483647i), (i32(-1i) * -33372i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(-14644i), 1i, ~0i, -11571i), max(vec4<i32>(30467i, 36234i, 0i, -34364i), -vec4<i32>(1i, -2147483647i, -33200i, -1i))));
    let var_0 = all(arg_0.yx);
    var var_1 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_clamp_i32(2906i, -6015i, 0i)), ~(i32(-1i) * -1496i), firstLeadingBit(1i)), -2147483647i), 2147483647i, abs(31626i), 1i);
    var var_2 = -(~vec2<i32>(var_1.x, (var_1.x & -1492i) ^ -2147483647i));
    var var_3 = select(_wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(var_2.x), 31177i, var_1.x) | vec3<i32>(-7784i, var_2.x >> (45077u % 32u), min(var_2.x, var_2.x)), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 2147483647i), vec2<i32>(-1i, var_2.x)), ~var_2.x, var_2.x >> (u_input.a % 32u))), var_1.wxy), global1[_wgslsmith_index_u32(~(~1u), 10u)], vec3<bool>(false, !all(vec4<bool>(var_0, false, false, arg_1)), any(!vec4<bool>(arg_0.x, arg_0.x, true, true))));
    return _wgslsmith_div_f32(-502f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(369f - -1437f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1568f)))));
}

fn func_2(arg_0: Struct_5, arg_1: f32, arg_2: Struct_4, arg_3: u32) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var_0 = Struct_5(var_1.a, reverseBits(var_1.a.a));
    var var_2 = Struct_1(countOneBits(vec2<i32>(~arg_0.a.c, _wgslsmith_sub_i32(var_0.a.c, arg_0.a.c)) << (arg_0.b.zz % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, arg_2.a.x, arg_2.a.x), arg_2.a.x)), _wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(floor(var_1.a.b))))) - var_0.a.b), select(arg_2.a.xy, vec2<bool>(true, true), !any(!vec2<bool>(arg_2.a.x, arg_2.a.x))), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.c, 54948i, arg_0.a.c), min(vec3<i32>(-1i, 0i, var_1.a.c), global1[_wgslsmith_index_u32(17856u, 10u)]))) & global1[_wgslsmith_index_u32(abs(13176u), 10u)]);
    let var_3 = abs(arg_3) << (28430u % 32u);
    return var_0.a;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = !(!(!vec3<bool>(arg_0, arg_0, any(vec4<bool>(false, true, arg_0, arg_0)))));
    global0 = ~(~arg_2);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(func_2(Struct_5(func_2(Struct_5(Struct_2(arg_3.a, -905f, arg_3.c), vec3<u32>(1u, 1u, 17783u)), arg_3.b, Struct_4(vec4<bool>(var_0.x, var_0.x, false, arg_0)), arg_1.x), min(vec3<u32>(58402u, arg_3.a.x, 1u), arg_1.zxy)), 1904f, Struct_4(!vec4<bool>(true, false, false, var_0.x)), arg_3.a.x).b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -977f) * _wgslsmith_f_op_f32(exp2(arg_3.b))))));
    var_0 = select(vec3<bool>((arg_3.a.x & arg_1.x) < ~1u, !(_wgslsmith_f_op_f32(step(-115f, arg_3.b)) <= _wgslsmith_f_op_f32(-279f - -704f)), any(select(select(var_0.zy, var_0.zx, vec2<bool>(var_0.x, true)), var_0.yx, var_0.x))), select(!vec3<bool>(true, arg_3.b > arg_3.b, true), select(select(vec3<bool>(false, var_0.x, arg_0), vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(true, var_0.x, true), vec3<bool>(true, false, var_0.x), true)), vec3<bool>(!var_0.x, var_0.x, !arg_0), vec3<bool>(true && arg_0, arg_0, 1u > u_input.a)), arg_0), !vec3<bool>(arg_0, true, true));
    let var_2 = !var_0.xz;
    return -170f;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(686f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(true, vec4<u32>(18492u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) % vec4<u32>(32u)), select(1i, 9417i, false), func_2(Struct_5(Struct_2(vec3<u32>(u_input.a, u_input.a, u_input.a), 805f, -1i), vec3<u32>(1u, u_input.a, 634u)), -1000f, Struct_4(vec4<bool>(false, false, false, false)), 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1251f * 2909f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(false, vec4<u32>(3380u, u_input.a, 1u, u_input.a), 1i, Struct_2(vec3<u32>(10330u, u_input.a, 4294967295u), -1260f, -61648i)))) != _wgslsmith_f_op_f32(func_2(Struct_5(Struct_2(vec3<u32>(804u, u_input.a, 42486u), -560f, 0i), vec3<u32>(0u, u_input.a, u_input.a)), -125f, Struct_4(vec4<bool>(false, false, false, false)), u_input.a).b + _wgslsmith_f_op_f32(select(1000f, 867f, false))))));
    var var_1 = ~(~(~select(u_input.a, 76171u, false)) << (u_input.a % 32u));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(max(abs(959i), -10471i), _wgslsmith_div_i32(-31311i, _wgslsmith_dot_vec2_i32(vec2<i32>(-28181i, -1i), vec2<i32>(5162i, -18507i)))), i32(-1i) * -6601i, -76998i), -global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a, 6314u), 10u)]);
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, _wgslsmith_sub_u32(~u_input.a, u_input.a), 3142u, _wgslsmith_sub_u32(firstLeadingBit(32526u), u_input.a | 125408u) << (0u % 32u)), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(98050u, u_input.a), ~17280u), reverseBits(countOneBits(u_input.a)), ~u_input.a, ~countOneBits(0u)) & vec4<u32>(abs(~u_input.a), u_input.a & ~0u, 11600u, ~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(18989u, 88922u), ~0u, u_input.a, 4294967295u) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 27179u, u_input.a, 40528u), vec4<u32>(0u, u_input.a, u_input.a, 4294967295u)), firstTrailingBit(max(vec4<u32>(u_input.a, 21132u, 1u, 1u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 92439u) % vec4<u32>(32u)), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a) | vec4<u32>(4294967295u, 4294967295u, 6560u, u_input.a)))));
    var var_3 = vec2<f32>(var_0, 934f);
    return Struct_2(firstLeadingBit(var_2.wyz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1776f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * var_3.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0, -224f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x + 1379f), _wgslsmith_f_op_f32(-var_0))))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~(~48914u), 4294967295u, false);
    let var_1 = func_1();
    let var_2 = Struct_2(vec3<u32>(~var_1.a.x, func_2(Struct_5(var_1, vec3<u32>(u_input.a, 64332u, 4294967295u)), _wgslsmith_f_op_f32(-var_1.b), Struct_4(vec4<bool>(false, false, false, true)), firstLeadingBit(4294967295u)).a.x, u_input.a) | var_1.a, var_1.b, var_1.c);
    var var_3 = Struct_3(Struct_1(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c, var_2.c), vec2<i32>(2147483647i, var_1.c))), _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(f32(-1f) * -652f)), vec2<bool>(true, true), _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.c, -40454i, -32570i), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, var_2.a.x, ~34809u), 10u)], firstLeadingBit(-global1[_wgslsmith_index_u32(var_2.a.x, 10u)]))), vec4<bool>(true, true || all(vec4<bool>(true, true, true, true)), any(vec4<bool>(all(vec2<bool>(true, true)), true, any(vec3<bool>(true, false, false)), all(vec2<bool>(true, false)))), !all(vec3<bool>(false, true, false))));
    global0 = var_1.c << (_wgslsmith_mult_u32(var_1.a.x, 36161u) % 32u);
    var var_4 = ~var_1.a.x;
    let var_5 = Struct_5(func_1(), vec3<u32>(var_2.a.x, 0u, 678u));
    let var_6 = Struct_3(Struct_1(-var_3.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_2.b, -141f)), _wgslsmith_div_f32(var_1.b, 259f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.b, -1202f)))), vec2<bool>(true, 1491f >= var_5.a.b), ~vec3<i32>(-2147483647i, var_2.c, 3655i) | var_3.a.d), !(!select(var_3.b, select(vec4<bool>(true, var_3.a.c.x, false, var_3.a.c.x), vec4<bool>(var_3.b.x, true, var_3.a.c.x, false), var_3.b), vec4<bool>(var_3.a.c.x, var_3.b.x, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(-1602f, var_3.a.b, _wgslsmith_mod_i32(var_3.a.d.x, i32(-1i) * -2147483647i), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_6.a.b * -280f) - var_6.a.b), _wgslsmith_f_op_f32(func_4(false, vec4<u32>(4294967295u, var_5.b.x, var_2.a.x, var_1.a.x), -var_6.a.a.x, var_1))), var_3.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2448f + var_5.a.b) * var_3.a.b)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i << (u_input.a % 32u), var_3.a.a.x) ^ countOneBits(~var_6.a.a.x), -_wgslsmith_dot_vec3_i32(abs(global1[_wgslsmith_index_u32(var_2.a.x, 10u)]), vec3<i32>(var_6.a.a.x, -5244i, var_3.a.d.x) >> (var_1.a % vec3<u32>(32u)))));
}

