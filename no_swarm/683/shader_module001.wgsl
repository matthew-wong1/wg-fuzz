struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(2147483647i, -6573i, 0i, -17245i, -51368i, 9409i, i32(-2147483648), 27704i, 0i, -72531i, -1i, i32(-2147483648), -1i, 34497i, 42665i, 2147483647i, 0i, 1543i, 8328i, -5562i, 23746i, 0i, 10867i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_3(vec3<i32>(firstLeadingBit(-u_input.c.x), _wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(u_input.d.x, u_input.c.x, u_input.d.x)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-14221i, 9529i, -80761i), vec3<i32>(-38161i, 40027i, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<i32>(u_input.c.x, -1i, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]))), 15390i), Struct_1(!vec3<bool>(!arg_0, true, true), vec4<bool>(true, arg_1.x, true, arg_0), reverseBits(vec4<u32>(max(1u, u_input.a.x), 4294967295u, u_input.a.x, 0u)), select(u_input.d.x == global0[_wgslsmith_index_u32(~u_input.a.x, 23u)], arg_1.x, arg_0), !(!arg_1)), 212f, Struct_2(firstLeadingBit(~u_input.a.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1392f, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(287f, 1272f, 443f))))), ~(abs(u_input.a) & vec2<u32>(u_input.b.x, u_input.a.x)), 4294967295u, 463f), reverseBits(~u_input.b.wx) ^ vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.b.xwz, vec3<u32>(u_input.a.x, 17524u, u_input.a.x)), _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(u_input.b.www, u_input.b.zwx), _wgslsmith_clamp_u32(3190u, u_input.b.x, u_input.a.x))));
    var_0 = Struct_3(~(~max(var_0.a, vec3<i32>(global0[_wgslsmith_index_u32(23328u, 23u)], -47083i, -1i))), Struct_1(var_0.b.b.xwz, !(!(!var_0.b.b)), vec4<u32>(min(96786u ^ u_input.a.x, u_input.b.x), 1u, ~0u, firstLeadingBit(var_0.b.c.x)), arg_0, vec3<bool>(true, var_0.b.a.x, all(var_0.b.b.yw) || true)), _wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d.e + _wgslsmith_f_op_f32(-1000f - 1428f))))), Struct_2(var_0.d.a, _wgslsmith_f_op_vec3_f32(var_0.d.b + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, -1708f, 547f), var_0.d.b, arg_0))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.a, 59970u), vec2<u32>(27601u, u_input.a.x)), var_0.b.c.x), ~(~(~u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1484f * var_0.d.b.x), -798f) - var_0.d.b.x)), vec2<u32>(_wgslsmith_mult_u32(var_0.b.c.x, firstTrailingBit(u_input.b.x)), ~select(var_0.e.x, _wgslsmith_mod_u32(var_0.e.x, u_input.b.x), !var_0.b.d)));
    let var_1 = Struct_1(arg_1, !select(vec4<bool>(true, any(vec2<bool>(false, var_0.b.b.x)), all(var_0.b.b), false), select(!var_0.b.b, var_0.b.b, select(vec4<bool>(var_0.b.b.x, false, true, true), var_0.b.b, true)), _wgslsmith_f_op_f32(var_0.d.b.x * -549f) <= _wgslsmith_f_op_f32(-968f - -1000f)), ~var_0.b.c & vec4<u32>(reverseBits(u_input.a.x) | 34395u, ~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), ~var_0.e), ~41192u), (countOneBits(~31862u) << (_wgslsmith_add_u32(firstLeadingBit(1u), ~var_0.b.c.x) % 32u)) == countOneBits(reverseBits(1u)), vec3<bool>(true, true, true));
    let var_2 = global0[_wgslsmith_index_u32(var_1.c.x, 23u)];
    let var_3 = var_0.a;
    return vec3<bool>((~(1u << (var_0.b.c.x % 32u)) != ~countOneBits(u_input.b.x)) || !var_1.e.x, var_0.c > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-704f)))), true);
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<i32, 23>();
    let var_0 = global0[_wgslsmith_index_u32(~5836u, 23u)] >> ((_wgslsmith_mod_u32(~(~arg_0), countOneBits(4294967295u)) ^ 37306u) % 32u);
    let var_1 = Struct_4(u_input.b.x, true);
    global0 = array<i32, 23>();
    var var_2 = var_0;
    return Struct_1(!select(!(!vec3<bool>(var_1.b, false, var_1.b)), func_3(var_1.b, select(vec3<bool>(false, var_1.b, var_1.b), vec3<bool>(true, var_1.b, false), var_1.b)), func_3(true, vec3<bool>(false, var_1.b, false)).x), select(select(!select(vec4<bool>(var_1.b, var_1.b, false, var_1.b), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(func_3(var_1.b, vec3<bool>(true, true, var_1.b)).x, var_1.b, any(vec2<bool>(var_1.b, var_1.b)), true), vec4<bool>(!var_1.b, all(vec2<bool>(var_1.b, false)), true, var_1.b)), select(select(select(vec4<bool>(var_1.b, true, var_1.b, var_1.b), vec4<bool>(false, false, var_1.b, var_1.b), vec4<bool>(true, false, var_1.b, true)), select(vec4<bool>(true, var_1.b, false, false), vec4<bool>(true, true, true, true), false), var_1.b), select(vec4<bool>(false, var_1.b, false, false), vec4<bool>(var_1.b, false, true, var_1.b), !var_1.b), !(!vec4<bool>(var_1.b, true, false, var_1.b))), !vec4<bool>(true, true, 2147483647i >= global0[_wgslsmith_index_u32(0u, 23u)], true)), abs(min(~vec4<u32>(arg_0, arg_0, u_input.a.x, u_input.b.x), ~vec4<u32>(arg_0, arg_0, u_input.b.x, arg_0) << (~u_input.b % vec4<u32>(32u)))), any(select(!(!vec3<bool>(var_1.b, false, false)), vec3<bool>(true, false && var_1.b, false), (var_1.b == var_1.b) & var_1.b)), vec3<bool>(!func_3(true, vec3<bool>(var_1.b, true, true)).x, var_1.b, var_1.b));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = u_input.e;
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    global0 = array<i32, 23>();
    return Struct_1(select(vec3<bool>(true, func_2(u_input.a.x).b.x, select(!arg_0.d, true, arg_0.d)), select(vec3<bool>(arg_0.e.x & arg_0.a.x, false, false), vec3<bool>(arg_0.e.x, true, arg_0.b.x), arg_0.a), vec3<bool>(false, true, true)), vec4<bool>(true, arg_0.e.x, select(arg_0.b.x, true, true), true), u_input.b, !arg_0.d && all(arg_0.b), func_2(_wgslsmith_clamp_u32(arg_1 | 0u, 0u, _wgslsmith_dot_vec2_u32(arg_0.c.xy, _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(0u, arg_1))))).a);
}

