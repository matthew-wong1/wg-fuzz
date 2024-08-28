struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> vec3<u32> {
    let var_0 = vec2<bool>(arg_1.x, !any(arg_1.zw));
    var var_1 = Struct_2(_wgslsmith_div_vec4_i32(~(-(~vec4<i32>(-1i, u_input.c, 0i, 8860i))), select(~vec4<i32>(u_input.c, -1i, 0i, -10608i), vec4<i32>(u_input.c, u_input.c, u_input.c, 38723i), false) << (_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a), vec4<u32>(u_input.a, 20691u, u_input.d, u_input.a) ^ vec4<u32>(4294967295u, u_input.d, 1u, u_input.e.x)) % vec4<u32>(32u))), Struct_1(vec2<bool>(arg_0, u_input.a < 1u), countOneBits(~(~u_input.e.x)), _wgslsmith_f_op_f32(step(127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) + -469f))), vec2<bool>(arg_0, all(vec2<bool>(true, false))), true), firstLeadingBit(~u_input.b) | u_input.b, all(arg_1.xy));
    var var_2 = vec3<bool>(!arg_0, !arg_0, all(vec4<bool>(false, !arg_0, false, true)));
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(~18613i, ~(~_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c)), var_1.a.x, ~u_input.c), ~vec4<i32>(u_input.c, 1i, var_1.a.x, _wgslsmith_mod_i32(abs(28477i), u_input.c)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-561f * var_1.b.c) + _wgslsmith_f_op_f32(var_1.b.c + var_1.b.c)), var_1.b.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.c, var_1.b.c)), -1844f), vec4<f32>(_wgslsmith_f_op_f32(trunc(479f)), 1240f, -193f, _wgslsmith_f_op_f32(f32(-1f) * -374f))));
    return _wgslsmith_add_vec3_u32(var_1.c, _wgslsmith_clamp_vec3_u32(var_1.c, ~vec3<u32>(66812u >> (var_1.b.b % 32u), 6263u & var_1.c.x, max(44279u, var_1.c.x)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c.x, u_input.d, u_input.a), ~var_1.c), firstLeadingBit(~vec3<u32>(u_input.d, u_input.d, 57535u)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1201f * _wgslsmith_div_f32(1499f, arg_1.c)))));
    let var_1 = Struct_2(~vec4<i32>(~_wgslsmith_add_i32(u_input.c, u_input.c), u_input.c, -35210i, _wgslsmith_div_i32(arg_2.x, u_input.c)), Struct_1(arg_1.d, _wgslsmith_sub_u32(~(~arg_3.b), ~max(0u, 1u)), var_0, arg_1.a, select(!(arg_3.c >= var_0), select(arg_1.e, 12418u == arg_3.b, arg_1.e), arg_0.x & true)), firstLeadingBit(min(~vec3<u32>(32549u, arg_3.b, 71928u), u_input.b & vec3<u32>(4294967295u, 9092u, arg_1.b)) << (_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, 0u)), func_3(arg_1.d.x, arg_0)) % vec3<u32>(32u))), true);
    return !(!vec2<bool>(any(arg_0), arg_0.x != arg_1.d.x));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(vec2<bool>(any(arg_2), any(vec4<bool>(arg_2.x == true, true, true, true))), u_input.a, -232f, !arg_1, true);
    global1 = array<vec3<bool>, 3>();
    var var_1 = select(!func_2(select(vec4<bool>(arg_2.x, true, arg_2.x, var_0.a.x), vec4<bool>(arg_1.x, true, arg_2.x, arg_1.x), !vec4<bool>(arg_2.x, true, false, arg_1.x)), Struct_1(!vec2<bool>(arg_1.x, arg_2.x), _wgslsmith_div_u32(1u, 38656u), -424f, vec2<bool>(arg_2.x, true), true), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-35398i, 1i)), ~vec2<i32>(-2147483647i, arg_0)), Struct_1(func_2(vec4<bool>(true, arg_1.x, false, false), Struct_1(var_0.d, u_input.d, var_0.c, vec2<bool>(true, var_0.d.x), true), vec2<i32>(12057i, 0i), Struct_1(var_0.d, 0u, var_0.c, arg_2, true)), _wgslsmith_mod_u32(u_input.e.x, 58916u), var_0.c, !arg_2, true)).x, arg_2.x != !all(func_2(vec4<bool>(true, arg_1.x, arg_2.x, var_0.e), Struct_1(vec2<bool>(arg_2.x, false), u_input.b.x, -295f, arg_1, false), vec2<i32>(u_input.c, -2147483647i), Struct_1(arg_2, u_input.a, 339f, arg_1, arg_2.x))), false);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -492f), -1161f, var_0.c)));
    var var_3 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(-22769i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), ~vec2<i32>(u_input.c, u_input.c)), -2147483647i, -73375i), vec4<i32>(_wgslsmith_mod_i32(-2147483647i, ~12881i), 0i, abs(_wgslsmith_add_i32(u_input.c, 12743i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -22315i, 1i), vec3<i32>(-2639i, arg_0, 0i)))), Struct_1(select(!func_2(vec4<bool>(arg_1.x, true, false, false), Struct_1(arg_2, u_input.d, 2143f, var_0.a, true), vec2<i32>(u_input.c, u_input.c), Struct_1(arg_1, var_0.b, var_2.x, arg_1, false)), !var_0.d, arg_1.x), firstLeadingBit(reverseBits(_wgslsmith_sub_u32(4294967295u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x), 1000f)), !arg_1, false), u_input.b, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(693f))) <= _wgslsmith_f_op_f32(-var_0.c)));
    return Struct_2(vec4<i32>(_wgslsmith_div_i32(~arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(-23007i, var_3.a.x, var_3.a.x, 12354i), -var_3.a)), _wgslsmith_mult_i32(abs(-19563i), 71730i), min(arg_0, ~arg_0) << (94110u % 32u), arg_0), Struct_1(func_2(vec4<bool>(var_3.b.a.x, !arg_1.x, all(vec4<bool>(arg_1.x, true, var_0.e, false)), !arg_1.x), Struct_1(vec2<bool>(arg_1.x, false), var_3.b.b, 1015f, select(arg_2, vec2<bool>(true, true), var_3.b.d), arg_1.x), _wgslsmith_sub_vec2_i32(var_3.a.yx, vec2<i32>(18980i, var_3.a.x)) | -var_3.a.yw, var_3.b), var_3.b.b, var_2.x, vec2<bool>(arg_1.x, true), true), u_input.b, var_3.b.c > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-211f)), var_0.c, true))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = ~(-vec2<i32>(u_input.c, u_input.c));
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    var var_1 = u_input.e.x;
    var_1 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(62097u, 1u)), ~countOneBits(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b))), 0u);
    return func_4(max(abs(1i) | ~var_0.x, u_input.c), select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(any(vec4<bool>(false, true, true, false)), true)), select(select(vec2<bool>(true, true), func_2(vec4<bool>(false, true, false, true), Struct_1(vec2<bool>(false, true), 6039u, arg_0, vec2<bool>(true, true), false), var_0, Struct_1(vec2<bool>(true, true), 58475u, 127f, vec2<bool>(false, true), false)), func_2(vec4<bool>(true, false, false, true), Struct_1(vec2<bool>(false, true), u_input.b.x, arg_0, vec2<bool>(true, true), false), var_0, Struct_1(vec2<bool>(true, true), u_input.e.x, -1368f, vec2<bool>(false, false), false))), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))), func_2(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(vec2<bool>(true, true), 0u, arg_0, vec2<bool>(select(false, false, false), true), all(!global1[_wgslsmith_index_u32(4294967295u, 3u)])), vec2<i32>((2147483647i | var_0.x) << (79983u % 32u), -abs(u_input.c)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), ~(u_input.e.x << (u_input.e.x % 32u)), -941f, vec2<bool>(true, all(global1[_wgslsmith_index_u32(1u, 3u)])), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(u_input.c, 2147483647i, 2834i) & u_input.c;
    var var_1 = func_1(_wgslsmith_div_f32(966f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1018f, -162f, false)) + _wgslsmith_f_op_f32(-1252f + 2271f))))));
    let var_2 = vec4<i32>(-countOneBits(_wgslsmith_add_i32(~u_input.c, u_input.c)), u_input.c, var_1.a.x, ~abs(_wgslsmith_div_i32(1i, u_input.c)));
    var_1 = func_4(select(_wgslsmith_clamp_i32(u_input.c, -5754i, _wgslsmith_mult_i32(17053i, _wgslsmith_add_i32(var_2.x, 11651i))), _wgslsmith_mult_i32(14900i, i32(-1i) * -49943i), ~(~u_input.c) != func_1(var_1.b.c).a.x), select(func_2(vec4<bool>(var_1.d, all(vec3<bool>(var_1.b.a.x, var_1.d, true)), false, var_1.b.a.x), var_1.b, vec2<i32>(firstTrailingBit(var_1.a.x), min(2147483647i, -1i)), Struct_1(!var_1.b.d, u_input.a, -1000f, !var_1.b.a, true)), var_1.b.d, func_2(select(select(vec4<bool>(var_1.b.e, var_1.b.e, true, var_1.d), vec4<bool>(var_1.d, var_1.d, false, true), false), vec4<bool>(var_1.d, var_1.b.a.x, true, true), vec4<bool>(var_1.b.e, var_1.b.d.x, true, true)), func_4(firstLeadingBit(var_1.a.x), var_1.b.d, select(vec2<bool>(true, false), vec2<bool>(var_1.b.d.x, var_1.d), vec2<bool>(var_1.d, var_1.d))).b, var_1.a.wy, func_4(2147483647i, vec2<bool>(var_1.b.a.x, true), var_1.b.a).b)), !var_1.b.d);
    let var_3 = func_4(-min(_wgslsmith_sub_i32(var_1.a.x, _wgslsmith_dot_vec4_i32(var_2, vec4<i32>(var_1.a.x, 0i, u_input.c, -1i))), ~_wgslsmith_sub_i32(2147483647i, 0i)), !var_1.b.d, vec2<bool>(~firstLeadingBit(var_1.b.b) < reverseBits(_wgslsmith_clamp_u32(80721u, 51109u, u_input.a)), true)).a.xz;
    var var_4 = -func_4(0i, var_1.b.a, vec2<bool>(!all(vec3<bool>(false, var_1.b.a.x, var_1.b.d.x)), var_1.d)).a.xyy;
    let var_5 = func_4(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_4.x, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_4.x), vec2<i32>(-4937i, 44551i))), 37286i), vec2<bool>(var_1.b.d.x, false), select(var_1.b.d, !var_1.b.d, var_1.b.d.x)).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1341f, func_1(_wgslsmith_f_op_f32(abs(-281f))).b.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-171f)), var_5.c), 1078f))), 0i, -firstLeadingBit(~var_4.x), vec2<f32>(_wgslsmith_f_op_f32(var_1.b.c * _wgslsmith_f_op_f32(select(-152f, _wgslsmith_f_op_f32(1357f * -484f), all(vec4<bool>(true, false, var_1.d, false))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-244f))))));
}

