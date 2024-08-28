struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<u32>(97640u, 0u), -13870i), Struct_1(vec2<u32>(44548u, 0u), 1i), Struct_1(vec2<u32>(38014u, 0u), 1i), Struct_1(vec2<u32>(1u, 0u), -1i), Struct_1(vec2<u32>(28953u, 14419u), -4339i), Struct_1(vec2<u32>(84866u, 44444u), 1457i), Struct_1(vec2<u32>(4294967295u, 4068u), -1251i), Struct_1(vec2<u32>(79358u, 1u), -1i), Struct_1(vec2<u32>(76750u, 0u), 0i), Struct_1(vec2<u32>(5661u, 42584u), 2147483647i), Struct_1(vec2<u32>(0u, 1u), -13717i), Struct_1(vec2<u32>(37639u, 1u), -1i), Struct_1(vec2<u32>(58345u, 21938u), -65985i), Struct_1(vec2<u32>(1u, 0u), i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 0u), -1i), Struct_1(vec2<u32>(1u, 4294967295u), 1i), Struct_1(vec2<u32>(1u, 33306u), 24974i), Struct_1(vec2<u32>(1u, 11211u), -5990i), Struct_1(vec2<u32>(35553u, 25758u), 1i), Struct_1(vec2<u32>(0u, 35593u), -6660i), Struct_1(vec2<u32>(4294967295u, 11853u), -2792i), Struct_1(vec2<u32>(0u, 84206u), -7530i), Struct_1(vec2<u32>(8944u, 80382u), 19588i), Struct_1(vec2<u32>(30408u, 18859u), 2147483647i));

var<private> global1: array<u32, 12>;

var<private> global2: bool = true;

var<private> global3: array<vec3<f32>, 7>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    var var_0 = !(!select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false)), vec4<bool>(global4.b > u_input.a, false, true, global4.a.x >= 0u)));
    let var_1 = global0[_wgslsmith_index_u32(~41645u ^ ~(~countOneBits(_wgslsmith_mult_u32(66804u, global4.a.x))), 24u)];
    global2 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(297f, -1069f, 1000f, 275f), vec4<f32>(-2531f, -615f, -1072f, 1589f), var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -171f, -436f, 1000f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-195f, -141f, -751f, 1426f)))), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(1279f, 743f), _wgslsmith_f_op_f32(-378f - 568f), _wgslsmith_f_op_f32(604f * 119f), _wgslsmith_f_op_f32(304f + -569f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-440f, 265f, 1000f, 1000f) - vec4<f32>(1368f, 1450f, -358f, 750f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(597f, -619f, -124f, 512f) + vec4<f32>(2216f, -1384f, 3177f, 716f)))), false)))));
    global2 = !(!var_0.x);
    return firstTrailingBit(5102u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec4<u32>) -> u32 {
    global2 = false == (_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f * 1982f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -259f)))));
    var var_0 = ~global4.a.x;
    var var_1 = global0[_wgslsmith_index_u32(0u, 24u)];
    global4 = global0[_wgslsmith_index_u32(1u, 24u)];
    let var_2 = global4.b;
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global4.a.x, _wgslsmith_mult_u32(45536u, _wgslsmith_clamp_u32(8670u, 15503u, var_1.a.x)), func_3(), 51006u), reverseBits(arg_2)), countOneBits(arg_2));
}

fn func_1() -> Struct_1 {
    global1 = array<u32, 12>();
    global2 = !any(vec4<bool>(true, true, true, true));
    let var_0 = firstLeadingBit(global1[_wgslsmith_index_u32(func_2(vec4<bool>(true, true, true, true), vec3<i32>(19172i, global4.b, -1553i) << ((vec3<u32>(global4.a.x, global4.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.a.x, 12u)], 12u)]) ^ vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 26750u, 23662u)) % vec3<u32>(32u)), ~max(vec4<u32>(global4.a.x, global1[_wgslsmith_index_u32(31225u, 12u)], global4.a.x, 56752u), vec4<u32>(0u, global1[_wgslsmith_index_u32(0u, 12u)], 15324u, 1u))), 12u)]) ^ (global4.a.x | global1[_wgslsmith_index_u32(74643u, 12u)]);
    global1 = array<u32, 12>();
    let var_1 = _wgslsmith_f_op_f32(121f + _wgslsmith_f_op_f32(-996f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-161f, -909f))))));
    return global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(41092u, 38814u, global1[_wgslsmith_index_u32(var_0, 12u)], 0u)), ~vec4<u32>(4294967295u, 0u, 0u, var_0)) & _wgslsmith_mult_u32(_wgslsmith_div_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.a.x, 27533u, global4.a.x, var_0), vec4<u32>(114269u, var_0, 41857u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4.a.x, 12u)], 12u)]))), max(0u, var_0)), global4.a.x), 12u)], 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(abs(~vec3<i32>(global4.b, -1i, global4.b & u_input.a)));
    let var_1 = -abs(firstTrailingBit(vec3<i32>(~51426i, var_0.x | global4.b, global4.b)));
    global4 = func_1();
    global4 = func_1();
    var var_2 = !vec2<bool>(all(vec4<bool>(false, false, true, false)) & true, !(!(1i > var_0.x)));
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~func_3()), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global4.a.x, 40651u), 12u)]), 12u)], _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1415f - 498f), _wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(abs(916f)), _wgslsmith_f_op_f32(abs(-1380f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-662f, -224f, -740f, 1163f), vec4<f32>(-249f, 1432f, -507f, 1514f)))))), min(-1i, _wgslsmith_add_i32(min(-577i, var_0.x ^ u_input.a), _wgslsmith_mult_i32(var_3, var_0.x) ^ 2147483647i)), _wgslsmith_mod_u32(39008u, _wgslsmith_sub_u32(func_2(!vec4<bool>(false, var_2.x, var_2.x, false), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_3, -54286i), var_1), vec4<u32>(global4.a.x, 25726u, global4.a.x, global4.a.x)), _wgslsmith_mod_u32(2368u, 30318u))));
}

