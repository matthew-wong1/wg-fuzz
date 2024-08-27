struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32) -> vec3<u32> {
    let var_0 = ~u_input.b.x;
    let var_1 = Struct_2(Struct_1(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), all(vec4<bool>(true, true, true, false))), vec2<bool>(true, false), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(true, 18677i == u_input.a.x), var_0), Struct_1(select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true), arg_0 <= 1330f), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(_wgslsmith_f_op_f32(arg_0 * 259f) > _wgslsmith_f_op_f32(-arg_0), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)))), _wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x ^ (u_input.b.x | u_input.b.x), firstLeadingBit(~51620u))), u_input.a.x != -1i, Struct_1(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, any(vec2<bool>(true, false)) | true), var_0));
    var var_2 = vec2<bool>((arg_0 < 1801f) || true, !(u_input.b.x < ~countOneBits(0u)));
    let var_3 = countOneBits(~var_1.b.c) >> (0u % 32u);
    var var_4 = 1i;
    return max(vec3<u32>(u_input.b.x, u_input.b.x, ~u_input.b.x), ~reverseBits(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(0u, var_1.b.c, 15745u)), ~vec3<u32>(var_3, u_input.b.x, 17266u))));
}

fn func_2() -> vec2<bool> {
    var var_0 = vec3<u32>(_wgslsmith_sub_u32(~u_input.b.x, u_input.b.x), u_input.b.x, u_input.b.x);
    let var_1 = true;
    let var_2 = Struct_1(vec2<bool>(true, _wgslsmith_add_u32(14799u, u_input.b.x | u_input.b.x) < _wgslsmith_mod_u32(4294967295u, var_0.x)), !vec2<bool>(~(-15328i) >= -u_input.a.x, select(!var_1, true, all(vec3<bool>(true, var_1, true)))), ~0u);
    var_0 = func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2554f))));
    var_0 = abs(((~vec3<u32>(10139u, 0u, 36378u) | firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, var_2.c))) & _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, 3175u, var_0.x), vec3<u32>(4294967295u, 41191u, var_2.c))) ^ _wgslsmith_mod_vec3_u32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -895f)), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 1u), vec3<u32>(4294967295u, 24161u, var_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.x, 0u), vec3<u32>(1u, u_input.b.x, 24978u)))));
    return select(var_2.a, var_2.a, select(vec2<bool>(var_1, select(all(vec2<bool>(true, false)), true, any(var_2.b))), !vec2<bool>(true, true && var_2.b.x), all(!vec4<bool>(var_2.a.x, var_1, true, var_1)) || false));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = Struct_1(vec2<bool>(true, true), func_2(), ~86401u);
    var var_1 = Struct_2(arg_1, arg_1, any(vec4<bool>(!(false || var_0.b.x), any(vec3<bool>(arg_0, var_0.a.x, false)), !any(vec3<bool>(var_0.a.x, true, false)), arg_0)), arg_1);
    let var_2 = true;
    return arg_1;
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(~(-u_input.a.x), ~_wgslsmith_dot_vec3_i32(u_input.a.wyw, abs(u_input.a.xxy))), 26555i);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(975f, -697f, -1000f, 2127f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1011f, -1959f, -935f, -357f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-735f, 1601f, 1117f, 978f)))), vec4<bool>(false, 9934u >= arg_0.c, true, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(524f, 1088f, -1894f, -988f) * vec4<f32>(2559f, 577f, -666f, -639f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-512f, -361f, 1801f, 374f), vec4<f32>(-2153f, -1324f, 1667f, -2027f))) - _wgslsmith_div_vec4_f32(vec4<f32>(657f, -414f, 888f, 1000f), vec4<f32>(-376f, 1284f, 1134f, 1000f))))));
    var var_2 = Struct_2(Struct_1(func_2(), select(select(select(vec2<bool>(arg_0.a.x, false), vec2<bool>(false, false), arg_0.a.x), vec2<bool>(arg_0.b.x, false), true), vec2<bool>(true, true), select(false, false, false) && any(vec3<bool>(arg_0.a.x, arg_0.b.x, arg_0.a.x))), arg_0.c), func_1(arg_0.b.x, arg_0), select(any(vec4<bool>(any(vec2<bool>(false, arg_0.a.x)), true, true, false)), !(!select(true, false, false)), true), Struct_1(!vec2<bool>(any(vec4<bool>(true, arg_0.b.x, false, true)), true), vec2<bool>(!(!arg_0.a.x), true), countOneBits(1u)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.zzw) * var_1.xzw))), var_1.yzx, !vec3<bool>(true, func_1(any(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false), vec2<bool>(true, arg_0.b.x), var_2.d.c)).a.x, var_2.b.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_1(true, Struct_1(vec2<bool>(false, false), vec2<bool>(true, true), u_input.b.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(658f, 2617f, 694f) * vec3<f32>(-263f, 2674f, 1000f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1006f, 545f, -1000f), vec3<f32>(1828f, 1481f, -1261f), false))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(203f, -338f, -149f), vec3<f32>(-1200f, 1940f, -274f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-542f))), 967f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) - _wgslsmith_div_f32(-1458f, 580f))))));
    let var_1 = Struct_2(func_1(true, func_1(u_input.a.x <= _wgslsmith_div_i32(u_input.a.x, 0i), Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)))), Struct_1(func_1(true, func_1(true, Struct_1(vec2<bool>(false, true), vec2<bool>(true, true), 3100u))).a, func_2(), 1u), !all(vec2<bool>(false, false)) || any(func_1(true, func_1(false, Struct_1(vec2<bool>(false, true), vec2<bool>(false, false), 20078u))).a), Struct_1(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), func_1(any(vec4<bool>(true, true, true, true)), Struct_1(select(vec2<bool>(true, false), vec2<bool>(true, true), false), func_1(true, Struct_1(vec2<bool>(true, false), vec2<bool>(false, false), 4294967295u)).b, ~u_input.b.x)).a, 11489u));
    let var_2 = u_input.a.x;
    var var_3 = !(!select(vec4<bool>(var_0.x == var_0.x, true, 214f == var_0.x, func_2().x), vec4<bool>(var_1.a.a.x, var_1.c != true, !var_1.b.b.x, !var_1.a.b.x), !select(vec4<bool>(var_1.a.b.x, var_1.c, var_1.d.b.x, false), vec4<bool>(true, false, var_1.a.b.x, true), vec4<bool>(true, false, false, false))));
    var_0 = _wgslsmith_f_op_vec3_f32(func_4(var_1.b));
    var var_4 = -3382i;
    let var_5 = select(select(vec4<bool>(!(!var_1.a.a.x), var_3.x || false, var_1.a.a.x, !(!var_3.x)), vec4<bool>(var_1.d.b.x, any(select(var_1.a.a, var_1.d.a, vec2<bool>(false, false))), var_2 >= ~var_2, !var_1.b.a.x), !(!all(var_1.d.b))), vec4<bool>(any(select(select(vec3<bool>(var_1.a.b.x, false, var_3.x), var_3.yyw, true), !vec3<bool>(false, true, var_1.d.b.x), true)), any(!(!vec3<bool>(false, var_1.c, var_3.x))), !func_2().x, true), !all(var_1.a.a));
    var var_6 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-176f, var_0.x, -735f, 790f)));
    let var_7 = 98355i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy, vec3<i32>(var_7, -23580i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, var_2, u_input.a.x), vec4<i32>(var_2, u_input.a.x, 28976i, -26458i)), reverseBits(var_7), u_input.a.x, var_2), abs(-vec4<i32>(var_7, -45535i, var_2, var_7)))), -u_input.a, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(36918u, u_input.b.x, var_1.a.c, 32354u), vec4<u32>(21317u, u_input.b.x, var_1.b.c, var_1.d.c)), select(vec4<u32>(var_1.a.c, 9577u, 0u, var_1.d.c), vec4<u32>(var_1.a.c, 4294967295u, u_input.b.x, var_1.d.c), vec4<bool>(var_3.x, var_1.d.a.x, var_3.x, false))) ^ abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 21804u, var_1.b.c, 41529u), vec4<u32>(var_1.a.c, var_1.d.c, u_input.b.x, 82556u))), _wgslsmith_add_vec4_u32(select(countOneBits(vec4<u32>(u_input.b.x, var_1.a.c, 4294967295u, var_1.d.c)), ~vec4<u32>(31584u, 29222u, 38818u, u_input.b.x), true), select(countOneBits(vec4<u32>(var_1.d.c, 4294967295u, 112801u, 4294967295u)), vec4<u32>(var_1.d.c, u_input.b.x, 12228u, u_input.b.x), vec4<bool>(true, var_5.x, var_5.x, true)))));
}

