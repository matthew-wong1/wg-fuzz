struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, vec3<bool>(false, true, false), vec3<i32>(-1i, 1i, -1i), -9331i, -1061f), Struct_1(false, vec3<bool>(true, true, true), vec3<i32>(4240i, -1i, 8458i), 2147483647i, 1000f), Struct_1(true, vec3<bool>(true, false, true), vec3<i32>(2147483647i, 45907i, -58241i), -30265i, -881f), Struct_1(true, vec3<bool>(true, true, true), vec3<i32>(-4601i, 3505i, 0i), 1i, -128f), Struct_1(true, vec3<bool>(true, false, true), vec3<i32>(-1i, 2147483647i, -4650i), 8904i, 1700f), Struct_1(true, vec3<bool>(true, true, false), vec3<i32>(2147483647i, -36474i, -9132i), 4737i, -997f), Struct_1(false, vec3<bool>(false, true, true), vec3<i32>(23641i, -9155i, 79995i), 86772i, -1656f), Struct_1(true, vec3<bool>(false, false, true), vec3<i32>(21003i, -32872i, 13777i), i32(-2147483648), -464f), Struct_1(false, vec3<bool>(false, false, true), vec3<i32>(2061i, 0i, -50383i), -1i, -1187f), Struct_1(true, vec3<bool>(true, false, true), vec3<i32>(0i, 2147483647i, i32(-2147483648)), 1i, 1669f), Struct_1(false, vec3<bool>(true, false, false), vec3<i32>(1i, 80574i, -1i), 24410i, -355f), Struct_1(true, vec3<bool>(false, true, false), vec3<i32>(0i, -7061i, -44037i), 2147483647i, 1346f), Struct_1(false, vec3<bool>(false, false, false), vec3<i32>(-1i, -1i, 26738i), 0i, -639f), Struct_1(true, vec3<bool>(false, true, true), vec3<i32>(-29426i, -2371i, 1i), -19274i, -1213f), Struct_1(false, vec3<bool>(false, true, false), vec3<i32>(-1i, -28645i, 1i), 2147483647i, -564f), Struct_1(true, vec3<bool>(true, false, true), vec3<i32>(0i, 2147483647i, 2147483647i), -1254i, -307f), Struct_1(false, vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), -21139i, 10849i), 27560i, 250f), Struct_1(true, vec3<bool>(true, true, false), vec3<i32>(i32(-2147483648), -33062i, 1i), -9575i, 1226f), Struct_1(false, vec3<bool>(true, false, true), vec3<i32>(-26543i, 53972i, 2147483647i), i32(-2147483648), -1347f), Struct_1(false, vec3<bool>(true, false, true), vec3<i32>(1955i, 0i, i32(-2147483648)), 1i, 295f), Struct_1(true, vec3<bool>(true, true, true), vec3<i32>(-1i, 222i, 1i), 4833i, 2469f), Struct_1(true, vec3<bool>(true, true, false), vec3<i32>(39874i, 0i, 2147483647i), 29556i, -1037f), Struct_1(true, vec3<bool>(true, false, true), vec3<i32>(-1i, 0i, 1i), i32(-2147483648), 1417f), Struct_1(true, vec3<bool>(true, false, true), vec3<i32>(1i, -1759i, 2147483647i), -5786i, 1000f), Struct_1(false, vec3<bool>(false, true, true), vec3<i32>(-1i, -20481i, -4734i), -46313i, 255f), Struct_1(false, vec3<bool>(false, true, false), vec3<i32>(26719i, 1i, 18366i), -845i, 1165f), Struct_1(false, vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), -1i, -916i), 7153i, -127f), Struct_1(true, vec3<bool>(false, true, true), vec3<i32>(-35883i, i32(-2147483648), -1i), 35910i, -174f), Struct_1(true, vec3<bool>(true, true, false), vec3<i32>(-9911i, -40236i, 0i), -22814i, -295f), Struct_1(false, vec3<bool>(true, false, false), vec3<i32>(-1i, -6798i, 2147483647i), -1i, -1022f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_3) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-743f - _wgslsmith_f_op_f32(abs(arg_2.x)))), -413f, arg_2.x);
    var var_1 = ~_wgslsmith_dot_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, arg_1.c.x), vec3<u32>(52266u, arg_3.c.x, arg_3.c.x)), vec3<u32>(1u, arg_1.c.x, 19702u) & vec3<u32>(18215u, arg_3.c.x, 1u)) & u_input.c, u_input.c);
    var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.x), -733f, -255f);
    let var_2 = arg_2.x;
    var var_3 = -firstTrailingBit(abs(vec3<i32>(-33810i, ~(-1i), -31353i)));
    return firstLeadingBit(u_input.c.x);
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = -max((vec4<i32>(-1i) * -vec4<i32>(1i, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(func_3(-1i, arg_0, vec4<f32>(-2221f, -1056f, 656f, -769f), Struct_3(arg_0.a, arg_0.b, vec2<u32>(arg_0.c.x, 26377u))), 35806u, u_input.c.x << (arg_0.c.x % 32u), arg_0.c.x >> (26596u % 32u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, 11177i, 8390i), vec4<i32>(arg_0.a, u_input.a, 2147483647i, u_input.a)), select(vec4<i32>(11652i, u_input.a, -1229i, -7307i), vec4<i32>(35747i, -2147483647i, u_input.a, -18846i), vec4<bool>(arg_0.b, true, true, false))), -7608i, arg_0.a, arg_0.a));
    let var_1 = abs(var_0.xx);
    let var_2 = max(arg_0.c, vec2<u32>(~(~firstLeadingBit(1u)), min(min(~1u, select(u_input.b, arg_0.c.x, arg_0.b)), 28394u)));
    let var_3 = _wgslsmith_add_vec4_i32(~var_0, -(vec4<i32>(-11645i, -9326i, 52378i, -11634i) << ((vec4<u32>(var_2.x, 6056u, u_input.b, 4294967295u) | vec4<u32>(19993u, u_input.b, u_input.d.x, 11286u)) % vec4<u32>(32u))) & abs(select(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 1i, 51108i, -15733i), vec4<i32>(-26794i, var_1.x, arg_0.a, 43561i)), var_0, vec4<bool>(false, false, true, false))));
    let var_4 = Struct_2(global0[_wgslsmith_index_u32(arg_0.c.x, 30u)], select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.a <= 2147483647i, all(vec2<bool>(arg_0.b, true))), true), !select(vec2<bool>(true, arg_0.b), !vec2<bool>(arg_0.b, arg_0.b), true), select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(false, arg_0.b), vec2<bool>(false, false)))));
    return arg_0.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 30>();
    return Struct_2(Struct_1(!arg_1.a, arg_1.b, ~(~arg_1.c) << ((vec3<u32>(1u, arg_0, arg_0) >> (select(u_input.c, vec3<u32>(arg_0, u_input.c.x, arg_0), arg_1.a) % vec3<u32>(32u))) % vec3<u32>(32u)), i32(-1i) * -28264i, -1000f), !(!arg_1.b.xx));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = func_4(0u, Struct_1(!arg_1.a, select(vec3<bool>(func_2(Struct_3(arg_1.c.x, arg_1.b.x, vec2<u32>(1u, u_input.c.x))), true, all(vec3<bool>(true, true, arg_1.b.x))), vec3<bool>(all(vec2<bool>(arg_1.b.x, true)), true, !arg_1.b.x), ~(-2975i) >= _wgslsmith_div_i32(0i, arg_1.c.x)), _wgslsmith_add_vec3_i32(-arg_1.c, ~arg_1.c), select(arg_1.d, arg_1.d, 1u >= u_input.d.x), _wgslsmith_div_f32(342f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1596f), _wgslsmith_f_op_f32(1000f - 917f)))));
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_1 = var_0;
    var var_2 = var_1.a.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(774f)) * arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(0i, true, countOneBits(u_input.c.zx));
    let var_1 = Struct_2(Struct_1(!(!var_0.b), vec3<bool>(any(!vec3<bool>(var_0.b, var_0.b, var_0.b)), var_0.b & false, var_0.c.x != abs(u_input.d.x)), vec3<i32>(-16438i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, u_input.a), 2147483647i, u_input.a), _wgslsmith_clamp_i32(-1i, -u_input.a, 2147483647i)), ~firstLeadingBit(var_0.a | var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(0u, Struct_1(false, vec3<bool>(true, true, false), vec3<i32>(u_input.a, var_0.a, var_0.a), 1i, 396f), vec3<f32>(369f, 328f, 148f))))))), vec2<bool>(true, false));
    let var_2 = vec3<f32>(var_1.a.e, _wgslsmith_f_op_f32(func_1(abs(_wgslsmith_add_u32(~var_0.c.x, ~var_0.c.x)), Struct_1(var_1.a.a, !var_1.a.b, vec3<i32>(34341i, 1i, firstTrailingBit(12891i)), -1i, -906f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1319f, _wgslsmith_div_f32(var_1.a.e, -1177f), _wgslsmith_f_op_f32(-var_1.a.e)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1521f, 200f, var_1.a.e)))))), var_1.a.e);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.a.e)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_mod_u32(var_0.c.x, 38167u), var_1.a, _wgslsmith_f_op_vec3_f32(-var_2)))), -987f)), _wgslsmith_f_op_f32(738f * var_2.x));
    var_0 = Struct_3(select(2147483647i, u_input.a, func_2(Struct_3(35615i, var_1.a.b.x, ~vec2<u32>(var_0.c.x, 1u)))), true, _wgslsmith_mult_vec2_u32(~vec2<u32>(var_0.c.x, _wgslsmith_add_u32(8532u, var_0.c.x)), ~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, var_0.c.x), vec2<u32>(var_0.c.x, 0u)), 4294967295u)));
    var var_4 = Struct_3(countOneBits(~firstLeadingBit(var_0.a) << (4294967295u % 32u)), all(!(!vec3<bool>(var_1.b.x, false, true))), vec2<u32>(max(4294967295u, ~(~1u)), min(u_input.b, firstLeadingBit(u_input.b)) ^ abs(_wgslsmith_add_u32(var_0.c.x, var_0.c.x))));
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, var_1.a.e, -557f), var_2))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-876f, -759f, 754f) - vec3<f32>(var_2.x, 1324f, var_1.a.e)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1077f, var_1.a.e, var_2.x))) * _wgslsmith_f_op_vec3_f32(round(var_2)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(412f, 1000f, -290f), var_2, var_0.b)) - var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x);
}

