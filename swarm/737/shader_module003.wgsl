struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<i32, 17>;

var<private> global2: Struct_1 = Struct_1(-653f, vec4<i32>(-8262i, -38681i, -30738i, 2147483647i), vec2<f32>(614f, 975f), vec2<i32>(0i, 78584i), vec2<i32>(-9162i, -10805i));

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    global0 = 0i;
    global3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -240f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.e.c.x)) * global3.x)), global3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.c.x), -1022f)), _wgslsmith_f_op_f32(max(668f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * -1000f) * -1240f))));
    let var_0 = arg_0.e;
    global0 = max(u_input.a, -_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.d.x, -51907i), _wgslsmith_clamp_i32(-1515i, arg_0.d.e.x, -2147483647i), ~1i)) ^ _wgslsmith_add_i32(max(-arg_0.e.e.x, 15142i), 320i);
    var var_1 = !(!vec3<bool>(_wgslsmith_f_op_f32(sign(1456f)) >= _wgslsmith_f_op_f32(sign(146f)), false, arg_0.a >= _wgslsmith_sub_u32(arg_0.b, arg_0.b)));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(453f, 1558f)) - _wgslsmith_div_f32(-569f, 1752f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x))), 1446f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global3.wyx)), _wgslsmith_f_op_vec3_f32(round(global3.zzw))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>) -> vec4<f32> {
    global2 = Struct_1(global2.c.x, max(select(~_wgslsmith_add_vec4_i32(vec4<i32>(-4556i, 10629i, global1[_wgslsmith_index_u32(22822u, 17u)], global1[_wgslsmith_index_u32(35456u, 17u)]), global2.b), _wgslsmith_div_vec4_i32(vec4<i32>(global2.d.x, -43394i, 1i, 2147483647i), global2.b) | global2.b, vec4<bool>(!arg_0.x, arg_0.x, true, true)), -global2.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.xx * vec2<f32>(global2.c.x, -2334f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -1391f))) - _wgslsmith_f_op_vec3_f32(func_3(Struct_3(1u, 1u, global3.wy, Struct_1(625f, vec4<i32>(-3620i, 41781i, global2.d.x, u_input.a), vec2<f32>(-1090f, -1000f), global2.e, global2.e), Struct_1(global3.x, global2.b, arg_1.xy, global2.d, vec2<i32>(-30595i, -5568i))))).yy) * arg_1.yz), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -8360i), global2.e, -vec2<i32>(_wgslsmith_dot_vec4_i32(global2.b, vec4<i32>(global1[_wgslsmith_index_u32(9358u, 17u)], 0i, global1[_wgslsmith_index_u32(66927u, 17u)], 7431i)), -2147483647i | global1[_wgslsmith_index_u32(13727u, 17u)])), vec2<i32>(-u_input.a, abs(2147483647i)));
    let var_0 = Struct_3(_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(1u, 1u, 1u)), ~(~(~vec3<u32>(27922u, 1u, 4294967295u)))), ~(~1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.c * vec2<f32>(arg_1.x, global2.c.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 538f) * _wgslsmith_f_op_f32(trunc(340f))), ~firstLeadingBit(global2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -952f) * vec2<f32>(1f, 1f))), vec2<i32>(-41701i, countOneBits(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(23346u, 17u)]))), max(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 0i), max(global2.b.wz, vec2<i32>(13315i, global2.b.x))), global2.e)), Struct_1(-1705f, vec4<i32>(~39942i, i32(-1i) * -36797i, 1i, u_input.a) | global2.b, _wgslsmith_f_op_vec2_f32(round(arg_1.xy)), global2.b.xx, countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, global2.b.x), ~vec2<i32>(0i, 1i)))));
    global1 = array<i32, 17>();
    let var_1 = global2.a;
    global1 = array<i32, 17>();
    return vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.e.c.x))) * _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(-1888f * -2009f), -1843f, var_0.c.x);
}

fn func_2(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = -1774f;
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -653f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + arg_0.x), _wgslsmith_f_op_f32(min(global3.x, global2.c.x)))))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(4294967295u, 4294967295u, global2.c, Struct_1(global3.x, global2.b, vec2<f32>(-2490f, 108f), global2.b.xx, vec2<i32>(1i, global2.e.x)), Struct_1(1682f, vec4<i32>(-55697i, global1[_wgslsmith_index_u32(4294967295u, 17u)], -3357i, u_input.a), global2.c, global2.b.zz, vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(41634u, 17u)])))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(vec3<bool>(true, true, true), global3.wyy)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(742f, global3.x, -1356f, arg_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 168f, -250f, 2641f) * vec4<f32>(-204f, global3.x, 1975f, -215f)))))));
    return _wgslsmith_div_vec4_i32(vec4<i32>(5027i, global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u), 1u), 17u)], global1[_wgslsmith_index_u32(0u, 17u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 17u)], u_input.a), global2.e) | abs(global2.e.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, firstTrailingBit(reverseBits(global2.d.x)), _wgslsmith_clamp_i32(global2.e.x >> (9866u % 32u), _wgslsmith_mod_i32(-2147483647i, -1i), global1[_wgslsmith_index_u32(1u, 17u)] | 16190i), -1i), global2.b, abs(-vec4<i32>(global1[_wgslsmith_index_u32(35265u, 17u)], global2.b.x, 45001i, 7597i))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    return Struct_2(Struct_1(-671f, _wgslsmith_sub_vec4_i32(func_2(global3.xx), -global2.b | global2.b), _wgslsmith_f_op_vec2_f32(-global2.c), vec2<i32>(firstLeadingBit(global1[_wgslsmith_index_u32(77545u, 17u)]), global1[_wgslsmith_index_u32(~(~0u), 17u)]), arg_2), (global2.b | ~vec4<i32>(u_input.a, arg_1, 20795i, arg_1)) ^ global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.zyw;
    global1 = array<i32, 17>();
    let var_1 = global2.e.x;
    var var_2 = func_1(_wgslsmith_f_op_f32(ceil(-326f)), countOneBits(1i), -_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(~11789u, 17u)]), _wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(20457u, 17u)], -2147483647i), _wgslsmith_mult_vec2_i32(global2.e, global2.e))));
    let var_3 = !(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(false, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)));
    var var_4 = Struct_3(abs(1u), _wgslsmith_mult_u32(firstTrailingBit(44657u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 25920u, 1u), vec4<u32>(48442u, 1u, 23296u, 23186u))) & 61111u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(4294967295u, 20685u, global3.wy, Struct_1(global3.x, var_2.a.b, vec2<f32>(467f, 897f), var_2.a.e, var_2.b.wy), var_2.a))).x, _wgslsmith_f_op_f32(-194f * -864f))), -1231f)), func_1(var_0.x, -57657i, max(vec2<i32>(global2.e.x, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(1u, 17u)], u_input.a)), firstTrailingBit(-global2.e))).a, func_1(_wgslsmith_f_op_f32(f32(-1f) * -751f), global2.b.x, global2.e).a);
    var var_5 = ~7494u;
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), -_wgslsmith_div_vec4_i32(var_2.b, vec4<i32>(var_2.b.x, u_input.a, global2.b.x, i32(-1i) * -17518i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.c.x), -1529f)) + -2839f));
}

