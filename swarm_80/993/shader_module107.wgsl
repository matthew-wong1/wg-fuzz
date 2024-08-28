struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>) -> u32 {
    var var_0 = arg_1.d;
    var var_1 = arg_1.b.yz;
    var_1 = !vec2<bool>(!arg_2.x, true);
    var_1 = vec2<bool>(!var_1.x && arg_2.x, true && arg_1.d.c);
    let var_2 = -(~(-_wgslsmith_mult_vec4_i32(arg_1.d.b, vec4<i32>(arg_1.d.b.x, 0i, arg_1.d.b.x, 1i)) | abs(arg_1.d.b)));
    return _wgslsmith_clamp_u32(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 23168u), ~vec3<u32>(982u, 1u, 4294967295u))), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 15670u)), select(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 0u, 14853u)), vec3<u32>(1u, 1u, 1u)), ~min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 19555u, 1u)), var_0.a)), min(70016u, 28337u));
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_3 {
    var var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -918f), _wgslsmith_f_op_f32(min(103f, global0[_wgslsmith_index_u32(func_3(-1504f, Struct_3(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 4u)], global0[_wgslsmith_index_u32(arg_0, 4u)]), vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(1u, 4u)], Struct_1(true, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -55111i), true), vec3<bool>(true, false, false)), vec4<bool>(true, false, false, false)) | firstLeadingBit(1u), 4u)]))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(345f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 4u)]), -592f)), _wgslsmith_f_op_f32(1045f - _wgslsmith_f_op_f32(f32(-1f) * -273f)))), Struct_1(true, countOneBits(abs(select(vec4<i32>(u_input.a.x, 42469i, 1i, arg_1), vec4<i32>(2147483647i, 1152i, -2147483647i, u_input.a.x), false))), false), !vec3<bool>(!any(vec3<bool>(false, false, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 4u)])) <= _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(16702u, 4u)]))));
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-1445f - var_0.a.x), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0, 4u)]) * var_0.a.x))), select(var_0.b, var_0.b, var_0.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -2740f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1983u, 4u)] - 2399f)))), 1659f)), Struct_1(true, min(~(var_0.d.b << (vec4<u32>(75774u, arg_0, arg_0, 81902u) % vec4<u32>(32u))), var_0.d.b), var_0.d.a), select(select(!select(var_0.e, var_0.b.zzx, var_0.e), vec3<bool>(false, any(var_0.b.xz), any(vec4<bool>(false, true, true, true))), true), vec3<bool>(true, var_0.d.a, any(var_0.b.xzx)), vec3<bool>(false, any(select(vec4<bool>(var_0.e.x, false, var_0.b.x, var_0.e.x), var_0.b, var_0.b)), any(var_0.b))));
    var var_2 = ~arg_0 << (countOneBits(4294967295u) % 32u);
    var var_3 = var_1.d;
    var var_4 = _wgslsmith_f_op_f32(-1918f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -753f), _wgslsmith_f_op_f32(round(174f))) + var_0.c)));
    return Struct_3(var_1.a, select(var_0.b, !select(vec4<bool>(var_3.c, true, var_3.a, false), !var_0.b, any(var_0.b.ww)), false), -1368f, Struct_1(true, vec4<i32>(_wgslsmith_mod_i32(2147483647i, 1i), -_wgslsmith_mod_i32(var_1.d.b.x, -1i), arg_1, ~(i32(-1i) * -2147483647i)), var_1.d.a), select(var_0.e, vec3<bool>(!select(false, var_1.d.c, var_3.c), any(vec2<bool>(var_0.e.x, var_1.b.x)), true), var_0.e));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> u32 {
    let var_0 = !(!vec3<bool>(false, arg_3.b, all(!arg_3.c.b)));
    var var_1 = Struct_4(~(arg_3.a ^ _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_3.a, arg_3.a), ~0u)), all(arg_3.c.b), arg_3.c);
    let var_2 = func_2(arg_3.a, 9567i).d;
    var var_3 = Struct_4(arg_1, arg_3.a > ~arg_3.a, Struct_3(var_1.c.a, var_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.a.x))), Struct_1(abs(-2824i) >= min(var_2.b.x, arg_3.c.d.b.x), ~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2, var_2.b.x, 0i, arg_2), var_2.b), !var_2.c & true), var_0));
    global0 = array<f32, 4>();
    return arg_3.a;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: bool) -> vec2<u32> {
    var var_0 = func_4(false, select(1u, 0u, false), _wgslsmith_sub_i32(-10356i, 23290i), Struct_4(1u, arg_2 & (arg_2 != arg_2), func_2(4294967295u, _wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, -10933i))))) != 0u;
    let var_1 = vec3<u32>(1u, func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(860f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))))), func_2(42994u, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(7701i, 1i, arg_0, arg_0)), ~vec4<i32>(-1i, 2147483647i, 28933i, 0i))), select(!vec4<bool>(arg_2, true, arg_2, arg_2), vec4<bool>(any(vec3<bool>(false, arg_2, false)), any(vec2<bool>(false, true)), select(arg_2, arg_2, false), true), !all(vec2<bool>(arg_2, arg_2)))), 11299u);
    global0 = array<f32, 4>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 4u)] * -696f)) - 826f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1342f)) + _wgslsmith_f_op_f32(arg_1.x * -1000f)))))), 377f, _wgslsmith_f_op_f32(961f + -140f));
    let var_3 = Struct_4(var_1.x, !(!arg_2 && arg_2), func_2(func_4(true, var_1.x, abs(arg_0) ^ _wgslsmith_clamp_i32(arg_0, u_input.a.x, 2147483647i), Struct_4(~var_1.x, false, Struct_3(vec2<f32>(global0[_wgslsmith_index_u32(22074u, 4u)], -1000f), vec4<bool>(arg_2, arg_2, arg_2, arg_2), 1337f, Struct_1(arg_2, vec4<i32>(0i, 11763i, u_input.a.x, 2147483647i), arg_2), vec3<bool>(arg_2, arg_2, true)))), 1i));
    return vec2<u32>(firstLeadingBit(var_3.a), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~(~0u), var_1.x), _wgslsmith_div_u32(~(var_1.x << (var_3.a % 32u)), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    let var_0 = Struct_4(_wgslsmith_dot_vec2_u32(func_1(1i, vec3<f32>(-206f, -551f, global0[_wgslsmith_index_u32(0u, 4u)]), any(vec2<bool>(false, true))) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), abs(vec2<u32>(1u, 14846u) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(50362u, 4294967295u)) % vec2<u32>(32u)))), !any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), false)), Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 4u)])), global0[_wgslsmith_index_u32(abs(32679u), 4u)]))), vec4<bool>(true, !(global0[_wgslsmith_index_u32(102295u, 4u)] != -1000f), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), true)), true), 1f, Struct_1(firstLeadingBit(2147483647i) != (2147483647i ^ u_input.a.x), vec4<i32>(~u_input.a.x, ~(-1i), -14544i, 1i), true), select(vec3<bool>(false, true, false), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))));
    let var_1 = _wgslsmith_mult_vec3_i32(select(select(abs(var_0.c.d.b.zyy), firstLeadingBit(vec3<i32>(var_0.c.d.b.x, u_input.a.x, var_0.c.d.b.x) ^ vec3<i32>(21739i, u_input.a.x, var_0.c.d.b.x)), vec3<bool>(false, any(vec2<bool>(var_0.b, var_0.b)), true)), firstTrailingBit(-vec3<i32>(u_input.a.x, -19536i, 1i)), vec3<bool>(true, var_0.c.d.c, false)), var_0.c.d.b.wxw);
    global0 = array<f32, 4>();
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global0[_wgslsmith_index_u32(1234u, 4u)], -192f, global0[_wgslsmith_index_u32(var_0.a, 4u)]), vec4<f32>(var_0.c.c, 1000f, -1000f, -488f))))) - vec4<f32>(global0[_wgslsmith_index_u32(var_0.a, 4u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 4u)]), _wgslsmith_f_op_f32(f32(-1f) * -248f), 530f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a.x, global0[_wgslsmith_index_u32(var_0.a, 4u)], global0[_wgslsmith_index_u32(var_0.a, 4u)], 617f)))), true));
    global0 = array<f32, 4>();
    var var_3 = false;
    var var_4 = Struct_1(var_0.c.e.x, var_0.c.d.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_clamp_u32(func_1(1i, var_2.wxx, false).x, 1u, 41922u), ~_wgslsmith_div_u32(var_0.a, 0u)) | _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(42903u, 4294967295u), ~vec2<u32>(var_0.a, var_0.a)), ~firstLeadingBit(vec2<u32>(0u, 0u))), -vec2<i32>(i32(-1i) * -var_0.c.d.b.x, _wgslsmith_clamp_i32(var_4.b.x, 0i, var_1.x)));
}

