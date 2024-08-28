struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(807f, 509f), vec2<f32>(597f, 387f), vec2<f32>(1273f, 116f), vec2<f32>(1000f, -700f), vec2<f32>(772f, 651f), vec2<f32>(368f, 279f), vec2<f32>(1901f, 477f), vec2<f32>(-1596f, -648f), vec2<f32>(337f, -750f), vec2<f32>(833f, 1157f), vec2<f32>(-206f, -493f), vec2<f32>(520f, 531f), vec2<f32>(-404f, -441f), vec2<f32>(-1000f, -831f), vec2<f32>(-177f, 145f), vec2<f32>(-1600f, -576f), vec2<f32>(-882f, 1966f), vec2<f32>(-332f, -610f), vec2<f32>(697f, 881f), vec2<f32>(615f, 369f), vec2<f32>(-828f, 1385f), vec2<f32>(-759f, -386f), vec2<f32>(105f, -486f), vec2<f32>(-1749f, 462f), vec2<f32>(-1312f, -284f));

var<private> global2: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> i32 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-777f, _wgslsmith_div_f32(-1816f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(round(-753f)), any(vec3<bool>(true, true, false))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1835f, 662f) + 993f)))));
    global1 = array<vec2<f32>, 25>();
    var var_0 = -(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-20168i, 2147483647i, u_input.b, 13976i), vec4<i32>(u_input.b, -6323i, u_input.b, u_input.b)) | firstTrailingBit(vec4<i32>(-18095i, 2147483647i, 1i, u_input.b))) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, ~(-1828i), -1i), ~(vec4<i32>(13259i, u_input.b, u_input.b, 2147483647i) << (u_input.c % vec4<u32>(32u)))));
    let var_1 = !(!(!vec3<bool>(false, true, u_input.a.x > 47698u)));
    var var_2 = vec3<i32>(-1i) * -reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.zzx, vec3<i32>(u_input.b, u_input.b, u_input.b)), var_0.zwz));
    return var_0.x;
}

fn func_2() -> Struct_2 {
    let var_0 = ~firstTrailingBit(_wgslsmith_sub_i32(u_input.b & func_3(), _wgslsmith_mod_i32(-14108i, -u_input.b)));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(u_input.a.x, 25u)]));
    let var_2 = 1122f;
    var var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(~6389i, ~abs(~(-26930i)), func_3() | (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(var_0, -1i)) >> (u_input.c.x % 32u))), ~select(~abs(vec3<i32>(2147483647i, u_input.b, u_input.b)), abs(vec3<i32>(1i, var_0, 2147483647i)), vec3<bool>(true, true, true)));
    let var_4 = select(vec3<bool>(true, true, true), select(vec3<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true))), any(vec4<bool>(false, false, true, false)), !(var_3.x < u_input.b)), select(vec3<bool>(false, true, any(vec3<bool>(false, false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), true), false), !vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true, ~1u >= ~u_input.a.x));
    return Struct_2(vec3<f32>(_wgslsmith_div_f32(var_1.x, var_2), -751f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2, -488f))), -446f))), _wgslsmith_f_op_f32(-var_2));
}

fn func_1(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2649f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b)))), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(min(var_0.b, var_0.b)), 514f, _wgslsmith_f_op_f32(1000f - var_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-315f, 423f, -405f, var_0.a.x) * vec4<f32>(1804f, var_0.a.x, var_0.a.x, -173f)) - vec4<f32>(var_0.b, -959f, 1026f, var_0.a.x))))));
    var var_2 = -(~_wgslsmith_div_vec4_i32(~(-vec4<i32>(0i, 28738i, 8203i, -2147483647i)), reverseBits(max(vec4<i32>(-2147483647i, 24453i, arg_0, -9005i), vec4<i32>(u_input.b, arg_0, arg_0, u_input.b)))));
    let var_3 = Struct_3(Struct_1(vec3<i32>(-2030i, -2147483647i, -15225i), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.yzx + var_0.a))))), vec4<u32>(0u, 15213u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1345u, u_input.c.x, 96036u, 33558u), u_input.c), abs(arg_1)), 80856u), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true))), Struct_1(~(~select(var_2.zzw, var_2.zxy, false)), vec3<f32>(-171f, var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f), var_0.b)), min(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c), ~u_input.c), ~u_input.c | ~u_input.c), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true, false, _wgslsmith_f_op_f32(f32(-1f) * -505f) != _wgslsmith_f_op_f32(-var_1.x))), var_1.ywz, -firstTrailingBit(_wgslsmith_div_i32(arg_0, u_input.b)) << (_wgslsmith_mod_u32(2062u, ~reverseBits(u_input.a.x)) % 32u));
    let var_4 = all(vec3<bool>(all(!var_3.b.d), var_3.a.d.x, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.a.b.x - _wgslsmith_f_op_f32(abs(var_1.x))))) - -931f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-220f, -943f, 2657f < _wgslsmith_f_op_f32(func_1(1i, u_input.c.x))))));
    global2 = _wgslsmith_f_op_f32(215f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1018f * -1132f) + 2944f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1942f))))));
    var var_0 = -22186i;
    global1 = array<vec2<f32>, 25>();
    let var_1 = abs(firstLeadingBit(abs(u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, firstLeadingBit(1i))), _wgslsmith_mult_vec3_i32(~(~vec3<i32>(u_input.b, -2147483647i, 1i)), max(vec3<i32>(u_input.b, u_input.b, u_input.b) >> (u_input.c.zwy % vec3<u32>(32u)), max(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)))) ^ vec3<i32>(abs(u_input.b), _wgslsmith_mult_i32(reverseBits(12763i), u_input.b), -u_input.b), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(200f + -850f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2029f, 1809f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(667f, 163f)))))), _wgslsmith_f_op_f32(trunc(1160f)), -526f), u_input.c.wy, countOneBits(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.b, u_input.b, 10377i)));
}

