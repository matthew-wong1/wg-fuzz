struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26>;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec3<u32>(0u, 1u, 4294967295u)), Struct_2(vec3<u32>(127152u, 0u, 1u)), Struct_2(vec3<u32>(66895u, 4294967295u, 39983u)), Struct_2(vec3<u32>(1u, 1u, 45378u)), Struct_2(vec3<u32>(13261u, 4294967295u, 1u)), Struct_2(vec3<u32>(4294967295u, 34276u, 1u)), Struct_2(vec3<u32>(23634u, 93857u, 1u)), Struct_2(vec3<u32>(100894u, 1u, 3701u)), Struct_2(vec3<u32>(0u, 0u, 0u)), Struct_2(vec3<u32>(15439u, 13115u, 58072u)), Struct_2(vec3<u32>(45910u, 4294967295u, 1u)), Struct_2(vec3<u32>(56218u, 9995u, 9838u)), Struct_2(vec3<u32>(36579u, 41136u, 0u)), Struct_2(vec3<u32>(59069u, 1u, 0u)), Struct_2(vec3<u32>(4294967295u, 20926u, 49254u)), Struct_2(vec3<u32>(4294967295u, 77067u, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 29216u)));

var<private> global2: vec2<i32> = vec2<i32>(1i, 2147483647i);

var<private> global3: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(71263u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(5576u, 21316u));

