struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: i32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f - arg_1.b.x)) * 113f) * arg_1.b.x) - 514f);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(636f - _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_4(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(750f, 774f, -1615f, -1971f)), vec2<u32>(u_input.a.x, 0u) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), Struct_1(u_input.a.x)), -33009i))), Struct_1(23152u), _wgslsmith_mod_i32(countOneBits(16223i), 1i), Struct_1(u_input.a.x));
    var var_1 = firstLeadingBit(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.d.a, 22831u), var_0.d.a)) > 5978u;
    var var_2 = Struct_4(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(~u_input.a.wzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.a, 29682u, 57027u), u_input.a.xxw, vec3<u32>(u_input.a.x, var_0.d.a, var_0.b.a)))), _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(21848u), var_0.b.a), ~(~u_input.a.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-221f, var_0.a, 1135f, var_0.a)))))), max(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(20638u, 138490u)), _wgslsmith_clamp_vec2_u32(u_input.a.xy, max(u_input.a.wz, u_input.a.zw), _wgslsmith_mod_vec2_u32(u_input.a.xz, u_input.a.ww))), vec2<u32>(45055u, _wgslsmith_mod_u32(16776u, _wgslsmith_dot_vec3_u32(u_input.a.xyz, u_input.a.xxw)))), Struct_1(_wgslsmith_sub_u32(79168u, 1u ^ u_input.a.x) & (~var_0.d.a ^ ~1u)));
    var var_3 = vec4<bool>(false, false, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, any(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, false))), vec4<bool>(true, select(false, false, true), any(vec4<bool>(true, false, false, true)), true))), all(vec4<bool>(false, var_0.a == 838f, any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)))));
    let var_4 = !any(!(!vec4<bool>(true, true, var_3.x, var_3.x)));
    return var_0.d;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_4 {
    let var_0 = Struct_3(568f, arg_2, -_wgslsmith_dot_vec2_i32(vec2<i32>(-arg_0.x, reverseBits(arg_0.x)), vec2<i32>(~4551i, reverseBits(arg_0.x))), Struct_1(arg_2.a >> (u_input.a.x % 32u)));
    let var_1 = Struct_2(Struct_1(35473u), arg_0.yzz, var_0.a);
    let var_2 = abs(~firstTrailingBit(_wgslsmith_mod_u32(72896u, u_input.a.x) & u_input.a.x));
    let var_3 = var_1.a;
    var var_4 = ~(~vec4<u32>(var_3.a, u_input.a.x, var_1.a.a, arg_2.a) & max(vec4<u32>(var_3.a, func_2().a, ~var_0.d.a, 11275u), vec4<u32>(u_input.a.x, var_3.a, _wgslsmith_clamp_u32(var_2, u_input.a.x, 75089u), ~44271u)));
    return Struct_4(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, -235f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c - 269f), -1854f)))), u_input.a.yz, Struct_1(arg_2.a));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = vec2<bool>(any(vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_2.c), vec2<i32>(arg_2.c, 14517i)) == (1i << (arg_2.b.a % 32u)), all(vec3<bool>(true, false, false)), !(arg_0.b.x >= -309f), true)), true);
    let var_1 = -reverseBits(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(arg_2.c, arg_2.c)), -vec2<i32>(0i, arg_2.c))) ^ vec2<i32>(-arg_2.c ^ ~_wgslsmith_mult_i32(arg_2.c, arg_2.c), 48990i);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(arg_0.b.xww, arg_0.b.wzw))) * vec3<f32>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(ceil(1448f)))) + vec3<f32>(-968f, arg_0.b.x, -1000f)) + func_4(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_2.c, 1i, arg_2.c), vec4<i32>(var_1.x, arg_2.c, arg_2.c, arg_2.c))), _wgslsmith_f_op_f32(ceil(712f)), func_4(countOneBits(countOneBits(vec4<i32>(arg_2.c, var_1.x, arg_2.c, 0i))), -278f, Struct_1(4294967295u)).d).b.xwx);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(-2385f - -1468f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.yz)));
    var var_4 = (u_input.a.x & abs(max(~0u, 11361u))) > ~arg_0.c.x;
    return any(select(vec3<bool>(var_0.x, !var_0.x, all(select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, true, false)))), !select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x))), !(!vec3<bool>(var_0.x, var_0.x, true))));
}

