struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(34765i, 5301i, -31083i));

var<private> global2: f32;

var<private> global3: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(-411f, Struct_2(58862i, -50244i, Struct_1(vec3<i32>(1i, 66047i, 52477i)), vec2<f32>(1000f, -1448f))), Struct_4(-621f, Struct_2(-17064i, -1i, Struct_1(vec3<i32>(1i, 2650i, -74266i)), vec2<f32>(479f, 840f))), Struct_4(-698f, Struct_2(0i, 15906i, Struct_1(vec3<i32>(55537i, 6582i, 0i)), vec2<f32>(-870f, -1000f))), Struct_4(-192f, Struct_2(31190i, -1i, Struct_1(vec3<i32>(0i, -29759i, 1798i)), vec2<f32>(740f, -1162f))), Struct_4(-568f, Struct_2(1i, 25303i, Struct_1(vec3<i32>(1i, 2147483647i, -1i)), vec2<f32>(1000f, -661f))), Struct_4(972f, Struct_2(29515i, 32711i, Struct_1(vec3<i32>(22798i, i32(-2147483648), -33238i)), vec2<f32>(-634f, 647f))), Struct_4(629f, Struct_2(i32(-2147483648), 21931i, Struct_1(vec3<i32>(i32(-2147483648), 0i, 341i)), vec2<f32>(257f, -1000f))), Struct_4(2714f, Struct_2(i32(-2147483648), -1i, Struct_1(vec3<i32>(0i, 68137i, 1i)), vec2<f32>(-1316f, 1908f))), Struct_4(730f, Struct_2(-3508i, -3927i, Struct_1(vec3<i32>(1i, 1i, 22275i)), vec2<f32>(-1629f, 443f))), Struct_4(-1321f, Struct_2(1i, 17681i, Struct_1(vec3<i32>(1i, -12862i, -1i)), vec2<f32>(-986f, 1149f))), Struct_4(1000f, Struct_2(0i, 0i, Struct_1(vec3<i32>(-1i, 4108i, -1i)), vec2<f32>(882f, -352f))), Struct_4(605f, Struct_2(-1i, -35849i, Struct_1(vec3<i32>(-4223i, -1i, 59184i)), vec2<f32>(-1481f, 516f))), Struct_4(342f, Struct_2(52352i, 2147483647i, Struct_1(vec3<i32>(55810i, 0i, 0i)), vec2<f32>(-1000f, 1418f))), Struct_4(568f, Struct_2(1i, -3729i, Struct_1(vec3<i32>(1i, 0i, 2147483647i)), vec2<f32>(117f, -667f))), Struct_4(-559f, Struct_2(-21698i, i32(-2147483648), Struct_1(vec3<i32>(i32(-2147483648), -28631i, 21949i)), vec2<f32>(-350f, -1046f))), Struct_4(421f, Struct_2(-3014i, i32(-2147483648), Struct_1(vec3<i32>(1i, -17743i, 1i)), vec2<f32>(423f, -875f))), Struct_4(-588f, Struct_2(24710i, 16726i, Struct_1(vec3<i32>(0i, -78864i, 7268i)), vec2<f32>(-679f, 411f))), Struct_4(1232f, Struct_2(-1i, 2147483647i, Struct_1(vec3<i32>(-47803i, -1i, 0i)), vec2<f32>(-910f, 833f))), Struct_4(-2044f, Struct_2(i32(-2147483648), 6492i, Struct_1(vec3<i32>(-12673i, -1i, 0i)), vec2<f32>(1122f, -329f))), Struct_4(957f, Struct_2(-41567i, i32(-2147483648), Struct_1(vec3<i32>(-68744i, -1i, i32(-2147483648))), vec2<f32>(-1249f, -1345f))), Struct_4(-380f, Struct_2(-1i, 0i, Struct_1(vec3<i32>(34613i, -1i, 34368i)), vec2<f32>(932f, 939f))), Struct_4(-270f, Struct_2(2147483647i, 4544i, Struct_1(vec3<i32>(0i, -1i, -21075i)), vec2<f32>(-1581f, 1000f))), Struct_4(328f, Struct_2(-7042i, -92149i, Struct_1(vec3<i32>(2147483647i, -41062i, -16842i)), vec2<f32>(-256f, 712f))), Struct_4(1761f, Struct_2(2147483647i, 1i, Struct_1(vec3<i32>(31482i, 1i, 0i)), vec2<f32>(199f, -257f))), Struct_4(-1008f, Struct_2(1i, 29381i, Struct_1(vec3<i32>(-14808i, 0i, i32(-2147483648))), vec2<f32>(-562f, 156f))));