var<private> global4: array<Struct_5, 32> = array<Struct_5, 32>(Struct_5(vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec2<i32>(1i, -55607i), vec2<bool>(true, true)), Struct_5(vec4<bool>(true, true, false, false), vec2<bool>(true, false), vec2<i32>(-7438i, i32(-2147483648)), vec2<bool>(false, true)), Struct_5(vec4<bool>(false, true, false, true), vec2<bool>(false, true), vec2<i32>(-31282i, -28362i), vec2<bool>(false, true)), Struct_5(vec4<bool>(false, true, false, false), vec2<bool>(true, true), vec2<i32>(-15766i, -1i), vec2<bool>(true, false)), Struct_5(vec4<bool>(false, true, true, true), vec2<bool>(false, true), vec2<i32>(5931i, i32(-2147483648)), vec2<bool>(false, true)), Struct_5(vec4<bool>(true, true, false, true), vec2<bool>(false, false), vec2<i32>(7730i, i32(-2147483648)), vec2<bool>(false, false)), Struct_5(vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec2<i32>(0i, i32(-2147483648)), vec2<bool>(true, false)), Struct_5(vec4<bool>(true, false, false, true), vec2<bool>(false, true), vec2<i32>(4269i, 0i), vec2<bool>(false, true)), Struct_5(vec4<bool>(false, true, true, true), vec2<bool>(false, false), vec2<i32>(-1i, 0i), vec2<bool>(false, true)), Struct_5(vec4<bool>(false, false, true, false), vec2<bool>(false, false), vec2<i32>(30895i, 2147483647i), vec2<bool>(true, true)), Struct_5(vec4<bool>(false, true, false, true), vec2<bool>(false, false), vec2<i32>(-77693i, -38367i), vec2<bool>(true, true)), Struct_5(vec4<bool>(true, true, true, true), vec2<bool>(false, false), vec2<i32>(1i, -48406i), vec2<bool>(true, false)), Struct_5(vec4<bool>(false, false, true, true), vec2<bool>(true, false), vec2<i32>(-52385i, 1i), vec2<bool>(false, false)), Struct_5(vec4<bool>(true, true, true, false), vec2<bool>(true, true), vec2<i32>(-38551i, 2147483647i), vec2<bool>(false, false)), Struct_5(vec4<bool>(true, true, true, false), vec2<bool>(false, false), vec2<i32>(0i, 25312i), vec2<bool>(false, false)), Struct_5(vec4<bool>(true, true, false, false), vec2<bool>(false, false), vec2<i32>(-6434i, -14306i), vec2<bool>(false, true)), Struct_5(vec4<bool>(true, true, true, false), vec2<bool>(true, false), vec2<i32>(0i, -1i), vec2<bool>(true, false)), Struct_5(vec4<bool>(true, false, true, false), vec2<bool>(false, true), vec2<i32>(11878i, 13459i), vec2<bool>(true, true)), Struct_5(vec4<bool>(true, true, true, false), vec2<bool>(false, false), vec2<i32>(12340i, -23242i), vec2<bool>(true, false)), Struct_5(vec4<bool>(false, false, true, true), vec2<bool>(true, false), vec2<i32>(-1i, 1i), vec2<bool>(true, true)), Struct_5(vec4<bool>(true, true, true, true), vec2<bool>(true, true), vec2<i32>(-20950i, -1i), vec2<bool>(false, false)), Struct_5(vec4<bool>(false, true, false, false), vec2<bool>(true, false), vec2<i32>(2101i, 45640i), vec2<bool>(true, true)), Struct_5(vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec2<i32>(-1i, 2147483647i), vec2<bool>(true, false)), Struct_5(vec4<bool>(false, true, false, false), vec2<bool>(false, true), vec2<i32>(0i, -1i), vec2<bool>(true, false)), Struct_5(vec4<bool>(true, true, false, false), vec2<bool>(false, true), vec2<i32>(i32(-2147483648), -47240i), vec2<bool>(true, false)), Struct_5(vec4<bool>(false, false, false, true), vec2<bool>(false, true), vec2<i32>(1i, i32(-2147483648)), vec2<bool>(true, false)), Struct_5(vec4<bool>(true, true, false, true), vec2<bool>(true, true), vec2<i32>(1i, 0i), vec2<bool>(false, true)), Struct_5(vec4<bool>(true, false, false, true), vec2<bool>(false, true), vec2<i32>(0i, 22495i), vec2<bool>(true, false)), Struct_5(vec4<bool>(false, false, false, false), vec2<bool>(true, true), vec2<i32>(-7639i, 2147483647i), vec2<bool>(true, true)), Struct_5(vec4<bool>(false, false, true, true), vec2<bool>(false, false), vec2<i32>(-30899i, i32(-2147483648)), vec2<bool>(true, true)), Struct_5(vec4<bool>(false, false, true, true), vec2<bool>(false, false), vec2<i32>(1i, -24583i), vec2<bool>(false, false)), Struct_5(vec4<bool>(false, false, false, false), vec2<bool>(true, false), vec2<i32>(1i, 1i), vec2<bool>(true, true)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1559f, arg_2.a, 1000f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a, -1418f, -1000f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(711f, -1645f, arg_2.a)))), vec3<f32>(-423f, -456f, arg_2.a)));
    return _wgslsmith_f_op_f32(abs(var_0.x));
}

fn func_1() -> f32 {
    let var_0 = false && (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.b), ~vec3<u32>(0u, u_input.b, u_input.a)), u_input.b) == u_input.a);
    let var_1 = 75943u;
    global1 = array<Struct_2, 17>();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-545f + _wgslsmith_f_op_f32(-993f * 289f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec3_u32(vec3<u32>(~var_1, u_input.b, u_input.b & 0u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 18051u, 1u), vec3<u32>(u_input.a, u_input.b, 13802u)) << (~vec3<u32>(u_input.b, 4294967295u, 0u) % vec3<u32>(32u))), vec3<u32>(u_input.b ^ var_1, _wgslsmith_div_u32(4294967295u, u_input.a), 42672u) << (abs(vec3<u32>(u_input.b, 0u, u_input.b) | vec3<u32>(u_input.a, var_1, var_1)) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(var_1, select(var_1, 10732u, false)), 26u)]))));
    let var_3 = select(u_input.a, ~_wgslsmith_mult_u32(4294967295u, ~_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(var_1, 3u)], vec2<u32>(var_1, 1u))), var_0);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-678f, _wgslsmith_f_op_f32(-968f - -852f)) + _wgslsmith_f_op_f32(499f * _wgslsmith_f_op_f32(-407f + 734f))) + 1262f)));
}