fn func_1() -> i32 {
    let var_0 = select(vec2<bool>(all(vec3<bool>(true, false, false)) && false, true), vec2<bool>(true, func_5(func_4(vec4<i32>(1i, 1i, 1i, 1i), -135f, func_2()), func_4(vec4<i32>(2147483647i, -33012i, -1i, -24593i), _wgslsmith_f_op_f32(sign(-258f)), func_2()).d, Struct_3(_wgslsmith_f_op_f32(1686f - 153f), Struct_1(u_input.a.x), -4307i, Struct_1(u_input.a.x)))), vec2<bool>(any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), false)), true || all(vec4<bool>(true, true, true, true))));
    let var_1 = func_4(-_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, -35436i), vec4<i32>(5857i, -1i, 2147483647i, 0i), vec4<i32>(0i, 43061i, -21394i, -1i)), vec4<i32>(1i, 74198i, 2147483647i, 59003i)), vec4<i32>(0i, i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 45214i, 0i), vec3<i32>(1033i, 2147483647i, -3869i)), -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(vec4<i32>(5876i, 1i, 81280i, 1i), 1000f, Struct_1(u_input.a.x)).b.x - _wgslsmith_f_op_f32(f32(-1f) * -1213f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-620f * -1097f))))) * _wgslsmith_f_op_f32(floor(822f))), func_4(~(~vec4<i32>(44278i, 26203i, 50500i, -11578i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-472f - -123f)))), func_2()).d);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b.x, var_1.b.x))), func_4(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-40123i, -10232i, 4950i, -6038i)), firstLeadingBit(vec4<i32>(2147483647i, -2147483647i, 1i, 1i))), -abs(-23165i), -31016i), _wgslsmith_f_op_f32(-684f - -1336f), var_1.d).d, 43652i, var_1.d);
    var var_3 = select(!vec4<bool>(_wgslsmith_f_op_f32(max(var_2.a, -1714f)) >= _wgslsmith_f_op_f32(func_3(var_1.b.x, Struct_4(1285u, var_1.b, u_input.a.yy, Struct_1(u_input.a.x)), var_2.c)), !(false && var_0.x), any(vec3<bool>(var_0.x, var_0.x, var_0.x)), true), !select(!select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(false, true, true, false), true), select(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false)), select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, true, false), vec4<bool>(false, true, var_0.x, var_0.x))), _wgslsmith_f_op_f32(select(846f, -428f, true)) == _wgslsmith_f_op_f32(round(var_1.b.x))), !(!(!select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, false, true), var_0.x))));
    var var_4 = _wgslsmith_f_op_vec2_f32(ceil(var_1.b.yz));
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(~(firstTrailingBit(27191i) << (u_input.a.x % 32u)), -2147483647i), 6468i);
    var_0 = 20847i;
    let var_1 = vec3<bool>(true, true, true);
    var_0 = func_1();
    let var_2 = _wgslsmith_dot_vec2_u32(firstLeadingBit(~_wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(0u, u_input.a.x)) ^ max(vec2<u32>(u_input.a.x, 0u), _wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x)))), vec2<u32>(17819u, 1u));
    var_0 = -1i | _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(~(-47640i), ~1i, _wgslsmith_div_i32(5093i, select(0i, -21266i, true)), 1i));
    var var_3 = func_4(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, 14826i, 2147483647i), vec3<i32>(6754i, 43036i, -46295i), var_1.x), countOneBits(vec3<i32>(-1i, 2147483647i, 924i))), countOneBits(_wgslsmith_mult_i32(-18243i, -14708i))), abs(abs(-37129i)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 5984i, 56034i, 56120i), vec4<i32>(20469i, 36459i, 5753i, 1i)), 9687i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -1i, -15606i, 51567i), vec4<i32>(-62783i, 19904i, -14069i, -1i), vec4<i32>(-31087i, 2147483647i, 32875i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -14149i, 33431i, 1i), vec4<i32>(2147483647i, -15378i, -7514i, 11977i)))), -2147483647i), 1587f, func_4(vec4<i32>(-10755i, i32(-1i) * -38614i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, -38818i, 1i), vec3<i32>(40965i, 1i, -10038i), var_1), vec3<i32>(1i, 1i, 1i)), select(_wgslsmith_div_i32(-10969i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 19797i, -2147483647i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 13591i)), !var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(492f - func_4(vec4<i32>(14307i, 2147483647i, -2147483647i, 2147483647i), 1000f, Struct_1(105766u)).b.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(167f, 226f))), Struct_1(~23578u)).d);
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1209f, var_3.b.x))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.b.x, -1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-715f, var_3.b.x, var_3.b.x, 1456f)) - var_3.b)), 0i, _wgslsmith_f_op_f32(f32(-1f) * -115f), vec3<i32>(countOneBits(29307i), -2147483647i, _wgslsmith_clamp_i32(abs(min(26364i, -2147483647i)), abs(abs(-2147483647i)), min(1i, 14235i))));
}

