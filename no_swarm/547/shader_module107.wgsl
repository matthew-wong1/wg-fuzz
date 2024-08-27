struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17>;

var<private> global1: array<f32, 16> = array<f32, 16>(1869f, 1000f, -971f, -1330f, -509f, 821f, 468f, -1000f, 695f, -1989f, -1354f, -1489f, 1313f, -1711f, 1462f, 1352f);

var<private> global2: array<f32, 16>;

var<private> global3: array<Struct_1, 3>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(vec2<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 4446i), vec3<i32>(arg_3.a.x, -1i, arg_3.d)), -37888i) & _wgslsmith_dot_vec2_i32(firstLeadingBit(arg_0.a), ~u_input.a), u_input.c), true, arg_3.c, max(reverseBits(~_wgslsmith_dot_vec4_i32(vec4<i32>(26161i, 12670i, 0i, arg_0.a.x), vec4<i32>(0i, arg_0.d, arg_0.d, 13272i))), _wgslsmith_mult_i32(~(-34574i | u_input.c), i32(-1i) * -57066i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.e))));
    global1 = array<f32, 16>();
    var var_1 = arg_0.e == global2[_wgslsmith_index_u32(~max(u_input.e.x, ~1u) & ~0u, 16u)];
    var var_2 = u_input.e.zy;
    let var_3 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(4294967295u, firstTrailingBit(u_input.d)), var_2.x, all(!vec4<bool>(arg_3.b, arg_3.c.x, var_0.c.x, false))), 16u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(0u, 16u)], -1000f))))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~u_input.e.x, 16u)]))));
    return _wgslsmith_add_i32(_wgslsmith_add_i32(abs(firstTrailingBit(-9962i)), arg_3.d), ~arg_3.d);
}

