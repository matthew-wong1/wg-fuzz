struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(-32826i, 0i, 1i, -28292i), vec4<i32>(-39303i, -1i, 57951i, 1i), vec4<i32>(-1i, 0i, 13727i, -1i), vec4<i32>(i32(-2147483648), 0i, -34611i, 2147483647i));

var<private> global1: array<Struct_4, 16>;

var<private> global2: array<vec4<i32>, 5>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(min(arg_0.zy, u_input.c.yx), arg_0.zy), vec2<u32>(4294967295u, arg_0.x)), firstTrailingBit(_wgslsmith_mod_u32(arg_0.x, 14063u))), vec4<bool>(true, true, select(true, false, true) && any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), !(_wgslsmith_f_op_f32(floor(-1902f)) < _wgslsmith_f_op_f32(abs(331f)))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(750f, -2533f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(706f))) + _wgslsmith_f_op_f32(-233f * _wgslsmith_f_op_f32(sign(247f))))));
    let var_1 = Struct_5(Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(3838u, var_0.a, 1u) << (u_input.c % vec3<u32>(32u)), arg_0), !select(vec4<bool>(true, false, var_0.b.x, true), vec4<bool>(var_0.b.x, true, true, var_0.b.x), true), vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x * 929f), _wgslsmith_f_op_f32(f32(-1f) * -1311f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-620f, -591f, 711f, var_0.c.x), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, 708f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-791f, -953f, 561f, var_0.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1645f, 2104f, var_0.c.x, -177f))))), vec2<i32>(0i, i32(-1i) * -1i)), Struct_2(Struct_1(var_0.a, vec4<bool>(true, !var_0.b.x, true, true), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.x, 376f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2478f * var_0.c.x), _wgslsmith_f_op_f32(106f - var_0.c.x), _wgslsmith_f_op_f32(sign(var_0.c.x)), 172f) - vec4<f32>(var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(ceil(575f)), _wgslsmith_f_op_f32(ceil(670f)))), vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -u_input.a), u_input.a)), var_0, Struct_1(_wgslsmith_dot_vec2_u32(arg_0.yz, ~vec2<u32>(1u, var_0.a)), vec4<bool>(all(select(var_0.b, vec4<bool>(false, var_0.b.x, true, true), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true))), var_0.b.x, true, true), _wgslsmith_f_op_vec2_f32(var_0.c - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0.c, var_0.c)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.c.x, var_0.c.x)))))));
    var var_2 = ~var_0.a;
    var_2 = var_1.a.a.a;
    var_2 = var_1.c.a;
    return select(!select(!select(vec4<bool>(var_0.b.x, false, false, var_0.b.x), var_0.b, var_0.b), !vec4<bool>(var_0.b.x, false, true, false), vec4<bool>(var_1.c.b.x, true, var_0.b.x, !var_1.d.b.x)), select(!(!select(var_0.b, vec4<bool>(false, var_0.b.x, var_0.b.x, false), vec4<bool>(false, var_1.d.b.x, false, false))), vec4<bool>(true, true, (-214f != var_1.b.b.x) && !var_1.d.b.x, false), select(select(!vec4<bool>(var_1.d.b.x, var_0.b.x, true, false), var_0.b, var_1.b.a.b), !(!var_0.b), select(vec4<bool>(false, var_0.b.x, true, true), !vec4<bool>(false, var_0.b.x, var_1.d.b.x, var_1.c.b.x), false))), select(var_1.b.a.b, var_0.b, var_1.b.a.b.x));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> i32 {
    let var_0 = ~vec3<u32>(86421u, arg_0, max(arg_0, 0u));
    var var_1 = Struct_2(Struct_1(arg_0, func_3(~(~u_input.c)), vec2<f32>(_wgslsmith_f_op_f32(-699f * arg_1.x), _wgslsmith_f_op_f32(arg_1.x * 394f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))), 2001f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2171f * 997f), -212f)), -410f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -136f), -1814f, -1742f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1281f, 411f, 1348f, 562f)))), -(~(-vec2<i32>(1i, 1i)) ^ _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(36024i, u_input.a)), -vec2<i32>(8133i, u_input.a), vec2<i32>(-2147483647i, u_input.a) >> (vec2<u32>(4294967295u, 5400u) % vec2<u32>(32u)))));
    let var_2 = Struct_2(var_1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-367f, -908f, 1000f, -789f) + vec4<f32>(arg_1.x, var_1.b.x, 517f, var_1.a.c.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.c.x, 1601f, var_1.b.x, -220f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(391f, var_1.a.c.x, -1087f, arg_1.x)), select(vec4<bool>(true, var_1.a.b.x, false, true), var_1.a.b, var_1.a.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_1.b)) + var_1.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, -947f, 1111f, arg_1.x)))))), select(-countOneBits(var_1.c), -var_1.c, select(var_1.a.b.yw, !var_1.a.b.xx, vec2<bool>(true, var_1.a.b.x))));
    var_1 = var_2;
    var var_3 = var_2.a;
    return _wgslsmith_dot_vec4_i32(~vec4<i32>(~(-2147483647i), ~var_2.c.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-9930i, u_input.a), ~30762i), var_1.c.x), vec4<i32>(-(~1i) ^ abs(_wgslsmith_div_i32(-2147483647i, u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.c.x, var_2.c.x) ^ -vec3<i32>(var_1.c.x, -2147483647i, 2147483647i), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_2.c.x, var_1.c.x), vec3<i32>(-19579i, 9999i, 2609i)))), max(0i, _wgslsmith_mult_i32(var_2.c.x, 1i)), var_1.c.x));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: Struct_5, arg_3: vec2<i32>) -> vec2<u32> {
    global0 = array<vec4<i32>, 4>();
    global1 = array<Struct_4, 16>();
    var var_0 = 4294967295u > arg_2.d.a;
    var var_1 = select(vec2<bool>(true, select(arg_2.d.b.x && true, !any(vec2<bool>(arg_1.a.b.x, arg_2.a.a.b.x)), true)), vec2<bool>(arg_2.c.b.x, false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.c.x)), arg_2.b.b.x)) != arg_1.a.c.x);
    var var_2 = Struct_1(max(u_input.b, ~arg_2.a.a.a), vec4<bool>(1u <= arg_2.a.a.a, 36566i > ~func_2(26426u, arg_2.c.c), false, true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.a.c.x, arg_2.a.a.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(498f, arg_1.a.c.x)) + vec2<f32>(1348f, arg_0))), arg_2.a.b.xz)));
    return min(~(vec2<u32>(_wgslsmith_sub_u32(118023u, 47797u), ~0u) >> (~_wgslsmith_mod_vec2_u32(u_input.c.xx, vec2<u32>(u_input.c.x, 214u)) % vec2<u32>(32u))), u_input.c.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 16>();
    global1 = array<Struct_4, 16>();
    let var_0 = Struct_3(vec3<i32>(u_input.a, -_wgslsmith_mult_i32(u_input.a, u_input.a), -u_input.a) >> (vec3<u32>(u_input.c.x & 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 4294967295u), func_1(-2196f, Struct_2(Struct_1(13283u, vec4<bool>(true, false, true, true), vec2<f32>(1092f, 1242f)), vec4<f32>(298f, 1179f, -1636f, 410f), vec2<i32>(u_input.a, 47163i)), Struct_5(Struct_2(Struct_1(u_input.c.x, vec4<bool>(false, false, false, false), vec2<f32>(-1000f, 319f)), vec4<f32>(-446f, -1270f, 1656f, 270f), vec2<i32>(-1561i, u_input.a)), Struct_2(Struct_1(35918u, vec4<bool>(true, true, true, false), vec2<f32>(-1059f, -382f)), vec4<f32>(1135f, -1753f, -1544f, 926f), vec2<i32>(-8911i, 23952i)), Struct_1(0u, vec4<bool>(false, true, false, true), vec2<f32>(-731f, 379f)), Struct_1(1u, vec4<bool>(true, false, false, true), vec2<f32>(217f, -1022f))), vec2<i32>(u_input.a, 37671i))), u_input.c.x) % vec3<u32>(32u)), 1i, u_input.a, vec4<bool>(all(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, true)) & (all(vec4<bool>(false, true, false, false)) && any(vec3<bool>(false, true, false))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false)) | true, !func_3(vec3<u32>(4294967295u, u_input.b, 0u) >> (vec3<u32>(1u, 1u, u_input.b) % vec3<u32>(32u))).x));
    var var_1 = Struct_5(Struct_2(Struct_1(u_input.c.x, !select(vec4<bool>(var_0.d.x, false, var_0.d.x, true), vec4<bool>(var_0.d.x, var_0.d.x, true, true), vec4<bool>(var_0.d.x, false, false, var_0.d.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1494f, 1000f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-696f, 287f), vec2<f32>(1367f, 1000f))), vec2<bool>(var_0.d.x, false)))), vec4<f32>(1f, 1f, 1f, 1f), -var_0.a.yy), Struct_2(Struct_1(~u_input.c.x, var_0.d, _wgslsmith_div_vec2_f32(vec2<f32>(597f, -430f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-411f, 246f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(112f, -1299f, 642f, 1093f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(165f, 1245f, 531f, -669f), vec4<f32>(-826f, 1917f, 152f, -1113f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-2509f, -885f, 1460f, -1702f), vec4<f32>(-977f, -189f, 1006f, 188f)))), vec2<i32>(2147483647i, ~(i32(-1i) * -30156i))), Struct_1(45840u, var_0.d, vec2<f32>(_wgslsmith_div_f32(1563f, 247f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1296f))))), Struct_1(u_input.b, select(vec4<bool>(true, select(var_0.d.x, true, var_0.d.x), var_0.d.x == var_0.d.x, true), !vec4<bool>(var_0.d.x, var_0.d.x, false, true), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-261f, -1920f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1000f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(-654f, 1022f), vec2<f32>(-1310f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-375f, -1109f) + vec2<f32>(113f, -908f)))))));
    var var_2 = Struct_1(~(~abs(~23334u)), !(!(!(!var_0.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.c.x, var_1.c.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(1862f - var_1.c.c.x), _wgslsmith_f_op_f32(floor(-698f))))));
    global2 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 4>();
    let var_3 = _wgslsmith_mod_vec3_i32(-vec3<i32>(5532i, var_0.c, ~_wgslsmith_add_i32(var_1.b.c.x, 0i)), ~_wgslsmith_mult_vec3_i32(reverseBits(var_0.a), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 0i, 2147483647i), var_0.a), vec3<i32>(u_input.a, var_0.b, 1i) & var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.b.yxy, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(-1482f - -1000f)), 424f) * _wgslsmith_f_op_f32(var_2.c.x + -1685f)), ~reverseBits(vec2<i32>(var_0.b >> (var_2.a % 32u), min(var_3.x, var_0.a.x))), var_1.a.b.zwx, (_wgslsmith_mult_vec2_i32(var_0.a.xz, var_3.xz) >> (~vec2<u32>(40261u, 35618u) % vec2<u32>(32u))) << (abs(countOneBits(~vec2<u32>(var_2.a, 1u))) % vec2<u32>(32u)));
}

