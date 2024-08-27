struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1028f, _wgslsmith_f_op_f32(sign(arg_0.a.a.x)))), vec2<i32>(~(-1i), 1i)), arg_0.a, arg_1.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_0.c, var_0.c)), 1488f)), 1654f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(2366f * 1596f))))));
    let var_2 = select(arg_2, !(!(!arg_2)), vec4<bool>(_wgslsmith_mult_u32(max(4294967295u, 4294967295u), u_input.a.x) > u_input.a.x, arg_2.x | true, true, !arg_2.x));
    global0 = false;
    let var_3 = 197f;
    return 16414u;
}

fn func_3() -> f32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-916f))))), 30788i);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1000f, var_0.a)), _wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)))), firstLeadingBit(vec2<i32>(~var_0.b, select(21793i, 1i, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, var_0.a))))), vec2<i32>(var_0.b, -18810i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(286f))))) - var_0.a));
    global0 = true;
    var var_2 = !(!select(true, true, false));
    let var_3 = vec3<bool>(all(vec2<bool>(all(vec2<bool>(false, false)), false)), select(true, firstTrailingBit(var_0.b) >= _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.b.b.x, var_1.a.b.x, var_1.b.b.x), vec4<i32>(var_1.a.b.x, -34687i, var_1.b.b.x, var_0.b)), ~var_0.b), select(true, all(vec4<bool>(false, true, false, true)), any(vec3<bool>(true, true, true)))), true);
    return var_0.a;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-599f * -997f)) + _wgslsmith_f_op_f32(318f * -1557f)) * 1031f), -1113f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1840f))));
    global0 = true;
    global0 = arg_1;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1075f, 932f))), ~(-vec2<i32>(arg_2, -2147483647i))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -1278f)))) - _wgslsmith_f_op_vec2_f32(var_0.yx * var_0.xz)), select(~vec2<i32>(arg_2, 49201i), vec2<i32>(min(1i, arg_2), _wgslsmith_clamp_i32(arg_2, -1i, -44227i)), all(vec2<bool>(true, true)) || false)), var_0.x);
    let var_2 = 80338u;
    return _wgslsmith_f_op_f32(f32(-1f) * -150f);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: f32) -> vec2<bool> {
    let var_0 = ~max(abs(u_input.a.wz), ~u_input.a.yx);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), 1290f, 1f));
    global0 = _wgslsmith_dot_vec4_i32(abs(max(select(vec4<i32>(8646i, 41821i, arg_0.x, arg_0.x), arg_0, vec4<bool>(false, true, false, false)), vec4<i32>(2147483647i, arg_1, arg_0.x, 2147483647i))), vec4<i32>(arg_0.x, -countOneBits(-2147483647i), abs(-35175i), 10290i)) > -arg_1;
    let var_2 = -arg_0;
    global0 = !any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, arg_0.x >= -2389i)));
    return vec2<bool>(!(!(u_input.a.x >= ~var_0.x)), all(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(4074i, -12418i, -20250i)) >> (vec3<u32>(2845u, u_input.a.x, 10162u) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(1i, 22486i, 12189i)))));
    global0 = true;
    var var_1 = !select(vec4<bool>(all(vec3<bool>(true, true, true)), 4294967295u >= func_1(Struct_2(Struct_1(vec2<f32>(-1003f, -742f), vec2<i32>(var_0.x, -2147483647i)), Struct_1(vec2<f32>(1000f, 1578f), vec2<i32>(-26272i, var_0.x)), -1000f), Struct_4(2157f, 2147483647i), vec4<bool>(false, false, true, true), -501f), true, select(true, false, true)), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), true), !vec4<bool>(false, true, true, all(vec4<bool>(true, true, false, false))));
    global0 = true;
    let var_2 = func_4(min(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, -2147483647i, var_0.x), vec4<i32>(var_0.x, -7836i, var_0.x, var_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), var_0.yz), ~var_0.x, min(3177i, 0i)), ~(firstTrailingBit(vec4<i32>(0i, -1i, -1i, -5764i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(0i, var_0.x, var_0.x, -68007i), vec4<i32>(-1i, var_0.x, var_0.x, 8346i)))), -6018i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(4294967295u, var_1.x, var_0.x)) * -576f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(655f)))))));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-466f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(148f + -1000f)))), 376f, true)), var_0.x);
    var_1 = select(!select(!select(vec4<bool>(var_1.x, var_2.x, false, true), vec4<bool>(false, true, false, var_1.x), vec4<bool>(false, true, var_2.x, var_1.x)), select(!vec4<bool>(true, true, var_2.x, false), vec4<bool>(var_1.x, false, var_2.x, true), true), u_input.a.x < ~45650u), !select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(true, any(vec3<bool>(false, var_1.x, var_2.x)), !var_1.x, var_2.x), var_2.x), select(select(select(select(vec4<bool>(true, false, var_1.x, var_2.x), vec4<bool>(true, var_1.x, var_1.x, true), var_2.x), vec4<bool>(var_1.x, var_1.x, false, var_2.x), !vec4<bool>(true, var_1.x, var_1.x, var_1.x)), vec4<bool>(var_1.x, true, 731f > var_3.a, true), var_2.x), vec4<bool>(!var_2.x, var_1.x, any(select(vec3<bool>(var_2.x, false, var_1.x), var_1.zyw, vec3<bool>(var_2.x, var_2.x, true))), var_1.x), !(!select(vec4<bool>(true, true, var_2.x, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_1.x))));
    var var_4 = ~max(u_input.a.yxx, vec3<u32>(func_1(Struct_2(Struct_1(vec2<f32>(var_3.a, 680f), vec2<i32>(var_3.b, var_3.b)), Struct_1(vec2<f32>(-843f, var_3.a), var_0.zz), 414f), var_3, vec4<bool>(false, var_1.x, true, true), _wgslsmith_f_op_f32(select(var_3.a, var_3.a, true))), ~22207u ^ _wgslsmith_div_u32(102163u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 33266u, 1u, 18334u), ~vec4<u32>(122210u, 144299u, u_input.a.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(func_3()), -186f, 1f, _wgslsmith_f_op_f32(var_3.a - -1406f)), ~var_4.x, vec2<u32>(~(~4294967295u << (~var_4.x % 32u)), countOneBits(countOneBits(~4294967295u))));
}

