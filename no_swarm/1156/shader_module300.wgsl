struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<f32, 17> = array<f32, 17>(961f, 1000f, -1121f, -383f, -710f, -1720f, -1649f, -866f, -158f, -2047f, -611f, -1314f, 1368f, 2343f, 643f, 384f, 222f);

var<private> global2: f32 = -1122f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    var var_0 = u_input.a;
    global1 = array<f32, 17>();
    var var_1 = max(countOneBits(vec2<u32>(~55481u, 47760u) ^ vec2<u32>(firstTrailingBit(u_input.a), 6967u)), vec2<u32>(~min(u_input.a >> (u_input.a % 32u), max(4294967295u, u_input.a)), _wgslsmith_mod_u32(u_input.a ^ u_input.a, ~firstTrailingBit(2844u))));
    global0 = array<Struct_2, 6>();
    var var_2 = Struct_1(select(min(vec3<i32>(1i, 1i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -19854i, 0i), vec3<i32>(-17154i, -31207i, 0i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(60647i, -1i, 1i), vec3<i32>(-82708i, -29070i, -25071i), vec3<i32>(-18687i, 0i, 0i))), ~vec3<i32>(~7085i, ~(-1i), _wgslsmith_div_i32(-2147483647i, 2147483647i)), select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return var_2.a.x;
}

fn func_2() -> f32 {
    global0 = array<Struct_2, 6>();
    let var_0 = 11136u;
    var var_1 = Struct_2(Struct_1(-vec3<i32>(func_3(), ~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -56317i), vec3<i32>(-44852i, -1i, -9336i)))), 1305f, vec4<u32>(0u, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 4294967295u), ~u_input.a), var_0, 1u));
    global0 = array<Struct_2, 6>();
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.a.x, _wgslsmith_div_i32(abs(242i), -var_1.a.a.x), _wgslsmith_div_i32(var_1.a.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, var_1.a.a.x), vec3<i32>(-30046i, var_1.a.a.x, var_1.a.a.x))) & _wgslsmith_div_i32(~2147483647i, _wgslsmith_div_i32(var_1.a.a.x, var_1.a.a.x)), ~11798i), firstLeadingBit(reverseBits(_wgslsmith_mult_vec4_i32(-vec4<i32>(-2241i, -1i, var_1.a.a.x, -2147483647i), firstLeadingBit(vec4<i32>(var_1.a.a.x, 13480i, 18302i, 32339i))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + 1200f);
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = arg_1.x;
    let var_1 = true;
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())));
    let var_2 = Struct_1(~(-arg_1.wxw << (abs(~vec3<u32>(u_input.a, 32779u, u_input.a)) % vec3<u32>(32u))));
    global0 = array<Struct_2, 6>();
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_4(all(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), -433i, -118f, select(vec3<bool>(all(vec4<bool>(true, true, true, true)), false, true), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(true, true, false)), 1400u <= u_input.a, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), !any(vec4<bool>(true, false, true, false))));
    var var_1 = Struct_2(arg_0, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(min(vec2<u32>(5070u, 13239u), vec2<u32>(u_input.a, 1u))), abs(~vec2<u32>(u_input.a, 0u))), 17u)])), reverseBits(vec4<u32>(countOneBits(u_input.a), u_input.a, reverseBits(u_input.a), u_input.a)));
    let var_2 = any(select(vec2<bool>(any(var_0.d), all(select(vec2<bool>(var_0.d.x, var_0.d.x), vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, var_0.d.x)))), !(!select(var_0.d.yy, vec2<bool>(var_0.d.x, var_0.d.x), var_0.d.yy)), vec2<bool>(!var_0.a, true)));
    let var_3 = Struct_4(var_2, min(1i, select(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, arg_1.a.x), vec2<i32>(2147483647i, 0i)), -arg_1.a.x, true) | _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_1.a, arg_1.a), var_1.a.a >> (vec3<u32>(4294967295u, 1u, u_input.a) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-366f)) + _wgslsmith_f_op_f32(f32(-1f) * -438f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1053f))))), !var_0.d);
    var var_4 = max(var_3.b, ~arg_0.a.x) << (_wgslsmith_dot_vec2_u32(var_1.c.wy, ~var_1.c.zz) % 32u);
    return global0[_wgslsmith_index_u32(max(~(~u_input.a) | select(_wgslsmith_mult_u32(u_input.a, 0u), ~var_1.c.x, var_2), ~4916u) | _wgslsmith_div_u32(15193u, ~0u), 6u)];
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    global1 = array<f32, 17>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)) + arg_1.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1631f)) - 1142f));
    let var_2 = Struct_1(arg_1.a.a);
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(2167i, arg_3.e.x, arg_3.c.a.x) ^ (-32189i & var_2.a.x), 58002i), arg_1.a.a.x, ~select(0i, abs(-61774i), arg_3.d.x), 1411i), min(-reverseBits(vec4<i32>(arg_3.e.x, -1i, 34807i, -46456i)) & -max(vec4<i32>(arg_1.a.a.x, arg_1.a.a.x, arg_3.e.x, 0i), vec4<i32>(-23319i, -8749i, arg_1.a.a.x, -1i)), -vec4<i32>(0i, arg_3.c.a.x, -arg_1.a.a.x, var_2.a.x)));
    return func_1(arg_1.b, vec4<i32>(arg_1.a.a.x, i32(-1i) * -var_2.a.x, ~var_2.a.x, abs(_wgslsmith_mult_i32(0i, var_2.a.x))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(~arg_3.b, 1u, ~arg_0, ~4294967295u), arg_1.c) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 6>();
    global1 = array<f32, 17>();
    var var_0 = Struct_3(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u) ^ vec3<u32>(4294967295u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) | _wgslsmith_add_u32(0u, abs(0u))), u_input.a, func_5(~u_input.a, func_4(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 29065i, -2147483647i), vec3<i32>(75206i, -9104i, -44203i))), func_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 17u)]), vec4<i32>(64643i, 0i, -31226i, -59994i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1076f, global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], -1289f)))), u_input.a, Struct_3(47646u, ~4294967295u, func_4(Struct_1(vec3<i32>(0i, -1i, 1i)), Struct_1(vec3<i32>(-2147483647i, 41233i, -30903i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(395f, -264f, 1408f, -323f) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(u_input.a, 17u)], global1[_wgslsmith_index_u32(731u, 17u)], -1101f))).a, vec3<bool>(true, false, true), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-40793i, -1i, 16623i), vec3<i32>(631i, 1017i, -2147483647i)), abs(-2147483647i), ~1i))), vec3<bool>(any(vec4<bool>(true, true, true, true)), u_input.a == u_input.a, true), abs(firstLeadingBit(~vec3<i32>(-6641i, -17420i, -1i))));
    let var_1 = select(vec3<bool>(any(select(var_0.d, !vec3<bool>(false, var_0.d.x, false), all(var_0.d))), all(!select(vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.d.x), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), var_0.d.x)), var_0.d.x), !vec3<bool>(true, var_0.d.x, true), var_0.d);
    global0 = array<Struct_2, 6>();
    var var_2 = select(~vec4<i32>(i32(-1i) * -var_0.c.a.x, 23237i, var_0.e.x, var_0.e.x), vec4<i32>(func_3(), -1i, var_0.e.x, select(~var_0.c.a.x, 0i, !all(var_0.d.zy))), vec4<bool>(all(select(vec2<bool>(true, var_1.x), select(var_1.xy, var_0.d.zy, var_0.d.xy), !var_1.zx)), !(!any(vec4<bool>(var_1.x, false, false, true))), var_1.x, var_1.x));
    global2 = 462f;
    let x = u_input.a;
    s_output = StorageBuffer(-62665i, ~(-_wgslsmith_div_i32(-1i, 27314i) >> (~(~u_input.a) % 32u)));
}

