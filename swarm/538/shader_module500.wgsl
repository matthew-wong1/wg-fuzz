struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<bool> {
    return vec4<bool>(all(vec2<bool>(true, true)), true, true, 1555f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(388f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1685f) + _wgslsmith_f_op_f32(276f - 620f))));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(any(!vec4<bool>(any(vec2<bool>(arg_1.b, true)), false, arg_1.b, true)), !(!func_3()), false);
    let var_1 = all(var_0.b.yy);
    let var_2 = Struct_4(!arg_3.b, vec4<bool>(!(!(arg_2 || true)), !var_1, select(!any(vec4<bool>(var_0.c, var_0.a, arg_3.b, true)), all(!var_0.b.yy), var_0.c | arg_3.b), !(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.d.x, arg_3.d.x, -48869i), arg_3.d) <= arg_1.d.x)), false);
    var var_3 = var_2;
    let var_4 = true;
    return Struct_1(arg_3.a, u_input.d.x != firstTrailingBit(~(~4294967295u)), _wgslsmith_f_op_f32(trunc(800f)), vec3<i32>(~(~(-29822i ^ arg_3.d.x)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_1.d.x, u_input.b.x, 352i, -17906i)), u_input.b.x), _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, arg_3.e), vec2<u32>(arg_3.e, arg_0.x), vec2<u32>(4294967295u, arg_3.e))) << (countOneBits(_wgslsmith_mod_vec2_u32(u_input.d, arg_0.yy)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.a.yy, _wgslsmith_mod_vec2_u32(vec2<u32>(28110u, arg_0.x), vec2<u32>(u_input.a.x, 17393u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> vec3<f32> {
    global0 = array<vec3<f32>, 15>();
    global0 = array<vec3<f32>, 15>();
    let var_0 = func_3();
    let var_1 = func_2(firstLeadingBit(u_input.a.xzw), func_2(vec3<u32>(arg_0.e, _wgslsmith_div_u32(arg_0.e >> (4294967295u % 32u), 0u), u_input.d.x), arg_0, _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -476f)) <= -1000f, arg_0), !arg_0.b, arg_0);
    var var_2 = _wgslsmith_f_op_f32(ceil(arg_1.x));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(51393u, 15u)])) + arg_1.zyx), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(~22949u, 15u)] * arg_0.a), var_0.yxw)) + vec3<f32>(_wgslsmith_f_op_f32(min(421f, _wgslsmith_div_f32(arg_1.x, 1336f))), _wgslsmith_f_op_f32(-func_2(vec3<u32>(u_input.d.x, 31301u, arg_0.e), var_1, false, var_1).a.x), arg_0.c)) - vec3<f32>(_wgslsmith_f_op_f32(-605f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1080f) + _wgslsmith_div_f32(563f, -1000f))), var_1.c, -1460f));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    var var_0 = true;
    var var_1 = arg_3;
    let var_2 = arg_2;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(ceil(arg_1.c)) > -736f, arg_3.b, !func_3().x | false);
    let var_4 = arg_3;
    return Struct_1(arg_1.a, var_4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(1u), _wgslsmith_mod_u32(arg_1.e, 27727u), ~u_input.d.x), (vec3<u32>(arg_1.e, arg_1.e, 14829u) ^ u_input.a.wzz) | abs(u_input.a.zyx)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c), -833f, func_2(u_input.a.www, arg_1, false, arg_1).c), !(17455i >= arg_2.a), _wgslsmith_f_op_f32(arg_1.a.x + 1656f), ~_wgslsmith_add_vec3_i32(arg_1.d, vec3<i32>(arg_0.x, arg_2.a, -2147483647i)), arg_1.e), var_4.b.x && true, func_2(firstTrailingBit(abs(vec3<u32>(arg_1.e, arg_1.e, u_input.d.x))), func_2(~u_input.a.xyy, arg_1, !arg_3.b.x, func_2(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), arg_1, false, Struct_1(vec3<f32>(arg_1.a.x, arg_1.c, arg_1.a.x), true, arg_1.a.x, arg_0.zyx, arg_1.e))), !(var_4.b.x | true), Struct_1(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(arg_1.e, 15u)]), false, _wgslsmith_f_op_f32(round(-759f)), arg_1.d, u_input.a.x))).d, ~(abs(~4294967295u) & ~(24307u ^ u_input.c)));
}

