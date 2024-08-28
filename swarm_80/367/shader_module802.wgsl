struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<u32>(55302u, 0u, 0u), 1u, Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 0u, 1u))), Struct_2(vec3<u32>(4294967295u, 21538u, 68951u), 17088u, Struct_1(vec2<bool>(false, false), vec3<u32>(49328u, 0u, 9770u))), Struct_2(vec3<u32>(0u, 2738u, 4294967295u), 4294967295u, Struct_1(vec2<bool>(false, false), vec3<u32>(8788u, 4294967295u, 61969u))), Struct_2(vec3<u32>(4294967295u, 16754u, 8455u), 0u, Struct_1(vec2<bool>(true, true), vec3<u32>(45272u, 30447u, 6985u))));

var<private> global1: array<i32, 23>;

var<private> global2: f32 = 567f;

var<private> global3: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_clamp_i32(global3.a, global1[_wgslsmith_index_u32(~(select(~u_input.b, 55690u, any(vec4<bool>(true, true, false, false))) | u_input.b), 23u)], _wgslsmith_dot_vec4_i32(vec4<i32>(~global3.a, _wgslsmith_dot_vec2_i32(vec2<i32>(39669i, global3.a), u_input.a.yx), ~2147483647i, _wgslsmith_add_i32(u_input.a.x, -1i)) ^ (-vec4<i32>(global1[_wgslsmith_index_u32(63366u, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)], 1i, 34565i) << (vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(36959i, u_input.a.x), u_input.a.x, 0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -18748i), u_input.a.xx), min(0i, 59516i)))));
    global0 = array<Struct_2, 4>();
    return true;
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_1 {
    global1 = array<i32, 23>();
    var var_0 = ~_wgslsmith_mult_vec2_u32(firstTrailingBit(firstLeadingBit(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(47490u, u_input.b))), vec2<u32>(u_input.b, 4294967295u));
    global0 = array<Struct_2, 4>();
    var var_1 = reverseBits(u_input.b) == max(_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.b, 1u, 38277u), vec4<u32>(u_input.b, var_0.x, 69511u, 1u)), var_0.x), 1u);
    let var_2 = abs(-vec4<i32>(global3.a, -24908i, ~(~global3.a), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_0.x, 23u)], select(global1[_wgslsmith_index_u32(1u, 23u)], -2147483647i, arg_3.x))));
    return Struct_1(!select(arg_3, arg_3, arg_3), abs(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 1u, u_input.b), vec3<u32>(1u, 4294967295u, 0u))) ^ abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, 1u), vec3<u32>(0u, 0u, var_0.x)))));
}

fn func_1() -> f32 {
    let var_0 = func_3(!select(vec2<bool>(false, u_input.a.x > global1[_wgslsmith_index_u32(u_input.b, 23u)]), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, true), false), false), 761f, Struct_3(-1i), !vec2<bool>(func_2(), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1652f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(102f, 1000f)), _wgslsmith_f_op_f32(241f - 781f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-111f)))))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(132f, -325f, var_0.a.x))), 1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1488f)) * _wgslsmith_f_op_f32(ceil(939f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f) - 357f), _wgslsmith_f_op_f32(f32(-1f) * -579f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(331f)))))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-969f - 925f), -425f) + _wgslsmith_f_op_f32(f32(-1f) * -2094f)) - 175f), _wgslsmith_f_op_f32(round(1000f)), 736f);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-236f, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(334f, 431f, 1969f), vec3<f32>(-1005f, var_1.x, var_1.x))) - vec3<f32>(939f, _wgslsmith_f_op_f32(select(var_1.x, -1000f, false)), _wgslsmith_f_op_f32(605f - -258f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.x, -2153f), 535f, var_1.x) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-361f, var_1.x, var_1.x), vec3<f32>(1017f, var_1.x, 500f), vec3<bool>(true, true, true))) - vec3<f32>(210f, var_1.x, -1676f)))))));
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(986f)))), _wgslsmith_f_op_f32(floor(693f))), _wgslsmith_div_f32(var_2.x, -2148f), !(!all(vec4<bool>(false, var_0.a.x, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(floor(-691f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1231f, -168f)))));
    let var_1 = func_3(func_3(vec2<bool>(u_input.a.x != (i32(-1i) * -16017i), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(round(var_0.x)))))), Struct_3(u_input.a.x), select(vec2<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(true, true, false, true))), vec2<bool>(true, true), !func_3(vec2<bool>(false, true), -736f, Struct_3(2147483647i), vec2<bool>(false, false)).a)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - -766f)) * _wgslsmith_f_op_f32(-var_0.x)), Struct_3(firstLeadingBit(65746i)), select(select(vec2<bool>(true, true), vec2<bool>(true, u_input.b > 50384u), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true && any(vec3<bool>(true, true, true)), false), select(true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), false)));
    var var_2 = vec2<i32>(i32(-1i) * -_wgslsmith_sub_i32(-22731i, 1i), -global3.a);
    var_2 = reverseBits(u_input.a.xy);
    global2 = _wgslsmith_f_op_f32(-497f * _wgslsmith_f_op_f32(abs(var_0.x)));
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(857f)), _wgslsmith_f_op_f32(f32(-1f) * -1145f), _wgslsmith_div_f32(1036f, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(447f, var_0.x, -1322f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-143f * -1656f)), 1008f, var_0.x, _wgslsmith_div_f32(var_0.x, 332f)), !(0u < (var_1.b.x & 4294967295u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - var_0.x), -988f, -1254f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, -375f, var_0.x))))) + vec4<f32>(1f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(sign(-871f)), _wgslsmith_f_op_f32(f32(-1f) * -355f))));
}