fn func_3() -> bool {
    global2 = firstTrailingBit(vec2<i32>(global2.x, u_input.d)) & select(vec2<i32>(54163i, u_input.c), _wgslsmith_add_vec2_i32(vec2<i32>(global2.x | 44916i, select(23056i, 0i, false)), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(global2.x, 2147483647i), vec2<i32>(u_input.d, u_input.c), false), select(vec2<i32>(global2.x, global2.x), vec2<i32>(-3282i, 83339i), vec2<bool>(true, true)), vec2<i32>(2147483647i, 1i) ^ vec2<i32>(-2147483647i, global2.x))), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))));
    global2 = _wgslsmith_div_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(global2.x, global2.x), vec2<i32>(global2.x, 101363i), vec2<bool>(false, false)), ~vec2<i32>(u_input.c, u_input.c)), ~(~u_input.d)), vec2<i32>(u_input.d, _wgslsmith_clamp_i32(u_input.c & -global2.x, countOneBits(-18737i), 4195i)));
    var var_0 = u_input.a;
    global4 = array<Struct_5, 32>();
    var var_1 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)), u_input.a <= u_input.b, true, true), true));
    return any(vec4<bool>(true, true, var_1.x, true | (var_1.x || var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(func_1()) >= 854f, !func_3());
    global3 = array<vec2<u32>, 3>();
    var var_1 = Struct_1(193f, countOneBits(u_input.b) >> (_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, u_input.b)), ~(global3[_wgslsmith_index_u32(22830u, 3u)] << (global3[_wgslsmith_index_u32(u_input.a, 3u)] % vec2<u32>(32u)))) % 32u), select(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(false, select(true, false, false), var_0.x, true), !all(var_0.xz)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_f_op_f32(f32(-1f) * -1974f))))), var_1.a);
    var var_3 = select(var_1.c.zzx, vec3<bool>(!all(var_1.c.yxw), false, !all(var_1.c)), !var_0.x);
    var var_4 = -696f;
    let var_5 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-var_1.a)))), vec4<u32>(u_input.a, abs(u_input.b), select(_wgslsmith_mult_u32(var_1.b ^ 47427u, ~var_1.b), _wgslsmith_mod_u32(u_input.a, ~u_input.b), true), abs(7211u)), select(vec4<bool>(-2147483647i <= global2.x, any(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_3.x), false)), all(vec3<bool>(false, true, true)), false), vec4<bool>(any(var_0.zx), !(!var_0.x), all(vec3<bool>(true, true, true)), true), true), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, -2147483647i) >> (global3[_wgslsmith_index_u32(1u, 3u)] % vec2<u32>(32u)), -vec2<i32>(-1i, 2147483647i)) << ((~var_1.b >> (u_input.a % 32u)) % 32u)), Struct_2(vec3<u32>(countOneBits(u_input.b & u_input.b), var_1.b, min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.b), vec3<u32>(var_1.b, u_input.b, u_input.b)), reverseBits(27063u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-845f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -157f), 216f), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(865f + var_5.a))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<u32>(var_1.b, var_1.b, 1u), vec3<u32>(34189u, u_input.a, var_5.e.a.x), Struct_3(var_1.a, var_5.b, var_1.c, -2147483647i, Struct_2(vec3<u32>(24655u, u_input.b, 5016u))))))), var_5.c.x)), _wgslsmith_clamp_vec2_i32(abs(~vec2<i32>(-19621i, var_5.d)), vec2<i32>(_wgslsmith_sub_i32(global2.x & var_5.d, 1i), u_input.c), vec2<i32>(var_5.d ^ min(var_5.d, u_input.c), ~(0i | global2.x))), var_1.a, var_5.e.a);
}

