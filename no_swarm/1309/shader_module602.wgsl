struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<u32>(21742u, 4294967295u, 4294967295u, 78171u)), Struct_1(vec4<u32>(0u, 25614u, 1u, 2813u)), Struct_1(vec4<u32>(0u, 23865u, 22300u, 1832u)), Struct_1(vec4<u32>(17935u, 2510u, 39328u, 4294967295u)), Struct_1(vec4<u32>(1u, 92756u, 34008u, 4294967295u)), Struct_1(vec4<u32>(0u, 58341u, 89802u, 4294967295u)), Struct_1(vec4<u32>(35403u, 4294967295u, 0u, 42302u)), Struct_1(vec4<u32>(72458u, 38799u, 4294967295u, 1u)), Struct_1(vec4<u32>(4294967295u, 45793u, 1u, 9732u)), Struct_1(vec4<u32>(6828u, 16095u, 4296u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u)), Struct_1(vec4<u32>(0u, 14245u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(1u, 1u, 0u, 91127u)), Struct_1(vec4<u32>(1u, 13666u, 4937u, 4294967295u)), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(397u, 55492u, 4294967295u, 48905u)), Struct_1(vec4<u32>(16044u, 8044u, 12249u, 57796u)), Struct_1(vec4<u32>(32743u, 4294967295u, 20463u, 1804u)), Struct_1(vec4<u32>(4294967295u, 0u, 17583u, 0u)));

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(3854u, 4294967295u, 4294967295u, 4294967295u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> f32 {
    global3 = Struct_1(global2.a);
    global1 = array<Struct_1, 19>();
    global2 = arg_0;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -518f))) * _wgslsmith_div_f32(-172f, -170f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(277f)))))))));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 19>();
    global0 = firstTrailingBit(i32(-1i) * -reverseBits(abs(-2147483647i)));
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1343f - _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], Struct_1(global2.a), -928i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1016f) + _wgslsmith_f_op_f32(abs(261f)))), 1f, 602f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1972f, 1251f, -115f, -1680f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(673f, -661f, 1032f, -402f))))));
    let var_1 = global1[_wgslsmith_index_u32(0u, 19u)];
    return Struct_1(reverseBits(firstLeadingBit(~var_1.a)));
}

fn func_1() -> vec4<f32> {
    global1 = array<Struct_1, 19>();
    let var_0 = global1[_wgslsmith_index_u32(~global3.a.x, 19u)];
    global3 = func_2();
    global0 = 0i;
    global0 = -12327i;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(354f + _wgslsmith_f_op_f32(349f - -2185f)), 403f, -1811f, _wgslsmith_f_op_f32(f32(-1f) * -1211f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1415f, 986f, 1301f, -1236f) - vec4<f32>(-347f, -1000f, 1238f, 519f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -235f), 1000f, 363f, 470f))), vec4<f32>(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(0u, 19u)], func_2(), ~1i)), 1975f, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(0u | (global3.a.x & 1u), 19u)], func_2(), -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-422f, 1000f, 865f, -1088f)))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 2951f, -1098f, -694f), vec4<f32>(-743f, -738f, 998f, -2825f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1177f, -988f, -857f))), _wgslsmith_f_op_vec4_f32(func_1()))));
    let var_1 = _wgslsmith_sub_i32(-(~1i), _wgslsmith_div_i32(-12698i >> (_wgslsmith_sub_u32(1u, func_2().a.x) % 32u), 17101i));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-var_0.x), 1214f, -1000f);
    let var_2 = 13901u;
    var var_3 = !(!(~firstTrailingBit(var_1) >= var_1));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) + var_0.x), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_1, var_1), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(abs(vec2<i32>(var_1, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1, -44561i), vec2<i32>(-63022i, -12944i))), vec2<i32>(~var_1, var_1 << (0u % 32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.ww)));
}

