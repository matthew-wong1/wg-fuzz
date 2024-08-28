struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_3,
    d: Struct_4,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<vec3<u32>, 9>;

var<private> global2: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(2636u, 43970u, 4294967295u, 41820u), vec4<u32>(0u, 6531u, 0u, 0u), vec4<u32>(35967u, 0u, 21132u, 55817u), vec4<u32>(11273u, 68249u, 2505u, 4294967295u), vec4<u32>(0u, 0u, 40306u, 15730u), vec4<u32>(72583u, 4294967295u, 270u, 6663u), vec4<u32>(18581u, 4294967295u, 0u, 35883u), vec4<u32>(1u, 20660u, 74427u, 42519u));

var<private> global3: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false));

var<private> global4: array<i32, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: i32) -> u32 {
    global0 = array<i32, 27>();
    global3 = array<vec4<bool>, 2>();
    let var_0 = -vec3<i32>(_wgslsmith_mod_i32(2147483647i, arg_1) | firstTrailingBit(~0i), ~6413i, -arg_1);
    global4 = array<i32, 24>();
    let var_1 = _wgslsmith_clamp_vec3_u32(global1[_wgslsmith_index_u32(1u, 9u)], firstTrailingBit(~vec3<u32>(select(33150u, 0u, true), _wgslsmith_mult_u32(1u, 0u), 0u >> (0u % 32u))), ~(~(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(32768u, 41778u), 9u)])));
    return 20504u;
}

fn func_2() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(~(~(func_3(_wgslsmith_f_op_f32(f32(-1f) * -819f), ~global4[_wgslsmith_index_u32(0u, 24u)]) ^ ~(~0u))), 27u)];
    let var_1 = Struct_5(Struct_2(_wgslsmith_add_u32(~(~100670u), reverseBits(55636u)), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1259f, 1000f, 1726f, -435f) * vec4<f32>(955f, 842f, -1618f, 465f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-433f, 235f, -359f, -1527f) * vec4<f32>(-1000f, -1773f, -259f, -1246f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f)), firstTrailingBit(vec2<u32>(51131u, 46134u))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2186f, -623f, 1333f, 383f)), -253f, countOneBits(reverseBits(vec2<u32>(34733u, 4294967295u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-671f)), 387f)), _wgslsmith_mod_vec2_i32(select(~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<i32>(-8914i, -12066i)), ~(-vec2<i32>(2706i, global0[_wgslsmith_index_u32(41911u, 27u)])), true), vec2<i32>(global0[_wgslsmith_index_u32(~0u, 27u)], global0[_wgslsmith_index_u32(~9696u, 27u)])), Struct_3(~72344u), Struct_4(max(63632u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(36400u, 1u, 37744u, 67910u), global2[_wgslsmith_index_u32(38422u, 8u)], vec4<u32>(38422u, 0u, 16716u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(7236u, 12469u, 0u, 1u), global2[_wgslsmith_index_u32(46402u, 8u)]))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, 446f, -1000f, 1797f)), vec4<f32>(340f, -1855f, -1580f, 1129f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(341f)), -521f), vec2<u32>(1u, reverseBits(4294967295u))), ~1u), _wgslsmith_f_op_f32(trunc(1613f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2205f * var_1.a.b.a.x) * _wgslsmith_f_op_f32(step(var_1.e, -795f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.e))), _wgslsmith_f_op_f32(var_1.e * 448f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1863f)))) - _wgslsmith_f_op_vec4_f32(-var_1.a.b.a)), -3351f, var_1.d.b.c & ~vec2<u32>(_wgslsmith_add_u32(var_1.a.b.c.x, 1u), _wgslsmith_mult_u32(4891u, 40699u)));
    var var_3 = _wgslsmith_sub_u32(1u, var_1.a.a);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b.a.x) - var_1.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.x))) - var_1.d.b.b))) + _wgslsmith_f_op_f32(-var_2.a.x));
    return !(!select(true, false, true)) && !(!all(vec4<bool>(false, true, true, false)));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2) -> bool {
    global1 = array<vec3<u32>, 9>();
    global0 = array<i32, 27>();
    global3 = array<vec4<bool>, 2>();
    let var_0 = arg_2.c;
    global0 = array<i32, 27>();
    return func_2();
}

fn func_4(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = !(!vec2<bool>(!select(arg_0, arg_0, false), arg_0));
    var var_1 = vec3<bool>(false, arg_0, !var_0.x);
    global2 = array<vec4<u32>, 8>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(150f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(1224f * 559f)))))), 1022f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-329f, -641f)))), 897f);
    var_0 = select(vec2<bool>(true, any(vec3<bool>(true, true, false))), var_1.yz, arg_0);
    return firstTrailingBit(1u);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 24>();
    let var_0 = func_4(!select(false, func_1(vec3<bool>(true, false, true), 2221f, Struct_2(4294967295u, Struct_1(vec4<f32>(1810f, 1001f, -1033f, -235f), 207f, vec2<u32>(31189u, 4294967295u)), Struct_1(vec4<f32>(380f, -786f, -254f, -923f), 1000f, vec2<u32>(42648u, 45895u)), -529f)) & true, all(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(118534u), countOneBits(50167u)), vec2<u32>(reverseBits(1u), ~34636u)), ~0u), 27u)]);
    global0 = array<i32, 27>();
    let var_1 = global1[_wgslsmith_index_u32(func_4(all(vec3<bool>(!(u_input.a <= u_input.a), -517f >= _wgslsmith_f_op_f32(step(1000f, 442f)), false)), _wgslsmith_clamp_i32(-39982i, ~u_input.a, 5789i)), 9u)];
    global1 = array<vec3<u32>, 9>();
    let var_2 = !all(vec4<bool>(true, true, true, true)) == true;
    let var_3 = !vec4<bool>(func_1(!vec3<bool>(var_2, var_2, var_2), -313f, Struct_2(0u | var_0, Struct_1(vec4<f32>(1693f, 181f, 1131f, 161f), -1000f, var_1.xx), Struct_1(vec4<f32>(-174f, -377f, 1504f, 121f), 209f, var_1.xy), _wgslsmith_f_op_f32(max(-1000f, 757f)))), true, ~11783u < var_1.x, var_2);
    let var_4 = Struct_4(23102u, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(434f, -577f, true)) + _wgslsmith_div_f32(-295f, 818f)), 305f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-437f + -1973f) + 520f), _wgslsmith_f_op_f32(f32(-1f) * -681f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1525f))) - _wgslsmith_f_op_f32(f32(-1f) * -905f)), select(vec2<u32>(var_1.x, 4294967295u), vec2<u32>(1u, 1u), any(vec3<bool>(var_2, true, var_3.x)) && true)), _wgslsmith_div_u32(1u, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(abs(vec2<u32>(55425u, var_1.x))), var_1.yx), 5390u), _wgslsmith_f_op_f32(var_4.b.b - _wgslsmith_f_op_f32(var_4.b.a.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4.b.b, var_4.b.a.x) - 1f))), ~abs(23166u), _wgslsmith_dot_vec3_u32(~vec3<u32>(~23533u, ~4294967295u, min(17504u, var_4.c)), ~global1[_wgslsmith_index_u32(var_4.a, 9u)]), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_1.x, 49013u, 34187u), vec4<u32>(23558u, 42568u, var_0, var_1.x)) << (1u % 32u)) ^ var_0);
}

