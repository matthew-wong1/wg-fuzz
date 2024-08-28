struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 4>;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(519f, -150f), 39030u, Struct_1(242f, -904f), -32813i, -1000f), Struct_2(Struct_1(-1649f, 766f), 1u, Struct_1(123f, 1000f), -1i, 561f), Struct_2(Struct_1(868f, -103f), 15698u, Struct_1(1454f, -2229f), -1i, -644f), Struct_2(Struct_1(-1259f, -1000f), 0u, Struct_1(-1000f, -304f), 62442i, 2168f), Struct_2(Struct_1(875f, -1648f), 35725u, Struct_1(-546f, -1011f), -23088i, 435f), Struct_2(Struct_1(-112f, 669f), 43732u, Struct_1(-294f, -2577f), 2147483647i, -715f), Struct_2(Struct_1(1791f, -2334f), 7220u, Struct_1(173f, 1147f), 1i, 741f), Struct_2(Struct_1(-1000f, -495f), 0u, Struct_1(-289f, 171f), i32(-2147483648), -194f), Struct_2(Struct_1(1282f, 559f), 27307u, Struct_1(-1950f, -428f), i32(-2147483648), 757f), Struct_2(Struct_1(-1422f, -188f), 15131u, Struct_1(1466f, 404f), -1i, -905f), Struct_2(Struct_1(1191f, -1671f), 1u, Struct_1(115f, 2437f), 2147483647i, 596f), Struct_2(Struct_1(829f, 961f), 4294967295u, Struct_1(-884f, -1219f), 43889i, 771f), Struct_2(Struct_1(498f, 1232f), 4294967295u, Struct_1(659f, 962f), -5471i, -1000f), Struct_2(Struct_1(-596f, -1000f), 4294967295u, Struct_1(208f, 565f), 0i, -1000f), Struct_2(Struct_1(892f, 471f), 4294967295u, Struct_1(1230f, 835f), i32(-2147483648), -1150f), Struct_2(Struct_1(1298f, -591f), 0u, Struct_1(-581f, 1441f), -8909i, 140f), Struct_2(Struct_1(-287f, 863f), 1u, Struct_1(-1083f, -806f), 2147483647i, -896f), Struct_2(Struct_1(529f, 1222f), 29582u, Struct_1(1158f, 2249f), -6919i, 695f));

var<private> global2: i32 = 4952i;

var<private> global3: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> bool {
    var var_0 = abs(1i);
    let var_1 = global1[_wgslsmith_index_u32(arg_0.a.x, 18u)];
    global1 = array<Struct_2, 18>();
    var var_2 = false;
    var_2 = all(select(vec3<bool>(true || (var_1.d <= -2147483647i), true, (arg_1 < arg_0.b.a) | true), vec3<bool>(true, true, true && any(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, u_input.e.x == 0u, true), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))))));
    return all(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), any(vec4<bool>(false, false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))));
}

fn func_2() -> bool {
    global0 = array<Struct_4, 4>();
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -296f);
    var var_0 = ~_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)), ~vec4<i32>(1i, ~0i, 1i, 1i));
    let var_1 = ~firstTrailingBit(15192i);
    global1 = array<Struct_2, 18>();
    return -1i == (var_0.x ^ _wgslsmith_add_i32(var_0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.zx, vec2<i32>(var_0.x, -2147483647i)), -vec2<i32>(var_0.x, var_0.x))));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-325f, -591f, all(!vec2<bool>(arg_0, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(-1000f + 411f)), 1000f))) * 872f);
    var var_1 = Struct_4(u_input.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1292f)) + 290f)), 1609f));
    let var_2 = arg_0 || true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0, var_0))), var_0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.b) * -713f));
    var_1 = global0[_wgslsmith_index_u32(650u, 4u)];
    return vec4<bool>(!(true != arg_0), !func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(var_1.a.x), _wgslsmith_dot_vec3_u32(var_1.a.zyz, var_1.a.xxw)), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.a) * 528f)), arg_0, true);
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: u32) -> Struct_3 {
    global1 = array<Struct_2, 18>();
    var var_0 = Struct_2(arg_2.c.c, _wgslsmith_dot_vec3_u32(select(select(u_input.d.xzw, min(vec3<u32>(u_input.c, 1u, arg_2.c.b), vec3<u32>(arg_2.c.b, arg_3, arg_2.c.b)), arg_2.a.ywz), vec3<u32>(arg_3, 0u, _wgslsmith_dot_vec2_u32(u_input.d.zw, u_input.b)), true), abs(vec3<u32>(_wgslsmith_mult_u32(u_input.c, 4294967295u), 14592u, ~4294967295u))), arg_2.c.a, arg_2.c.d, -1042f);
    var_0 = arg_2.c;
    let var_1 = arg_2.c.c;
    var var_2 = 643i;
    return Struct_3(!arg_2.a, _wgslsmith_f_op_f32(max(1412f, _wgslsmith_f_op_f32(floor(var_0.a.a)))), Struct_2(Struct_1(-1066f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -322f))), 5601u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(-arg_2.c.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.a)))), -13010i, arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(false, select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), !vec2<bool>(0u <= u_input.c, func_1(Struct_4(vec4<u32>(0u, 1u, u_input.d.x, 1u), Struct_1(534f, 2004f)), 1000f))), Struct_3(select(vec4<bool>(all(vec2<bool>(true, true)), true, true, func_2()), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), func_3(true)), -2576f, Struct_2(Struct_1(-561f, -176f), 52024u, Struct_1(-347f, -596f), -15210i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), _wgslsmith_dot_vec2_u32(~u_input.d.xz, abs(vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a % vec2<u32>(32u)))));
    let var_1 = var_0.a;
    let var_2 = -(~(~var_0.c.d)) < _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.c.d, -var_0.c.d), i32(-1i) * -2147483647i), reverseBits(vec2<i32>(select(6596i, 1i, var_1.x), 0i)));
    global3 = var_0.c.c.a;
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.c.d, 17008i, var_0.c.d, -1i)), vec4<i32>(12485i, ~var_0.c.d, var_0.c.d, -11956i))), var_0.c.d);
    global1 = array<Struct_2, 18>();
    var var_4 = global0[_wgslsmith_index_u32(~u_input.e.x | 3747u, 4u)];
    let var_5 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_4.b.a, var_4.b.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-999f, -437f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -296f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_4.b.b)), _wgslsmith_f_op_f32(-var_4.b.a)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -224f, var_4.b.b)), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.b)), _wgslsmith_div_f32(var_5.a.a, -1000f), _wgslsmith_f_op_f32(max(var_5.e, -1196f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(441f, var_0.b, -578f) * vec3<f32>(-1146f, var_0.b, -674f))))))), firstTrailingBit(4294967295u));
}

