struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(1169f, 525f, 366f, 1183f, 969f, 1716f, -1555f, 1000f);

var<private> global1: array<vec2<f32>, 27>;

var<private> global2: vec3<bool>;

var<private> global3: f32 = -363f;

var<private> global4: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-369f, -249f), vec2<f32>(-542f, -108f), vec2<f32>(-1789f, -1233f), vec2<f32>(-997f, 527f), vec2<f32>(-705f, -106f), vec2<f32>(-225f, -1259f), vec2<f32>(-1744f, 421f), vec2<f32>(1604f, 1270f), vec2<f32>(983f, -549f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> u32 {
    return u_input.c.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = (~abs(~vec3<u32>(u_input.c.x, 17606u, u_input.b)) & vec3<u32>(_wgslsmith_div_u32(u_input.b, u_input.b >> (u_input.b % 32u)), func_2(), ~(~4294967295u))) ^ ~select(~(~vec3<u32>(u_input.c.x, 35149u, 39171u)), ~(~vec3<u32>(u_input.c.x, u_input.b, u_input.b)), global2.x & true);
    global4 = array<vec2<f32>, 9>();
    global2 = !select(vec3<bool>(~var_0.x < ~25403u, global2.x, global2.x), !select(vec3<bool>(true, global2.x, global2.x), select(vec3<bool>(true, false, global2.x), vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, true, true)), global2.x), select(vec3<bool>(true, true, true), vec3<bool>(true, 27715i > u_input.a, global2.x && global2.x), global2.x));
    global1 = array<vec2<f32>, 27>();
    var var_1 = Struct_4(4294967295u, -_wgslsmith_sub_vec4_i32(reverseBits(~vec4<i32>(0i, 7845i, 1i, u_input.a)), min(-vec4<i32>(20404i, u_input.a, u_input.a, -1147i), abs(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1191f, arg_1.a.x, 2153f, global0[_wgslsmith_index_u32(var_0.x, 8u)]) * vec4<f32>(342f, -1016f, global0[_wgslsmith_index_u32(0u, 8u)], -523f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(418f, arg_1.a.x, -813f, arg_1.a.x))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.x, -628f, arg_1.a.x, global0[_wgslsmith_index_u32(var_0.x, 8u)]), vec4<f32>(arg_0.x, arg_0.x, -1000f, -1250f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.a.x, 1000f, global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, -2017f, -128f))))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(4294967295u, 5410u), vec2<u32>(u_input.c.x, var_0.x)), max(u_input.c, vec2<u32>(var_0.x, var_0.x)), select(u_input.c, var_0.yy, true)), vec2<u32>(min(21071u, u_input.b), 15638u)), var_0.x, ~(~(~u_input.b)), ~(~1u)), vec2<bool>(any(select(select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, global2.x)), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, false, global2.x), true), global2.x)), any(global2.yy)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(185f, 767f, arg_1.a.x))))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<f32, 8>();
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.b, 8u)]);
    let var_1 = ~u_input.c << (~u_input.c % vec2<u32>(32u));
    global1 = array<vec2<f32>, 27>();
    let var_2 = Struct_5(!vec3<bool>(global2.x, true, true), vec2<u32>(u_input.b, u_input.b));
    return -1117f;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<f32>) -> StorageBuffer {
    global4 = array<vec2<f32>, 9>();
    var var_0 = Struct_5(vec3<bool>(!(!all(vec4<bool>(global2.x, global2.x, global2.x, true))), !(global2.x & global2.x), 22828i < _wgslsmith_add_i32(-27362i, u_input.a)), max(u_input.c, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, ~u_input.b), ~max(u_input.c, u_input.c), reverseBits(abs(u_input.c)))));
    var var_1 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(855f, arg_2.x)))), func_1(_wgslsmith_f_op_vec2_f32(global4[_wgslsmith_index_u32(4294967295u, 9u)] - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_2.x, 1000f)))), func_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(26085u, 8u)], -265f))))), func_1(arg_2.zy, func_1(vec2<f32>(arg_0, global0[_wgslsmith_index_u32(1u, 8u)]), Struct_1(arg_2.yxw))))));
    global2 = !(!vec3<bool>(true, !global2.x & !var_0.a.x, any(vec3<bool>(global2.x, var_0.a.x, var_0.a.x))));
    var_1 = Struct_1(var_1.a);
    return StorageBuffer(u_input.a, select(var_0.b, ~(~firstTrailingBit(vec2<u32>(16496u, 1u))), vec2<bool>(false, var_0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_1.a))), reverseBits(select(select(i32(-1i) * -34877i, -1i, all(var_0.a)), _wgslsmith_add_i32(~(-11239i), 0i | u_input.a), true)), vec4<i32>(-2147483647i, 1i, -7097i, arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<f32>, 9>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~4294967295u, 8u)] - _wgslsmith_f_op_f32(func_3(func_1(global4[_wgslsmith_index_u32(~u_input.b, 9u)], Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(25398u, 8u)], global0[_wgslsmith_index_u32(54734u, 8u)])))))), i32(-1i) * -(~u_input.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 8u)])), _wgslsmith_f_op_f32(ceil(241f)), -1387f, 298f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1211f, global0[_wgslsmith_index_u32(25333u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-579f, global0[_wgslsmith_index_u32(77670u, 8u)], -680f, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(23837u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)])))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], -2052f, 453f, -391f))), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(21765u, 8u)], -917f, 3208f)))))));
}

