struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(2147483647i, 949i), vec2<i32>(1i, 55692i), vec2<i32>(1i, 1i), vec2<i32>(15361i, 1i), vec2<i32>(-11029i, 2147483647i), vec2<i32>(-31187i, 103326i), vec2<i32>(5858i, -33780i), vec2<i32>(25920i, i32(-2147483648)), vec2<i32>(24263i, -3416i), vec2<i32>(35703i, 2147483647i), vec2<i32>(-67472i, 2147483647i), vec2<i32>(-1i, -3973i), vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 7341i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-48636i, 1i), vec2<i32>(-48570i, 1i), vec2<i32>(1i, -5092i), vec2<i32>(29430i, 1i), vec2<i32>(-66009i, -28690i), vec2<i32>(-29268i, 336i), vec2<i32>(1i, -1i), vec2<i32>(15455i, 34570i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, -32612i), vec2<i32>(-5522i, 0i), vec2<i32>(i32(-2147483648), 887i), vec2<i32>(2147483647i, -4293i), vec2<i32>(-1i, -1i), vec2<i32>(-33214i, 20002i));

var<private> global2: array<vec4<f32>, 12>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> vec3<bool> {
    global2 = array<vec4<f32>, 12>();
    let var_0 = vec3<i32>(u_input.c, -41313i, reverseBits(_wgslsmith_sub_i32(u_input.d, -u_input.c)) >> (_wgslsmith_clamp_u32(~u_input.a, 32962u, u_input.a) % 32u));
    var var_1 = firstLeadingBit(-(~vec4<i32>(abs(50216i), _wgslsmith_add_i32(u_input.b.x, var_0.x), var_0.x ^ 2147483647i, var_0.x)));
    var var_2 = _wgslsmith_sub_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-42526i, var_1.x, u_input.b.x >> (1u % 32u)), _wgslsmith_mult_vec3_i32(var_0, abs(var_0))), var_1.yxz);
    var_1 = vec4<i32>(~(-var_2.x ^ ~u_input.c) & u_input.b.x, ~(-1i), var_1.x, firstLeadingBit(_wgslsmith_mod_i32((u_input.c << (u_input.a % 32u)) ^ -var_2.x, ~(-var_0.x))));
    return !vec3<bool>(true, true, false | any(vec4<bool>(false, true, true, true)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> bool {
    var var_0 = Struct_1(vec3<f32>(-140f, 567f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.a.x, -610f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - arg_1.a.x)))), true & !(!arg_1.b), -_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.c, countOneBits(vec4<i32>(arg_1.c.x, arg_1.c.x, 46308i, arg_1.c.x))), ~(~vec4<i32>(u_input.c, u_input.c, arg_1.c.x, -35712i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.b.x, u_input.c), arg_1.c)), 66537u);
    global2 = array<vec4<f32>, 12>();
    var var_1 = vec4<u32>(arg_1.d, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.d, 0u), 0u), var_0.d, 40412u) ^ reverseBits(~(~firstLeadingBit(vec4<u32>(u_input.e.x, var_0.d, 4294967295u, u_input.e.x))));
    let var_2 = abs(var_1.x);
    var var_3 = arg_1.d > u_input.a;
    return !(all(select(select(vec4<bool>(false, var_0.b, true, arg_2), vec4<bool>(true, false, true, false), vec4<bool>(arg_1.b, arg_1.b, false, true)), !vec4<bool>(arg_2, arg_1.b, arg_2, arg_1.b), arg_1.b)) || true);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> bool {
    global0 = all(select(!(!func_2()), vec3<bool>(true & func_3(vec3<f32>(1406f, -272f, -563f), Struct_1(vec3<f32>(-620f, 1247f, -585f), true, vec4<i32>(-17678i, u_input.c, 1i, -1i), u_input.a), true), !(1u != u_input.e.x), any(vec3<bool>(true, false, true)) & all(vec2<bool>(false, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 2147483647i <= arg_2.x), vec3<bool>(true, select(true, false, false), 24505i >= arg_0.x), vec3<bool>(4294967295u < u_input.e.x, any(vec3<bool>(false, false, false)), 14373i == arg_1.x))));
    let var_0 = ~arg_0.x;
    var var_1 = _wgslsmith_clamp_u32(~(~(~u_input.a)), 4294967295u | u_input.a, firstTrailingBit(~u_input.a));
    global1 = array<vec2<i32>, 31>();
    let var_2 = firstTrailingBit(1u);
    return func_2().x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    global1 = array<vec2<i32>, 31>();
    var var_0 = ~reverseBits(~(vec4<u32>(1u, 4294967295u, 4294967295u, arg_0.d) & vec4<u32>(u_input.a, arg_0.d, 1u, arg_0.d)));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1125f, arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.x, -577f), var_1.x, _wgslsmith_f_op_f32(var_1.x + arg_1.x))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, var_1.x)), arg_1.x, arg_0.a.x)));
    let var_2 = _wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(min(-1000f, -276f))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-692f, 2366f, 533f) + vec3<f32>(-788f, 610f, 1528f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(2300f, 231f, 1419f) - vec3<f32>(2159f, -1148f, 489f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(692f, 280f, 262f) + vec3<f32>(477f, 285f, 851f)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))))), !func_1(~vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x), -u_input.b, -vec3<i32>(-32910i, 2147483647i, -1i)), reverseBits(abs(countOneBits(vec4<i32>(1i, u_input.b.x, u_input.b.x, -37077i)))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.e.x, u_input.e.x), vec3<u32>(14082u, 1u, u_input.a)), ~u_input.a, u_input.e.x | u_input.e.x), ~vec3<u32>(u_input.a, 4294967295u, 4294967295u) ^ (vec3<u32>(61537u, u_input.e.x, u_input.e.x) | vec3<u32>(u_input.e.x, u_input.e.x, 1u)))), vec4<f32>(-1252f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f)), -1709f, -726f), countOneBits(_wgslsmith_div_i32(~_wgslsmith_mult_i32(-56809i, 1i), max(2147483647i, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-2262i, 12225i))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, -578f)) - _wgslsmith_div_f32(-356f, var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + 1502f) * -107f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)) - _wgslsmith_f_op_f32(-var_0.a.x)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)))) + vec3<f32>(_wgslsmith_f_op_f32(step(-516f, var_0.a.x)), -176f, _wgslsmith_f_op_f32(var_0.a.x - 1429f)))), !var_0.b, _wgslsmith_clamp_vec4_i32(abs(func_4(Struct_1(vec3<f32>(-1591f, var_1.x, 462f), var_0.b, vec4<i32>(50859i, 1i, -630i, var_0.c.x), 4294967295u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, 590f, -463f, -653f), global2[_wgslsmith_index_u32(var_0.d, 12u)])), 16397i).c), var_0.c, vec4<i32>(-16784i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(14140i, 49336i), u_input.d, -u_input.b.x), _wgslsmith_mult_i32(abs(var_0.c.x), u_input.c), -6379i)), _wgslsmith_sub_u32(select(34691u, u_input.e.x, all(vec2<bool>(false, var_0.b))), u_input.e.x));
    let var_3 = ~vec4<u32>(4294967295u, max(~var_2.d, func_4(var_0, global2[_wgslsmith_index_u32(0u, 12u)], ~var_0.c.x).d), 139u, select(~1u, reverseBits(u_input.e.x), 1u <= (1u | u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(~1i, _wgslsmith_add_i32(-2147483647i, var_0.c.x)), u_input.d), var_3.x, 56237u);
}

