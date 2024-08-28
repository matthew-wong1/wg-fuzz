struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: bool = true;

var<private> global2: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    global2 = Struct_2(global2.a, _wgslsmith_f_op_f32(ceil(997f)));
    let var_0 = u_input.b;
    let var_1 = Struct_1(arg_1.x);
    global0 = array<vec2<i32>, 5>();
    var var_2 = countOneBits(~firstTrailingBit(~vec3<u32>(var_0, 40024u, 1u) ^ vec3<u32>(1u, u_input.a, u_input.b)));
    return Struct_2(Struct_1(1000f), 1656f);
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    let var_0 = arg_1.xz;
    var var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(31112u, 4294967295u | reverseBits(var_0.x), var_0.x, u_input.b), ~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 1u), arg_1.yx) & 7739u, ~(~39941u), arg_1.x));
    var var_2 = global2.a;
    global2 = func_2(any(vec2<bool>(true, any(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.a, 425f, var_2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -568f, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-589f, var_2.a, arg_0) + vec3<f32>(-289f, -146f, -1299f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, 991f, -429f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, 324f, arg_0) * vec3<f32>(-1348f, -875f, 2059f)) * vec3<f32>(-961f, arg_0, 369f)) + vec3<f32>(global2.a.a, arg_0, _wgslsmith_f_op_f32(floor(arg_2.a.a)))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f) * _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(abs(global2.b)) < _wgslsmith_f_op_f32(-global2.a.a), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1711f, var_2.a, arg_2.a.a)))).b));
    return arg_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    global2 = func_2(!(true && arg_2), arg_0);
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(-abs(firstTrailingBit(-30871i)), 2147483647i), vec2<i32>(~(-u_input.c.x), -firstTrailingBit(u_input.c.x)));
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-func_2(arg_2, arg_0).a.a), vec3<u32>(u_input.b << (0u % 32u), u_input.a, 35446u), Struct_2(func_2(arg_2, arg_0).a, _wgslsmith_f_op_f32(f32(-1f) * -1664f)), u_input.d))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-938f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_1.a))))));
    var var_1 = func_2(arg_2, arg_0);
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - arg_0.x)), _wgslsmith_div_f32(326f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_1.a, _wgslsmith_f_op_f32(-var_1.b)))))));
    return Struct_2(func_2(all(select(select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, true), vec2<bool>(arg_2, false)), vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1341f, 608f, -1210f) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(843f, global2.b, -461f) + arg_0)))).a, _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1398f)), _wgslsmith_f_op_f32(-448f + _wgslsmith_f_op_f32(-354f * 948f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(172f, global2.a.a, global2.a.a))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b, global2.b, global2.a.a), vec3<f32>(-935f, global2.a.a, global2.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-276f, 236f, 140f) - vec3<f32>(global2.b, -173f, -861f)))))), Struct_1(global2.b), true);
    let var_1 = max(~_wgslsmith_div_vec4_u32(abs(abs(vec4<u32>(u_input.b, 97207u, u_input.b, u_input.a))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 34598u, 0u, 18874u) ^ vec4<u32>(u_input.b, u_input.b, 4294967295u, 1396u), ~vec4<u32>(0u, 86557u, 73912u, u_input.a))), (select(reverseBits(vec4<u32>(58386u, 81978u, 41175u, u_input.a)), vec4<u32>(u_input.a, 4299u, u_input.b, u_input.a), any(vec3<bool>(true, true, true))) | _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 21672u, 37541u) << (vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(0u, u_input.b, u_input.a, u_input.a))) | _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.b, 1u, 0u), vec4<u32>(u_input.b, 25598u, 4294967295u, u_input.a) << (vec4<u32>(0u, u_input.b, u_input.a, 71025u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 22654u), _wgslsmith_sub_vec4_u32(vec4<u32>(16972u, 132894u, 1u, u_input.a), vec4<u32>(6201u, u_input.a, 44567u, u_input.b))), ~vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a)));
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, -405f, -669f), vec3<f32>(508f, -546f, var_0.b))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a, var_0.b, var_0.b))))))), Struct_1(335f), true && select(select(var_1.x <= u_input.b, true, true), false, any(select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    let var_3 = u_input.d.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(230f, 2751f, var_2.b, _wgslsmith_div_f32(1000f, 418f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1481f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1150f * var_0.a.a)), -1026f, var_0.b) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(492f, var_2.b, var_0.a.a, -2027f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec4<i32>(~var_3, _wgslsmith_dot_vec3_i32(u_input.d, u_input.c), -48894i, firstLeadingBit(5312i))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 41584u, u_input.b, 1u), ~vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, -180f)) + _wgslsmith_div_vec2_f32(var_4.wx, vec2<f32>(var_0.b, 1615f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(252f, var_2.a.a))), _wgslsmith_f_op_vec2_f32(trunc(var_4.zw)), true)), vec2<f32>(var_2.b, global2.a.a)))), -1954f);
}

