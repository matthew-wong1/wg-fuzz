struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = select(-u_input.a.zz, u_input.a.ww, !all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)) == (~(~u_input.e) >= ~33914u));
    let var_1 = -1058f;
    var var_2 = 1i;
    var_0 = _wgslsmith_sub_vec2_i32(u_input.b.yz, u_input.b.zy);
    global0 = array<vec3<i32>, 14>();
    return select(vec2<bool>(any(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)), all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), !vec2<bool>(all(vec3<bool>(true, true, true)), true), select(vec2<bool>(true || any(vec3<bool>(false, false, false)), true), !vec2<bool>(select(true, false, false), select(true, true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), true)));
}

fn func_2() -> vec4<f32> {
    let var_0 = ~(~40537u);
    let var_1 = vec4<bool>(false, u_input.b.x <= (-1i ^ (~u_input.c ^ _wgslsmith_sub_i32(u_input.c, 0i))), all(select(func_3(1i), select(vec2<bool>(false, false), vec2<bool>(true, true), func_3(-3241i)), any(vec3<bool>(true, false, true)) || true)), any(!vec4<bool>(true, select(true, false, true), select(true, true, true), all(vec2<bool>(false, true)))));
    var var_2 = Struct_2(any(func_3(max(u_input.c, 12527i))));
    var_2 = Struct_2(!(!(u_input.b.x != ~u_input.b.x)));
    let var_3 = Struct_2(!(!any(!var_1.yy)));
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-225f, 822f, 500f, 1243f)), vec4<f32>(_wgslsmith_f_op_f32(sign(-959f)), _wgslsmith_f_op_f32(trunc(1128f)), _wgslsmith_f_op_f32(286f - 1205f), 1341f))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-765f, 395f, 153f, 276f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2470f, -555f, -837f, 971f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, 1221f, 335f, 565f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1041f, -597f, -1734f, -333f) + vec4<f32>(688f, 1398f, -525f, 1000f)), _wgslsmith_f_op_vec4_f32(func_2()))))))));
    global0 = array<vec3<i32>, 14>();
    let var_1 = Struct_3(Struct_1(~u_input.b.x, (u_input.e >= ~u_input.e) | true, u_input.d, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))))), !(!any(vec4<bool>(false, true, false, false)))), 759u ^ u_input.e, Struct_1(-u_input.c, true, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 47635u), vec2<u32>(28626u, u_input.d))), _wgslsmith_f_op_f32(-var_0.x), true), Struct_2(!all(vec3<bool>(true, true, true))));
    global0 = array<vec3<i32>, 14>();
    global0 = array<vec3<i32>, 14>();
    return vec3<bool>(select(false, false, false), var_1.a.e, false);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = arg_0.x;
    var var_1 = !vec4<bool>(true, true, arg_0.x, true);
    var var_2 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-(arg_1.a | arg_1.a), u_input.b.x), 27195i), true, ~u_input.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-183f * 487f))) - _wgslsmith_f_op_f32(exp2(arg_1.d))), arg_0.x);
    global0 = array<vec3<i32>, 14>();
    return Struct_3(arg_1, u_input.e, arg_1, Struct_2(true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(-678f)));
    let var_1 = vec4<u32>(~max(1u, u_input.d >> (u_input.e % 32u)), ~47446u, ~u_input.d, ~(~2542u)) >> (vec4<u32>(4294967295u, u_input.e << (5181u % 32u), 31635u, ~(~24725u)) % vec4<u32>(32u));
    let var_2 = func_4(select(!func_1(), vec3<bool>(any(func_3(u_input.c)), any(vec4<bool>(false, true, false, false)), true), true), Struct_1(~firstLeadingBit(-1i), select((u_input.e >= u_input.e) | all(vec4<bool>(true, true, true, false)), abs(33996i) < ~u_input.a.x, var_0 < _wgslsmith_f_op_f32(exp2(var_0))), 44222u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-326f - _wgslsmith_div_f32(-1217f, 768f))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0, 545f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0, -485f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1164f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2()).ww))));
    let var_3 = -279f;
    let var_4 = func_4(vec3<bool>((_wgslsmith_f_op_f32(f32(-1f) * -1669f) >= _wgslsmith_f_op_f32(round(var_0))) || var_2.d.a, ~(u_input.a.x << (41643u % 32u)) <= ~(-7599i), all(vec4<bool>(all(vec3<bool>(var_2.d.a, true, var_2.d.a)), true, var_2.a.b, any(vec3<bool>(true, false, var_2.a.b))))), Struct_1(-44238i, !(var_2.d.a && true), func_4(select(vec3<bool>(false, var_2.d.a, var_2.a.e), vec3<bool>(false, false, false), false), Struct_1(var_2.a.a, false, 25164u, -928f, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-292f, 351f) - vec2<f32>(-1409f, var_2.c.d))).b & 1u, _wgslsmith_f_op_vec4_f32(func_2()).x, !(any(vec3<bool>(false, true, var_2.c.e)) == true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 119f))));
    var var_5 = var_3;
    global0 = array<vec3<i32>, 14>();
    var var_6 = !var_2.d.a;
    let var_7 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(196f, var_2.c.d) * vec2<f32>(var_4.c.d, -1859f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.d))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_4.a.d + _wgslsmith_f_op_f32(-1228f * var_0)), 982f, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.c.d)), var_7.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-289f * -1000f) + 1903f)))));
}

