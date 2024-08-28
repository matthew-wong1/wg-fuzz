struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: vec2<i32> = vec2<i32>(-1i, 0i);

var<private> global2: array<Struct_1, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    global1 = vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~(~u_input.a), vec4<i32>(global1.x, abs(1i), u_input.a.x, -15135i)), countOneBits(_wgslsmith_mult_vec4_i32(u_input.a | u_input.a, vec4<i32>(global1.x, u_input.a.x, 43561i, 7102i)))), firstLeadingBit(u_input.a.x));
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(21923u, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(13806u, 1u), 1u), ~1u), ~vec3<u32>(1u, 0u, ~1u));
    var var_1 = ~global1.x;
    global1 = -firstLeadingBit(u_input.a.zy);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(ceil(arg_0.x))) + -1000f);
    return arg_0.zy;
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1758f + -1000f), 1f, any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -253f, true)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2126f, 820f, -1133f))))), vec2<f32>(_wgslsmith_f_op_f32(select(334f, 2010f, true)), _wgslsmith_f_op_f32(abs(-1489f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, ~_wgslsmith_div_u32(70169u, 1u), 1u, 1u), max(_wgslsmith_mult_vec4_u32(select(vec4<u32>(80195u, 4294967295u, 57137u, 4294967295u), vec4<u32>(72346u, 1u, 4294967295u, 1u), vec4<bool>(true, true, false, true)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u) << (select(vec4<u32>(9143u, 43143u, 4294967295u, 51472u), vec4<u32>(1u, 7480u, 0u, 0u), vec4<bool>(false, true, true, false)) % vec4<u32>(32u)))), vec4<bool>(true, select(false, true, true), any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), 2026f < _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(1764f, -893f, 1077f) - vec3<f32>(-390f, -215f, 1221f)))).x));
    var var_1 = (_wgslsmith_dot_vec4_u32(select(~var_0.c, var_0.c, false), var_0.c) | ~_wgslsmith_div_u32(121014u, min(var_0.c.x, var_0.c.x))) | _wgslsmith_add_u32(~reverseBits(var_0.c.x) ^ var_0.c.x, var_0.c.x & var_0.c.x);
    let var_2 = 491f;
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.x, -406f))), var_2), var_2, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.x, max(_wgslsmith_add_u32(70424u, var_0.c.x), abs(4294967295u)), var_0.c.x, ~_wgslsmith_dot_vec3_u32(var_0.c.xwx, var_0.c.zxy)), var_0.c ^ (vec4<u32>(4294967295u, var_0.c.x, var_0.c.x, 27305u) & var_0.c), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, 0u), var_0.c) ^ (var_0.c << (abs(vec4<u32>(var_0.c.x, 6740u, 93202u, 1u)) % vec4<u32>(32u)))), !vec4<bool>(true, 12424i > _wgslsmith_sub_i32(14524i, u_input.a.x), var_0.d.x, false));
    global1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, 0i), select(vec2<i32>(min(global1.x, global1.x), global1.x), u_input.a.wy, !(!var_0.d.x))), -(~abs(-30906i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1045f, _wgslsmith_f_op_f32(floor(var_3.a.x)), _wgslsmith_f_op_f32(-var_3.a.x), var_2)))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 15u)];
    var var_1 = !select(var_0.d.wwz, select(var_0.d.yww, !var_0.d.xwz, select(vec3<bool>(arg_1, true, var_0.d.x), var_0.d.xzx, any(var_0.d.zx))), var_0.d.zzx);
    global1 = arg_0.yz;
    global1 = select(vec2<i32>(-42353i, (arg_0.x << (0u % 32u)) & u_input.a.x) | ~_wgslsmith_sub_vec2_i32(arg_0.zy, select(vec2<i32>(24365i, 5907i), arg_0.xz, false)), abs(-(~max(vec2<i32>(global1.x, 1i), vec2<i32>(arg_0.x, 2147483647i)))), all(!var_0.d.yxx));
    global2 = array<Struct_1, 4>();
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1070f))))), _wgslsmith_f_op_f32(-var_0.a.x), var_0.b, 1112f) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-263f, 204f, -366f, var_0.a.x)), _wgslsmith_f_op_vec4_f32(func_2()))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(vec3<i32>(-2147483647i, 0i, global1.x), false)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(183f, -854f, 1776f, 1000f))) - vec4<f32>(_wgslsmith_div_f32(510f, -735f), _wgslsmith_f_op_f32(f32(-1f) * -1263f), _wgslsmith_div_f32(387f, -1000f), _wgslsmith_f_op_f32(trunc(800f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1127f, -2316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f) * _wgslsmith_div_f32(767f, -615f)), _wgslsmith_f_op_vec4_f32(func_2()).x))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(1i != global1.x, true, select(false, true, false), true), vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), u_input.a.x <= global1.x)), vec4<bool>(!any(vec3<bool>(false, false, false)), false, false, false), false)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(517f, 757f, var_0.x) - vec3<f32>(2005f, var_0.x, var_0.x)))).x, _wgslsmith_f_op_f32(ceil(var_0.x)), 885f)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(173f, var_0.x, var_0.x, -1663f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, var_0.x, -596f), vec4<f32>(864f, -1086f, -1000f, -431f))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(404f, _wgslsmith_f_op_f32(f32(-1f) * -2018f), _wgslsmith_f_op_f32(-var_0.x), 282f)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~_wgslsmith_mod_i32(0i, u_input.a.x), ~u_input.a.x);
}