var<private> global4: array<bool, 1>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(~(~1i), global1.a.x << (84027u % 32u), Struct_1(_wgslsmith_sub_vec3_i32(max(global1.a, global1.a), global1.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    global1 = Struct_1(global1.a);
    let var_1 = _wgslsmith_f_op_f32(-1953f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(484f + 959f), _wgslsmith_f_op_f32(263f - var_0.d.x)), -1416f, false))));
    let var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-752f * -928f), var_0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f) - _wgslsmith_f_op_f32(ceil(var_0.d.x))), _wgslsmith_f_op_f32(1043f + _wgslsmith_f_op_f32(-1795f * -1417f))), _wgslsmith_f_op_f32(sign(var_1)), var_0.d.x), (_wgslsmith_dot_vec3_i32(abs(var_0.c.a), ~var_0.c.a) & select(-global1.a.x, -11848i, global4[_wgslsmith_index_u32(u_input.c.x, 1u)] | global4[_wgslsmith_index_u32(31423u, 1u)])) >> (reverseBits(4294967295u) % 32u));
    let var_3 = min(-2147483647i, -2147483647i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_div_f32(var_1, -342f))), var_0.d.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> bool {
    global2 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(select(394f, arg_1.x, all(select(arg_0, !arg_0, !arg_0)))));
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(ceil(arg_1.x)), 981f, arg_1.x))), (~countOneBits(arg_3) << (4294967295u % 32u)) | ~_wgslsmith_sub_i32(~6062i, arg_3 ^ 0i));
    global3 = array<Struct_4, 25>();
    let var_1 = vec2<i32>(u_input.b.x, -28271i);
    var_0 = Struct_5(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-547f)), _wgslsmith_f_op_f32(arg_1.x + -771f), true)), 208f), var_0.a), -2147483647i);
    return any(select(select(!(!vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 1u)], true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, arg_0.x), select(vec3<bool>(false, false, true), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 1u)], true), vec3<bool>(arg_2, true, arg_0.x)), u_input.c.x < 4294967295u)), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, false, true)), select(vec3<bool>(false, arg_0.x, true), vec3<bool>(true, true, true), global4[_wgslsmith_index_u32(u_input.c.x, 1u)]), !vec3<bool>(arg_2, arg_0.x, arg_2)), vec3<bool>(true, arg_2 && arg_0.x, false), !arg_2), all(select(select(vec3<bool>(true, arg_0.x, true), vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 1u)], false, global4[_wgslsmith_index_u32(u_input.c.x, 1u)]), global4[_wgslsmith_index_u32(1u, 1u)]), !vec3<bool>(true, arg_2, global4[_wgslsmith_index_u32(87402u, 1u)]), false))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = -arg_2;
    var var_1 = all(select(!(!vec2<bool>(arg_3, false)), vec2<bool>(true, func_2(vec2<bool>(true, false), vec3<f32>(arg_1, arg_1, 563f), global4[_wgslsmith_index_u32(0u, 1u)], u_input.a)), !(!vec2<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 1u)], false)))) | !(_wgslsmith_div_u32(1u, ~u_input.c.x) <= (0u >> (min(u_input.c.x, 4294967295u) % 32u)));
    var var_2 = Struct_3(Struct_2(1i, ~(~select(35026i, -1i, global4[_wgslsmith_index_u32(36347u, 1u)])), arg_0, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1, 549f)))))), true, select(vec3<bool>(false, func_2(!vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 1u)], false), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2094f, arg_1, 1559f))), arg_3, -1i), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), global4[_wgslsmith_index_u32(1u, 1u)]))), !(!select(vec3<bool>(arg_3, global4[_wgslsmith_index_u32(u_input.c.x, 1u)], global4[_wgslsmith_index_u32(u_input.c.x, 1u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.c.x, 1u)], true), vec3<bool>(true, arg_3, false))), !(!vec3<bool>(arg_3, true, global4[_wgslsmith_index_u32(52101u, 1u)]))), Struct_1(vec3<i32>(arg_2, 2147483647i, 2147483647i)));
    let var_3 = ~(~0i);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-var_2.a.d.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) - _wgslsmith_f_op_f32(-var_4));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 1>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) - -1000f);
    global3 = array<Struct_4, 25>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(-31890i, global1.a.x, -2147483647i)), -786f, -1i, (true | all(vec3<bool>(global4[_wgslsmith_index_u32(490u, 1u)], true, true))) & !all(vec4<bool>(false, global4[_wgslsmith_index_u32(79338u, 1u)], global4[_wgslsmith_index_u32(u_input.c.x, 1u)], global4[_wgslsmith_index_u32(u_input.c.x, 1u)])))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(818f + _wgslsmith_f_op_f32(f32(-1f) * -358f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1035f - -198f)))), -1358f, false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -347f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(global1.a.x, 6567i, u_input.a)), _wgslsmith_f_op_f32(418f * -779f), -1i, global4[_wgslsmith_index_u32(u_input.c.x, 1u)])))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1082f, -759f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(899f, -530f), _wgslsmith_f_op_f32(f32(-1f) * -1145f))))));
    global4 = array<bool, 1>();
    var var_1 = Struct_2(u_input.a, _wgslsmith_div_i32(countOneBits(-19139i), 32197i << (_wgslsmith_mult_u32(u_input.c.x, abs(u_input.c.x)) % 32u)), Struct_1(global1.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, 220f))) - var_0.xy)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + var_0.x), 2020f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1029f + var_0.x), _wgslsmith_f_op_f32(step(-413f, -715f)), _wgslsmith_div_f32(-1011f, 146f)))), 58699i);
}

