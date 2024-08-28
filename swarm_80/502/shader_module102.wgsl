struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-606f, arg_0.x, arg_0.x, -1422f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, 434f, arg_0.x, arg_0.x)) * vec4<f32>(-291f, -742f, arg_0.x, 1332f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1003f, 440f, 948f) * vec4<f32>(arg_0.x, 431f, -111f, 206f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.x, arg_0.x, 1495f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, 1133f, arg_0.x)))), vec4<f32>(_wgslsmith_div_f32(arg_0.x, 313f), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))))), vec3<i32>(-2147483647i, u_input.c.x, u_input.a.x), u_input.c, 44034u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1783f, -1000f, arg_0.x, arg_0.x) + vec4<f32>(-523f, arg_0.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -235f, arg_0.x) - vec4<f32>(1000f, -1211f, arg_0.x, arg_0.x)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_0.e * vec4<f32>(_wgslsmith_f_op_f32(floor(335f)), _wgslsmith_f_op_f32(ceil(-748f)), _wgslsmith_f_op_f32(-2367f - arg_0.x), _wgslsmith_f_op_f32(sign(1025f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1922f, -211f, _wgslsmith_div_f32(var_0.a.x, arg_0.x), arg_0.x)), true)), u_input.d.yxz, ~u_input.d.yw, 1u, var_0.e);
    var var_1 = Struct_4(vec2<u32>(u_input.e & 4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.wxw, firstTrailingBit(vec3<u32>(u_input.e, 51124u, var_0.d)))), ~_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(100163u, 1u, 4294967295u), vec3<u32>(23263u, var_0.d, 4294967295u))), vec3<u32>(var_0.d, var_0.d, 1u)));
    let var_2 = -552f;
    var var_3 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), select(vec3<bool>(true, true, any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true)))), !select(vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, true, true), true | any(vec2<bool>(false, false))), select(select(vec3<bool>(all(vec2<bool>(false, true)), false, all(vec2<bool>(false, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(2063u <= var_1.b.x, true, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), 1u > var_0.d), select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), any(vec3<bool>(true, true, true)))), vec3<bool>(false, all(vec4<bool>(true, true, true, true)), false)));
    return !(!(!(!select(vec3<bool>(true, true, var_3.x), vec3<bool>(false, true, true), vec3<bool>(var_3.x, var_3.x, var_3.x)))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = select(!(!vec3<bool>(true, u_input.c.x <= -1i, true)), select(!vec3<bool>(any(vec2<bool>(false, true)), false, any(vec2<bool>(true, false))), func_3(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1047f, 923f, -1000f), vec3<f32>(-899f, -1000f, 345f)))), true), true);
    let var_1 = u_input.c.x << (37991u % 32u);
    var var_2 = func_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(106f)), -527f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)), _wgslsmith_f_op_f32(sign(1092f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-461f, -996f, 774f), vec3<f32>(439f, -545f, 1694f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-659f, 1241f, 1416f) + vec3<f32>(1665f, 1000f, 1000f)))))).x;
    var var_3 = select(select(select(vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true, all(vec2<bool>(var_0.x, var_0.x)), var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, false, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, var_0.x))), !vec4<bool>(var_0.x, false, false, false)), select(select(!vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, false), select(vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, var_0.x, true, true), false)), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), false), var_0.x), !(!vec4<bool>(var_0.x, var_0.x, false, false))), select(!vec4<bool>(var_0.x, true, any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), false), !select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, var_0.x, true, false), vec4<bool>(false, false, var_0.x, var_0.x)), vec4<bool>(true, var_0.x, var_0.x, false), var_0.x), vec4<bool>(true, var_0.x, select(var_1 <= u_input.d.x, true, all(vec2<bool>(false, var_0.x))), any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), select(select(select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x), true), !select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), var_0.x), all(!vec4<bool>(true, var_0.x, false, var_0.x))), !(!select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(false, true, var_0.x, false))), true));
    var_2 = 4294967295u >= _wgslsmith_clamp_u32(u_input.e, u_input.e, _wgslsmith_mult_u32(1u << (u_input.e % 32u), 4294967295u));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(839f, 187f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1464f, -1102f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * -956f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(957f)) + _wgslsmith_f_op_f32(-132f - -1000f)))), vec3<i32>(-1i) * -(firstTrailingBit(u_input.d.zww) >> (vec3<u32>(arg_0.x, arg_0.x, u_input.e) % vec3<u32>(32u))), countOneBits(vec2<i32>(-8405i, var_1)), ~_wgslsmith_mod_u32(22721u, 1u), vec4<f32>(_wgslsmith_f_op_f32(trunc(-276f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(f32(-1f) * -1202f)), -1193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -746f)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(298f, 1043f) * _wgslsmith_f_op_f32(trunc(-206f))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(func_2(_wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(u_input.b, u_input.b)), ~(u_input.b << (vec4<u32>(arg_0.d, arg_1.x, 1u, 4294967295u) % vec4<u32>(32u))))), _wgslsmith_mult_vec3_i32(abs(arg_0.b | arg_0.a.b) & vec3<i32>(u_input.c.x, min(-22910i, arg_0.a.b.x), 1i), _wgslsmith_sub_vec3_i32(u_input.a.ywx, -abs(vec3<i32>(u_input.a.x, arg_0.b.x, arg_2.x)))), vec4<bool>(-993f < _wgslsmith_f_op_f32(arg_0.a.e.x - _wgslsmith_div_f32(370f, -1000f)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x * arg_0.a.e.x)) <= arg_0.a.a.x, all(arg_0.c.xw)), min(74258u, arg_0.a.d) >> (u_input.b.x % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.e.x, 189f, 720f, var_0.a.e.x));
    var var_2 = Struct_4(u_input.b.wy, u_input.b.zzy);
    var var_3 = _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(~15156u, 41498u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 41340u, arg_1.x)), arg_1), func_2(~countOneBits(vec4<u32>(84142u, 79058u, 23478u, var_0.d))).d));
    let var_4 = ~arg_1.x;
    return arg_0;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(arg_3.a.e, func_1(func_1(Struct_2(Struct_1(arg_1.a.a, u_input.d.xwx, u_input.c, 16081u, vec4<f32>(-965f, -1570f, arg_1.a.e.x, 1261f)), vec3<i32>(-35073i, -29942i, 2147483647i), arg_1.c, 76131u), u_input.b.www, u_input.d), u_input.b.yzx & ~u_input.b.xwy, -select(vec4<i32>(-2147483647i, 0i, 25087i, arg_1.b.x), u_input.a, vec4<bool>(arg_1.c.x, true, arg_1.c.x, false))).b, min(-max(vec2<i32>(-55363i, u_input.c.x), arg_1.b.xz), reverseBits(arg_1.b.zx)), arg_2.x, arg_1.a.e), arg_3.a.b, vec4<bool>(false == any(arg_3.c.zx), arg_1.c.x, arg_3.c.x, !(arg_3.c.x & true)), _wgslsmith_add_u32(arg_0, u_input.e >> (14777u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.a.e.x))))))) + 1f);
    var_0 = arg_3;
    var_0 = Struct_2(arg_3.a, select(arg_1.b, -arg_1.b, false & arg_3.c.x), vec4<bool>(var_0.c.x, false, !all(arg_1.c), true), ~abs(~reverseBits(0u)));
    let var_2 = func_2(max(abs(select(u_input.b, vec4<u32>(var_0.d, arg_2.x, var_0.a.d, 25253u), false) ^ vec4<u32>(4294967295u, arg_0, 4294967295u, arg_2.x)), vec4<u32>(u_input.e, ~arg_1.d, arg_3.d, select(0u ^ arg_1.a.d, 4294967295u, all(vec4<bool>(false, true, arg_1.c.x, arg_3.c.x))))));
    return vec4<bool>(false, arg_3.c.x, !any(arg_3.c), var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_4(u_input.b.x, func_1(Struct_2(Struct_1(vec4<f32>(-361f, -934f, -1214f, -1411f), u_input.d.xyy, vec2<i32>(u_input.d.x, u_input.a.x), 1u, vec4<f32>(631f, 1469f, -1371f, 539f)), u_input.a.yzz, vec4<bool>(false, true, true, true), u_input.b.x), vec3<u32>(u_input.b.x, 17005u, u_input.b.x), u_input.d), ~u_input.b.wx, Struct_2(Struct_1(vec4<f32>(-376f, 593f, -985f, -1452f), vec3<i32>(u_input.c.x, u_input.c.x, u_input.d.x), vec2<i32>(3699i, 34703i), u_input.b.x, vec4<f32>(988f, 1000f, -997f, -548f)), u_input.d.zwz, vec4<bool>(false, false, false, true), 22253u)), any(func_1(Struct_2(Struct_1(vec4<f32>(582f, -1700f, 226f, -835f), u_input.a.xyz, vec2<i32>(36510i, 8974i), u_input.e, vec4<f32>(-991f, 1000f, 863f, -551f)), u_input.a.wyx, vec4<bool>(true, false, false, false), 43220u), vec3<u32>(0u, 4294967295u, 1u), u_input.a).c)));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, -624f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(234f - -930f), _wgslsmith_div_f32(-2412f, -1562f)) * 1f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(746f - 702f), 774f)), _wgslsmith_div_f32(322f, _wgslsmith_f_op_f32(f32(-1f) * -1034f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2842f), _wgslsmith_f_op_f32(766f + -956f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -996f))))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))) * _wgslsmith_f_op_f32(-1029f + _wgslsmith_f_op_f32(floor(176f))));
    let var_3 = -(~select((vec2<i32>(u_input.d.x, -9977i) << (u_input.b.ww % vec2<u32>(32u))) & vec2<i32>(u_input.d.x, -2147483647i), (vec2<i32>(38085i, u_input.c.x) << (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u))) & vec2<i32>(u_input.a.x, 2147483647i), vec2<bool>(true, false)));
    var var_4 = u_input.b.x;
    var_4 = _wgslsmith_mod_u32(u_input.e, abs(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), _wgslsmith_div_u32(u_input.e, ~32913u))));
    let var_5 = Struct_4(_wgslsmith_add_vec2_u32(~u_input.b.zz, u_input.b.xz), max(u_input.b.zzy, u_input.b.ywz));
    var var_6 = func_1(Struct_2(func_1(Struct_2(Struct_1(var_1, vec3<i32>(var_3.x, u_input.d.x, var_3.x), u_input.a.xw, 0u, var_1), vec3<i32>(var_3.x, 32935i, 38550i), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(var_5.b.x, var_5.a.x, true)), ~(var_5.b ^ u_input.b.wwx), u_input.d).a, u_input.d.yzw, select(vec4<bool>(func_1(Struct_2(Struct_1(vec4<f32>(var_2, var_1.x, var_1.x, var_2), vec3<i32>(var_3.x, -2147483647i, u_input.a.x), vec2<i32>(1i, var_3.x), var_5.b.x, var_1), vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x), vec4<bool>(var_0.x, false, var_0.x, false), u_input.e), var_5.b, u_input.a).c.x, true, true, u_input.d.x > -33815i), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, true, true, var_0.x)), min(abs(~u_input.e), firstTrailingBit(var_5.b.x >> (16774u % 32u)))), ~vec3<u32>(abs(67679u) >> (~u_input.b.x % 32u), 0u, countOneBits(var_5.b.x)), vec4<i32>(0i << (_wgslsmith_mult_u32(u_input.e, ~var_5.b.x) % 32u), 1i | _wgslsmith_mod_i32(u_input.c.x, -9716i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 2147483647i, _wgslsmith_mult_i32(-1i, u_input.c.x), 26692i), ~vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, var_3.x)), ((-2147483647i | u_input.a.x) << (_wgslsmith_sub_u32(22057u, u_input.e) % 32u)) | select(_wgslsmith_add_i32(-90837i, u_input.a.x), firstLeadingBit(-19393i), var_0.x))).a;
    var_4 = firstTrailingBit(19847u);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.e.wy, var_1.zz);
}

