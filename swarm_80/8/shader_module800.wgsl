struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false));

var<private> global2: f32;

var<private> global3: vec4<f32> = vec4<f32>(615f, -705f, -1581f, 752f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = arg_0;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-510f)), _wgslsmith_f_op_f32(abs(581f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -726f), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, global3.x) * _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -224f), global3.x));
    var_0 = 56113u;
    let var_1 = Struct_4(16649u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) * -1109f)) + _wgslsmith_f_op_f32(abs(-199f))), _wgslsmith_add_i32(-40479i, i32(-1i) * -17047i));
    global0 = array<Struct_3, 10>();
    return -26464i;
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(237f - global3.x))) - -1496f), global3.x, -226f));
    let var_0 = ~func_3(~firstTrailingBit(~u_input.a.x));
    let var_1 = Struct_4(_wgslsmith_clamp_u32(u_input.a.x, 0u, ~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(34890u, u_input.a.x, u_input.a.x, 0u)) & 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f), _wgslsmith_f_op_f32(step(global3.x, -332f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(271f * global3.x)))), _wgslsmith_f_op_f32(-global3.x)), 32563i);
    global3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b, -883f, 1149f, global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, 337f, var_1.b) + vec4<f32>(938f, var_1.b, 749f, global3.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * 1614f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1767f, 685f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x))), -1699f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b, global3.x, -1037f, global3.x)))), vec4<f32>(-879f, var_1.b, _wgslsmith_f_op_f32(abs(var_1.b)), var_1.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.x, -607f, -1399f, global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2347f, var_1.b, -747f) * vec4<f32>(-282f, -712f, global3.x, -443f)), select(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(var_1.a, 15u)], vec4<bool>(false, true, arg_0.x, arg_0.x))))))))));
    var var_2 = Struct_4(~(u_input.a.x & _wgslsmith_clamp_u32(~1u, var_1.a, max(var_1.a, 5080u))), var_1.b, select(-26755i, _wgslsmith_add_i32(~var_0 & var_0, -1747i), arg_0.x));
    return Struct_1(_wgslsmith_div_i32(var_1.c, var_2.c) ^ var_2.c, -575f);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: bool) -> vec3<i32> {
    var var_0 = func_2(select(!(!(!vec3<bool>(arg_1, false, arg_3))), !select(!vec3<bool>(arg_3, arg_1, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(arg_1, arg_3, arg_1)), select(vec3<bool>(arg_1, arg_3, arg_3), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, true, arg_1))), !(!(!vec3<bool>(true, arg_3, true)))));
    var var_1 = func_2(vec3<bool>(all(select(vec2<bool>(false, arg_3), select(vec2<bool>(true, arg_1), vec2<bool>(true, false), arg_1), arg_3)), arg_1, all(!vec3<bool>(false, true, arg_3))));
    var var_2 = ~select(abs(~vec3<i32>(2147483647i, var_1.a, -1i)), select(vec3<i32>(-2147483647i, arg_0.a, var_0.a), firstTrailingBit(vec3<i32>(arg_0.a, arg_0.a, var_1.a)), vec3<bool>(arg_1, arg_1, arg_1)), true) & -vec3<i32>(5508i, _wgslsmith_mult_i32(var_1.a, var_0.a), var_1.a);
    global2 = -359f;
    let var_3 = arg_0.a;
    return reverseBits(~(~(vec3<i32>(-1i) * -vec3<i32>(53577i, var_2.x, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 5992i;
    let var_1 = vec3<u32>(~(~1u), countOneBits(1u), firstTrailingBit(4294967295u));
    var var_2 = (firstTrailingBit(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-1i, -10665i, -25010i)), vec3<i32>(1i, 1i, 1i))) & -_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-7701i, 8349i, 23408i), vec3<i32>(1i, -1i, -12400i), true), countOneBits(vec3<i32>(-2147483647i, 2824i, -1i)), vec3<i32>(1i, 1i, 1i))) ^ _wgslsmith_clamp_vec3_i32(~func_1(Struct_1(6273i, global3.x), false, ~vec3<u32>(1u, u_input.a.x, u_input.a.x), true), vec3<i32>(func_1(Struct_1(-1i, 421f), true, u_input.a.www, true).x, 0i, 19635i) | -(~vec3<i32>(61533i, 12592i, 1i)), vec3<i32>(-1i) * -(vec3<i32>(9145i, -11388i, -1i) >> (vec3<u32>(52160u, 6853u, var_1.x) % vec3<u32>(32u))));
    var_2 = vec3<i32>(_wgslsmith_mult_i32(23521i, var_2.x), -1i, -76469i);
    global2 = _wgslsmith_f_op_f32(step(676f, _wgslsmith_f_op_f32(-1132f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-2639f)), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(floor(global3.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec2<i32>(-4149i, 1i)));
}