fn func_2() -> i32 {
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, ~u_input.b, u_input.c), vec3<i32>(19251i, u_input.c, u_input.a.x)), ~(~select(~vec4<i32>(u_input.c, -12043i, 24662i, 16492i), vec4<i32>(-2147483647i, u_input.a.x, -54444i, u_input.b), vec4<bool>(true, true, true, true))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, 0i, 11750i), vec3<i32>(2147483647i, u_input.a.x, u_input.c) >> (u_input.e % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.b, u_input.b, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-5172i, u_input.a.x, u_input.b), vec3<i32>(33223i, 0i, u_input.b), vec3<i32>(1i, -61681i, u_input.b)), true), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, -16372i), vec3<i32>(1i, u_input.c, 2147483647i))), abs(~vec3<i32>(u_input.c, u_input.a.x, u_input.b)) | ~vec3<i32>(-32748i, -10523i, -1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 16u)], 1166f, 515f, -1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 16u)], 744f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27081u, 17u)], 16u)], 981f)))))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.e.xz, _wgslsmith_add_vec2_u32(vec2<u32>(29158u, 56167u), vec2<u32>(66640u, u_input.e.x))), u_input.e.yy), 3u)]);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(0u, u_input.e.x, 1u)), abs(u_input.d)) & 57356u, 16u)] - 2372f));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 65063u), 17u)], 17u)], ~u_input.e.x, true), abs(u_input.d), 1u ^ reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 17u)], 17u)]), 0u), vec4<u32>(~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(46804u, 17u)], u_input.e.x), u_input.e.x, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_div_u32(0u, 67613u)), ~13663u), ~vec4<u32>(select(global0[_wgslsmith_index_u32(4294967295u, 17u)], 4294967295u, false), global0[_wgslsmith_index_u32(u_input.e.x & 27381u, 17u)], global0[_wgslsmith_index_u32(1405u & global0[_wgslsmith_index_u32(1u, 17u)], 17u)], ~32122u)), countOneBits(~abs(vec4<u32>(90622u, 31888u, 9926u, 0u) << (vec4<u32>(4106u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27155u, 17u)], 17u)], 17u)], 0u, global0[_wgslsmith_index_u32(8551u, 17u)]) % vec4<u32>(32u))))), 16u)];
    var_0 = Struct_2(u_input.a.x, vec4<i32>(abs(var_0.c.x) ^ 12826i, func_3(var_0.e, true, 46023u, Struct_1(-vec2<i32>(var_0.e.d, -49244i), var_0.e.b, vec2<bool>(var_0.e.c.x, true), -29154i, -1890f)), 16314i | reverseBits(var_0.b.x ^ -2088i), select(u_input.a.x & ~18843i, _wgslsmith_add_i32(~(-1i), var_0.c.x), all(select(vec3<bool>(var_0.e.b, false, false), vec3<bool>(true, var_0.e.b, var_0.e.c.x), vec3<bool>(false, var_0.e.c.x, true))))), vec3<i32>(_wgslsmith_clamp_i32(-(~25381i), _wgslsmith_mult_i32(var_0.a, -16661i), _wgslsmith_mult_i32(-var_0.a, select(var_0.c.x, -35198i, var_0.e.c.x))), u_input.c, 2147483647i), var_0.d, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.e.xx, ~vec2<u32>(4294967295u, 37551u)), abs(abs(u_input.d))), vec2<u32>(u_input.e.x, ~(u_input.e.x & global0[_wgslsmith_index_u32(u_input.e.x, 17u)]))), 17u)], 3u)]);
    global2 = array<f32, 16>();
    return -(~abs(u_input.a.x));
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: bool) -> Struct_2 {
    var var_0 = !(!vec2<bool>(arg_2, !arg_2 && arg_2));
    global2 = array<f32, 16>();
    var var_1 = _wgslsmith_clamp_i32(~(-2147483647i), u_input.b, ~_wgslsmith_mod_i32(func_2(), _wgslsmith_add_i32(u_input.c, u_input.a.x << (u_input.e.x % 32u))));
    var var_2 = u_input.d;
    let var_3 = Struct_1(u_input.a, all(!(!vec4<bool>(true, var_0.x, false, true))) == (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.e.x, 16u)], 237f)))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(227f, -1000f)) + _wgslsmith_f_op_f32(ceil(-1000f)))), select(!(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, var_0.x), var_0.x)), vec2<bool>(false, !(-1i >= u_input.b)), !vec2<bool>(var_0.x, var_0.x)), _wgslsmith_mult_i32(abs(2147483647i), 25704i & u_input.a.x), _wgslsmith_f_op_f32(-arg_0));
    return Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), _wgslsmith_clamp_vec2_i32(abs(u_input.a), vec2<i32>(u_input.a.x, 53021i), -vec2<i32>(-34376i, 0i))) ^ -2147483647i, abs(-max(vec4<i32>(var_3.a.x, u_input.c, u_input.c, var_3.d), vec4<i32>(u_input.c, u_input.a.x, -2147483647i, -1i))), select(abs(reverseBits(vec3<i32>(-47713i, u_input.c, -12945i))), ~vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(var_3.d, var_3.d), 0i), select(select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_3.c.x, var_3.c.x, var_3.b), vec3<bool>(var_0.x, var_0.x, var_3.c.x)), !vec3<bool>(var_0.x, arg_2, var_3.c.x), select(vec3<bool>(arg_2, true, true), vec3<bool>(var_0.x, false, var_3.c.x), arg_2)), select(vec3<bool>(true, arg_2, var_3.b), select(vec3<bool>(arg_2, var_3.c.x, var_0.x), vec3<bool>(true, false, true), vec3<bool>(true, false, var_0.x)), select(vec3<bool>(var_3.c.x, var_0.x, arg_2), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(false, arg_2, false))), var_0.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(325f * 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(trunc(110f))), _wgslsmith_f_op_f32(min(2048f, 200f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e))))), global3[_wgslsmith_index_u32(0u, 3u)]);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    var var_0 = ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.d, reverseBits(u_input.e.x)), vec2<u32>(_wgslsmith_div_u32(~arg_0, ~0u), select(1u, 23505u, true)));
    var_0 = firstTrailingBit(_wgslsmith_mod_vec2_u32(min(vec2<u32>(30021u, u_input.e.x) & (vec2<u32>(u_input.e.x, 8626u) >> (vec2<u32>(global0[_wgslsmith_index_u32(var_0.x, 17u)], global0[_wgslsmith_index_u32(20404u, 17u)]) % vec2<u32>(32u))), countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(arg_0, 17u)], var_0.x)) | u_input.e.xz), (vec2<u32>(53596u, global0[_wgslsmith_index_u32(var_0.x, 17u)]) >> (u_input.e.yx % vec2<u32>(32u))) >> (max(u_input.e.zz, vec2<u32>(66856u, u_input.e.x)) % vec2<u32>(32u))));
    global1 = array<f32, 16>();
    var var_1 = arg_3.d.xz;
    global0 = array<u32, 17>();
    return ~(~14994u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~func_4(38161u >> (0u % 32u), -vec4<i32>(u_input.b, 2147483647i, 2147483647i, -2147483647i), Struct_1(u_input.a, true, vec2<bool>(false, false), 49884i, 1995f), func_1(-1720f, vec4<u32>(global0[_wgslsmith_index_u32(24516u, 17u)], global0[_wgslsmith_index_u32(17998u, 17u)], 1u, u_input.d), false)), 1u, u_input.e.x, abs(85186u)), ~vec4<u32>(u_input.d, global0[_wgslsmith_index_u32(abs(~16171u), 17u)], 4294967295u, ~u_input.e.x));
    global4 = ~_wgslsmith_dot_vec2_u32(var_0.wz, ~min(~var_0.xx, _wgslsmith_clamp_vec2_u32(var_0.zw, vec2<u32>(26606u, u_input.e.x), var_0.yz)));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(7566u, 16u)], -211f)) * global2[_wgslsmith_index_u32(1u, 16u)]) * -162f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2077f)), global2[_wgslsmith_index_u32(1620u & u_input.d, 16u)], 1065f, 193f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(868f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d & 13189u, 16u)]), global1[_wgslsmith_index_u32(u_input.d, 16u)], _wgslsmith_f_op_f32(var_2 * global1[_wgslsmith_index_u32(abs(36778u), 16u)]))));
    global2 = array<f32, 16>();
    global0 = array<u32, 17>();
    global1 = array<f32, 16>();
    let var_4 = vec2<bool>(u_input.c >= (_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 0i, -1i), vec4<i32>(-18100i, -2147483647i, u_input.b, u_input.c))) ^ 0i), !(!all(vec4<bool>(false, false, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~97972u, 16u)]))), var_0, var_4.x).e.a, _wgslsmith_mod_vec2_u32(max(vec2<u32>(firstTrailingBit(u_input.e.x), ~1u), min(_wgslsmith_div_vec2_u32(var_0.xx, var_1.zz), ~vec2<u32>(0u, var_1.x))), ~vec2<u32>(_wgslsmith_clamp_u32(var_1.x, 15545u, var_0.x), firstTrailingBit(u_input.d))), ~(~(~53225u)) | countOneBits(var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1177f, global2[_wgslsmith_index_u32(var_1.x, 16u)], 1118f, var_2), vec4<f32>(global2[_wgslsmith_index_u32(21001u, 16u)], global1[_wgslsmith_index_u32(var_0.x, 16u)], 1000f, 1243f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(151127u, 16u)], 278f, global1[_wgslsmith_index_u32(var_1.x, 16u)], global2[_wgslsmith_index_u32(0u, 16u)]) + vec4<f32>(global1[_wgslsmith_index_u32(var_1.x, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], -967f, global2[_wgslsmith_index_u32(13609u, 16u)]))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1024f, var_3.x, -1453f, -543f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 16u)], var_3.x, -241f, 604f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-870f, 298f, var_3.x, var_2))))))));
}

