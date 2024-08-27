struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 21>;

var<private> global1: array<vec4<f32>, 32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_2(reverseBits(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 11275u), global0[_wgslsmith_index_u32(28503u, 21u)])), 6682u)), Struct_1(~(~vec3<i32>(1i, u_input.a, u_input.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(145f, 678f)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~24039u, 1u, countOneBits(u_input.b), 48760u), ~vec4<u32>(u_input.d, 55361u, u_input.b, 15351u) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.b, 0u, u_input.d), vec4<u32>(4294967295u, u_input.b, u_input.d, u_input.b)), ~select(vec4<u32>(u_input.b, 34467u, 4294967295u, 0u), vec4<u32>(84715u, u_input.d, u_input.b, 4294967295u), vec4<bool>(false, true, false, false))), global1[_wgslsmith_index_u32(18841u, 32u)], countOneBits(_wgslsmith_sub_u32(_wgslsmith_mod_u32(98549u, 4294967295u), 58819u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.d, 32u)] - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, 1425f, 1535f, -994f) * global1[_wgslsmith_index_u32(0u, 32u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(225f - 960f))), -395f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(671f)) - -141f) * _wgslsmith_f_op_f32(f32(-1f) * -1717f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-280f)), -1193f)) * 1000f)));
    var var_1 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, true, false))), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), !(var_0.a < var_0.b.e)), all(vec3<bool>(true, true, true))), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(all(vec3<bool>(true, true, true)), true)), !all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var_1 = select(vec2<bool>(!(!var_1.x), var_0.b.a.x < abs(var_0.b.a.x)), vec2<bool>(true, true & !(u_input.d < 27424u)), select(!vec2<bool>(true, var_1.x), !(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), var_1.x)), vec2<bool>(all(vec2<bool>(var_1.x, true)), all(!vec3<bool>(true, true, var_1.x)))));
    let var_2 = ~abs(_wgslsmith_div_i32(countOneBits(-33168i), i32(-1i) * -44365i)) > (max(~1i, -u_input.c.x) | 0i);
    global1 = array<vec4<f32>, 32>();
    return _wgslsmith_mod_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(4549i, 0i, -21762i), var_0.b.a, vec3<i32>(40856i, u_input.c.x, var_0.b.a.x)), ~var_0.b.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = true;
    var var_1 = Struct_1(min(-_wgslsmith_clamp_vec3_i32(vec3<i32>(44557i, u_input.c.x, 38403i) >> (arg_1.c.yyw % vec3<u32>(32u)), func_3(), vec3<i32>(u_input.a, -1297i, 2147483647i)), abs(abs(select(arg_1.a, vec3<i32>(-1i, 16741i, u_input.c.x), false)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1759f, -772f)) - _wgslsmith_f_op_vec2_f32(select(arg_0.b, vec2<f32>(-714f, arg_1.b.x), false)))), _wgslsmith_div_vec2_f32(arg_1.d.zy, _wgslsmith_f_op_vec2_f32(arg_1.b - arg_0.d.zx))), arg_0.c, _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(49921u, 32u)]), abs(u_input.b));
    var_0 = false;
    let var_2 = arg_0.c;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-1f));
    return !(!any(vec2<bool>(true, true)));
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<bool>) -> vec4<u32> {
    let var_0 = Struct_2(4294967295u, Struct_1(_wgslsmith_div_vec3_i32(~(~vec3<i32>(arg_0, -12892i, -29693i)), max(vec3<i32>(arg_0, 2888i, arg_0), vec3<i32>(85956i, u_input.a, arg_1.x))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1292f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(643f)), _wgslsmith_f_op_f32(max(1201f, 387f))))), ~vec4<u32>(u_input.b, _wgslsmith_mult_u32(4294967295u, 1u), 4294967295u, 39839u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(757f, 449f, -442f, -1000f)))))), ~u_input.b), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1799f - 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -2121f)) - 375f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-886f, -1273f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-643f))))), _wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1149f - -1387f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1471f - _wgslsmith_f_op_f32(step(-749f, _wgslsmith_f_op_f32(-1116f + 223f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-986f)) - 459f)) + 686f));
    global1 = array<vec4<f32>, 32>();
    let var_1 = var_0;
    let var_2 = -1696f;
    let var_3 = ~var_1.b.c;
    return ~(min(~vec4<u32>(var_0.b.c.x, var_0.b.e, var_0.a, 89355u), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.b.c, var_0.b.c), _wgslsmith_div_vec4_u32(vec4<u32>(34798u, 22273u, var_1.b.c.x, u_input.b), var_0.b.c))) >> (~(~(~var_3)) % vec4<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> i32 {
    var var_0 = Struct_1(abs(vec3<i32>(-28509i, -29446i, 1i | arg_1) >> (select(arg_3.zwz >> (vec3<u32>(1u, arg_2, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(96014u, 0u, arg_2), true) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, -1359f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 721f) - vec2<f32>(-1602f, arg_0))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(sign(arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(856f, 954f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-281f, -1182f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true))), _wgslsmith_mult_vec4_u32((~vec4<u32>(74180u, 1u, 7298u, arg_2) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 3151u, u_input.d, 0u), vec4<u32>(4294967295u, u_input.b, 42727u, u_input.d))) << (vec4<u32>(13042u, 27657u, 26944u & arg_3.x, ~arg_2) % vec4<u32>(32u)), func_4(-1i, vec2<i32>(-2711i, 2147483647i >> (arg_2 % 32u)), vec4<bool>(false, false, func_2(Struct_1(vec3<i32>(0i, arg_1, u_input.c.x), vec2<f32>(721f, 215f), arg_3, vec4<f32>(-1492f, arg_0, 1066f, -390f), 0u), Struct_1(vec3<i32>(u_input.c.x, arg_1, arg_1), vec2<f32>(488f, arg_0), vec4<u32>(6368u, u_input.b, arg_3.x, u_input.b), vec4<f32>(-1097f, arg_0, arg_0, -953f), u_input.b)), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-586f - arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(1283f - _wgslsmith_f_op_f32(trunc(-100f))), _wgslsmith_f_op_f32(-arg_0))), ~(~arg_2 | firstTrailingBit(_wgslsmith_mod_u32(u_input.d, 4294967295u))));
    var var_1 = _wgslsmith_div_vec2_i32(-(min(vec2<i32>(var_0.a.x, -2147483647i), vec2<i32>(2147483647i, -47967i)) ^ var_0.a.xy) << (vec2<u32>(var_0.e, 0u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(-(-u_input.c & vec2<i32>(-35840i, -12849i)), vec2<i32>(arg_1, max(-46588i, 1i))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = array<vec2<u32>, 21>();
    var var_1 = u_input.b;
    global0 = array<vec2<u32>, 21>();
    global1 = array<vec4<f32>, 32>();
    let var_2 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(var_0, ~_wgslsmith_sub_i32(var_0, 30902i)), var_0, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -561f) * -1019f), 2147483647i, _wgslsmith_add_u32(u_input.b, 1u), vec4<u32>(4294967295u, 0u, 79306u, u_input.d) & (vec4<u32>(52585u, 0u, u_input.b, 9753u) | vec4<u32>(u_input.d, u_input.d, 31643u, u_input.b)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(123f - -1265f), _wgslsmith_f_op_f32(sign(200f)))))), vec4<u32>(u_input.b & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.d, u_input.d) ^ vec3<u32>(42735u, u_input.b, 32443u), vec3<u32>(0u, 42880u, 15011u)), 0u, countOneBits(countOneBits(abs(u_input.b))), ~_wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(27946u, 21u)], vec2<u32>(u_input.b, u_input.d)), u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-140f)), 754f, _wgslsmith_f_op_f32(-1189f - 1292f), _wgslsmith_f_op_f32(-322f - 1213f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), ~0u);
    let var_3 = var_2.c.xxx;
    let x = u_input.a;
    s_output = StorageBuffer(~(var_2.c & abs(_wgslsmith_mod_vec4_u32(var_2.c, var_2.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(850f, var_2.d.x), var_2.b, true)))));
}

