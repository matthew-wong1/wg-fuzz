struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1>;

var<private> global1: array<vec2<i32>, 8>;

var<private> global2: array<u32, 26> = array<u32, 26>(1u, 21863u, 4294967295u, 11766u, 100128u, 0u, 1u, 396u, 54052u, 26994u, 4294967295u, 11372u, 1u, 0u, 16443u, 4294967295u, 39941u, 61910u, 4294967295u, 0u, 4294967295u, 40673u, 1u, 5739u, 81741u, 74024u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, arg_0), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(284f + 563f), arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-732f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, 1092f, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0, arg_0, 759f)))), !(false | any(vec2<bool>(false, true))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-913f - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(round(-590f)), _wgslsmith_div_f32(719f, _wgslsmith_f_op_f32(f32(-1f) * -2041f)), -631f) + vec4<f32>(arg_0, -419f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(arg_0 * 461f)), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(floor(227f)), true)))));
    global0 = array<vec4<bool>, 1>();
    global1 = array<vec2<i32>, 8>();
    global2 = array<u32, 26>();
    let var_1 = u_input.c.xzx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    global2 = array<u32, 26>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)) + -760f), -1000f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(arg_2.a * arg_1.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2479f, -727f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2932f, arg_2.a))))), arg_3.a, arg_2.a));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(func_2(arg_2.a, ~vec2<u32>(u_input.d, arg_2.b)))), ~_wgslsmith_dot_vec4_u32(~firstLeadingBit(u_input.c), ~u_input.c | u_input.c));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-383f)), -383f) * -609f)));
    return _wgslsmith_mod_vec4_i32(~min(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.b.x, 1i, -1i, u_input.a.x)), ~vec4<i32>(-1i, 51194i, -79255i, 2147483647i), vec4<i32>(-38812i, 0i, -18732i, u_input.b.x)), -(vec4<i32>(u_input.b.x, 39240i, -40235i, u_input.a.x) << (u_input.c % vec4<u32>(32u)))), -vec4<i32>(-1i, u_input.b.x, u_input.a.x, _wgslsmith_sub_i32(firstTrailingBit(u_input.a.x), ~1i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32, arg_3: f32) -> bool {
    global2 = array<u32, 26>();
    global1 = array<vec2<i32>, 8>();
    global0 = array<vec4<bool>, 1>();
    var var_0 = Struct_1(arg_1, _wgslsmith_div_u32(arg_2, countOneBits(0u)));
    var var_1 = vec2<bool>(true, 1i != _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(u_input.a.x), -u_input.b.x), max(u_input.b, reverseBits(global1[_wgslsmith_index_u32(0u, 8u)]))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(select(vec4<i32>(u_input.b.x, u_input.b.x, 56447i, -(~27822i)), -func_1(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(80264u, 26u)], 26u)], 26u)], 26u)], u_input.c.x) & u_input.c.wy, Struct_1(222f, 4294967295u), Struct_1(1452f, u_input.c.x), Struct_1(-529f, global2[_wgslsmith_index_u32(4294967295u, 26u)])), false), ~(-firstTrailingBit(~vec4<i32>(-44448i, u_input.b.x, u_input.b.x, u_input.b.x))));
    var var_1 = ~(~_wgslsmith_mod_u32(~(u_input.c.x >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 26u)], 26u)] % 32u)), _wgslsmith_dot_vec2_u32(u_input.c.xx, ~u_input.c.zx)));
    var var_2 = all(!(!vec3<bool>(any(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 1u)]), true, func_3(1u, -1872f, u_input.c.x, 395f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(750f, 1287f, 1023f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-704f, 672f, 900f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1326f, _wgslsmith_f_op_f32(abs(1178f)), _wgslsmith_f_op_f32(1795f + -511f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(555f + 500f), _wgslsmith_f_op_f32(-1137f + -889f)))));
    var var_4 = select(vec3<bool>(all(vec4<bool>(true, true, true, true)) && true, false, select(true, true, !all(vec2<bool>(true, true)))), select(select(vec3<bool>(false, func_3(26357u, 683f, global2[_wgslsmith_index_u32(0u, 26u)], -1000f), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)), !vec3<bool>(var_3.x >= -177f, false, true), vec3<bool>(!(u_input.a.x > 2147483647i), false, false)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, u_input.c.x > 35233u, false), vec3<bool>(true, select(true, false, false), any(vec3<bool>(true, false, true))))));
    global0 = array<vec4<bool>, 1>();
    let var_5 = u_input.c;
    var var_6 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-648f, 1674f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(306f, -1000f), _wgslsmith_f_op_f32(-var_3.x)))), ~_wgslsmith_div_u32(~23270u, 24825u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.xx * vec2<f32>(var_3.x, _wgslsmith_f_op_f32(sign(-338f))))), vec2<i32>(-33985i, reverseBits(4316i)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-1595f * _wgslsmith_f_op_f32(abs(var_3.x))), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(f32(-1f) * -787f)))));
}

