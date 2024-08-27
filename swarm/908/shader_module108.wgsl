struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_3,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(-1i, 2147483647i, 1i, 0i), vec4<i32>(-22917i, 62311i, -1i, 48374i), vec4<i32>(-31704i, -14739i, 2155i, 2147483647i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, -27601i), vec4<i32>(i32(-2147483648), -49324i, -42073i, -35149i), vec4<i32>(-23241i, 27312i, 2147483647i, -2159i), vec4<i32>(i32(-2147483648), -1i, 3505i, 2147483647i), vec4<i32>(i32(-2147483648), i32(-2147483648), -8954i, 0i), vec4<i32>(i32(-2147483648), 19970i, 2147483647i, 0i), vec4<i32>(-1i, 31291i, -17640i, -56949i), vec4<i32>(54954i, 1i, 34i, 2147483647i), vec4<i32>(23875i, 1i, -48846i, i32(-2147483648)));

var<private> global1: array<i32, 9>;

var<private> global2: array<f32, 4>;

var<private> global3: Struct_3 = Struct_3(Struct_1(-1000f, 0i, 16933i, false), vec3<bool>(true, true, true));

var<private> global4: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>) -> vec3<f32> {
    global1 = array<i32, 9>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.a.x << (~0u % 32u), 4u)])) + -128f));
    global1 = array<i32, 9>();
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-arg_1.x, ~1i), arg_0.zx) << (u_input.a.wz % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(8441i, -1i), _wgslsmith_dot_vec2_i32(arg_1.xx, select(arg_1.yx ^ arg_0.yz, select(u_input.b.yx, u_input.b.yz, global3.b.x), global3.b.zz))), -arg_1.xw);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-421f, -1034f)), -2057f, 367f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-121f, 1165f, global3.a.a)), vec3<f32>(-2163f, -544f, global3.a.a), !(!global3.b)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(870f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(41569u, 4u)] * global3.a.a)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global3.a.a, 838f, -1191f), vec3<f32>(368f, global2[_wgslsmith_index_u32(4294967295u, 4u)], -1935f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-572f, 247f, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]) - vec3<f32>(global2[_wgslsmith_index_u32(u_input.c, 4u)], 1008f, -1025f)))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> vec3<f32> {
    global2 = array<f32, 4>();
    global1 = array<i32, 9>();
    let var_0 = global3.a;
    global2 = array<f32, 4>();
    let var_1 = ~_wgslsmith_sub_vec4_u32(u_input.a, ~vec4<u32>(u_input.a.x, u_input.c, _wgslsmith_sub_u32(15089u, u_input.a.x), ~4294967295u));
    return _wgslsmith_f_op_vec3_f32(func_3(u_input.b, ~vec4<i32>(i32(-1i) * -2147483647i, -6519i, ~(~5715i), -1i)));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(vec2<bool>(global3.a.d, global3.a.d), Struct_1(-180f, global3.a.c, global1[_wgslsmith_index_u32(u_input.a.x, 9u)], false), -u_input.d, Struct_3(global3.a, vec3<bool>(true, global3.b.x, global3.a.d)))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(40370u, 4u)]), -584f, _wgslsmith_div_f32(276f, -567f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(958f, 397f, global3.a.a), vec3<f32>(2242f, -1000f, 990f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.a, -742f, global2[_wgslsmith_index_u32(arg_0, 4u)]))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = arg_1.xz;
    global0 = array<vec4<i32>, 12>();
    global3 = Struct_3(global3.a, global3.b);
    global0 = array<vec4<i32>, 12>();
    global3 = Struct_3(arg_0, vec3<bool>(global3.a.d, arg_0.d, all(global3.b)));
    return Struct_2(global3.a, abs(firstTrailingBit(firstTrailingBit(_wgslsmith_mod_i32(-1i, global3.a.c)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(func_1(1u)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], u_input.b.x) >> (~u_input.a.x % 32u), 0i), global3.a.b, global3.a.d), vec3<u32>(~_wgslsmith_mod_u32(u_input.c, max(u_input.c, 6980u)), min(firstLeadingBit(1u), countOneBits(4294967295u & u_input.c)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(62162u, u_input.a.x), min(vec2<u32>(58941u, 4294967295u), u_input.a.wx))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 4u)]), -350f, -952f);
    global3 = Struct_3(global3.a, vec3<bool>(min(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], ~(-2147483647i)) < 1i, any(global3.b), var_0.a.d));
    global3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.a)) * _wgslsmith_f_op_f32(-var_1.x)), -(~27053i), _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_add_i32(-2147483647i & global3.a.c, 37811i), _wgslsmith_mod_i32(2147483647i | var_0.a.b, 1i)), global3.a.d), global3.b);
    var var_2 = firstTrailingBit(-8562i);
    var var_3 = 0u;
    global3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(round(-698f)), 36808i, countOneBits(_wgslsmith_clamp_i32(-37649i, global3.a.c, -1i)), global3.a.d), global3.b);
    var var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(max(~(-reverseBits(vec2<i32>(var_0.a.c, var_0.b))), select(u_input.b.yx, (u_input.b.xz << (u_input.a.wz % vec2<u32>(32u))) | ~vec2<i32>(global3.a.c, -35722i), vec2<bool>(false, false))), -countOneBits(firstTrailingBit(vec3<i32>(-79183i, 1i, global3.a.b))) >> (vec3<u32>(u_input.c, ~(~0u), ~u_input.a.x) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(firstLeadingBit(1u), u_input.a.x, 392u)), 9u)]);
}