fn func_1(arg_0: Struct_3) -> bool {
    var var_0 = func_5(u_input.b, Struct_1(_wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(abs(1u), 15u)], _wgslsmith_f_op_vec3_f32(func_4(func_2(vec3<u32>(6300u, arg_0.a.x, 36911u), Struct_1(vec3<f32>(-252f, 1000f, -985f), true, -236f, vec3<i32>(u_input.b.x, 21112i, 26935i), 4294967295u), false, Struct_1(global0[_wgslsmith_index_u32(arg_0.a.x, 15u)], false, -1194f, vec3<i32>(-36961i, 3023i, u_input.b.x), 39261u)), vec4<f32>(104f, -986f, -814f, 1597f), Struct_2(u_input.b.x)))), !func_3().x & true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(3806f - -1250f)), u_input.b.yxz ^ _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, 0i), u_input.b.zxy), firstLeadingBit(vec3<i32>(-44380i, u_input.b.x, 0i))), countOneBits(~(~0u))), Struct_2(u_input.b.x), Struct_4(true, vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, true), true & any(vec4<bool>(true, true, true, true))));
    global0 = array<vec3<f32>, 15>();
    var var_1 = Struct_2(_wgslsmith_mult_i32((i32(-1i) * -38333i) << (_wgslsmith_div_u32(arg_0.a.x << (var_0.e % 32u), 4294967295u >> (u_input.c % 32u)) % 32u), _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.b.x, 32015i, -27918i, var_0.d.x)), reverseBits(vec4<i32>(u_input.b.x, var_0.d.x, -1i, 0i)))));
    let var_2 = Struct_2(_wgslsmith_mult_i32(var_1.a, func_5(_wgslsmith_mult_vec4_i32(select(vec4<i32>(27958i, var_1.a, -1i, u_input.b.x), u_input.b, vec4<bool>(var_0.b, false, false, var_0.b)), vec4<i32>(-87715i, 1i, var_0.d.x, -12234i) | vec4<i32>(0i, u_input.b.x, 1i, var_0.d.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 823f, 226f)), var_0.b, _wgslsmith_f_op_f32(-1415f + var_0.c), _wgslsmith_sub_vec3_i32(var_0.d, u_input.b.zwy), _wgslsmith_dot_vec2_u32(vec2<u32>(40188u, 1u), vec2<u32>(arg_0.a.x, u_input.d.x))), Struct_2(var_1.a), Struct_4(arg_0.a.x <= arg_0.a.x, vec4<bool>(false, false, false, var_0.b), var_0.a.x < -1034f)).d.x));
    var var_3 = u_input.a >> (_wgslsmith_div_vec4_u32(abs(~countOneBits(u_input.a)), vec4<u32>(4294967295u, func_2(select(arg_0.a, u_input.a.wzy, vec3<bool>(var_0.b, true, var_0.b)), Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), false, 1352f, vec3<i32>(14221i, var_0.d.x, 0i), var_0.e), any(vec4<bool>(false, false, false, var_0.b)), func_5(u_input.b, Struct_1(var_0.a, true, var_0.c, u_input.b.zzy, u_input.a.x), Struct_2(-1i), Struct_4(var_0.b, vec4<bool>(true, var_0.b, false, var_0.b), var_0.b))).e, var_0.e << ((0u << (u_input.d.x % 32u)) % 32u), 59886u)) % vec4<u32>(32u));
    return any(vec4<bool>(true, true, any(vec3<bool>(true, var_0.b, any(vec3<bool>(var_0.b, false, var_0.b)))), true));
}

