struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: bool = false;

var<private> global2: i32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(595f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-453f, 1063f)))), 1805f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -964f))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(672f, 905f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(154f * -579f))), _wgslsmith_f_op_f32(min(2060f, _wgslsmith_f_op_f32(abs(329f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(197f, -689f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(-1552f * 1000f), _wgslsmith_f_op_f32(960f - -1301f), -1303f, _wgslsmith_f_op_f32(f32(-1f) * -740f))))));
    let var_1 = vec3<bool>(true, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)))), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true)), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 8u)] != u_input.a), all(vec2<bool>(true, true)))));
    var var_2 = vec2<u32>(~_wgslsmith_mult_u32(0u, arg_0.x), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, ~7906u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(arg_0.x, 8u)], global0[_wgslsmith_index_u32(64204u, 8u)])), _wgslsmith_mod_vec3_u32(min(vec3<u32>(arg_0.x, arg_0.x, 4294967295u), vec3<u32>(0u, 4294967295u, 60188u)), ~vec3<u32>(arg_0.x, 1u, arg_0.x))), 8u)]);
    let var_3 = Struct_2(~vec2<u32>(var_2.x >> (3570u % 32u), 1u) & ~(u_input.d << (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(56703u, 0u), u_input.d) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(countOneBits(arg_0.x), 8u)]);
    let var_4 = Struct_2(vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.x, 8u)], var_3.a.x, 73613u, var_2.x), min(vec4<u32>(var_3.b, 4294967295u, 34184u, var_2.x), vec4<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 62665u)))), 4294967295u), ~(~_wgslsmith_clamp_u32(38908u, var_2.x, 1u) & 0u));
    return _wgslsmith_f_op_vec3_f32(step(var_0.xxw, _wgslsmith_div_vec3_f32(var_0.wwz, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(abs(-395f)), var_0.x, _wgslsmith_div_f32(683f, 1000f)))))));
}

