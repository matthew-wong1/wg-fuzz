struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 15> = array<f32, 15>(1982f, 241f, -744f, 503f, -900f, -951f, 174f, -2583f, -905f, 1751f, -708f, -577f, -1320f, 1000f, -615f);

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(45514i, 468f, 0u, vec2<u32>(1u, 90862u), 59810u), Struct_1(2147483647i, 104f, 4294967295u, vec2<u32>(4294967295u, 7575u), 77307u), Struct_1(2147483647i, -635f, 56562u, vec2<u32>(1u, 1u), 4294967295u), Struct_1(-45354i, -1510f, 8005u, vec2<u32>(0u, 23571u), 4294967295u), Struct_1(2147483647i, -943f, 52118u, vec2<u32>(1u, 0u), 114u), Struct_1(-1i, -1000f, 0u, vec2<u32>(1u, 1u), 4294967295u), Struct_1(-6883i, 569f, 1u, vec2<u32>(40988u, 4294967295u), 1u), Struct_1(46651i, 522f, 1u, vec2<u32>(39052u, 62631u), 55597u), Struct_1(0i, 176f, 0u, vec2<u32>(31708u, 34121u), 14061u), Struct_1(i32(-2147483648), 2098f, 0u, vec2<u32>(23883u, 0u), 0u), Struct_1(2147483647i, -286f, 0u, vec2<u32>(78613u, 1u), 64329u), Struct_1(2194i, 973f, 0u, vec2<u32>(49040u, 4294967295u), 32637u), Struct_1(3364i, -501f, 1u, vec2<u32>(1u, 0u), 0u), Struct_1(1i, -1000f, 0u, vec2<u32>(2207u, 1u), 47745u), Struct_1(0i, -1313f, 2446u, vec2<u32>(0u, 0u), 1u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    global1 = array<f32, 15>();
    global1 = array<f32, 15>();
    var var_0 = global0.e;
    let var_1 = 70769u | ~abs(firstTrailingBit(1u) >> (select(9070u, global0.e, true) % 32u));
    var var_2 = global2[_wgslsmith_index_u32(abs(max(~var_1, 59313u)), 15u)];
    return false;
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = arg_0.c;
    var var_1 = vec2<i32>(-33905i, -u_input.a.x);
    global2 = array<Struct_1, 15>();
    global2 = array<Struct_1, 15>();
    global0 = Struct_1(abs(~1i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b)) * 1974f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2702f * global0.b))), func_3())), 1u, ~min(vec2<u32>(0u, countOneBits(4294967295u)), vec2<u32>(_wgslsmith_div_u32(0u, var_0), ~47861u)), ~_wgslsmith_mult_u32(~abs(global0.c), select(global0.c, 0u, true)));
    return vec4<i32>(var_1.x, min(arg_0.a, u_input.a.x), -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0.a, 30046i, 21185i, 0i)), select(select(vec4<i32>(arg_0.a, -18068i, var_1.x, -1i), vec4<i32>(1543i, 54827i, var_1.x, -31190i), true), max(vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, var_1.x), vec4<i32>(u_input.a.x, global0.a, arg_0.a, global0.a)), true)), ~firstTrailingBit(firstTrailingBit(-u_input.a.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> bool {
    global0 = Struct_1(global0.a, global0.b, max(~abs(~4294967295u), arg_3.d.x), ~(max(firstLeadingBit(vec2<u32>(arg_1.e, 20696u)), abs(global0.d)) ^ ~_wgslsmith_mult_vec2_u32(arg_3.d, vec2<u32>(0u, global0.d.x))), 36079u);
    global0 = arg_3;
    let var_0 = 1765f;
    global1 = array<f32, 15>();
    let var_1 = true;
    return !(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, 2147483647i, arg_1.a, arg_1.a)) & -vec4<i32>(arg_3.a, -40083i, arg_1.a, 36552i), select(vec4<i32>(global0.a, 0i, 2147483647i, 0i), func_2(global2[_wgslsmith_index_u32(0u, 15u)]), all(arg_0.wx))) <= 1i);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> f32 {
    global0 = Struct_1(~abs(_wgslsmith_clamp_i32(-29844i, 0i, arg_1.a) & ~arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(floor(1000f)))) + 182f), 4463u, _wgslsmith_div_vec2_u32(~(~arg_1.d), ~global0.d), reverseBits(arg_1.e));
    let var_0 = u_input.a.x;
    global0 = Struct_1(_wgslsmith_div_i32(var_0, 0i), -519f, select(arg_1.e, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(11552u, global0.c, 87995u), _wgslsmith_add_vec3_u32(vec3<u32>(global0.c, 1u, 1u), vec3<u32>(4294967295u, 0u, arg_1.c)), !vec3<bool>(arg_0.x, false, arg_0.x)), ~(~vec3<u32>(global0.c, 17267u, arg_1.c))), all(!arg_0)), arg_1.d, 50932u);
    var var_1 = global2[_wgslsmith_index_u32(arg_1.e, 15u)];
    let var_2 = arg_1;
    return -571f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 15>();
    global2 = array<Struct_1, 15>();
    var var_0 = global0.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global1[_wgslsmith_index_u32(var_0.x, 15u)]))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(118f, global0.b)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_4(vec3<bool>(true, true, false), Struct_1(u_input.a.x, global1[_wgslsmith_index_u32(var_0.x, 15u)], 1575u, global0.d, 1u), _wgslsmith_f_op_f32(-1891f * -139f), func_1(vec4<bool>(true, false, false, true), Struct_1(2147483647i, -145f, var_0.x, global0.d, 1u), 1u, Struct_1(-2550i, -139f, var_0.x, vec2<u32>(global0.c, var_0.x), global0.e)))), _wgslsmith_f_op_f32(-421f - _wgslsmith_f_op_f32(-867f - -192f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 15u)], -1115f)))), true))));
    var var_2 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(-7822i), u_input.a.x, u_input.a.x, func_2(Struct_1(global0.a, global1[_wgslsmith_index_u32(19341u, 15u)], global0.e, vec2<u32>(var_0.x, global0.d.x), 0u)).x), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a | u_input.a, vec3<i32>(u_input.a.x, global0.a, u_input.a.x)), -global0.a ^ 8303i, abs(-2147483647i), 1i)), _wgslsmith_f_op_f32(f32(-1f) * -644f), 1u, countOneBits(~firstLeadingBit(global0.d)), _wgslsmith_mult_u32(select(~49130u, var_0.x, true), global0.d.x) | 35166u);
    let var_3 = _wgslsmith_sub_vec2_u32(~max(abs(vec2<u32>(var_2.d.x, 47578u)), ~var_2.d), vec2<u32>(~(var_0.x >> (var_2.e % 32u)), 37635u) | var_2.d);
    global2 = array<Struct_1, 15>();
    var var_4 = all(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)))));
    global2 = array<Struct_1, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy, ~(vec2<i32>(-global0.a, -37134i) << (~var_2.d % vec2<u32>(32u))), ~_wgslsmith_div_vec2_i32(select(_wgslsmith_mult_vec2_i32(u_input.a.xy, vec2<i32>(u_input.a.x, 2147483647i)), u_input.a.zy, true), u_input.a.zz));
}

