struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true));

var<private> global1: Struct_4 = Struct_4(true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, -1672f))))))));
    global1 = Struct_4(true);
    var var_1 = ~(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, 1u) ^ vec2<u32>(21449u, 1u))));
    var var_2 = vec2<i32>(u_input.b, 0i);
    global1 = Struct_4(false);
    return _wgslsmith_sub_vec2_u32(~reverseBits(vec2<u32>(~u_input.a, ~1u)), ~select(abs(~vec2<u32>(u_input.a, 49640u)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.a, 4294967295u)), firstTrailingBit(vec2<u32>(0u, u_input.a))), select(!vec2<bool>(global1.a, global1.a), select(vec2<bool>(false, false), vec2<bool>(global1.a, global1.a), vec2<bool>(false, true)), !global1.a)));
}

fn func_2() -> vec4<u32> {
    var var_0 = vec2<u32>(max(abs(_wgslsmith_div_u32(13958u, u_input.a)) << (_wgslsmith_add_u32(14861u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a))) % 32u), ~u_input.a), 0u);
    var_0 = func_3();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1623f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
    let var_3 = Struct_3(-18734i, 3987u == _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, 1u) ^ max(vec3<u32>(var_0.x, 0u, u_input.a), vec3<u32>(67001u, var_0.x, var_0.x)), vec3<u32>(4294967295u, 1u, var_0.x)), Struct_1(min(vec2<u32>(48365u, var_0.x), ~vec2<u32>(u_input.a, 0u))), Struct_2(Struct_1(vec2<u32>(abs(u_input.a), 1u)), any(vec4<bool>(global1.a, global1.a, false & global1.a, all(vec2<bool>(false, false)))), vec3<f32>(_wgslsmith_div_f32(var_1, -490f), var_1, -2441f), any(select(vec2<bool>(global1.a, false), vec2<bool>(global1.a, global1.a), select(vec2<bool>(global1.a, false), vec2<bool>(true, true), false))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2741f, var_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-818f, var_1) - vec2<f32>(var_1, var_1)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1, 326f))))))), ~_wgslsmith_clamp_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(u_input.b, -1i, 11585i))), select(vec3<i32>(40729i, u_input.b, 0i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(26162i, -34581i, u_input.b)), true), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(0i, -1i, u_input.b))));
    return min(vec4<u32>(~reverseBits(~var_3.c.a.x), 112008u, _wgslsmith_add_u32(0u, 6557u), 1u), vec4<u32>(54373u, var_0.x, u_input.a, ~min(4294967295u, max(37391u, 68476u))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec4<i32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1118f, arg_1, -373f, arg_1) + vec4<f32>(arg_1, arg_1, -1239f, arg_1)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 1289f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1085f))), -588f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(max(1245f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-278f, arg_1, -686f, arg_1) * vec4<f32>(1259f, 1635f, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 297f, arg_1, -662f)))))));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1264f * 421f), _wgslsmith_f_op_f32(1044f * -620f), _wgslsmith_f_op_f32(556f * 320f), _wgslsmith_f_op_f32(floor(-955f)))) - _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_i32(u_input.b, arg_0), _wgslsmith_f_op_f32(-331f + _wgslsmith_f_op_f32(f32(-1f) * -930f)), vec4<i32>(2147483647i, -4457i, arg_0, 14666i) << (func_2() % vec4<u32>(32u))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2317f, 2634f, -1444f, 1629f), _wgslsmith_div_vec4_f32(vec4<f32>(1630f, -457f, -1908f, 341f), vec4<f32>(946f, 1721f, 234f, -444f))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1167f, 299f, -836f, 938f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1566f, -322f, 396f, 628f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2380f, -988f, -891f, -515f))) * vec4<f32>(-1000f, -290f, -265f, -805f)))));
    var var_1 = i32(-1i) * -2147483647i;
    let var_2 = Struct_3(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_0, -2147483647i)), vec2<i32>(_wgslsmith_sub_i32(-2147483647i, ~u_input.b), (u_input.b << (u_input.a % 32u)) << (28550u % 32u))), func_3().x <= 63402u, Struct_1(select(vec2<u32>(0u, u_input.a) | vec2<u32>(43162u, 19794u), ~vec2<u32>(111783u, u_input.a), vec2<bool>(global1.a, any(vec2<bool>(true, global1.a))))), Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(42316u, u_input.a)) | ~vec2<u32>(u_input.a, 12050u)), 4294967295u < func_2().x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.xyx))))), false, vec2<f32>(-383f, 448f)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0, arg_0) >> (vec3<u32>(21902u, 22988u, 1u) % vec3<u32>(32u)), ~vec3<i32>(arg_0, 2147483647i, arg_0)) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(21156i, arg_0, 1i), vec3<i32>(1i, u_input.b, arg_0)), select(1i, u_input.b, true), abs(-21237i)), vec3<i32>(arg_0, arg_0, -8763i)));
    let var_3 = firstTrailingBit(var_2.e);
    var var_4 = var_2;
    return Struct_4(var_2.b);
}

