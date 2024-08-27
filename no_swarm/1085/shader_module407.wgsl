struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(521f, Struct_1(vec4<i32>(-15035i, 24004i, 1i, -1i), 0u, vec4<u32>(34144u, 4294967295u, 1u, 20837u), 406f), 2147483647i, Struct_1(vec4<i32>(0i, 3726i, 0i, 33807i), 78012u, vec4<u32>(4294967295u, 0u, 1u, 52526u), 1932f), true);

var<private> global1: array<f32, 6>;

var<private> global2: vec3<f32> = vec3<f32>(-812f, -915f, 554f);

var<private> global3: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> bool {
    global1 = array<f32, 6>();
    var var_0 = false;
    let var_1 = Struct_1(global0.b.a, 8792u, global0.d.c ^ vec4<u32>(global0.d.c.x, global0.b.c.x, global0.d.b, ~(~u_input.c)), _wgslsmith_f_op_f32(-1314f + 1136f));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_1.d)))), -2174f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2548f - arg_0) * _wgslsmith_div_f32(-759f, -1342f)), _wgslsmith_f_op_f32(sign(667f))))));
    var_0 = false;
    return ~_wgslsmith_mult_u32(reverseBits(~u_input.b.x), 0u) != 4294967295u;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    global3 = 1f;
    global1 = array<f32, 6>();
    var var_0 = vec4<i32>(-1i) * -arg_1.a;
    return func_3(548f, global0.d.d);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: f32, arg_3: i32) -> i32 {
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a))) + _wgslsmith_f_op_f32(global2.x + -835f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(sign(998f)), func_2(global0.b.a, global0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(abs(-703f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.d) + _wgslsmith_f_op_f32(min(142f, global0.d.d))))), 364f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, global1[_wgslsmith_index_u32(113514u, 6u)], -252f, 917f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(731f, global0.a, global1[_wgslsmith_index_u32(u_input.c, 6u)], 593f))), vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 6u)] + 1481f), _wgslsmith_f_op_f32(select(global0.d.d, arg_2, global0.e)), global1[_wgslsmith_index_u32(~5124u, 6u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 6u)] + 307f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-137f, _wgslsmith_f_op_f32(arg_2 - global0.b.d), _wgslsmith_f_op_f32(trunc(global0.d.d)), 1597f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4736u, 6u)], arg_2, arg_2, global1[_wgslsmith_index_u32(1u, 6u)])))));
    global3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-875f * global1[_wgslsmith_index_u32(~global0.b.c.x, 6u)]) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - global0.a))))));
    var var_1 = global0.d;
    return 0i;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    var var_0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_div_f32(arg_2.d, _wgslsmith_f_op_f32(abs(global0.b.d))), arg_2, min(-(~(i32(-1i) * -23097i)), global0.b.a.x), Struct_1(vec4<i32>(11581i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3, -2147483647i, arg_2.a.x), vec3<i32>(-16186i, global0.c, -1i)), -countOneBits(u_input.a), 2147483647i), 5771u, _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_1, ~arg_1, arg_0), vec4<u32>(arg_2.b << (6185u % 32u), select(arg_2.b, 1u, global0.e), arg_2.b, _wgslsmith_clamp_u32(global0.d.c.x, global0.b.c.x, u_input.b.x))), 3139f), !func_2(vec4<i32>(39156i, global0.b.a.x | global0.b.a.x, 0i, -2147483647i), arg_2));
    let var_2 = var_1.d.a.xwy;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.d + global2.x)))), Struct_1(firstLeadingBit(var_1.b.a ^ var_1.b.a), u_input.c, _wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, u_input.b.x, 0u, arg_2.c.x)), ~abs(vec4<u32>(33027u, arg_2.b, 52049u, 44458u))), -2314f), _wgslsmith_dot_vec4_i32(abs(global0.d.a & ~vec4<i32>(2147483647i, u_input.a, var_1.b.a.x, var_1.c)), abs(vec4<i32>(_wgslsmith_mod_i32(arg_3, -10771i), select(0i, 3626i, global0.e), _wgslsmith_dot_vec3_i32(global0.b.a.xyy, var_1.d.a.yzx), max(var_2.x, -2147483647i)))), var_1.b, all(vec3<bool>(var_1.e, func_3(_wgslsmith_f_op_f32(arg_2.d * 958f), _wgslsmith_f_op_f32(min(-198f, 984f))), var_1.e)));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = firstTrailingBit(~abs(~10511u << (arg_0.d.b % 32u)));
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    let var_1 = func_4(~select(arg_0.b.b, global0.d.b, func_4(1u, 20728u, func_4(57867u, u_input.b.x, Struct_1(global0.d.a, var_0, u_input.b, -1101f), -1i).d, _wgslsmith_sub_i32(global0.b.a.x, arg_2.x)).e), var_0, func_4(u_input.c, 76177u, arg_0.b, u_input.a).b, -2147483647i);
    let var_2 = ~38841u;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(238f, global2.x, 693f), _wgslsmith_div_vec3_f32(vec3<f32>(290f, global2.x, 1000f), vec3<f32>(arg_0.d.d, global1[_wgslsmith_index_u32(17547u, 6u)], 565f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_4(900u, u_input.c, global0.b, func_1(global0.b.b, vec2<i32>(global0.d.a.x, u_input.a), global1[_wgslsmith_index_u32(global0.b.c.x, 6u)], global0.b.a.x)), -842f, countOneBits(global0.d.a.xzy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.zy) * vec2<f32>(-923f, global1[_wgslsmith_index_u32(global0.d.c.x, 6u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-932f, 792f), -948f, _wgslsmith_f_op_f32(-1753f - 153f))))));
    var var_1 = func_4(1u, func_4(1u, u_input.c, global0.d, 1i).b.b, func_4(3269u, 83478u, Struct_1(_wgslsmith_add_vec4_i32(-global0.d.a, ~vec4<i32>(global0.d.a.x, global0.b.a.x, -22618i, 57579i)), _wgslsmith_clamp_u32(55909u, ~7494u, min(1u, u_input.b.x)), global0.b.c, 544f), -5760i).b, u_input.a).d;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), any(select(vec3<bool>(false, global0.e, false), vec3<bool>(false, global0.e, true), vec3<bool>(false, global0.e, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(0u, u_input.b.x, Struct_1(var_1.a, 4294967295u, vec4<u32>(4294967295u, global0.b.c.x, 1u, global0.d.b), global2.x), -12054i).b.d - _wgslsmith_f_op_f32(trunc(603f))) + _wgslsmith_f_op_f32(2809f * _wgslsmith_f_op_f32(-global0.d.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.d.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + 213f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1309f, 537f, global2.x, 839f))))))));
    var var_3 = Struct_2(1566f, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.a.x, -1i, -26607i | u_input.a, _wgslsmith_add_i32(var_1.a.x, -2147483647i)), max(reverseBits(var_1.a), func_4(u_input.b.x, global0.d.b, Struct_1(vec4<i32>(var_1.a.x, 63458i, var_1.a.x, u_input.a), 56260u, global0.b.c, global0.a), global0.d.a.x).d.a), vec4<i32>(func_4(var_1.b, 1753u, global0.d, 0i).d.a.x, abs(1i), -2147483647i, ~u_input.a)), var_1.c.x, ~countOneBits(func_4(8133u, var_1.c.x, global0.d, 31927i).b.c), -646f), i32(-1i) * -_wgslsmith_add_i32(19092i, global0.b.a.x), Struct_1(firstTrailingBit(global0.d.a & vec4<i32>(u_input.a, -36758i, 2147483647i, -59158i)) | _wgslsmith_add_vec4_i32(var_1.a, reverseBits(var_1.a)), ~global0.d.b ^ var_1.c.x, max(var_1.c | global0.d.c, vec4<u32>(u_input.b.x, u_input.c, 4294967295u, var_1.b)) << (u_input.b % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(259f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 6u)] + global2.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, 1049f))))), global0.e);
    let var_4 = !select(!(!select(vec4<bool>(var_3.e, false, global0.e, false), vec4<bool>(false, var_3.e, false, global0.e), vec4<bool>(global0.e, var_3.e, false, false))), vec4<bool>(func_2(var_1.a, func_4(0u, var_1.c.x, global0.b, 1i).b), func_3(-576f, _wgslsmith_f_op_f32(floor(-1562f))), global0.e, var_3.e), vec4<bool>(false, true, !var_3.e, global0.e));
    let var_5 = _wgslsmith_f_op_vec3_f32(abs(var_2.wwx));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.d, ~_wgslsmith_div_u32(90458u, var_3.d.b) | 1u, _wgslsmith_sub_i32(firstTrailingBit(2147483647i >> (global0.b.b % 32u)), 1i), global0.d.c.x);
}