fn func_1() -> bool {
    var var_0 = func_4(func_2(max(4294967295u, 1556u >> (~u_input.b.x % 32u))), ~(4294967295u | u_input.b.x));
    var var_1 = _wgslsmith_add_vec4_i32(abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(1u, 23u)], u_input.d.x, 2147483647i), vec4<i32>(u_input.c.x, global0[_wgslsmith_index_u32(2636u, 23u)], global0[_wgslsmith_index_u32(137467u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]))) << (var_0.c % vec4<u32>(32u)), -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(0u, 23u)], -1i), _wgslsmith_div_i32(u_input.c.x, global0[_wgslsmith_index_u32(var_0.c.x, 23u)])), -global0[_wgslsmith_index_u32(min(var_0.c.x, 0u), 23u)], _wgslsmith_div_i32(firstLeadingBit(u_input.c.x), -u_input.e), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(32688u, 23u)], u_input.e, global0[_wgslsmith_index_u32(46202u, 23u)]), vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(7077u, 23u)], -2147483647i, -1i)))));
    let var_2 = Struct_4(var_0.c.x, false);
    let var_3 = vec2<bool>(true, var_0.d);
    var var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(~(abs(var_0.c.x) << ((u_input.b.x & 124422u) % 32u)), _wgslsmith_dot_vec4_u32(min(~vec4<u32>(var_0.c.x, 47569u, var_2.a, var_0.c.x), min(u_input.b, vec4<u32>(0u, var_0.c.x, u_input.a.x, u_input.b.x))), vec4<u32>(abs(39372u), 45766u, _wgslsmith_clamp_u32(1u, 0u, 15726u), ~12407u)), var_2.a), ~vec3<u32>(var_2.a, var_0.c.x, u_input.b.x));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec3<i32>(-1i) * -vec3<i32>(u_input.e, 1i, ~1i), Struct_1(select(vec3<bool>(func_1(), true, false), func_3(true, vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !func_4(func_2(u_input.b.x), ~1u).b, ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 1u, 24946u, 0u), u_input.b), !(_wgslsmith_add_i32(u_input.e, u_input.d.x) >= 53875i), func_4(Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, false, false), ~u_input.b, false, func_3(true, vec3<bool>(true, true, true))), select(u_input.b.x & 11532u, u_input.a.x, true)).e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1868f, -1713f, false)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-694f - -730f)))), Struct_2(~u_input.b.x, vec3<f32>(-287f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(671f * 109f))), _wgslsmith_f_op_f32(113f - 2004f)), ~(~max(vec2<u32>(u_input.a.x, 38916u), vec2<u32>(u_input.a.x, u_input.a.x))), firstLeadingBit(func_4(Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, false, false), u_input.b, false, vec3<bool>(false, false, false)), 4294967295u).c.x), _wgslsmith_f_op_f32(exp2(1f))), func_2(u_input.a.x).c.yx);
    var_0 = Struct_3(vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b.c.x, min(56447u, var_0.d.a)), 23u)], min(~20728i, ~(-1i)) << (var_0.e.x % 32u), i32(-1i) * -11728i), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1430f - var_0.c) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.d, vec2<u32>(~u_input.b.x, 33580u));
    let var_1 = Struct_3(select(var_0.a, vec3<i32>(2853i, -(var_0.a.x << (var_0.b.c.x % 32u)), -46617i), !func_1()), func_2(23429u), var_0.d.e, var_0.d, vec2<u32>(var_0.e.x | min(66730u, ~u_input.b.x), ~(~4294967295u)));
    global0 = array<i32, 23>();
    var var_2 = firstLeadingBit(reverseBits(max(~var_0.b.c, var_1.b.c))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(~22079u, 74758u, _wgslsmith_sub_u32(0u, var_0.b.c.x), firstTrailingBit(u_input.a.x)) & select(vec4<u32>(42157u, u_input.b.x, u_input.a.x, 29355u), u_input.b, !var_1.b.b), u_input.b) % vec4<u32>(32u));
    let var_3 = reverseBits(_wgslsmith_clamp_u32(~max(u_input.b.x << (4294967295u % 32u), 52758u), _wgslsmith_mod_u32(func_4(Struct_1(var_0.b.e, vec4<bool>(var_0.b.b.x, true, var_1.b.e.x, false), vec4<u32>(33435u, u_input.b.x, 4294967295u, var_0.b.c.x), var_1.b.e.x, vec3<bool>(var_0.b.d, false, true)), var_0.e.x << (var_2.x % 32u)).c.x, _wgslsmith_add_u32(var_1.e.x ^ 1u, u_input.b.x << (u_input.a.x % 32u))), _wgslsmith_dot_vec2_u32(abs(var_0.b.c.zy), vec2<u32>(firstLeadingBit(var_1.e.x), abs(var_2.x)))));
    let var_4 = Struct_4(~0u, false);
    let var_5 = Struct_1(vec3<bool>(true, !var_4.b, false), var_0.b.b, select(var_1.b.c, var_0.b.c, vec4<bool>(var_0.b.e.x, true | select(var_0.b.d, var_0.b.e.x, var_1.b.b.x), var_0.b.a.x, var_4.b)), false, var_0.b.e);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.d.e, var_1.d.b.x, var_0.d.b.x), vec3<f32>(var_0.d.e, var_1.c, var_1.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.d.b, var_1.d.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.e, 591f, -406f)))) + _wgslsmith_f_op_vec3_f32(select(var_0.d.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.c, -451f, -1058f), var_0.d.b)), _wgslsmith_f_op_vec3_f32(-var_0.d.b), !var_0.b.b.wxx)), vec3<bool>(var_1.b.b.x, false, func_2(var_3).b.x)))));
}

