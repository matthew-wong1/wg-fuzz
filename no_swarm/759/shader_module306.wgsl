struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(0i, -13028i), vec2<i32>(-13375i, -25547i), vec2<i32>(0i, 33599i), vec2<i32>(20948i, 23183i), vec2<i32>(0i, -19363i), vec2<i32>(1i, i32(-2147483648)));

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(695f, 1000f, 1000f, -917f), vec4<f32>(499f, 359f, -562f, -1192f), vec4<f32>(-620f, 681f, -1313f, -927f), vec4<f32>(958f, -115f, -447f, -1102f), vec4<f32>(-1479f, -611f, -101f, 1015f), vec4<f32>(639f, -337f, 1330f, -1553f), vec4<f32>(1479f, 856f, 1807f, -1238f), vec4<f32>(-430f, 749f, 224f, -798f), vec4<f32>(284f, -205f, -544f, -1909f), vec4<f32>(-1000f, -505f, 1773f, -853f), vec4<f32>(1000f, -955f, 223f, 1500f), vec4<f32>(-1171f, -1441f, -423f, 154f), vec4<f32>(-501f, -583f, 1000f, -672f), vec4<f32>(1807f, 696f, 2368f, 308f), vec4<f32>(577f, 169f, -1388f, 676f), vec4<f32>(-160f, 3113f, 1721f, 959f), vec4<f32>(177f, -1024f, 187f, 349f), vec4<f32>(-1247f, -1000f, 1000f, 713f), vec4<f32>(-990f, -709f, -1818f, 1038f), vec4<f32>(1149f, -699f, 1524f, 1417f), vec4<f32>(1000f, -1168f, 1000f, 1343f), vec4<f32>(281f, 433f, -763f, -982f), vec4<f32>(-1793f, 900f, -1579f, -522f), vec4<f32>(796f, 874f, -830f, 1313f), vec4<f32>(117f, -2175f, 667f, 988f), vec4<f32>(-947f, 965f, 109f, 338f), vec4<f32>(1000f, 1064f, 1473f, 1365f), vec4<f32>(-1759f, 361f, 849f, 1030f), vec4<f32>(-243f, -885f, -1000f, 1110f), vec4<f32>(1087f, 800f, 112f, 261f));

var<private> global3: Struct_2 = Struct_2(vec2<f32>(-803f, 1079f), vec3<f32>(1157f, -652f, 2138f), Struct_1(false, 1854i), 825f);

var<private> global4: f32;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = select(vec3<bool>(arg_1.d > 2472f, false, arg_1.c.a), arg_0.wzz, arg_0.yxz);
    global2 = array<vec4<f32>, 30>();
    var var_1 = _wgslsmith_div_vec3_f32(global3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.b))));
    let var_2 = global3.c.b;
    var var_3 = ~(firstTrailingBit(2147483647i) ^ abs(-2147483647i));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_1(global3.a.x <= _wgslsmith_f_op_f32(-arg_3), _wgslsmith_dot_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(u_input.a, 0i)) >> (global0.wy % vec2<u32>(32u)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(56950u, ~(~80379u)), 6u)]));
    global3 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global3.a.x, global3.b.x))) - vec2<f32>(global3.d, global3.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.x, arg_3)) - global3.b.xx))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-449f, 854f, 1521f))), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-673f)))));
    global3 = Struct_2(global3.b.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.b * _wgslsmith_f_op_vec3_f32(global3.b + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, global3.a.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global3.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, global3.a.x, global3.b.x) * global3.b), vec3<bool>(false, true, var_0.a))))), arg_0, 452f);
    global3 = Struct_2(global3.a, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(942f, 775f, global3.d)) + _wgslsmith_f_op_vec3_f32(-global3.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.b * global3.b)))), Struct_1(global3.c.a, global3.c.b), global3.a.x);
    let var_1 = vec2<f32>(_wgslsmith_div_f32(-692f, 799f), -206f);
    return vec4<bool>(true, !(!(true || var_0.a)), _wgslsmith_mult_u32(u_input.d, 1u) >= ~(~global0.x & 56318u), select(true, var_0.a, all(vec3<bool>(arg_2.a, arg_1.a, true)) && global3.c.a));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.zy, global3.b.xz))))) + vec2<f32>(_wgslsmith_f_op_f32(min(1452f, arg_0.x)), _wgslsmith_f_op_f32(func_2(!vec4<bool>(true, false, arg_2.a, arg_2.a), Struct_2(vec2<f32>(645f, -511f), vec3<f32>(arg_1, arg_1, -2406f), arg_2, arg_1))))), global3.b, Struct_1(arg_1 >= _wgslsmith_f_op_f32(sign(-1003f)), _wgslsmith_dot_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(-2147483647i, u_input.b.x, -1i, 1i))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, global3.c.b, 27489i, arg_2.b), vec4<i32>(arg_2.b, u_input.e, -1i, u_input.e)), vec4<i32>(u_input.a, arg_2.b, 0i, -2767i) | vec4<i32>(u_input.b.x, u_input.a, -17866i, arg_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(570f - _wgslsmith_f_op_f32(select(arg_0.x, -1213f, false))) + _wgslsmith_f_op_f32(f32(-1f) * -983f)) + _wgslsmith_f_op_f32(func_2(func_3(global3.c, Struct_1(false, u_input.a), Struct_1(true, -58094i), -938f), Struct_2(vec2<f32>(arg_0.x, -1000f), vec3<f32>(arg_1, 409f, arg_0.x), global3.c, _wgslsmith_f_op_f32(-arg_1))))));
    var var_1 = arg_2;
    global2 = array<vec4<f32>, 30>();
    var var_2 = abs(~(global0.x | 1u)) ^ ~0u;
    let var_3 = 1468f;
    return 1136f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -51923i;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(366f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1500f)), _wgslsmith_f_op_f32(sign(-1120f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(-global3.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(vec4<f32>(502f, 1818f, 390f, global3.b.x), global3.a.x, global3.c)))))), global3.a.x, global3.a.x);
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3.a, vec2<f32>(1634f, -1386f)) + vec2<f32>(var_1.x, var_1.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.x, var_1.x))))) * global3.a)));
    var_0 = -1i >> (_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.c, 34933u, 70717u))), vec3<u32>(global0.x & 1u, ~1u, ~global0.x)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(-min(_wgslsmith_mod_i32(u_input.b.x, 1i), _wgslsmith_clamp_i32(68384i >> (global0.x % 32u), firstLeadingBit(-36660i), -1i)));
}