fn func_6(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: i32) -> f32 {
    global0 = array<vec3<f32>, 15>();
    global0 = array<vec3<f32>, 15>();
    var var_0 = Struct_2(~select(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 63756i, arg_3, arg_3), vec4<i32>(arg_3, u_input.b.x, 1i, u_input.b.x)), ~arg_3, false));
    var var_1 = func_2(~(~vec3<u32>(1u, u_input.d.x, 4294967295u) & arg_2.a), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, 1638f, -1456f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + arg_0) * _wgslsmith_f_op_f32(-arg_0)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), 485f, abs(~vec3<i32>(arg_3, 2147483647i, 14083i)), arg_2.a.x), arg_1.a, Struct_1(_wgslsmith_f_op_vec3_f32(abs(global0[_wgslsmith_index_u32(arg_2.a.x, 15u)])), false, func_2(vec3<u32>(4294967295u, countOneBits(u_input.a.x), ~arg_2.a.x), func_5(_wgslsmith_mod_vec4_i32(vec4<i32>(41054i, -6120i, 2147483647i, 22337i), u_input.b), Struct_1(vec3<f32>(arg_0, -826f, -1248f), arg_1.c, arg_0, u_input.b.yxy, 64435u), Struct_2(18259i), arg_1), all(vec3<bool>(arg_1.c, arg_1.b.x, true)), Struct_1(vec3<f32>(360f, 485f, 1829f), select(false, arg_1.b.x, arg_1.c), _wgslsmith_f_op_f32(-arg_0), vec3<i32>(var_0.a, 45388i, 40223i), arg_2.a.x)).a.x, _wgslsmith_div_vec3_i32(u_input.b.wwx << (vec3<u32>(u_input.c, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), u_input.b.wyx), arg_2.a.x >> (_wgslsmith_mod_u32(u_input.d.x >> (arg_2.a.x % 32u), ~54847u) % 32u)));
    let var_2 = u_input.a.wwy;
    return _wgslsmith_f_op_f32(-var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(365f, Struct_4(func_1(Struct_3(vec3<u32>(u_input.d.x, u_input.a.x, u_input.c))), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, false))), Struct_3(select(vec3<u32>(4098u, 5787u, 37691u), vec3<u32>(u_input.c, u_input.c, u_input.a.x), true)), ~(~u_input.b.x))) + _wgslsmith_f_op_f32(round(-700f))));
    var var_1 = Struct_3(u_input.a.xwx);
    let var_2 = Struct_4(true, !select(func_3(), vec4<bool>(true, true, true, true), !func_3()), all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true), vec3<bool>(true, false, false))) && true);
    let var_3 = _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-6763i, 25650i, 89907i, select(1i, u_input.b.x, true && var_2.a) & (-u_input.b.x | ~u_input.b.x)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(333f, func_5(_wgslsmith_sub_vec4_i32(var_3, u_input.b), func_5(u_input.b, Struct_1(global0[_wgslsmith_index_u32(var_1.a.x, 15u)], true, -2016f, var_3.wwy, var_1.a.x), Struct_2(0i), var_2), Struct_2(var_3.x), var_2).c)), _wgslsmith_div_f32(2831f, 1400f)));
    var var_5 = ~u_input.a.zzz;
    let var_6 = Struct_4(select(var_2.c, func_5(vec4<i32>(func_5(vec4<i32>(29381i, 15300i, 0i, u_input.b.x), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 15u)], var_2.c, 382f, vec3<i32>(var_3.x, 12893i, var_3.x), 74387u), Struct_2(u_input.b.x), Struct_4(true, vec4<bool>(var_2.c, var_2.c, false, true), true)).d.x, 2147483647i, 1i, -1i), func_2(~var_1.a, Struct_1(vec3<f32>(282f, 1000f, 135f), false, 1000f, vec3<i32>(var_3.x, var_3.x, -45240i), u_input.d.x), false, func_5(var_3, Struct_1(vec3<f32>(918f, -231f, -1796f), var_2.a, -656f, vec3<i32>(var_3.x, 0i, u_input.b.x), 4294967295u), Struct_2(u_input.b.x), Struct_4(true, var_2.b, var_2.a))), Struct_2(u_input.b.x), var_2).b, !var_2.b.x), var_2.b, var_2.c);
    var var_7 = vec2<u32>(32672u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a.x, 24778u)), ~var_5.zx, ~vec2<u32>(5580u, 35527u))));
}