fn func_5(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_4 {
    global1 = arg_2;
    var var_0 = _wgslsmith_clamp_vec3_i32(countOneBits((vec3<i32>(-1i) * -vec3<i32>(u_input.b, -2147483647i, arg_1.x)) ^ vec3<i32>(countOneBits(14123i), 0i, reverseBits(11511i))), vec3<i32>(2147483647i, 56003i, arg_1.x), max(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b, -2147483647i), vec3<i32>(u_input.b, arg_1.x, arg_1.x)), vec3<i32>(~reverseBits(-1i), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, 88979i)), abs(vec2<i32>(0i, arg_1.x))), -2857i)));
    var var_1 = u_input.a;
    let var_2 = Struct_3(u_input.b, !(1f >= _wgslsmith_f_op_f32(floor(1f))), Struct_1(~vec2<u32>(1u, ~1u)), Struct_2(Struct_1(max(vec2<u32>(u_input.a, 81686u), vec2<u32>(74777u, 4294967295u)) & (vec2<u32>(522u, 44447u) & vec2<u32>(u_input.a, u_input.a))), any(select(global0[_wgslsmith_index_u32(u_input.a, 25u)], global0[_wgslsmith_index_u32(31666u, 25u)], u_input.b < arg_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1947f), 435f, _wgslsmith_f_op_f32(ceil(138f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 402f, -926f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1990f, 765f, -1521f), vec3<f32>(-104f, -1320f, 860f))))), true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(-376f))), _wgslsmith_div_vec2_f32(vec2<f32>(-566f, -367f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1005f, 421f)))))), _wgslsmith_add_vec3_i32(select(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, -9073i, u_input.b), vec3<i32>(u_input.b, -1i, -57571i)), vec3<i32>(-12088i, u_input.b, 949i) >> (vec3<u32>(79574u, u_input.a, 3899u) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(-35353i, 1i, 2147483647i), vec3<i32>(1i, var_0.x, u_input.b)) ^ -vec3<i32>(arg_1.x, -14123i, var_0.x), !arg_0), _wgslsmith_add_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, var_0.x, var_0.x), vec3<i32>(1i, 30234i, -2147483647i)), vec3<i32>(var_0.x, -24518i, 0i) >> (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u)), true), _wgslsmith_sub_vec3_i32(min(vec3<i32>(96199i, arg_1.x, -67060i), vec3<i32>(0i, arg_1.x, -2147483647i)), vec3<i32>(var_0.x, u_input.b, -35856i) >> (vec3<u32>(u_input.a, 8973u, 1u) % vec3<u32>(32u))))));
    let var_3 = u_input.b;
    return Struct_4(var_3 > (reverseBits(abs(arg_1.x)) ^ -26102i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(247f, 271f)), _wgslsmith_f_op_f32(f32(-1f) * -2416f), _wgslsmith_f_op_f32(round(156f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1496f, 1186f, -186f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1497f, -3160f, 114f) + vec3<f32>(327f, -308f, 660f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_1 = max(71892u, u_input.a);
    global0 = array<vec4<bool>, 25>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-104f + _wgslsmith_f_op_f32(f32(-1f) * -931f)), _wgslsmith_f_op_f32(trunc(-2539f)))), var_0.x, _wgslsmith_f_op_f32(round(-1000f)));
    global1 = func_5(true, vec2<i32>(u_input.b, 2147483647i), func_1(~reverseBits(_wgslsmith_div_i32(2147483647i, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().x);
}