fn func_2() -> bool {
    global1 = !all(vec2<bool>(false, true));
    var var_0 = vec4<bool>(select(true, true, true), any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false))), vec4<bool>(false, true, false, any(vec2<bool>(false, false))))), !all(vec4<bool>(true, all(vec2<bool>(true, false)), true, true)), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d, ~(~vec2<u32>(1u, 39368u))), u_input.d)));
    let var_2 = ~(~_wgslsmith_sub_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(258u, 8u)], 8u)]), 0u & u_input.d.x));
    var_0 = !(!(!vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true, true, var_0.x)));
    return any(select(vec4<bool>(var_0.x, false, true, !var_0.x), select(select(!vec4<bool>(var_0.x, false, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true)), any(vec4<bool>(false, var_0.x, var_0.x, var_0.x))), !select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(false, true, true, true)), vec4<bool>(var_0.x & var_0.x, all(vec3<bool>(var_0.x, true, true)), any(vec2<bool>(true, true)), !var_0.x)), true));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: f32) -> vec4<bool> {
    var var_0 = Struct_4(Struct_2(vec2<u32>(arg_0.a.b ^ ~global0[_wgslsmith_index_u32(41073u, 8u)], 0u), 1u), select(_wgslsmith_clamp_u32(arg_0.c.b, ~0u, ~4294967295u) != ~4294967295u, true, true), ~(-2147483647i), func_2(), !(!(!(!vec4<bool>(true, arg_1.x, true, false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_2), -191f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -403f))) * arg_0.b) * _wgslsmith_f_op_vec4_f32(select(arg_0.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-149f - -563f) - _wgslsmith_f_op_f32(sign(arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1019f * arg_2), 162f), 578f, _wgslsmith_f_op_f32(arg_2 + arg_2)), !select(vec4<bool>(arg_0.c.d.x, true, arg_0.a.d.x, true), !vec4<bool>(arg_1.x, arg_1.x, true, true), arg_0.a.d.x))));
    var var_2 = Struct_4(var_0.a, !(!arg_1.x && false), _wgslsmith_mod_i32(arg_0.a.c, ~(~arg_0.c.c)), arg_0.a.d.x & arg_1.x, var_0.e);
    var_1 = _wgslsmith_f_op_vec4_f32(-arg_0.b);
    var var_3 = ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(19848u, var_0.a.b, 35230u, var_0.a.b), firstLeadingBit(vec4<u32>(11798u, arg_0.a.b, arg_0.a.a, global0[_wgslsmith_index_u32(77949u, 8u)]))), ~arg_0.a.b, _wgslsmith_div_u32(0u, select(u_input.d.x, 4294967295u, true)), ~var_0.a.b));
    return vec4<bool>(true, false, all(select(var_0.e.xw, !select(arg_1, arg_0.a.d.xx, vec2<bool>(true, true)), var_0.e.yy)), all(var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(vec2<u32>(88392u, ~36343u) << ((u_input.d >> (u_input.d % vec2<u32>(32u))) % vec2<u32>(32u)), 39639u), !(!(u_input.e < (i32(-1i) * -17499i))), ~_wgslsmith_add_i32(u_input.e, u_input.c.x), false, select(select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), select(any(vec2<bool>(true, true)), true, false)), !select(func_1(Struct_3(Struct_1(4294967295u, global0[_wgslsmith_index_u32(16987u, 8u)], 34509i, vec3<bool>(false, true, true)), vec4<f32>(-1469f, -761f, -663f, -101f), Struct_1(global0[_wgslsmith_index_u32(1u, 8u)], 0u, 39228i, vec3<bool>(false, false, true))), vec2<bool>(false, true), 1373f), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), false), true), vec4<bool>(false, true, any(vec2<bool>(false, false)), true)));
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(var_0.a.a.x, 8u)], countOneBits(14087u), var_0.c, !(!(!func_1(Struct_3(Struct_1(u_input.d.x, var_0.a.a.x, u_input.c.x, var_0.e.yyy), vec4<f32>(-850f, 959f, -1000f, 400f), Struct_1(52643u, u_input.a, 0i, var_0.e.yyw)), vec2<bool>(var_0.e.x, true), 635f).zww)));
    var var_2 = var_0;
    var var_3 = u_input.c >> (~(~abs(vec3<u32>(47163u, 59518u, 4294967295u))) % vec3<u32>(32u));
    let var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(~global0[_wgslsmith_index_u32(var_0.a.a.x, 8u)], ~(~(~var_1.a)), (var_0.a.a.x ^ _wgslsmith_mod_u32(2983u, var_0.a.b)) ^ ~(~u_input.d.x), 4294967295u), min(select(_wgslsmith_sub_vec4_u32(vec4<u32>(19108u, 24278u, var_0.a.a.x, var_0.a.a.x), vec4<u32>(global0[_wgslsmith_index_u32(var_0.a.a.x, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], 11614u, 32107u)), ~vec4<u32>(var_1.a, global0[_wgslsmith_index_u32(u_input.a, 8u)], var_1.a, 759u), !vec4<bool>(var_2.e.x, true, false, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, var_1.b, var_1.a, 0u), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], var_1.a, 0u, 1u)), vec4<u32>(var_0.a.b, 4294967295u, var_2.a.a.x, 13704u))) << (~(~min(vec4<u32>(1u, u_input.d.x, 1u, var_0.a.b), vec4<u32>(44805u, 4294967295u, 1u, global0[_wgslsmith_index_u32(var_2.a.a.x, 8u)]))) % vec4<u32>(32u)));
    let var_5 = var_1;
    var var_6 = min(var_0.a.a.x, max(16021u, var_5.a)) ^ (_wgslsmith_sub_u32(var_5.a, 0u) >> (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_2.c)), 64973u, u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-2140f, 232f, -388f, 282f), true)) * vec4<f32>(_wgslsmith_f_op_f32(floor(571f)), -949f, _wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_f_op_f32(1708f + -454f)))), vec2<f32>(_wgslsmith_f_op_f32(-379f - 814f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(689f)))))));
}

