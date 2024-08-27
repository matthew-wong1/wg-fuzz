struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(54394u, 0u, 1u, 11272u, 4294967295u, 24969u, 2425u, 39796u, 20887u, 1u, 4294967295u, 12040u, 77412u, 4294967295u, 1u, 5787u, 1u, 0u, 0u, 1u, 5953u, 0u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = ~u_input.d;
    var_0 = u_input.d;
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-560f + _wgslsmith_div_f32(432f, -192f)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1640f, -106f), vec2<f32>(1125f, 336f))))), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, true, false, true))), select(vec2<bool>(true, true), vec2<bool>(false, true), any(vec2<bool>(true, true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1938f)) * _wgslsmith_div_f32(1456f, -803f)), !(u_input.a < u_input.b), -618f, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1454f, 529f))))));
    var var_2 = -u_input.a;
    let var_3 = u_input.a;
    return var_1.a.c.d.x;
}

fn func_2() -> Struct_4 {
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), all(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_f32(1443f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(226f * -1307f), _wgslsmith_f_op_f32(step(635f, 523f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1948f - -1722f) * _wgslsmith_f_op_f32(max(-1000f, 532f))), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-308f, 1000f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(696f, -1006f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-179f, 1731f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-639f, 442f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-504f, 2311f)), vec2<bool>(false, false))))));
    global0 = array<u32, 22>();
    var var_1 = ~(~_wgslsmith_mod_vec4_i32(-(~vec4<i32>(0i, -32196i, -1i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-29594i, u_input.b, -32685i, 2147483647i), vec4<i32>(42425i, -1i, -10155i, -33254i)) << (vec4<u32>(global0[_wgslsmith_index_u32(63952u, 22u)], global0[_wgslsmith_index_u32(32145u, 22u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 22u)], 22u)], 5846u) % vec4<u32>(32u))));
    return Struct_4(Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(var_0.c + var_0.c), all(vec2<bool>(false, var_0.b)), _wgslsmith_f_op_f32(trunc(var_0.a)), var_0.d), vec2<bool>(var_0.b, false), Struct_1(_wgslsmith_f_op_f32(-1000f - var_0.d.x), any(vec2<bool>(false, var_0.b)), _wgslsmith_f_op_f32(ceil(var_0.a)), var_0.d))), Struct_1(-821f, !any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a)))), vec2<f32>(_wgslsmith_f_op_f32(round(-125f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), !(var_0.b | !var_0.b), !any(select(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(true, var_0.b, var_0.b), false), vec3<bool>(var_0.b, false, true), !var_0.b)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_4 {
    let var_0 = vec3<f32>(arg_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) + arg_2.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_div_f32(arg_0.a.a.a.c, arg_2.c))) - 458f));
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    var var_1 = true;
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> Struct_4 {
    let var_0 = func_4(func_2(), vec3<i32>(u_input.b, abs(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -1i, u_input.b), ~vec4<i32>(28105i, u_input.a, u_input.a, u_input.a))), _wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.a, 30641i), u_input.b)), func_2().a.a.c);
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(-(54005i | abs(u_input.a)), 0i), 1i, 2147483647i);
    var var_2 = func_2();
    let var_3 = u_input.b;
    let var_4 = Struct_3(var_2.a.a);
    return func_4(var_0, _wgslsmith_div_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(12046i, 2147483647i, -1i), vec3<i32>(-45470i, var_3, 0i)), _wgslsmith_div_i32(37412i, u_input.a), ~var_3), _wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(-2147483647i, 2147483647i, -2147483647i)) >> (_wgslsmith_sub_vec3_u32(abs(vec3<u32>(global0[_wgslsmith_index_u32(36369u, 22u)], global0[_wgslsmith_index_u32(13495u, 22u)], u_input.d)), vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(23684u, 22u)], arg_0) ^ vec3<u32>(37801u, arg_0, 83976u)) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(round(-727f)), var_4.a.b.x, var_2.b.c, _wgslsmith_f_op_vec2_f32(-func_4(var_0, reverseBits(vec3<i32>(2147483647i, 9353i, var_3)), func_2().b).a.a.c.d)));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_4, arg_3: vec4<u32>) -> vec3<i32> {
    global0 = array<u32, 22>();
    var var_0 = arg_3.xwx;
    let var_1 = arg_2.a.a;
    return vec3<i32>(u_input.b, u_input.b, -10596i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.b, ~_wgslsmith_mod_i32(_wgslsmith_div_i32(-u_input.b, max(u_input.a, u_input.b)), countOneBits(-33142i)), u_input.b);
    global0 = array<u32, 22>();
    global0 = array<u32, 22>();
    var_0 = ~vec3<i32>(-_wgslsmith_add_i32(-28454i, abs(-32005i)), -select(-1i, max(1i, -56269i), true), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.x, u_input.b), vec3<i32>(-42819i, var_0.x, u_input.b) << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 22u)], 1u, 48001u) % vec3<u32>(32u))));
    var_0 = firstTrailingBit(max(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -24665i, var_0.x), vec3<i32>(-19i, -27674i, 71466i)) & firstLeadingBit(vec3<i32>(-1i, 3853i, 35218i)), func_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(724f, -1925f))), abs(0u), func_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15828u, 22u)], 22u)], vec4<f32>(913f, -1576f, -370f, -659f)), vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.c, 22u)], 0u, global0[_wgslsmith_index_u32(58664u, 22u)]))), vec3<i32>(-1i) * -(vec3<i32>(-1i, var_0.x, var_0.x) ^ vec3<i32>(u_input.b, 2147483647i, u_input.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-870f)), _wgslsmith_f_op_f32(abs(func_4(func_4(Struct_4(Struct_3(Struct_2(Struct_1(-2264f, false, 267f, vec2<f32>(353f, -802f)), vec2<bool>(false, true), Struct_1(368f, false, 266f, vec2<f32>(918f, -132f)))), Struct_1(610f, false, 609f, vec2<f32>(104f, -421f)), false, true), vec3<i32>(var_0.x, 0i, u_input.b), Struct_1(885f, true, 1000f, vec2<f32>(1511f, 1048f))), reverseBits(vec3<i32>(-73334i, var_0.x, 9772i)), Struct_1(-641f, true, -873f, vec2<f32>(1161f, 519f))).b.a)), 496f));
    let var_2 = func_4(Struct_4(func_4(func_2(), vec3<i32>(0i, _wgslsmith_add_i32(15523i, u_input.a), -45787i), func_2().b).a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1982f, var_1.x)), false, 456f, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, 113f), var_1.yy)))), !(u_input.b >= u_input.b) || !all(vec4<bool>(true, false, true, false)), -446f < _wgslsmith_f_op_f32(-var_1.x)), select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 1i, u_input.a), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-30735i, -8285i, var_0.x)), abs(vec3<i32>(0i, 31095i, 0i)))), -abs(firstLeadingBit(vec3<i32>(46449i, 63826i, 13698i))), false), Struct_1(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) * 157f)), (any(vec4<bool>(false, true, false, false)) & true) & (_wgslsmith_f_op_f32(var_1.x + var_1.x) == -832f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yx)))))).a.a;
    let var_3 = ~vec4<u32>(1u, global0[_wgslsmith_index_u32(abs(48198u), 22u)] >> ((1u ^ _wgslsmith_div_u32(0u, u_input.d)) % 32u), abs(u_input.c | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)]), 22u)], 22u)]), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(~1u, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.x, 2147483647i, var_0.x), vec3<i32>(u_input.a, 2147483647i, var_0.x) ^ -vec3<i32>(u_input.a, 1i, 2147483647i)), -u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a | 27096i, -2147483647i, 0i), vec3<i32>(0i, 0i, 0i))));
}

